.section .text
func_809E9180:
    sw      a1, 0x0140(a0)             # 00000140
    jr      $ra
    nop


func_809E918C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    addiu   t0, $sp, 0x0038            # t0 = FFFFFFF0
    lui     t6, %hi(var_809EAED4)      # t6 = 809F0000
    addiu   t6, t6, %lo(var_809EAED4)  # t6 = 809EAED4
    lw      t8, 0x0000(t6)             # 809EAED4
    lui     a1, %hi(var_809EAEE0)      # a1 = 809F0000
    addiu   a1, a1, %lo(var_809EAEE0)  # a1 = 809EAEE0
    sw      t8, 0x0000(t0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 809EAED8
    or      a0, s0, $zero              # a0 = 00000000
    sw      t7, 0x0004(t0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 809EAEDC
    jal     func_80063F7C
    sw      t8, 0x0008(t0)             # FFFFFFF8
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lui     $at, 0x4200                # $at = 42000000
    mtc1    $at, $f0                   # $f0 = 32.00
    add.s   $f8, $f4, $f6
    addiu   t0, $sp, 0x0038            # t0 = FFFFFFF0
    addiu   v1, $zero, 0x000D          # v1 = 0000000D
    addiu   a3, s0, 0x0024             # a3 = 00000024
    swc1    $f8, 0x0028(s0)            # 00000028
    addiu   a2, $zero, 0xC000          # a2 = FFFFC000
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
lbl_809E9208:
    multu   v1, a0
    lw      t2, 0x0000(t0)             # FFFFFFF0
    addiu   t7, v1, 0x0001             # t7 = 0000000E
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mflo    t9
    addu    v0, s0, t9
    sw      t2, 0x01F0(v0)             # 000001F0
    multu   v1, a1
    lw      t1, 0x0004(t0)             # FFFFFFF4
    mul.s   $f4, $f18, $f0
    addiu   v1, v1, 0xFFFF             # v1 = 0000000C
    sw      t1, 0x01F4(v0)             # 000001F4
    lw      t2, 0x0008(t0)             # FFFFFFF8
    sll     v1, v1, 16
    sra     v1, v1, 16
    sw      t2, 0x01F8(v0)             # 000001F8
    mflo    t3
    addu    t4, s0, t3
    sh      a2, 0x0298(t4)             # 00000298
    lw      t6, 0x0000(a3)             # 00000024
    sw      t6, 0x0148(v0)             # 00000148
    lw      t5, 0x0004(a3)             # 00000028
    sw      t5, 0x014C(v0)             # 0000014C
    lw      t6, 0x0008(a3)             # 0000002C
    sw      t6, 0x0150(v0)             # 00000150
    lwc1    $f10, 0x0028(s0)           # 00000028
    sub.s   $f6, $f10, $f4
    bgez    v1, lbl_809E9208
    swc1    $f6, 0x014C(v0)            # 0000014C
    lh      t3, 0x001C(s0)             # 0000001C
    lh      t9, 0x001C(s0)             # 0000001C
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    andi    t4, t3, 0x00FF             # t4 = 00000000
    sh      t4, 0x001C(s0)             # 0000001C
    lh      t5, 0x001C(s0)             # 0000001C
    sra     t1, t9,  8
    andi    t2, t1, 0x00FF             # t2 = 00000000
    slti    $at, t5, 0x0003
    sb      t8, 0x001F(s0)             # 0000001F
    beq     $at, $zero, lbl_809E934C
    sh      t2, 0x0144(s0)             # 00000144
    lw      a0, 0x004C($sp)
    jal     func_8002049C
    lh      a1, 0x0144(s0)             # 00000144
    beq     v0, $zero, lbl_809E92D8
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E9368
    lw      $ra, 0x0024($sp)
lbl_809E92D8:
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4240                 # a3 = 42400000
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809E93A4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   t7, $zero, 0x00FE          # t7 = 000000FE
    sb      t6, 0x00AF(s0)             # 000000AF
    sb      t7, 0x00AE(s0)             # 000000AE
    addiu   a1, s0, 0x0310             # a1 = 00000310
    sw      a1, 0x002C($sp)
    jal     func_8004A484
    lw      a0, 0x004C($sp)
    lui     a3, %hi(var_809EAEC4)      # a3 = 809F0000
    addiu   t8, s0, 0x0330             # t8 = 00000330
    lw      a1, 0x002C($sp)
    sw      t8, 0x0010($sp)
    addiu   a3, a3, %lo(var_809EAEC4)  # a3 = 809EAEC4
    lw      a0, 0x004C($sp)
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    beq     $zero, $zero, lbl_809E9368
    lw      $ra, 0x0024($sp)
lbl_809E934C:
    lui     a1, 0x3CAC                 # a1 = 3CAC0000
    ori     a1, a1, 0x0831             # a1 = 3CAC0831
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809E9810
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_809E9368:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_809E9378:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004A550
    addiu   a1, a2, 0x0310             # a1 = 00000310
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809E93A4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x05DC          # t7 = 000005DC
    lui     a1, %hi(func_809E93E4)     # a1 = 809F0000
    sw      t6, 0x013C(a0)             # 0000013C
    sh      t7, 0x030C(a0)             # 0000030C
    addiu   a1, a1, %lo(func_809E93E4) # a1 = 809E93E4
    jal     func_809E9180
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809E93E4:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s6, 0x0034($sp)
    sw      s0, 0x001C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s6, a0, $zero              # s6 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s7, 0x0038($sp)
    sw      s5, 0x0030($sp)
    sw      s4, 0x002C($sp)
    sw      s3, 0x0028($sp)
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    lw      t6, 0x1C44(s0)             # 00001C44
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    sw      t6, 0x006C($sp)
    lbu     t7, 0x00AE(s6)             # 000000AE
    bne     t7, $at, lbl_809E947C
    lui     $at, 0x432F                # $at = 432F0000
    mtc1    $at, $f4                   # $f4 = 175.00
    lwc1    $f6, 0x0090(s6)            # 00000090
    lui     $at, 0x43A5                # $at = 43A50000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809E9480
    lui     $at, 0x42C8                # $at = 42C80000
    lwc1    $f8, 0x000C(s6)            # 0000000C
    mtc1    $at, $f10                  # $f10 = 100.00
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   a0, s6, 0x0028             # a0 = 00000028
    add.s   $f16, $f8, $f10
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40E0                 # a3 = 40E00000
    swc1    $f18, 0x0010($sp)
    mfc1    a1, $f16
    jal     func_80064178
    nop
    beq     $zero, $zero, lbl_809E94B8
    lw      t1, 0x0024(s6)             # 00000024
lbl_809E947C:
    lui     $at, 0x42C8                # $at = 42C80000
lbl_809E9480:
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x000C(s6)            # 0000000C
    lw      t8, 0x0004(s6)             # 00000004
    mtc1    $zero, $f10                # $f10 = 0.00
    add.s   $f8, $f4, $f6
    ori     t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0004(s6)             # 00000004
    addiu   a0, s6, 0x0028             # a0 = 00000028
    mfc1    a1, $f8
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lw      t1, 0x0024(s6)             # 00000024
lbl_809E94B8:
    addiu   s5, s6, 0x02EC             # s5 = 000002EC
    lui     t2, 0x0001                 # t2 = 00010000
    sw      t1, 0x0000(s5)             # 000002EC
    lw      t0, 0x0028(s6)             # 00000028
    addu    t2, t2, s0
    sw      t0, 0x0004(s5)             # 000002F0
    lw      t1, 0x002C(s6)             # 0000002C
    sw      t1, 0x0008(s5)             # 000002F4
    lw      t2, 0x1DE4(t2)             # 00011DE4
    andi    t3, t2, 0x000F             # t3 = 00000000
    bne     t3, $zero, lbl_809E954C
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f12                  # $f12 = 180.00
    jal     func_80026D90
    nop
    lwc1    $f16, 0x0300(s6)           # 00000300
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f12                  # $f12 = 180.00
    add.s   $f18, $f16, $f0
    jal     func_80026D90
    swc1    $f18, 0x0300(s6)           # 00000300
    lwc1    $f4, 0x0304(s6)            # 00000304
    lwc1    $f12, 0x0300(s6)           # 00000300
    add.s   $f6, $f4, $f0
    jal     func_800A45FC
    swc1    $f6, 0x0304(s6)            # 00000304
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    lwc1    $f12, 0x0304(s6)           # 00000304
    mul.s   $f10, $f0, $f8
    jal     func_800A4650
    swc1    $f10, 0x02F8(s6)           # 000002F8
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f16                  # $f16 = 80.00
    nop
    mul.s   $f18, $f0, $f16
    swc1    $f18, 0x02FC(s6)           # 000002FC
lbl_809E954C:
    lui     $at, 0x43E0                # $at = 43E00000
    mtc1    $at, $f6                   # $f6 = 448.00
    lwc1    $f4, 0x02F0(s6)            # 000002F0
    lwc1    $f10, 0x02EC(s6)           # 000002EC
    lwc1    $f16, 0x02F8(s6)           # 000002F8
    sub.s   $f8, $f4, $f6
    lwc1    $f6, 0x02FC(s6)            # 000002FC
    lwc1    $f4, 0x02F4(s6)            # 000002F4
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x02F0(s6)            # 000002F0
    mtc1    $zero, $f0                 # $f0 = 0.00
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x02EC(s6)           # 000002EC
    lw      a3, 0x0068(s6)             # 00000068
    or      a0, s5, $zero              # a0 = 000002EC
    swc1    $f8, 0x02F4(s6)            # 000002F4
    addiu   a1, s6, 0x01E4             # a1 = 000001E4
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x0014($sp)
    jal     func_80026984
    swc1    $f0, 0x0010($sp)
    addiu   s0, s6, 0x0090             # s0 = 00000090
    lui     s7, %hi(var_809EAE70)      # s7 = 809F0000
    addiu   s7, s7, %lo(var_809EAE70)  # s7 = 809EAE70
    addiu   s2, s0, 0x0154             # s2 = 000001E4
    addiu   s1, s0, 0x0148             # s1 = 000001D8
    addiu   s3, $zero, 0x0090          # s3 = 00000090
    addiu   s4, $sp, 0x005C            # s4 = FFFFFFEC
lbl_809E95BC:
    or      a0, s2, $zero              # a0 = 000001E4
    or      a1, s1, $zero              # a1 = 000001D8
    or      a2, s4, $zero              # a2 = FFFFFFEC
    jal     func_800285B0
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0154(s0)           # 000001E4
    lwc1    $f14, 0x0158(s0)           # 000001E8
    lw      a2, 0x015C(s0)             # 000001EC
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x005C($sp)
    lh      a1, 0x005E($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, s7, $zero              # a0 = 809EAE70
    jal     func_800AB958
    or      a1, s1, $zero              # a1 = 000001D8
    addiu   s3, s3, 0xFFF4             # s3 = 00000084
    addiu   s0, s0, 0xFFF4             # s0 = 00000084
    addiu   s2, s2, 0xFFF4             # s2 = 000001D8
    bgez    s3, lbl_809E95BC
    addiu   s1, s1, 0xFFF4             # s1 = 000001CC
    addiu   s0, s6, 0x0148             # s0 = 00000148
    or      a0, s0, $zero              # a0 = 00000148
    or      a1, s5, $zero              # a1 = 000002EC
    or      a2, s4, $zero              # a2 = FFFFFFEC
    jal     func_800285B0
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0024(s6)           # 00000024
    lwc1    $f14, 0x0028(s6)           # 00000028
    lw      a2, 0x002C(s6)             # 0000002C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a1, 0x029A(s6)             # 0000029A
    lh      a3, 0x030C(s6)             # 0000030C
    addiu   t4, $zero, 0x00B6          # t4 = 000000B6
    sw      t4, 0x0010($sp)
    addiu   a0, s6, 0x00B6             # a0 = 000000B6
    jal     func_80064508
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lh      a1, 0x0298(s6)             # 00000298
    lh      a3, 0x030C(s6)             # 0000030C
    addiu   t5, $zero, 0x00B6          # t5 = 000000B6
    sw      t5, 0x0010($sp)
    addiu   a0, s6, 0x00B4             # a0 = 000000B4
    jal     func_80064508
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lh      a0, 0x00B4(s6)             # 000000B4
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x00B6(s6)             # 000000B6
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, s7, $zero              # a0 = 809EAE70
    jal     func_800AB958
    or      a1, s0, $zero              # a1 = 00000148
    lh      t6, 0x005E($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    or      s0, s6, $zero              # s0 = 00000000
    sh      t6, 0x02E8(s6)             # 000002E8
    lh      t7, 0x005C($sp)
    addiu   s2, s6, 0x0154             # s2 = 00000154
    or      s3, $zero, $zero           # s3 = 00000000
    addu    t8, t7, $at
    sh      t8, 0x02E6(s6)             # 000002E6
    or      s1, s6, $zero              # s1 = 00000000
    addiu   s4, s6, 0x029A             # s4 = 0000029A
    addiu   s5, s6, 0x0298             # s5 = 00000298
lbl_809E96DC:
    lwc1    $f12, 0x0148(s0)           # 00000148
    lwc1    $f14, 0x014C(s0)           # 0000014C
    lw      a2, 0x0150(s0)             # 00000150
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a1, 0x02A0(s1)             # 000002A0
    lh      a3, 0x030C(s6)             # 0000030C
    addiu   t9, $zero, 0x00B6          # t9 = 000000B6
    sw      t9, 0x0010($sp)
    or      a0, s4, $zero              # a0 = 0000029A
    jal     func_80064508
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lh      a1, 0x029E(s1)             # 0000029E
    lh      a3, 0x030C(s6)             # 0000030C
    addiu   t0, $zero, 0x00B6          # t0 = 000000B6
    sw      t0, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 00000298
    jal     func_80064508
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lh      a0, 0x0298(s1)             # 00000298
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x029A(s1)             # 0000029A
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, s7, $zero              # a0 = 809EAE70
    jal     func_800AB958
    or      a1, s2, $zero              # a1 = 00000154
    addiu   s3, s3, 0x0006             # s3 = 00000006
    addiu   $at, $zero, 0x004E         # $at = 0000004E
    addiu   s0, s0, 0x000C             # s0 = 0000000C
    addiu   s2, s2, 0x000C             # s2 = 00000160
    addiu   s1, s1, 0x0006             # s1 = 00000006
    addiu   s4, s4, 0x0006             # s4 = 000002A0
    bne     s3, $at, lbl_809E96DC
    addiu   s5, s5, 0x0006             # s5 = 0000029E
    lh      t1, 0x02E0(s6)             # 000002E0
    lh      t2, 0x02E2(s6)             # 000002E2
    lui     $at, 0x432F                # $at = 432F0000
    sh      t1, 0x02E6(s6)             # 000002E6
    sh      t2, 0x02E8(s6)             # 000002E8
    lw      t3, 0x006C($sp)
    lw      t4, 0x066C(t3)             # 0000066C
    sll     t5, t4,  5
    bltzl   t5, lbl_809E97E8
    lw      $ra, 0x003C($sp)
    mtc1    $at, $f10                  # $f10 = 175.00
    lwc1    $f16, 0x0090(s6)           # 00000090
    lui     $at, 0x42C8                # $at = 42C80000
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_809E97E8
    lw      $ra, 0x003C($sp)
    lwc1    $f18, 0x000C(s6)           # 0000000C
    mtc1    $at, $f4                   # $f4 = 100.00
    lwc1    $f8, 0x0028(s6)            # 00000028
    add.s   $f6, $f18, $f4
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_809E97E8
    lw      $ra, 0x003C($sp)
    jal     func_809E9940
    or      a0, s6, $zero              # a0 = 00000000
    lw      $ra, 0x003C($sp)
lbl_809E97E8:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    lw      s4, 0x002C($sp)
    lw      s5, 0x0030($sp)
    lw      s6, 0x0034($sp)
    lw      s7, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_809E9810:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4100                # $at = 41000000
    sw      $zero, 0x013C(a0)          # 0000013C
    mtc1    $at, $f12                  # $f12 = 8.00
    jal     func_80026D90
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_809EAF20)     # $at = 809F0000
    swc1    $f0, 0x0068(a0)            # 00000068
    jal     func_80026D90
    lwc1    $f12, %lo(var_809EAF20)($at)
    trunc.w.s $f4, $f0
    lw      a0, 0x0018($sp)
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f6                   # $f6 = -2.00
    mfc1    t7, $f4
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    lui     a1, %hi(func_809E9880)     # a1 = 809F0000
    addiu   a1, a1, %lo(func_809E9880) # a1 = 809E9880
    sh      t8, 0x0308(a0)             # 00000308
    swc1    $f6, 0x006C(a0)            # 0000006C
    jal     func_809E9180
    sh      t7, 0x0032(a0)             # 00000032
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809E9880:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lhu     t6, 0x0088(s0)             # 00000088
    lui     $at, %hi(var_809EAF24)     # $at = 809F0000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_809E98FC
    nop
    lwc1    $f0, %lo(var_809EAF24)($at)
    lh      t8, 0x0308(s0)             # 00000308
    lui     $at, %hi(var_809EAF28)     # $at = 809F0000
    lwc1    $f6, %lo(var_809EAF28)($at)
    lwc1    $f4, 0x0054(s0)            # 00000054
    lwc1    $f10, 0x0050(s0)           # 00000050
    lwc1    $f18, 0x0058(s0)           # 00000058
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sub.s   $f8, $f4, $f6
    sh      t9, 0x0308(s0)             # 00000308
    lh      t0, 0x0308(s0)             # 00000308
    add.s   $f16, $f10, $f0
    swc1    $f8, 0x0054(s0)            # 00000054
    add.s   $f4, $f18, $f0
    swc1    $f16, 0x0050(s0)           # 00000050
    bne     t0, $zero, lbl_809E992C
    swc1    $f4, 0x0058(s0)            # 00000058
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E9930
    lw      $ra, 0x0024($sp)
lbl_809E98FC:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    sw      t1, 0x0014($sp)
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41F0                 # a2 = 41F00000
    lui     a3, 0x41E0                 # a3 = 41E00000
    jal     func_80021E6C
    swc1    $f6, 0x0010($sp)
lbl_809E992C:
    lw      $ra, 0x0024($sp)
lbl_809E9930:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809E9940:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t8, $zero, 0x05DC          # t8 = 000005DC
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    lui     a1, %hi(func_809E9994)     # a1 = 809F0000
    sw      t6, 0x013C(a0)             # 0000013C
    sh      t7, 0x0308(a0)             # 00000308
    sh      $zero, 0x030A(a0)          # 0000030A
    sh      t8, 0x030C(a0)             # 0000030C
    sb      t9, 0x00AE(a0)             # 000000AE
    addiu   a1, a1, %lo(func_809E9994) # a1 = 809E9994
    jal     func_809E9180
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809E9994:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s3, 0x002C($sp)
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a1, 0x006C($sp)
    lw      t6, 0x006C($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lw      t7, 0x1C44(t6)             # 00001C44
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   a0, s3, 0x0028             # a0 = 00000028
    sw      t7, 0x0064($sp)
    lwc1    $f4, 0x000C(s3)            # 0000000C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    add.s   $f8, $f4, $f6
    swc1    $f10, 0x0010($sp)
    mfc1    a1, $f8
    jal     func_80064178
    nop
    lui     $at, 0x432F                # $at = 432F0000
    mtc1    $at, $f16                  # $f16 = 175.00
    lwc1    $f2, 0x0090(s3)            # 00000090
    c.le.s  $f2, $f16
    nop
    bc1tl   lbl_809E9A34
    lh      v0, 0x0308(s3)             # 00000308
    lh      t8, 0x030A(s3)             # 0000030A
    lui     $at, 0x432F                # $at = 432F0000
    beql    t8, $zero, lbl_809E9F38
    mtc1    $at, $f10                  # $f10 = 175.00
    lh      v0, 0x0308(s3)             # 00000308
lbl_809E9A34:
    addiu   $at, $zero, 0x0014         # $at = 00000014
    or      a0, s3, $zero              # a0 = 00000000
    bne     v0, $at, lbl_809E9A58
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x3959          # a1 = 00003959
    addiu   t9, $zero, 0x05DC          # t9 = 000005DC
    sh      t9, 0x030C(s3)             # 0000030C
    lh      v0, 0x0308(s3)             # 00000308
lbl_809E9A58:
    beq     v0, $zero, lbl_809E9C58
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0308(s3)             # 00000308
    lh      t2, 0x0308(s3)             # 00000308
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sh      t0, 0x030A(s3)             # 0000030A
    slti    $at, t2, 0x000B
    bne     $at, $zero, lbl_809E9AB8
    addiu   s0, s3, 0x0024             # s0 = 00000024
    lw      t3, 0x0064($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lw      t5, 0x0024(t3)             # 00000024
    lh      s8, 0x008A(s3)             # 0000008A
    addiu   s0, s3, 0x0024             # s0 = 00000024
    sw      t5, 0x02EC(s3)             # 000002EC
    lw      t4, 0x0028(t3)             # 00000028
    sw      t4, 0x02F0(s3)             # 000002F0
    lwc1    $f18, 0x02F0(s3)           # 000002F0
    lw      t5, 0x002C(t3)             # 0000002C
    add.s   $f6, $f18, $f4
    sw      t5, 0x02F4(s3)             # 000002F4
    beq     $zero, $zero, lbl_809E9ACC
    swc1    $f6, 0x02F0(s3)            # 000002F0
lbl_809E9AB8:
    or      a0, s0, $zero              # a0 = 00000024
    jal     func_80063F00
    addiu   a1, s3, 0x02EC             # a1 = 000002EC
    sll     s8, v0, 16
    sra     s8, s8, 16
lbl_809E9ACC:
    addiu   a0, s3, 0x030C             # a0 = 0000030C
    addiu   a1, $zero, 0x05DC          # a1 = 000005DC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x001E          # a3 = 0000001E
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   s1, s3, 0x0148             # s1 = 00000148
    or      a1, s1, $zero              # a1 = 00000148
    or      a0, s0, $zero              # a0 = 00000024
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFF0
    jal     func_800285B0
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a3, 0x030C(s3)             # 0000030C
    sw      $zero, 0x0010($sp)
    addiu   a0, s3, 0x00B6             # a0 = 000000B6
    lh      a1, 0x005A($sp)
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      a1, 0x0058($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      a3, 0x030C(s3)             # 0000030C
    addu    a1, a1, $at
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      $zero, 0x0010($sp)
    addiu   a0, s3, 0x00B4             # a0 = 000000B4
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x0024(s3)           # 00000024
    lwc1    $f14, 0x0028(s3)           # 00000028
    lw      a2, 0x002C(s3)             # 0000002C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x00B4(s3)             # 000000B4
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x00B6(s3)             # 000000B6
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     s7, %hi(var_809EAE70)      # s7 = 809F0000
    addiu   s7, s7, %lo(var_809EAE70)  # s7 = 809EAE70
    or      a0, s7, $zero              # a0 = 809EAE70
    jal     func_800AB958
    or      a1, s1, $zero              # a1 = 00000148
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s6, $zero, 0x000C          # s6 = 0000000C
    addiu   s5, $zero, 0x04B0          # s5 = 000004B0
    addiu   s4, $zero, 0x0006          # s4 = 00000006
lbl_809E9B98:
    multu   s2, s4
    lh      a3, 0x030C(s3)             # 0000030C
    sw      $zero, 0x0010($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mflo    t6
    addu    s0, s3, t6
    addiu   a0, s0, 0x0298             # a0 = 000002BC
    multu   s2, s5
    mflo    a1
    addiu   a1, a1, 0xC000             # a1 = FFFFC000
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    sll     a1, s8, 16
    lh      a3, 0x030C(s3)             # 0000030C
    sw      $zero, 0x0010($sp)
    sra     a1, a1, 16
    addiu   a0, s0, 0x029A             # a0 = 000002BE
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    multu   s2, s6
    or      a3, $zero, $zero           # a3 = 00000000
    mflo    t7
    addu    s1, s3, t7
    lwc1    $f12, 0x0148(s1)           # 00000290
    lwc1    $f14, 0x014C(s1)           # 00000294
    jal     func_800AA7F4
    lw      a2, 0x0150(s1)             # 00000298
    lh      a0, 0x0298(s0)             # 000002BC
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x029A(s0)             # 000002BE
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, s7, $zero              # a0 = 809EAE70
    jal     func_800AB958
    addiu   a1, s1, 0x0154             # a1 = 0000029C
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x000D
    bne     $at, $zero, lbl_809E9B98
    nop
    beq     $zero, $zero, lbl_809E9EC4
    lbu     v0, 0x0320(s3)             # 00000320
lbl_809E9C58:
    lh      v0, 0x030A(s3)             # 0000030A
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    or      a0, s3, $zero              # a0 = 00000000
    bne     v0, $at, lbl_809E9C78
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x3958          # a1 = 00003958
    lh      v0, 0x030A(s3)             # 0000030A
lbl_809E9C78:
    beq     v0, $zero, lbl_809E9E6C
    lui     $at, 0x432F                # $at = 432F0000
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    addiu   t8, $zero, 0x1F40          # t8 = 00001F40
    addiu   s0, s3, 0x0024             # s0 = 00000024
    sh      t8, 0x030C(s3)             # 0000030C
    or      a0, s0, $zero              # a0 = 00000024
    addiu   a1, s3, 0x02EC             # a1 = 000002EC
    jal     func_80063F00
    swc1    $f8, 0x0068(s3)            # 00000068
    sll     s8, v0, 16
    addiu   s1, s3, 0x0148             # s1 = 00000148
    sra     s8, s8, 16
    or      a1, s1, $zero              # a1 = 00000148
    jal     func_80063F34
    or      a0, s0, $zero              # a0 = 00000024
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s0, v0, $at
    sll     s0, s0, 16
    sll     a1, s8, 16
    lh      a3, 0x030C(s3)             # 0000030C
    sra     s0, s0, 16
    sw      $zero, 0x0010($sp)
    sra     a1, a1, 16
    addiu   a0, s3, 0x00B6             # a0 = 000000B6
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sll     a1, s0, 16
    lh      a3, 0x030C(s3)             # 0000030C
    sw      $zero, 0x0010($sp)
    sra     a1, a1, 16
    addiu   a0, s3, 0x00B4             # a0 = 000000B4
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x0024(s3)           # 00000024
    lwc1    $f14, 0x0028(s3)           # 00000028
    lw      a2, 0x002C(s3)             # 0000002C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x00B4(s3)             # 000000B4
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x00B6(s3)             # 000000B6
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     s7, %hi(var_809EAE70)      # s7 = 809F0000
    addiu   s7, s7, %lo(var_809EAE70)  # s7 = 809EAE70
    or      a0, s7, $zero              # a0 = 809EAE70
    jal     func_800AB958
    or      a1, s1, $zero              # a1 = 00000148
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s6, $zero, 0x000C          # s6 = 0000000C
    addiu   s5, $zero, 0x04B0          # s5 = 000004B0
    addiu   s4, $zero, 0x0006          # s4 = 00000006
    lh      a0, 0x030A(s3)             # 0000030A
lbl_809E9D64:
    addiu   $at, $zero, 0x0CCC         # $at = 00000CCC
    multu   a0, $at
    mflo    a0
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    multu   s2, s4
    neg.s   $f10, $f0
    lh      a3, 0x030C(s3)             # 0000030C
    sw      $zero, 0x0010($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mflo    t9
    addu    s0, s3, t9
    addiu   a0, s0, 0x0298             # a0 = 000002BC
    multu   s2, s5
    mflo    t0
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f4, $f10, $f18
    trunc.w.s $f6, $f4
    mfc1    a1, $f6
    nop
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a1, a1, 0xC000             # a1 = FFFFC000
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    sll     a1, s8, 16
    lh      a3, 0x030C(s3)             # 0000030C
    sw      $zero, 0x0010($sp)
    sra     a1, a1, 16
    addiu   a0, s0, 0x029A             # a0 = 000002BE
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    multu   s2, s6
    or      a3, $zero, $zero           # a3 = 00000000
    mflo    t2
    addu    s1, s3, t2
    lwc1    $f12, 0x0148(s1)           # 00000290
    lwc1    $f14, 0x014C(s1)           # 00000294
    jal     func_800AA7F4
    lw      a2, 0x0150(s1)             # 00000298
    lh      a0, 0x0298(s0)             # 000002BC
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x029A(s0)             # 000002BE
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, s7, $zero              # a0 = 809EAE70
    jal     func_800AB958
    addiu   a1, s1, 0x0154             # a1 = 0000029C
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x000D
    bnel    $at, $zero, lbl_809E9D64
    lh      a0, 0x030A(s3)             # 0000030A
    lh      t3, 0x030A(s3)             # 0000030A
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    beq     $zero, $zero, lbl_809E9EC0
    sh      t4, 0x030A(s3)             # 0000030A
lbl_809E9E6C:
    mtc1    $at, $f8                   # $f8 = 0.00
    lwc1    $f16, 0x0090(s3)           # 00000090
    lw      t5, 0x0064($sp)
    c.lt.s  $f8, $f16
    nop
    bc1t    lbl_809E9E98
    nop
    lw      t6, 0x066C(t5)             # 0000066C
    sll     t7, t6,  5
    bgez    t7, lbl_809E9EA8
    nop
lbl_809E9E98:
    jal     func_809E93A4
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E9EC4
    lbu     v0, 0x0320(s3)             # 00000320
lbl_809E9EA8:
    jal     func_809E9940
    or      a0, s3, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x001B          # t8 = 0000001B
    addiu   t9, $zero, 0x02EE          # t9 = 000002EE
    sh      t8, 0x0308(s3)             # 00000308
    sh      t9, 0x030C(s3)             # 0000030C
lbl_809E9EC0:
    lbu     v0, 0x0320(s3)             # 00000320
lbl_809E9EC4:
    lh      t0, 0x02E0(s3)             # 000002E0
    lh      t1, 0x02E2(s3)             # 000002E2
    andi    t2, v0, 0x0002             # t2 = 00000000
    sh      t0, 0x02E6(s3)             # 000002E6
    beq     t2, $zero, lbl_809E9F14
    sh      t1, 0x02E8(s3)             # 000002E8
    andi    t3, v0, 0xFFFD             # t3 = 00000000
    sb      t3, 0x0320(s3)             # 00000320
    lw      t4, 0x0064($sp)
    lw      t5, 0x0314(s3)             # 00000314
    lui     $at, 0x4100                # $at = 41000000
    lw      a0, 0x006C($sp)
    bnel    t4, t5, lbl_809E9F18
    lw      a0, 0x006C($sp)
    mtc1    $at, $f0                   # $f0 = 8.00
    lh      a3, 0x008A(s3)             # 0000008A
    or      a1, s3, $zero              # a1 = 00000000
    mfc1    a2, $f0
    jal     func_80022EC4
    swc1    $f0, 0x0010($sp)
lbl_809E9F14:
    lw      a0, 0x006C($sp)
lbl_809E9F18:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s3, 0x0310             # a2 = 00000310
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at
    beq     $zero, $zero, lbl_809E9F88
    lw      $ra, 0x0044($sp)
    mtc1    $at, $f10                  # $f10 = 0.00
lbl_809E9F38:
    lw      t7, 0x0064($sp)
    c.lt.s  $f10, $f2
    nop
    bc1t    lbl_809E9F5C
    nop
    lw      t8, 0x066C(t7)             # 0000066C
    sll     t9, t8,  5
    bgez    t9, lbl_809E9F6C
    nop
lbl_809E9F5C:
    jal     func_809E93A4
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E9F88
    lw      $ra, 0x0044($sp)
lbl_809E9F6C:
    jal     func_809E9940
    or      a0, s3, $zero              # a0 = 00000000
    addiu   t0, $zero, 0x001B          # t0 = 0000001B
    addiu   t1, $zero, 0x02EE          # t1 = 000002EE
    sh      t0, 0x0308(s3)             # 00000308
    sh      t1, 0x030C(s3)             # 0000030C
    lw      $ra, 0x0044($sp)
lbl_809E9F88:
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    lw      s7, 0x003C($sp)
    lw      s8, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_809E9FB4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x05DC          # t7 = 000005DC
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sw      t6, 0x013C(a0)             # 0000013C
    sh      t7, 0x030C(a0)             # 0000030C
    sh      t8, 0x0308(a0)             # 00000308
    sb      t9, 0x00AE(a0)             # 000000AE
    swc1    $f4, 0x0068(a0)            # 00000068
    sw      a0, 0x0020($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x395A          # a1 = 0000395A
    addiu   t0, $zero, 0x000C          # t0 = 0000000C
    lw      a0, 0x0020($sp)
    sw      t0, 0x0010($sp)
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(func_809EA030)     # a1 = 809F0000
    lw      a0, 0x0020($sp)
    jal     func_809E9180
    addiu   a1, a1, %lo(func_809EA030) # a1 = 809EA030
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809EA030:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s7, 0x003C($sp)
    sw      s1, 0x0024($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s7, a0, $zero              # s7 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s0, 0x0020($sp)
    lui     $at, 0x43A5                # $at = 43A50000
    mtc1    $at, $f6                   # $f6 = 330.00
    lwc1    $f4, 0x000C(s7)            # 0000000C
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   a0, s7, 0x0028             # a0 = 00000028
    add.s   $f8, $f4, $f6
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x41F0                 # a3 = 41F00000
    swc1    $f10, 0x0010($sp)
    mfc1    a1, $f8
    jal     func_80064178
    nop
    addiu   s4, s7, 0x0024             # s4 = 00000024
    lw      t7, 0x0000(s4)             # 00000024
    addiu   s0, s7, 0x02EC             # s0 = 000002EC
    lui     t8, 0x0001                 # t8 = 00010000
    sw      t7, 0x0000(s0)             # 000002EC
    lw      t6, 0x0004(s4)             # 00000028
    addu    t8, t8, s1
    sw      t6, 0x0004(s0)             # 000002F0
    lw      t7, 0x0008(s4)             # 0000002C
    sw      t7, 0x0008(s0)             # 000002F4
    lw      t8, 0x1DE4(t8)             # 00011DE4
    andi    t9, t8, 0x000F             # t9 = 00000000
    bne     t9, $zero, lbl_809EA130
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f12                  # $f12 = 180.00
    jal     func_80026D90
    nop
    lwc1    $f16, 0x0300(s7)           # 00000300
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f12                  # $f12 = 180.00
    add.s   $f18, $f16, $f0
    jal     func_80026D90
    swc1    $f18, 0x0300(s7)           # 00000300
    lwc1    $f4, 0x0304(s7)            # 00000304
    lwc1    $f12, 0x0300(s7)           # 00000300
    add.s   $f6, $f4, $f0
    jal     func_800A45FC
    swc1    $f6, 0x0304(s7)            # 00000304
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    lwc1    $f12, 0x0304(s7)           # 00000304
    mul.s   $f10, $f0, $f8
    jal     func_800A4650
    swc1    $f10, 0x02F8(s7)           # 000002F8
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f16                  # $f16 = 80.00
    nop
    mul.s   $f18, $f0, $f16
    swc1    $f18, 0x02FC(s7)           # 000002FC
lbl_809EA130:
    lui     $at, 0x43E0                # $at = 43E00000
    mtc1    $at, $f6                   # $f6 = 448.00
    lwc1    $f4, 0x02F0(s7)            # 000002F0
    lwc1    $f10, 0x02EC(s7)           # 000002EC
    lwc1    $f16, 0x02F8(s7)           # 000002F8
    sub.s   $f8, $f4, $f6
    lwc1    $f6, 0x02FC(s7)            # 000002FC
    lwc1    $f4, 0x02F4(s7)            # 000002F4
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x02F0(s7)            # 000002F0
    mtc1    $zero, $f0                 # $f0 = 0.00
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x02EC(s7)           # 000002EC
    lw      a3, 0x0068(s7)             # 00000068
    or      a0, s0, $zero              # a0 = 000002EC
    swc1    $f8, 0x02F4(s7)            # 000002F4
    addiu   a1, s7, 0x01E4             # a1 = 000001E4
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x0014($sp)
    jal     func_80026984
    swc1    $f0, 0x0010($sp)
    addiu   s0, s7, 0x0090             # s0 = 00000090
    addiu   s1, s0, 0x0154             # s1 = 000001E4
    addiu   s2, s0, 0x0148             # s2 = 000001D8
    addiu   s3, $zero, 0x0090          # s3 = 00000090
    addiu   s8, $sp, 0x006C            # s8 = FFFFFFF4
lbl_809EA198:
    or      a0, s1, $zero              # a0 = 000001E4
    or      a1, s2, $zero              # a1 = 000001D8
    or      a2, s8, $zero              # a2 = FFFFFFF4
    jal     func_800285B0
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0154(s0)           # 000001E4
    lwc1    $f14, 0x0158(s0)           # 000001E8
    lw      a2, 0x015C(s0)             # 000001EC
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x006C($sp)
    lh      a1, 0x006E($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, %hi(var_809EAE70)      # a0 = 809F0000
    addiu   a0, a0, %lo(var_809EAE70)  # a0 = 809EAE70
    jal     func_800AB958
    or      a1, s2, $zero              # a1 = 000001D8
    addiu   s3, s3, 0xFFF4             # s3 = 00000084
    addiu   s0, s0, 0xFFF4             # s0 = 00000084
    addiu   s1, s1, 0xFFF4             # s1 = 000001D8
    bgez    s3, lbl_809EA198
    addiu   s2, s2, 0xFFF4             # s2 = 000001CC
    addiu   s0, s7, 0x0148             # s0 = 00000148
    or      a1, s0, $zero              # a1 = 00000148
    or      a0, s4, $zero              # a0 = 00000024
    or      a2, s8, $zero              # a2 = FFFFFFF4
    jal     func_800285B0
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0024(s7)           # 00000024
    lwc1    $f14, 0x0028(s7)           # 00000028
    lw      a2, 0x002C(s7)             # 0000002C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a3, 0x030C(s7)             # 0000030C
    addiu   t0, $zero, 0x00B6          # t0 = 000000B6
    sw      t0, 0x0010($sp)
    addiu   a0, s7, 0x00B6             # a0 = 000000B6
    lh      a1, 0x006E($sp)
    jal     func_80064508
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lh      a1, 0x006C($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      a3, 0x030C(s7)             # 0000030C
    addu    a1, a1, $at
    sll     a1, a1, 16
    addiu   t1, $zero, 0x00B6          # t1 = 000000B6
    sw      t1, 0x0010($sp)
    sra     a1, a1, 16
    addiu   a0, s7, 0x00B4             # a0 = 000000B4
    jal     func_80064508
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lh      a0, 0x00B4(s7)             # 000000B4
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x00B6(s7)             # 000000B6
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, %hi(var_809EAE70)      # a0 = 809F0000
    addiu   a0, a0, %lo(var_809EAE70)  # a0 = 809EAE70
    jal     func_800AB958
    or      a1, s0, $zero              # a1 = 00000148
    or      s0, s7, $zero              # s0 = 00000000
    addiu   s1, s7, 0x0154             # s1 = 00000154
    addiu   s2, s7, 0x0148             # s2 = 00000148
    or      s4, $zero, $zero           # s4 = 00000000
    or      s3, s7, $zero              # s3 = 00000000
    addiu   s5, s7, 0x029A             # s5 = 0000029A
    addiu   s6, s7, 0x0298             # s6 = 00000298
lbl_809EA2BC:
    or      a0, s2, $zero              # a0 = 00000148
    or      a1, s1, $zero              # a1 = 00000154
    or      a2, s8, $zero              # a2 = FFFFFFF4
    jal     func_800285B0
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0148(s0)           # 00000148
    lwc1    $f14, 0x014C(s0)           # 0000014C
    lw      a2, 0x0150(s0)             # 00000150
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a3, 0x030C(s7)             # 0000030C
    addiu   t2, $zero, 0x00B6          # t2 = 000000B6
    sw      t2, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 0000029A
    lh      a1, 0x006E($sp)
    jal     func_80064508
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lh      a1, 0x006C($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      a3, 0x030C(s7)             # 0000030C
    addu    a1, a1, $at
    sll     a1, a1, 16
    addiu   t3, $zero, 0x00B6          # t3 = 000000B6
    sw      t3, 0x0010($sp)
    sra     a1, a1, 16
    or      a0, s6, $zero              # a0 = 00000298
    jal     func_80064508
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lh      a0, 0x0298(s3)             # 00000298
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x029A(s3)             # 0000029A
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, %hi(var_809EAE70)      # a0 = 809F0000
    addiu   a0, a0, %lo(var_809EAE70)  # a0 = 809EAE70
    jal     func_800AB958
    or      a1, s1, $zero              # a1 = 00000154
    addiu   s4, s4, 0x0006             # s4 = 00000006
    addiu   $at, $zero, 0x004E         # $at = 0000004E
    addiu   s0, s0, 0x000C             # s0 = 0000000C
    addiu   s1, s1, 0x000C             # s1 = 00000160
    addiu   s2, s2, 0x000C             # s2 = 00000154
    addiu   s3, s3, 0x0006             # s3 = 00000006
    addiu   s5, s5, 0x0006             # s5 = 000002A0
    bne     s4, $at, lbl_809EA2BC
    addiu   s6, s6, 0x0006             # s6 = 0000029E
    lh      t6, 0x0308(s7)             # 00000308
    lh      t4, 0x02E0(s7)             # 000002E0
    lh      t5, 0x02E2(s7)             # 000002E2
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0308(s7)             # 00000308
    lh      t8, 0x0308(s7)             # 00000308
    sh      t4, 0x02E6(s7)             # 000002E6
    sh      t5, 0x02E8(s7)             # 000002E8
    bnel    t8, $zero, lbl_809EA3B8
    lw      $ra, 0x0044($sp)
    jal     func_809E93A4
    or      a0, s7, $zero              # a0 = 00000000
    lw      $ra, 0x0044($sp)
lbl_809EA3B8:
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    lw      s7, 0x003C($sp)
    lw      s8, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_809EA3E4:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s8, 0x0050($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    addiu   s8, $sp, 0x0074            # s8 = FFFFFFEC
    sw      $ra, 0x0054($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    lui     t6, %hi(var_809EAEF0)      # t6 = 809F0000
    addiu   t6, t6, %lo(var_809EAEF0)  # t6 = 809EAEF0
    lw      t8, 0x0000(t6)             # 809EAEF0
    addiu   t9, $zero, 0x09C4          # t9 = 000009C4
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t8, 0x0000(s8)             # FFFFFFEC
    lw      t7, 0x0004(t6)             # 809EAEF4
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    or      a0, s2, $zero              # a0 = 00000000
    sw      t7, 0x0004(s8)             # FFFFFFF0
    lw      t8, 0x0008(t6)             # 809EAEF8
    addiu   a1, s3, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x395B          # a2 = 0000395B
    sw      t8, 0x0008(s8)             # FFFFFFF4
    sh      t9, 0x030C(s3)             # 0000030C
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    jal     func_8001E510
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sw      $zero, 0x013C(s3)          # 0000013C
    addiu   s1, $zero, 0x0054          # s1 = 00000054
    addiu   s0, s3, 0x0054             # s0 = 00000054
    addiu   s4, s2, 0x1C24             # s4 = 00001C24
lbl_809EA478:
    lwc1    $f4, 0x014C(s0)            # 000001A0
    lw      a3, 0x0148(s0)             # 0000019C
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0150(s0)            # 000001A4
    sw      t2, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    or      a0, s4, $zero              # a0 = 00001C24
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x00DE          # a2 = 000000DE
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    addiu   s1, s1, 0x000C             # s1 = 00000060
    slti    $at, s1, 0x00A8
    bne     $at, $zero, lbl_809EA478
    addiu   s0, s0, 0x000C             # s0 = 00000060
    addiu   s0, s3, 0x0148             # s0 = 00000148
    or      a1, s0, $zero              # a1 = 00000148
    jal     func_80063F34
    addiu   a0, s3, 0x0024             # a0 = 00000024
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s1, v0, $at
    sll     s1, s1, 16
    lh      a1, 0x008A(s3)             # 0000008A
    lh      a3, 0x030C(s3)             # 0000030C
    sra     s1, s1, 16
    sw      $zero, 0x0010($sp)
    addiu   a0, s3, 0x00B6             # a0 = 000000B6
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sll     a1, s1, 16
    lh      a3, 0x030C(s3)             # 0000030C
    sw      $zero, 0x0010($sp)
    sra     a1, a1, 16
    addiu   a0, s3, 0x00B4             # a0 = 000000B4
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x0024(s3)           # 00000024
    lwc1    $f14, 0x0028(s3)           # 00000028
    lw      a2, 0x002C(s3)             # 0000002C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x00B4(s3)             # 000000B4
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x00B6(s3)             # 000000B6
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, %hi(var_809EAE70)      # a0 = 809F0000
    addiu   a0, a0, %lo(var_809EAE70)  # a0 = 809EAE70
    jal     func_800AB958
    or      a1, s0, $zero              # a1 = 00000148
    lw      t3, 0x0004(s3)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   s1, s3, 0x001E             # s1 = 0000001E
    addiu   s0, s3, 0x003C             # s0 = 0000003C
    and     t4, t3, $at
    sw      t4, 0x0004(s3)             # 00000004
    addiu   s6, s0, 0x0154             # s6 = 00000190
    addiu   s4, s1, 0x0298             # s4 = 000002B6
    addiu   s5, s1, 0x029A             # s5 = 000002B8
    addiu   s2, $zero, 0x001E          # s2 = 0000001E
    addiu   s7, $zero, 0x004E          # s7 = 0000004E
lbl_809EA588:
    lh      a1, 0x02B6(s3)             # 000002B6
    lh      a3, 0x030C(s3)             # 0000030C
    sw      $zero, 0x0010($sp)
    or      a0, s4, $zero              # a0 = 000002B6
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      a1, 0x02B8(s3)             # 000002B8
    lh      a3, 0x030C(s3)             # 0000030C
    sw      $zero, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 000002B8
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x0148(s0)           # 00000184
    lwc1    $f14, 0x014C(s0)           # 00000188
    lw      a2, 0x0150(s0)             # 0000018C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x0298(s1)             # 000002B6
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x029A(s1)             # 000002B8
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, s8, $zero              # a0 = FFFFFFEC
    jal     func_800AB958
    or      a1, s6, $zero              # a1 = 00000190
    addiu   s2, s2, 0x0006             # s2 = 00000024
    addiu   s0, s0, 0x000C             # s0 = 00000048
    addiu   s1, s1, 0x0006             # s1 = 00000024
    addiu   s4, s4, 0x0006             # s4 = 000002BC
    addiu   s5, s5, 0x0006             # s5 = 000002BE
    bne     s2, s7, lbl_809EA588
    addiu   s6, s6, 0x000C             # s6 = 0000019C
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    lui     a1, %hi(func_809EA660)     # a1 = 809F0000
    sh      t5, 0x030A(s3)             # 0000030A
    addiu   a1, a1, %lo(func_809EA660) # a1 = 809EA660
    jal     func_809E9180
    or      a0, s3, $zero              # a0 = 00000000
    lw      $ra, 0x0054($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    lw      s5, 0x0044($sp)
    lw      s6, 0x0048($sp)
    lw      s7, 0x004C($sp)
    lw      s8, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_809EA660:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s2, 0x0028($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     t7, %hi(var_809EAEFC)      # t7 = 809F0000
    addiu   t7, t7, %lo(var_809EAEFC)  # t7 = 809EAEFC
    lw      t9, 0x0000(t7)             # 809EAEFC
    addiu   t6, $sp, 0x006C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 809EAF00
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 809EAF04
    sw      t8, 0x0004(t6)             # FFFFFFF8
    lui     $at, 0x41F0                # $at = 41F00000
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lh      t0, 0x030A(s2)             # 0000030A
    addiu   t1, $zero, 0x1F40          # t1 = 00001F40
    addiu   s0, s2, 0x0148             # s0 = 00000148
    beq     t0, $zero, lbl_809EA950
    or      a0, a2, $zero              # a0 = 00000000
    mtc1    $at, $f4                   # $f4 = 30.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    lwc1    $f6, 0x0028(s2)            # 00000028
    sh      t1, 0x030C(s2)             # 0000030C
    addiu   a0, s2, 0x0024             # a0 = 00000024
    add.s   $f10, $f6, $f8
    or      a1, s0, $zero              # a1 = 00000148
    swc1    $f4, 0x0068(s2)            # 00000068
    jal     func_80063F34
    swc1    $f10, 0x0028(s2)           # 00000028
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s1, v0, $at
    sll     s1, s1, 16
    lh      a1, 0x008A(s2)             # 0000008A
    lh      a3, 0x030C(s2)             # 0000030C
    sra     s1, s1, 16
    sw      $zero, 0x0010($sp)
    addiu   a0, s2, 0x00B6             # a0 = 000000B6
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sll     a1, s1, 16
    lh      a3, 0x030C(s2)             # 0000030C
    sw      $zero, 0x0010($sp)
    sra     a1, a1, 16
    addiu   a0, s2, 0x00B4             # a0 = 000000B4
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x0024(s2)           # 00000024
    lwc1    $f14, 0x0028(s2)           # 00000028
    lw      a2, 0x002C(s2)             # 0000002C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x00B4(s2)             # 000000B4
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x00B6(s2)             # 000000B6
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     s8, %hi(var_809EAE70)      # s8 = 809F0000
    addiu   s8, s8, %lo(var_809EAE70)  # s8 = 809EAE70
    or      a0, s8, $zero              # a0 = 809EAE70
    jal     func_800AB958
    or      a1, s0, $zero              # a1 = 00000148
    or      s7, $zero, $zero           # s7 = 00000000
    or      s1, s2, $zero              # s1 = 00000000
    addiu   s3, s2, 0x0298             # s3 = 00000298
    addiu   s4, s2, 0x029A             # s4 = 0000029A
    or      s5, $zero, $zero           # s5 = 00000000
    or      s0, s2, $zero              # s0 = 00000000
    addiu   s6, s2, 0x0154             # s6 = 00000154
lbl_809EA7A8:
    lh      a0, 0x030A(s2)             # 0000030A
    addu    $at, a0, $zero
    sll     a0, a0,  4
    addu    a0, a0, $at
    sll     a0, a0,  4
    addu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    mtc1    s7, $f18                   # $f18 = 0.00
    neg.s   $f16, $f0
    lh      a3, 0x030C(s2)             # 0000030C
    cvt.s.w $f4, $f18
    sw      $zero, 0x0010($sp)
    or      a0, s3, $zero              # a0 = 00000298
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mul.s   $f6, $f16, $f4
    trunc.w.s $f8, $f6
    mfc1    a1, $f8
    nop
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a1, a1, 0xC000             # a1 = FFFFC000
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    lh      a1, 0x008A(s2)             # 0000008A
    lh      a3, 0x030C(s2)             # 0000030C
    sw      $zero, 0x0010($sp)
    or      a0, s4, $zero              # a0 = 0000029A
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x0148(s0)           # 00000148
    lwc1    $f14, 0x014C(s0)           # 0000014C
    lw      a2, 0x0150(s0)             # 00000150
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x0298(s1)             # 00000298
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x029A(s1)             # 0000029A
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, s8, $zero              # a0 = 809EAE70
    jal     func_800AB958
    or      a1, s6, $zero              # a1 = 00000154
    addiu   s5, s5, 0x000C             # s5 = 0000000C
    slti    $at, s5, 0x003C
    addiu   s7, s7, 0x0190             # s7 = 00000190
    addiu   s1, s1, 0x0006             # s1 = 00000006
    addiu   s3, s3, 0x0006             # s3 = 0000029E
    addiu   s4, s4, 0x0006             # s4 = 000002A0
    addiu   s0, s0, 0x000C             # s0 = 0000000C
    bne     $at, $zero, lbl_809EA7A8
    addiu   s6, s6, 0x000C             # s6 = 00000160
    addiu   s1, s2, 0x001E             # s1 = 0000001E
    addiu   s0, s2, 0x003C             # s0 = 0000003C
    addiu   s6, s0, 0x0154             # s6 = 00000190
    addiu   s3, s1, 0x0298             # s3 = 000002B6
    addiu   s4, s1, 0x029A             # s4 = 000002B8
    addiu   s5, $zero, 0x003C          # s5 = 0000003C
    addiu   s7, $zero, 0x009C          # s7 = 0000009C
lbl_809EA8B0:
    lh      a1, 0x02B6(s2)             # 000002B6
    lh      a3, 0x030C(s2)             # 0000030C
    sw      $zero, 0x0010($sp)
    or      a0, s3, $zero              # a0 = 000002B6
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      a1, 0x02B8(s2)             # 000002B8
    lh      a3, 0x030C(s2)             # 0000030C
    sw      $zero, 0x0010($sp)
    or      a0, s4, $zero              # a0 = 000002B8
    jal     func_80064508
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x0148(s0)           # 00000184
    lwc1    $f14, 0x014C(s0)           # 00000188
    lw      a2, 0x0150(s0)             # 0000018C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x0298(s1)             # 000002B6
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lh      a1, 0x029A(s1)             # 000002B8
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFF4
    jal     func_800AB958
    or      a1, s6, $zero              # a1 = 00000190
    addiu   s5, s5, 0x000C             # s5 = 00000048
    addiu   s1, s1, 0x0006             # s1 = 00000024
    addiu   s3, s3, 0x0006             # s3 = 000002BC
    addiu   s4, s4, 0x0006             # s4 = 000002BE
    addiu   s0, s0, 0x000C             # s0 = 00000048
    bne     s5, s7, lbl_809EA8B0
    addiu   s6, s6, 0x000C             # s6 = 0000019C
    lh      t3, 0x030A(s2)             # 0000030A
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    beq     $zero, $zero, lbl_809EA960
    sh      t4, 0x030A(s2)             # 0000030A
lbl_809EA950:
    jal     func_800204D0
    lh      a1, 0x0144(s2)             # 00000144
    jal     func_80020EB4
    or      a0, s2, $zero              # a0 = 00000000
lbl_809EA960:
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    lw      s7, 0x003C($sp)
    lw      s8, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_809EA990:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    slti    $at, t6, 0x0003
    beql    $at, $zero, lbl_809EAA00
    lw      t9, 0x0140(s0)             # 00000140
    lbu     v0, 0x0321(s0)             # 00000321
    andi    t7, v0, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_809EAA00
    lw      t9, 0x0140(s0)             # 00000140
    lbu     t9, 0x00AF(s0)             # 000000AF
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    sb      t8, 0x0321(s0)             # 00000321
    addiu   t0, t9, 0xFFFF             # t0 = FFFFFFFF
    andi    t1, t0, 0x00FF             # t1 = 000000FF
    bne     t1, $zero, lbl_809EA9F4
    sb      t0, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809EA3E4
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_809EAA00
    lw      t9, 0x0140(s0)             # 00000140
lbl_809EA9F4:
    jal     func_809E9FB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0140(s0)             # 00000140
lbl_809EAA00:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jalr    $ra, t9
    nop
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   a2, s0, 0x0310             # a2 = 00000310
    slti    $at, t2, 0x0003
    beql    $at, $zero, lbl_809EAA40
    lw      t5, 0x013C(s0)             # 0000013C
    lw      t4, 0x0190(s0)             # 00000190
    lw      t3, 0x0194(s0)             # 00000194
    sw      t4, 0x0038(s0)             # 00000038
    lw      t4, 0x0198(s0)             # 00000198
    sw      t3, 0x003C(s0)             # 0000003C
    sw      t4, 0x0040(s0)             # 00000040
    lw      t5, 0x013C(s0)             # 0000013C
lbl_809EAA40:
    lw      a0, 0x0024($sp)
    slti    $at, t5, 0x0002
    bne     $at, $zero, lbl_809EAA5C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
lbl_809EAA5C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809EAA70:
    addiu   $sp, $sp, 0xFF40           # $sp -= 0xC0
    sw      s8, 0x0068($sp)
    sw      s2, 0x0050($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lw      a0, 0x0000(s8)             # 00000000
    lui     t7, %hi(var_809EAF14)      # t7 = 809F0000
    addiu   t7, t7, %lo(var_809EAF14)  # t7 = 809EAF14
    lw      s1, 0x02C4(a0)             # 000002C4
    addiu   t6, $sp, 0x00A4            # t6 = FFFFFFE4
    addiu   s1, s1, 0xFC80             # s1 = FFFFFC80
    sw      s1, 0x02C4(a0)             # 000002C4
    lw      t9, 0x0000(t7)             # 809EAF14
    lw      t8, 0x0004(t7)             # 809EAF18
    or      s3, s1, $zero              # s3 = FFFFFC80
    sw      t9, 0x0000(t6)             # FFFFFFE4
    lw      t9, 0x0008(t7)             # 809EAF1C
    sw      t8, 0x0004(t6)             # FFFFFFE8
    sw      t9, 0x0008(t6)             # FFFFFFEC
    lw      a0, 0x0000(s8)             # 00000000
    jal     func_8007E298
    or      s6, a0, $zero              # s6 = 00000000
    lh      t1, 0x001C(s2)             # 0000001C
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    slti    $at, t1, 0x0003
    beq     $at, $zero, lbl_809EAD40
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800AA6EC
    nop
    lw      s0, 0x02C0(s6)             # 000002C0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0030             # t3 = DB060030
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s6)             # 000002C0
    sw      s1, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s6)             # 000002C0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s6)             # 000002C0
    sw      t5, 0x0000(s0)             # 00000000
    lh      t6, 0x001C(s2)             # 0000001C
    lui     t0, %hi(var_809EAF08)      # t0 = 809F0000
    lui     t3, 0x8012                 # t3 = 80120000
    sll     t7, t6,  2
    addu    t0, t0, t7
    lw      t0, %lo(var_809EAF08)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t9, t0,  4
    srl     t1, t9, 28
    sll     t2, t1,  2
    addu    t3, t3, t2
    lw      t3, 0x0C38(t3)             # 80120C38
    and     t8, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t8, t3
    addu    t5, t4, $at
    sw      t5, 0x0004(s0)             # 00000004
    lw      s4, 0x02C0(s6)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t6, s4, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s6)             # 000002C0
    sw      t7, 0x0000(s4)             # 00000000
    lw      a0, 0x0000(s8)             # 00000000
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   t1, $zero, 0x0010          # t1 = 00000010
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, s8
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lw      t8, 0x1DE4(t8)             # 00011DE4
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    subu    $at, $zero, t8
    sll     t3, $at,  2
    addu    t3, t3, $at
    sll     t3, t3,  1
    andi    t4, t3, 0x007F             # t4 = 00000000
    sw      t4, 0x0020($sp)
    sw      t5, 0x0024($sp)
    sw      t6, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s7, $zero, 0x000C          # s7 = 0000000C
    addiu   s5, $zero, 0x000D          # s5 = 0000000D
    addiu   s4, $zero, 0x0006          # s4 = 00000006
lbl_809EAC2C:
    multu   s1, s7
    or      a3, $zero, $zero           # a3 = 00000000
    mflo    t7
    addu    s0, s2, t7
    lwc1    $f12, 0x0148(s0)           # 00000148
    lwc1    $f14, 0x014C(s0)           # 0000014C
    jal     func_800AA7F4
    lw      a2, 0x0150(s0)             # 00000150
    multu   s1, s4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mflo    t9
    addu    v0, s2, t9
    lh      a0, 0x0298(v0)             # 00000298
    lh      a1, 0x029A(v0)             # 0000029A
    jal     func_800AAF00
    lh      a2, 0x029C(v0)             # 0000029C
    lwc1    $f12, 0x01F0(s0)           # 000001F0
    lwc1    $f14, 0x01F4(s0)           # 000001F4
    lw      a2, 0x01F8(s0)             # 000001F8
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     s1, s4, lbl_809EAC90
    nop
    bne     s1, s5, lbl_809EACCC
    nop
lbl_809EAC90:
    bne     s1, s5, lbl_809EACAC
    addiu   s0, s2, 0x0310             # s0 = 00000310
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80050CE4
    or      a1, s0, $zero              # a1 = 00000310
    beq     $zero, $zero, lbl_809EACCC
    nop
lbl_809EACAC:
    mfc1    a2, $f22
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   a0, $zero, 0x0008          # a0 = 00000008
    jal     func_80050CE4
    or      a1, s0, $zero              # a1 = 00000310
lbl_809EACCC:
    jal     func_800AB8D8
    or      a0, s3, $zero              # a0 = FFFFFC80
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x000E
    bne     $at, $zero, lbl_809EAC2C
    addiu   s3, s3, 0x0040             # s3 = FFFFFCC0
    jal     func_800AA724
    nop
    lw      s1, 0x02C0(s6)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s1, 0x0008             # t1 = 00000009
    sw      t1, 0x02C0(s6)             # 000002C0
    sw      t2, 0x0000(s1)             # 00000001
    jal     func_800AB900
    lw      a0, 0x0000(s8)             # 00000000
    sw      v0, 0x0004(s1)             # 00000005
    lw      s0, 0x02C0(s6)             # 000002C0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x0890             # t4 = 06000890
    addiu   t8, s0, 0x0008             # t8 = 00000318
    sw      t8, 0x02C0(s6)             # 000002C0
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      t3, 0x0000(s0)             # 00000310
    sw      t4, 0x0004(s0)             # 00000314
    beq     $zero, $zero, lbl_809EAE1C
    lw      $ra, 0x006C($sp)
lbl_809EAD40:
    lw      s1, 0x02C0(s6)             # 000002C0
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s8
    addiu   t5, s1, 0x0008             # t5 = 00000009
    sw      t5, 0x02C0(s6)             # 000002C0
    sw      t6, 0x0000(s1)             # 00000001
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      a0, 0x0000(s8)             # 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    subu    $at, $zero, v0
    sll     v1, $at,  2
    addu    v1, v1, $at
    sll     a2, v0,  1
    andi    a2, a2, 0x007F             # a2 = 00000000
    andi    v1, v1, 0x007F             # v1 = 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0028($sp)
    sw      t2, 0x0024($sp)
    sw      t1, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      v1, 0x001C($sp)
    sw      v1, 0x0020($sp)
    or      a3, a2, $zero              # a3 = 00000000
    jal     func_8007EB84
    sw      t7, 0x0010($sp)
    sw      v0, 0x0004(s1)             # 00000005
    lw      s0, 0x02C0(s6)             # 000002C0
    lui     t5, 0xFF7D                 # t5 = FF7D0000
    ori     t5, t5, 0x64FF             # t5 = FF7D64FF
    addiu   t3, s0, 0x0008             # t3 = 00000318
    sw      t3, 0x02C0(s6)             # 000002C0
    lui     t4, 0xFA00                 # t4 = FA000000
    sw      t4, 0x0000(s0)             # 00000310
    sw      t5, 0x0004(s0)             # 00000314
    lw      s2, 0x02C0(s6)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s2, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s6)             # 000002C0
    sw      t7, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s8)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02C0(s6)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x1D80             # t2 = 06001D80
    addiu   t9, s0, 0x0008             # t9 = 00000318
    sw      t9, 0x02C0(s6)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      t1, 0x0000(s0)             # 00000310
    sw      t2, 0x0004(s0)             # 00000314
    lw      $ra, 0x006C($sp)
lbl_809EAE1C:
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    lw      s7, 0x0064($sp)
    lw      s8, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00C0           # $sp += 0xC0

.section .data

var_809EAE50: .word 0x00DE0500, 0x00000015, 0x00D50000, 0x000003B0
.word func_809E918C
.word func_809E9378
.word func_809EA990
.word func_809EAA70
var_809EAE70: .word 0x00000000, 0x00000000, 0x42000000
var_809EAE7C: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000010, \
0x00000000, 0x00010000, 0x08000000, 0x00000000, \
0x00140064, 0x00000000, 0x20000000, 0x00040000, \
0x00000000, 0x00000000, 0x01000000, 0x0D000000, \
0x00000000, 0x00190064
var_809EAEC4: .word 0x00110900, 0x00000000, 0x00000002
.word var_809EAE7C
var_809EAED4: .word 0x3C23D70A, 0x3C23D70A, 0x3C23D70A
var_809EAEE0: .word 0x89170015, 0xB0F805DC, 0xB0FC09C4, 0x304C0000
var_809EAEF0: .word 0x00000000, 0x00000000, 0x00000000
var_809EAEFC: .word 0x00000000, 0x00000000, 0x00000000
var_809EAF08: .word 0x060024F0, 0x060027F0, 0x060029F0
var_809EAF14: .word 0x00000000, 0x00000000, 0x43E00000

.section .rodata

var_809EAF20: .word 0x477FFF00
var_809EAF24: .word 0x3A03126F
var_809EAF28: .word 0x3A83126F, 0x00000000

