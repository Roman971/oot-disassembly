.section .text
func_80B56910:
    addiu   v0, a0, 0x0260             # v0 = 00000260
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B5691C:
    lbu     t6, 0x0000(v0)             # 00000260
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    beq     a0, t6, lbl_80B569A0
    sra     v1, v1, 16
    lwc1    $f4, 0x0014($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    swc1    $f4, 0x0004(v0)            # 00000264
    lwc1    $f6, 0x0018($sp)
    swc1    $f6, 0x0008(v0)            # 00000268
    lbu     t8, 0x0013($sp)
    sb      t9, 0x0000(v0)             # 00000260
    sb      t8, 0x0001(v0)             # 00000261
    sb      t8, 0x0002(v0)             # 00000262
    lw      t1, 0x0000(a1)             # 00000000
    sw      t1, 0x0014(v0)             # 00000274
    lw      t0, 0x0004(a1)             # 00000004
    sw      t0, 0x0018(v0)             # 00000278
    lw      t1, 0x0008(a1)             # 00000008
    sw      t1, 0x001C(v0)             # 0000027C
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x002C(v0)             # 0000028C
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x0030(v0)             # 00000290
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0034(v0)             # 00000294
    lw      t5, 0x0000(a2)             # 00000000
    sw      t5, 0x0020(v0)             # 00000280
    lw      t4, 0x0004(a2)             # 00000004
    sw      t4, 0x0024(v0)             # 00000284
    lw      t5, 0x0008(a2)             # 00000008
    jr      $ra
    sw      t5, 0x0028(v0)             # 00000288
lbl_80B569A0:
    slti    $at, v1, 0x000A
    bne     $at, $zero, lbl_80B5691C
    addiu   v0, v0, 0x0038             # v0 = 00000298
    jr      $ra
    nop


func_80B569B4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    lui     $at, %hi(var_80B5C120)     # $at = 80B60000
    lwc1    $f22, %lo(var_80B5C120)($at)
    lui     $at, %hi(var_80B5C124)     # $at = 80B60000
    addiu   s0, a0, 0x0260             # s0 = 00000260
    lwc1    $f20, %lo(var_80B5C124)($at)
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80B569E4:
    lbu     t6, 0x0000(s0)             # 00000260
    beql    t6, $zero, lbl_80B56A90
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lbu     t7, 0x0001(s0)             # 00000261
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    andi    t9, t8, 0x00FF             # t9 = 000000FF
    bne     t9, $zero, lbl_80B56A08
    sb      t8, 0x0001(s0)             # 00000261
    sb      $zero, 0x0000(s0)          # 00000260
lbl_80B56A08:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f20
    sub.s   $f6, $f4, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x002C(s0)            # 0000028C
    lwc1    $f12, 0x0020(s0)           # 00000280
    lwc1    $f10, 0x0014(s0)           # 00000274
    mul.s   $f8, $f0, $f20
    lwc1    $f14, 0x0024(s0)           # 00000284
    add.s   $f18, $f10, $f12
    lwc1    $f4, 0x0018(s0)            # 00000278
    lwc1    $f16, 0x0028(s0)           # 00000288
    swc1    $f18, 0x0014(s0)           # 00000274
    lwc1    $f18, 0x002C(s0)           # 0000028C
    add.s   $f6, $f4, $f14
    sub.s   $f2, $f8, $f22
    lwc1    $f8, 0x001C(s0)            # 0000027C
    swc1    $f6, 0x0018(s0)            # 00000278
    add.s   $f4, $f12, $f18
    lwc1    $f6, 0x0030(s0)            # 00000290
    lwc1    $f18, 0x0004(s0)           # 00000264
    add.s   $f10, $f8, $f16
    swc1    $f4, 0x0020(s0)            # 00000280
    lwc1    $f4, 0x0008(s0)            # 00000268
    add.s   $f8, $f14, $f6
    swc1    $f10, 0x001C(s0)           # 0000027C
    swc1    $f2, 0x0034(s0)            # 00000294
    add.s   $f10, $f16, $f2
    swc1    $f8, 0x0024(s0)            # 00000284
    add.s   $f6, $f18, $f4
    swc1    $f10, 0x0028(s0)           # 00000288
    swc1    $f6, 0x0004(s0)            # 00000264
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80B56A90:
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x000A
    bne     $at, $zero, lbl_80B569E4
    addiu   s0, s0, 0x0038             # s0 = 00000298
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80B56AC0:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s7, 0x004C($sp)
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   s2, a2, 0x0260             # s2 = 00000260
    lw      a0, 0x0000(s7)             # 00000000
    or      s8, $zero, $zero           # s8 = 00000000
    jal     func_8007E2C0
    or      s1, a0, $zero              # s1 = 00000000
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f24                  # $f24 = 8.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f20                  # $f20 = 255.00
    or      s5, $zero, $zero           # s5 = 00000000
lbl_80B56B30:
    lbu     t6, 0x0000(s2)             # 00000260
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    beq     t6, $zero, lbl_80B56D5C
    addu    s4, s7, $at
    lui     s6, 0x0601                 # s6 = 06010000
    bne     s8, $zero, lbl_80B56B9C
    addiu   s6, s6, 0xFD50             # s6 = 0600FD50
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0xFD40             # s3 = 0600FD40
    lw      a0, 0x02D0(s1)             # 000002D0
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007DFBC
    addiu   s8, $zero, 0x0001          # s8 = 00000001
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(v0)             # 00000000
    sw      s3, 0x0004(v0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x643C                 # t1 = 643C0000
    ori     t1, t1, 0x1400             # t1 = 643C1400
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    lui     t0, 0xFB00                 # t0 = FB000000
    sw      t0, 0x0000(s0)             # 00000000
    sw      t1, 0x0004(s0)             # 00000004
lbl_80B56B9C:
    lbu     t2, 0x0001(s2)             # 00000261
    lui     $at, 0x4F80                # $at = 4F800000
    lui     t6, 0xFA00                 # t6 = FA000000
    mtc1    t2, $f4                    # $f4 = 0.00
    or      a3, $zero, $zero           # a3 = 00000000
    bgez    t2, lbl_80B56BC4
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80B56BC4:
    lbu     t3, 0x0002(s2)             # 00000262
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t3, $f10                   # $f10 = 0.00
    bgez    t3, lbl_80B56BE4
    cvt.s.w $f16, $f10
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18
lbl_80B56BE4:
    div.s   $f4, $f20, $f16
    lui     $at, 0xAA82                # $at = AA820000
    ori     $at, $at, 0x5A00           # $at = AA825A00
    mul.s   $f8, $f6, $f4
    trunc.w.s $f10, $f8
    mfc1    a0, $f10
    nop
    sll     a0, a0, 16
    sra     a0, a0, 16
    lw      s0, 0x02D0(s1)             # 000002D0
    andi    t7, a0, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = AA825A00
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xE700                 # t0 = E7000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    lwc1    $f12, 0x0014(s2)           # 00000274
    lwc1    $f14, 0x0018(s2)           # 00000278
    jal     func_800AA7F4
    lw      a2, 0x001C(s2)             # 0000027C
    jal     func_800ABE54
    or      a0, s4, $zero              # a0 = 00000000
    lwc1    $f12, 0x0004(s2)           # 00000264
    mfc1    a2, $f22
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s3, 0x0008             # t1 = 0600FD48
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s3)             # 0600FD40
    jal     func_800AB900
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s3)             # 0600FD44
    lbu     t3, 0x0001(s2)             # 00000261
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    mtc1    t3, $f18                   # $f18 = 0.00
    lui     a0, %hi(var_80B5BC60)      # a0 = 80B60000
    bgez    t3, lbl_80B56CB8
    cvt.s.w $f16, $f18
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f16, $f16, $f6
lbl_80B56CB8:
    lbu     t4, 0x0002(s2)             # 00000262
    lui     $at, 0x4F80                # $at = 4F800000
    lui     t3, 0x8012                 # t3 = 80120000
    mtc1    t4, $f4                    # $f4 = 0.00
    bgez    t4, lbl_80B56CDC
    cvt.s.w $f8, $f4
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_80B56CDC:
    div.s   $f18, $f24, $f8
    mul.s   $f6, $f16, $f18
    trunc.w.s $f4, $f6
    mfc1    a2, $f4
    nop
    sll     a2, a2, 16
    sra     a2, a2, 16
    lw      s0, 0x02D0(s1)             # 000002D0
    sll     t8, a2,  2
    addu    a0, a0, t8
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, %lo(var_80B5BC60)(a0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t0, a0,  4
    srl     t1, t0, 28
    sll     t2, t1,  2
    addu    t3, t3, t2
    lw      t3, 0x0C38(t3)             # 80120C38
    and     t9, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t9, t3
    addu    t5, t4, $at
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
lbl_80B56D5C:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16
    sra     s5, s5, 16
    slti    $at, s5, 0x000A
    bne     $at, $zero, lbl_80B56B30
    addiu   s2, s2, 0x0038             # s2 = 00000298
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
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
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_80B56DB0:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sw      s7, 0x0060($sp)
    sw      s6, 0x005C($sp)
    sw      s5, 0x0058($sp)
    sw      s4, 0x0054($sp)
    sw      s1, 0x0048($sp)
    mtc1    a2, $f24                   # $f24 = 0.00
    mtc1    a3, $f26                   # $f26 = 0.00
    or      s1, a0, $zero              # s1 = 00000000
    addiu   s4, $sp, 0x0094            # s4 = FFFFFFF4
    andi    s5, a1, 0x00FF             # s5 = 00000000
    addiu   s6, $sp, 0x0088            # s6 = FFFFFFE8
    addiu   s7, $sp, 0x007C            # s7 = FFFFFFDC
    sw      $ra, 0x0064($sp)
    sw      s3, 0x0050($sp)
    sw      s2, 0x004C($sp)
    sw      s0, 0x0044($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x00A4($sp)
    lui     t6, %hi(var_80B5BC80)      # t6 = 80B60000
    addiu   t6, t6, %lo(var_80B5BC80)  # t6 = 80B5BC80
    lw      t8, 0x0000(t6)             # 80B5BC80
    lui     t9, %hi(var_80B5BC8C)      # t9 = 80B60000
    addiu   t9, t9, %lo(var_80B5BC8C)  # t9 = 80B5BC8C
    sw      t8, 0x0000(s4)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 80B5BC84
    lui     t2, %hi(var_80B5BC98)      # t2 = 80B60000
    addiu   t2, t2, %lo(var_80B5BC98)  # t2 = 80B5BC98
    sw      t7, 0x0004(s4)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 80B5BC88
    sw      t8, 0x0008(s4)             # FFFFFFFC
    lw      t1, 0x0000(t9)             # 80B5BC8C
    sw      t1, 0x0000(s6)             # FFFFFFE8
    lw      t0, 0x0004(t9)             # 80B5BC90
    sw      t0, 0x0004(s6)             # FFFFFFEC
    lw      t1, 0x0008(t9)             # 80B5BC94
    sw      t1, 0x0008(s6)             # FFFFFFF0
    lw      t4, 0x0000(t2)             # 80B5BC98
    sw      t4, 0x0000(s7)             # FFFFFFDC
    lw      t3, 0x0004(t2)             # 80B5BC9C
    sw      t3, 0x0004(s7)             # FFFFFFE0
    lw      t4, 0x0008(t2)             # 80B5BCA0
    sw      t4, 0x0008(s7)             # FFFFFFE4
    lw      t6, 0x0024(s1)             # 00000024
    sw      t6, 0x0000(s4)             # FFFFFFF4
    lw      t5, 0x0028(s1)             # 00000028
    sw      t5, 0x0004(s4)             # FFFFFFF8
    lw      t6, 0x002C(s1)             # 0000002C
    sw      t6, 0x0008(s4)             # FFFFFFFC
    lwc1    $f4, 0x0080(s1)            # 00000080
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0098($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f10                  # $f10 = 65536.00
    sub.s   $f8, $f0, $f6
    lw      v0, 0x00B0($sp)
    lui     t8, 0x0001                 # t8 = 00010000
    lwc1    $f22, 0x00B8($sp)
    mul.s   $f16, $f8, $f10
    lwc1    $f20, 0x00B4($sp)
    or      s2, v0, $zero              # s2 = 00000000
    trunc.w.s $f18, $f16
    mfc1    s0, $f18
    nop
    sll     s0, s0, 16
    bltz    v0, lbl_80B56F88
    sra     s0, s0, 16
    div     $zero, t8, v0
    mflo    s3
    sll     s3, s3, 16
    sra     s3, s3, 16
    bne     v0, $zero, lbl_80B56EEC
    nop
    break   # 0x01C00
lbl_80B56EEC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_80B56F04
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_80B56F04
    nop
    break   # 0x01800
lbl_80B56F04:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f6, $f0, $f22
    lwc1    $f4, 0x0080($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f8, $f4, $f6
    jal     func_800636C4              # sins?
    swc1    $f8, 0x0080($sp)
    mul.s   $f10, $f0, $f20
    lwc1    $f16, 0x0024(s1)           # 00000024
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f18, $f10, $f16
    jal     func_80063684              # coss?
    swc1    $f18, 0x0094($sp)
    mul.s   $f4, $f0, $f20
    lwc1    $f6, 0x002C(s1)            # 0000002C
    swc1    $f26, 0x0018($sp)
    swc1    $f24, 0x0014($sp)
    sw      s5, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFF4
    add.s   $f8, $f4, $f6
    or      a2, s6, $zero              # a2 = FFFFFFE8
    or      a3, s7, $zero              # a3 = FFFFFFDC
    jal     func_80B56910
    swc1    $f8, 0x009C($sp)
    addu    s0, s0, s3
    sll     s0, s0, 16
    addiu   s2, s2, 0xFFFF             # s2 = FFFFFFFF
    bgez    s2, lbl_80B56F04
    sra     s0, s0, 16
lbl_80B56F88:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    lw      s0, 0x0044($sp)
    lw      s1, 0x0048($sp)
    lw      s2, 0x004C($sp)
    lw      s3, 0x0050($sp)
    lw      s4, 0x0054($sp)
    lw      s5, 0x0058($sp)
    lw      s6, 0x005C($sp)
    lw      s7, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_80B56FC8:
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    $at, $f2                   # $f2 = 1.00
    sw      $ra, 0x001C($sp)
    lwc1    $f0, 0x0094(a0)            # 00000094
    lwc1    $f4, 0x0090(a0)            # 00000090
    sw      a2, 0x0584(a0)             # 00000584
    abs.s   $f0, $f0
    add.s   $f6, $f4, $f2
    add.s   $f8, $f0, $f2
    mfc1    a3, $f6
    jal     func_80022BD4
    swc1    $f8, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B5700C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sll     a0, v0, 16
    sra     a0, a0, 16
    lbu     v1, 0x01FD(a2)             # 000001FD
    or      a1, v0, $zero              # a1 = 00000000
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v1, $at, lbl_80B5705C
    or      v0, a0, $zero              # v0 = 00000000
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v1, $at, lbl_80B5705C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_80B5705C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_80B57078
lbl_80B5705C:
    sll     t6, a1, 16
    sra     t7, t6, 16
    beql    t7, v1, lbl_80B5707C
    sb      a0, 0x01FD(a2)             # 000001FD
    lbu     t8, 0x01FC(a2)             # 000001FC
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01FC(a2)             # 000001FC
lbl_80B57078:
    sb      a0, 0x01FD(a2)             # 000001FD
lbl_80B5707C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5708C:
    lh      t6, 0x001C(a0)             # 0000001C
    andi    t7, t6, 0xFC00             # t7 = 00000000
    sra     t8, t7, 10
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sltiu   $at, t9, 0x000B
    beq     $at, $zero, lbl_80B570FC
    sll     t9, t9,  2
    lui     $at, %hi(var_80B5C128)     # $at = 80B60000
    addu    $at, $at, t9
    lw      t9, %lo(var_80B5C128)($at)
    jr      t9
    nop
var_80B570BC:
    jr      $ra
    addiu   v0, $zero, 0x3069          # v0 = 00003069
var_80B570C4:
    jr      $ra
    addiu   v0, $zero, 0x306A          # v0 = 0000306A
var_80B570CC:
    jr      $ra
    addiu   v0, $zero, 0x306B          # v0 = 0000306B
var_80B570D4:
    jr      $ra
    addiu   v0, $zero, 0x306C          # v0 = 0000306C
var_80B570DC:
    jr      $ra
    addiu   v0, $zero, 0x306D          # v0 = 0000306D
var_80B570E4:
    jr      $ra
    addiu   v0, $zero, 0x306E          # v0 = 0000306E
var_80B570EC:
    jr      $ra
    addiu   v0, $zero, 0x306F          # v0 = 0000306F
var_80B570F4:
    jr      $ra
    addiu   v0, $zero, 0x3070          # v0 = 00003070
lbl_80B570FC:
    addiu   v0, $zero, 0x3052          # v0 = 00003052
    jr      $ra
    nop


func_80B57108:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a0, 0x0000($sp)
    lhu     t6, 0x0F1A(v0)             # 8011B4EA
    lui     t9, 0x8010                 # t9 = 80100000
    lui     t1, 0x8010                 # t1 = 80100000
    andi    t7, t6, 0x4000             # t7 = 00000000
    beql    t7, $zero, lbl_80B57138
    lw      t8, 0x00A0(v0)             # 8011A670
    jr      $ra
    addiu   v0, $zero, 0x3013          # v0 = 00003013
lbl_80B57134:
    lw      t8, 0x00A0(v0)             # 000030B3
lbl_80B57138:
    lw      t9, -0x737C(t9)            # 800F8C84
    lbu     t1, -0x733B(t1)            # 800F8CC5
    lui     t4, 0x8010                 # t4 = 80100000
    and     t0, t8, t9
    srav    t2, t0, t1
    sll     t3, t2,  1
    addu    t4, t4, t3
    lhu     t4, -0x732C(t4)            # 800F8CD4
    slti    $at, t4, 0x0014
    bnel    $at, $zero, lbl_80B57188
    addiu   v0, $zero, 0x3011          # v0 = 00003011
    lb      v0, 0x0200(a1)             # 00000200
    slti    $at, v0, 0x0008
    bne     $at, $zero, lbl_80B57184
    slti    $at, v0, 0x000C
    beql    $at, $zero, lbl_80B57188
    addiu   v0, $zero, 0x3011          # v0 = 00003011
    jr      $ra
    addiu   v0, $zero, 0x3012          # v0 = 00003012
lbl_80B57184:
    addiu   v0, $zero, 0x3011          # v0 = 00003011
lbl_80B57188:
    jr      $ra
    nop


func_80B57190:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B571C8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80B571D0
    nop
    b       lbl_80B57278
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B571C8:
    b       lbl_80B57278
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80B571D0:
    jal     func_800D6110
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B57274
    lw      a3, 0x001C($sp)
    lhu     t6, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x3012         # $at = 00003012
    lui     t7, %hi(func_80B5AD04)     # t7 = 80B60000
    bne     t6, $at, lbl_80B5726C
    addiu   t7, t7, %lo(func_80B5AD04) # t7 = 80B5AD04
    sw      t7, 0x0180(a3)             # 00000180
    lui     t8, 0x8012                 # t8 = 80120000
    lui     t9, 0x8010                 # t9 = 80100000
    lw      t9, -0x737C(t9)            # 800F8C84
    lw      t8, -0x5990(t8)            # 8011A670
    lui     t1, 0x8010                 # t1 = 80100000
    lbu     t1, -0x733B(t1)            # 800F8CC5
    and     t0, t8, t9
    lui     t4, 0x8010                 # t4 = 80100000
    srav    t2, t0, t1
    sll     t3, t2,  1
    addu    t4, t4, t3
    lhu     t4, -0x732C(t4)            # 800F8CD4
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    addiu   a2, $zero, 0x0033          # a2 = 00000033
    bne     t4, $at, lbl_80B57240
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_80B57240
    addiu   a2, $zero, 0x0034          # a2 = 00000034
lbl_80B57240:
    jal     func_80B56FC8
    lw      a1, 0x0018($sp)
    jal     func_800D6218
    lw      a0, 0x0018($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t5, 0x0F1A(v1)             # 8011B4EA
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    ori     t6, t5, 0x4000             # t6 = 00004000
    b       lbl_80B57278
    sh      t6, 0x0F1A(v1)             # 8011B4EA
lbl_80B5726C:
    b       lbl_80B57278
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80B57274:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57278:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B57288:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x598C(t7)            # 8011A674
    lw      t6, -0x73C4(t6)            # 800F8C3C
    addiu   v1, $zero, 0x300A          # v1 = 0000300A
    and     t8, t6, t7
    beq     t8, $zero, lbl_80B572B8
    nop
    b       lbl_80B572B8
    addiu   v1, $zero, 0x3027          # v1 = 00003027
lbl_80B572B8:
    andi    v0, v1, 0xFFFF             # v0 = 00003027
    jr      $ra
    nop


func_80B572C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      a0, 0x0018($sp)
    sw      a2, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B57304
    lw      a2, 0x001C($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80B5733C
    lw      a0, 0x0018($sp)
    b       lbl_80B573CC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57304:
    lhu     t6, 0x010E(a2)             # 0000010E
    addiu   $at, $zero, 0x300B         # $at = 0000300B
    lui     a0, 0x8012                 # a0 = 80120000
    bne     t6, $at, lbl_80B57334
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lhu     v1, 0x0F14(a0)             # 8011B4E4
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    andi    t7, v1, 0x0800             # t7 = 00000000
    bne     t7, $zero, lbl_80B57334
    ori     t8, v1, 0x0800             # t8 = 00000800
    b       lbl_80B573CC
    sh      t8, 0x0F14(a0)             # 8011B4E4
lbl_80B57334:
    b       lbl_80B573CC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B5733C:
    jal     func_800D6110
    sw      a2, 0x001C($sp)
    beq     v0, $zero, lbl_80B573C8
    lw      a2, 0x001C($sp)
    lhu     t9, 0x010E(a2)             # 0000010E
    addiu   $at, $zero, 0x300A         # $at = 0000300A
    lw      t0, 0x0018($sp)
    bne     t9, $at, lbl_80B573C0
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, t0
    lbu     t1, 0x04BD(t1)             # 000104BD
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    bne     t1, $zero, lbl_80B573B0
    addiu   t9, $zero, 0x300D          # t9 = 0000300D
    lui     t3, 0x8010                 # t3 = 80100000
    lw      t3, -0x7378(t3)            # 800F8C88
    lw      t2, 0x00A0(a0)             # 8011A670
    lui     t5, 0x8010                 # t5 = 80100000
    lbu     t5, -0x733A(t5)            # 800F8CC6
    and     t4, t2, t3
    addiu   t8, $zero, 0x300C          # t8 = 0000300C
    srav    t6, t4, t5
    beq     t6, $zero, lbl_80B573A8
    addiu   t7, $zero, 0x300B          # t7 = 0000300B
    b       lbl_80B573B4
    sh      t7, 0x010E(a2)             # 0000010E
lbl_80B573A8:
    b       lbl_80B573B4
    sh      t8, 0x010E(a2)             # 0000010E
lbl_80B573B0:
    sh      t9, 0x010E(a2)             # 0000010E
lbl_80B573B4:
    lw      a0, 0x0018($sp)
    jal     func_800DCE80
    lhu     a1, 0x010E(a2)             # 0000010E
lbl_80B573C0:
    b       lbl_80B573CC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B573C8:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B573CC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B573DC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x73C4(t6)            # 800F8C3C
    lw      t7, 0x00A4(v0)             # 8011A674
    and     t8, t6, t7
    beql    t8, $zero, lbl_80B57410
    lhu     t9, 0x0ED8(v0)             # 8011B4A8
    jr      $ra
    addiu   v0, $zero, 0x3027          # v0 = 00003027
lbl_80B5740C:
    lhu     t9, 0x0ED8(v0)             # 00003EFF
lbl_80B57410:
    addiu   v1, $zero, 0x3009          # v1 = 00003009
    andi    t0, t9, 0x0008             # t0 = 00000000
    beq     t0, $zero, lbl_80B57428
    nop
    b       lbl_80B57428
    addiu   v1, $zero, 0x3026          # v1 = 00003026
lbl_80B57428:
    andi    v0, v1, 0xFFFF             # v0 = 00003026
    jr      $ra
    nop


func_80B57434:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B57464
    lw      $ra, 0x0014($sp)
    b       lbl_80B57468
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B57464:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57468:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B57470:
    sw      a0, 0x0000($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    lui     v1, 0x8010                 # v1 = 80100000
    addiu   v1, v1, 0x8BF0             # v1 = 800F8BF0
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    sw      a1, 0x0004($sp)
    lw      v0, 0x00A4(a0)             # 8011A674
    lw      t6, 0x0004(v1)             # 800F8BF4
    and     t7, t6, v0
    beql    t7, $zero, lbl_80B574B4
    lw      t9, 0x004C(v1)             # 800F8C3C
    lw      t8, 0x0004(a0)             # 8011A5D4
    bnel    t8, $zero, lbl_80B574B4
    lw      t9, 0x004C(v1)             # 800F8C3C
    jr      $ra
    addiu   v0, $zero, 0x3043          # v0 = 00003043
lbl_80B574B0:
    lw      t9, 0x004C(v1)             # 800F8C3C
lbl_80B574B4:
    and     t0, t9, v0
    beql    t0, $zero, lbl_80B574CC
    lhu     t1, 0x0ED8(a0)             # 8011B4A8
    jr      $ra
    addiu   v0, $zero, 0x3027          # v0 = 00003027
lbl_80B574C8:
    lhu     t1, 0x0ED8(a0)             # 8011B4A8
lbl_80B574CC:
    andi    t2, t1, 0x0008             # t2 = 00000000
    beql    t2, $zero, lbl_80B574E4
    lhu     t3, 0x0F14(a0)             # 8011B4E4
    b       lbl_80B57500
    addiu   v1, $zero, 0x3021          # v1 = 00003021
    lhu     t3, 0x0F14(a0)             # 8011B4E4
lbl_80B574E4:
    addiu   v0, $zero, 0x3008          # v0 = 00003008
    andi    t4, t3, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_80B574FC
    nop
    b       lbl_80B574FC
    addiu   v0, $zero, 0x302A          # v0 = 0000302A
lbl_80B574FC:
    or      v1, v0, $zero              # v1 = 0000302A
lbl_80B57500:
    andi    v0, v1, 0xFFFF             # v0 = 0000302A
    jr      $ra
    nop


func_80B5750C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_800DD464
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B57558
    lw      t6, 0x001C($sp)
    lhu     t7, 0x010E(t6)             # 0000010E
    addiu   $at, $zero, 0x3008         # $at = 00003008
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t7, $at, lbl_80B57550
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0F14(v0)             # 8011B4E4
    ori     t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x0F14(v0)             # 8011B4E4
lbl_80B57550:
    b       lbl_80B5755C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B57558:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5755C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5756C:
    sw      a0, 0x0000($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    lui     v1, 0x8010                 # v1 = 80100000
    addiu   v1, v1, 0x8BF0             # v1 = 800F8BF0
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    sw      a1, 0x0004($sp)
    lw      v0, 0x00A4(a0)             # 8011A674
    lw      t6, 0x0004(v1)             # 800F8BF4
    and     t7, t6, v0
    beql    t7, $zero, lbl_80B575B0
    lw      t9, 0x004C(v1)             # 800F8C3C
    lw      t8, 0x0004(a0)             # 8011A5D4
    bnel    t8, $zero, lbl_80B575B0
    lw      t9, 0x004C(v1)             # 800F8C3C
    jr      $ra
    addiu   v0, $zero, 0x3043          # v0 = 00003043
lbl_80B575AC:
    lw      t9, 0x004C(v1)             # 800F8C3C
lbl_80B575B0:
    and     t0, t9, v0
    beql    t0, $zero, lbl_80B575C8
    lhu     t1, 0x0F16(a0)             # 8011B4E6
    jr      $ra
    addiu   v0, $zero, 0x3027          # v0 = 00003027
lbl_80B575C4:
    lhu     t1, 0x0F16(a0)             # 8011B4E6
lbl_80B575C8:
    addiu   v1, $zero, 0x3014          # v1 = 00003014
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_80B575E0
    nop
    b       lbl_80B575E0
    addiu   v1, $zero, 0x3015          # v1 = 00003015
lbl_80B575E0:
    andi    v0, v1, 0xFFFF             # v0 = 00003015
    jr      $ra
    nop


func_80B575EC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_800DD464
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B57638
    lw      t6, 0x001C($sp)
    lhu     t7, 0x010E(t6)             # 0000010E
    addiu   $at, $zero, 0x3014         # $at = 00003014
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t7, $at, lbl_80B57630
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0F16(v0)             # 8011B4E6
    ori     t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x0F16(v0)             # 8011B4E6
lbl_80B57630:
    b       lbl_80B5763C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B57638:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5763C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5764C:
    sw      a0, 0x0000($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    lui     v1, 0x8010                 # v1 = 80100000
    addiu   v1, v1, 0x8BF0             # v1 = 800F8BF0
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    sw      a1, 0x0004($sp)
    lw      v0, 0x00A4(a0)             # 8011A674
    lw      t6, 0x0004(v1)             # 800F8BF4
    and     t7, t6, v0
    beql    t7, $zero, lbl_80B57690
    lw      t9, 0x004C(v1)             # 800F8C3C
    lw      t8, 0x0004(a0)             # 8011A5D4
    bnel    t8, $zero, lbl_80B57690
    lw      t9, 0x004C(v1)             # 800F8C3C
    jr      $ra
    addiu   v0, $zero, 0x3043          # v0 = 00003043
lbl_80B5768C:
    lw      t9, 0x004C(v1)             # 800F8C3C
lbl_80B57690:
    and     t0, t9, v0
    beql    t0, $zero, lbl_80B576A8
    lhu     t1, 0x0F16(a0)             # 8011B4E6
    jr      $ra
    addiu   v0, $zero, 0x3067          # v0 = 00003067
lbl_80B576A4:
    lhu     t1, 0x0F16(a0)             # 8011B4E6
lbl_80B576A8:
    addiu   v1, $zero, 0x3016          # v1 = 00003016
    andi    t2, t1, 0x0010             # t2 = 00000000
    beq     t2, $zero, lbl_80B576C0
    nop
    b       lbl_80B576C0
    addiu   v1, $zero, 0x3017          # v1 = 00003017
lbl_80B576C0:
    andi    v0, v1, 0xFFFF             # v0 = 00003017
    jr      $ra
    nop


func_80B576CC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_800DD464
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B57718
    lw      t6, 0x001C($sp)
    lhu     t7, 0x010E(t6)             # 0000010E
    addiu   $at, $zero, 0x3016         # $at = 00003016
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t7, $at, lbl_80B57710
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0F16(v0)             # 8011B4E6
    ori     t9, t8, 0x0010             # t9 = 00000010
    sh      t9, 0x0F16(v0)             # 8011B4E6
lbl_80B57710:
    b       lbl_80B5771C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B57718:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5771C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5772C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    lui     a1, 0x8010                 # a1 = 80100000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    addiu   a1, a1, 0x8BF0             # a1 = 800F8BF0
    sw      $ra, 0x0014($sp)
    lw      v0, 0x00A4(v1)             # 8011A674
    lw      t6, 0x0004(a1)             # 800F8BF4
    and     t7, t6, v0
    beql    t7, $zero, lbl_80B57774
    lw      t9, 0x004C(a1)             # 800F8C3C
    lw      t8, 0x0004(v1)             # 8011A5D4
    bnel    t8, $zero, lbl_80B57774
    lw      t9, 0x004C(a1)             # 800F8C3C
    b       lbl_80B577F8
    addiu   v0, $zero, 0x3043          # v0 = 00003043
    lw      t9, 0x004C(a1)             # 800F8C3C
lbl_80B57774:
    lui     t2, 0x8010                 # t2 = 80100000
    lui     t4, 0x8010                 # t4 = 80100000
    and     t0, t9, v0
    beql    t0, $zero, lbl_80B57794
    lw      t1, 0x00A0(v1)             # 8011A670
    b       lbl_80B577F8
    addiu   v0, $zero, 0x3027          # v0 = 00003027
    lw      t1, 0x00A0(v1)             # 8011A670
lbl_80B57794:
    lw      t2, -0x7378(t2)            # 800F8C88
    lbu     t4, -0x733A(t4)            # 800F8CC6
    and     t3, t1, t2
    srav    t5, t3, t4
    beq     t5, $zero, lbl_80B577B4
    nop
    b       lbl_80B577F4
    addiu   v1, $zero, 0x302C          # v1 = 0000302C
lbl_80B577B4:
    jal     func_8002049C
    addiu   a1, $zero, 0x001B          # a1 = 0000001B
    lui     v1, 0x8012                 # v1 = 80120000
    bne     v0, $zero, lbl_80B577D0
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    b       lbl_80B577F0
    addiu   v0, $zero, 0x3017          # v0 = 00003017
lbl_80B577D0:
    lhu     t6, 0x0F16(v1)             # 8011B4E6
    addiu   v1, $zero, 0x3018          # v1 = 00003018
    andi    t7, t6, 0x0100             # t7 = 00000000
    beq     t7, $zero, lbl_80B577EC
    nop
    b       lbl_80B577EC
    addiu   v1, $zero, 0x3019          # v1 = 00003019
lbl_80B577EC:
    or      v0, v1, $zero              # v0 = 00003019
lbl_80B577F0:
    or      v1, v0, $zero              # v1 = 00003019
lbl_80B577F4:
    andi    v0, v1, 0xFFFF             # v0 = 00003019
lbl_80B577F8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B57808:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_800DD464
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B57854
    lw      t6, 0x001C($sp)
    lhu     t7, 0x010E(t6)             # 0000010E
    addiu   $at, $zero, 0x3018         # $at = 00003018
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t7, $at, lbl_80B5784C
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0F16(v0)             # 8011B4E6
    ori     t9, t8, 0x0100             # t9 = 00000100
    sh      t9, 0x0F16(v0)             # 8011B4E6
lbl_80B5784C:
    b       lbl_80B57858
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B57854:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57858:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B57868:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      a0, 0x0000($sp)
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, -0x740C(v0)            # 800F8BF4
    lw      t6, 0x00A4(v1)             # 8011A674
    lui     t0, 0x8010                 # t0 = 80100000
    and     t7, v0, t6
    beq     t7, $zero, lbl_80B578B8
    nop
    lhu     t8, 0x0F18(v1)             # 8011B4E8
    addiu   v1, $zero, 0x3041          # v1 = 00003041
    andi    t9, t8, 0x8000             # t9 = 00000000
    beq     t9, $zero, lbl_80B578B0
    nop
    addiu   v1, $zero, 0x3042          # v1 = 00003042
    jr      $ra
    andi    v0, v1, 0xFFFF             # v0 = 00003042
lbl_80B578B0:
    jr      $ra
    andi    v0, v1, 0xFFFF             # v0 = 00003042
lbl_80B578B8:
    lbu     t0, -0x733E(t0)            # 800F8CC2
    lhu     t2, 0x009C(v1)             # 000030DE
    sllv    t1, v0, t0
    and     t3, t1, t2
    beql    t3, $zero, lbl_80B578FC
    lhu     t6, 0x0F18(v1)             # 00003F5A
    lhu     t4, 0x0F18(v1)             # 00003F5A
    addiu   v1, $zero, 0x3037          # v1 = 00003037
    andi    t5, t4, 0x4000             # t5 = 00000000
    beq     t5, $zero, lbl_80B578F0
    nop
    addiu   v1, $zero, 0x3038          # v1 = 00003038
    jr      $ra
    andi    v0, v1, 0xFFFF             # v0 = 00003038
lbl_80B578F0:
    jr      $ra
    andi    v0, v1, 0xFFFF             # v0 = 00003038
lbl_80B578F8:
    lhu     t6, 0x0F18(v1)             # 00003F50
lbl_80B578FC:
    addiu   v0, $zero, 0x3030          # v0 = 00003030
    andi    t7, t6, 0x1000             # t7 = 00000000
    beq     t7, $zero, lbl_80B5793C
    nop
    sb      $zero, 0x01FC(a1)          # 000001FC
    sb      $zero, 0x01FD(a1)          # 000001FD
    lhu     t8, 0x0F18(v1)             # 00003F50
    addiu   v1, $zero, 0x3032          # v1 = 00003032
    andi    t9, t8, 0x0400             # t9 = 00000000
    beq     t9, $zero, lbl_80B57934
    nop
    addiu   v1, $zero, 0x3033          # v1 = 00003033
    jr      $ra
    andi    v0, v1, 0xFFFF             # v0 = 00003033
lbl_80B57934:
    jr      $ra
    andi    v0, v1, 0xFFFF             # v0 = 00003033
lbl_80B5793C:
    jr      $ra
    nop


func_80B57944:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x0018($sp)
    jal     func_80B5700C
    sw      a3, 0x001C($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B57990
    lw      a3, 0x001C($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80B579F8
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80B57AE4
    lw      a0, 0x0018($sp)
    b       lbl_80B57B4C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57990:
    lhu     v0, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x3036         # $at = 00003036
    or      a0, a3, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80B579B8
    lw      a1, 0x0018($sp)
    addiu   $at, $zero, 0x3037         # $at = 00003037
    beq     v0, $at, lbl_80B579DC
    nop
    b       lbl_80B57B4C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B579B8:
    addiu   a2, $zero, 0x002C          # a2 = 0000002C
    jal     func_80B56FC8
    sw      a3, 0x001C($sp)
    lw      a3, 0x001C($sp)
    lui     t6, %hi(func_80B5AD04)     # t6 = 80B60000
    addiu   t6, t6, %lo(func_80B5AD04) # t6 = 80B5AD04
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    b       lbl_80B57B4C
    sw      t6, 0x0180(a3)             # 00000180
lbl_80B579DC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x0F18(v0)             # 8011B4E8
    ori     t8, t7, 0x4000             # t8 = 00004000
    sh      t8, 0x0F18(v0)             # 8011B4E8
    b       lbl_80B57B4C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B579F8:
    jal     func_800D6110
    sw      a3, 0x001C($sp)
    beq     v0, $zero, lbl_80B57B48
    lw      a3, 0x001C($sp)
    lhu     t9, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x3034         # $at = 00003034
    lw      t0, 0x0018($sp)
    bne     t9, $at, lbl_80B57ADC
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, t0
    lbu     t1, 0x04BD(t1)             # 000104BD
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    bnel    t1, $zero, lbl_80B57A88
    lhu     t6, 0x0F18(v0)             # 8011B4E8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t2, 0x0F18(v0)             # 8011B4E8
    addiu   t5, $zero, 0x3035          # t5 = 00003035
    addiu   t4, $zero, 0x3033          # t4 = 00003033
    andi    t3, t2, 0x0800             # t3 = 00000000
    beq     t3, $zero, lbl_80B57A5C
    addiu   a0, $zero, 0x39EB          # a0 = 000039EB
    b       lbl_80B57A60
    sh      t4, 0x010E(a3)             # 0000010E
lbl_80B57A5C:
    sh      t5, 0x010E(a3)             # 0000010E
lbl_80B57A60:
    lhu     a1, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x3035         # $at = 00003035
    bnel    a1, $at, lbl_80B57ACC
    lw      a0, 0x0018($sp)
    jal     func_800C9884
    sw      a3, 0x001C($sp)
    lw      a3, 0x001C($sp)
    b       lbl_80B57AC8
    lhu     a1, 0x010E(a3)             # 0000010E
    lhu     t6, 0x0F18(v0)             # 00000F18
lbl_80B57A88:
    addiu   t9, $zero, 0x3033          # t9 = 00003033
    addiu   t8, $zero, 0x3036          # t8 = 00003036
    andi    t7, t6, 0x0800             # t7 = 00000000
    beq     t7, $zero, lbl_80B57AA4
    addiu   a0, $zero, 0x39EB          # a0 = 000039EB
    b       lbl_80B57AA8
    sh      t8, 0x010E(a3)             # 0000010E
lbl_80B57AA4:
    sh      t9, 0x010E(a3)             # 0000010E
lbl_80B57AA8:
    lhu     a1, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x3036         # $at = 00003036
    bnel    a1, $at, lbl_80B57ACC
    lw      a0, 0x0018($sp)
    jal     func_800C9884
    sw      a3, 0x001C($sp)
    lw      a3, 0x001C($sp)
    lhu     a1, 0x010E(a3)             # 0000010E
lbl_80B57AC8:
    lw      a0, 0x0018($sp)
lbl_80B57ACC:
    jal     func_800DCE80
    sw      a3, 0x001C($sp)
    lw      a3, 0x001C($sp)
    sb      $zero, 0x01FC(a3)          # 000001FC
lbl_80B57ADC:
    b       lbl_80B57B4C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57AE4:
    jal     func_800D6110
    sw      a3, 0x001C($sp)
    beq     v0, $zero, lbl_80B57B48
    lw      a3, 0x001C($sp)
    lhu     v0, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x3032         # $at = 00003032
    addiu   t2, $zero, 0x3034          # t2 = 00003034
    beq     v0, $at, lbl_80B57B2C
    andi    a1, t2, 0xFFFF             # a1 = 00003034
    addiu   $at, $zero, 0x3033         # $at = 00003033
    beq     v0, $at, lbl_80B57B2C
    addiu   $at, $zero, 0x3035         # $at = 00003035
    bne     v0, $at, lbl_80B57B40
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x0F18(v0)             # 8011B4E8
    ori     t1, t0, 0x0800             # t1 = 00000800
    sh      t1, 0x0F18(v0)             # 8011B4E8
lbl_80B57B2C:
    sh      t2, 0x010E(a3)             # 0000010E
    jal     func_800DCE80
    lw      a0, 0x0018($sp)
    b       lbl_80B57B4C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57B40:
    b       lbl_80B57B4C
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80B57B48:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57B4C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B57B5C:
    sw      a1, 0x0004($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lbu     t6, 0x003E(a1)             # 8011A60E
    lw      v1, 0x1C44(a0)             # 00001C44
    addiu   t7, $zero, 0x000F          # t7 = 0000000F
    beq     t6, $zero, lbl_80B57B88
    lui     t8, 0x8010                 # t8 = 80100000
    sb      t7, 0x0683(v1)             # 00000683
    jr      $ra
    addiu   v0, $zero, 0x305E          # v0 = 0000305E
lbl_80B57B88:
    lbu     t8, -0x709F(t8)            # 800F8F61
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    addu    t9, a1, t8
    lbu     v0, 0x0074(t9)             # 00000074
    slti    $at, v0, 0x0037
    bnel    $at, $zero, lbl_80B57BB4
    slti    $at, v0, 0x0034
    sb      t0, 0x0683(v1)             # 00000683
    jr      $ra
    addiu   v0, $zero, 0x305E          # v0 = 0000305E
lbl_80B57BB0:
    slti    $at, v0, 0x0034
lbl_80B57BB4:
    bne     $at, $zero, lbl_80B57BCC
    addiu   t2, $zero, 0x000B          # t2 = 0000000B
    addiu   t1, $zero, 0x000E          # t1 = 0000000E
    sb      t1, 0x0683(v1)             # 00000683
    jr      $ra
    addiu   v0, $zero, 0x3058          # v0 = 00003058
lbl_80B57BCC:
    sb      t2, 0x0683(v1)             # 00000683
    addiu   v0, $zero, 0x3053          # v0 = 00003053
    jr      $ra
    nop


func_80B57BDC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lbu     t6, 0x01FD(a3)             # 000001FD
    sw      a3, 0x002C($sp)
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x0028($sp)
    jal     func_80B5700C
    sb      t6, 0x0023($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B57C38
    lw      a3, 0x002C($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80B57C90
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80B57D1C
    lw      a0, 0x0028($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80B57D9C
    lw      a0, 0x0028($sp)
    b       lbl_80B57DE4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57C38:
    lhu     t7, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x305E         # $at = 0000305E
    lui     t8, 0x8012                 # t8 = 80120000
    bne     t7, $at, lbl_80B57C88
    nop
    lbu     t8, -0x59F2(t8)            # 8011A60E
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x0028($sp)
    bne     t8, $zero, lbl_80B57C80
    addiu   a2, $zero, 0x0057          # a2 = 00000057
    jal     func_80B56FC8
    sw      a3, 0x002C($sp)
    lw      a3, 0x002C($sp)
    lui     t9, %hi(func_80B5AD04)     # t9 = 80B60000
    addiu   t9, t9, %lo(func_80B5AD04) # t9 = 80B5AD04
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    b       lbl_80B57DE4
    sw      t9, 0x0180(a3)             # 00000180
lbl_80B57C80:
    b       lbl_80B57DE4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B57C88:
    b       lbl_80B57DE4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B57C90:
    lhu     v0, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x3054         # $at = 00003054
    beq     v0, $at, lbl_80B57CE0
    addiu   $at, $zero, 0x3059         # $at = 00003059
    beq     v0, $at, lbl_80B57CC4
    addiu   $at, $zero, 0x305E         # $at = 0000305E
    bne     v0, $at, lbl_80B57D14
    nop
    jal     func_80022B04
    lw      a0, 0x0028($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     v0, $at, lbl_80B57D14
    nop
lbl_80B57CC4:
    lbu     t0, 0x0023($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x4394             # a0 = 80104394
    bne     t0, $zero, lbl_80B57CE0
    addiu   a1, $zero, 0x38FC          # a1 = 000038FC
    jal     func_800C5264
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
lbl_80B57CE0:
    lbu     t1, 0x0023($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t1, $zero, lbl_80B57D14
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t2, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
lbl_80B57D14:
    b       lbl_80B57DE4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57D1C:
    jal     func_800D6110
    sw      a3, 0x002C($sp)
    beq     v0, $zero, lbl_80B57DE0
    lw      a3, 0x002C($sp)
    lhu     v0, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x3054         # $at = 00003054
    lw      t3, 0x0028($sp)
    beq     v0, $at, lbl_80B57D48
    lui     t4, 0x0001                 # t4 = 00010000
    addiu   $at, $zero, 0x3055         # $at = 00003055
    bne     v0, $at, lbl_80B57D94
lbl_80B57D48:
    addu    t4, t4, t3
    lbu     t4, 0x04BD(t4)             # 000104BD
    addiu   t6, $zero, 0x3056          # t6 = 00003056
    or      a0, a3, $zero              # a0 = 00000000
    bne     t4, $zero, lbl_80B57D88
    andi    a1, t6, 0xFFFF             # a1 = 00003056
    or      a1, t3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0023          # a2 = 00000023
    jal     func_80B56FC8
    sw      a3, 0x002C($sp)
    lw      a3, 0x002C($sp)
    lui     t5, %hi(func_80B5AD04)     # t5 = 80B60000
    addiu   t5, t5, %lo(func_80B5AD04) # t5 = 80B5AD04
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    b       lbl_80B57DE4
    sw      t5, 0x0180(a3)             # 00000180
lbl_80B57D88:
    sh      t6, 0x010E(a3)             # 0000010E
    jal     func_800DCE80
    lw      a0, 0x0028($sp)
lbl_80B57D94:
    b       lbl_80B57DE4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57D9C:
    jal     func_800D6110
    sw      a3, 0x002C($sp)
    beq     v0, $zero, lbl_80B57DE0
    lw      a3, 0x002C($sp)
    lhu     t7, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x3059         # $at = 00003059
    addiu   t8, $zero, 0x0037          # t8 = 00000037
    bne     t7, $at, lbl_80B57DD8
    lw      t9, 0x0028($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t9
    lui     t0, %hi(func_80B5AE7C)     # t0 = 80B60000
    sb      t8, 0x03DC($at)            # 000103DC
    addiu   t0, t0, %lo(func_80B5AE7C) # t0 = 80B5AE7C
    sw      t0, 0x0180(a3)             # 00000180
lbl_80B57DD8:
    b       lbl_80B57DE4
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80B57DE0:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57DE4:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B57DF4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      a1, 0x001C(a2)             # 0000001C
    andi    a1, a1, 0xFC00             # a1 = 00000000
    jal     func_8002049C
    sra     a1, a1, 10
    beq     v0, $zero, lbl_80B57E20
    lw      $ra, 0x0014($sp)
    b       lbl_80B57E24
    addiu   v0, $zero, 0x3071          # v0 = 00003071
lbl_80B57E20:
    addiu   v0, $zero, 0x3051          # v0 = 00003051
lbl_80B57E24:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B57E2C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B57E64
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80B57E6C
    nop
    b       lbl_80B57EB8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57E64:
    b       lbl_80B57EB8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B57E6C:
    jal     func_800D6110
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B57EB4
    lw      a0, 0x001C($sp)
    lhu     t6, 0x010E(a0)             # 0000010E
    addiu   $at, $zero, 0x3071         # $at = 00003071
    bne     t6, $at, lbl_80B57EAC
    nop
    jal     func_80B5708C
    nop
    lw      t7, 0x001C($sp)
    sh      v0, 0x010E(t7)             # 0000010E
    lw      t8, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_800DCE80
    lhu     a1, 0x010E(t8)             # 0000010E
lbl_80B57EAC:
    b       lbl_80B57EB8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57EB4:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57EB8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B57EC8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lw      t6, 0x0004(v0)             # 8011A5D4
    addiu   v1, $zero, 0x3043          # v1 = 00003043
    beq     t6, $zero, lbl_80B57F0C
    nop
    lhu     t7, 0x0F14(v0)             # 8011B4E4
    addiu   v0, $zero, 0x300E          # v0 = 0000300E
    andi    t8, t7, 0x0008             # t8 = 00000000
    beq     t8, $zero, lbl_80B57F04
    nop
    b       lbl_80B57F0C
    addiu   v1, $zero, 0x3022          # v1 = 00003022
lbl_80B57F04:
    b       lbl_80B57F0C
    or      v1, v0, $zero              # v1 = 0000300E
lbl_80B57F0C:
    andi    v0, v1, 0xFFFF             # v0 = 0000300E
    jr      $ra
    nop


func_80B57F18:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_800DD464
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B57F64
    lw      t6, 0x001C($sp)
    lhu     t7, 0x010E(t6)             # 0000010E
    addiu   $at, $zero, 0x300E         # $at = 0000300E
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t7, $at, lbl_80B57F5C
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0F14(v0)             # 8011B4E4
    ori     t9, t8, 0x0008             # t9 = 00000008
    sh      t9, 0x0F14(v0)             # 8011B4E4
lbl_80B57F5C:
    b       lbl_80B57F68
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B57F64:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57F68:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B57F78:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x7122          # v0 = 00007122
    jr      $ra
    nop


func_80B57F8C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B57FBC
    lw      $ra, 0x0014($sp)
    b       lbl_80B57FC0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B57FBC:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B57FC0:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B57FC8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    addiu   v0, $zero, 0x3043          # v0 = 00003043
    beq     t6, $zero, lbl_80B58028
    nop
    jal     func_8002049C
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    beq     v0, $zero, lbl_80B58000
    lui     t7, 0x8012                 # t7 = 80120000
    b       lbl_80B58028
    addiu   v0, $zero, 0x302F          # v0 = 0000302F
lbl_80B58000:
    lhu     t7, -0x4B1C(t7)            # 8011B4E4
    addiu   v1, $zero, 0x3024          # v1 = 00003024
    andi    t8, t7, 0x0040             # t8 = 00000000
    beq     t8, $zero, lbl_80B58020
    nop
    addiu   v1, $zero, 0x3025          # v1 = 00003025
    b       lbl_80B58028
    andi    v0, v1, 0xFFFF             # v0 = 00003025
lbl_80B58020:
    b       lbl_80B58028
    andi    v0, v1, 0xFFFF             # v0 = 00003025
lbl_80B58028:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B58038:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_800DD464
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B58084
    lw      t6, 0x001C($sp)
    lhu     t7, 0x010E(t6)             # 0000010E
    addiu   $at, $zero, 0x3024         # $at = 00003024
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t7, $at, lbl_80B5807C
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0F14(v0)             # 8011B4E4
    ori     t9, t8, 0x0040             # t9 = 00000040
    sh      t9, 0x0F14(v0)             # 8011B4E4
lbl_80B5807C:
    b       lbl_80B58088
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B58084:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B58088:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B58098:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lw      t6, 0x0004(v0)             # 8011A5D4
    lui     t7, 0x8010                 # t7 = 80100000
    beql    t6, $zero, lbl_80B580E8
    addiu   v0, $zero, 0x3043          # v0 = 00003043
    lw      t7, -0x73C4(t7)            # 800F8C3C
    lw      t8, 0x00A4(v0)             # 000030E7
    addiu   v1, $zero, 0x3064          # v1 = 00003064
    and     t9, t7, t8
    beq     t9, $zero, lbl_80B580DC
    nop
    addiu   v1, $zero, 0x3065          # v1 = 00003065
    jr      $ra
    andi    v0, v1, 0xFFFF             # v0 = 00003065
lbl_80B580DC:
    jr      $ra
    andi    v0, v1, 0xFFFF             # v0 = 00003065
lbl_80B580E4:
    addiu   v0, $zero, 0x3043          # v0 = 00003043
lbl_80B580E8:
    jr      $ra
    nop


func_80B580F0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B58120
    lw      $ra, 0x0014($sp)
    b       lbl_80B58124
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B58120:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B58124:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B5812C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    sw      a0, 0x0018($sp)
    jal     func_800597C0
    sw      a2, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a2, 0x001C($sp)
    beq     v0, $zero, lbl_80B58160
    andi    v1, v0, 0xFFFF             # v1 = 00000000
    b       lbl_80B58260
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B58160:
    lh      t6, 0x001C(a2)             # 0000001C
    andi    t7, t6, 0x001F             # t7 = 00000000
    sltiu   $at, t7, 0x000E
    beq     $at, $zero, lbl_80B58260
    sll     t7, t7,  2
    lui     $at, %hi(var_80B5C154)     # $at = 80B60000
    addu    $at, $at, t7
    lw      t7, %lo(var_80B5C154)($at)
    jr      t7
    nop
var_80B58188:
    jal     func_80B57108
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B58198:
    jal     func_80B57868
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B581A8:
    jal     func_80B57B5C
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B581B8:
    jal     func_80B57DF4
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B581C8:
    jal     func_80B57288
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B581D8:
    jal     func_80B573DC
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B581E8:
    jal     func_80B57470
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B581F8:
    jal     func_80B5756C
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B58208:
    jal     func_80B5764C
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B58218:
    jal     func_80B5772C
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B58228:
    jal     func_80B57EC8
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B58238:
    jal     func_80B57FC8
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B58248:
    jal     func_80B58098
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B58264
    lw      $ra, 0x0014($sp)
var_80B58258:
    jal     func_80B57F78
    or      a1, a2, $zero              # a1 = 00000000
lbl_80B58260:
    lw      $ra, 0x0014($sp)
lbl_80B58264:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B58270:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x001C(a1)             # 0000001C
    andi    t7, t6, 0x001F             # t7 = 00000000
    sltiu   $at, t7, 0x000E
    beq     $at, $zero, lbl_80B58378
    sll     t7, t7,  2
    lui     $at, %hi(var_80B5C18C)     # $at = 80B60000
    addu    $at, $at, t7
    lw      t7, %lo(var_80B5C18C)($at)
    jr      t7
    nop
var_80B582A0:
    jal     func_80B57190
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B582B0:
    jal     func_80B57944
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B582C0:
    jal     func_80B57BDC
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B582D0:
    jal     func_80B57E2C
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B582E0:
    jal     func_80B572C4
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B582F0:
    jal     func_80B57434
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B58300:
    jal     func_80B5750C
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B58310:
    jal     func_80B575EC
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B58320:
    jal     func_80B576CC
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B58330:
    jal     func_80B57808
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B58340:
    jal     func_80B57F18
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B58350:
    jal     func_80B58038
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B58360:
    jal     func_80B580F0
    nop
    b       lbl_80B5837C
    lw      $ra, 0x0014($sp)
var_80B58370:
    jal     func_80B57F8C
    nop
lbl_80B58378:
    lw      $ra, 0x0014($sp)
lbl_80B5837C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B58388:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    lh      v0, 0x001C(s0)             # 0000001C
    andi    v0, v0, 0x001F             # v0 = 00000000
    beq     v1, v0, lbl_80B583E8
    nop
    beq     v0, $zero, lbl_80B583E8
    lw      a0, 0x002C($sp)
    lui     t6, %hi(func_80B5812C)     # t6 = 80B60000
    lui     t7, %hi(func_80B58270)     # t7 = 80B60000
    addiu   t7, t7, %lo(func_80B58270) # t7 = 80B58270
    addiu   t6, t6, %lo(func_80B5812C) # t6 = 80B5812C
    lw      a3, 0x0208(s0)             # 00000208
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800271FC
    addiu   a2, s0, 0x0184             # a2 = 00000184
    b       lbl_80B58474
    lw      $ra, 0x0024($sp)
lbl_80B583E8:
    bne     v1, v0, lbl_80B58408
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t8, 0x01BF(s0)             # 000001BF
    andi    t9, t8, 0x0001             # t9 = 00000000
    bne     t9, $zero, lbl_80B58408
    nop
    b       lbl_80B58470
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B58408:
    jal     func_80022930
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_80B58424
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t0, 0x0184(s0)             # 00000184
    b       lbl_80B58470
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B58424:
    lh      t1, 0x0184(s0)             # 00000184
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    beq     t1, $zero, lbl_80B58450
    nop
    lw      a0, 0x002C($sp)
    jal     func_80B58270
    or      a1, s0, $zero              # a1 = 00000000
    sh      v0, 0x0184(s0)             # 00000184
    b       lbl_80B58470
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B58450:
    jal     func_80022A68
    lw      a2, 0x0208(s0)             # 00000208
    beq     v0, $zero, lbl_80B5846C
    lw      a0, 0x002C($sp)
    jal     func_80B5812C
    or      a1, s0, $zero              # a1 = 00000000
    sh      v0, 0x010E(s0)             # 0000010E
lbl_80B5846C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B58470:
    lw      $ra, 0x0024($sp)
lbl_80B58474:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B58484:
    lh      v0, 0x001C(a0)             # 0000001C
    lui     t7, %hi(var_80B5BCFC)      # t7 = 80B60000
    addiu   t7, t7, %lo(var_80B5BCFC)  # t7 = 80B5BCFC
    andi    v0, v0, 0x001F             # v0 = 00000000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    sll     t6, v0,  2
    addu    t6, t6, v0
    sll     t6, t6,  1
    addu    v1, t6, t7
    lh      t8, 0x0006(v1)             # 00000006
    sh      t8, 0x01EC(a0)             # 000001EC
    lh      t9, 0x0008(v1)             # 00000008
    sh      t9, 0x01EE(a0)             # 000001EE
    jr      $ra
    nop


func_80B584C0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lh      v1, 0x001C(a0)             # 0000001C
    lui     t7, %hi(var_80B5BD88)      # t7 = 80B60000
    addiu   t7, t7, %lo(var_80B5BD88)  # t7 = 80B5BD88
    andi    v1, v1, 0x001F             # v1 = 00000000
    andi    v1, v1, 0x00FF             # v1 = 00000000
    sll     t6, v1,  4
    addu    v0, t6, t7
    lwc1    $f4, 0x0000(v0)            # 00000000
    swc1    $f4, 0x00C4(a0)            # 000000C4
    sw      a0, 0x0020($sp)
    sw      v0, 0x0018($sp)
    jal     func_80020F88
    lw      a1, 0x0004(v0)             # 00000004
    lw      a0, 0x0020($sp)
    lw      v0, 0x0018($sp)
    lh      t9, 0x01EC(a0)             # 000001EC
    lb      t8, 0x0008(v0)             # 00000008
    mtc1    t9, $f10                   # $f10 = 0.00
    sb      t8, 0x001F(a0)             # 0000001F
    lwc1    $f6, 0x000C(v0)            # 0000000C
    cvt.s.w $f16, $f10
    swc1    $f6, 0x0208(a0)            # 00000208
    lwc1    $f8, 0x0208(a0)            # 00000208
    add.s   $f18, $f8, $f16
    swc1    $f18, 0x0208(a0)           # 00000208
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B58538:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0034($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lwc1    $f4, 0x0024(a3)            # 00000024
    lui     t5, %hi(var_80B5BD00)      # t5 = 80B60000
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x0028($sp)
    lwc1    $f8, 0x0028(a3)            # 00000028
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x002A($sp)
    lwc1    $f16, 0x002C(a3)           # 0000002C
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sh      t1, 0x002C($sp)
    lh      t2, 0x001C(a3)             # 0000001C
    andi    t3, t2, 0x001F             # t3 = 00000000
    sll     t4, t3,  2
    addu    t4, t4, t3
    sll     t4, t4,  1
    addu    t5, t5, t4
    lh      t5, %lo(var_80B5BD00)(t5)
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0024($sp)
    lh      a0, 0x00B6(a3)             # 000000B6
    jal     func_800636C4              # sins?
    sw      a3, 0x0030($sp)
    lwc1    $f8, 0x0024($sp)
    lh      t6, 0x0028($sp)
    lw      a3, 0x0030($sp)
    mul.s   $f10, $f8, $f0
    trunc.w.s $f16, $f10
    mfc1    t0, $f16
    nop
    addu    t1, t6, t0
    sh      t1, 0x0028($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(a3)             # 000000B6
    lwc1    $f18, 0x0024($sp)
    lh      t2, 0x002C($sp)
    lw      a3, 0x0030($sp)
    mul.s   $f4, $f18, $f0
    lui     t3, %hi(var_80B5BCFE)      # t3 = 80B60000
    lh      t9, 0x002A($sp)
    addiu   t5, $sp, 0x0028            # t5 = FFFFFFF8
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    trunc.w.s $f6, $f4
    addiu   a2, a3, 0x01AC             # a2 = 000001AC
    addu    a1, a0, $at
    mfc1    t7, $f6
    nop
    addu    t8, t2, t7
    sh      t8, 0x002C($sp)
    lh      t6, 0x001C(a3)             # 0000001C
    andi    t0, t6, 0x001F             # t0 = 00000000
    sll     t1, t0,  2
    addu    t1, t1, t0
    sll     t1, t1,  1
    addu    t3, t3, t1
    lh      t3, %lo(var_80B5BCFE)(t3)
    addu    t4, t9, t3
    sh      t4, 0x002A($sp)
    lw      t7, 0x0000(t5)             # FFFFFFF8
    swl     t7, 0x01F2(a3)             # 000001F2
    swr     t7, 0x01F5(a3)             # 000001F5
    lhu     t7, 0x0004(t5)             # FFFFFFFC
    sh      t7, 0x01F6(a3)             # 000001F6
    sw      a2, 0x0018($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0018($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a0, 0x0034($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B58694:
    lwc1    $f0, 0x0148(a0)            # 00000148
    lwc1    $f4, 0x014C(a0)            # 0000014C
    swc1    $f0, 0x014C(a0)            # 0000014C
    swc1    $f4, 0x0148(a0)            # 00000148
    jr      $ra
    nop


func_80B586AC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lh      t7, 0x001C(s0)             # 0000001C
    lw      t6, 0x0034($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    t8, t7, 0x001F             # t8 = 00000000
    bne     t8, $at, lbl_80B586E0
    lw      v1, 0x1C44(t6)             # 00001C44
    b       lbl_80B58854
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B586E0:
    lw      v0, 0x0180(s0)             # 00000180
    lui     t9, %hi(func_80B5AA68)     # t9 = 80B60000
    addiu   t9, t9, %lo(func_80B5AA68) # t9 = 80B5AA68
    beq     t9, v0, lbl_80B58714
    lui     t0, %hi(func_80B5AC3C)     # t0 = 80B60000
    addiu   t0, t0, %lo(func_80B5AC3C) # t0 = 80B5AC3C
    beq     t0, v0, lbl_80B58714
    lui     t1, %hi(func_80B5A9D0)     # t1 = 80B60000
    addiu   t1, t1, %lo(func_80B5A9D0) # t1 = 80B5A9D0
    beql    t1, v0, lbl_80B58718
    lbu     t2, 0x01BD(s0)             # 000001BD
    b       lbl_80B58854
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B58714:
    lbu     t2, 0x01BD(s0)             # 000001BD
lbl_80B58718:
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t3, t2, 0x0002             # t3 = 00000000
    beq     t3, $zero, lbl_80B58780
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t4, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lw      t5, 0x0004(s0)             # 00000004
    lbu     t7, 0x01BD(s0)             # 000001BD
    lui     $at, 0xFEFF                # $at = FEFF0000
    ori     $at, $at, 0xFFFF           # $at = FEFFFFFF
    and     t6, t5, $at
    andi    t8, t7, 0xFFFD             # t8 = 00000000
    sw      t6, 0x0004(s0)             # 00000004
    sb      t8, 0x01BD(s0)             # 000001BD
    lw      a1, 0x0034($sp)
    jal     func_80B59A64
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B58854
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B58780:
    lb      t9, 0x0A68(v1)             # 00000A68
    bgtz    t9, lbl_80B587A4
    nop
    lbu     t0, 0x01BE(s0)             # 000001BE
    lui     t4, %hi(func_80B5A9D0)     # t4 = 80B60000
    lui     t9, 0x0001                 # t9 = 00010000
    ori     t1, t0, 0x0008             # t1 = 00000008
    b       lbl_80B587AC
    sb      t1, 0x01BE(s0)             # 000001BE
lbl_80B587A4:
    b       lbl_80B58854
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B587AC:
    lbu     v0, 0x01BF(s0)             # 000001BF
    andi    t2, v0, 0x0001             # t2 = 00000000
    beql    t2, $zero, lbl_80B58854
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t5, 0x0180(s0)             # 00000180
    andi    t3, v0, 0xFFFE             # t3 = 00000000
    addiu   t4, t4, %lo(func_80B5A9D0) # t4 = 80B5A9D0
    bne     t4, t5, lbl_80B587E0
    sb      t3, 0x01BF(s0)             # 000001BF
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f0                   # $f0 = 1.50
    b       lbl_80B587F8
    lw      a0, 0x0034($sp)
lbl_80B587E0:
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    lwc1    $f4, 0x0068(s0)            # 00000068
    mul.s   $f0, $f4, $f6
    nop
    lw      a0, 0x0034($sp)
lbl_80B587F8:
    sw      v1, 0x002C($sp)
    swc1    $f0, 0x0028($sp)
    addu    t9, t9, a0
    lw      t9, 0x1D58(t9)             # 00011D58
    addiu   a1, $zero, 0xFFFC          # a1 = FFFFFFFC
    jalr    $ra, t9
    nop
    lwc1    $f0, 0x0028($sp)
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    lh      a3, 0x008A(s0)             # 0000008A
    mfc1    a2, $f0
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80022EC4
    swc1    $f8, 0x0010($sp)
    lw      a0, 0x002C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    lbu     t7, 0x01BE(s0)             # 000001BE
    andi    t8, t7, 0xFFF7             # t8 = 00000000
    sb      t8, 0x01BE(s0)             # 000001BE
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B58854:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B58868:
    sw      a1, 0x0004($sp)
    lw      v0, 0x01F8(a0)             # 000001F8
    bnel    v0, $zero, lbl_80B58884
    lbu     v1, 0x0000(v0)             # 00000000
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B58880:
    lbu     v1, 0x0000(v0)             # 00000000
lbl_80B58884:
    lbu     t6, 0x01FE(a0)             # 000001FE
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFF
    beq     t6, $zero, lbl_80B588BC
    andi    v1, v1, 0x00FF             # v1 = 000000FF
    lb      t7, 0x0200(a0)             # 00000200
    addiu   t0, v1, 0xFFFF             # t0 = 000000FE
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sb      t8, 0x0200(a0)             # 00000200
    lb      t9, 0x0200(a0)             # 00000200
    bgez    t9, lbl_80B588DC
    nop
    b       lbl_80B588DC
    sb      t0, 0x0200(a0)             # 00000200
lbl_80B588BC:
    lb      t1, 0x0200(a0)             # 00000200
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x0200(a0)             # 00000200
    lb      t3, 0x0200(a0)             # 00000200
    slt     $at, t3, v1
    bne     $at, $zero, lbl_80B588DC
    nop
    sb      $zero, 0x0200(a0)          # 00000200
lbl_80B588DC:
    jr      $ra
    nop


func_80B588E4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x01F8(s0)             # 000001F8
    lb      a2, 0x0200(s0)             # 00000200
    jal     func_80078FC4
    addiu   a3, $sp, 0x002E            # a3 = FFFFFFFE
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x002E($sp)
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    jal     func_80064508
    swc1    $f0, 0x0028($sp)
    lwc1    $f2, 0x0028($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x4461                # $at = 44610000
    or      v0, $zero, $zero           # v0 = 00000000
    c.lt.s  $f4, $f2
    nop
    bc1f    lbl_80B58974
    nop
    mtc1    $at, $f6                   # $f6 = 900.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f2, $f6
    nop
    bc1f    lbl_80B58974
    nop
    jal     func_80B58868
    lw      a1, 0x0034($sp)
    b       lbl_80B58978
    lw      $ra, 0x0024($sp)
lbl_80B58974:
    lw      $ra, 0x0024($sp)
lbl_80B58978:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B58988:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lw      a1, 0x01F8(a0)             # 000001F8
    lb      a2, 0x0200(a0)             # 00000200
    sw      a0, 0x0020($sp)
    jal     func_80078FC4
    addiu   a3, $sp, 0x001E            # a3 = FFFFFFFE
    lw      a0, 0x0020($sp)
    lh      t6, 0x001E($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      t6, 0x0032(a0)             # 00000032
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B589C0:
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    lh      v0, 0x001C(a0)             # 0000001C
    lui     $at, 0x4348                # $at = 43480000
    andi    v0, v0, 0x001F             # v0 = 00000000
    bnel    v1, v0, lbl_80B589EC
    mtc1    $at, $f0                   # $f0 = 200.00
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f0                   # $f0 = 800.00
    b       lbl_80B589F0
    nop
    mtc1    $at, $f0                   # $f0 = 800.00
lbl_80B589EC:
    nop
lbl_80B589F0:
    bne     v1, v0, lbl_80B58A08
    lui     $at, 0x4270                # $at = 42700000
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f2                   # $f2 = 400.00
    b       lbl_80B58A10
    nop
lbl_80B58A08:
    mtc1    $at, $f2                   # $f2 = 400.00
    nop
lbl_80B58A10:
    bnel    v1, v0, lbl_80B58A58
    lh      t2, 0x008A(a0)             # 0000008A
    lbu     t6, 0x01BF(a0)             # 000001BF
    andi    t7, t6, 0x0001             # t7 = 00000000
    bnel    t7, $zero, lbl_80B58A44
    lw      t0, 0x0004(a0)             # 00000004
    lw      t8, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      v0, $zero, $zero           # v0 = 00000000
    and     t9, t8, $at
    jr      $ra
    sw      t9, 0x0004(a0)             # 00000004
lbl_80B58A40:
    lw      t0, 0x0004(a0)             # 00000004
lbl_80B58A44:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ori     t1, t0, 0x0001             # t1 = 00000001
    jr      $ra
    sw      t1, 0x0004(a0)             # 00000004
lbl_80B58A54:
    lh      t2, 0x008A(a0)             # 0000008A
lbl_80B58A58:
    lh      t3, 0x00B6(a0)             # 000000B6
    mul.s   $f0, $f0, $f0
    mtc1    t2, $f4                    # $f4 = 0.00
    mtc1    t3, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f10, $f8
    sub.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    v0, $f18
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B58A9C
    subu    v1, $zero, v0
    sll     v1, v0, 16
    b       lbl_80B58AA4
    sra     v1, v1, 16
lbl_80B58A9C:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80B58AA4:
    lwc1    $f4, 0x008C(a0)            # 0000008C
    or      v0, $zero, $zero           # v0 = 00000000
    c.le.s  $f4, $f0
    nop
    bc1f    lbl_80B58AE8
    nop
    lwc1    $f0, 0x0094(a0)            # 00000094
    slti    $at, v1, 0x2AA8
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1f    lbl_80B58AE8
    nop
    beq     $at, $zero, lbl_80B58AE8
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B58AE8:
    jr      $ra
    nop


func_80B58AF0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a3, 0x0024($sp)
    sll     a3, a3, 16
    sw      a2, 0x0020($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sra     a3, a3, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lhu     t6, 0x0088(a2)             # 00000088
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80B58B3C
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0060(a2)            # 00000060
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B58B48
    lh      v0, 0x0580(a2)             # 00000580
lbl_80B58B3C:
    b       lbl_80B58C7C
    or      v0, $zero, $zero           # v0 = 00000000
    lh      v0, 0x0580(a2)             # 00000580
lbl_80B58B48:
    bne     v0, $zero, lbl_80B58B58
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    b       lbl_80B58B64
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B58B58:
    sh      t8, 0x0580(a2)             # 00000580
    lh      v0, 0x0580(a2)             # 00000580
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B58B64:
    beql    v1, $zero, lbl_80B58BC4
    lh      v1, 0x058C(a2)             # 0000058C
    bne     a3, $zero, lbl_80B58B7C
    andi    t9, v0, 0x0001             # t9 = 00000000
    b       lbl_80B58C7C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B58B7C:
    beq     t9, $zero, lbl_80B58B9C
    or      a0, a2, $zero              # a0 = 00000000
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    lwc1    $f8, 0x0028(a2)            # 00000028
    add.s   $f16, $f8, $f10
    b       lbl_80B58BB0
    swc1    $f16, 0x0028(a2)           # 00000028
lbl_80B58B9C:
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    lwc1    $f18, 0x0028(a2)           # 00000028
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x0028(a2)            # 00000028
lbl_80B58BB0:
    jal     func_80022FD0
    addiu   a1, $zero, 0x20B8          # a1 = 000020B8
    b       lbl_80B58C7C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      v1, 0x058C(a2)             # 0000058C
lbl_80B58BC4:
    or      a0, a2, $zero              # a0 = 00000000
    slti    $at, v1, 0x0002
    bnel    $at, $zero, lbl_80B58C08
    addiu   t2, v1, 0xFFFF             # t2 = FFFFFFFF
    lh      t0, 0x001C(a2)             # 0000001C
    addiu   v1, $zero, 0x387B          # v1 = 0000387B
    andi    t1, t0, 0x001F             # t1 = 00000000
    bne     t1, $zero, lbl_80B58BF0
    nop
    b       lbl_80B58BF0
    addiu   v1, $zero, 0x3879          # v1 = 00003879
lbl_80B58BF0:
    andi    a1, v1, 0xFFFF             # a1 = 00003879
    jal     func_80022FD0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lh      v1, 0x058C(a2)             # 0000058C
    addiu   t2, v1, 0xFFFF             # t2 = FFFFFFFF
lbl_80B58C08:
    sh      t2, 0x058C(a2)             # 0000058C
    lh      v1, 0x058C(a2)             # 0000058C
    bgtzl   v1, lbl_80B58C58
    lh      t4, 0x001E($sp)
    bne     v1, $zero, lbl_80B58C4C
    lh      t3, 0x001E($sp)
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      v0, 0x0580(a2)             # 00000580
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      $zero, 0x058C(a2)          # 0000058C
    b       lbl_80B58C7C
    swc1    $f8, 0x0060(a2)            # 00000060
lbl_80B58C4C:
    sh      t3, 0x058C(a2)             # 0000058C
    lh      v1, 0x058C(a2)             # 0000058C
    lh      t4, 0x001E($sp)
lbl_80B58C58:
    mtc1    v1, $f10                   # $f10 = 0.00
    lwc1    $f8, 0x0020($sp)
    mtc1    t4, $f18                   # $f18 = 0.00
    cvt.s.w $f16, $f10
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    cvt.s.w $f4, $f18
    div.s   $f6, $f16, $f4
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0060(a2)           # 00000060
lbl_80B58C7C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B58C8C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     v1, 0x8012                 # v1 = 80120000
    andi    t7, t6, 0x001F             # t7 = 00000000
    bne     t7, $at, lbl_80B58E7C
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lbu     v0, 0x003E(v1)             # 8011A60E
    or      a0, a1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B58CFC
    nop
    jal     func_80022B04
    sw      a3, 0x0018($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     v0, $at, lbl_80B58CE4
    lw      a3, 0x0018($sp)
    addiu   t8, $zero, 0x3003          # t8 = 00003003
    b       lbl_80B58CEC
    sh      t8, 0x010E(a3)             # 0000010E
lbl_80B58CE4:
    addiu   t9, $zero, 0x305E          # t9 = 0000305E
    sh      t9, 0x010E(a3)             # 0000010E
lbl_80B58CEC:
    lhu     t0, 0x010E(a3)             # 0000010E
    lw      t1, 0x0020($sp)
    b       lbl_80B58E7C
    sh      t0, 0x010E(t1)             # 0000010E
lbl_80B58CFC:
    bne     v0, $zero, lbl_80B58D90
    lui     t2, 0x8010                 # t2 = 80100000
    lbu     t2, -0x709F(t2)            # 800F8F61
    addiu   $at, $zero, 0x0037         # $at = 00000037
    or      a0, a1, $zero              # a0 = 00000000
    addu    t3, v1, t2
    lbu     t4, 0x0074(t3)             # 00000074
    bne     t4, $at, lbl_80B58D90
    nop
    jal     func_80022B04
    sw      a3, 0x0018($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     v0, $at, lbl_80B58D5C
    lw      a3, 0x0018($sp)
    jal     func_80063404
    sw      a3, 0x0018($sp)
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_80B58D50
    lw      a3, 0x0018($sp)
    b       lbl_80B58D54
    addiu   v0, $zero, 0x305E          # v0 = 0000305E
lbl_80B58D50:
    addiu   v0, $zero, 0x305D          # v0 = 0000305D
lbl_80B58D54:
    b       lbl_80B58D80
    sh      v0, 0x010E(a3)             # 0000010E
lbl_80B58D5C:
    jal     func_80063404
    sw      a3, 0x0018($sp)
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_80B58D78
    lw      a3, 0x0018($sp)
    b       lbl_80B58D7C
    addiu   v0, $zero, 0x3002          # v0 = 00003002
lbl_80B58D78:
    addiu   v0, $zero, 0x305D          # v0 = 0000305D
lbl_80B58D7C:
    sh      v0, 0x010E(a3)             # 0000010E
lbl_80B58D80:
    lhu     t5, 0x010E(a3)             # 0000010E
    lw      t6, 0x0020($sp)
    b       lbl_80B58E7C
    sh      t5, 0x010E(t6)             # 0000010E
lbl_80B58D90:
    lui     t7, 0x8010                 # t7 = 80100000
    lbu     t7, -0x709F(t7)            # 800F8F61
    addu    t8, v1, t7
    lbu     v0, 0x0074(t8)             # 00000074
    slti    $at, v0, 0x0034
    bne     $at, $zero, lbl_80B58E08
    slti    $at, v0, 0x0038
    beq     $at, $zero, lbl_80B58E08
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_80022B04
    sw      a3, 0x0018($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    bne     v0, $at, lbl_80B58DDC
    lw      a3, 0x0018($sp)
    addiu   t9, $zero, 0x3059          # t9 = 00003059
    b       lbl_80B58DE4
    sh      t9, 0x010E(a3)             # 0000010E
lbl_80B58DDC:
    addiu   t0, $zero, 0x3058          # t0 = 00003058
    sh      t0, 0x010E(a3)             # 0000010E
lbl_80B58DE4:
    lhu     v0, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x3059         # $at = 00003059
    bnel    v0, $at, lbl_80B58E00
    lw      t1, 0x0020($sp)
    sh      $zero, 0x13D2(v1)          # 8011B9A2
    lhu     v0, 0x010E(a3)             # 0000010E
    lw      t1, 0x0020($sp)
lbl_80B58E00:
    b       lbl_80B58E7C
    sh      v0, 0x010E(t1)             # 0000010E
lbl_80B58E08:
    slti    $at, v0, 0x0034
    beq     $at, $zero, lbl_80B58E70
    addiu   t8, $zero, 0x3053          # t8 = 00003053
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_80022B04
    sw      a3, 0x0018($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    bne     v0, $at, lbl_80B58E58
    lw      a3, 0x0018($sp)
    lhu     t2, 0x0F0E(v1)             # 8011B4DE
    addiu   v0, $zero, 0x3054          # v0 = 00003054
    andi    t3, t2, 0x0010             # t3 = 00000000
    beq     t3, $zero, lbl_80B58E50
    nop
    b       lbl_80B58E50
    addiu   v0, $zero, 0x3055          # v0 = 00003055
lbl_80B58E50:
    b       lbl_80B58E60
    sh      v0, 0x010E(a3)             # 0000010E
lbl_80B58E58:
    addiu   t4, $zero, 0x3053          # t4 = 00003053
    sh      t4, 0x010E(a3)             # 0000010E
lbl_80B58E60:
    lhu     t5, 0x010E(a3)             # 0000010E
    lw      t6, 0x0020($sp)
    b       lbl_80B58E7C
    sh      t5, 0x010E(t6)             # 0000010E
lbl_80B58E70:
    sh      t8, 0x010E(a3)             # 0000010E
    lw      t9, 0x0020($sp)
    sh      t8, 0x010E(t9)             # 0000010E
lbl_80B58E7C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B58E8C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    lui     t8, %hi(func_80B5B1A0)     # t8 = 80B60000
    addiu   t8, t8, %lo(func_80B5B1A0) # t8 = 80B5B1A0
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x001C($sp)
    lw      v0, 0x0180(a0)             # 00000180
    beq     t8, v0, lbl_80B58F18
    nop
    lw      t0, 0x0024(t7)             # 00000024
    lh      t1, 0x001C(a0)             # 0000001C
    lui     v0, 0x8012                 # v0 = 80120000
    sw      t0, 0x019C(a0)             # 0000019C
    lw      t9, 0x0028(t7)             # 00000028
    andi    t2, t1, 0x001F             # t2 = 00000000
    sll     t3, t2,  3
    sw      t9, 0x01A0(a0)             # 000001A0
    lw      t0, 0x002C(t7)             # 0000002C
    lui     $at, %hi(var_80B5BE68)     # $at = 80B60000
    lh      a3, 0x025E(a0)             # 0000025E
    sw      t0, 0x01A4(a0)             # 000001A4
    lw      v0, -0x5A2C(v0)            # 8011A5D4
    addiu   a1, a0, 0x0184             # a1 = 00000184
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sll     t4, v0,  2
    addu    t5, t3, t4
    addu    $at, $at, t5
    lwc1    $f4, %lo(var_80B5BE68)($at)
    swc1    $f4, 0x0198(a0)            # 00000198
    jal     func_80027854
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    lw      v0, 0x0180(a0)             # 00000180
lbl_80B58F18:
    lui     t6, %hi(func_80B5AD74)     # t6 = 80B60000
    addiu   t6, t6, %lo(func_80B5AD74) # t6 = 80B5AD74
    beql    t6, v0, lbl_80B58F5C
    lw      $ra, 0x0014($sp)
    lbu     t8, 0x01FF(a0)             # 000001FF
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a1, 0x0024($sp)
    bnel    t8, $at, lbl_80B58F5C
    lw      $ra, 0x0014($sp)
    jal     func_80B58388
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80B58F58
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    jal     func_80B58C8C
    lw      a2, 0x001C($sp)
lbl_80B58F58:
    lw      $ra, 0x0014($sp)
lbl_80B58F5C:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B58F68:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t7, 0x0018($sp)
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x4930             # t6 = 06004930
    lw      t8, 0x0144(t7)             # 00000144
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    bne     t6, t8, lbl_80B58FC0
    lw      a0, 0x001C($sp)
    lui     $at, 0x4200                # $at = 42000000
    mtc1    $at, $f4                   # $f4 = 32.00
    lwc1    $f6, 0x0154(t7)            # 00000154
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80B58FC4
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $zero, $f0                 # $f0 = 0.00
    b       lbl_80B58FD0
    mfc1    a1, $f0
lbl_80B58FC0:
    lui     $at, 0x437F                # $at = 437F0000
lbl_80B58FC4:
    mtc1    $at, $f0                   # $f0 = 255.00
    nop
    mfc1    a1, $f0
lbl_80B58FD0:
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lw      t9, 0x001C($sp)
    cfc1    t0, $f31
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    ctc1    t1, $f31
    lwc1    $f8, 0x0000(t9)            # 00000000
    lw      t2, 0x0018($sp)
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f10, $f8
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    beql    t1, $zero, lbl_80B59054
    mfc1    t1, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t1, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_80B59048
    nop
    mfc1    t1, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80B59060
    or      t1, t1, $at                # t1 = 80000000
lbl_80B59048:
    b       lbl_80B59060
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    mfc1    t1, $f10
lbl_80B59054:
    nop
    bltz    t1, lbl_80B59048
    nop
lbl_80B59060:
    ctc1    t0, $f31
    sb      t1, 0x00C8(t2)             # 000000C8
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B59074:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lh      t6, 0x0184(a0)             # 00000184
    lwc1    $f0, 0x0068(a0)            # 00000068
    beql    t6, $zero, lbl_80B5909C
    lw      t8, 0x0180(a0)             # 00000180
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      t8, 0x0180(a0)             # 00000180
lbl_80B5909C:
    lui     t7, %hi(func_80B5A9D0)     # t7 = 80B60000
    addiu   t7, t7, %lo(func_80B5A9D0) # t7 = 80B5A9D0
    beql    t7, t8, lbl_80B590C4
    swc1    $f0, 0x0068(a0)            # 00000068
    sw      a0, 0x0020($sp)
    jal     func_8002121C
    swc1    $f0, 0x001C($sp)
    lw      a0, 0x0020($sp)
    lwc1    $f0, 0x001C($sp)
    swc1    $f0, 0x0068(a0)            # 00000068
lbl_80B590C4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B590D4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    andi    t7, t6, 0x001F             # t7 = 00000000
    sltiu   $at, t7, 0x000D
    beq     $at, $zero, lbl_80B59164
    sll     t7, t7,  2
    lui     $at, %hi(var_80B5C1C4)     # $at = 80B60000
    addu    $at, $at, t7
    lw      t7, %lo(var_80B5C1C4)($at)
    jr      t7
    nop
var_80B59108:
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = 80B5BED8
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    b       lbl_80B59174
    lw      $ra, 0x0014($sp)
var_80B59124:
    lui     t8, 0x8010                 # t8 = 80100000
    lbu     t8, -0x709F(t8)            # 800F8F61
    lui     v0, 0x8012                 # v0 = 80120000
    addu    v0, v0, t8
    lbu     v0, -0x59BC(v0)            # 8011A644
    slti    $at, v0, 0x0033
    bne     $at, $zero, lbl_80B59164
    slti    $at, v0, 0x0037
    beq     $at, $zero, lbl_80B59164
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = 80B5BED8
    jal     func_80027C98
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_80B59174
    lw      $ra, 0x0014($sp)
lbl_80B59164:
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x0158(a3)            # 00000158
    lw      $ra, 0x0014($sp)
lbl_80B59174:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B59180:
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    v0, v0, 0x001F             # v0 = 00000000
    bne     v0, $at, lbl_80B591A0
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f2                   # $f2 = 400.00
    b       lbl_80B591B0
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80B591A0:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f2                   # $f2 = 60.00
    nop
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80B591B0:
    bne     v0, $at, lbl_80B591FC
    or      v1, v0, $zero              # v1 = 00000000
    lwc1    $f0, 0x0094(a0)            # 00000094
    lui     $at, 0x43C8                # $at = 43C80000
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1f    lbl_80B591FC
    nop
    lwc1    $f4, 0x0090(a0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 400.00
    lui     $at, 0x4110                # $at = 41100000
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_80B591FC
    nop
    mtc1    $at, $f0                   # $f0 = 9.00
    jr      $ra
    nop
lbl_80B591FC:
    bne     v1, $zero, lbl_80B59210
    lui     $at, 0x40C0                # $at = 40C00000
    lui     $at, %hi(var_80B5C1F8)     # $at = 80B60000
    b       lbl_80B59218
    lwc1    $f2, %lo(var_80B5C1F8)($at)
lbl_80B59210:
    mtc1    $at, $f2                   # $f2 = 0.00
    nop
lbl_80B59218:
    mov.s   $f0, $f2
    jr      $ra
    nop


func_80B59224:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x0790(a1)             # 00000790
    lw      t7, 0x0020($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sw      t6, 0x001C($sp)
    lh      t8, 0x001C(t7)             # 0000001C
    andi    t9, t8, 0x001F             # t9 = 00000000
    bnel    t9, $at, lbl_80B592B4
    lw      t1, 0x0020($sp)
    jal     func_80B589C0
    or      a0, t7, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B5927C
    lw      a0, 0x001C($sp)
    jal     func_800495BC
    addiu   a1, $zero, 0x003F          # a1 = 0000003F
    lw      a0, 0x001C($sp)
    jal     func_80049AB8
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    b       lbl_80B592B4
    lw      t1, 0x0020($sp)
lbl_80B5927C:
    jal     func_80B589C0
    lw      a0, 0x0020($sp)
    bne     v0, $zero, lbl_80B592B0
    lw      a0, 0x001C($sp)
    lh      t0, 0x0142(a0)             # 00000142
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    bnel    t0, $at, lbl_80B592B4
    lw      t1, 0x0020($sp)
    jal     func_800495BC
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lw      a0, 0x001C($sp)
    jal     func_80049A94
    addiu   a1, $zero, 0x0004          # a1 = 00000004
lbl_80B592B0:
    lw      t1, 0x0020($sp)
lbl_80B592B4:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      $ra, 0x0014($sp)
    lh      v0, 0x001C(t1)             # 0000001C
    andi    v0, v0, 0x001F             # v0 = 00000000
    beq     v0, $at, lbl_80B592EC
    nop
    beq     v0, $zero, lbl_80B592EC
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_80B592EC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B592EC
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     v0, $at, lbl_80B592F4
    lui     v1, 0x8012                 # v1 = 80120000
lbl_80B592EC:
    b       lbl_80B59338
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B592F4:
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, -0x740C(v0)            # 800F8BF4
    lw      t2, 0x00A4(v1)             # 8011A674
    lui     t4, 0x8010                 # t4 = 80100000
    and     t3, v0, t2
    bnel    t3, $zero, lbl_80B59338
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t4, -0x733E(t4)            # 800F8CC2
    lhu     t6, 0x009C(v1)             # 8011A66C
    sllv    t5, v0, t4
    and     t8, t5, t6
    beql    t8, $zero, lbl_80B59338
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80B59338
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B59338:
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B59340:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80B589C0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B59364
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    b       lbl_80B5936C
    sh      t6, 0x025E(a0)             # 0000025E
lbl_80B59364:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x025E(a0)             # 0000025E
lbl_80B5936C:
    lh      t8, 0x0184(a0)             # 00000184
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beql    t8, $zero, lbl_80B59388
    sb      t0, 0x01FF(a0)             # 000001FF
    sh      t9, 0x025E(a0)             # 0000025E
    sb      t0, 0x01FF(a0)             # 000001FF
lbl_80B59388:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B59398:
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    andi    t7, t6, 0x001F             # t7 = 00000000
    bne     t7, $at, lbl_80B593C0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f0                   # $f0 = 800.00
    b       lbl_80B593CC
    nop
lbl_80B593C0:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f0                   # $f0 = 200.00
    nop
lbl_80B593CC:
    mul.s   $f0, $f0, $f0
    lwc1    $f4, 0x008C(a0)            # 0000008C
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x025E(a0)             # 0000025E
    c.le.s  $f4, $f0
    nop
    bc1tl   lbl_80B593FC
    sh      t0, 0x025E(a0)             # 0000025E
    lh      t9, 0x0184(a0)             # 00000184
    beql    t9, $zero, lbl_80B59400
    sb      t1, 0x01FF(a0)             # 000001FF
    sh      t0, 0x025E(a0)             # 0000025E
lbl_80B593FC:
    sb      t1, 0x01FF(a0)             # 000001FF
lbl_80B59400:
    jr      $ra
    nop


func_80B59408:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80B589C0
    sw      a0, 0x0018($sp)
    bne     v0, $zero, lbl_80B5942C
    lw      a0, 0x0018($sp)
    lh      t6, 0x0184(a0)             # 00000184
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beq     t6, $zero, lbl_80B59440
lbl_80B5942C:
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t7, 0x025E(a0)             # 0000025E
    b       lbl_80B59448
    sb      t8, 0x01FF(a0)             # 000001FF
lbl_80B59440:
    sh      t9, 0x025E(a0)             # 0000025E
    sb      $zero, 0x01FF(a0)          # 000001FF
lbl_80B59448:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B59458:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     v1, 0x8012                 # v1 = 80120000
    andi    v0, v0, 0x001F             # v0 = 00000000
    beq     v0, $at, lbl_80B594E0
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B594D0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80B594C0
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80B59524
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x01FF(a0)             # 000001FF
    jal     func_80B589C0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B594B4
    lw      a0, 0x0018($sp)
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    b       lbl_80B5952C
    sh      t7, 0x025E(a0)             # 0000025E
lbl_80B594B4:
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    b       lbl_80B5952C
    sh      t8, 0x025E(a0)             # 0000025E
lbl_80B594C0:
    jal     func_80B59398
    nop
    b       lbl_80B59530
    lw      $ra, 0x0014($sp)
lbl_80B594D0:
    jal     func_80B59408
    nop
    b       lbl_80B59530
    lw      $ra, 0x0014($sp)
lbl_80B594E0:
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, -0x740C(v0)            # 800F8BF4
    lw      t9, 0x00A4(v1)             # 000000A4
    lui     t1, 0x8010                 # t1 = 80100000
    and     t0, v0, t9
    bne     t0, $zero, lbl_80B59524
    nop
    lbu     t1, -0x733E(t1)            # 800F8CC2
    lhu     t3, 0x009C(v1)             # 0000009C
    sllv    t2, v0, t1
    and     t4, t2, t3
    beq     t4, $zero, lbl_80B59524
    nop
    jal     func_80B59398
    nop
    b       lbl_80B59530
    lw      $ra, 0x0014($sp)
lbl_80B59524:
    jal     func_80B59340
    nop
lbl_80B5952C:
    lw      $ra, 0x0014($sp)
lbl_80B59530:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5953C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lbu     v0, 0x0203(a2)             # 00000203
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80B59574
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B59584
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80B59594
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    b       lbl_80B595A8
    lh      v1, 0x0214(a2)             # 00000214
lbl_80B59574:
    sh      $zero, 0x0214(a2)          # 00000214
    sb      $zero, 0x0204(a2)          # 00000204
    b       lbl_80B59600
    sb      $zero, 0x0205(a2)          # 00000205
lbl_80B59584:
    sh      $zero, 0x0214(a2)          # 00000214
    sb      t6, 0x0204(a2)             # 00000204
    b       lbl_80B59600
    sb      $zero, 0x0205(a2)          # 00000205
lbl_80B59594:
    sh      $zero, 0x0214(a2)          # 00000214
    sb      $zero, 0x0204(a2)          # 00000204
    b       lbl_80B59600
    sb      t7, 0x0205(a2)             # 00000205
    lh      v1, 0x0214(a2)             # 00000214
lbl_80B595A8:
    bne     v1, $zero, lbl_80B595B8
    addiu   t8, v1, 0xFFFF             # t8 = FFFFFFFF
    b       lbl_80B595C0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B595B8:
    sh      t8, 0x0214(a2)             # 00000214
    lh      v0, 0x0214(a2)             # 00000214
lbl_80B595C0:
    bnel    v0, $zero, lbl_80B59604
    lw      $ra, 0x0014($sp)
    lbu     t9, 0x0204(a2)             # 00000204
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    addiu   t0, t9, 0x0001             # t0 = 00000001
    andi    t1, t0, 0x00FF             # t1 = 00000001
    slti    $at, t1, 0x0004
    bne     $at, $zero, lbl_80B59600
    sb      t0, 0x0204(a2)             # 00000204
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      v0, 0x0214(a2)             # 00000214
    sb      t2, 0x0204(a2)             # 00000204
lbl_80B59600:
    lw      $ra, 0x0014($sp)
lbl_80B59604:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B59610:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lwc1    $f0, 0x0158(s0)            # 00000158
    c.eq.s  $f2, $f0
    nop
    bc1tl   lbl_80B59718
    lw      $ra, 0x001C($sp)
    lw      t7, 0x0144(s0)             # 00000144
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x4930             # t6 = 06004930
    bnel    t6, t7, lbl_80B59718
    lw      $ra, 0x001C($sp)
    c.lt.s  $f2, $f0
    lui     $at, 0x4160                # $at = 41600000
    bc1fl   lbl_80B596BC
    c.lt.s  $f0, $f2
    mtc1    $at, $f4                   # $f4 = 14.00
    lwc1    $f6, 0x0154(s0)            # 00000154
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80B596BC
    c.lt.s  $f0, $f2
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a0, 0x8010                 # a0 = 80100000
    andi    t9, t8, 0x001F             # t9 = 00000000
    beq     t9, $at, lbl_80B596A4
    addiu   a0, a0, 0x4394             # a0 = 80104394
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38FD          # a1 = 000038FD
    mtc1    $zero, $f2                 # $f2 = 0.00
    b       lbl_80B596B8
    lwc1    $f0, 0x0158(s0)            # 00000158
lbl_80B596A4:
    addiu   a1, $zero, 0x38FD          # a1 = 000038FD
    jal     func_800C5264
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f0, 0x0158(s0)            # 00000158
lbl_80B596B8:
    c.lt.s  $f0, $f2
lbl_80B596BC:
    lui     $at, 0x3F80                # $at = 3F800000
    bc1fl   lbl_80B59718
    lw      $ra, 0x001C($sp)
    lwc1    $f0, 0x0154(s0)            # 00000154
    mtc1    $at, $f8                   # $f8 = 1.00
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f8, $f0
    nop
    bc1fl   lbl_80B596F4
    lui     $at, 0x4220                # $at = 42200000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x4220                # $at = 42200000
lbl_80B596F4:
    mtc1    $at, $f10                  # $f10 = 40.00
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f10, $f0
    nop
    bc1fl   lbl_80B59718
    lw      $ra, 0x001C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x38FD          # a1 = 000038FD
    lw      $ra, 0x001C($sp)
lbl_80B59718:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B59728:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    lw      t9, 0x002C($sp)
    lui     t2, %hi(var_80B5C010)      # t2 = 80B60000
    andi    t7, t6, 0x001F             # t7 = 00000000
    bne     t7, $zero, lbl_80B59754
    sll     t0, t9,  2
    b       lbl_80B59758
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B59754:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B59758:
    sll     t8, v1,  2
    subu    t8, t8, v1
    subu    t0, t0, t9
    sll     t0, t0,  3
    sll     t8, t8,  5
    addu    t1, t8, t0
    addiu   t2, t2, %lo(var_80B5C010)  # t2 = 80B5C010
    addu    v0, t1, t2
    lw      t3, 0x000C(v0)             # 0000000C
    lwc1    $f4, 0x0010(v0)            # 00000010
    lwc1    $f6, 0x0014(v0)            # 00000014
    lbu     a1, 0x0000(v0)             # 00000000
    lw      a2, 0x0004(v0)             # 00000004
    lw      a3, 0x0008(v0)             # 00000008
    sw      t3, 0x0010($sp)
    swc1    $f4, 0x0014($sp)
    jal     func_80B56DB0
    swc1    $f6, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B597B0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    andi    t7, t6, 0x001F             # t7 = 00000000
    bne     t7, $at, lbl_80B59810
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    lw      t8, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    and     t9, t8, $at
    sw      t9, 0x0004(s0)             # 00000004
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = 80B5BED8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f4                   # $f4 = -0.50
    b       lbl_80B5982C
    swc1    $f4, 0x0158(s0)            # 00000158
lbl_80B59810:
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = FFFFBED8
    jal     func_80027C98
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    nop
    swc1    $f6, 0x0158(s0)            # 00000158
lbl_80B5982C:
    jal     func_80B58694
    or      a0, s0, $zero              # a0 = 00000000
    lui     t1, %hi(func_80B5A580)     # t1 = 80B60000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, t1, %lo(func_80B5A580) # t1 = 80B5A580
    sh      t0, 0x025E(s0)             # 0000025E
    sb      $zero, 0x0201(s0)          # 00000201
    sb      $zero, 0x01FF(s0)          # 000001FF
    sw      t1, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B59864:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0158(s0)            # 00000158
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80B598CC
    lh      t8, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a0, 0x8010                 # a0 = 80100000
    andi    t7, t6, 0x001F             # t7 = 00000000
    beq     t7, $at, lbl_80B598BC
    addiu   a0, a0, 0x4394             # a0 = 80104394
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38FC          # a1 = 000038FC
    b       lbl_80B598CC
    lh      t8, 0x001C(s0)             # 0000001C
lbl_80B598BC:
    addiu   a1, $zero, 0x38FC          # a1 = 000038FC
    jal     func_800C5264
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    lh      t8, 0x001C(s0)             # 0000001C
lbl_80B598CC:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    andi    t9, t8, 0x001F             # t9 = 00000000
    bne     t9, $at, lbl_80B5991C
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    lw      a0, 0x002C($sp)
    addiu   a1, $zero, 0x1068          # a1 = 00001068
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = 80B5BED8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    b       lbl_80B59938
    swc1    $f8, 0x0158(s0)            # 00000158
lbl_80B5991C:
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = FFFFBED8
    jal     func_80027C98
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    swc1    $f10, 0x0158(s0)           # 00000158
lbl_80B59938:
    lui     t0, %hi(func_80B5A754)     # t0 = 80B60000
    addiu   t0, t0, %lo(func_80B5A754) # t0 = 80B5A754
    sw      t0, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B59958:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = 80B5BED8
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80027C98
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t7, %hi(func_80B5A754)     # t7 = 80B60000
    lwc1    $f4, 0x014C(a3)            # 0000014C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, t7, %lo(func_80B5A754) # t7 = 80B5A754
    sb      t6, 0x0201(a3)             # 00000201
    sw      t7, 0x0180(a3)             # 00000180
    swc1    $f0, 0x0158(a3)            # 00000158
    swc1    $f0, 0x0068(a3)            # 00000068
    swc1    $f4, 0x0154(a3)            # 00000154
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B599BC:
    sw      a1, 0x0004($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    lui     t2, %hi(func_80B5A9D0)     # t2 = 80B60000
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    andi    v0, v0, 0x001F             # v0 = 00000000
    beq     v0, $zero, lbl_80B599E0
    addiu   t2, t2, %lo(func_80B5A9D0) # t2 = 80B5A9D0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80B59A1C
lbl_80B599E0:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x01DA(a0)             # 000001DA
    lui     t7, 0x8012                 # t7 = 80120000
    lhu     t7, -0x4B16(t7)            # 8011B4EA
    lui     $at, %hi(var_80B5C1FC)     # $at = 80B60000
    andi    t8, t7, 0x4000             # t8 = 00000000
    beq     t8, $zero, lbl_80B59A10
    nop
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    b       lbl_80B59A2C
    swc1    $f4, 0x0068(a0)            # 00000068
lbl_80B59A10:
    lwc1    $f6, %lo(var_80B5C1FC)($at)
    b       lbl_80B59A2C
    swc1    $f6, 0x0068(a0)            # 00000068
lbl_80B59A1C:
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    nop
    swc1    $f8, 0x0068(a0)            # 00000068
lbl_80B59A2C:
    lw      t9, 0x0004(a0)             # 00000004
    lwc1    $f0, 0x0068(a0)            # 00000068
    lui     $at, 0x0100                # $at = 01000000
    or      t0, t9, $at                # t0 = 01000000
    add.s   $f16, $f0, $f0
    lui     $at, 0x44E1                # $at = 44E10000
    mtc1    $at, $f10                  # $f10 = 1800.00
    sw      t0, 0x0004(a0)             # 00000004
    sh      t1, 0x0582(a0)             # 00000582
    swc1    $f16, 0x0068(a0)           # 00000068
    sw      t2, 0x0180(a0)             # 00000180
    swc1    $f10, 0x00BC(a0)           # 000000BC
    jr      $ra
    nop


func_80B59A64:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    v0, v0, 0x001F             # v0 = 00000000
    beql    v0, $zero, lbl_80B59AD8
    sb      $zero, 0x01DA(s0)          # 000001DA
    beq     v0, $at, lbl_80B59AD4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B59AD8
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    beql    v0, $zero, lbl_80B59ADC
    lwl     t7, 0x0030(s0)             # 00000030
    b       lbl_80B59AD8
    sh      $zero, 0x01E8(v0)          # 000001E8
lbl_80B59AD4:
    sb      $zero, 0x01DA(s0)          # 000001DA
lbl_80B59AD8:
    lwl     t7, 0x0030(s0)             # 00000030
lbl_80B59ADC:
    lwr     t7, 0x0033(s0)             # 00000033
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t8, %hi(func_80B5ABA0)     # t8 = 80B60000
    swl     t7, 0x00B4(s0)             # 000000B4
    swr     t7, 0x00B7(s0)             # 000000B7
    lhu     t7, 0x0034(s0)             # 00000034
    addiu   t8, t8, %lo(func_80B5ABA0) # t8 = 80B5ABA0
    sh      $zero, 0x058C(s0)          # 0000058C
    sh      $zero, 0x0580(s0)          # 00000580
    sw      t8, 0x0180(s0)             # 00000180
    swc1    $f0, 0x00BC(s0)            # 000000BC
    swc1    $f0, 0x0068(s0)            # 00000068
    sh      t7, 0x00B8(s0)             # 000000B8
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B59B24:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    andi    t6, v0, 0x001F             # t6 = 00000000
    beql    t6, $at, lbl_80B59B54
    lw      t7, 0x009C(a3)             # 0000009C
    b       lbl_80B59BAC
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t7, 0x009C(a3)             # 0000009C
lbl_80B59B54:
    lui     $at, 0xBF80                # $at = BF800000
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_80B59B78
    mtc1    $at, $f0                   # $f0 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    b       lbl_80B59B80
    lwc1    $f4, 0x0024(a2)            # 00000024
    mtc1    $at, $f0                   # $f0 = 1.00
lbl_80B59B78:
    nop
    lwc1    $f4, 0x0024(a2)            # 00000024
lbl_80B59B80:
    andi    a1, v0, 0xFC00             # a1 = 00000000
    sra     a1, a1, 10
    add.s   $f6, $f4, $f0
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8002049C
    swc1    $f6, 0x0024(a2)            # 00000024
    beql    v0, $zero, lbl_80B59BAC
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80B59BAC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B59BAC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B59BBC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    andi    t7, t6, 0x001F             # t7 = 00000000
    bne     t7, $at, lbl_80B59BF0
    nop
    lh      t8, 0x0184(a3)             # 00000184
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    beq     t8, $at, lbl_80B59BF8
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
lbl_80B59BF0:
    b       lbl_80B59C2C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B59BF8:
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = 80B5BED8
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80027C98
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     t0, %hi(func_80B5A8EC)     # t0 = 80B60000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, t0, %lo(func_80B5A8EC) # t0 = 80B5A8EC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      $zero, 0x0184(a3)          # 00000184
    sb      $zero, 0x01FF(a3)          # 000001FF
    sh      t9, 0x025E(a3)             # 0000025E
    sw      t0, 0x0180(a3)             # 00000180
lbl_80B59C2C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B59C3C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    andi    t7, t6, 0x001F             # t7 = 00000000
    bne     t7, $zero, lbl_80B59C64
    nop
    lh      t8, 0x0184(a0)             # 00000184
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    t8, $at, lbl_80B59C70
    sh      $zero, 0x0184(a0)          # 00000184
lbl_80B59C64:
    b       lbl_80B59C8C
    or      v0, $zero, $zero           # v0 = 00000000
    sh      $zero, 0x0184(a0)          # 00000184
lbl_80B59C70:
    jal     func_80B597B0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t9, %hi(func_80B5A970)     # t9 = 80B60000
    addiu   t9, t9, %lo(func_80B5A970) # t9 = 80B5A970
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t9, 0x0180(a0)             # 00000180
lbl_80B59C8C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B59C9C:
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    andi    t7, t6, 0x001F             # t7 = 00000000
    bne     t7, $at, lbl_80B59CC4
    nop
    lh      t8, 0x0184(a0)             # 00000184
    lui     t9, %hi(func_80B5B1A0)     # t9 = 80B60000
    addiu   t9, t9, %lo(func_80B5B1A0) # t9 = 80B5B1A0
    bne     t8, $zero, lbl_80B59CCC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B59CC4:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B59CCC:
    sw      t9, 0x0180(a0)             # 00000180
    jr      $ra
    nop


func_80B59CD8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    t7, t6, 0x001F             # t7 = 00000000
    bne     t7, $at, lbl_80B59D18
    nop
    lb      t8, 0x0200(a0)             # 00000200
    lbu     t9, 0x0206(a0)             # 00000206
    slt     $at, t8, t9
    beq     $at, $zero, lbl_80B59D18
    nop
    jal     func_80B589C0
    nop
    bnel    v0, $zero, lbl_80B59D24
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B59D18:
    b       lbl_80B59D24
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B59D24:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B59D34:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x0184(a0)             # 00000184
    lui     $at, 0x3F80                # $at = 3F800000
    beq     t6, $zero, lbl_80B59D70
    nop
    lwc1    $f4, 0x0068(a0)            # 00000068
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     a2, 0x40D5                 # a2 = 40D50000
    ori     a2, a2, 0x5555             # a2 = 40D55555
    c.lt.s  $f4, $f6
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a3, $zero, $zero           # a3 = 00000000
    bc1f    lbl_80B59D78
    nop
lbl_80B59D70:
    b       lbl_80B59DB8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B59D78:
    jal     func_80B58AF0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B59DB4
    lw      a0, 0x0018($sp)
    lh      t7, 0x0580(a0)             # 00000580
    slti    $at, t7, 0x0009
    bne     $at, $zero, lbl_80B59DAC
    nop
    lh      t8, 0x058C(a0)             # 0000058C
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    bne     t8, $zero, lbl_80B59DAC
    nop
    sh      t9, 0x0580(a0)             # 00000580
lbl_80B59DAC:
    jal     func_80B59728
    or      a1, $zero, $zero           # a1 = 00000000
lbl_80B59DB4:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B59DB8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B59DC8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a2, $zero, 0x000D          # a2 = 0000000D
    andi    t7, t6, 0x001F             # t7 = 00000000
    bne     t7, $at, lbl_80B59EEC
    lui     t6, 0x0600                 # t6 = 06000000
    lhu     v0, 0x010E(a3)             # 0000010E
    addiu   a0, $zero, 0x3035          # a0 = 00003035
    addiu   $at, $zero, 0x3036         # $at = 00003036
    bne     a0, v0, lbl_80B59E10
    addiu   t6, t6, 0x0750             # t6 = 06000750
    lbu     t8, 0x01FC(a3)             # 000001FC
    beql    t8, $zero, lbl_80B59E28
    lw      t1, 0x0144(a3)             # 00000144
lbl_80B59E10:
    bnel    v0, $at, lbl_80B59E48
    addiu   $at, $zero, 0x3032         # $at = 00003032
    lbu     t9, 0x01FC(a3)             # 000001FC
    bnel    t9, $zero, lbl_80B59E48
    addiu   $at, $zero, 0x3032         # $at = 00003032
    lw      t1, 0x0144(a3)             # 00000144
lbl_80B59E28:
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t0, t0, 0x0D5C             # t0 = 06000D5C
    beql    t0, t1, lbl_80B59E48
    addiu   $at, $zero, 0x3032         # $at = 00003032
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    sb      $zero, 0x0203(a3)          # 00000203
    lhu     v0, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x3032         # $at = 00003032
lbl_80B59E48:
    bne     v0, $at, lbl_80B59E5C
    lw      v1, 0x0144(a3)             # 00000144
    lbu     t2, 0x01FC(a3)             # 000001FC
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     t2, $at, lbl_80B59E7C
lbl_80B59E5C:
    addiu   $at, $zero, 0x3033         # $at = 00003033
    beq     v0, $at, lbl_80B59E7C
    nop
    bne     a0, v0, lbl_80B59E98
    nop
    lbu     t3, 0x01FC(a3)             # 000001FC
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     t3, $at, lbl_80B59E98
lbl_80B59E7C:
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x0750             # t4 = 06000750
    beq     t4, v1, lbl_80B59E98
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   a2, $zero, 0x000B          # a2 = 0000000B
    sb      t5, 0x0203(a3)             # 00000203
    lw      v1, 0x0144(a3)             # 00000144
lbl_80B59E98:
    bne     t6, v1, lbl_80B59ED4
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lwc1    $f6, 0x0154(a3)            # 00000154
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x39EB          # a1 = 000039EB
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80B59ED8
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    sw      a2, 0x001C($sp)
    jal     func_80022FD0
    sw      a3, 0x0020($sp)
    lw      a2, 0x001C($sp)
    lw      a3, 0x0020($sp)
lbl_80B59ED4:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
lbl_80B59ED8:
    beq     a2, $at, lbl_80B59EEC
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    jal     func_80027C98
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = 80B5BED8
lbl_80B59EEC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B59EFC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    jal     func_8009D0F0
    lw      a0, 0x002C($sp)
    sh      v0, 0x058A(s0)             # 0000058A
    lw      a0, 0x002C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x002C($sp)
    lh      a1, 0x058A(s0)             # 0000058A
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      a0, 0x01F8(s0)             # 000001F8
    addiu   a1, s0, 0x049C             # a1 = 0000049C
    jal     func_800790B0
    sw      a1, 0x0020($sp)
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80063F00
    lw      a1, 0x0020($sp)
    addiu   v1, v0, 0x0E38             # v1 = 00000E38
    sll     a0, v1, 16
    sh      v1, 0x0026($sp)
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lwc1    $f8, 0x0024(s0)            # 00000024
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0490(s0)           # 00000490
    jal     func_80063684              # coss?
    lh      a0, 0x0026($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    mul.s   $f18, $f0, $f16
    lwc1    $f2, 0x002C(s0)            # 0000002C
    lwc1    $f12, 0x0028(s0)           # 00000028
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    add.s   $f8, $f12, $f6
    lwc1    $f10, 0x0024(s0)           # 00000024
    swc1    $f2, 0x04A4(s0)            # 000004A4
    add.s   $f4, $f18, $f2
    swc1    $f8, 0x0494(s0)            # 00000494
    swc1    $f10, 0x049C(s0)           # 0000049C
    add.s   $f18, $f12, $f16
    swc1    $f4, 0x0498(s0)            # 00000498
    lh      a1, 0x058A(s0)             # 0000058A
    addiu   a3, s0, 0x0490             # a3 = 00000490
    swc1    $f18, 0x04A0(s0)           # 000004A0
    lw      a2, 0x0020($sp)
    jal     func_8009D328
    lw      a0, 0x002C($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B59FFC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      t6, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8009D21C
    lh      a1, 0x058A(t6)             # 0000058A
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5A03C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x709F(t6)            # 800F8F61
    lui     v0, 0x8012                 # v0 = 80120000
    addu    v0, v0, t6
    lbu     v0, -0x59BC(v0)            # 8011A644
    slti    $at, v0, 0x0033
    bne     $at, $zero, lbl_80B5A0E0
    slti    $at, v0, 0x0037
    beql    $at, $zero, lbl_80B5A0E4
    lw      $ra, 0x0014($sp)
    lh      t7, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    t8, t7, 0x001F             # t8 = 00000000
    bnel    t8, $at, lbl_80B5A0E4
    lw      $ra, 0x0014($sp)
    lh      t9, 0x0184(a3)             # 00000184
    bnel    t9, $zero, lbl_80B5A0E4
    lw      $ra, 0x0014($sp)
    lh      v0, 0x0582(a3)             # 00000582
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    bne     v0, $zero, lbl_80B5A0AC
    addiu   t0, v0, 0xFFFF             # t0 = 8011FFFF
    b       lbl_80B5A0B4
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B5A0AC:
    sh      t0, 0x0582(a3)             # 00000582
    lh      v1, 0x0582(a3)             # 00000582
lbl_80B5A0B4:
    bnel    v1, $zero, lbl_80B5A0E4
    lw      $ra, 0x0014($sp)
    jal     func_80063BF0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x4394             # a0 = 80104394
    addiu   a1, $zero, 0x391C          # a1 = 0000391C
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    jal     func_800C5264
    sh      v0, 0x0582(a3)             # 00000582
lbl_80B5A0E0:
    lw      $ra, 0x0014($sp)
lbl_80B5A0E4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5A0F0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41E0                 # a3 = 41E00000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   t6, s0, 0x04A8             # t6 = 000004A8
    addiu   t7, s0, 0x0514             # t7 = 00000514
    addiu   t8, $zero, 0x0012          # t8 = 00000012
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, a2, 0xFEF0             # a2 = 0600FEF0
    sw      a1, 0x0034($sp)
    lw      a0, 0x0044($sp)
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a1, s0, 0x01AC             # a1 = 000001AC
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_80B5BCA4)      # a3 = 80B60000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_80B5BCA4)  # a3 = 80B5BCA4
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_80B5BCD0)      # a2 = 80B60000
    addiu   a2, a2, %lo(var_80B5BCD0)  # a2 = 80B5BCD0
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    andi    t0, t9, 0x001F             # t0 = 00000000
    addiu   t1, t0, 0xFFFD             # t1 = FFFFFFFD
    sltiu   $at, t1, 0x000B
    beq     $at, $zero, lbl_80B5A1D4
    sll     t1, t1,  2
    lui     $at, %hi(var_80B5C200)     # $at = 80B60000
    addu    $at, $at, t1
    lw      t1, %lo(var_80B5C200)($at)
    jr      t1
    nop
var_80B5A1B8:
    lw      t2, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t3, t2, $at
    addiu   $at, $zero, 0xFFDF         # $at = FFFFFFDF
    sw      t3, 0x0004(s0)             # 00000004
    and     t5, t3, $at
    sw      t5, 0x0004(s0)             # 00000004
lbl_80B5A1D4:
    jal     func_80B58484
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B584C0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = 80B5BED8
    lw      a0, 0x0034($sp)
    jal     func_80027C98
    or      a2, $zero, $zero           # a2 = 00000000
    lui     $at, 0xBF80                # $at = BF800000
    andi    t6, $zero, 0x00FF          # t6 = 00000000
    mtc1    $at, $f4                   # $f4 = -1.00
    mtc1    t6, $f6                    # $f6 = 0.00
    sb      $zero, 0x00C8(s0)          # 000000C8
    swc1    $f4, 0x006C(s0)            # 0000006C
    bgez    t6, lbl_80B5A228
    cvt.s.w $f8, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_80B5A228:
    lh      a1, 0x001C(s0)             # 0000001C
    lh      t7, 0x00B8(s0)             # 000000B8
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    andi    a1, a1, 0x03E0             # a1 = 00000000
    sra     a1, a1,  5
    swc1    $f8, 0x0210(s0)            # 00000210
    sb      $zero, 0x01FE(s0)          # 000001FE
    sb      $zero, 0x01FF(s0)          # 000001FF
    sb      $zero, 0x0201(s0)          # 00000201
    sb      $zero, 0x0202(s0)          # 00000202
    sb      $zero, 0x0200(s0)          # 00000200
    sh      t8, 0x025E(s0)             # 0000025E
    sll     a1, a1, 16
    sb      t7, 0x0206(s0)             # 00000206
    lw      a0, 0x0044($sp)
    sra     a1, a1, 16
    jal     func_80078F80
    addiu   a2, $zero, 0x001F          # a2 = 0000001F
    lh      a2, 0x001C(s0)             # 0000001C
    sw      v0, 0x01F8(s0)             # 000001F8
    andi    v1, a2, 0x001F             # v1 = 00000000
    sltiu   $at, v1, 0x000E
    beq     $at, $zero, lbl_80B5A550
    sll     t9, v1,  2
    lui     $at, %hi(var_80B5C22C)     # $at = 80B60000
    addu    $at, $at, t9
    lw      t9, %lo(var_80B5C22C)($at)
    jr      t9
    nop
var_80B5A29C:
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lui     t0, 0x8010                 # t0 = 80100000
    lw      t0, -0x740C(t0)            # 800F8BF4
    lw      t1, 0x00A4(a2)             # 8011A674
    and     t2, t0, t1
    bne     t2, $zero, lbl_80B5A2D0
    nop
    lw      t3, 0x0004(a2)             # 8011A5D4
    bne     t3, $zero, lbl_80B5A2D0
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5A2D0:
    lui     t4, %hi(func_80B5A580)     # t4 = 80B60000
    addiu   t4, t4, %lo(func_80B5A580) # t4 = 80B5A580
    b       lbl_80B5A55C
    sw      t4, 0x0180(s0)             # 00000180
var_80B5A2E0:
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lw      t5, 0x0004(a2)             # 8011A5D4
    lui     t6, 0x8010                 # t6 = 80100000
    beq     t5, $zero, lbl_80B5A30C
    nop
    lw      t6, -0x73C4(t6)            # 800F8C3C
    lw      t7, 0x00A4(a2)             # 8011A674
    and     t8, t6, t7
    bnel    t8, $zero, lbl_80B5A318
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5A30C:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5A318:
    jal     func_80B59958
    lw      a1, 0x0044($sp)
    b       lbl_80B5A560
    lw      $ra, 0x002C($sp)
var_80B5A328:
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lhu     t9, 0x0F18(a2)             # 8011B4E8
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     t1, %hi(var_80B5BD04)      # t1 = 80B60000
    andi    t0, t9, 0x0200             # t0 = 00000000
    beql    t0, $zero, lbl_80B5A3D4
    sll     t0, v1,  2
    lw      a0, 0x01F8(s0)             # 000001F8
    jal     func_800790B0
    sw      a1, 0x0030($sp)
    lw      a1, 0x0030($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lw      t2, 0x0000(a1)             # 00000000
    lui     v0, 0x8010                 # v0 = 80100000
    lui     t9, %hi(func_80B5A580)     # t9 = 80B60000
    sw      t2, 0x0008(s0)             # 00000008
    lw      t1, 0x0004(a1)             # 00000004
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t9, t9, %lo(func_80B5A580) # t9 = 80B5A580
    sw      t1, 0x000C(s0)             # 0000000C
    lw      t2, 0x0008(a1)             # 00000008
    sw      t2, 0x0010(s0)             # 00000010
    lw      t3, 0x00A4(a2)             # 8011A674
    lw      v0, -0x740C(v0)            # 800F8BF4
    and     t4, v0, t3
    bne     t4, $zero, lbl_80B5A3C8
    nop
    lbu     t5, -0x733E(t5)            # 800F8CC2
    lhu     t7, 0x009C(a2)             # 8011A66C
    or      a0, s0, $zero              # a0 = 00000000
    sllv    t6, v0, t5
    and     t8, t6, t7
    beq     t8, $zero, lbl_80B5A3C8
    nop
    jal     func_80B59958
    lw      a1, 0x0044($sp)
    b       lbl_80B5A560
    lw      $ra, 0x002C($sp)
lbl_80B5A3C8:
    b       lbl_80B5A55C
    sw      t9, 0x0180(s0)             # 00000180
    sll     t0, v1,  2
lbl_80B5A3D4:
    addu    t0, t0, v1
    sll     t0, t0,  1
    addu    t1, t1, t0
    lh      t1, %lo(var_80B5BD04)(t1)
    lui     $at, %hi(var_80B5C264)     # $at = 80B60000
    lwc1    $f4, %lo(var_80B5C264)($at)
    mtc1    t1, $f16                   # $f16 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f18, $f16
    mul.s   $f6, $f18, $f4
    trunc.w.s $f10, $f6
    mfc1    t3, $f10
    nop
    sh      t3, 0x01EE(s0)             # 000001EE
    jal     func_80B599BC
    lw      a1, 0x0044($sp)
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    b       lbl_80B5A55C
    sb      t4, 0x01FF(s0)             # 000001FF
var_80B5A420:
    sll     t5, v1,  2
    addu    t5, t5, v1
    sll     t5, t5,  1
    lui     t6, %hi(var_80B5BD04)      # t6 = 80B60000
    addu    t6, t6, t5
    lh      t6, %lo(var_80B5BD04)(t6)
    lui     $at, %hi(var_80B5C268)     # $at = 80B60000
    lwc1    $f18, %lo(var_80B5C268)($at)
    mtc1    t6, $f8                    # $f8 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f16, $f8
    mul.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    sh      t8, 0x01EE(s0)             # 000001EE
    jal     func_80B599BC
    lw      a1, 0x0044($sp)
    b       lbl_80B5A560
    lw      $ra, 0x002C($sp)
var_80B5A470:
    andi    a1, a2, 0xFC00             # a1 = 00000000
    sra     a1, a1, 10
    jal     func_8002049C
    lw      a0, 0x0044($sp)
    beq     v0, $zero, lbl_80B5A498
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5A560
    lw      $ra, 0x002C($sp)
lbl_80B5A498:
    lui     t0, %hi(func_80B5A580)     # t0 = 80B60000
    addiu   t0, t0, %lo(func_80B5A580) # t0 = 80B5A580
    sb      t9, 0x01FF(s0)             # 000001FF
    b       lbl_80B5A55C
    sw      t0, 0x0180(s0)             # 00000180
var_80B5A4AC:
    lw      t1, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      $zero, 0x00C0(s0)          # 000000C0
    and     t2, t1, $at
    sw      t2, 0x0004(s0)             # 00000004
    lui     t3, 0x8010                 # t3 = 80100000
    lbu     t3, -0x709F(t3)            # 800F8F61
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    addu    t4, a2, t3
    lbu     v0, 0x0074(t4)             # 00000074
    lui     t7, %hi(func_80B5A580)     # t7 = 80B60000
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    slti    $at, v0, 0x0033
    bne     $at, $zero, lbl_80B5A4FC
    addiu   t7, t7, %lo(func_80B5A580) # t7 = 80B5A580
    slti    $at, v0, 0x0037
    beq     $at, $zero, lbl_80B5A4FC
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t5, 0x0203(s0)             # 00000203
lbl_80B5A4FC:
    sb      $zero, 0x01BD(s0)          # 000001BD
    sb      t6, 0x01BE(s0)             # 000001BE
    b       lbl_80B5A55C
    sw      t7, 0x0180(s0)             # 00000180
var_80B5A50C:
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lhu     t8, 0x0F14(a2)             # 8011B4E4
    addiu   a1, s0, 0x0024             # a1 = 00000024
    andi    t9, t8, 0x0800             # t9 = 00000000
    beq     t9, $zero, lbl_80B5A550
    nop
    lw      a0, 0x01F8(s0)             # 000001F8
    jal     func_800790B0
    sw      a1, 0x0030($sp)
    lw      a1, 0x0030($sp)
    lw      t1, 0x0000(a1)             # 00000000
    sw      t1, 0x0008(s0)             # 00000008
    lw      t0, 0x0004(a1)             # 00000004
    sw      t0, 0x000C(s0)             # 0000000C
    lw      t1, 0x0008(a1)             # 00000008
    sw      t1, 0x0010(s0)             # 00000010
lbl_80B5A550:
    lui     t2, %hi(func_80B5A580)     # t2 = 80B60000
    addiu   t2, t2, %lo(func_80B5A580) # t2 = 80B5A580
    sw      t2, 0x0180(s0)             # 00000180
lbl_80B5A55C:
    lw      $ra, 0x002C($sp)
lbl_80B5A560:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80B5A570:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B5A580:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    andi    t7, t6, 0x001F             # t7 = 00000000
    sb      t7, 0x0037($sp)
    jal     func_8008D6A8
    lw      a1, 0x014C(s0)             # 0000014C
    beql    v0, $zero, lbl_80B5A640
    lwc1    $f2, 0x0154(s0)            # 00000154
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      v0, 0x003C($sp)
    andi    t9, t8, 0x001F             # t9 = 00000000
    bne     t9, $at, lbl_80B5A628
    or      a0, s0, $zero              # a0 = 00000000
    lh      t0, 0x07A0(v0)             # 000007A0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t1, t0,  2
    addu    t2, v0, t1
    jal     func_8007D85C
    lw      a0, 0x0790(t2)             # 00000790
    sll     a0, v0, 16
    sw      v0, 0x0030($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0xC350          # a1 = FFFFC350
    lh      a0, 0x0032($sp)
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_8007D738
    sw      a0, 0x002C($sp)
    lw      a0, 0x002C($sp)
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    b       lbl_80B5A634
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80B5A628:
    jal     func_80B59728
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80B5A634:
    nop
    swc1    $f4, 0x0158(s0)            # 00000158
    lwc1    $f2, 0x0154(s0)            # 00000154
lbl_80B5A640:
    lbu     t5, 0x0037($sp)
    lui     t7, %hi(var_80B5BD04)      # t7 = 80B60000
    trunc.w.s $f6, $f2
    sll     t6, t5,  2
    addu    t6, t6, t5
    sll     t6, t6,  1
    mfc1    t4, $f6
    addu    t7, t7, t6
    lbu     t0, 0x0037($sp)
    bne     t4, $zero, lbl_80B5A698
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, %lo(var_80B5BD04)(t7)
    lui     $at, %hi(var_80B5C26C)     # $at = 80B60000
    lwc1    $f16, %lo(var_80B5C26C)($at)
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    t9, $f4
    b       lbl_80B5A6F8
    sh      t9, 0x01EE(s0)             # 000001EE
lbl_80B5A698:
    lwc1    $f16, 0x0148(s0)           # 00000148
    sll     t1, t0,  2
    addu    t1, t1, t0
    div.s   $f18, $f2, $f16
    sll     t1, t1,  1
    lui     t2, %hi(var_80B5BD04)      # t2 = 80B60000
    addu    t2, t2, t1
    lh      t2, %lo(var_80B5BD04)(t2)
    lui     $at, %hi(var_80B5C270)     # $at = 80B60000
    lwc1    $f8, %lo(var_80B5C270)($at)
    mtc1    t2, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80B5C274)     # $at = 80B60000
    cvt.s.w $f0, $f6
    lwc1    $f6, %lo(var_80B5C274)($at)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f4, $f10, $f18
    nop
    mul.s   $f8, $f0, $f6
    add.s   $f16, $f4, $f8
    trunc.w.s $f10, $f16
    mfc1    t4, $f10
    nop
    sh      t4, 0x01EE(s0)             # 000001EE
lbl_80B5A6F8:
    jal     func_80B59B24
    lw      a1, 0x003C($sp)
    beq     v0, $zero, lbl_80B5A714
    or      a0, s0, $zero              # a0 = 00000000
    sb      $zero, 0x01FF(s0)          # 000001FF
    jal     func_80B59864
    lw      a1, 0x003C($sp)
lbl_80B5A714:
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    andi    t6, t5, 0x001F             # t6 = 00000000
    beql    t6, $at, lbl_80B5A744
    lw      $ra, 0x0024($sp)
    jal     func_80B589C0
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B5A740
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B59864
    lw      a1, 0x003C($sp)
lbl_80B5A740:
    lw      $ra, 0x0024($sp)
lbl_80B5A744:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B5A754:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      v1, 0x001C(s0)             # 0000001C
    lbu     t6, 0x0201(s0)             # 00000201
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    v1, v1, 0x001F             # v1 = 00000000
    bne     t6, $at, lbl_80B5A7D8
    andi    v1, v1, 0x00FF             # v1 = 00000000
    jal     func_80B5A03C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B59DC8
    lw      a1, 0x002C($sp)
    jal     func_80B59458
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B59C3C
    lw      a1, 0x002C($sp)
    bnel    v0, $zero, lbl_80B5A8DC
    lw      $ra, 0x001C($sp)
    jal     func_80B59C9C
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_80B5A8DC
    lw      $ra, 0x001C($sp)
    jal     func_80B59BBC
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80B5A8B0
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5A8DC
    lw      $ra, 0x001C($sp)
lbl_80B5A7D8:
    lw      a1, 0x014C(s0)             # 0000014C
    sb      v1, 0x0027($sp)
    jal     func_8008D6A8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80B5A848
    lbu     v1, 0x0027($sp)
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x001F             # t8 = 00000000
    bne     t8, $at, lbl_80B5A814
    nop
    lw      t9, 0x0004(s0)             # 00000004
    ori     t0, t9, 0x0001             # t0 = 00000001
    sw      t0, 0x0004(s0)             # 00000004
lbl_80B5A814:
    jal     func_80B590D4
    sb      v1, 0x0027($sp)
    lbu     v1, 0x0027($sp)
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     t3, %hi(var_80B5BD04)      # t3 = 80B60000
    sll     t2, v1,  2
    addu    t2, t2, v1
    sll     t2, t2,  1
    sb      t1, 0x0201(s0)             # 00000201
    addu    t3, t3, t2
    lh      t3, %lo(var_80B5BD04)(t3)
    b       lbl_80B5A8AC
    sh      t3, 0x01EE(s0)             # 000001EE
lbl_80B5A848:
    lwc1    $f6, 0x0154(s0)            # 00000154
    lwc1    $f8, 0x014C(s0)            # 0000014C
    sll     t4, v1,  2
    addu    t4, t4, v1
    div.s   $f10, $f6, $f8
    sll     t4, t4,  1
    lui     t5, %hi(var_80B5BD04)      # t5 = 80B60000
    addu    t5, t5, t4
    lh      t5, %lo(var_80B5BD04)(t5)
    lui     $at, %hi(var_80B5C278)     # $at = 80B60000
    lwc1    $f16, %lo(var_80B5C278)($at)
    mtc1    t5, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80B5C27C)     # $at = 80B60000
    lwc1    $f6, %lo(var_80B5C27C)($at)
    cvt.s.w $f0, $f4
    mul.s   $f18, $f0, $f16
    nop
    mul.s   $f4, $f18, $f10
    nop
    mul.s   $f8, $f0, $f6
    add.s   $f16, $f4, $f8
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    sh      t7, 0x01EE(s0)             # 000001EE
lbl_80B5A8AC:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5A8B0:
    jal     func_80B59224
    lw      a1, 0x002C($sp)
    bnel    v0, $zero, lbl_80B5A8DC
    lw      $ra, 0x001C($sp)
    jal     func_80B589C0
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B5A8D8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B597B0
    lw      a1, 0x002C($sp)
lbl_80B5A8D8:
    lw      $ra, 0x001C($sp)
lbl_80B5A8DC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B5A8EC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     $at, 0x4700                # $at = 47000000
    lwc1    $f0, 0x014C(a2)            # 0000014C
    mtc1    $at, $f6                   # $f6 = 32768.00
    lwc1    $f4, 0x0154(a2)            # 00000154
    sw      a2, 0x0018($sp)
    div.s   $f8, $f6, $f0
    mul.s   $f2, $f4, $f8
    trunc.w.s $f10, $f2
    mfc1    a0, $f10
    nop
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lw      a0, 0x0018($sp)
    swc1    $f0, 0x0068(a0)            # 00000068
    jal     func_80B588E4
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80B5A960
    lw      a2, 0x0018($sp)
    lb      t7, 0x0200(a2)             # 00000200
    or      a0, a2, $zero              # a0 = 00000000
    bnel    t7, $zero, lbl_80B5A964
    lw      $ra, 0x0014($sp)
    jal     func_80B59958
    lw      a1, 0x001C($sp)
lbl_80B5A960:
    lw      $ra, 0x0014($sp)
lbl_80B5A964:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5A970:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      a1, 0x014C(a2)             # 0000014C
    sw      a2, 0x0018($sp)
    jal     func_8008D6A8
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80B5A9C0
    lw      a2, 0x0018($sp)
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_80B59728
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x0158(a0)            # 00000158
    jal     func_80B599BC
    lw      a1, 0x001C($sp)
lbl_80B5A9C0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5A9D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    andi    t7, t6, 0x001F             # t7 = 00000000
    bne     t7, $at, lbl_80B5AA0C
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f0                   # $f0 = 1000.00
    lwc1    $f6, 0x008C(a0)            # 0000008C
    mul.s   $f4, $f0, $f0
    c.lt.s  $f4, $f6
    nop
    bc1t    lbl_80B5AA50
    nop
lbl_80B5AA0C:
    lh      v0, 0x0582(a0)             # 00000582
    lui     $at, 0x3F00                # $at = 3F000000
    bne     v0, $zero, lbl_80B5AA24
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    b       lbl_80B5AA2C
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B5AA24:
    sh      t8, 0x0582(a0)             # 00000582
    lh      v1, 0x0582(a0)             # 00000582
lbl_80B5AA2C:
    bne     v1, $zero, lbl_80B5AA50
    nop
    lwc1    $f8, 0x0068(a0)            # 00000068
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     t9, %hi(func_80B5AA68)     # t9 = 80B60000
    addiu   t9, t9, %lo(func_80B5AA68) # t9 = 80B5AA68
    mul.s   $f16, $f8, $f10
    sw      t9, 0x0180(a0)             # 00000180
    swc1    $f16, 0x0068(a0)           # 00000068
lbl_80B5AA50:
    jal     func_80B59728
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5AA68:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_80B59D34
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B5AB8C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lui     a2, 0x4100                 # a2 = 41000000
    jal     func_80B58AF0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80B5AAD4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B59CD8
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B5AAC8
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(func_80B5AC3C)     # t6 = 80B60000
    addiu   t6, t6, %lo(func_80B5AC3C) # t6 = 80B5AC3C
    b       lbl_80B5AB8C
    sw      t6, 0x0180(s0)             # 00000180
lbl_80B5AAC8:
    jal     func_80B59728
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5AAD4:
    jal     func_80B588E4
    lw      a1, 0x0024($sp)
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    v1, v1, 0x001F             # v1 = 00000000
    beq     v1, a0, lbl_80B5AB28
    nop
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v1, $at, lbl_80B5AB50
    nop
    bne     v0, a0, lbl_80B5AB50
    nop
    lb      t7, 0x0200(s0)             # 00000200
    or      a0, s0, $zero              # a0 = 00000000
    bne     t7, $zero, lbl_80B5AB50
    nop
    jal     func_80B59A64
    lw      a1, 0x0024($sp)
    b       lbl_80B5AB90
    lw      $ra, 0x001C($sp)
lbl_80B5AB28:
    bne     v0, $at, lbl_80B5AB50
    nop
    lb      t8, 0x0200(s0)             # 00000200
    lw      a1, 0x0024($sp)
    bne     a0, t8, lbl_80B5AB50
    nop
    jal     func_80B59A64
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5AB90
    lw      $ra, 0x001C($sp)
lbl_80B5AB50:
    jal     func_80B59180
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a1, $f0
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    lui     a3, 0x3F19                 # a3 = 3F190000
    ori     a3, a3, 0x999A             # a3 = 3F19999A
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    jal     func_80064280
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lwl     t0, 0x0030(s0)             # 00000030
    lwr     t0, 0x0033(s0)             # 00000033
    swl     t0, 0x00B4(s0)             # 000000B4
    swr     t0, 0x00B7(s0)             # 000000B7
    lhu     t0, 0x0034(s0)             # 00000034
    sh      t0, 0x00B8(s0)             # 000000B8
lbl_80B5AB8C:
    lw      $ra, 0x001C($sp)
lbl_80B5AB90:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B5ABA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lui     a2, 0x4100                 # a2 = 41000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80B58AF0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B5AC2C
    lw      a0, 0x0018($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80B59728
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lh      t6, 0x058C(a0)             # 0000058C
    bnel    t6, $zero, lbl_80B5AC30
    lw      $ra, 0x0014($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    v0, v0, 0x001F             # v0 = 00000000
    beq     v0, $zero, lbl_80B5AC14
    nop
    bne     v0, $at, lbl_80B5AC24
    lui     t8, %hi(func_80B5A580)     # t8 = 80B60000
    lui     t7, %hi(func_80B5B0B0)     # t7 = 80B60000
    addiu   t7, t7, %lo(func_80B5B0B0) # t7 = 80B5B0B0
    sb      $zero, 0x0202(a0)          # 00000202
    b       lbl_80B5AC2C
    sw      t7, 0x0180(a0)             # 00000180
lbl_80B5AC14:
    jal     func_80B59864
    lw      a1, 0x001C($sp)
    b       lbl_80B5AC30
    lw      $ra, 0x0014($sp)
lbl_80B5AC24:
    addiu   t8, t8, %lo(func_80B5A580) # t8 = FFFFA580
    sw      t8, 0x0180(a0)             # 00000180
lbl_80B5AC2C:
    lw      $ra, 0x0014($sp)
lbl_80B5AC30:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5AC3C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_80B59D34
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B5ACF0
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F19                 # a2 = 3F190000
    lui     a3, 0x3F4C                 # a3 = 3F4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3F4CCCCD
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    jal     func_80064280
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f0, 0x0068(s0)            # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f4, $f0
    nop
    bc1fl   lbl_80B5ACA8
    trunc.w.s $f6, $f0
    jal     func_80B59728
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lwc1    $f0, 0x0068(s0)            # 00000068
    trunc.w.s $f6, $f0
lbl_80B5ACA8:
    mfc1    t7, $f6
    nop
    bnel    t7, $zero, lbl_80B5ACF4
    lw      $ra, 0x001C($sp)
    lh      t8, 0x0032(s0)             # 00000032
    lbu     t1, 0x01FE(s0)             # 000001FE
    or      a0, s0, $zero              # a0 = 00000000
    xori    t9, t8, 0x8000             # t9 = FFFF8000
    sh      t9, 0x0032(s0)             # 00000032
    lh      t0, 0x0032(s0)             # 00000032
    xori    t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x01FE(s0)             # 000001FE
    sh      t0, 0x00B6(s0)             # 000000B6
    jal     func_80B58868
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B599BC
    lw      a1, 0x0024($sp)
lbl_80B5ACF0:
    lw      $ra, 0x001C($sp)
lbl_80B5ACF4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B5AD04:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BB0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80B5AD34
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80B5AD74)     # t6 = 80B60000
    addiu   t6, t6, %lo(func_80B5AD74) # t6 = 80B5AD74
    b       lbl_80B5AD64
    sw      t6, 0x0180(a0)             # 00000180
lbl_80B5AD34:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lwc1    $f0, 0x0094(a0)            # 00000094
    lwc1    $f4, 0x0090(a0)            # 00000090
    lw      a2, 0x0584(a0)             # 00000584
    abs.s   $f0, $f0
    add.s   $f6, $f4, $f2
    lw      a1, 0x0024($sp)
    add.s   $f8, $f0, $f2
    mfc1    a3, $f6
    jal     func_80022BD4
    swc1    $f8, 0x0010($sp)
lbl_80B5AD64:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B5AD74:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80B5AE6C
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    lw      a0, 0x0024($sp)
    beql    v0, $zero, lbl_80B5AE6C
    lw      $ra, 0x001C($sp)
    lw      v0, 0x0584(s0)             # 00000584
    addiu   $at, $zero, 0x0026         # $at = 00000026
    sh      $zero, 0x0184(s0)          # 00000184
    beq     v0, $at, lbl_80B5ADF0
    addiu   $at, $zero, 0x002C         # $at = 0000002C
    beq     v0, $at, lbl_80B5AE0C
    addiu   $at, $zero, 0x0033         # $at = 00000033
    beq     v0, $at, lbl_80B5AE48
    addiu   $at, $zero, 0x0034         # $at = 00000034
    beq     v0, $at, lbl_80B5AE48
    lui     t0, %hi(func_80B5A754)     # t0 = 80B60000
    addiu   $at, $zero, 0x0057         # $at = 00000057
    beq     v0, $at, lbl_80B5AE34
    addiu   t0, t0, %lo(func_80B5A754) # t0 = 80B5A754
    b       lbl_80B5AE68
    sw      t0, 0x0180(s0)             # 00000180
lbl_80B5ADF0:
    jal     func_80063414
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B59958
    lw      a1, 0x0024($sp)
    b       lbl_80B5AE6C
    lw      $ra, 0x001C($sp)
lbl_80B5AE0C:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0F18(v0)             # 8011B4E8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    ori     t7, t6, 0x0200             # t7 = 00000200
    jal     func_80B59958
    sh      t7, 0x0F18(v0)             # 8011B4E8
    b       lbl_80B5AE6C
    lw      $ra, 0x001C($sp)
lbl_80B5AE34:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    b       lbl_80B5AE64
    sb      t8, 0x003E(v0)             # 8011A60E
lbl_80B5AE48:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B597B0
    lw      a1, 0x0024($sp)
    lui     t9, %hi(func_80B5A970)     # t9 = 80B60000
    addiu   t9, t9, %lo(func_80B5A970) # t9 = 80B5A970
    b       lbl_80B5AE68
    sw      t9, 0x0180(s0)             # 00000180
lbl_80B5AE64:
    sw      t0, 0x0180(s0)             # 00000180
lbl_80B5AE68:
    lw      $ra, 0x001C($sp)
lbl_80B5AE6C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B5AE7C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lbu     v0, 0x0202(s0)             # 00000202
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = 80B5BED8
    beq     v0, $zero, lbl_80B5AEC0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80B5AF50
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B5B018
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    b       lbl_80B5B0A0
    lw      $ra, 0x0024($sp)
lbl_80B5AEC0:
    jal     func_80027C98
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f0                   # $f0 = 60.00
    lwc1    $f4, 0x014C(s0)            # 0000014C
    lw      t6, 0x0004(s0)             # 00000004
    lh      t8, 0x00B6(s0)             # 000000B6
    add.s   $f6, $f4, $f0
    lbu     t4, 0x0202(s0)             # 00000202
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    add.s   $f8, $f6, $f0
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    and     t7, t6, $at
    addiu   t9, t8, 0x05B0             # t9 = 000005B0
    trunc.w.s $f10, $f8
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sw      t7, 0x0004(s0)             # 00000004
    sh      t9, 0x00B6(s0)             # 000000B6
    mfc1    t2, $f10
    sh      t0, 0x025E(s0)             # 0000025E
    sb      t3, 0x0203(s0)             # 00000203
    sb      $zero, 0x01FC(s0)          # 000001FC
    sb      t5, 0x0202(s0)             # 00000202
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    jal     func_800C557C
    sh      t2, 0x0582(s0)             # 00000582
    lw      a0, 0x0034($sp)
    addiu   a1, $zero, 0x105E          # a1 = 0000105E
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    b       lbl_80B5B0A0
    lw      $ra, 0x0024($sp)
lbl_80B5AF50:
    lh      v1, 0x0582(s0)             # 00000582
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x4394             # a0 = 80104394
    bne     v1, $zero, lbl_80B5AF6C
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80B5AF78
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B5AF6C:
    sh      t6, 0x0582(s0)             # 00000582
    lh      v1, 0x0582(s0)             # 00000582
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B5AF78:
    beq     v0, $zero, lbl_80B5AFC8
    addiu   a1, $zero, 0x391D          # a1 = 0000391D
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    beq     v1, $at, lbl_80B5AF98
    lw      t7, 0x0034($sp)
    addiu   $at, $zero, 0x0078         # $at = 00000078
    bnel    v1, $at, lbl_80B5B0A0
    lw      $ra, 0x0024($sp)
lbl_80B5AF98:
    lh      t8, 0x07A0(t7)             # 000007A0
    sll     t9, t8,  2
    addu    t0, t7, t9
    jal     func_80049DB4
    lw      a0, 0x0790(t0)             # 00000790
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x4394             # a0 = 80104394
    addiu   a1, $zero, 0x28B5          # a1 = 000028B5
    jal     func_800C5264
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    b       lbl_80B5B0A0
    lw      $ra, 0x0024($sp)
lbl_80B5AFC8:
    jal     func_800C5264
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = 80B5BED8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lw      a0, 0x0034($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x305A          # a1 = 0000305A
    lbu     t2, 0x0202(s0)             # 00000202
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sb      t1, 0x0203(s0)             # 00000203
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x0202(s0)             # 00000202
    addiu   a0, $zero, 0x007F          # a0 = 0000007F
    jal     func_800C557C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    b       lbl_80B5B0A0
    lw      $ra, 0x0024($sp)
lbl_80B5B018:
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0028($sp)
    beql    v0, $zero, lbl_80B5B034
    lw      a0, 0x0034($sp)
    sb      $zero, 0x0203(s0)          # 00000203
    lw      a0, 0x0034($sp)
lbl_80B5B034:
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B5B09C
    lw      a0, 0x0028($sp)
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = 80B5BED8
    jal     func_80027C98
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t4, 0x0004(s0)             # 00000004
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f18, 0x014C(s0)           # 0000014C
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    ori     t5, t4, 0x0001             # t5 = 00000001
    sw      t5, 0x0004(s0)             # 00000004
    sh      t6, 0x025E(s0)             # 0000025E
    swc1    $f16, 0x0158(s0)           # 00000158
    swc1    $f18, 0x0154(s0)           # 00000154
    lw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B56FC8
    addiu   a2, $zero, 0x0026          # a2 = 00000026
    lui     t8, %hi(func_80B5AD04)     # t8 = 80B60000
    addiu   t8, t8, %lo(func_80B5AD04) # t8 = 80B5AD04
    sw      t8, 0x0180(s0)             # 00000180
    sb      $zero, 0x0202(s0)          # 00000202
lbl_80B5B09C:
    lw      $ra, 0x0024($sp)
lbl_80B5B0A0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B5B0B0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0024($sp)
    lw      a0, 0x0024($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    sw      t7, 0x001C($sp)
    lbu     v0, 0x0202(a3)             # 00000202
    beq     v0, $zero, lbl_80B5B0F4
    nop
    beql    v0, $at, lbl_80B5B138
    lw      a0, 0x0024($sp)
    b       lbl_80B5B194
    lw      $ra, 0x0014($sp)
lbl_80B5B0F4:
    jal     func_800DD464
    sw      a3, 0x0020($sp)
    bne     v0, $zero, lbl_80B5B190
    lw      a3, 0x0020($sp)
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x3031          # a1 = 00003031
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800DCE14
    sw      a3, 0x0020($sp)
    lw      t9, 0x001C($sp)
    lw      a3, 0x0020($sp)
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sh      t8, 0x0110(t9)             # 00000110
    lbu     t0, 0x0202(a3)             # 00000202
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x0202(a3)             # 00000202
    lw      a0, 0x0024($sp)
lbl_80B5B138:
    sw      a3, 0x0020($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B5B160
    lw      a3, 0x0020($sp)
    lw      t3, 0x001C($sp)
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    b       lbl_80B5B190
    sh      t2, 0x0110(t3)             # 00000110
lbl_80B5B160:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x0F18(v0)             # 8011B4E8
    lui     t7, %hi(func_80B5A580)     # t7 = 80B60000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    ori     t5, t4, 0x1000             # t5 = 00001000
    sh      t5, 0x0F18(v0)             # 8011B4E8
    addiu   t7, t7, %lo(func_80B5A580) # t7 = 80B5A580
    sh      t6, 0x025E(a3)             # 0000025E
    sb      $zero, 0x0201(a3)          # 00000201
    sb      $zero, 0x01FF(a3)          # 000001FF
    sw      t7, 0x0180(a3)             # 00000180
lbl_80B5B190:
    lw      $ra, 0x0014($sp)
lbl_80B5B194:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B5B1A0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lui     t9, %hi(var_80B5C0DC)      # t9 = 80B60000
    addiu   t9, t9, %lo(var_80B5C0DC)  # t9 = 80B5C0DC
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   t8, $sp, 0x002C            # t8 = FFFFFFF4
    sw      t7, 0x0034($sp)
    lw      t1, 0x0000(t9)             # 80B5C0DC
    sw      t1, 0x0000(t8)             # FFFFFFF4
    lhu     t1, 0x0004(t9)             # 80B5C0E0
    sh      t1, 0x0004(t8)             # FFFFFFF8
    lbu     t2, 0x0202(s0)             # 00000202
    sltiu   $at, t2, 0x0005
    beq     $at, $zero, lbl_80B5B4B8
    sll     t2, t2,  2
    lui     $at, %hi(var_80B5C280)     # $at = 80B60000
    addu    $at, $at, t2
    lw      t2, %lo(var_80B5C280)($at)
    jr      t2
    nop
var_80B5B200:
    lw      a0, 0x003C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B5B4B8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B59EFC
    lw      a1, 0x003C($sp)
    lw      t4, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t3, $zero, 0x0037          # t3 = 00000037
    lui     a1, %hi(var_80B5BED8)      # a1 = 80B60000
    addu    $at, $at, t4
    sb      t3, 0x03DC($at)            # 000103DC
    addiu   a1, a1, %lo(var_80B5BED8)  # a1 = 80B5BED8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t5, 0x0200(s0)             # 00000200
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B58988
    swc1    $f4, 0x0158(s0)            # 00000158
    lwl     t7, 0x0030(s0)             # 00000030
    lwr     t7, 0x0033(s0)             # 00000033
    lw      v1, 0x0034($sp)
    lui     $at, 0x4000                # $at = 40000000
    swl     t7, 0x00B4(s0)             # 000000B4
    swr     t7, 0x00B7(s0)             # 000000B7
    lhu     t7, 0x0034(s0)             # 00000034
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f8                   # $f8 = 2.00
    addiu   t8, $zero, 0x003C          # t8 = 0000003C
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    sh      t8, 0x0582(s0)             # 00000582
    sh      t7, 0x00B8(s0)             # 000000B8
    swc1    $f6, 0x006C(s0)            # 0000006C
    swc1    $f8, 0x0068(s0)            # 00000068
    lw      t0, 0x0000(a1)             # FFFFFFF4
    lbu     t3, 0x0202(s0)             # 00000202
    lh      t7, 0x0032(s0)             # 00000032
    swl     t0, 0x018C(s0)             # 0000018C
    swr     t0, 0x018F(s0)             # 0000018F
    lhu     t0, 0x0004(a1)             # FFFFFFF8
    addiu   t5, t3, 0x0001             # t5 = 00000001
    addiu   t6, t5, 0x0001             # t6 = 00000002
    sh      t0, 0x0190(s0)             # 00000190
    lw      t2, 0x0000(a1)             # FFFFFFF4
    swl     t2, 0x0192(s0)             # 00000192
    swr     t2, 0x0195(s0)             # 00000195
    lhu     t2, 0x0004(a1)             # FFFFFFF8
    sb      t5, 0x0202(s0)             # 00000202
    sb      t6, 0x0202(s0)             # 00000202
    sh      t2, 0x0196(s0)             # 00000196
    sh      t7, 0x0032(v1)             # 00000032
    lh      t8, 0x0032(s0)             # 00000032
    sh      t8, 0x00B6(v1)             # 000000B6
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f10                  # $f10 = -30.00
    lwc1    $f18, 0x0024(s0)           # 00000024
    lw      t9, 0x0034($sp)
    mul.s   $f16, $f0, $f10
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0024(t9)            # 00000024
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f6                   # $f6 = -30.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lw      t0, 0x0034($sp)
    mul.s   $f8, $f0, $f6
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x002C(t0)           # 0000002C
    jal     func_800218EC
    lw      a0, 0x003C($sp)
    jal     func_800C69A0
    addiu   a0, $zero, 0x0051          # a0 = 00000051
    b       lbl_80B5B4BC
    lw      $ra, 0x001C($sp)
var_80B5B354:
    lh      v0, 0x0582(s0)             # 00000582
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_80B5B36C
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    b       lbl_80B5B378
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B5B36C:
    sh      t1, 0x0582(s0)             # 00000582
    lh      v0, 0x0582(s0)             # 00000582
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B5B378:
    beql    v1, $zero, lbl_80B5B3B8
    lh      v0, 0x001C(s0)             # 0000001C
    bgez    v0, lbl_80B5B394
    andi    t2, v0, 0x0007             # t2 = 00000000
    beq     t2, $zero, lbl_80B5B394
    nop
    addiu   t2, t2, 0xFFF8             # t2 = FFFFFFF8
lbl_80B5B394:
    bne     t2, $zero, lbl_80B5B3A4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38B8          # a1 = 000038B8
lbl_80B5B3A4:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5B4BC
    lw      $ra, 0x001C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80B5B3B8:
    mtc1    $zero, $f18                # $f18 = 0.00
    sh      $zero, 0x0582(s0)          # 00000582
    andi    v0, v0, 0xFC00             # v0 = 00000000
    sra     v0, v0, 10
    beq     v0, $at, lbl_80B5B408
    swc1    $f18, 0x0068(s0)           # 00000068
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B5B408
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80B5B408
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80B5B408
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_80B5B408
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beql    v0, $at, lbl_80B5B40C
    lbu     t5, 0x0202(s0)             # 00000202
    lbu     t3, 0x0202(s0)             # 00000202
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x0202(s0)             # 00000202
lbl_80B5B408:
    lbu     t5, 0x0202(s0)             # 00000202
lbl_80B5B40C:
    addiu   t6, t5, 0x0001             # t6 = 00000001
    b       lbl_80B5B4B8
    sb      t6, 0x0202(s0)             # 00000202
var_80B5B418:
    lh      t7, 0x0582(s0)             # 00000582
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0582(s0)             # 00000582
    lh      v0, 0x0582(s0)             # 00000582
    bgez    v0, lbl_80B5B43C
    andi    t9, v0, 0x0007             # t9 = 00000000
    beq     t9, $zero, lbl_80B5B43C
    nop
    addiu   t9, t9, 0xFFF8             # t9 = FFFFFFF8
lbl_80B5B43C:
    bne     t9, $zero, lbl_80B5B458
    slti    $at, v0, 0x000A
    beq     $at, $zero, lbl_80B5B458
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38B8          # a1 = 000038B8
    lh      v0, 0x0582(s0)             # 00000582
lbl_80B5B458:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v0, $at, lbl_80B5B470
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x28DB          # a1 = 000028DB
    lh      v0, 0x0582(s0)             # 00000582
lbl_80B5B470:
    slti    $at, v0, 0x002D
    bne     $at, $zero, lbl_80B5B4B8
    lw      a0, 0x003C($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8
    addiu   a3, $zero, 0x28DC          # a3 = 000028DC
var_80B5B48C:
    jal     func_800D6218
    lw      a0, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B59FFC
    lw      a1, 0x003C($sp)
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5B4B8:
    lw      $ra, 0x001C($sp)
lbl_80B5B4BC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B5B4CC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B58F68
    addiu   a1, s0, 0x0210             # a1 = 00000210
    jal     func_80B59610
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80B59074
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x01EE(s0)             # 000001EE
    lh      t7, 0x01EC(s0)             # 000001EC
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f16                   # $f16 = 0.00
    mtc1    $at, $f8                   # $f8 = 0.50
    cvt.s.w $f6, $f4
    lui     $at, %hi(var_80B5C294)     # $at = 80B60000
    lwc1    $f4, %lo(var_80B5C294)($at)
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sw      t8, 0x0014($sp)
    cvt.s.w $f18, $f16
    mul.s   $f10, $f6, $f8
    mtc1    $zero, $f8                 # $f8 = 0.00
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f8, 0x0010($sp)
    mul.s   $f6, $f18, $f4
    mfc1    a2, $f10
    mfc1    a3, $f6
    jal     func_80021E6C
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B586AC
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lbu     t0, 0x0201(s0)             # 00000201
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    bne     t0, $at, lbl_80B5B5A0
    addiu   a1, s0, 0x0216             # a1 = 00000216
    addiu   a2, s0, 0x023A             # a2 = 0000023A
    jal     func_80027D30
    addiu   a3, $zero, 0x0012          # a3 = 00000012
lbl_80B5B5A0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B58E8C
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80B5953C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B58538
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80B5B5D4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    lui     t7, %hi(var_80B5C0E4)      # t7 = 80B60000
    addiu   t7, t7, %lo(var_80B5C0E4)  # t7 = 80B5C0E4
    lw      t9, 0x0000(t7)             # 80B5C0E4
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80B5C0E8
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80B5C0EC
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t0, 0x003C($sp)
    lw      a0, 0x0000(t0)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x003C($sp)
    lw      a0, 0x0000(t3)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0020($sp)
    lw      a1, 0x0020($sp)
    lw      a2, 0x0028($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0xBD80             # t6 = 0600BD80
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(a2)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      a1, 0x0038($sp)
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B5B694:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    lui     t7, %hi(var_80B5C0F0)      # t7 = 80B60000
    addiu   t7, t7, %lo(var_80B5C0F0)  # t7 = 80B5C0F0
    lw      t9, 0x0000(t7)             # 80B5C0F0
    addiu   t6, $sp, 0x0038            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 80B5C0F4
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80B5C0F8
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      t0, 0x004C($sp)
    lw      a0, 0x0000(t0)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v0, 0x0048($sp)
    lui     t1, %hi(func_80B5AC3C)     # t1 = 80B60000
    addiu   t1, t1, %lo(func_80B5AC3C) # t1 = 80B5AC3C
    lw      t2, 0x0180(v0)             # 00000180
    bnel    t1, t2, lbl_80B5B704
    lwc1    $f0, 0x0068(v0)            # 00000068
    mtc1    $zero, $f0                 # $f0 = 0.00
    b       lbl_80B5B708
    trunc.w.s $f4, $f0
    lwc1    $f0, 0x0068(v0)            # 00000068
lbl_80B5B704:
    trunc.w.s $f4, $f0
lbl_80B5B708:
    lw      t3, 0x004C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    lh      a2, 0x00B8(v0)             # 000000B8
    mfc1    t6, $f4
    lw      t4, 0x009C(t3)             # 0000009C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sll     t7, t6, 16
    sra     t8, t7, 16
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    sll     t9, t9,  4
    subu    t9, t9, t8
    sll     t9, t9,  3
    multu   t4, t9
    mflo    a0
    sll     a0, a0, 16
    jal     func_800AAF00
    sra     a0, a0, 16
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x004C($sp)
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0028($sp)
    lw      a1, 0x0028($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0xC140             # t6 = 0600C140
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      a1, 0x0048($sp)
    addiu   a0, $sp, 0x0038            # a0 = FFFFFFF0
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B5B7D0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bnel    s0, $at, lbl_80B5B8AC
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0x452F                # $at = 452F0000
    mtc1    $at, $f12                  # $f12 = 2800.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t7, 0x004C($sp)
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    lwl     t9, 0x018C(t7)             # 0000018C
    lwr     t9, 0x018F(t7)             # 0000018F
    mtc1    $at, $f8                   # $f8 = 32768.00
    lui     $at, %hi(var_80B5C298)     # $at = 80B60000
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lhu     t9, 0x0190(t7)             # 00000190
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      t9, 0x0004(t6)             # FFFFFFF8
    lh      t0, 0x002E($sp)
    lwc1    $f16, %lo(var_80B5C298)($at)
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AA9E0
    nop
    lh      t1, 0x002C($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t1, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80B5C29C)     # $at = 80B60000
    lwc1    $f10, %lo(var_80B5C29C)($at)
    cvt.s.w $f4, $f18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AAD4C
    nop
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0xC52F                # $at = C52F0000
    mtc1    $at, $f12                  # $f12 = -2800.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   $at, $zero, 0x000A         # $at = 0000000A
lbl_80B5B8AC:
    bne     s0, $at, lbl_80B5B930
    lw      t3, 0x004C($sp)
    lwl     t5, 0x0192(t3)             # 00000192
    lwr     t5, 0x0195(t3)             # 00000195
    addiu   t2, $sp, 0x002C            # t2 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    sw      t5, 0x0000(t2)             # FFFFFFF4
    lhu     t5, 0x0196(t3)             # 00000196
    mtc1    $at, $f4                   # $f4 = 32768.00
    lui     $at, %hi(var_80B5C2A0)     # $at = 80B60000
    sh      t5, 0x0004(t2)             # FFFFFFF8
    lh      t6, 0x002E($sp)
    lwc1    $f8, %lo(var_80B5C2A0)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    div.s   $f6, $f18, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lh      t7, 0x002C($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t7, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80B5C2A4)     # $at = 80B60000
    lwc1    $f6, %lo(var_80B5C2A4)($at)
    cvt.s.w $f16, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AA9E0
    nop
lbl_80B5B930:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     s0, $at, lbl_80B5B94C
    lw      t8, 0x004C($sp)
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     s0, $at, lbl_80B5B94C
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     s0, $at, lbl_80B5B9D4
lbl_80B5B94C:
    sll     t9, s0,  1
    addu    v1, t8, t9
    lh      a0, 0x0216(v1)             # 00000216
    jal     func_800636C4              # sins?
    sw      v1, 0x0024($sp)
    lw      v0, 0x0048($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lh      t0, 0x0002(v0)             # 00000002
    lw      v1, 0x0024($sp)
    mul.s   $f18, $f0, $f16
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f4, $f10, $f18
    trunc.w.s $f6, $f4
    mfc1    t2, $f6
    nop
    sh      t2, 0x0002(v0)             # 00000002
    jal     func_80063684              # coss?
    lh      a0, 0x023A(v1)             # 0000023A
    lw      v0, 0x0048($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lh      t3, 0x0004(v0)             # 00000004
    mul.s   $f18, $f0, $f10
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t5, $f6
    nop
    sh      t5, 0x0004(v0)             # 00000004
lbl_80B5B9D4:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B5B9EC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a0, 0x0028($sp)
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF0
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lui     t6, %hi(var_80B5C0FC)      # t6 = 80B60000
    addiu   t6, t6, %lo(var_80B5C0FC)  # t6 = 80B5C0FC
    lw      t8, 0x0000(t6)             # 80B5C0FC
    addiu   $at, $zero, 0x0011         # $at = 00000011
    sw      t8, 0x0000(a0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80B5C100
    sw      t7, 0x0004(a0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80B5C104
    bne     a1, $at, lbl_80B5BA38
    sw      t8, 0x0008(a0)             # FFFFFFF8
    lw      a1, 0x0038($sp)
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80B5BA38:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B5BA48:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0064($sp)
    lui     t7, %hi(var_80B5C108)      # t7 = 80B60000
    addiu   t7, t7, %lo(var_80B5C108)  # t7 = 80B5C108
    lw      t9, 0x0000(t7)             # 80B5C108
    lw      t8, 0x0004(t7)             # 80B5C10C
    addiu   t6, $sp, 0x004C            # t6 = FFFFFFEC
    sw      t9, 0x0000(t6)             # FFFFFFEC
    sw      t8, 0x0004(t6)             # FFFFFFF0
    lw      t8, 0x000C(t7)             # 80B5C114
    lw      t9, 0x0008(t7)             # 80B5C110
    lui     t7, %hi(var_80B5C118)      # t7 = 80B60000
    addiu   t7, t7, %lo(var_80B5C118)  # t7 = 80B5C118
    sw      t8, 0x000C(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lw      t8, 0x0004(t7)             # 80B5C11C
    lw      t9, 0x0000(t7)             # 80B5C118
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFE4
    or      a0, s0, $zero              # a0 = 00000000
    sw      t8, 0x0004(t6)             # FFFFFFE8
    jal     func_80B569B4
    sw      t9, 0x0000(t6)             # FFFFFFE4
    jal     func_800AA6EC
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B56AC0
    lw      a1, 0x0064($sp)
    jal     func_800AA724
    nop
    lw      v0, 0x0180(s0)             # 00000180
    lui     t6, %hi(func_80B5A580)     # t6 = 80B60000
    addiu   t6, t6, %lo(func_80B5A580) # t6 = 80B5A580
    bne     t6, v0, lbl_80B5BB1C
    lui     t7, %hi(func_80B5AA68)     # t7 = 80B60000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f4, 0x0158(s0)            # 00000158
    c.eq.s  $f0, $f4
    nop
    bc1f    lbl_80B5BB1C
    nop
    lwc1    $f6, 0x0154(s0)            # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f0, $f6
    nop
    bc1f    lbl_80B5BB1C
    nop
    jal     func_80B5B5D4
    lw      a1, 0x0064($sp)
    b       lbl_80B5BC44
    lw      $ra, 0x002C($sp)
lbl_80B5BB1C:
    addiu   t7, t7, %lo(func_80B5AA68) # t7 = FFFFAA68
    beq     t7, v0, lbl_80B5BB40
    lui     t8, %hi(func_80B5AC3C)     # t8 = 80B60000
    addiu   t8, t8, %lo(func_80B5AC3C) # t8 = 80B5AC3C
    beq     t8, v0, lbl_80B5BB40
    lui     t9, %hi(func_80B5A9D0)     # t9 = 80B60000
    addiu   t9, t9, %lo(func_80B5A9D0) # t9 = 80B5A9D0
    bne     t9, v0, lbl_80B5BB54
    lw      t6, 0x0064($sp)
lbl_80B5BB40:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B5B694
    lw      a1, 0x0064($sp)
    b       lbl_80B5BC44
    lw      $ra, 0x002C($sp)
lbl_80B5BB54:
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0040($sp)
    lui     t4, 0x00FF                 # t4 = 00FF0000
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0C38             # t5 = 80120C38
    ori     t4, t4, 0xFFFF             # t4 = 00FFFFFF
    lw      t3, 0x0040($sp)
    lui     $ra, 0x8000                # $ra = 80000000
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t3)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lbu     t9, 0x0204(s0)             # 00000204
    sll     t6, t9,  2
    addu    t1, $sp, t6
    lw      t1, 0x004C(t1)             # 0000004C
    sll     t8, t1,  4
    srl     t9, t8, 28
    sll     t6, t9,  2
    addu    t8, t5, t6
    lw      t9, 0x0000(t8)             # DB060020
    and     t7, t1, t4
    addu    t6, t7, t9
    addu    t8, t6, $ra
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t3)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lbu     t6, 0x0205(s0)             # 00000205
    sll     t8, t6,  2
    addu    t2, $sp, t8
    lw      t2, 0x0044(t2)             # 00000044
    sll     t9, t2,  4
    srl     t6, t9, 28
    sll     t8, t6,  2
    addu    t9, t5, t8
    lw      t6, 0x0000(t9)             # DB060024
    and     t7, t2, t4
    addu    t8, t7, t6
    addu    t9, t8, $ra
    sw      t9, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t7, %hi(func_80B5B7D0)     # t7 = 80B60000
    lui     t6, %hi(func_80B5B9EC)     # t6 = 80B60000
    addiu   t6, t6, %lo(func_80B5B9EC) # t6 = 80B5B9EC
    addiu   t7, t7, %lo(func_80B5B7D0) # t7 = 80B5B7D0
    sw      t7, 0x0010($sp)
    sw      t6, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x0064($sp)
    lw      $ra, 0x002C($sp)
lbl_80B5BC44:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80B5BC60: .word \
0x04058EE0, 0x04058AE0, 0x040586E0, 0x040582E0, \
0x04057EE0, 0x04057AE0, 0x040576E0, 0x040572E0
var_80B5BC80: .word 0x00000000, 0x00000000, 0x00000000
var_80B5BC8C: .word 0x00000000, 0x00000000, 0x00000000
var_80B5BC98: .word 0x00000000, 0x3E99999A, 0x00000000
var_80B5BCA4: .word \
0x0A000939, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000008, 0x00000000, 0x00000100, \
0x00280041, 0x00000000, 0x00000000
var_80B5BCD0: .word 0x00000000, 0x00000000, 0xFF000000
var_80B5BCDC: .word 0x01AE0400, 0x00000039, 0x00C90000, 0x00000590
.word func_80B5A0F0
.word func_80B5A570
.word func_80B5B4CC
.word func_80B5BA48
var_80B5BCFC: .byte 0x00, 0x00
var_80B5BCFE: .byte 0x00, 0x00
var_80B5BD00: .word 0x00000044
var_80B5BD04: .word \
0x00940000, 0x00000000, 0x00180034, 0x00000140, \
0x017C0190, 0x00780000, 0x00000000, 0x001E0044, \
0x00000000, 0x0000002E, 0x005A0000, 0x00000000, \
0x001E0044, 0x00000000, 0x0000001E, 0x00440000, \
0x00000000, 0x001E0044, 0x00000000, 0x0000001E, \
0x00440000, 0x00000000, 0x001E0044, 0x00000000, \
0x0000001E, 0x00440000, 0x00000000, 0x001E0044, \
0x00000000, 0x0000001E, 0x00440000, 0x00000000, \
0x001E0044
var_80B5BD88: .word \
0x41F00000, 0x3CD4FDF4, 0x06000000, 0x42700000, \
0x41C00000, 0x3C03126F, 0x06000000, 0x41F00000, \
0x41E00000, 0x3E23D70A, 0x05000000, 0x43BE0000, \
0x41E00000, 0x3C23D70A, 0x07000000, 0x42200000, \
0x41F00000, 0x3C75C28F, 0x06000000, 0x41F00000, \
0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41E00000, 0x3C23D70A, 0x06000000, 0x41F00000
var_80B5BE68: .word \
0x42A00000, 0x42A00000, 0xC1200000, 0xC1200000, \
0x44480000, 0x44480000, 0x00000000, 0x00000000, \
0x41A00000, 0x42200000, 0x41A00000, 0x41A00000, \
0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000, \
0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000, \
0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000, \
0x41A00000, 0x41A00000, 0x41A00000, 0x41A00000
var_80B5BED8: .word \
0x06004930, 0x00000000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06004930, 0x00000000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000, \
0x060029A8, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1000000, 0x06010590, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000, \
0x06003768, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1000000, 0x060038E4, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0xC1000000, \
0x06002D80, 0x3F800000, 0x00000000, 0xBF800000, \
0x02000000, 0xC1000000, 0x0600161C, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000, \
0x06001A00, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1000000, 0x060021D0, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000, \
0x06004930, 0x00000000, 0x00000000, 0xBF800000, \
0x01000000, 0xC1000000, 0x06000750, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000, \
0x06000D5C, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1000000
var_80B5C010: .word \
0x0C000000, 0x3E4CCCCD, 0x3E4CCCCD, 0x00000001, \
0x41900000, 0x00000000, 0x0C000000, 0x3DCCCCCD, \
0x3E4CCCCD, 0x0000000C, 0x41D00000, 0x00000000, \
0x0C000000, 0x3DCCCCCD, 0x3E99999A, 0x00000004, \
0x41200000, 0x00000000, 0x0C000000, 0x3E4CCCCD, \
0x3E4CCCCD, 0x00000001, 0x41900000, 0x00000000, \
0x0C000000, 0x3F000000, 0x3ECCCCCD, 0x00000003, \
0x42280000, 0x00000000, 0x0C000000, 0x3F000000, \
0x3ECCCCCD, 0x00000003, 0x42280000, 0x00000000, \
0x0C000000, 0x3F000000, 0x3ECCCCCD, 0x00000003, \
0x42280000, 0x00000000, 0x0C000000, 0x3F000000, \
0x3ECCCCCD, 0x00000003, 0x42280000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000
var_80B5C0DC: .word 0x00000000, 0x00000000
var_80B5C0E4: .word 0x00000000, 0x00000000, 0x00000000
var_80B5C0F0: .word 0x00000000, 0x00000000, 0x00000000
var_80B5C0FC: .word 0x44160000, 0x00000000, 0x00000000
var_80B5C108: .word 0x0600DA80, 0x0600CE80, 0x0600D280, 0x0600D680
var_80B5C118: .word 0x0600DE80, 0x0600E680

.section .rodata

var_80B5C120: .word 0x3E4CCCCD
var_80B5C124: .word 0x3ECCCCCD
var_80B5C128: .word var_80B570F4
.word var_80B570D4
.word var_80B570BC
.word var_80B570CC
.word var_80B570C4
.word lbl_80B570FC
.word lbl_80B570FC
.word var_80B570E4
.word lbl_80B570FC
.word var_80B570DC
.word var_80B570EC
var_80B5C154: .word var_80B58188
.word var_80B58198
.word var_80B581A8
.word var_80B581B8
.word var_80B581C8
.word var_80B581D8
.word var_80B581E8
.word var_80B581F8
.word var_80B58208
.word var_80B58218
.word var_80B58228
.word var_80B58238
.word var_80B58248
.word var_80B58258
var_80B5C18C: .word var_80B582A0
.word var_80B582B0
.word var_80B582C0
.word var_80B582D0
.word var_80B582E0
.word var_80B582F0
.word var_80B58300
.word var_80B58310
.word var_80B58320
.word var_80B58330
.word var_80B58340
.word var_80B58350
.word var_80B58360
.word var_80B58370
var_80B5C1C4: .word var_80B59108
.word lbl_80B59164
.word var_80B59124
.word lbl_80B59164
.word lbl_80B59164
.word lbl_80B59164
.word var_80B59108
.word var_80B59108
.word lbl_80B59164
.word lbl_80B59164
.word var_80B59108
.word lbl_80B59164
.word var_80B59108
var_80B5C1F8: .word 0x40666667
var_80B5C1FC: .word 0x40666667
var_80B5C200: .word var_80B5A1B8
.word var_80B5A1B8
.word var_80B5A1B8
.word var_80B5A1B8
.word var_80B5A1B8
.word var_80B5A1B8
.word var_80B5A1B8
.word var_80B5A1B8
.word var_80B5A1B8
.word var_80B5A1B8
.word var_80B5A1B8
var_80B5C22C: .word var_80B5A420
.word var_80B5A328
.word var_80B5A4AC
.word var_80B5A470
.word var_80B5A50C
.word var_80B5A420
.word lbl_80B5A550
.word var_80B5A29C
.word var_80B5A29C
.word var_80B5A29C
.word var_80B5A29C
.word var_80B5A29C
.word lbl_80B5A550
.word var_80B5A2E0
var_80B5C264: .word 0x3F19999A
var_80B5C268: .word 0x3F19999A
var_80B5C26C: .word 0x3F19999A
var_80B5C270: .word 0x3ECCCCCD
var_80B5C274: .word 0x3F19999A
var_80B5C278: .word 0x3ECCCCCD
var_80B5C27C: .word 0x3F19999A
var_80B5C280: .word var_80B5B200
.word lbl_80B5B4B8
.word var_80B5B354
.word var_80B5B418
.word var_80B5B48C
var_80B5C294: .word 0x3F19999A
var_80B5C298: .word 0x40490FDB
var_80B5C29C: .word 0x40490FDB
var_80B5C2A0: .word 0x40490FDB
var_80B5C2A4: .word 0x40490FDB, 0x00000000, 0x00000000

