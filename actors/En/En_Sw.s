.section .text
func_80945770:
    lwc1    $f4, 0x0004(a0)            # 00000004
    lwc1    $f6, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x0008(a0)           # 00000008
    lwc1    $f16, 0x0004(a1)           # 00000004
    mul.s   $f8, $f4, $f6
    nop
    mul.s   $f18, $f10, $f16
    sub.s   $f4, $f8, $f18
    swc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f10, 0x0000(a1)           # 00000000
    lwc1    $f6, 0x0008(a0)            # 00000008
    lwc1    $f8, 0x0000(a0)            # 00000000
    lwc1    $f18, 0x0008(a1)           # 00000008
    mul.s   $f16, $f6, $f10
    nop
    mul.s   $f4, $f8, $f18
    sub.s   $f6, $f16, $f4
    swc1    $f6, 0x0004(a2)            # 00000004
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f10, 0x0000(a0)           # 00000000
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f16, 0x0004(a0)           # 00000004
    mul.s   $f18, $f10, $f8
    nop
    mul.s   $f6, $f16, $f4
    sub.s   $f10, $f18, $f6
    swc1    $f10, 0x0008(a2)           # 00000008
    jr      $ra
    nop


func_809457E4:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0018($sp)
    lui     $at, %hi(var_80948AE0)     # $at = 80950000
    lwc1    $f0, %lo(var_80948AE0)($at)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0078(s0)             # 00000078
    lh      t6, 0x0008(a1)             # 00000008
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0044($sp)
    lh      t7, 0x000A(a1)             # 0000000A
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0048($sp)
    lh      t8, 0x000C(a1)             # 0000000C
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f0
    swc1    $f10, 0x004C($sp)
    lwc1    $f16, 0x0354(s0)           # 00000354
    lwc1    $f6, 0x0358(s0)            # 00000358
    mul.s   $f4, $f16, $f8
    nop
    mul.s   $f16, $f18, $f6
    lwc1    $f18, 0x035C(s0)           # 0000035C
    mul.s   $f6, $f10, $f18
    add.s   $f8, $f4, $f16
    jal     func_800CD890
    add.s   $f12, $f8, $f6
    addiu   a0, s0, 0x0354             # a0 = 00000354
    swc1    $f0, 0x0034($sp)
    sw      a0, 0x0028($sp)
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    jal     func_80945770
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFE8
    lwc1    $f12, 0x0034($sp)
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    jal     func_800AC280
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a0, s0, 0x0360             # a0 = 00000360
    sw      a0, 0x0024($sp)
    jal     func_800AB958
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    addiu   t9, $sp, 0x0038            # t9 = FFFFFFE8
    lw      a0, 0x0024($sp)
    lw      t1, 0x0000(t9)             # FFFFFFE8
    addiu   a2, s0, 0x036C             # a2 = 0000036C
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    sw      t1, 0x0000(a0)             # 00000000
    lw      t0, 0x0004(t9)             # FFFFFFEC
    sw      t0, 0x0004(a0)             # 00000004
    lw      t1, 0x0008(t9)             # FFFFFFF0
    sw      t1, 0x0008(a0)             # 00000008
    jal     func_80945770
    sw      a2, 0x0020($sp)
    jal     func_800A5510
    lw      a0, 0x0020($sp)
    lui     $at, %hi(var_80948AE4)     # $at = 80950000
    lwc1    $f4, %lo(var_80948AE4)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80945908
    mtc1    $at, $f14                  # $f14 = 1.00
    b       lbl_809459D0
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f14                  # $f14 = 1.00
lbl_80945908:
    lwc1    $f16, 0x036C(s0)           # 0000036C
    lwc1    $f18, 0x0370(s0)           # 00000370
    div.s   $f2, $f14, $f0
    lwc1    $f6, 0x0374(s0)            # 00000374
    addiu   t3, $sp, 0x0044            # t3 = FFFFFFF4
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a0, s0, 0x03C8             # a0 = 000003C8
    addiu   a1, s0, 0x0030             # a1 = 00000030
    or      a2, $zero, $zero           # a2 = 00000000
    mul.s   $f10, $f16, $f2
    nop
    mul.s   $f8, $f18, $f2
    nop
    mul.s   $f4, $f6, $f2
    swc1    $f10, 0x036C(s0)           # 0000036C
    swc1    $f8, 0x0370(s0)            # 00000370
    swc1    $f4, 0x0374(s0)            # 00000374
    lw      t5, 0x0000(t3)             # FFFFFFF4
    lw      t2, 0x0028($sp)
    sw      t5, 0x0000(t2)             # 00000000
    lw      t4, 0x0004(t3)             # FFFFFFF8
    sw      t4, 0x0004(t2)             # 00000004
    lw      t5, 0x0008(t3)             # FFFFFFFC
    sw      t5, 0x0008(t2)             # 00000008
    lwc1    $f16, 0x0360(s0)           # 00000360
    lwc1    $f10, 0x0364(s0)           # 00000364
    lwc1    $f18, 0x0368(s0)           # 00000368
    swc1    $f16, 0x03C8(s0)           # 000003C8
    swc1    $f10, 0x03CC(s0)           # 000003CC
    swc1    $f18, 0x03D0(s0)           # 000003D0
    lwc1    $f8, 0x0354(s0)            # 00000354
    lwc1    $f6, 0x0358(s0)            # 00000358
    lwc1    $f4, 0x035C(s0)            # 0000035C
    lwc1    $f16, 0x036C(s0)           # 0000036C
    lwc1    $f10, 0x0370(s0)           # 00000370
    lwc1    $f18, 0x0374(s0)           # 00000374
    swc1    $f14, 0x0404(s0)           # 00000404
    swc1    $f12, 0x03D4(s0)           # 000003D4
    swc1    $f12, 0x03E4(s0)           # 000003E4
    swc1    $f12, 0x03F4(s0)           # 000003F4
    swc1    $f12, 0x03F8(s0)           # 000003F8
    swc1    $f12, 0x03FC(s0)           # 000003FC
    swc1    $f12, 0x0400(s0)           # 00000400
    swc1    $f8, 0x03D8(s0)            # 000003D8
    swc1    $f6, 0x03DC(s0)            # 000003DC
    swc1    $f4, 0x03E0(s0)            # 000003E0
    swc1    $f16, 0x03E8(s0)           # 000003E8
    swc1    $f10, 0x03EC(s0)           # 000003EC
    jal     func_800ABF50
    swc1    $f18, 0x03F0(s0)           # 000003F0
lbl_809459D0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_809459E4:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0040($sp)
    lw      a0, 0x0040($sp)
    lw      t0, 0x0050($sp)
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFFC
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    sw      a0, 0x0034($sp)
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    sw      $zero, 0x0020($sp)
    jal     func_800308B4
    sw      t0, 0x0024($sp)
    bne     v0, $zero, lbl_80945A3C
    lw      a0, 0x0034($sp)
    b       lbl_80945A84
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80945A3C:
    lw      t1, 0x0050($sp)
    lw      a1, 0x003C($sp)
    jal     func_8003444C
    lw      a2, 0x0000(t1)             # 00000000
    andi    t2, v0, 0x0030             # t2 = 00000000
    beq     t2, $zero, lbl_80945A60
    lw      a0, 0x0034($sp)
    b       lbl_80945A84
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80945A60:
    lw      t3, 0x0050($sp)
    lw      a1, 0x003C($sp)
    jal     func_80034700
    lw      a2, 0x0000(t3)             # 00000000
    beql    v0, $zero, lbl_80945A84
    lw      v0, 0x003C($sp)
    b       lbl_80945A84
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v0, 0x003C($sp)
lbl_80945A84:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80945A94:
    addiu   $sp, $sp, 0xFF50           # $sp -= 0xB0
    lui     $at, 0x4190                # $at = 41900000
    sw      s7, 0x0044($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s2, 0x0030($sp)
    sw      s0, 0x0028($sp)
    mtc1    $at, $f0                   # $f0 = 18.00
    or      s0, a0, $zero              # s0 = 00000000
    addiu   s2, $sp, 0x0090            # s2 = FFFFFFE0
    addiu   s4, $sp, 0x0078            # s4 = FFFFFFC8
    addiu   s5, $sp, 0x0084            # s5 = FFFFFFD4
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s8, 0x0048($sp)
    sw      s6, 0x0040($sp)
    sw      s3, 0x0034($sp)
    sw      s1, 0x002C($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a2, 0x00B8($sp)
    addiu   v0, $sp, 0x0058            # v0 = FFFFFFA8
    sw      $zero, 0x0064($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x041C(s0)             # 0000041C
    addiu   v1, s0, 0x0024             # v1 = 00000024
    lw      t8, 0x0000(v1)             # 00000024
    addiu   t3, $sp, 0x0070            # t3 = FFFFFFC0
    or      a0, s7, $zero              # a0 = 00000000
    sw      t8, 0x0000(v0)             # FFFFFFA8
    lw      t7, 0x0004(v1)             # 00000028
    lw      t0, 0x0000(v0)             # FFFFFFA8
    lw      t2, 0x0000(v0)             # FFFFFFA8
    sw      t7, 0x0004(v0)             # FFFFFFAC
    lw      t8, 0x0008(v1)             # 0000002C
    sw      t7, 0x0004(s5)             # FFFFFFD8
    sw      t7, 0x0004(s4)             # FFFFFFCC
    sw      t0, 0x0000(s4)             # FFFFFFC8
    sw      t2, 0x0000(s5)             # FFFFFFD4
    sw      t8, 0x0008(v0)             # FFFFFFB0
    sw      t8, 0x0008(s4)             # FFFFFFD0
    sw      t8, 0x0008(s5)             # FFFFFFDC
    lwc1    $f6, 0x0354(s0)            # 00000354
    lwc1    $f4, 0x0084($sp)
    lwc1    $f16, 0x0088($sp)
    mul.s   $f8, $f6, $f0
    or      a1, s5, $zero              # a1 = FFFFFFD4
    or      a2, s4, $zero              # a2 = FFFFFFC8
    or      a3, s2, $zero              # a3 = FFFFFFE0
    add.s   $f10, $f4, $f8
    lwc1    $f8, 0x008C($sp)
    swc1    $f10, 0x0084($sp)
    lwc1    $f18, 0x0358(s0)           # 00000358
    mul.s   $f6, $f18, $f0
    add.s   $f4, $f16, $f6
    lwc1    $f6, 0x0078($sp)
    swc1    $f4, 0x0088($sp)
    lwc1    $f10, 0x035C(s0)           # 0000035C
    mul.s   $f18, $f10, $f0
    add.s   $f16, $f8, $f18
    lwc1    $f18, 0x007C($sp)
    swc1    $f16, 0x008C($sp)
    lwc1    $f4, 0x0354(s0)            # 00000354
    mul.s   $f10, $f4, $f0
    sub.s   $f8, $f6, $f10
    lwc1    $f10, 0x0080($sp)
    swc1    $f8, 0x0078($sp)
    lwc1    $f16, 0x0358(s0)           # 00000358
    mul.s   $f4, $f16, $f0
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x007C($sp)
    lwc1    $f8, 0x035C(s0)            # 0000035C
    sw      v1, 0x0054($sp)
    sw      t3, 0x0010($sp)
    mul.s   $f16, $f8, $f0
    sub.s   $f18, $f10, $f16
    jal     func_809459E4
    swc1    $f18, 0x0080($sp)
    beq     v0, $zero, lbl_80945CD0
    or      s1, v0, $zero              # s1 = 00000000
    lbu     t4, 0x0350(s0)             # 00000350
    lui     $at, 0x41C0                # $at = 41C00000
    bnel    t4, $zero, lbl_80945CD4
    lw      t7, 0x0000(s4)             # FFFFFFC8
    mtc1    $at, $f0                   # $f0 = 24.00
    lwc1    $f4, 0x036C(s0)            # 0000036C
    lwc1    $f8, 0x0084($sp)
    addiu   s6, $sp, 0x006C            # s6 = FFFFFFBC
    mul.s   $f6, $f4, $f0
    lwc1    $f4, 0x0088($sp)
    addiu   s8, $sp, 0x009C            # s8 = FFFFFFEC
    or      a3, s8, $zero              # a3 = FFFFFFEC
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFD4
    or      a2, s4, $zero              # a2 = FFFFFFC8
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0078($sp)
    lwc1    $f16, 0x0370(s0)           # 00000370
    mul.s   $f18, $f16, $f0
    lwc1    $f16, 0x008C($sp)
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x007C($sp)
    lwc1    $f8, 0x0374(s0)            # 00000374
    sw      s6, 0x0010($sp)
    mul.s   $f10, $f8, $f0
    add.s   $f18, $f10, $f16
    jal     func_809459E4
    swc1    $f18, 0x0080($sp)
    beq     v0, $zero, lbl_80945C88
    or      a1, v0, $zero              # a1 = 00000000
    lw      t5, 0x00B8($sp)
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    bnel    t5, s3, lbl_80945CC8
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    jal     func_809457E4
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x0054($sp)
    lw      t8, 0x0000(s8)             # FFFFFFEC
    sw      t8, 0x0000(t6)             # 00000000
    lw      t7, 0x0004(s8)             # FFFFFFF0
    sw      t7, 0x0004(t6)             # 00000004
    lw      t8, 0x0008(s8)             # FFFFFFF4
    sw      t8, 0x0008(t6)             # 00000008
    lw      t9, 0x006C($sp)
    b       lbl_80945CC4
    sb      t9, 0x007D(s0)             # 0000007D
lbl_80945C88:
    lw      t0, 0x0078(s0)             # 00000078
    or      a0, s0, $zero              # a0 = 00000000
    beql    s1, t0, lbl_80945CA4
    lw      t1, 0x0054($sp)
    jal     func_809457E4
    or      a1, s1, $zero              # a1 = 00000000
    lw      t1, 0x0054($sp)
lbl_80945CA4:
    lw      t3, 0x0000(s2)             # FFFFFFE0
    sw      t3, 0x0000(t1)             # 00000000
    lw      t2, 0x0004(s2)             # FFFFFFE4
    sw      t2, 0x0004(t1)             # 00000004
    lw      t3, 0x0008(s2)             # FFFFFFE8
    sw      t3, 0x0008(t1)             # 00000008
    lw      t4, 0x0070($sp)
    sb      t4, 0x007D(s0)             # 0000007D
lbl_80945CC4:
    addiu   t5, $zero, 0x0001          # t5 = 00000001
lbl_80945CC8:
    b       lbl_80945E3C
    sw      t5, 0x0064($sp)
lbl_80945CD0:
    lw      t7, 0x0000(s4)             # FFFFFFC8
lbl_80945CD4:
    lw      t6, 0x0004(s4)             # FFFFFFCC
    lui     $at, 0x41C0                # $at = 41C00000
    sw      t7, 0x0000(s5)             # FFFFFFD4
    lw      t7, 0x0008(s4)             # FFFFFFD0
    mtc1    $at, $f20                  # $f20 = 24.00
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s8, $sp, 0x009C            # s8 = FFFFFFEC
    addiu   s6, $sp, 0x006C            # s6 = FFFFFFBC
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    addiu   s2, $zero, 0x0003          # s2 = 00000003
    sw      t6, 0x0004(s5)             # FFFFFFD8
    sw      t7, 0x0008(s5)             # FFFFFFDC
lbl_80945D04:
    bne     s1, $zero, lbl_80945D4C
    or      a0, s7, $zero              # a0 = 00000000
    lwc1    $f6, 0x036C(s0)            # 0000036C
    lwc1    $f4, 0x0084($sp)
    lwc1    $f16, 0x0088($sp)
    mul.s   $f8, $f6, $f20
    sub.s   $f10, $f4, $f8
    lwc1    $f8, 0x008C($sp)
    swc1    $f10, 0x0078($sp)
    lwc1    $f18, 0x0370(s0)           # 00000370
    mul.s   $f6, $f18, $f20
    sub.s   $f4, $f16, $f6
    swc1    $f4, 0x007C($sp)
    lwc1    $f10, 0x0374(s0)           # 00000374
    mul.s   $f18, $f10, $f20
    sub.s   $f16, $f8, $f18
    b       lbl_80945DD0
    swc1    $f16, 0x0080($sp)
lbl_80945D4C:
    bnel    s1, s3, lbl_80945D98
    lwc1    $f4, 0x0360(s0)            # 00000360
    lwc1    $f6, 0x0360(s0)            # 00000360
    lwc1    $f10, 0x0084($sp)
    mul.s   $f4, $f6, $f20
    lwc1    $f6, 0x0088($sp)
    add.s   $f8, $f4, $f10
    swc1    $f8, 0x0078($sp)
    lwc1    $f18, 0x0364(s0)           # 00000364
    mul.s   $f16, $f18, $f20
    lwc1    $f18, 0x008C($sp)
    add.s   $f4, $f16, $f6
    swc1    $f4, 0x007C($sp)
    lwc1    $f10, 0x0368(s0)           # 00000368
    mul.s   $f8, $f10, $f20
    add.s   $f16, $f8, $f18
    b       lbl_80945DD0
    swc1    $f16, 0x0080($sp)
    lwc1    $f4, 0x0360(s0)            # 00000360
lbl_80945D98:
    lwc1    $f6, 0x0084($sp)
    lwc1    $f18, 0x0088($sp)
    mul.s   $f10, $f4, $f20
    sub.s   $f8, $f6, $f10
    lwc1    $f10, 0x008C($sp)
    swc1    $f8, 0x0078($sp)
    lwc1    $f16, 0x0364(s0)           # 00000364
    mul.s   $f4, $f16, $f20
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x007C($sp)
    lwc1    $f8, 0x0368(s0)            # 00000368
    mul.s   $f16, $f8, $f20
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0080($sp)
lbl_80945DD0:
    or      a1, s5, $zero              # a1 = FFFFFFD4
    or      a2, s4, $zero              # a2 = FFFFFFC8
    or      a3, s8, $zero              # a3 = FFFFFFEC
    jal     func_809459E4
    sw      s6, 0x0010($sp)
    beq     v0, $zero, lbl_80945E30
    or      a1, v0, $zero              # a1 = 00000000
    lw      t8, 0x00B8($sp)
    bnel    t8, s3, lbl_80945E28
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    jal     func_809457E4
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0054($sp)
    lw      t1, 0x0000(s8)             # FFFFFFEC
    sw      t1, 0x0000(t9)             # 00000000
    lw      t0, 0x0004(s8)             # FFFFFFF0
    sw      t0, 0x0004(t9)             # 00000004
    lw      t1, 0x0008(s8)             # FFFFFFF4
    sw      t1, 0x0008(t9)             # 00000008
    lw      t2, 0x006C($sp)
    sb      t2, 0x007D(s0)             # 0000007D
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_80945E28:
    b       lbl_80945E3C
    sw      t3, 0x0064($sp)
lbl_80945E30:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bne     s1, s2, lbl_80945D04
    nop
lbl_80945E3C:
    lh      a1, 0x0030(s0)             # 00000030
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x0010($sp)
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_80064508
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    lh      a1, 0x0032(s0)             # 00000032
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_80064508
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    lh      a1, 0x0034(s0)             # 00000034
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_80064508
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    lw      v0, 0x0064($sp)
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0020($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    lw      s7, 0x0044($sp)
    lw      s8, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp += 0xB0


func_80945EC8:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0064($sp)
    lui     t7, %hi(var_80948A20)      # t7 = 80950000
    addiu   t7, t7, %lo(var_80948A20)  # t7 = 80948A20
    lw      t9, 0x0000(t7)             # 80948A20
    addiu   t6, $sp, 0x004C            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 80948A24
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 80948A28
    sw      t8, 0x0004(t6)             # FFFFFFF0
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    andi    t0, v0, 0x8000             # t0 = 00000000
    beq     t0, $zero, lbl_80945F3C
    addu    v1, v0, $at
    andi    v1, v1, 0xE000             # v1 = 00000000
    sra     v1, v1, 13
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     t2, v1, 13
    andi    t1, v0, 0x1FFF             # t1 = 00000000
    or      t3, t1, t2                 # t3 = 00000000
    sh      t3, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80945F3C:
    andi    t4, v0, 0xE000             # t4 = 00000000
    sra     t5, t4, 13
    blez    t5, lbl_80945F6C
    lui     t1, 0x8012                 # t1 = 80120000
    andi    v1, v0, 0x1F00             # v1 = 00000000
    sra     v1, v1,  8
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFF
    sll     t7, v1,  8
    andi    t6, v0, 0xE0FF             # t6 = 00000000
    or      t8, t6, t7                 # t8 = 80948A20
    sh      t8, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80945F6C:
    andi    v1, v0, 0x1F00             # v1 = 00000000
    sra     v1, v1,  8
    andi    a0, v1, 0x0003             # a0 = 00000000
    sra     t9, v1,  2
    sll     t0, t9,  2
    sll     a0, a0,  2
    lui     t2, 0x8010                 # t2 = 80100000
    addu    t2, t2, a0
    addu    t1, t1, t0
    lui     t4, 0x8010                 # t4 = 80100000
    lw      t1, -0x4B94(t1)            # 8011B46C
    lw      t2, -0x72F4(t2)            # 800F8D0C
    addu    t4, t4, a0
    lw      t4, -0x72E4(t4)            # 800F8D1C
    and     t3, t1, t2
    andi    t6, v0, 0x00FF             # t6 = 00000000
    srlv    t5, t3, t4
    and     t7, t5, t6
    beq     t7, $zero, lbl_80945FCC
    lw      a0, 0x0064($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80946380
    lw      $ra, 0x002C($sp)
lbl_80945FCC:
    addiu   t8, s0, 0x01E8             # t8 = 000001E8
    addiu   t9, s0, 0x029C             # t9 = 0000029C
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    addiu   a2, a2, 0x5298             # a2 = 00005298
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8008C684
    sw      a1, 0x0040($sp)
    lui     a1, %hi(var_809489C0)      # a1 = 80950000
    addiu   a1, a1, %lo(var_809489C0)  # a1 = 809489C0
    lw      a0, 0x0040($sp)
    jal     func_80027C98
    or      a2, $zero, $zero           # a2 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    sw      a0, 0x003C($sp)
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0040($sp)
    jal     func_8004A484
    lw      a0, 0x0064($sp)
    lui     a3, %hi(var_809489A4)      # a3 = 80950000
    addiu   t1, s0, 0x01A4             # t1 = 000001A4
    lw      a1, 0x0040($sp)
    sw      t1, 0x0010($sp)
    addiu   a3, a3, %lo(var_809489A4)  # a3 = 809489A4
    lw      a0, 0x0064($sp)
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80049E10
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    lui     a2, %hi(var_809489B4)      # a2 = 80950000
    addiu   a2, a2, %lo(var_809489B4)  # a2 = 809489B4
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, v0, $zero              # a1 = 00000000
    lh      t2, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80948AE8)     # $at = 80950000
    lwc1    $f4, %lo(var_80948AE8)($at)
    andi    t3, t2, 0xE000             # t3 = 00000000
    sra     t4, t3, 13
    bne     t4, $zero, lbl_80946138
    swc1    $f4, 0x0050(s0)            # 00000050
    sh      $zero, 0x0030(s0)          # 00000030
    sh      $zero, 0x0034(s0)          # 00000034
    addiu   v0, s0, 0x0030             # v0 = 00000030
    lwl     t7, 0x0000(v0)             # 00000030
    lw      t5, 0x003C($sp)
    lwr     t7, 0x0003(v0)             # 00000033
    swl     t7, 0x0000(t5)             # 00000000
    swr     t7, 0x0003(t5)             # 00000003
    lhu     t7, 0x0004(v0)             # 00000034
    sh      t7, 0x0004(t5)             # 00000004
    lwc1    $f6, 0x0028(s0)            # 00000028
    lh      a0, 0x0032(s0)             # 00000032
    swc1    $f6, 0x0478(s0)            # 00000478
    jal     func_800636C4              # sins?
    sw      v0, 0x0030($sp)
    lui     $at, 0xC270                # $at = C2700000
    mtc1    $at, $f8                   # $f8 = -60.00
    lwc1    $f16, 0x0024(s0)           # 00000024
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f10, $f0, $f8
    add.s   $f18, $f10, $f16
    jal     func_80063684              # coss?
    swc1    $f18, 0x0474(s0)           # 00000474
    lui     $at, 0xC270                # $at = C2700000
    mtc1    $at, $f4                   # $f4 = -60.00
    lwc1    $f8, 0x002C(s0)            # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x047C(s0)           # 0000047C
    jal     func_809479E4
    lw      a1, 0x0064($sp)
    addiu   t8, s0, 0x0008             # t8 = 00000008
    addiu   t9, s0, 0x0024             # t9 = 00000024
    sw      t9, 0x0034($sp)
    sw      t8, 0x0038($sp)
    lw      t3, 0x0000(t9)             # 00000024
    sw      t3, 0x0000(t8)             # 00000008
    lw      t2, 0x0004(t9)             # 00000028
    sw      t2, 0x0004(t8)             # 0000000C
    lw      t3, 0x0008(t9)             # 0000002C
    b       lbl_809461D0
    sw      t3, 0x0008(t8)             # 00000010
lbl_80946138:
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0x4000             # a0 = 00004000
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      a0, 0x00B6(s0)             # 000000B6
    mtc1    $zero, $f16                # $f16 = 0.00
    swc1    $f0, 0x0360(s0)            # 00000360
    addiu   a0, a0, 0x4000             # a0 = 00004000
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_80063684              # coss?
    swc1    $f16, 0x0364(s0)           # 00000364
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    swc1    $f0, 0x0368(s0)            # 00000368
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f2, 0x0354(s0)            # 00000354
    swc1    $f2, 0x035C(s0)            # 0000035C
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0358(s0)           # 00000358
    mtc1    $zero, $f4                 # $f4 = 0.00
    swc1    $f0, 0x036C(s0)            # 0000036C
    lh      a0, 0x00B6(s0)             # 000000B6
    jal     func_80063684              # coss?
    swc1    $f4, 0x0370(s0)            # 00000370
    swc1    $f0, 0x0374(s0)            # 00000374
    lw      a1, 0x0064($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80945A94
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   t4, s0, 0x0008             # t4 = 00000008
    addiu   t5, s0, 0x0024             # t5 = 00000024
    addiu   t6, s0, 0x0030             # t6 = 00000030
    sw      t6, 0x0030($sp)
    sw      t5, 0x0034($sp)
    sw      t4, 0x0038($sp)
lbl_809461D0:
    lh      v0, 0x001C(s0)             # 0000001C
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    v0, v0, 0xE000             # v0 = 00000000
    sra     v0, v0, 13
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_8094621C
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    andi    v0, v0, 0xE000             # v0 = 00000000
    sra     v0, v0, 13
lbl_8094621C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80946278
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8094626C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80946244
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_809462B0
    lw      a0, 0x0064($sp)
lbl_80946244:
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f6                   # $f6 = 8.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f10                  # $f10 = -1.00
    sb      t8, 0x0350(s0)             # 00000350
    swc1    $f6, 0x0060(s0)            # 00000060
    swc1    $f8, 0x0068(s0)            # 00000068
    swc1    $f10, 0x006C(s0)           # 0000006C
lbl_8094626C:
    mtc1    $zero, $f16                # $f16 = 0.00
    nop
    swc1    $f16, 0x0050(s0)           # 00000050
lbl_80946278:
    lw      v0, 0x01A0(s0)             # 000001A0
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    lbu     t9, 0x0005(v0)             # 00000005
    sll     t0, t9,  1
    sb      t0, 0x0005(v0)             # 00000005
    lbu     t2, 0x00AF(s0)             # 000000AF
    lw      t4, 0x0004(s0)             # 00000004
    sb      t1, 0x0117(s0)             # 00000117
    sll     t3, t2,  1
    and     t5, t4, $at
    sb      t3, 0x00AF(s0)             # 000000AF
    b       lbl_809462C8
    sw      t5, 0x0004(s0)             # 00000004
lbl_809462B0:
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800265D4
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    addiu   t7, $zero, 0x001F          # t7 = 0000001F
    sb      t7, 0x0117(s0)             # 00000117
lbl_809462C8:
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    jal     func_80063BF0
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    sh      v0, 0x037E(s0)             # 0000037E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
    lw      t9, 0x0034($sp)
    lw      t8, 0x0038($sp)
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    lw      t1, 0x0000(t9)             # 00000000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t1, 0x0000(t8)             # 00000000
    lw      t0, 0x0004(t9)             # 00000004
    sw      t0, 0x0004(t8)             # 00000004
    lw      t1, 0x0008(t9)             # 00000008
    sw      t1, 0x0008(t8)             # 00000008
    lw      t3, 0x0030($sp)
    lw      t2, 0x003C($sp)
    lui     t8, %hi(func_80946D38)     # t8 = 80940000
    lwl     t5, 0x0000(t3)             # 00000000
    lwr     t5, 0x0003(t3)             # 00000003
    addiu   t8, t8, %lo(func_80946D38) # t8 = 80946D38
    swl     t5, 0x0000(t2)             # 00000000
    swr     t5, 0x0003(t2)             # 00000003
    lhu     t5, 0x0004(t3)             # 00000004
    sh      t5, 0x0004(t2)             # 00000004
    lh      v0, 0x001C(s0)             # 0000001C
    andi    v0, v0, 0xE000             # v0 = 00000000
    sra     v0, v0, 13
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_8094635C
    nop
    sh      t6, 0x037C(s0)             # 0000037C
    sh      t7, 0x0384(s0)             # 00000384
    b       lbl_8094637C
    sw      t8, 0x0180(s0)             # 00000180
lbl_8094635C:
    bne     v0, $zero, lbl_80946374
    lui     t0, %hi(func_80946F68)     # t0 = 80940000
    lui     t9, %hi(func_80947FC4)     # t9 = 80940000
    addiu   t9, t9, %lo(func_80947FC4) # t9 = 80947FC4
    b       lbl_8094637C
    sw      t9, 0x0180(s0)             # 00000180
lbl_80946374:
    addiu   t0, t0, %lo(func_80946F68) # t0 = 80946F68
    sw      t0, 0x0180(s0)             # 00000180
lbl_8094637C:
    lw      $ra, 0x002C($sp)
lbl_80946380:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_80946390:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004A550
    addiu   a1, a2, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809463BC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lui     $at, %hi(var_80948AEC)     # $at = 80950000
    lwc1    $f6, %lo(var_80948AEC)($at)
    lwc1    $f4, 0x008C(s0)            # 0000008C
    or      v1, $zero, $zero           # v1 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80946424
    lh      t2, 0x0382(s0)             # 00000382
    lh      t6, 0x001C(s0)             # 0000001C
    lw      t9, 0x002C($sp)
    andi    t7, t6, 0xE000             # t7 = 00000000
    sra     t8, t7, 13
    bnel    t8, $zero, lbl_80946424
    lh      t2, 0x0382(s0)             # 00000382
    lbu     t0, 0x1C26(t9)             # 00001C26
    beql    t0, $zero, lbl_80946424
    lh      t2, 0x0382(s0)             # 00000382
    lbu     t1, 0x00AF(s0)             # 000000AF
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sb      t1, 0x00B0(s0)             # 000000B0
    lh      t2, 0x0382(s0)             # 00000382
lbl_80946424:
    bnel    t2, $zero, lbl_80946580
    lh      t2, 0x0380(s0)             # 00000380
    lbu     v0, 0x0195(s0)             # 00000195
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    or      a0, s0, $zero              # a0 = 00000000
    andi    t3, v0, 0x0002             # t3 = 00000000
    bne     t3, $zero, lbl_8094644C
    andi    t4, v0, 0xFFFD             # t4 = 00000000
    beql    v1, $zero, lbl_80946580
    lh      t2, 0x0380(s0)             # 00000380
lbl_8094644C:
    sh      t5, 0x0382(s0)             # 00000382
    lh      t6, 0x0382(s0)             # 00000382
    sb      t4, 0x0195(s0)             # 00000195
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090
    sw      t6, 0x0010($sp)
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80946490
    lw      a0, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x386B          # a1 = 0000386B
    b       lbl_809465A4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80946490:
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    lh      t7, 0x001C(s0)             # 0000001C
    lui     t6, 0x8002                 # t6 = 80020000
    addiu   t6, t6, 0xEFF4             # t6 = 8001EFF4
    andi    t8, t7, 0xE000             # t8 = 00000000
    sra     t9, t8, 13
    beq     t9, $zero, lbl_80946524
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    lui     $at, %hi(var_80948AF4)     # $at = 80950000
    swc1    $f8, 0x0158(s0)            # 00000158
    lw      t0, 0x002C($sp)
    lw      t1, 0x009C(t0)             # 0000009C
    andi    t2, t1, 0x0001             # t2 = 00000000
    bne     t2, $zero, lbl_809464E8
    nop
    lui     $at, %hi(var_80948AF0)     # $at = 80950000
    lwc1    $f10, %lo(var_80948AF0)($at)
    b       lbl_809464F0
    swc1    $f10, 0x0410(s0)           # 00000410
lbl_809464E8:
    lwc1    $f16, %lo(var_80948AF4)($at)
    swc1    $f16, 0x0410(s0)           # 00000410
lbl_809464F0:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    lwc1    $f18, 0x0410(s0)           # 00000410
    lui     t5, %hi(func_80947250)     # t5 = 80940000
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    mul.s   $f6, $f18, $f4
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, t5, %lo(func_80947250) # t5 = 80947250
    sh      t3, 0x0384(s0)             # 00000384
    sh      t4, 0x037A(s0)             # 0000037A
    sw      t5, 0x0180(s0)             # 00000180
    b       lbl_8094656C
    swc1    $f6, 0x0410(s0)            # 00000410
lbl_80946524:
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f8                   # $f8 = 16.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f10                  # $f10 = -1.00
    lw      t9, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t1, %hi(func_809474D8)     # t1 = 80940000
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   t1, t1, %lo(func_809474D8) # t1 = 809474D8
    and     t0, t9, $at
    sw      t6, 0x00C0(s0)             # 000000C0
    sb      t7, 0x00C8(s0)             # 000000C8
    sh      t8, 0x037A(s0)             # 0000037A
    sw      t0, 0x0004(s0)             # 00000004
    sw      t1, 0x0180(s0)             # 00000180
    swc1    $f8, 0x00C4(s0)            # 000000C4
    swc1    $f10, 0x006C(s0)           # 0000006C
lbl_8094656C:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3885          # a1 = 00003885
    b       lbl_809465A4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t2, 0x0380(s0)             # 00000380
lbl_80946580:
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t2, $zero, lbl_809465A4
    nop
    lbu     t3, 0x0194(s0)             # 00000194
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    andi    t4, t3, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_809465A4
    nop
    sh      t5, 0x0380(s0)             # 00000380
lbl_809465A4:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809465B8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    andi    t7, t6, 0xE000             # t7 = 00000000
    sra     t8, t7, 13
    blezl   t8, lbl_80946608
    lh      v0, 0x0380(a3)             # 00000380
    lw      t0, 0x0180(a3)             # 00000180
    lui     t9, %hi(func_80946F68)     # t9 = 80940000
    addiu   t9, t9, %lo(func_80946F68) # t9 = 80946F68
    beql    t9, t0, lbl_80946608
    lh      v0, 0x0380(a3)             # 00000380
    lh      v0, 0x0382(a3)             # 00000382
    beq     v0, $zero, lbl_809466B4
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    b       lbl_809466B4
    sh      t1, 0x0382(a3)             # 00000382
    lh      v0, 0x0380(a3)             # 00000380
lbl_80946608:
    bne     v0, $zero, lbl_80946618
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    b       lbl_80946620
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80946618:
    sh      t2, 0x0380(a3)             # 00000380
    lh      v1, 0x0380(a3)             # 00000380
lbl_80946620:
    bnel    v1, $zero, lbl_80946654
    lh      v0, 0x0382(a3)             # 00000382
    lbu     t3, 0x00AF(a3)             # 000000AF
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    beq     t3, $zero, lbl_80946650
    lw      a0, 0x002C($sp)
    addu    a1, a0, $at
    addiu   a2, a3, 0x0184             # a2 = 00000184
    jal     func_8004BD50              # CollisionCheck_setAT
    sw      a3, 0x0028($sp)
    lw      a3, 0x0028($sp)
lbl_80946650:
    lh      v0, 0x0382(a3)             # 00000382
lbl_80946654:
    lw      a1, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, a3, 0x0184             # a2 = 00000184
    bne     v0, $zero, lbl_80946674
    addu    a1, a1, $at
    b       lbl_80946680
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80946674:
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x0382(a3)             # 00000382
    lh      v1, 0x0382(a3)             # 00000382
lbl_80946680:
    bne     v1, $zero, lbl_809466AC
    nop
    lbu     t6, 0x00AF(a3)             # 000000AF
    lw      a0, 0x002C($sp)
    beq     t6, $zero, lbl_809466AC
    nop
    sw      a1, 0x001C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a2, 0x0018($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0018($sp)
lbl_809466AC:
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a0, 0x002C($sp)
lbl_809466B4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809466C4:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      v1, 0x0078(s0)             # 00000078
    bnel    v1, $zero, lbl_809466F0
    lh      t6, 0x0008(v1)             # 00000008
    b       lbl_80946864
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t6, 0x0008(v1)             # 00000008
lbl_809466F0:
    lui     $at, %hi(var_80948AF8)     # $at = 80950000
    lwc1    $f0, %lo(var_80948AF8)($at)
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFEC
    or      a2, $zero, $zero           # a2 = 00000000
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x006C($sp)
    lh      t7, 0x000A(v1)             # 0000000A
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0070($sp)
    lh      t8, 0x000C(v1)             # 0000000C
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0074($sp)
    jal     func_800AC280
    lwc1    $f12, 0x0000(a3)           # 00000000
    addiu   a0, s0, 0x0360             # a0 = 00000360
    sw      a0, 0x0028($sp)
    jal     func_800AB958
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFEC
    addiu   t9, $sp, 0x006C            # t9 = FFFFFFEC
    lw      a0, 0x0028($sp)
    lw      t1, 0x0000(t9)             # FFFFFFEC
    addiu   a2, s0, 0x036C             # a2 = 0000036C
    addiu   a1, s0, 0x0354             # a1 = 00000354
    sw      t1, 0x0000(a0)             # 00000000
    lw      t0, 0x0004(t9)             # FFFFFFF0
    sw      t0, 0x0004(a0)             # 00000004
    lw      t1, 0x0008(t9)             # FFFFFFF4
    sw      t1, 0x0008(a0)             # 00000008
    jal     func_80945770
    sw      a2, 0x0024($sp)
    jal     func_800A5510
    lw      a0, 0x0024($sp)
    lui     $at, %hi(var_80948AFC)     # $at = 80950000
    lwc1    $f10, %lo(var_80948AFC)($at)
    mov.s   $f2, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_809467BC
    mtc1    $at, $f12                  # $f12 = 1.00
    b       lbl_80946864
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f12                  # $f12 = 1.00
lbl_809467BC:
    lwc1    $f16, 0x036C(s0)           # 0000036C
    lwc1    $f4, 0x0370(s0)            # 00000370
    div.s   $f2, $f12, $f2
    lwc1    $f8, 0x0374(s0)            # 00000374
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFAC
    addiu   a1, s0, 0x0030             # a1 = 00000030
    or      a2, $zero, $zero           # a2 = 00000000
    mul.s   $f18, $f16, $f2
    lwc1    $f16, 0x0360(s0)           # 00000360
    mul.s   $f6, $f4, $f2
    nop
    mul.s   $f10, $f8, $f2
    swc1    $f18, 0x036C(s0)           # 0000036C
    swc1    $f6, 0x0370(s0)            # 00000370
    swc1    $f10, 0x0374(s0)           # 00000374
    swc1    $f16, 0x002C($sp)
    lwc1    $f18, 0x0364(s0)           # 00000364
    swc1    $f18, 0x0030($sp)
    lwc1    $f4, 0x0368(s0)            # 00000368
    swc1    $f0, 0x0038($sp)
    swc1    $f4, 0x0034($sp)
    lwc1    $f6, 0x0354(s0)            # 00000354
    swc1    $f6, 0x003C($sp)
    lwc1    $f8, 0x0358(s0)            # 00000358
    swc1    $f8, 0x0040($sp)
    lwc1    $f10, 0x035C(s0)           # 0000035C
    swc1    $f0, 0x0048($sp)
    swc1    $f10, 0x0044($sp)
    lwc1    $f16, 0x036C(s0)           # 0000036C
    swc1    $f16, 0x004C($sp)
    lwc1    $f18, 0x0370(s0)           # 00000370
    swc1    $f18, 0x0050($sp)
    lwc1    $f4, 0x0374(s0)            # 00000374
    swc1    $f12, 0x0068($sp)
    swc1    $f0, 0x0058($sp)
    swc1    $f0, 0x005C($sp)
    swc1    $f0, 0x0060($sp)
    swc1    $f0, 0x0064($sp)
    jal     func_800ABF50
    swc1    $f4, 0x0054($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80946864:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0080           # $sp += 0x80
    jr      $ra
    nop


func_80946878:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, %hi(var_80948B00)     # $at = 80950000
    lwc1    $f6, %lo(var_80948B00)($at)
    lwc1    $f4, 0x0050(a2)            # 00000050
    c.lt.s  $f4, $f6
    nop
    bc1tl   lbl_8094690C
    lw      $ra, 0x0014($sp)
    lh      t6, 0x07A0(a3)             # 000007A0
    addiu   a0, a2, 0x0024             # a0 = 00000024
    sll     t7, t6,  2
    addu    t8, a3, t7
    lw      v0, 0x0790(t8)             # 00000790
    sw      a2, 0x0018($sp)
    jal     func_80063E18
    addiu   a1, v0, 0x005C             # a1 = 0000005C
    lui     $at, 0x43BE                # $at = 43BE0000
    mtc1    $at, $f8                   # $f8 = 380.00
    lw      a2, 0x0018($sp)
    c.le.s  $f8, $f0
    or      a0, a2, $zero              # a0 = 00000000
    bc1tl   lbl_8094690C
    lw      $ra, 0x0014($sp)
    lh      t9, 0x001C(a2)             # 0000001C
    addiu   v0, $zero, 0x388C          # v0 = 0000388C
    andi    t0, t9, 0xE000             # t0 = 00000000
    sra     t1, t0, 13
    blez    t1, lbl_80946900
    nop
    b       lbl_80946900
    addiu   v0, $zero, 0x39DA          # v0 = 000039DA
lbl_80946900:
    jal     func_80022FD0
    andi    a1, v0, 0xFFFF             # a1 = 000039DA
    lw      $ra, 0x0014($sp)
lbl_8094690C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80946918:
    addiu   $sp, $sp, 0xFF58           # $sp -= 0xA8
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s2, 0x0048($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    addiu   s5, $sp, 0x00A4            # s5 = FFFFFFFC
    addiu   s6, $sp, 0x00A0            # s6 = FFFFFFF8
    addiu   s7, $sp, 0x0094            # s7 = FFFFFFEC
    addiu   s8, $sp, 0x0088            # s8 = FFFFFFE0
    sw      $ra, 0x0064($sp)
    sw      s3, 0x004C($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lui     t6, %hi(var_80948A2C)      # t6 = 80950000
    addiu   t6, t6, %lo(var_80948A2C)  # t6 = 80948A2C
    lw      t8, 0x0000(t6)             # 80948A2C
    lui     t9, %hi(var_80948A30)      # t9 = 80950000
    addiu   t9, t9, %lo(var_80948A30)  # t9 = 80948A30
    sw      t8, 0x0000(s5)             # FFFFFFFC
    lw      t1, 0x0000(t9)             # 80948A30
    lui     t2, %hi(var_80948A34)      # t2 = 80950000
    addiu   t2, t2, %lo(var_80948A34)  # t2 = 80948A34
    sw      t1, 0x0000(s6)             # FFFFFFF8
    lw      t4, 0x0000(t2)             # 80948A34
    lui     t5, %hi(var_80948A40)      # t5 = 80950000
    addiu   t5, t5, %lo(var_80948A40)  # t5 = 80948A40
    sw      t4, 0x0000(s7)             # FFFFFFEC
    lw      t3, 0x0004(t2)             # 80948A38
    sw      t3, 0x0004(s7)             # FFFFFFF0
    lw      t4, 0x0008(t2)             # 80948A3C
    sw      t4, 0x0008(s7)             # FFFFFFF4
    lw      t7, 0x0000(t5)             # 80948A40
    sw      t7, 0x0000(s8)             # FFFFFFE0
    lw      t6, 0x0004(t5)             # 80948A44
    sw      t6, 0x0004(s8)             # FFFFFFE4
    lw      t7, 0x0008(t5)             # 80948A48
    sw      t7, 0x0008(s8)             # FFFFFFE8
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x00B0($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f22                  # $f22 = 0.50
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f6                   # $f6 = 65536.00
    sub.s   $f4, $f0, $f22
    lw      a2, 0x00B0($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    mul.s   $f8, $f4, $f6
    or      s1, a2, $zero              # s1 = 00000000
    trunc.w.s $f10, $f8
    mfc1    s0, $f10
    nop
    sll     s0, s0, 16
    bltz    a2, lbl_80946AE8
    sra     s0, s0, 16
    div     $zero, t9, a2
    mflo    s3
    sll     s3, s3, 16
    sra     s3, s3, 16
    bne     a2, $zero, lbl_80946A24
    nop
    break   # 0x01C00
lbl_80946A24:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a2, $at, lbl_80946A3C
    lui     $at, 0x8000                # $at = 80000000
    bne     t9, $at, lbl_80946A3C
    nop
    break   # 0x01800
lbl_80946A3C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f20, $f0, $f22
    add.s   $f16, $f20, $f20
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0088($sp)
    sub.s   $f20, $f0, $f22
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f18, $f20, $f20
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0090($sp)
    add.s   $f4, $f0, $f0
    lwc1    $f6, 0x0024(s2)            # 00000024
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x007C($sp)
    lwc1    $f10, 0x0028(s2)           # 00000028
    jal     func_80063684              # coss?
    swc1    $f10, 0x0080($sp)
    add.s   $f16, $f0, $f0
    lwc1    $f18, 0x002C(s2)           # 0000002C
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    add.s   $f4, $f16, $f18
    addiu   t2, $zero, 0x000C          # t2 = 0000000C
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    swc1    $f4, 0x0084($sp)
    sw      t0, 0x0018($sp)
    sw      s6, 0x0014($sp)
    sw      s5, 0x0010($sp)
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFD4
    or      a2, s7, $zero              # a2 = FFFFFFEC
    jal     func_8001BE64
    or      a3, s8, $zero              # a3 = FFFFFFE0
    addu    s0, s0, s3
    sll     s0, s0, 16
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFF
    bgez    s1, lbl_80946A3C
    sra     s0, s0, 16
lbl_80946AE8:
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    lw      s5, 0x0054($sp)
    lw      s6, 0x0058($sp)
    lw      s7, 0x005C($sp)
    lw      s8, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A8           # $sp += 0xA8


func_80946B20:
    addiu   $sp, $sp, 0xFF50           # $sp -= 0xB0
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s2, 0x0050($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    addiu   s5, $sp, 0x00AC            # s5 = FFFFFFFC
    addiu   s6, $sp, 0x00A8            # s6 = FFFFFFF8
    addiu   s7, $sp, 0x009C            # s7 = FFFFFFEC
    addiu   s8, $sp, 0x0090            # s8 = FFFFFFE0
    sw      $ra, 0x006C($sp)
    sw      s3, 0x0054($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lui     t6, %hi(var_80948A4C)      # t6 = 80950000
    addiu   t6, t6, %lo(var_80948A4C)  # t6 = 80948A4C
    lw      t8, 0x0000(t6)             # 80948A4C
    lui     t9, %hi(var_80948A50)      # t9 = 80950000
    addiu   t9, t9, %lo(var_80948A50)  # t9 = 80948A50
    sw      t8, 0x0000(s5)             # FFFFFFFC
    lw      t1, 0x0000(t9)             # 80948A50
    lui     t2, %hi(var_80948A54)      # t2 = 80950000
    addiu   t2, t2, %lo(var_80948A54)  # t2 = 80948A54
    sw      t1, 0x0000(s6)             # FFFFFFF8
    lw      t4, 0x0000(t2)             # 80948A54
    lui     t5, %hi(var_80948A60)      # t5 = 80950000
    addiu   t5, t5, %lo(var_80948A60)  # t5 = 80948A60
    sw      t4, 0x0000(s7)             # FFFFFFEC
    lw      t3, 0x0004(t2)             # 80948A58
    sw      t3, 0x0004(s7)             # FFFFFFF0
    lw      t4, 0x0008(t2)             # 80948A5C
    sw      t4, 0x0008(s7)             # FFFFFFF4
    lw      t7, 0x0000(t5)             # 80948A60
    sw      t7, 0x0000(s8)             # FFFFFFE0
    lw      t6, 0x0004(t5)             # 80948A64
    sw      t6, 0x0004(s8)             # FFFFFFE4
    lw      t7, 0x0008(t5)             # 80948A68
    sw      t7, 0x0008(s8)             # FFFFFFE8
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x00B8($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f22                  # $f22 = 0.50
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f6                   # $f6 = 65536.00
    sub.s   $f4, $f0, $f22
    lw      a2, 0x00B8($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    mul.s   $f8, $f4, $f6
    or      s1, a2, $zero              # s1 = 00000000
    trunc.w.s $f10, $f8
    mfc1    s0, $f10
    nop
    sll     s0, s0, 16
    bltz    a2, lbl_80946CFC
    sra     s0, s0, 16
    div     $zero, t9, a2
    bne     a2, $zero, lbl_80946C24
    nop
    break   # 0x01C00
lbl_80946C24:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a2, $at, lbl_80946C3C
    lui     $at, 0x8000                # $at = 80000000
    bne     t9, $at, lbl_80946C3C
    nop
    break   # 0x01800
lbl_80946C3C:
    lui     $at, 0x4160                # $at = 41600000
    mflo    s3
    sll     s3, s3, 16
    mtc1    $at, $f24                  # $f24 = 14.00
    sra     s3, s3, 16
lbl_80946C50:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f20, $f0, $f22
    add.s   $f16, $f20, $f20
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0090($sp)
    sub.s   $f20, $f0, $f22
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f18, $f20, $f20
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0098($sp)
    mul.s   $f4, $f0, $f24
    lwc1    $f6, 0x0024(s2)            # 00000024
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0084($sp)
    lwc1    $f10, 0x0028(s2)           # 00000028
    jal     func_80063684              # coss?
    swc1    $f10, 0x0088($sp)
    mul.s   $f16, $f0, $f24
    lwc1    $f18, 0x002C(s2)           # 0000002C
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    add.s   $f4, $f16, $f18
    sw      t0, 0x0018($sp)
    sw      s6, 0x0014($sp)
    sw      s5, 0x0010($sp)
    swc1    $f4, 0x008C($sp)
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0084            # a1 = FFFFFFD4
    or      a2, s7, $zero              # a2 = FFFFFFEC
    jal     func_8001BE64
    or      a3, s8, $zero              # a3 = FFFFFFE0
    addu    s0, s0, s3
    sll     s0, s0, 16
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFF
    bgez    s1, lbl_80946C50
    sra     s0, s0, 16
lbl_80946CFC:
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    ldc1    $f24, 0x0040($sp)
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
    addiu   $sp, $sp, 0x00B0           # $sp += 0xB0


func_80946D38:
    sw      a1, 0x0004($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    andi    t7, t6, 0xE000             # t7 = 00000000
    sra     t8, t7, 13
    bne     t8, $at, lbl_80946D6C
    lui     t1, %hi(func_80946D80)     # t1 = 80940000
    lui     t9, %hi(func_80946D80)     # t9 = 80940000
    addiu   t9, t9, %lo(func_80946D80) # t9 = 80946D80
    sh      $zero, 0x037C(a0)          # 0000037C
    jr      $ra
    sw      t9, 0x0180(a0)             # 00000180
lbl_80946D6C:
    addiu   t1, t1, %lo(func_80946D80) # t1 = 80946D80
    sh      t0, 0x037C(a0)             # 0000037C
    sw      t1, 0x0180(a0)             # 00000180
    jr      $ra
    nop


func_80946D80:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      v0, 0x037C(s0)             # 0000037C
    beq     v0, $zero, lbl_80946DF4
    andi    t6, v0, 0x0004             # t6 = 00000000
    beq     t6, $zero, lbl_80946DB8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80946918
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lh      v0, 0x037C(s0)             # 0000037C
lbl_80946DB8:
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x037C(s0)             # 0000037C
    lh      t8, 0x037C(s0)             # 0000037C
    lw      a0, 0x002C($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    bne     t8, $zero, lbl_80946F54
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    addiu   a3, $zero, 0x39EA          # a3 = 000039EA
    jal     func_80058FF8
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    lw      a0, 0x002C($sp)
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x3824          # a3 = 00003824
lbl_80946DF4:
    lui     a1, 0x3CA3                 # a1 = 3CA30000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    ori     a1, a1, 0xD70A             # a1 = 3CA3D70A
    jal     func_80064280
    addiu   a0, s0, 0x0050             # a0 = 00000050
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
    lwc1    $f0, 0x0060(s0)            # 00000060
    lwc1    $f6, 0x0354(s0)            # 00000354
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f18, 0x0358(s0)           # 00000358
    mul.s   $f8, $f6, $f0
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f2, 0x0068(s0)            # 00000068
    mul.s   $f6, $f18, $f0
    lwc1    $f12, 0x0070(s0)           # 00000070
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    add.s   $f10, $f4, $f8
    lwc1    $f8, 0x002C(s0)            # 0000002C
    add.s   $f4, $f16, $f6
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f10, 0x035C(s0)           # 0000035C
    lwc1    $f6, 0x0024(s0)            # 00000024
    swc1    $f4, 0x0028(s0)            # 00000028
    mul.s   $f18, $f10, $f0
    lwc1    $f4, 0x036C(s0)            # 0000036C
    mul.s   $f10, $f4, $f2
    add.s   $f16, $f8, $f18
    lwc1    $f18, 0x0028(s0)           # 00000028
    add.s   $f8, $f6, $f10
    swc1    $f16, 0x002C(s0)           # 0000002C
    lwc1    $f16, 0x0370(s0)           # 00000370
    lwc1    $f10, 0x002C(s0)           # 0000002C
    swc1    $f8, 0x0024(s0)            # 00000024
    mul.s   $f4, $f16, $f2
    lwc1    $f8, 0x0374(s0)            # 00000374
    mul.s   $f16, $f8, $f2
    add.s   $f6, $f18, $f4
    lwc1    $f4, 0x006C(s0)            # 0000006C
    add.s   $f18, $f10, $f16
    swc1    $f6, 0x0028(s0)            # 00000028
    mtc1    $zero, $f10                # $f10 = 0.00
    add.s   $f6, $f0, $f4
    swc1    $f18, 0x002C(s0)           # 0000002C
    swc1    $f6, 0x0060(s0)            # 00000060
    lwc1    $f0, 0x0060(s0)            # 00000060
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_80946EDC
    swc1    $f0, 0x0060(s0)            # 00000060
    b       lbl_80946EDC
    swc1    $f12, 0x0060(s0)           # 00000060
    swc1    $f0, 0x0060(s0)            # 00000060
lbl_80946EDC:
    lwc1    $f8, 0x0060(s0)            # 00000060
    c.lt.s  $f8, $f10
    nop
    bc1f    lbl_80946EF4
    nop
    sb      $zero, 0x0350(s0)          # 00000350
lbl_80946EF4:
    jal     func_80945A94
    lw      a1, 0x002C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80946F54
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80946B20
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     $at, %hi(var_80948B04)     # $at = 80950000
    lwc1    $f0, %lo(var_80948B04)($at)
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a1, $f0
    jal     func_80020F88
    swc1    $f0, 0x0050(s0)            # 00000050
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t9, %hi(func_80946F68)     # t9 = 80940000
    addiu   t9, t9, %lo(func_80946F68) # t9 = 80946F68
    sw      t9, 0x0180(s0)             # 00000180
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x006C(s0)            # 0000006C
lbl_80946F54:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80946F68:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t5, 0x8012                 # t5 = 80120000
    andi    t7, t6, 0xE000             # t7 = 00000000
    sra     t8, t7, 13
    bne     t8, $at, lbl_8094703C
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lui     $at, %hi(var_80948B08)     # $at = 80950000
    lwc1    $f2, %lo(var_80948B08)($at)
    lwc1    $f0, 0x0050(s0)            # 00000050
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    c.lt.s  $f0, $f2
    lui     $at, %hi(var_80948B0C)     # $at = 80950000
    lui     a3, 0x3C23                 # a3 = 3C230000
    bc1fl   lbl_80946FE0
    c.le.s  $f2, $f0
    lw      t9, 0x01A0(s0)             # 000001A0
    sb      $zero, 0x0015(t9)          # 00000015
    lw      t0, 0x01A0(s0)             # 000001A0
    sb      $zero, 0x0016(t0)          # 00000016
    lw      t1, 0x01A0(s0)             # 000001A0
    sb      $zero, 0x0017(t1)          # 00000017
    lwc1    $f0, 0x0050(s0)            # 00000050
    c.le.s  $f2, $f0
lbl_80946FE0:
    nop
    bc1f    lbl_80947008
    nop
    lw      t2, 0x01A0(s0)             # 000001A0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      v0, 0x0015(t2)             # 00000015
    lw      t3, 0x01A0(s0)             # 000001A0
    sb      v0, 0x0016(t3)             # 00000016
    lw      t4, 0x01A0(s0)             # 000001A0
    sb      v0, 0x0017(t4)             # 00000017
lbl_80947008:
    lw      t5, -0x5A20(t5)            # 8011A5E0
    beql    t5, $zero, lbl_80947020
    mtc1    $zero, $f0                 # $f0 = 0.00
    b       lbl_80947024
    lwc1    $f0, %lo(var_80948B0C)($at)
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80947020:
    nop
lbl_80947024:
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
lbl_8094703C:
    lh      v0, 0x037E(s0)             # 0000037E
    beq     v0, $zero, lbl_809470DC
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x037E(s0)             # 0000037E
    lh      t7, 0x037E(s0)             # 0000037E
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t7, $zero, lbl_80947240
    lw      $ra, 0x001C($sp)
    jal     func_80946878
    lw      a1, 0x0034($sp)
    lw      t8, 0x0034($sp)
    lui     $at, %hi(var_80948B14)     # $at = 80950000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lw      t9, 0x009C(t8)             # 0000009C
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    andi    t0, t9, 0x0001             # t0 = 00000000
    bne     t0, $zero, lbl_80947098
    nop
    lui     $at, %hi(var_80948B10)     # $at = 80950000
    lwc1    $f4, %lo(var_80948B10)($at)
    b       lbl_809470A0
    swc1    $f4, 0x0410(s0)            # 00000410
lbl_80947098:
    lwc1    $f6, %lo(var_80948B14)($at)
    swc1    $f6, 0x0410(s0)            # 00000410
lbl_809470A0:
    jal     func_80063BF0
    sh      t1, 0x037A(s0)             # 0000037A
    lh      t2, 0x001C(s0)             # 0000001C
    sh      v0, 0x037C(s0)             # 0000037C
    andi    t3, t2, 0xE000             # t3 = 00000000
    sra     t4, t3, 13
    beql    t4, $zero, lbl_80947240
    lw      $ra, 0x001C($sp)
    lwc1    $f0, 0x0410(s0)            # 00000410
    lh      t5, 0x037C(s0)             # 0000037C
    add.s   $f8, $f0, $f0
    sll     t6, t5,  1
    sh      t6, 0x037C(s0)             # 0000037C
    b       lbl_8094723C
    swc1    $f8, 0x0410(s0)            # 00000410
lbl_809470DC:
    lh      t7, 0x037C(s0)             # 0000037C
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x037C(s0)             # 0000037C
    lh      t9, 0x037C(s0)             # 0000037C
    bnel    t9, $zero, lbl_80947140
    lh      v0, 0x037A(s0)             # 0000037A
    jal     func_80063BF0
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    lh      t0, 0x001C(s0)             # 0000001C
    mtc1    $zero, $f10                # $f10 = 0.00
    sh      v0, 0x037E(s0)             # 0000037E
    andi    t1, t0, 0xE000             # t1 = 00000000
    sra     t2, t1, 13
    sh      $zero, 0x037A(s0)          # 0000037A
    beq     t2, $zero, lbl_8094723C
    swc1    $f10, 0x0158(s0)           # 00000158
    lh      t3, 0x037E(s0)             # 0000037E
    bgez    t3, lbl_80947134
    sra     t4, t3,  1
    addiu   $at, t3, 0x0001            # $at = 00000001
    sra     t4, $at,  1
lbl_80947134:
    b       lbl_8094723C
    sh      t4, 0x037E(s0)             # 0000037E
    lh      v0, 0x037A(s0)             # 0000037A
lbl_80947140:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_809471BC
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x037A(s0)             # 0000037A
    lh      t6, 0x037A(s0)             # 0000037A
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x4080                # $at = 40800000
    bne     t6, $zero, lbl_80947170
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f16                  # $f16 = 4.00
    b       lbl_8094717C
    swc1    $f16, 0x0158(s0)           # 00000158
lbl_80947170:
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    swc1    $f18, 0x0158(s0)           # 00000158
lbl_8094717C:
    lwc1    $f6, 0x0158(s0)            # 00000158
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_8094719C
    lh      t7, 0x001C(s0)             # 0000001C
    jal     func_80946878
    lw      a1, 0x0034($sp)
    lh      t7, 0x001C(s0)             # 0000001C
lbl_8094719C:
    andi    t8, t7, 0xE000             # t8 = 00000000
    sra     t9, t8, 13
    beql    t9, $zero, lbl_80947240
    lw      $ra, 0x001C($sp)
    lwc1    $f0, 0x0158(s0)            # 00000158
    add.s   $f8, $f0, $f0
    b       lbl_8094723C
    swc1    $f8, 0x0158(s0)            # 00000158
lbl_809471BC:
    jal     func_8008D6A8
    lw      a1, 0x014C(s0)             # 0000014C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_809471D4
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sh      t0, 0x037A(s0)             # 0000037A
lbl_809471D4:
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f10                  # $f10 = 32768.00
    lwc1    $f16, 0x014C(s0)           # 0000014C
    div.s   $f18, $f10, $f16
    swc1    $f18, 0x002C($sp)
    lwc1    $f4, 0x0154(s0)            # 00000154
    mul.s   $f6, $f18, $f4
    trunc.w.s $f8, $f6
    swc1    $f6, 0x002C($sp)
    mfc1    a0, $f8
    nop
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lwc1    $f10, 0x0410(s0)           # 00000410
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFFC
    mul.s   $f16, $f0, $f10
    jal     func_809466C4
    swc1    $f16, 0x002C($sp)
    lwl     t3, 0x0030(s0)             # 00000030
    lwr     t3, 0x0033(s0)             # 00000033
    swl     t3, 0x00B4(s0)             # 000000B4
    swr     t3, 0x00B7(s0)             # 000000B7
    lhu     t3, 0x0034(s0)             # 00000034
    sh      t3, 0x00B8(s0)             # 000000B8
lbl_8094723C:
    lw      $ra, 0x001C($sp)
lbl_80947240:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80947250:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s0, 0x0048($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)
    sw      a1, 0x008C($sp)
    lui     t7, %hi(var_80948A6C)      # t7 = 80950000
    addiu   t7, t7, %lo(var_80948A6C)  # t7 = 80948A6C
    lw      t9, 0x0000(t7)             # 80948A6C
    addiu   t6, $sp, 0x006C            # t6 = FFFFFFE4
    lw      t8, 0x0004(t7)             # 80948A70
    sw      t9, 0x0000(t6)             # FFFFFFE4
    lw      t9, 0x0008(t7)             # 80948A74
    sw      t8, 0x0004(t6)             # FFFFFFE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      t9, 0x0008(t6)             # FFFFFFEC
    jal     func_8008D6A8
    lw      a1, 0x014C(s0)             # 0000014C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_809472A8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80946878
    lw      a1, 0x008C($sp)
lbl_809472A8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809466C4
    addiu   a1, s0, 0x0410             # a1 = 00000410
    lwl     t1, 0x0030(s0)             # 00000030
    lwr     t1, 0x0033(s0)             # 00000033
    lh      v1, 0x0384(s0)             # 00000384
    swl     t1, 0x00B4(s0)             # 000000B4
    swr     t1, 0x00B7(s0)             # 000000B7
    lhu     t1, 0x0034(s0)             # 00000034
    bne     v1, $zero, lbl_80947390
    sh      t1, 0x00B8(s0)             # 000000B8
    lh      t2, 0x0382(s0)             # 00000382
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t2, $zero, lbl_80947390
    addiu   a0, $zero, 0x4843          # a0 = 00004843
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t3, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    lwc1    $f4, 0x0354(s0)            # 00000354
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f6, 0x0358(s0)            # 00000358
    mul.s   $f0, $f4, $f14
    lwc1    $f8, 0x035C(s0)            # 0000035C
    lw      a2, 0x008C($sp)
    mul.s   $f2, $f6, $f14
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x019C          # a3 = 0000019C
    mul.s   $f12, $f8, $f14
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    add.s   $f16, $f10, $f0
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x0028(s0)           # 00000028
    add.s   $f4, $f18, $f2
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    add.s   $f8, $f6, $f12
    sw      $zero, 0x001C($sp)
    swc1    $f8, 0x0018($sp)
    lh      t4, 0x001C(s0)             # 0000001C
    jal     func_800253F0
    sw      t4, 0x0028($sp)
    beq     v0, $zero, lbl_80947380
    nop
    sw      $zero, 0x0118(v0)          # 00000118
lbl_80947380:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_809474C8
    lw      $ra, 0x004C($sp)
lbl_80947390:
    lh      t5, 0x0382(s0)             # 00000382
    bnel    t5, $zero, lbl_809474C8
    lw      $ra, 0x004C($sp)
    bne     v1, $zero, lbl_809473AC
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_809473B4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809473AC:
    sh      t6, 0x0384(s0)             # 00000384
    lh      v0, 0x0384(s0)             # 00000384
lbl_809473B4:
    beql    v0, $zero, lbl_809474C8
    lw      $ra, 0x004C($sp)
    lw      t9, 0x0024(s0)             # 00000024
    addiu   t7, $sp, 0x0078            # t7 = FFFFFFF0
    sw      t9, 0x0000(t7)             # FFFFFFF0
    lw      t8, 0x0028(s0)             # 00000028
    sw      t8, 0x0004(t7)             # FFFFFFF4
    lw      t9, 0x002C(s0)             # 0000002C
    jal     func_800CDCCC              # Rand.Next() float
    sw      t9, 0x0008(t7)             # FFFFFFF8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    sub.s   $f16, $f0, $f10
    lwc1    $f8, 0x007C($sp)
    mul.s   $f4, $f16, $f18
    add.s   $f6, $f14, $f4
    add.s   $f10, $f8, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x007C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x4200                # $at = 42000000
    mtc1    $at, $f4                   # $f4 = 32.00
    sub.s   $f18, $f0, $f16
    lwc1    $f6, 0x0078($sp)
    mul.s   $f8, $f18, $f4
    add.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0078($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x4200                # $at = 42000000
    mtc1    $at, $f4                   # $f4 = 32.00
    sub.s   $f18, $f0, $f16
    lwc1    $f8, 0x0080($sp)
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFE4
    addiu   t0, $zero, 0x002A          # t0 = 0000002A
    mul.s   $f6, $f18, $f4
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    add.s   $f10, $f8, $f6
    addiu   t7, $zero, 0x0009          # t7 = 00000009
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x003C($sp)
    swc1    $f10, 0x0080($sp)
    sw      t7, 0x0038($sp)
    sw      t6, 0x0034($sp)
    sw      t5, 0x0028($sp)
    sw      t4, 0x0024($sp)
    sw      t3, 0x0020($sp)
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    sw      t0, 0x0010($sp)
    or      a3, a2, $zero              # a3 = FFFFFFE4
    lw      a0, 0x008C($sp)
    addiu   a1, $sp, 0x0078            # a1 = FFFFFFF0
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x002C($sp)
    jal     func_8001E1D4
    sw      $zero, 0x0030($sp)
    lw      $ra, 0x004C($sp)
lbl_809474C8:
    lw      s0, 0x0048($sp)
    addiu   $sp, $sp, 0x0088           # $sp += 0x88
    jr      $ra
    nop


func_809474D8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x00B4(s0)             # 000000B4
    lh      t8, 0x00B8(s0)             # 000000B8
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    addiu   t7, t6, 0x1000             # t7 = 00001000
    addiu   t9, t8, 0x1000             # t9 = 00001000
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t7, 0x00B4(s0)             # 000000B4
    sh      t9, 0x00B8(s0)             # 000000B8
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t0, 0x0014($sp)
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    lhu     v1, 0x0088(s0)             # 00000088
    andi    t1, v1, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_80947648
    lw      $ra, 0x0034($sp)
    lwc1    $f6, 0x0060(s0)            # 00000060
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0xC6FA                # $at = C6FA0000
    c.le.s  $f8, $f6
    nop
    bc1tl   lbl_80947648
    lw      $ra, 0x0034($sp)
    lwc1    $f0, 0x0080(s0)            # 00000080
    mtc1    $at, $f10                  # $f10 = -32000.00
    lui     $at, 0x46FA                # $at = 46FA0000
    c.le.s  $f0, $f10
    nop
    bc1t    lbl_80947598
    nop
    mtc1    $at, $f16                  # $f16 = 32000.00
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f16, $f0
    nop
    bc1fl   lbl_809475AC
    lh      v0, 0x037A(s0)             # 0000037A
lbl_80947598:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80947648
    lw      $ra, 0x0034($sp)
    lh      v0, 0x037A(s0)             # 0000037A
lbl_809475AC:
    andi    t2, v1, 0xFFFE             # t2 = 00000000
    sh      t2, 0x0088(s0)             # 00000088
    bne     v0, $zero, lbl_809475D0
    lui     t3, %hi(func_80947658)     # t3 = 80940000
    addiu   t3, t3, %lo(func_80947658) # t3 = 80947658
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    sw      t3, 0x0180(s0)             # 00000180
    b       lbl_80947600
    sh      t4, 0x0384(s0)             # 00000384
lbl_809475D0:
    mtc1    v0, $f18                   # $f18 = 0.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f6                   # $f6 = 8.00
    cvt.s.w $f4, $f18
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x037A(s0)             # 0000037A
    mul.s   $f8, $f4, $f6
    nop
    mul.s   $f16, $f8, $f10
    swc1    $f16, 0x0060(s0)           # 00000060
lbl_80947600:
    jal     func_80022FD0
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f18                  # $f18 = 2.00
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    addiu   t7, $zero, 0x0078          # t7 = 00000078
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sw      t8, 0x001C($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0010($sp)
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x4180                 # a3 = 41800000
    sw      $zero, 0x0020($sp)
    jal     func_800260E8
    swc1    $f18, 0x0014($sp)
    lw      $ra, 0x0034($sp)
lbl_80947648:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80947658:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s0, 0x0048($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)
    sw      a1, 0x0074($sp)
    lui     t7, %hi(var_80948A78)      # t7 = 80950000
    addiu   t7, t7, %lo(var_80948A78)  # t7 = 80948A78
    lw      t9, 0x0000(t7)             # 80948A78
    addiu   t6, $sp, 0x0064            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80948A7C
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80948A80
    lui     t1, %hi(var_80948A84)      # t1 = 80950000
    addiu   t1, t1, %lo(var_80948A84)  # t1 = 80948A84
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t3, 0x0000(t1)             # 80948A84
    addiu   t0, $sp, 0x0058            # t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             # 80948A88
    sw      t3, 0x0000(t0)             # FFFFFFE8
    lw      t3, 0x0008(t1)             # 80948A8C
    sw      t2, 0x0004(t0)             # FFFFFFEC
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t3, 0x0008(t0)             # FFFFFFF0
    lh      v0, 0x0384(s0)             # 00000384
    addiu   a2, s0, 0x0024             # a2 = 00000024
    addiu   a3, $zero, 0x0030          # a3 = 00000030
    bne     v0, $zero, lbl_809476D4
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    b       lbl_809476DC
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809476D4:
    sh      t4, 0x0384(s0)             # 00000384
    lh      v1, 0x0384(s0)             # 00000384
lbl_809476DC:
    beq     v1, $zero, lbl_809477F0
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    sub.s   $f6, $f0, $f4
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lwc1    $f16, 0x0028(s0)           # 00000028
    mul.s   $f10, $f6, $f8
    add.s   $f4, $f16, $f18
    add.s   $f6, $f10, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x005C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     $at, 0x4200                # $at = 42000000
    mtc1    $at, $f18                  # $f18 = 32.00
    sub.s   $f16, $f0, $f8
    lwc1    $f4, 0x0024(s0)            # 00000024
    mul.s   $f10, $f16, $f18
    add.s   $f6, $f10, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0058($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     $at, 0x4200                # $at = 42000000
    mtc1    $at, $f18                  # $f18 = 32.00
    sub.s   $f16, $f0, $f8
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFF4
    addiu   t5, $zero, 0x002A          # t5 = 0000002A
    mul.s   $f10, $f16, $f18
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    add.s   $f6, $f10, $f4
    addiu   t2, $zero, 0x0009          # t2 = 00000009
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x003C($sp)
    swc1    $f6, 0x0060($sp)
    sw      t2, 0x0038($sp)
    sw      t1, 0x0034($sp)
    sw      t0, 0x0028($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x0020($sp)
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0010($sp)
    or      a3, a2, $zero              # a3 = FFFFFFF4
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0014($sp)
    lw      a0, 0x0074($sp)
    jal     func_8001E1D4
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFE8
    lh      t4, 0x00B4(s0)             # 000000B4
    lh      t6, 0x00B8(s0)             # 000000B8
    addiu   t5, t4, 0x1000             # t5 = 00001000
    addiu   t7, t6, 0x1000             # t7 = 00001000
    sh      t5, 0x00B4(s0)             # 000000B4
    b       lbl_80947800
    sh      t7, 0x00B8(s0)             # 000000B8
lbl_809477F0:
    jal     func_80013A84
    lw      a0, 0x0074($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80947800:
    lw      $ra, 0x004C($sp)
    lw      s0, 0x0048($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_80947814:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    addiu   a0, a0, 0x0024             # a0 = 00000024
    jal     func_80063F00
    sw      a0, 0x001C($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x001C($sp)
    lw      a1, 0x002C($sp)
    lh      t7, 0x007E(t6)             # 0000007E
    subu    t8, v0, t7
    jal     func_80063F34
    sh      t8, 0x0024($sp)
    lh      t9, 0x0024($sp)
    addiu   a0, v0, 0xC000             # a0 = FFFFC000
    sll     a0, a0, 16
    bltz    t9, lbl_80947870
    sra     a0, a0, 16
    b       lbl_80947874
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
lbl_80947870:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80947874:
    multu   v1, a0
    lw      $ra, 0x0014($sp)
    mflo    v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80947890:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    lw      v1, 0x1C44(a1)             # 00001C44
    or      a0, a1, $zero              # a0 = 00000000
    lw      t6, 0x066C(v1)             # 0000066C
    sll     t7, t6, 10
    bltzl   t7, lbl_809478CC
    sw      v1, 0x005C($sp)
    beql    a2, $zero, lbl_809478CC
    sw      v1, 0x005C($sp)
    b       lbl_809479D0
    or      v0, $zero, $zero           # v0 = 00000000
    sw      v1, 0x005C($sp)
lbl_809478CC:
    sw      a1, 0x0064($sp)
    jal     func_8002177C
    sw      a2, 0x0068($sp)
    lw      v1, 0x005C($sp)
    beq     v0, $zero, lbl_809478F4
    lw      a2, 0x0068($sp)
    beql    a2, $zero, lbl_809478F8
    addiu   a1, v1, 0x0024             # a1 = 00000024
    b       lbl_809479D0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809478F4:
    addiu   a1, v1, 0x0024             # a1 = 00000024
lbl_809478F8:
    sw      a1, 0x0040($sp)
    jal     func_80947814
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x00B8(s0)             # 000000B8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0040($sp)
    subu    t9, v0, t8
    bltz    t9, lbl_80947930
    nop
    jal     func_80947814
    or      a0, s0, $zero              # a0 = 00000000
    lh      t0, 0x00B8(s0)             # 000000B8
    b       lbl_80947944
    subu    v1, v0, t0
lbl_80947930:
    jal     func_80947814
    lw      a1, 0x0040($sp)
    lh      t1, 0x00B8(s0)             # 000000B8
    subu    v1, v0, t1
    subu    v1, $zero, v1
lbl_80947944:
    slti    $at, v1, 0x1FC2
    bne     $at, $zero, lbl_80947958
    addiu   a0, s0, 0x0024             # a0 = 00000024
    b       lbl_809479D0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80947958:
    lw      a1, 0x0040($sp)
    jal     func_80063E18
    sw      a0, 0x003C($sp)
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f4                   # $f4 = 130.00
    lw      a0, 0x0064($sp)
    lw      a1, 0x003C($sp)
    c.le.s  $f4, $f0
    lw      a2, 0x0040($sp)
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFE8
    addiu   t2, $sp, 0x0058            # t2 = FFFFFFF8
    bc1f    lbl_80947994
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    b       lbl_809479D0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80947994:
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $sp, 0x0054            # t5 = FFFFFFF4
    sw      t5, 0x0024($sp)
    sw      t4, 0x0020($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    sw      $zero, 0x0018($sp)
    jal     func_800308B4
    sw      $zero, 0x001C($sp)
    bnel    v0, $zero, lbl_809479D0
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_809479D0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809479D0:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_809479E4:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      a1, 0x006C($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x004C($sp)
    lbu     t7, 0x0196(s0)             # 00000196
    lw      t1, 0x006C($sp)
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_80947A40
    lw      t2, 0x009C(t1)             # 0000009C
    lbu     t9, 0x0195(s0)             # 00000195
    addiu   s1, s0, 0x0024             # s1 = 00000024
    andi    t0, t9, 0xFFFD             # t0 = 00000000
    sb      t0, 0x0195(s0)             # 00000195
    lw      s2, 0x006C($sp)
    sw      $zero, 0x004C($sp)
    b       lbl_80947BC0
    addiu   s2, s2, 0x07C0             # s2 = 000007C0
    lw      t2, 0x009C(t1)             # 0000009C
lbl_80947A40:
    addiu   s2, t1, 0x07C0             # s2 = 000007C0
    or      a0, s2, $zero              # a0 = 000007C0
    andi    t3, t2, 0x0003             # t3 = 00000000
    bne     t3, $zero, lbl_80947A9C
    addiu   s1, s0, 0x0024             # s1 = 00000024
    addiu   t4, $sp, 0x0060            # t4 = FFFFFFF8
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $sp, 0x005C            # t7 = FFFFFFF4
    sw      t7, 0x0024($sp)
    sw      t6, 0x0020($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    or      a1, s1, $zero              # a1 = 00000024
    addiu   a2, s0, 0x0444             # a2 = 00000444
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFE8
    sw      $zero, 0x0018($sp)
    jal     func_800308B4
    sw      $zero, 0x001C($sp)
    bnel    v0, $zero, lbl_80947AA0
    lw      t8, 0x006C($sp)
    b       lbl_80947BC0
    sw      $zero, 0x004C($sp)
lbl_80947A9C:
    lw      t8, 0x006C($sp)
lbl_80947AA0:
    addiu   s1, s0, 0x0024             # s1 = 00000024
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t9, 0x009C(t8)             # 0000009C
    addiu   s2, t8, 0x07C0             # s2 = 000007C0
    or      a0, s2, $zero              # a0 = 000007C0
    andi    t0, t9, 0x0003             # t0 = 00000000
    bne     t0, $at, lbl_80947B04
    or      a1, s1, $zero              # a1 = 00000024
    addiu   t2, $sp, 0x0060            # t2 = FFFFFFF8
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t4, $sp, 0x005C            # t4 = FFFFFFF4
    sw      t4, 0x0024($sp)
    sw      t1, 0x0020($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    addiu   a2, s0, 0x0450             # a2 = 00000450
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFE8
    sw      $zero, 0x0018($sp)
    jal     func_800308B4
    sw      $zero, 0x001C($sp)
    beql    v0, $zero, lbl_80947B08
    lw      t5, 0x006C($sp)
    b       lbl_80947BC0
    sw      $zero, 0x004C($sp)
lbl_80947B04:
    lw      t5, 0x006C($sp)
lbl_80947B08:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s2, $zero              # a0 = 000007C0
    lw      t6, 0x009C(t5)             # 0000009C
    or      a1, s1, $zero              # a1 = 00000024
    addiu   a2, s0, 0x045C             # a2 = 0000045C
    andi    t7, t6, 0x0003             # t7 = 00000000
    bne     t7, $at, lbl_80947B64
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFE8
    addiu   t8, $sp, 0x0060            # t8 = FFFFFFF8
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t2, $sp, 0x005C            # t2 = FFFFFFF4
    sw      t2, 0x0024($sp)
    sw      t0, 0x0020($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      $zero, 0x0018($sp)
    jal     func_800308B4
    sw      $zero, 0x001C($sp)
    bnel    v0, $zero, lbl_80947B68
    lw      t3, 0x006C($sp)
    b       lbl_80947BC0
    sw      $zero, 0x004C($sp)
lbl_80947B64:
    lw      t3, 0x006C($sp)
lbl_80947B68:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s2, $zero              # a0 = 000007C0
    lw      t1, 0x009C(t3)             # 0000009C
    or      a1, s1, $zero              # a1 = 00000024
    addiu   a2, s0, 0x0468             # a2 = 00000468
    andi    t4, t1, 0x0003             # t4 = 00000000
    bne     t4, $at, lbl_80947BC0
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFE8
    addiu   t5, $sp, 0x0060            # t5 = FFFFFFF8
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $sp, 0x005C            # t8 = FFFFFFF4
    sw      t8, 0x0024($sp)
    sw      t7, 0x0020($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    sw      $zero, 0x0018($sp)
    jal     func_800308B4
    sw      $zero, 0x001C($sp)
    beql    v0, $zero, lbl_80947BC4
    addiu   t9, s0, 0x0420             # t9 = 00000420
    sw      $zero, 0x004C($sp)
lbl_80947BC0:
    addiu   t9, s0, 0x0420             # t9 = 00000420
lbl_80947BC4:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $sp, 0x005C            # t3 = FFFFFFF4
    sw      t3, 0x0024($sp)
    sw      t2, 0x0020($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 000007C0
    or      a1, s1, $zero              # a1 = 00000024
    addiu   a2, s0, 0x0474             # a2 = 00000474
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFE8
    sw      $zero, 0x0018($sp)
    jal     func_800308B4
    sw      $zero, 0x001C($sp)
    beql    v0, $zero, lbl_80947CE4
    lw      v0, 0x004C($sp)
    lw      v0, 0x0420(s0)             # 00000420
    lh      t1, 0x0008(v0)             # 00000008
    lh      t4, 0x000C(v0)             # 0000000C
    mtc1    t1, $f4                    # $f4 = 0.00
    mtc1    t4, $f6                    # $f6 = 0.00
    cvt.s.w $f12, $f4
    jal     func_800CD76C
    cvt.s.w $f14, $f6
    lui     $at, %hi(var_80948B18)     # $at = 80950000
    lwc1    $f8, %lo(var_80948B18)($at)
    addiu   t7, $sp, 0x0050            # t7 = FFFFFFE8
    mul.s   $f10, $f0, $f8
    trunc.w.s $f16, $f10
    mfc1    t6, $f16
    nop
    sh      t6, 0x007E(s0)             # 0000007E
    lw      t9, 0x0000(t7)             # FFFFFFE8
    sw      t9, 0x0000(s1)             # 00000024
    lw      t8, 0x0004(t7)             # FFFFFFEC
    sw      t8, 0x0004(s1)             # 00000028
    lw      t9, 0x0008(t7)             # FFFFFFF0
    sw      t9, 0x0008(s1)             # 0000002C
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lwc1    $f18, 0x0024(s0)           # 00000024
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f6, $f4, $f0
    add.s   $f8, $f18, $f6
    jal     func_80063684              # coss?
    swc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f16                  # $f16 = 6.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    addiu   t0, $sp, 0x0050            # t0 = FFFFFFE8
    mul.s   $f4, $f16, $f0
    lh      a0, 0x0032(s0)             # 00000032
    add.s   $f18, $f10, $f4
    swc1    $f18, 0x002C(s0)           # 0000002C
    lw      t3, 0x0000(t0)             # FFFFFFE8
    sw      t3, 0x0424(s0)             # 00000424
    lw      t2, 0x0004(t0)             # FFFFFFEC
    sw      t2, 0x0428(s0)             # 00000428
    lw      t3, 0x0008(t0)             # FFFFFFF0
    jal     func_800636C4              # sins?
    sw      t3, 0x042C(s0)             # 0000042C
    lwc1    $f6, 0x0424(s0)            # 00000424
    lh      a0, 0x0032(s0)             # 00000032
    add.s   $f8, $f6, $f0
    jal     func_80063684              # coss?
    swc1    $f8, 0x0424(s0)            # 00000424
    lwc1    $f16, 0x042C(s0)           # 0000042C
    add.s   $f10, $f16, $f0
    swc1    $f10, 0x042C(s0)           # 0000042C
    lw      v0, 0x004C($sp)
lbl_80947CE4:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_80947CFC:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0054($sp)
    sw      a2, 0x0058($sp)
    sw      a3, 0x005C($sp)
    lui     $at, %hi(var_80948B1C)     # $at = 80950000
    lwc1    $f4, %lo(var_80948B1C)($at)
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lw      a1, 0x0060($sp)
    lui     a3, 0x42C8                 # a3 = 42C80000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0054($sp)
    swc1    $f6, 0x0030($sp)
    lwc1    $f10, 0x0030($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x0058($sp)
    sub.s   $f16, $f8, $f10
    swc1    $f4, 0x002C($sp)
    lwc1    $f8, 0x002C($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f4, 0x005C($sp)
    sub.s   $f18, $f6, $f8
    swc1    $f10, 0x0028($sp)
    lwc1    $f6, 0x0028($sp)
    sub.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f8
    swc1    $f8, 0x0034($sp)
    mul.s   $f4, $f16, $f16
    nop
    mul.s   $f6, $f18, $f18
    add.s   $f8, $f4, $f6
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0034($sp)
    add.s   $f0, $f8, $f10
    sqrt.s  $f0, $f0
    c.eq.s  $f0, $f4
    nop
    bc1f    lbl_80947DC4
    nop
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $zero, $f12                # $f12 = 0.00
    mtc1    $zero, $f14                # $f14 = 0.00
    b       lbl_80947DD4
    lwc1    $f0, 0x0068(s0)            # 00000068
lbl_80947DC4:
    div.s   $f14, $f16, $f0
    div.s   $f12, $f18, $f0
    div.s   $f2, $f6, $f0
    lwc1    $f0, 0x0068(s0)            # 00000068
lbl_80947DD4:
    lwc1    $f8, 0x0030($sp)
    mul.s   $f14, $f14, $f0
    add.s   $f10, $f8, $f14
    mul.s   $f12, $f12, $f0
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x002C($sp)
    mul.s   $f2, $f2, $f0
    add.s   $f6, $f4, $f12
    swc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x0028($sp)
    add.s   $f10, $f8, $f2
    swc1    $f10, 0x002C(s0)           # 0000002C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80947E14:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0304             # a0 = 06000304
    lh      v1, 0x0378(s0)             # 00000378
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   a0, s0, 0x0158             # a0 = 00000158
    bne     v1, $zero, lbl_80947E58
    cvt.s.w $f2, $f4
    b       lbl_80947E64
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80947E58:
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0378(s0)             # 00000378
    lh      v0, 0x0378(s0)             # 00000378
lbl_80947E64:
    beq     v0, $zero, lbl_80947E98
    lw      a1, 0x0034($sp)
    lui     $at, %hi(var_80948B20)     # $at = 80950000
    lwc1    $f6, %lo(var_80948B20)($at)
    lui     a2, 0x3F19                 # a2 = 3F190000
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    addiu   a0, s0, 0x0158             # a0 = 00000158
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x447A                 # a3 = 447A0000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    b       lbl_80947FB0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80947E98:
    lui     $at, %hi(var_80948B24)     # $at = 80950000
    lwc1    $f8, %lo(var_80948B24)($at)
    lui     a2, 0x3F19                 # a2 = 3F190000
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    lui     a3, 0x447A                 # a3 = 447A0000
    swc1    $f2, 0x0028($sp)
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    lw      t7, 0x003C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lwc1    $f2, 0x0028($sp)
    bne     t7, $at, lbl_80947EF0
    lw      v1, 0x0040($sp)
    lwc1    $f10, 0x0154(s0)           # 00000154
    lwc1    $f16, 0x0158(s0)           # 00000158
    add.s   $f18, $f10, $f16
    c.lt.s  $f2, $f18
    nop
    bc1fl   lbl_80947EF4
    lh      t8, 0x07A0(v1)             # 000007A0
    b       lbl_80947FB0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80947EF0:
    lh      t8, 0x07A0(v1)             # 000007A0
lbl_80947EF4:
    addiu   a0, s0, 0x0024             # a0 = 00000024
    sll     t9, t8,  2
    addu    t0, v1, t9
    lw      v0, 0x0790(t0)             # 00000790
    jal     func_80063E18
    addiu   a1, v0, 0x005C             # a1 = 0000005C
    lui     $at, 0x43BE                # $at = 43BE0000
    mtc1    $at, $f4                   # $f4 = 380.00
    nop
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80947F68
    sh      $zero, 0x0430(s0)          # 00000430
    lh      v1, 0x0430(s0)             # 00000430
    or      a0, s0, $zero              # a0 = 00000000
    bne     v1, $zero, lbl_80947F40
    addiu   t1, v1, 0xFFFF             # t1 = FFFFFFFF
    b       lbl_80947F48
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80947F40:
    sh      t1, 0x0430(s0)             # 00000430
    lh      v0, 0x0430(s0)             # 00000430
lbl_80947F48:
    bnel    v0, $zero, lbl_80947F6C
    lh      a3, 0x003A($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x388C          # a1 = 0000388C
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    b       lbl_80947F68
    sh      t2, 0x0430(s0)             # 00000430
    sh      $zero, 0x0430(s0)          # 00000430
lbl_80947F68:
    lh      a3, 0x003A($sp)
lbl_80947F6C:
    lh      a1, 0x0434(s0)             # 00000434
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80064508
    sw      a3, 0x0010($sp)
    lwl     t4, 0x00B4(s0)             # 000000B4
    lwr     t4, 0x00B7(s0)             # 000000B7
    lh      t5, 0x0434(s0)             # 00000434
    lh      t6, 0x00B8(s0)             # 000000B8
    swl     t4, 0x0030(s0)             # 00000030
    swr     t4, 0x0033(s0)             # 00000033
    lhu     t4, 0x00B8(s0)             # 000000B8
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t5, t6, lbl_80947FB0
    sh      t4, 0x0034(s0)             # 00000034
    b       lbl_80947FB0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80947FB0:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80947FC4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x40C0                 # a1 = 40C00000
    addiu   a2, $zero, 0x03E8          # a2 = 000003E8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80947E14
    sw      t6, 0x0010($sp)
    beql    v0, $zero, lbl_809480A8
    lh      v0, 0x0432(s0)             # 00000432
    jal     func_800CDCCC              # Rand.Next() float
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x002C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0xBF80                # $at = BF800000
    lwc1    $f8, 0x002C($sp)
    c.le.s  $f4, $f0
    nop
    bc1fl   lbl_80948040
    mtc1    $at, $f0                   # $f0 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    b       lbl_80948044
    nop
    mtc1    $at, $f0                   # $f0 = 1.00
lbl_80948040:
    nop
lbl_80948044:
    lui     $at, %hi(var_80948B28)     # $at = 80950000
    lwc1    $f6, %lo(var_80948B28)($at)
    lh      t2, 0x0034(s0)             # 00000034
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    mul.s   $f10, $f6, $f8
    mtc1    t2, $f8                    # $f8 = 0.00
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    trunc.w.s $f16, $f10
    cvt.s.w $f10, $f8
    mfc1    t8, $f16
    nop
    sll     t9, t8, 16
    sra     t0, t9, 16
    addiu   t1, t0, 0x2EE0             # t1 = 00002EE0
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f0, $f4
    add.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    t4, $f18
    jal     func_80063BF0
    sh      t4, 0x0434(s0)             # 00000434
    sh      v0, 0x0378(s0)             # 00000378
    lh      v0, 0x0432(s0)             # 00000432
lbl_809480A8:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bne     v0, $zero, lbl_809480C0
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    b       lbl_809480C8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809480C0:
    sh      t5, 0x0432(s0)             # 00000432
    lh      v1, 0x0432(s0)             # 00000432
lbl_809480C8:
    bnel    v1, $zero, lbl_80948100
    lw      $ra, 0x0024($sp)
    jal     func_80947890
    lw      a1, 0x003C($sp)
    beq     v0, $zero, lbl_809480FC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39F2          # a1 = 000039F2
    lui     t7, %hi(func_80948110)     # t7 = 80950000
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    addiu   t7, t7, %lo(func_80948110) # t7 = 80948110
    sh      t6, 0x0432(s0)             # 00000432
    sw      t7, 0x0180(s0)             # 00000180
lbl_809480FC:
    lw      $ra, 0x0024($sp)
lbl_80948100:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80948110:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lh      v1, 0x0432(s0)             # 00000432
    lw      a3, 0x1C44(a1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    bne     v1, $zero, lbl_8094813C
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80948144
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8094813C:
    sh      t6, 0x0432(s0)             # 00000432
    lh      v0, 0x0432(s0)             # 00000432
lbl_80948144:
    beq     v0, $zero, lbl_809481D4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    sw      a1, 0x003C($sp)
    jal     func_80947890
    sw      a3, 0x0034($sp)
    beq     v0, $zero, lbl_809481C4
    lw      a3, 0x0034($sp)
    lw      t8, 0x0024(a3)             # 00000024
    addiu   a1, s0, 0x0438             # a1 = 00000438
    lui     $at, 0x41F0                # $at = 41F00000
    sw      t8, 0x0000(a1)             # 00000438
    lw      t7, 0x0028(a3)             # 00000028
    mtc1    $at, $f6                   # $f6 = 30.00
    or      a0, s0, $zero              # a0 = 00000000
    sw      t7, 0x0004(a1)             # 0000043C
    lw      t8, 0x002C(a3)             # 0000002C
    sw      t8, 0x0008(a1)             # 00000440
    lwc1    $f4, 0x043C(s0)            # 0000043C
    add.s   $f8, $f4, $f6
    jal     func_80947814
    swc1    $f8, 0x043C(s0)            # 0000043C
    sh      v0, 0x0434(s0)             # 00000434
    lw      t9, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x40C0                 # a1 = 40C00000
    addiu   a2, $zero, 0x0FA0          # a2 = 00000FA0
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80947E14
    sw      t9, 0x0010($sp)
    b       lbl_809482E4
    lw      $ra, 0x0024($sp)
lbl_809481C4:
    lui     t0, %hi(func_80947FC4)     # t0 = 80940000
    addiu   t0, t0, %lo(func_80947FC4) # t0 = 80947FC4
    b       lbl_809482E0
    sw      t0, 0x0180(s0)             # 00000180
lbl_809481D4:
    jal     func_809479E4
    sw      a1, 0x003C($sp)
    bne     v0, $zero, lbl_80948230
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    jal     func_80063BF0
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    sh      v0, 0x0432(s0)             # 00000432
    addiu   a1, s0, 0x0008             # a1 = 00000008
    sw      a1, 0x0028($sp)
    jal     func_80947814
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0028($sp)
    sh      v0, 0x0434(s0)             # 00000434
    lui     t3, %hi(func_809483A4)     # t3 = 80950000
    lw      t2, 0x0000(a1)             # 00000000
    addiu   t3, t3, %lo(func_809483A4) # t3 = 809483A4
    sw      t2, 0x0438(s0)             # 00000438
    lw      t1, 0x0004(a1)             # 00000004
    sw      t1, 0x043C(s0)             # 0000043C
    lw      t2, 0x0008(a1)             # 00000008
    sw      t3, 0x0180(s0)             # 00000180
    b       lbl_809482E0
    sw      t2, 0x0440(s0)             # 00000440
lbl_80948230:
    addiu   v0, s0, 0x0438             # v0 = 00000438
    lw      t5, 0x0000(v0)             # 00000438
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f10                  # $f10 = 8.00
    sw      t5, 0x0004($sp)
    lw      a2, 0x0004(v0)             # 0000043C
    lw      a1, 0x0004($sp)
    or      a0, s0, $zero              # a0 = 00000000
    sw      a2, 0x0008($sp)
    lw      a3, 0x0008(v0)             # 00000440
    sw      v0, 0x0028($sp)
    swc1    $f10, 0x0010($sp)
    jal     func_80947CFC
    sw      a3, 0x000C($sp)
    lh      v1, 0x0430(s0)             # 00000430
    or      a0, s0, $zero              # a0 = 00000000
    bne     v1, $zero, lbl_80948280
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80948288
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80948280:
    sh      t6, 0x0430(s0)             # 00000430
    lh      v0, 0x0430(s0)             # 00000430
lbl_80948288:
    bnel    v0, $zero, lbl_809482A4
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80022FD0
    addiu   a1, $zero, 0x388D          # a1 = 0000388D
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sh      t7, 0x0430(s0)             # 00000430
    addiu   a0, s0, 0x0024             # a0 = 00000024
lbl_809482A4:
    jal     func_80063E18
    lw      a1, 0x0028($sp)
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f16                  # $f16 = 13.00
    nop
    c.lt.s  $f16, $f0
    nop
    bc1f    lbl_809482D4
    nop
    jal     func_8002177C
    lw      a0, 0x003C($sp)
    beq     v0, $zero, lbl_809482E0
lbl_809482D4:
    lui     t8, %hi(func_809482F4)     # t8 = 80950000
    addiu   t8, t8, %lo(func_809482F4) # t8 = 809482F4
    sw      t8, 0x0180(s0)             # 00000180
lbl_809482E0:
    lw      $ra, 0x0024($sp)
lbl_809482E4:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_809482F4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    addiu   v0, a0, 0x0438             # v0 = 00000438
    lw      t7, 0x0000(v0)             # 00000438
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      t7, 0x0004($sp)
    lw      a2, 0x0004(v0)             # 0000043C
    lw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    lw      a3, 0x0008(v0)             # 00000440
    sw      a0, 0x0030($sp)
    sw      v0, 0x0028($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_80947CFC
    sw      a3, 0x000C($sp)
    lw      a0, 0x0030($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f8, 0x0068(a0)            # 00000068
    addiu   a1, a0, 0x0008             # a1 = 00000008
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_80948398
    lw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    jal     func_80947814
    sw      a1, 0x0024($sp)
    lw      a0, 0x0030($sp)
    lw      a1, 0x0024($sp)
    lui     t1, %hi(func_809483A4)     # t1 = 80950000
    sh      v0, 0x0434(a0)             # 00000434
    lw      t8, 0x0028($sp)
    lw      t0, 0x0000(a1)             # 00000000
    addiu   t1, t1, %lo(func_809483A4) # t1 = 809483A4
    sw      t0, 0x0000(t8)             # 00000000
    lw      t9, 0x0004(a1)             # 00000004
    sw      t9, 0x0004(t8)             # 00000004
    lw      t0, 0x0008(a1)             # 00000008
    sw      t0, 0x0008(t8)             # 00000008
    sw      t1, 0x0180(a0)             # 00000180
    lw      $ra, 0x001C($sp)
lbl_80948398:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809483A4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x40C0                 # a1 = 40C00000
    addiu   a2, $zero, 0x03E8          # a2 = 000003E8
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80947E14
    sw      t6, 0x0010($sp)
    beq     v0, $zero, lbl_80948440
    addiu   v0, s0, 0x0438             # v0 = 00000438
    lw      t8, 0x0000(v0)             # 00000438
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    sw      t8, 0x0004($sp)
    lw      a2, 0x0004(v0)             # 0000043C
    lw      a1, 0x0004($sp)
    or      a0, s0, $zero              # a0 = 00000000
    sw      a2, 0x0008($sp)
    lw      a3, 0x0008(v0)             # 00000440
    sw      v0, 0x0028($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_80947CFC
    sw      a3, 0x000C($sp)
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80063E18
    lw      a1, 0x0028($sp)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lui     t9, %hi(func_80947FC4)     # t9 = 80940000
    addiu   t9, t9, %lo(func_80947FC4) # t9 = 80947FC4
    c.lt.s  $f6, $f0
    nop
    bc1tl   lbl_80948444
    lw      $ra, 0x0024($sp)
    sw      t9, 0x0180(s0)             # 00000180
lbl_80948440:
    lw      $ra, 0x0024($sp)
lbl_80948444:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80948454:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809463BC
    lw      a1, 0x0024($sp)
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jalr    $ra, t9
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809465B8
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809484B0:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s0, 0x0018($sp)
    sw      a3, 0x0084($sp)
    addiu   a3, $sp, 0x006C            # a3 = FFFFFFF4
    lw      s0, 0x008C($sp)
    sw      $ra, 0x001C($sp)
    sw      a1, 0x007C($sp)
    lui     t6, %hi(var_80948A90)      # t6 = 80950000
    addiu   t6, t6, %lo(var_80948A90)  # t6 = 80948A90
    lw      t8, 0x0000(t6)             # 80948A90
    lui     t0, %hi(var_80948A9C)      # t0 = 80950000
    addiu   t0, t0, %lo(var_80948A9C)  # t0 = 80948A9C
    sw      t8, 0x0000(a3)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 80948A94
    addiu   t9, $sp, 0x0060            # t9 = FFFFFFE8
    lui     t4, %hi(var_80948AA8)      # t4 = 80950000
    sw      t7, 0x0004(a3)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 80948A98
    addiu   t4, t4, %lo(var_80948AA8)  # t4 = 80948AA8
    addiu   t3, $sp, 0x0054            # t3 = FFFFFFDC
    sw      t8, 0x0008(a3)             # FFFFFFFC
    lw      t2, 0x0000(t0)             # 80948A9C
    lw      t1, 0x0004(t0)             # 80948AA0
    lui     t8, %hi(var_80948AB4)      # t8 = 80950000
    sw      t2, 0x0000(t9)             # FFFFFFE8
    lw      t2, 0x0008(t0)             # 80948AA4
    sw      t1, 0x0004(t9)             # FFFFFFEC
    addiu   t8, t8, %lo(var_80948AB4)  # t8 = 80948AB4
    sw      t2, 0x0008(t9)             # FFFFFFF0
    lw      t6, 0x0000(t4)             # 80948AA8
    lw      t5, 0x0004(t4)             # 80948AAC
    addiu   t7, $sp, 0x0048            # t7 = FFFFFFD0
    sw      t6, 0x0000(t3)             # FFFFFFDC
    lw      t6, 0x0008(t4)             # 80948AB0
    sw      t5, 0x0004(t3)             # FFFFFFE0
    lui     t2, %hi(var_80948AC0)      # t2 = 80950000
    sw      t6, 0x0008(t3)             # FFFFFFE4
    lw      t0, 0x0000(t8)             # 80948AB4
    lw      t9, 0x0004(t8)             # 80948AB8
    addiu   t2, t2, %lo(var_80948AC0)  # t2 = 80948AC0
    sw      t0, 0x0000(t7)             # FFFFFFD0
    lw      t0, 0x0008(t8)             # 80948ABC
    sw      t9, 0x0004(t7)             # FFFFFFD4
    addiu   t1, $sp, 0x003C            # t1 = FFFFFFC4
    sw      t0, 0x0008(t7)             # FFFFFFD8
    lw      t4, 0x0000(t2)             # 80948AC0
    lw      t3, 0x0004(t2)             # 80948AC4
    lui     t6, %hi(var_80948ACC)      # t6 = 80950000
    sw      t4, 0x0000(t1)             # FFFFFFC4
    lw      t4, 0x0008(t2)             # 80948AC8
    addiu   t6, t6, %lo(var_80948ACC)  # t6 = 80948ACC
    sw      t3, 0x0004(t1)             # FFFFFFC8
    sw      t4, 0x0008(t1)             # FFFFFFCC
    lw      t8, 0x0000(t6)             # 80948ACC
    addiu   t5, $sp, 0x002C            # t5 = FFFFFFB4
    lw      t7, 0x0004(t6)             # 80948AD0
    sw      t8, 0x0000(t5)             # FFFFFFB4
    lw      t8, 0x0008(t6)             # 80948AD4
    sw      t7, 0x0004(t5)             # FFFFFFB8
    sw      t8, 0x0008(t5)             # FFFFFFBC
    lw      t9, 0x0000(a0)             # 00000000
    lw      t3, 0x007C($sp)
    sw      t9, 0x0028($sp)
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   t4, t3, 0xFFFC             # t4 = FFFFFFD8
    sltiu   $at, t4, 0x001A
    andi    t1, t0, 0xE000             # t1 = 00008000
    sra     t2, t1, 13
    beql    t2, $zero, lbl_80948684
    lw      t5, 0x007C($sp)
    beq     $at, $zero, lbl_80948680
    sll     t4, t4,  2
    lui     $at, %hi(var_80948B2C)     # $at = 80950000
    addu    $at, $at, t4
    lw      t4, %lo(var_80948B2C)($at)
    jr      t4
    nop
var_809485E4:
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x4788             # t5 = 06004788
    b       lbl_80948680
    sw      t5, 0x0000(a2)             # 00000000
var_809485F4:
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x46F0             # t6 = 060046F0
    b       lbl_80948680
    sw      t6, 0x0000(a2)             # 00000000
var_80948604:
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x4658             # t7 = 06004658
    b       lbl_80948680
    sw      t7, 0x0000(a2)             # 00000000
var_80948614:
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x45C0             # t8 = 060045C0
    b       lbl_80948680
    sw      t8, 0x0000(a2)             # 00000000
var_80948624:
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x4820             # t9 = 06004820
    b       lbl_80948680
    sw      t9, 0x0000(a2)             # 00000000
var_80948634:
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t0, t0, 0x48B8             # t0 = 060048B8
    b       lbl_80948680
    sw      t0, 0x0000(a2)             # 00000000
var_80948644:
    lui     t1, 0x0600                 # t1 = 06000000
    addiu   t1, t1, 0x4950             # t1 = 06004950
    b       lbl_80948680
    sw      t1, 0x0000(a2)             # 00000000
var_80948654:
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x49E8             # t2 = 060049E8
    b       lbl_80948680
    sw      t2, 0x0000(a2)             # 00000000
var_80948664:
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x3FB0             # t3 = 06003FB0
    b       lbl_80948680
    sw      t3, 0x0000(a2)             # 00000000
var_80948674:
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x43D8             # t4 = 060043D8
    sw      t4, 0x0000(a2)             # 00000000
lbl_80948680:
    lw      t5, 0x007C($sp)
lbl_80948684:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, a3, $zero              # a0 = FFFFFFF4
    bnel    t5, $at, lbl_809486D0
    lw      t6, 0x007C($sp)
    jal     func_800AB958
    addiu   a1, s0, 0x0444             # a1 = 00000444
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFE8
    jal     func_800AB958
    addiu   a1, s0, 0x0450             # a1 = 00000450
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFDC
    jal     func_800AB958
    addiu   a1, s0, 0x045C             # a1 = 0000045C
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFD0
    jal     func_800AB958
    addiu   a1, s0, 0x0468             # a1 = 00000468
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFC4
    jal     func_800AB958
    addiu   a1, s0, 0x0474             # a1 = 00000474
    lw      t6, 0x007C($sp)
lbl_809486D0:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFB4
    bnel    t6, $at, lbl_809486EC
    lw      t7, 0x007C($sp)
    jal     func_800AB958
    addiu   a1, s0, 0x0038             # a1 = 00000038
    lw      t7, 0x007C($sp)
lbl_809486EC:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      t8, 0x0028($sp)
    bne     t7, $at, lbl_80948734
    addiu   a1, s0, 0x0184             # a1 = 00000184
    lw      v1, 0x02C0(t8)             # 000002C0
    lui     t0, 0xFB00                 # t0 = FB000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t8)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lbu     t5, 0x01E5(s0)             # 000001E5
    lbu     t2, 0x01E4(s0)             # 000001E4
    lbu     t8, 0x01E6(s0)             # 000001E6
    sll     t6, t5, 16
    sll     t3, t2, 24
    or      t7, t3, t6                 # t7 = 00000000
    sll     t0, t8,  8
    or      t1, t7, t0                 # t1 = FB000000
    sw      t1, 0x0004(v1)             # 00000004
lbl_80948734:
    jal     func_80050CE4
    lw      a0, 0x007C($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    jr      $ra
    nop


func_80948754:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    jr      $ra
    nop


func_8094876C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    sll     a3, a3, 16
    sll     a2, a2, 16
    sra     a2, a2, 16
    sra     a3, a3, 16
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    mtc1    a3, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80948B94)     # $at = 80950000
    lwc1    $f4, %lo(var_80948B94)($at)
    cvt.s.w $f8, $f6
    subu    t6, a3, a2
    mtc1    t6, $f16                   # $f16 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lw      v1, 0x0000(a0)             # 00000000
    cvt.s.w $f18, $f16
    lui     $at, %hi(var_80948B98)     # $at = 80950000
    lw      t7, 0x0034($sp)
    div.s   $f10, $f4, $f8
    mul.s   $f2, $f10, $f18
    c.eq.s  $f2, $f6
    nop
    bc1fl   lbl_809487DC
    trunc.w.s $f4, $f2
    lwc1    $f2, %lo(var_80948B98)($at)
    trunc.w.s $f4, $f2
lbl_809487DC:
    lbu     t8, 0x0003(t7)             # 00000003
    lw      a0, 0x02C0(v1)             # 000002C0
    lbu     a1, 0x0000(t7)             # 00000000
    mfc1    t0, $f4
    lbu     a2, 0x0001(t7)             # 00000001
    lbu     a3, 0x0002(t7)             # 00000002
    sll     t1, t0, 16
    sra     t2, t1, 16
    sw      t2, 0x0018($sp)
    sw      v1, 0x0028($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8007DF4C
    sw      t8, 0x0010($sp)
    lw      v1, 0x0028($sp)
    sw      v0, 0x02C0(v1)             # 000002C0
    lw      $ra, 0x0024($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80948824:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lw      v1, 0x0000(a0)             # 00000000
    lw      a1, 0x02C0(v1)             # 000002C0
    jal     func_8009A574
    sw      v1, 0x0018($sp)
    lw      v1, 0x0018($sp)
    sw      v0, 0x02C0(v1)             # 000002C0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80948850:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lui     t6, %hi(var_80948AD8)      # t6 = 80950000
    lw      t6, %lo(var_80948AD8)(t6)
    lui     $at, %hi(var_80948B9C)     # $at = 80950000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      t6, 0x0030($sp)
    lh      t7, 0x001C(s0)             # 0000001C
    andi    t8, t7, 0xE000             # t8 = 00000000
    sra     t9, t8, 13
    beql    t9, $zero, lbl_809488D8
    lw      t1, 0x0180(s0)             # 00000180
    jal     func_800AA9E0
    lwc1    $f12, %lo(var_80948B9C)($at)
    lbu     t0, 0x00AF(s0)             # 000000AF
    lui     a2, 0x4348                 # a2 = 43480000
    beql    t0, $zero, lbl_809488BC
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4
    mov.s   $f14, $f12
    or      a0, s0, $zero              # a0 = 00000000
lbl_809488BC:
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    lui     v0, %hi(func_80948110)     # v0 = 80950000
    b       lbl_80948900
    addiu   v0, v0, %lo(func_80948110) # v0 = 80948110
    lw      t1, 0x0180(s0)             # 00000180
lbl_809488D8:
    lui     v0, %hi(func_80948110)     # v0 = 80950000
    addiu   v0, v0, %lo(func_80948110) # v0 = 80948110
    bne     v0, t1, lbl_80948900
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF8
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0x001E          # a3 = 0000001E
    jal     func_8094876C
    sw      v0, 0x002C($sp)
    lw      v0, 0x002C($sp)
lbl_80948900:
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298
    sw      v0, 0x002C($sp)
    lui     t2, %hi(func_80948754)     # t2 = 80950000
    addiu   t2, t2, %lo(func_80948754) # t2 = 80948754
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lui     a3, %hi(func_809484B0)     # a3 = 80950000
    addiu   a3, a3, %lo(func_809484B0) # a3 = 809484B0
    sw      s0, 0x0014($sp)
    sw      t2, 0x0010($sp)
    jal     func_8008993C
    or      a0, s1, $zero              # a0 = 00000000
    lw      v0, 0x002C($sp)
    lw      t3, 0x0180(s0)             # 00000180
    bnel    v0, t3, lbl_80948950
    lw      $ra, 0x0024($sp)
    jal     func_80948824
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80948950:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38

.section .data

var_80948960: .word 0x00950400, 0x00000015, 0x00240000, 0x000004C8
.word func_80945EC8
.word func_80946390
.word func_80948454
.word func_80948850
var_80948980: .word \
0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFC3FFFE, \
0x00000000, 0x01050100, 0x02000000, 0xFED40000, \
0x00150064
var_809489A4: .word 0x06110939, 0x10000000, 0x00000001
.word var_80948980
var_809489B4: .word 0x01000002, 0x00190019, 0xFF000000
var_809489C0: .word \
0x06000304, 0x3F800000, 0x00000000, 0xBF800000, \
0x01000000, 0x00000000, 0x06000304, 0x3F800000, \
0x00000000, 0xBF800000, 0x01000000, 0xC1000000, \
0x060055A8, 0x3F800000, 0x00000000, 0xBF800000, \
0x01000000, 0xC1000000, 0x06005B98, 0x3F800000, \
0x00000000, 0xBF800000, 0x01000000, 0xC1000000
var_80948A20: .word 0x00000000, 0x00000000, 0x00000000
var_80948A2C: .word 0x505032FF
var_80948A30: .word 0x64645000
var_80948A34: .word 0x00000000, 0x00000000, 0x00000000
var_80948A40: .word 0x00000000, 0x3E99999A, 0x00000000
var_80948A4C: .word 0x505032FF
var_80948A50: .word 0x64645000
var_80948A54: .word 0x00000000, 0x00000000, 0x00000000
var_80948A60: .word 0x00000000, 0x3E99999A, 0x00000000
var_80948A6C: .word 0x00000000, 0x3F000000, 0x00000000
var_80948A78: .word 0x00000000, 0x3F000000, 0x00000000
var_80948A84: .word 0x00000000, 0x00000000, 0x00000000
var_80948A90: .word 0x44AF0000, 0xC5228000, 0xC4480000
var_80948A9C: .word 0x44AF0000, 0xC4C80000, 0x00000000
var_80948AA8: .word 0xC4AF0000, 0xC5228000, 0xC4480000
var_80948AB4: .word 0xC4AF0000, 0xC4C80000, 0x00000000
var_80948AC0: .word 0x00000000, 0x00000000, 0xC4160000
var_80948ACC: .word 0x00000000, 0x00000000, 0x00000000
var_80948AD8: .word 0xB800E4FF, 0x00000000

.section .rodata

var_80948AE0: .word 0x38000100
var_80948AE4: .word 0x3A83126F
var_80948AE8: .word 0x3CA3D70A
var_80948AEC: .word 0x481C4000
var_80948AF0: .word 0x3DCCCCCD
var_80948AF4: .word 0xBDCCCCCD
var_80948AF8: .word 0x38000100
var_80948AFC: .word 0x3A83126F
var_80948B00: .word 0x3C656041
var_80948B04: .word 0x3CA3D70A
var_80948B08: .word 0x3C656041
var_80948B0C: .word 0x3CA3D70A
var_80948B10: .word 0x3DCCCCCD
var_80948B14: .word 0xBDCCCCCD
var_80948B18: .word 0x4622F983
var_80948B1C: .word 0x3DCCCCCD
var_80948B20: .word 0x3C23D70A
var_80948B24: .word 0x3C23D70A
var_80948B28: .word 0x469C4000
var_80948B2C: .word var_80948674
.word var_80948664
.word lbl_80948680
.word lbl_80948680
.word var_809485F4
.word lbl_80948680
.word lbl_80948680
.word var_80948614
.word lbl_80948680
.word lbl_80948680
.word var_80948604
.word lbl_80948680
.word lbl_80948680
.word var_80948644
.word lbl_80948680
.word lbl_80948680
.word var_80948634
.word lbl_80948680
.word lbl_80948680
.word var_809485E4
.word lbl_80948680
.word lbl_80948680
.word var_80948624
.word lbl_80948680
.word lbl_80948680
.word var_80948654
var_80948B94: .word 0x4633B000
var_80948B98: .word 0x4633B000
var_80948B9C: .word 0xBFB2B8C2

