.section .text
func_80B25590:
    sw      a1, 0x02E8(a0)             # 000002E8
    jr      $ra
    nop


func_80B2559C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFF4
    lui     t6, %hi(var_80B27828)      # t6 = 80B20000
    addiu   t6, t6, %lo(var_80B27828)  # t6 = 80B27828
    lw      t8, 0x0000(t6)             # 80B27828
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    addiu   t1, $zero, 0x00DC          # t1 = 000000DC
    sw      t8, 0x0000(a2)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 80B2782C
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE8
    sw      t7, 0x0004(a2)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 80B27830
    or      a3, a2, $zero              # a3 = FFFFFFF4
    sw      t8, 0x0008(a2)             # FFFFFFFC
    lw      t9, 0x0040($sp)
    lw      a0, 0x0044($sp)
    lwc1    $f4, 0x0024(t9)            # 00000024
    swc1    $f4, 0x0028($sp)
    lwc1    $f6, 0x0080(t9)            # 00000080
    swc1    $f6, 0x002C($sp)
    lwc1    $f8, 0x002C(t9)            # 0000002C
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    jal     func_8001CA7C
    swc1    $f8, 0x0030($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80B25624:
    addiu   $sp, $sp, 0xFE28           # $sp = FFFFFE28
    sw      $ra, 0x001C($sp)
    lui     t6, %hi(var_80B27834)      # t6 = 80B20000
    lw      t6, %lo(var_80B27834)(t6)
    lui     t7, %hi(var_80B27838)      # t7 = 80B20000
    lui     t8, %hi(var_80B2783C)      # t8 = 80B20000
    lw      t7, %lo(var_80B27838)(t7)
    lw      t8, %lo(var_80B2783C)(t8)
    lui     t9, %hi(var_80B27840)      # t9 = 80B20000
    lw      t9, %lo(var_80B27840)(t9)
    sw      t6, 0x0034($sp)
    sw      t7, 0x0030($sp)
    sw      t8, 0x002C($sp)
    sw      t9, 0x0028($sp)
    lbu     t5, 0x0031($sp)
    lbu     t4, 0x0035($sp)
    lbu     t0, 0x0034($sp)
    lbu     t1, 0x0030($sp)
    lbu     t2, 0x002C($sp)
    lbu     t3, 0x0028($sp)
    lbu     t7, 0x0029($sp)
    lbu     t6, 0x002D($sp)
    lbu     t8, 0x0036($sp)
    sb      t5, 0x01C1($sp)
    sb      t4, 0x01BD($sp)
    sb      t0, 0x01BC($sp)
    sb      t1, 0x01C0($sp)
    sb      t2, 0x01C4($sp)
    sb      t3, 0x01C8($sp)
    lbu     t3, 0x0033($sp)
    lbu     t2, 0x0037($sp)
    lbu     t1, 0x002A($sp)
    lbu     t0, 0x002E($sp)
    lbu     t4, 0x002F($sp)
    lbu     t5, 0x002B($sp)
    lbu     t9, 0x0032($sp)
    sb      t7, 0x01C9($sp)
    sb      t6, 0x01C5($sp)
    sb      t8, 0x01BE($sp)
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t8, $sp, 0x0038            # t8 = FFFFFE60
    sw      t6, 0x01CC($sp)
    sw      $zero, 0x01D0($sp)
    sw      t7, 0x01D4($sp)
    sw      t8, 0x0014($sp)
    addiu   a1, $sp, 0x0020            # a1 = FFFFFE48
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    sb      t3, 0x01C3($sp)
    sb      t2, 0x01BF($sp)
    sb      t1, 0x01CA($sp)
    sb      t0, 0x01C6($sp)
    sb      t4, 0x01C7($sp)
    sb      t5, 0x01CB($sp)
    jal     func_8001AA5C
    sb      t9, 0x01C2($sp)
    lw      v0, 0x0020($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x01D8           # $sp = 00000000
    jr      $ra
    nop


func_80B25720:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0054($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    swc1    $f4, 0x003C($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    lw      a0, 0x0054($sp)
    addiu   t6, $sp, 0x004C            # t6 = FFFFFFFC
    add.s   $f10, $f6, $f8
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $sp, 0x0048            # t9 = FFFFFFF8
    swc1    $f10, 0x0040($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      t9, 0x0024($sp)
    sw      t8, 0x0020($sp)
    sw      t7, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFEC
    addiu   a3, s0, 0x0534             # a3 = 00000534
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    jal     func_800308B4
    swc1    $f16, 0x0044($sp)
    bne     v0, $zero, lbl_80B257A8
    lw      $ra, 0x0034($sp)
    beq     $zero, $zero, lbl_80B257AC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B257A8:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B257AC:
    lw      s0, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80B257B8:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t7, %hi(var_80B27844)      # t7 = 80B20000
    addiu   t7, t7, %lo(var_80B27844)  # t7 = 80B27844
    lw      t9, 0x0000(t7)             # 80B27844
    addiu   t6, $sp, 0x004C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80B27848
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80B2784C
    lui     t1, %hi(var_80B27850)      # t1 = 80B20000
    addiu   t1, t1, %lo(var_80B27850)  # t1 = 80B27850
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t3, 0x0000(t1)             # 80B27850
    addiu   t0, $sp, 0x0040            # t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             # 80B27854
    sw      t3, 0x0000(t0)             # FFFFFFE8
    lw      t3, 0x0008(t1)             # 80B27858
    sw      t2, 0x0004(t0)             # FFFFFFEC
    sw      t3, 0x0008(t0)             # FFFFFFF0
    lwc1    $f6, 0x052C(s0)            # 0000052C
    lwc1    $f4, 0x004C($sp)
    lwc1    $f10, 0x0050($sp)
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x0054($sp)
    swc1    $f8, 0x004C($sp)
    lwc1    $f16, 0x052C(s0)           # 0000052C
    mul.s   $f18, $f10, $f16
    lwc1    $f10, 0x0040($sp)
    swc1    $f18, 0x0050($sp)
    lwc1    $f6, 0x052C(s0)            # 0000052C
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x0044($sp)
    swc1    $f8, 0x0054($sp)
    lwc1    $f16, 0x052C(s0)           # 0000052C
    mul.s   $f18, $f10, $f16
    lwc1    $f10, 0x0048($sp)
    swc1    $f18, 0x0040($sp)
    lwc1    $f6, 0x052C(s0)            # 0000052C
    mul.s   $f8, $f4, $f6
    swc1    $f8, 0x0044($sp)
    lwc1    $f16, 0x052C(s0)           # 0000052C
    mul.s   $f18, $f10, $f16
    jal     func_800AA6EC
    swc1    $f18, 0x0048($sp)
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFDC
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFE8
    jal     func_800AB958
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFD0
    jal     func_800AA724
    nop
    jal     func_8001A890
    lw      a0, 0x0528(s0)             # 00000528
    or      a0, v0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFDC
    jal     func_80013F30
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFD0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_80B258C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_8001A890
    lw      a0, 0x0528(a1)             # 00000528
    jal     func_80014254
    or      a0, v0, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B258EC:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    lui     t7, %hi(var_80B2785C)      # t7 = 80B20000
    addiu   t7, t7, %lo(var_80B2785C)  # t7 = 80B2785C
    lw      t9, 0x0000(t7)             # 80B2785C
    lw      t8, 0x0004(t7)             # 80B27860
    addiu   t6, $sp, 0x0050            # t6 = FFFFFFE8
    sw      t9, 0x0000(t6)             # FFFFFFE8
    sw      t8, 0x0004(t6)             # FFFFFFEC
    lw      t8, 0x000C(t7)             # 80B27868
    lw      t9, 0x0008(t7)             # 80B27864
    addiu   s0, s3, 0x02EC             # s0 = 000002EC
    sw      t8, 0x000C(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF0
    lw      t9, 0x0010(t7)             # 80B2786C
    lw      t8, 0x0014(t7)             # 80B27870
    addiu   s1, $sp, 0x0050            # s1 = FFFFFFE8
    addiu   s4, $sp, 0x0068            # s4 = 00000000
    sw      t9, 0x0010(t6)             # FFFFFFF8
    sw      t8, 0x0014(t6)             # FFFFFFFC
lbl_80B25958:
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8004AB7C
    or      a1, s0, $zero              # a1 = 000002EC
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 000002EC
    or      a2, s3, $zero              # a2 = 00000000
    jal     func_8004ACEC
    lw      a3, 0x0000(s1)             # FFFFFFE8
    addiu   s1, s1, 0x0004             # s1 = FFFFFFEC
    bne     s1, s4, lbl_80B25958
    addiu   s0, s0, 0x004C             # s0 = 00000338
    lui     t0, 0x0003                 # t0 = 00030000
    lui     t1, 0xFFC0                 # t1 = FFC00000
    lui     t5, 0xFFCC                 # t5 = FFCC0000
    ori     t0, t0, 0xF8E9             # t0 = 0003F8E9
    ori     t1, t1, 0x0716             # t1 = FFC00716
    addiu   t2, $zero, 0x0009          # t2 = 00000009
    addiu   t3, $zero, 0x000D          # t3 = 0000000D
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    ori     t5, t5, 0x0716             # t5 = FFCC0716
    sw      t0, 0x030C(s3)             # 0000030C
    sw      t1, 0x0358(s3)             # 00000358
    sb      t2, 0x0398(s3)             # 00000398
    sb      t3, 0x03B2(s3)             # 000003B2
    sb      t4, 0x03B0(s3)             # 000003B0
    sw      t5, 0x03A4(s3)             # 000003A4
    jal     func_80049E10
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    lui     a2, %hi(var_80B277BC)      # a2 = 80B20000
    addiu   a2, a2, %lo(var_80B277BC)  # a2 = 80B277BC
    addiu   a0, s3, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, v0, $zero              # a1 = 00000000
    addiu   s0, s3, 0x04B4             # s0 = 000004B4
    or      a1, s0, $zero              # a1 = 000004B4
    jal     func_8004A484
    or      a0, s2, $zero              # a0 = 00000000
    lui     a3, %hi(var_80B27818)      # a3 = 80B20000
    addiu   t6, s3, 0x04D4             # t6 = 000004D4
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(var_80B27818)  # a3 = 80B27818
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 000004B4
    jal     func_8004A874
    or      a2, s3, $zero              # a2 = 00000000
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80B25A2C:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0080($sp)
    sw      a1, 0x0084($sp)
    addiu   v0, $sp, 0x0064            # v0 = FFFFFFE4
    lui     t6, %hi(var_80B27874)      # t6 = 80B20000
    addiu   t6, t6, %lo(var_80B27874)  # t6 = 80B27874
    lw      t8, 0x0000(t6)             # 80B27874
    lui     t1, %hi(var_80B27890)      # t1 = 80B20000
    addiu   t1, t1, %lo(var_80B27890)  # t1 = 80B27890
    sw      t8, 0x0000(v0)             # FFFFFFE4
    lw      t7, 0x0004(t6)             # 80B27878
    addiu   t9, $sp, 0x0048            # t9 = FFFFFFC8
    lui     t5, %hi(var_80B278AC)      # t5 = 80B20000
    sw      t7, 0x0004(v0)             # FFFFFFE8
    lw      t8, 0x0008(t6)             # 80B2787C
    addiu   t5, t5, %lo(var_80B278AC)  # t5 = 80B278AC
    addiu   t4, $sp, 0x0040            # t4 = FFFFFFC0
    sw      t8, 0x0008(v0)             # FFFFFFEC
    lw      t7, 0x000C(t6)             # 80B27880
    sw      t7, 0x000C(v0)             # FFFFFFF0
    lw      t8, 0x0010(t6)             # 80B27884
    sw      t8, 0x0010(v0)             # FFFFFFF4
    lw      t7, 0x0014(t6)             # 80B27888
    sw      t7, 0x0014(v0)             # FFFFFFF8
    lw      t8, 0x0018(t6)             # 80B2788C
    sw      t8, 0x0018(v0)             # FFFFFFFC
    lw      t3, 0x0000(t1)             # 80B27890
    lw      t2, 0x0004(t1)             # 80B27894
    sw      t3, 0x0000(t9)             # FFFFFFC8
    lw      t3, 0x0008(t1)             # 80B27898
    sw      t2, 0x0004(t9)             # FFFFFFCC
    lw      t2, 0x000C(t1)             # 80B2789C
    sw      t3, 0x0008(t9)             # FFFFFFD0
    lw      t3, 0x0010(t1)             # 80B278A0
    sw      t2, 0x000C(t9)             # FFFFFFD4
    lw      t2, 0x0014(t1)             # 80B278A4
    sw      t3, 0x0010(t9)             # FFFFFFD8
    lw      t3, 0x0018(t1)             # 80B278A8
    sw      t2, 0x0014(t9)             # FFFFFFDC
    sw      t3, 0x0018(t9)             # FFFFFFE0
    lw      t7, 0x0000(t5)             # 80B278AC
    sw      t7, 0x0000(t4)             # FFFFFFC0
    lwr     t7, 0x0006(t5)             # 80B278B2
    swr     t7, 0x0006(t4)             # FFFFFFC6
    lw      v1, 0x0084($sp)
    sll     v1, v1,  2
    addu    t0, v0, v1
    lw      a0, 0x0000(t0)             # 00000000
    sw      t0, 0x0030($sp)
    jal     func_8008A194
    sw      v1, 0x0034($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0034($sp)
    lw      t0, 0x0030($sp)
    cvt.s.w $f0, $f4
    lw      t9, 0x0084($sp)
    addu    t8, $sp, v1
    lui     $at, 0xC0C0                # $at = C0C00000
    addu    t1, $sp, t9
    mtc1    $at, $f6                   # $f6 = -6.00
    swc1    $f0, 0x003C($sp)
    lw      a2, 0x0048(t8)             # 00000048
    lw      a1, 0x0000(t0)             # 00000000
    swc1    $f0, 0x0010($sp)
    lbu     t1, 0x0040(t1)             # 00000040
    lw      a0, 0x0080($sp)
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0018($sp)
    sw      t1, 0x0014($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lwc1    $f0, 0x003C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0080           # $sp = 00000000
    jr      $ra
    nop


func_80B25B60:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80B25A2C
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B25B80:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3869          # a1 = 00003869
    lw      a0, 0x0018($sp)
    jal     func_80B25A2C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B25BB4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lwc1    $f4, 0x0530(a0)            # 00000530
    lwc1    $f6, 0x0080(a0)            # 00000080
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0028(a0)            # 00000028
    jal     func_80B25A2C
    sw      a0, 0x0018($sp)
    trunc.w.s $f10, $f0
    lw      a0, 0x0018($sp)
    mfc1    t7, $f10
    nop
    sh      t7, 0x0524(a0)             # 00000524
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80B25BF8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      t6, 0x0518(a0)             # 00000518
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    bnel    t6, $zero, lbl_80B25C30
    lui     $at, 0xC120                # $at = C1200000
    jal     func_80B25A2C
    sw      a0, 0x0018($sp)
    trunc.w.s $f4, $f0
    lw      a0, 0x0018($sp)
    mfc1    t8, $f4
    nop
    sh      t8, 0x0524(a0)             # 00000524
    lui     $at, 0xC120                # $at = C1200000
lbl_80B25C30:
    mtc1    $at, $f6                   # $f6 = -10.00
    nop
    swc1    $f6, 0x0060(a0)            # 00000060
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80B25C48:
    lh      t6, 0x0522(a0)             # 00000522
    addiu   t9, $zero, 0x0078          # t9 = 00000078
    bne     t6, $zero, lbl_80B25C6C
    nop
    lhu     t7, 0x05BA(a0)             # 000005BA
    sh      t9, 0x0522(a0)             # 00000522
    sb      $zero, 0x0114(a0)          # 00000114
    ori     t8, t7, 0x0008             # t8 = 00000008
    sh      t8, 0x05BA(a0)             # 000005BA
lbl_80B25C6C:
    jr      $ra
    nop


func_80B25C74:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a2, 0x0020($sp)
    mtc1    a1, $f14                   # $f14 = 0.00
    or      a2, a0, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a1, 0x04D0(a2)             # 000004D0
    or      v1, $zero, $zero           # v1 = 00000000
    or      v0, a2, $zero              # v0 = 00000000
    lh      t6, 0x002E(a1)             # 0000002E
    addiu   a0, $zero, 0x01C8          # a0 = 000001C8
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f12, $f4
    mul.s   $f12, $f12, $f14
    trunc.w.s $f6, $f12
    mfc1    t8, $f6
    nop
    sh      t8, 0x002E(a1)             # 0000002E
    lwc1    $f8, 0x0020($sp)
    mul.s   $f16, $f14, $f8
    nop
    addiu   v1, v1, 0x004C             # v1 = 0000004C
    beq     v1, a0, lbl_80B25D38
    lh      t9, 0x0330(v0)             # 00000330
lbl_80B25CD8:
    lh      t0, 0x032C(v0)             # 0000032C
    mtc1    t9, $f18                   # $f18 = 0.00
    lh      t1, 0x032E(v0)             # 0000032E
    mtc1    t0, $f12                   # $f12 = 0.00
    cvt.s.w $f18, $f18
    mtc1    t1, $f10                   # $f10 = 0.00
    addiu   v1, v1, 0x004C             # v1 = 00000098
    addiu   v0, v0, 0x004C             # v0 = 0000004C
    lh      t9, 0x0330(v0)             # 0000037C
    cvt.s.w $f12, $f12
    mul.s   $f18, $f18, $f14
    cvt.s.w $f10, $f10
    mul.s   $f12, $f12, $f16
    trunc.w.s $f18, $f18
    mul.s   $f10, $f10, $f14
    mfc1    t3, $f18
    trunc.w.s $f12, $f12
    sh      t3, 0x02E4(v0)             # 00000330
    trunc.w.s $f10, $f10
    mfc1    t5, $f12
    mfc1    t7, $f10
    sh      t5, 0x02E0(v0)             # 0000032C
    bne     v1, a0, lbl_80B25CD8
    sh      t7, 0x02E2(v0)             # 0000032E
lbl_80B25D38:
    mtc1    t9, $f18                   # $f18 = 0.00
    lh      t0, 0x032C(v0)             # 00000378
    lh      t1, 0x032E(v0)             # 0000037A
    cvt.s.w $f18, $f18
    mtc1    t0, $f12                   # $f12 = 0.00
    mtc1    t1, $f10                   # $f10 = 0.00
    addiu   v0, v0, 0x004C             # v0 = 00000098
    cvt.s.w $f12, $f12
    mul.s   $f18, $f18, $f14
    nop
    mul.s   $f12, $f12, $f16
    cvt.s.w $f10, $f10
    trunc.w.s $f18, $f18
    mul.s   $f10, $f10, $f14
    mfc1    t3, $f18
    trunc.w.s $f12, $f12
    sh      t3, 0x02E4(v0)             # 0000037C
    trunc.w.s $f10, $f10
    mfc1    t5, $f12
    mfc1    t7, $f10
    sh      t5, 0x02E0(v0)             # 00000378
    sh      t7, 0x02E2(v0)             # 0000037A
    lui     $at, %hi(var_80B278F0)     # $at = 80B20000
    lwc1    $f18, %lo(var_80B278F0)($at)
    or      a0, a2, $zero              # a0 = 00000000
    sw      a2, 0x0018($sp)
    mul.s   $f4, $f18, $f14
    swc1    $f14, 0x001C($sp)
    mfc1    a1, $f4
    jal     func_80020F88
    nop
    lui     $at, 0x4220                # $at = 42200000
    lwc1    $f14, 0x001C($sp)
    mtc1    $at, $f6                   # $f6 = 40.00
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    mul.s   $f8, $f6, $f14
    lw      a2, 0x0018($sp)
    mul.s   $f18, $f14, $f10
    swc1    $f8, 0x0530(a2)            # 00000530
    swc1    $f18, 0x052C(a2)           # 0000052C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80B25DE8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lh      v0, 0x0522(s0)             # 00000522
    addiu   $at, $zero, 0x0078         # $at = 00000078
    bne     v0, $at, lbl_80B25E30
    nop
    lhu     t6, 0x05BA(s0)             # 000005BA
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80B25E30
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090
    sw      v0, 0x0010($sp)
    lh      v0, 0x0522(s0)             # 00000522
lbl_80B25E30:
    bne     v0, $zero, lbl_80B25E40
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_80B25E48
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B25E40:
    sh      t8, 0x0522(s0)             # 00000522
    lh      v1, 0x0522(s0)             # 00000522
lbl_80B25E48:
    beq     v1, $zero, lbl_80B25E74
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0010($sp)
    addiu   a0, s0, 0x0516             # a0 = 00000516
    addiu   a1, $zero, 0x2710          # a1 = 00002710
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064508
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    beq     $zero, $zero, lbl_80B25EB0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B25E74:
    lhu     t0, 0x05BA(s0)             # 000005BA
    lh      t2, 0x0526(s0)             # 00000526
    sh      $zero, 0x0522(s0)          # 00000522
    andi    t1, t0, 0xFFFE             # t1 = 00000000
    sh      t1, 0x05BA(s0)             # 000005BA
    bne     t2, $zero, lbl_80B25E98
    sh      $zero, 0x051A(s0)          # 0000051A
    addiu   t3, $zero, 0x001E          # t3 = 0000001E
    sh      t3, 0x051A(s0)             # 0000051A
lbl_80B25E98:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3884          # a1 = 00003884
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x6868          # a1 = 00006868
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B25EB0:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B25EC4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      v0, 0x051C(s0)             # 0000051C
    beq     v0, $zero, lbl_80B25EE8
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x051C(s0)             # 0000051C
lbl_80B25EE8:
    lh      v0, 0x051A(s0)             # 0000051A
    bne     v0, $zero, lbl_80B25EFC
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_80B25F08
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B25EFC:
    sh      t7, 0x051A(s0)             # 0000051A
    lh      v0, 0x051A(s0)             # 0000051A
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B25F08:
    beql    v1, $zero, lbl_80B25F54
    lh      t1, 0x0526(s0)             # 00000526
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    cvt.s.w $f6, $f4
    lh      t8, 0x0032(s0)             # 00000032
    lui     $at, %hi(var_80B278F4)     # $at = 80B20000
    lwc1    $f16, %lo(var_80B278F4)($at)
    mtc1    t8, $f4                    # $f4 = 0.00
    div.s   $f10, $f6, $f8
    cvt.s.w $f6, $f4
    mul.s   $f18, $f16, $f10
    add.s   $f8, $f6, $f18
    trunc.w.s $f16, $f8
    mfc1    t0, $f16
    beq     $zero, $zero, lbl_80B25F80
    sh      t0, 0x0032(s0)             # 00000032
    lh      t1, 0x0526(s0)             # 00000526
lbl_80B25F54:
    bnel    t1, $zero, lbl_80B25F84
    lh      t4, 0x0032(s0)             # 00000032
    lh      t2, 0x0522(s0)             # 00000522
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bne     t2, $zero, lbl_80B25F80
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    jal     func_80064508
    sw      t3, 0x0010($sp)
lbl_80B25F80:
    lh      t4, 0x0032(s0)             # 00000032
lbl_80B25F84:
    sh      t4, 0x00B6(s0)             # 000000B6
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80B25F98:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x0526(s0)             # 00000526
    bnel    t6, $zero, lbl_80B25FEC
    lh      v0, 0x0522(s0)             # 00000522
    lh      t7, 0x0522(s0)             # 00000522
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bne     t7, $zero, lbl_80B25FE8
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lh      a1, 0x008A(s0)             # 0000008A
    lh      a3, 0x0516(s0)             # 00000516
    sw      t8, 0x0010($sp)
    xori    a1, a1, 0x8000             # a1 = FFFF8000
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
lbl_80B25FE8:
    lh      v0, 0x0522(s0)             # 00000522
lbl_80B25FEC:
    lh      t9, 0x0032(s0)             # 00000032
    slti    $at, v0, 0x001E
    beq     $at, $zero, lbl_80B26024
    sh      t9, 0x00B6(s0)             # 000000B6
    andi    t0, v0, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80B2601C
    lh      t3, 0x00B6(s0)             # 000000B6
    lh      t1, 0x00B6(s0)             # 000000B6
    addiu   t2, t1, 0x07D0             # t2 = 000007D0
    beq     $zero, $zero, lbl_80B26024
    sh      t2, 0x00B6(s0)             # 000000B6
    lh      t3, 0x00B6(s0)             # 000000B6
lbl_80B2601C:
    addiu   t4, t3, 0xF830             # t4 = FFFFF830
    sh      t4, 0x00B6(s0)             # 000000B6
lbl_80B26024:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B26038:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      t6, 0x0522(a0)             # 00000522
    beq     t6, $zero, lbl_80B2605C
    nop
    jal     func_80B25F98
    nop
    beq     $zero, $zero, lbl_80B26068
    lw      $ra, 0x0014($sp)
lbl_80B2605C:
    jal     func_80B25EC4
    nop
    lw      $ra, 0x0014($sp)
lbl_80B26068:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B26074:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x009C(a1)             # 0000009C
    lw      a0, 0x0020($sp)
    mov.s   $f0, $f2
    andi    t7, t6, 0x0008             # t7 = 00000000
    beq     t7, $zero, lbl_80B260B4
    addiu   a0, a0, 0x0060             # a0 = 00000060
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    nop
    mul.s   $f0, $f2, $f4
    nop
lbl_80B260B4:
    mtc1    $zero, $f6                 # $f6 = 0.00
    mfc1    a1, $f0
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    lui     a3, 0x447A                 # a3 = 447A0000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B260E0:
    lhu     t6, 0x05BA(a0)             # 000005BA
    lw      v0, 0x1C44(a1)             # 00001C44
    andi    t7, t6, 0x0004             # t7 = 00000000
    beql    t7, $zero, lbl_80B26100
    lh      t8, 0x0518(a0)             # 00000518
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B260FC:
    lh      t8, 0x0518(a0)             # 00000518
lbl_80B26100:
    beql    t8, $zero, lbl_80B26114
    lh      t9, 0x0526(a0)             # 00000526
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B26110:
    lh      t9, 0x0526(a0)             # 00000526
lbl_80B26114:
    beql    t9, $zero, lbl_80B26128
    lh      t0, 0x0524(a0)             # 00000524
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B26124:
    lh      t0, 0x0524(a0)             # 00000524
lbl_80B26128:
    lui     $at, 0x4320                # $at = 43200000
    beql    t0, $zero, lbl_80B26140
    mtc1    $at, $f4                   # $f4 = 160.00
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B2613C:
    mtc1    $at, $f4                   # $f4 = 160.00
lbl_80B26140:
    lwc1    $f6, 0x0090(a0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B26160
    lwc1    $f2, 0x0028(v0)            # 00000029
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B2615C:
    lwc1    $f2, 0x0028(v0)            # 00000028
lbl_80B26160:
    lwc1    $f8, 0x0028(a0)            # 00000028
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, 0x43C8                # $at = 43C80000
    sub.s   $f0, $f8, $f2
    c.lt.s  $f0, $f10
    nop
    bc1t    lbl_80B26198
    nop
    mtc1    $at, $f16                  # $f16 = 400.00
    nop
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_80B261A4
    lwc1    $f18, 0x0080(a0)           # 00000080
lbl_80B26198:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B261A0:
    lwc1    $f18, 0x0080(a0)           # 00000080
lbl_80B261A4:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    c.lt.s  $f2, $f18
    nop
    bc1f    lbl_80B261C0
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B261C0:
    jr      $ra
    nop


func_80B261C8:
    lwc1    $f0, 0x0060(a0)            # 00000060
    lwc1    $f4, 0x0028(a0)            # 00000028
    lwc1    $f8, 0x000C(a0)            # 0000000C
    add.s   $f6, $f0, $f0
    or      v0, $zero, $zero           # v0 = 00000000
    add.s   $f2, $f4, $f6
    c.le.s  $f8, $f2
    nop
    bc1f    lbl_80B261F8
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B261F8:
    jr      $ra
    nop


func_80B26200:
    lwc1    $f0, 0x0060(a0)            # 00000060
    lwc1    $f4, 0x0028(a0)            # 00000028
    lwc1    $f10, 0x0080(a0)           # 00000080
    add.s   $f6, $f0, $f0
    lwc1    $f8, 0x0530(a0)            # 00000530
    or      v0, $zero, $zero           # v0 = 00000000
    add.s   $f2, $f4, $f6
    sub.s   $f16, $f2, $f10
    c.le.s  $f16, $f8
    nop
    bc1f    lbl_80B26238
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B26238:
    jr      $ra
    nop


func_80B26240:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    lh      v0, 0x0526(s0)             # 00000526
    beq     v0, $zero, lbl_80B26370
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    lh      t6, 0x05B8(s0)             # 000005B8
    sh      t8, 0x0526(s0)             # 00000526
    lh      v0, 0x0526(s0)             # 00000526
    addiu   t7, t6, 0x0640             # t7 = 00000640
    sh      t7, 0x05B8(s0)             # 000005B8
    bnel    v0, $zero, lbl_80B26288
    mtc1    v0, $f4                    # $f4 = 0.00
    sh      $zero, 0x05B8(s0)          # 000005B8
    lh      v0, 0x0526(s0)             # 00000526
    mtc1    v0, $f4                    # $f4 = 0.00
lbl_80B26288:
    lui     $at, %hi(var_80B278F8)     # $at = 80B20000
    lwc1    $f8, %lo(var_80B278F8)($at)
    cvt.s.w $f6, $f4
    lh      a0, 0x05B8(s0)             # 000005B8
    mul.s   $f20, $f6, $f8
    jal     func_800636C4              # sins?
    nop
    lui     $at, %hi(var_80B278FC)     # $at = 80B20000
    lwc1    $f10, %lo(var_80B278FC)($at)
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x0538(s0)            # 00000538
    mul.s   $f16, $f20, $f10
    sub.s   $f20, $f6, $f8
    mul.s   $f18, $f0, $f16
    trunc.w.s $f4, $f18
    mfc1    a0, $f4
    nop
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sh      a0, 0x0032($sp)
    mul.s   $f10, $f0, $f20
    lh      a0, 0x0032($sp)
    jal     func_80063684              # coss?
    swc1    $f10, 0x0044($sp)
    mul.s   $f16, $f0, $f20
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    swc1    $f18, 0x004C($sp)
    jal     func_800AA6EC
    swc1    $f16, 0x0048($sp)
    lwc1    $f12, 0x0534(s0)           # 00000534
    lwc1    $f14, 0x0538(s0)           # 00000538
    lw      a2, 0x053C(s0)             # 0000053C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t0, 0x0032(s0)             # 00000032
    lui     $at, %hi(var_80B27900)     # $at = 80B20000
    lwc1    $f8, %lo(var_80B27900)($at)
    mtc1    t0, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    jal     func_800AA724
    nop
    lh      t1, 0x0032($sp)
    sll     t2, t1,  1
    subu    t3, $zero, t2
    sh      t3, 0x00B8(s0)             # 000000B8
    lwc1    $f10, 0x0038($sp)
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x0040($sp)
    swc1    $f16, 0x002C(s0)           # 0000002C
lbl_80B26370:
    lw      $ra, 0x0024($sp)
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80B26384:
    lw      v0, 0x1C44(a1)             # 00001C44
    lh      t6, 0x0850(v0)             # 00000850
    addiu   v0, a0, 0x0304             # v0 = 00000304
    beql    t6, $zero, lbl_80B263CC
    lw      t3, 0x0008(v0)             # 0000030C
    addiu   v0, a0, 0x0304             # v0 = 00000304
    lw      t7, 0x0008(v0)             # 0000030C
    addiu   v1, $zero, 0xFFFD          # v1 = FFFFFFFD
    ori     t8, t7, 0x0002             # t8 = 00000002
    sw      t8, 0x0008(v0)             # 0000030C
    lw      t9, 0x0358(a0)             # 00000358
    lw      t1, 0x03A4(a0)             # 000003A4
    and     t0, t9, v1
    and     t2, t1, v1
    sw      t0, 0x0358(a0)             # 00000358
    jr      $ra
    sw      t2, 0x03A4(a0)             # 000003A4
lbl_80B263C8:
    lw      t3, 0x0008(v0)             # 0000030C
lbl_80B263CC:
    addiu   v1, $zero, 0xFFFD          # v1 = FFFFFFFD
    and     t4, t3, v1
    sw      t4, 0x0008(v0)             # 0000030C
    lw      t5, 0x0358(a0)             # 00000358
    lw      t7, 0x03A4(a0)             # 000003A4
    ori     t6, t5, 0x0002             # t6 = 00000002
    ori     t8, t7, 0x0002             # t8 = 00000002
    sw      t6, 0x0358(a0)             # 00000358
    sw      t8, 0x03A4(a0)             # 000003A4
    jr      $ra
    nop


func_80B263F8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lbu     t6, 0x05BC(s0)             # 000005BC
    or      a3, $zero, $zero           # a3 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    bne     t6, $zero, lbl_80B26434
    or      v0, s0, $zero              # v0 = 00000000
    lh      t7, 0x051A(s0)             # 0000051A
    bnel    t7, $zero, lbl_80B26438
    addiu   a2, $zero, 0x00E4          # a2 = 000000E4
    beq     $zero, $zero, lbl_80B264EC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B26434:
    addiu   a2, $zero, 0x00E4          # a2 = 000000E4
lbl_80B26438:
    addiu   a1, $zero, 0xFFFE          # a1 = FFFFFFFE
lbl_80B2643C:
    lbu     a0, 0x03E3(v0)             # 000003E3
    addiu   v1, v1, 0x004C             # v1 = 0000004C
    andi    t8, a0, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B26458
    and     t9, a0, a1
    sb      t9, 0x03E3(v0)             # 000003E3
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80B26458:
    bne     v1, a2, lbl_80B2643C
    addiu   v0, v0, 0x004C             # v0 = 0000004C
    bne     a3, $zero, lbl_80B26470
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B264EC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B26470:
    lh      t1, 0x0526(s0)             # 00000526
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    sh      t0, 0x051C(s0)             # 0000051C
    bne     t1, $zero, lbl_80B2648C
    nop
    lh      t2, 0x051C(s0)             # 0000051C
    sh      t2, 0x051A(s0)             # 0000051A
lbl_80B2648C:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3884          # a1 = 00003884
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x6868          # a1 = 00006868
    lw      a0, 0x002C($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    addiu   a1, $zero, 0xFFF8          # a1 = FFFFFFF8
    addu    t9, t9, a0
    lw      t9, 0x1D58(t9)             # 00011D58
    jalr    $ra, t9
    nop
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lh      a3, 0x008A(s0)             # 0000008A
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4080                 # a2 = 40800000
    jal     func_80022EC4
    swc1    $f4, 0x0010($sp)
    lbu     t3, 0x05BC(s0)             # 000005BC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    sb      t4, 0x05BC(s0)             # 000005BC
lbl_80B264EC:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B26500:
    lbu     v0, 0x0395(a0)             # 00000395
    andi    t6, v0, 0x0002             # t6 = 00000000
    sltu    t7, $zero, t6
    bne     t7, $zero, lbl_80B2651C
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B2651C:
    lh      t0, 0x0526(a0)             # 00000526
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    sb      t8, 0x0395(a0)             # 00000395
    bne     t0, $zero, lbl_80B26550
    sh      t9, 0x051E(a0)             # 0000051E
    lh      t1, 0x051C(a0)             # 0000051C
    bnel    t1, $zero, lbl_80B26554
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t2, 0x0522(a0)             # 00000522
    addiu   t3, $zero, 0x003C          # t3 = 0000003C
    bnel    t2, $zero, lbl_80B26554
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      t3, 0x0526(a0)             # 00000526
lbl_80B26550:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B26554:
    jr      $ra
    nop


func_80B2655C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     t6, 0x02FD(s0)             # 000002FD
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   v0, s0, 0x02EC             # v0 = 000002EC
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80B2659C
    lbu     t0, 0x0349(s0)             # 00000349
    lbu     t8, 0x0011(v0)             # 000002FD
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    andi    t9, t8, 0xFFFD             # t9 = 00000000
    sb      t9, 0x0011(v0)             # 000002FD
    lbu     t0, 0x0349(s0)             # 00000349
lbl_80B2659C:
    addiu   v0, s0, 0x0338             # v0 = 00000338
    andi    t1, t0, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_80B265BC
    nop
    lbu     t2, 0x0011(v0)             # 00000349
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    andi    t3, t2, 0xFFFD             # t3 = 00000000
    sb      t3, 0x0011(v0)             # 00000349
lbl_80B265BC:
    bnel    v1, $zero, lbl_80B265D0
    lbu     v0, 0x05BC(s0)             # 000005BC
    beq     $zero, $zero, lbl_80B26620
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     v0, 0x05BC(s0)             # 000005BC
lbl_80B265D0:
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    sh      t4, 0x051E(s0)             # 0000051E
    bgtz    v0, lbl_80B265E4
    addiu   t5, v0, 0x0001             # t5 = 00000001
    sb      t5, 0x05BC(s0)             # 000005BC
lbl_80B265E4:
    lh      t6, 0x0522(s0)             # 00000522
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_80B26608
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x6867          # a1 = 00006867
lbl_80B26608:
    jal     func_80B25C48
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t7, 0x05BA(s0)             # 000005BA
    or      v0, $zero, $zero           # v0 = 00000000
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x05BA(s0)             # 000005BA
lbl_80B26620:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B26634:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x0522(s0)             # 00000522
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_80B26660
    nop
    jal     func_80B263F8
    lw      a1, 0x0024($sp)
lbl_80B26660:
    jal     func_80B26500
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B26678
    lw      t7, 0x0024($sp)
    beq     $zero, $zero, lbl_80B266D4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B26678:
    lbu     t8, 0x1C26(t7)             # 00001C26
    or      a0, s0, $zero              # a0 = 00000000
    beq     t8, $zero, lbl_80B266CC
    nop
    lh      t0, 0x0522(s0)             # 00000522
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    sh      t9, 0x051E(s0)             # 0000051E
    bne     t0, $zero, lbl_80B266B0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x6867          # a1 = 00006867
lbl_80B266B0:
    jal     func_80B25C48
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t1, 0x05BA(s0)             # 000005BA
    or      v0, $zero, $zero           # v0 = 00000000
    ori     t2, t1, 0x0001             # t2 = 00000001
    beq     $zero, $zero, lbl_80B266D4
    sh      t2, 0x05BA(s0)             # 000005BA
lbl_80B266CC:
    jal     func_80B2655C
    lw      a1, 0x0024($sp)
lbl_80B266D4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B266E8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    addiu   a2, a0, 0x02EC             # a2 = 000002EC
    or      a1, a2, $zero              # a1 = 000002EC
    jal     func_80050B00
    sw      a2, 0x001C($sp)
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x001C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B2672C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x008A(a0)             # 0000008A
    lh      t7, 0x00B6(a0)             # 000000B6
    addiu   a2, a0, 0x0338             # a2 = 00000338
    or      a1, a2, $zero              # a1 = 00000338
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B26768
    subu    v1, $zero, v0
    sll     v1, v0, 16
    beq     $zero, $zero, lbl_80B26770
    sra     v1, v1, 16
lbl_80B26768:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80B26770:
    slti    $at, v1, 0x3FFC
    beql    $at, $zero, lbl_80B267B4
    sw      a2, 0x0018($sp)
    addiu   a2, a0, 0x0384             # a2 = 00000384
    or      a1, a2, $zero              # a1 = 00000384
    sw      a2, 0x0018($sp)
    jal     func_80050B00
    sw      a3, 0x0024($sp)
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0018($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
    beq     $zero, $zero, lbl_80B267D8
    lw      $ra, 0x0014($sp)
    sw      a2, 0x0018($sp)
lbl_80B267B4:
    jal     func_80050B00
    sw      a3, 0x0024($sp)
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0018($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
    lw      $ra, 0x0014($sp)
lbl_80B267D8:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B267E4:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s7, 0x0044($sp)
    sw      s2, 0x0030($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s8, 0x0048($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lui     t7, %hi(var_80B278B4)      # t7 = 80B20000
    addiu   t7, t7, %lo(var_80B278B4)  # t7 = 80B278B4
    addiu   t0, t7, 0x0024             # t0 = 80B278D8
    addiu   t6, $sp, 0x007C            # t6 = FFFFFFDC
lbl_80B26830:
    lw      t9, 0x0000(t7)             # 80B278B4
    addiu   t7, t7, 0x000C             # t7 = 80B278C0
    addiu   t6, t6, 0x000C             # t6 = FFFFFFE8
    sw      t9, -0x000C(t6)            # FFFFFFDC
    lw      t8, -0x0008(t7)            # 80B278B8
    sw      t8, -0x0008(t6)            # FFFFFFE0
    lw      t9, -0x0004(t7)            # 80B278BC
    bne     t7, t0, lbl_80B26830
    sw      t9, -0x0004(t6)            # FFFFFFE4
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s8, s7, $at
    lui     $at, %hi(var_80B27904)     # $at = 80B20000
    lwc1    $f22, %lo(var_80B27904)($at)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f20                  # $f20 = 32768.00
    addiu   s6, s2, 0x0024             # s6 = 00000024
    addiu   s0, $sp, 0x007C            # s0 = FFFFFFDC
    or      s3, $zero, $zero           # s3 = 00000000
    or      s1, s2, $zero              # s1 = 00000000
    addiu   s4, s2, 0x03D0             # s4 = 000003D0
    addiu   s5, $sp, 0x0070            # s5 = FFFFFFD0
lbl_80B26888:
    lw      t2, 0x0000(s6)             # 00000024
    lwc1    $f4, 0x0000(s0)            # FFFFFFDC
    lwc1    $f10, 0x0004(s0)           # FFFFFFE0
    sw      t2, 0x0000(s5)             # FFFFFFD0
    lw      t1, 0x0004(s6)             # 00000028
    sw      t1, 0x0004(s5)             # FFFFFFD4
    lw      t2, 0x0008(s6)             # 0000002C
    sw      t2, 0x0008(s5)             # FFFFFFD8
    lwc1    $f6, 0x052C(s2)            # 0000052C
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x0008(s0)            # FFFFFFE4
    swc1    $f8, 0x0000(s0)            # FFFFFFDC
    lwc1    $f16, 0x052C(s2)           # 0000052C
    mul.s   $f18, $f10, $f16
    swc1    $f18, 0x0004(s0)           # FFFFFFE0
    lwc1    $f6, 0x052C(s2)            # 0000052C
    mul.s   $f8, $f4, $f6
    jal     func_800AA6EC
    swc1    $f8, 0x0008(s0)            # FFFFFFE4
    lwc1    $f12, 0x0070($sp)
    lwc1    $f14, 0x0074($sp)
    lw      a2, 0x0078($sp)
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t3, 0x0514(s2)             # 00000514
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    div.s   $f18, $f16, $f20
    mul.s   $f12, $f18, $f22
    jal     func_800AAB94
    nop
    or      a0, s0, $zero              # a0 = FFFFFFDC
    jal     func_800AB958
    or      a1, s5, $zero              # a1 = FFFFFFD0
    jal     func_800AA724
    nop
    lwc1    $f4, 0x0070($sp)
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s8, $zero              # a1 = 00000000
    trunc.w.s $f6, $f4
    or      a2, s4, $zero              # a2 = 000003D0
    mfc1    t5, $f6
    nop
    sh      t5, 0x0416(s1)             # 00000416
    lwc1    $f8, 0x0074($sp)
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    sh      t7, 0x0418(s1)             # 00000418
    lwc1    $f16, 0x0078($sp)
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    jal     func_8004C130              # CollisionCheck_setOT
    sh      t8, 0x041A(s1)             # 0000041A
    addiu   s3, s3, 0x004C             # s3 = 0000004C
    addiu   $at, $zero, 0x00E4         # $at = 000000E4
    addiu   s0, s0, 0x000C             # s0 = FFFFFFE8
    addiu   s1, s1, 0x004C             # s1 = 0000004C
    bne     s3, $at, lbl_80B26888
    addiu   s4, s4, 0x004C             # s4 = 0000041C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
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
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_80B269BC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lbu     t6, 0x00AF(a3)             # 000000AF
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bne     t6, $zero, lbl_80B26A10
    or      a0, s0, $zero              # a0 = 00000000
    addu    a1, s0, $at
    addiu   a2, a3, 0x04B4             # a2 = 000004B4
    sw      a2, 0x0024($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    sw      a1, 0x0028($sp)
    lw      a1, 0x0028($sp)
    lw      a2, 0x0024($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B26A74
    lw      $ra, 0x001C($sp)
lbl_80B26A10:
    lh      t7, 0x051C(a3)             # 0000051C
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    bnel    t7, $zero, lbl_80B26A34
    lh      v0, 0x051E(a3)             # 0000051E
    jal     func_80B267E4
    sw      a3, 0x0030($sp)
    lw      a3, 0x0030($sp)
    lh      v0, 0x051E(a3)             # 0000051E
lbl_80B26A34:
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80B26A4C
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_80B26A54
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B26A4C:
    sh      t8, 0x051E(a3)             # 0000051E
    lh      v1, 0x051E(a3)             # 0000051E
lbl_80B26A54:
    bnel    v1, $zero, lbl_80B26A74
    lw      $ra, 0x001C($sp)
    jal     func_80B266E8
    sw      a3, 0x0030($sp)
    lw      a0, 0x0030($sp)
    jal     func_80B2672C
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80B26A74:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80B26A84:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0304             # a0 = 06000304
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t6, 0x8012                 # t6 = 80120000
    lui     t7, 0x8012                 # t7 = 80120000
    cvt.s.w $f6, $f4
    swc1    $f6, 0x003C($sp)
    lh      v1, 0x001C(s0)             # 0000001C
    bne     v1, $zero, lbl_80B26AE4
    sll     t8, v1,  2
    lh      t6, -0x5960(t6)            # 8011A6A0
    slti    $at, t6, 0x0064
    bne     $at, $zero, lbl_80B26B0C
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B26C08
    lw      $ra, 0x002C($sp)
lbl_80B26AE4:
    lh      t7, -0x5960(t7)            # FFFFA6A0
    addu    t8, t8, v1
    sll     t8, t8,  1
    slt     $at, t7, t8
    bne     $at, $zero, lbl_80B26B0C
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B26C08
    lw      $ra, 0x002C($sp)
lbl_80B26B0C:
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41F0                 # a3 = 41F00000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   t9, s0, 0x0180             # t9 = 00000180
    addiu   t0, s0, 0x0234             # t0 = 00000234
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    addiu   a2, a2, 0x52E0             # a2 = 060052E0
    sw      a1, 0x0030($sp)
    lw      a0, 0x0044($sp)
    jal     func_8008C684
    or      a3, $zero, $zero           # a3 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x003C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    mfc1    a3, $f0
    sw      t2, 0x0014($sp)
    addiu   a1, a1, 0x0304             # a1 = 06000304
    lw      a0, 0x0030($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f8, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    jal     func_80B25624
    lw      a0, 0x0044($sp)
    sw      v0, 0x0528(s0)             # 00000528
    lw      a1, 0x0044($sp)
    jal     func_80B258EC
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x05BA(s0)          # 000005BA
    sb      $zero, 0x05BC(s0)          # 000005BC
    lw      a1, 0x0044($sp)
    jal     func_80B25720
    or      a0, s0, $zero              # a0 = 00000000
    lh      t3, 0x001C(s0)             # 0000001C
    lui     a2, 0x3F80                 # a2 = 3F800000
    or      a0, s0, $zero              # a0 = 00000000
    beq     t3, $zero, lbl_80B26BDC
    lui     a1, 0x3F40                 # a1 = 3F400000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B25C74
    lui     a1, 0x3F00                 # a1 = 3F000000
    beq     $zero, $zero, lbl_80B26BE8
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_80B26BDC:
    jal     func_80B25C74
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_80B26BE8:
    lh      t4, 0x0032(s0)             # 00000032
    lui     a1, %hi(func_80B2733C)     # a1 = 80B20000
    addiu   a1, a1, %lo(func_80B2733C) # a1 = 80B2733C
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f10, 0x006C(s0)           # 0000006C
    jal     func_80B25590
    sh      t4, 0x0514(s0)             # 00000514
    lw      $ra, 0x002C($sp)
lbl_80B26C08:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80B26C18:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8001AE04
    lw      a1, 0x0528(s3)             # 00000528
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, s3, 0x02EC             # s1 = 000002EC
    addiu   s2, $zero, 0x01C8          # s2 = 000001C8
lbl_80B26C54:
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8004ABCC
    or      a1, s1, $zero              # a1 = 000002EC
    addiu   s0, s0, 0x004C             # s0 = 0000004C
    bne     s0, s2, lbl_80B26C54
    addiu   s1, s1, 0x004C             # s1 = 00000338
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8004A550
    addiu   a1, s3, 0x04B4             # a1 = 000004B4
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80B26C98:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B260E0
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80B26CDC
    lw      a0, 0x0018($sp)
    jal     func_80B25BF8
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_80B270C0)     # a1 = 80B20000
    addiu   a1, a1, %lo(func_80B270C0) # a1 = 80B270C0
    jal     func_80B25590
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_80B26CE8
    lw      $ra, 0x0014($sp)
lbl_80B26CDC:
    jal     func_80B26074
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_80B26CE8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B26CF4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B26074
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022AD0
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80B26D30
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80B26D40)     # t6 = 80B20000
    addiu   t6, t6, %lo(func_80B26D40) # t6 = 80B26D40
    sw      t6, 0x02E8(t7)             # 000002E8
lbl_80B26D30:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B26D40:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_80B26DE4
    lw      a3, 0x0018($sp)
    lh      t7, 0x001C(a3)             # 0000001C
    lui     t6, %hi(func_80B26CF4)     # t6 = 80B20000
    addiu   t6, t6, %lo(func_80B26CF4) # t6 = 80B26CF4
    bne     t7, $zero, lbl_80B26D90
    sw      t6, 0x02E8(a3)             # 000002E8
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t8, 0x0EE6(v1)             # 8011B4B6
    ori     t9, t8, 0x0040             # t9 = 00000040
    sh      t9, 0x0EE6(v1)             # 8011B4B6
lbl_80B26D90:
    lhu     v0, 0x010E(a3)             # 0000010E
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   $at, $zero, 0x0026         # $at = 00000026
    beq     v0, $at, lbl_80B26DB0
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    addiu   $at, $zero, 0x0027         # $at = 00000027
    bnel    v0, $at, lbl_80B26DC4
    addiu   $at, $zero, 0x0024         # $at = 00000024
lbl_80B26DB0:
    lhu     t0, 0x0F2A(v1)             # 8011B4FA
    ori     t1, t0, 0x0040             # t1 = 00000040
    sh      t1, 0x0F2A(v1)             # 8011B4FA
    lhu     v0, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x0024         # $at = 00000024
lbl_80B26DC4:
    beq     v0, $at, lbl_80B26DD4
    addiu   $at, $zero, 0x0025         # $at = 00000025
    bnel    v0, $at, lbl_80B26FCC
    lw      $ra, 0x0014($sp)
lbl_80B26DD4:
    lhu     t2, 0x0F2A(v1)             # 8011B4FA
    ori     t3, t2, 0x0080             # t3 = 00000080
    beq     $zero, $zero, lbl_80B26FC8
    sh      t3, 0x0F2A(v1)             # 8011B4FA
lbl_80B26DE4:
    lh      v1, 0x0518(a3)             # 00000518
    beql    v1, $zero, lbl_80B26E24
    lh      v1, 0x0524(a3)             # 00000524
    bne     v1, $zero, lbl_80B26E00
    addiu   t4, v1, 0xFFFF             # t4 = 8011A5CF
    beq     $zero, $zero, lbl_80B26E08
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B26E00:
    sh      t4, 0x0518(a3)             # 00000518
    lh      v0, 0x0518(a3)             # 00000518
lbl_80B26E08:
    bne     v0, $zero, lbl_80B26E20
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80B25A2C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_80B26E20:
    lh      v1, 0x0524(a3)             # 00000524
lbl_80B26E24:
    beql    v1, $zero, lbl_80B26E60
    or      a0, a3, $zero              # a0 = 00000000
    bne     v1, $zero, lbl_80B26E3C
    addiu   t5, v1, 0xFFFF             # t5 = FFFFFFFF
    beq     $zero, $zero, lbl_80B26E44
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B26E3C:
    sh      t5, 0x0524(a3)             # 00000524
    lh      v0, 0x0524(a3)             # 00000524
lbl_80B26E44:
    bne     v0, $zero, lbl_80B26E5C
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80B25A2C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_80B26E5C:
    or      a0, a3, $zero              # a0 = 00000000
lbl_80B26E60:
    lw      a1, 0x001C($sp)
    jal     func_80B260E0
    sw      a3, 0x0018($sp)
    bne     v0, $zero, lbl_80B26E98
    lw      a3, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80B25B80
    sw      a3, 0x0018($sp)
    lui     a1, %hi(func_80B271C0)     # a1 = 80B20000
    lw      a0, 0x0018($sp)
    jal     func_80B25590
    addiu   a1, a1, %lo(func_80B271C0) # a1 = 80B271C0
    beq     $zero, $zero, lbl_80B26FCC
    lw      $ra, 0x0014($sp)
lbl_80B26E98:
    lh      v1, 0x0520(a3)             # 00000520
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x386A          # a1 = 0000386A
    bne     v1, $zero, lbl_80B26EB4
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80B26EBC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B26EB4:
    sh      t6, 0x0520(a3)             # 00000520
    lh      v0, 0x0520(a3)             # 00000520
lbl_80B26EBC:
    bnel    v0, $zero, lbl_80B26EDC
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80022FD0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    sh      t7, 0x0520(a3)             # 00000520
    or      a0, a3, $zero              # a0 = 00000000
lbl_80B26EDC:
    lw      a1, 0x001C($sp)
    jal     func_80B26074
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lh      t8, 0x0518(a3)             # 00000518
    bnel    t8, $zero, lbl_80B26FCC
    lw      $ra, 0x0014($sp)
    lh      t9, 0x0524(a3)             # 00000524
    lw      a0, 0x001C($sp)
    addiu   a1, $zero, 0x000D          # a1 = 0000000D
    bnel    t9, $zero, lbl_80B26FCC
    lw      $ra, 0x0014($sp)
    jal     func_800597C0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    andi    t0, v0, 0xFFFF             # t0 = 00000000
    bne     t0, $zero, lbl_80B26FB8
    sh      v0, 0x010E(a3)             # 0000010E
    lh      t1, 0x001C(a3)             # 0000001C
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    bnel    t1, $zero, lbl_80B26FB4
    addiu   t1, $zero, 0x0022          # t1 = 00000022
    lh      v0, 0x00D0(v1)             # 8011A6A0
    addiu   t2, $zero, 0x0029          # t2 = 00000029
    slti    $at, v0, 0x0032
    bnel    $at, $zero, lbl_80B26F58
    slti    $at, v0, 0x000A
    beq     $zero, $zero, lbl_80B26FB8
    sh      t2, 0x010E(a3)             # 0000010E
    slti    $at, v0, 0x000A
lbl_80B26F58:
    bnel    $at, $zero, lbl_80B26F8C
    lhu     t7, 0x0F2A(v1)             # 8011B4FA
    lhu     t3, 0x0F2A(v1)             # 8011B4FA
    addiu   t5, $zero, 0x0024          # t5 = 00000024
    addiu   t6, $zero, 0x0025          # t6 = 00000025
    andi    t4, t3, 0x0080             # t4 = 00000000
    beq     t4, $zero, lbl_80B26F80
    nop
    beq     $zero, $zero, lbl_80B26FB8
    sh      t5, 0x010E(a3)             # 0000010E
lbl_80B26F80:
    beq     $zero, $zero, lbl_80B26FB8
    sh      t6, 0x010E(a3)             # 0000010E
    lhu     t7, 0x0F2A(v1)             # 8011B4FA
lbl_80B26F8C:
    addiu   t9, $zero, 0x0027          # t9 = 00000027
    addiu   t0, $zero, 0x0026          # t0 = 00000026
    andi    t8, t7, 0x0040             # t8 = 00000000
    beq     t8, $zero, lbl_80B26FA8
    nop
    beq     $zero, $zero, lbl_80B26FB8
    sh      t9, 0x010E(a3)             # 0000010E
lbl_80B26FA8:
    beq     $zero, $zero, lbl_80B26FB8
    sh      t0, 0x010E(a3)             # 0000010E
    addiu   t1, $zero, 0x0022          # t1 = 00000022
lbl_80B26FB4:
    sh      t1, 0x010E(a3)             # 0000010E
lbl_80B26FB8:
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)
    jal     func_80022A68
    lui     a2, 0x42C8                 # a2 = 42C80000
lbl_80B26FC8:
    lw      $ra, 0x0014($sp)
lbl_80B26FCC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B26FD8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      v0, 0x0518(s0)             # 00000518
    beql    v0, $zero, lbl_80B27024
    lh      v0, 0x0524(s0)             # 00000524
    bne     v0, $zero, lbl_80B27008
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80B27010
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B27008:
    sh      t6, 0x0518(s0)             # 00000518
    lh      v1, 0x0518(s0)             # 00000518
lbl_80B27010:
    bne     v1, $zero, lbl_80B27020
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B25A2C
    addiu   a1, $zero, 0x0002          # a1 = 00000002
lbl_80B27020:
    lh      v0, 0x0524(s0)             # 00000524
lbl_80B27024:
    beql    v0, $zero, lbl_80B27058
    lwc1    $f6, 0x0080(s0)            # 00000080
    bne     v0, $zero, lbl_80B2703C
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_80B27044
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B2703C:
    sh      t7, 0x0524(s0)             # 00000524
    lh      v1, 0x0524(s0)             # 00000524
lbl_80B27044:
    bne     v1, $zero, lbl_80B27054
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B25A2C
    addiu   a1, $zero, 0x0002          # a1 = 00000002
lbl_80B27054:
    lwc1    $f6, 0x0080(s0)            # 00000080
lbl_80B27058:
    lwc1    $f8, 0x0530(s0)            # 00000530
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     a2, 0x3F19                 # a2 = 3F190000
    add.s   $f10, $f6, $f8
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a1, 0x4000                 # a1 = 40000000
    c.le.s  $f10, $f4
    nop
    bc1fl   lbl_80B270A0
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     a1, %hi(func_80B26D40)     # a1 = 80B20000
    addiu   a1, a1, %lo(func_80B26D40) # a1 = 80B26D40
    jal     func_80B25590
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B270B0
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_80B270A0:
    lui     a3, 0x447A                 # a3 = 447A0000
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    lw      $ra, 0x0024($sp)
lbl_80B270B0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B270C0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x0518(s0)             # 00000518
    beql    v0, $zero, lbl_80B2710C
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B270F0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80B270F8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B270F0:
    sh      t6, 0x0518(s0)             # 00000518
    lh      v1, 0x0518(s0)             # 00000518
lbl_80B270F8:
    bne     v1, $zero, lbl_80B27108
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B25A2C
    addiu   a1, $zero, 0x0004          # a1 = 00000004
lbl_80B27108:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B2710C:
    jal     func_80B260E0
    lw      a1, 0x0024($sp)
    bne     v0, $zero, lbl_80B2713C
    nop
    jal     func_80B25B80
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80B271C0)     # a1 = 80B20000
    addiu   a1, a1, %lo(func_80B271C0) # a1 = 80B271C0
    jal     func_80B25590
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B271B0
    lw      $ra, 0x001C($sp)
lbl_80B2713C:
    jal     func_80B26200
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B27174
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B2559C
    lw      a1, 0x0024($sp)
    jal     func_80B25BB4
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80B26FD8)     # a1 = 80B20000
    addiu   a1, a1, %lo(func_80B26FD8) # a1 = 80B26FD8
    jal     func_80B25590
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B271B0
    lw      $ra, 0x001C($sp)
lbl_80B27174:
    lh      v0, 0x0520(s0)             # 00000520
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B2718C
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_80B27194
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B2718C:
    sh      t7, 0x0520(s0)             # 00000520
    lh      v1, 0x0520(s0)             # 00000520
lbl_80B27194:
    bnel    v1, $zero, lbl_80B271B0
    lw      $ra, 0x001C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3868          # a1 = 00003868
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sh      t8, 0x0520(s0)             # 00000520
    lw      $ra, 0x001C($sp)
lbl_80B271B0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B271C0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s0, 0x0018($sp)
    mtc1    $at, $f0                   # $f0 = 1.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lwc1    $f6, 0x0150(s0)            # 00000150
    lwc1    $f4, 0x0154(s0)            # 00000154
    sub.s   $f8, $f6, $f0
    div.s   $f10, $f4, $f8
    swc1    $f10, 0x0024($sp)
    lwc1    $f16, 0x0024($sp)
    c.eq.s  $f16, $f0
    nop
    bc1fl   lbl_80B27210
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B25B80
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B27210:
    jal     func_80B260E0
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_80B27240
    nop
    jal     func_80B25BF8
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80B270C0)     # a1 = 80B20000
    addiu   a1, a1, %lo(func_80B270C0) # a1 = 80B270C0
    jal     func_80B25590
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B27284
    lw      $ra, 0x001C($sp)
lbl_80B27240:
    jal     func_80B261C8
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B27270
    lui     $at, 0x4080                # $at = 40800000
    jal     func_80B25B60
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80B26C98)     # a1 = 80B20000
    addiu   a1, a1, %lo(func_80B26C98) # a1 = 80B26C98
    jal     func_80B25590
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B27284
    lw      $ra, 0x001C($sp)
lbl_80B27270:
    mtc1    $at, $f18                  # $f18 = 0.00
    lwc1    $f6, 0x0024($sp)
    mul.s   $f4, $f18, $f6
    swc1    $f4, 0x0060(s0)            # 00000060
    lw      $ra, 0x001C($sp)
lbl_80B27284:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B27294:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lhu     v0, 0x05BA(a0)             # 000005BA
    andi    t6, v0, 0x0010             # t6 = 00000000
    beql    t6, $zero, lbl_80B272F4
    lh      t0, 0x051A(a0)             # 0000051A
    lh      t7, 0x051A(a0)             # 0000051A
    bnel    t7, $zero, lbl_80B27330
    lw      $ra, 0x0014($sp)
    lh      t9, 0x001C(a0)             # 0000001C
    andi    t8, v0, 0xFFEF             # t8 = 00000000
    sh      t8, 0x05BA(a0)             # 000005BA
    beq     t9, $zero, lbl_80B272E0
    lui     a1, 0x3F40                 # a1 = 3F400000
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_80B25C74
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_80B27330
    lw      $ra, 0x0014($sp)
lbl_80B272E0:
    jal     func_80B25C74
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_80B27330
    lw      $ra, 0x0014($sp)
    lh      t0, 0x051A(a0)             # 0000051A
lbl_80B272F4:
    beql    t0, $zero, lbl_80B27330
    lw      $ra, 0x0014($sp)
    lh      t2, 0x001C(a0)             # 0000001C
    ori     t1, v0, 0x0010             # t1 = 00000010
    sh      t1, 0x05BA(a0)             # 000005BA
    beq     t2, $zero, lbl_80B27324
    lui     a1, 0x3F40                 # a1 = 3F400000
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_80B25C74
    lui     a2, 0x4000                 # a2 = 40000000
    beq     $zero, $zero, lbl_80B27330
    lw      $ra, 0x0014($sp)
lbl_80B27324:
    jal     func_80B25C74
    lui     a2, 0x4000                 # a2 = 40000000
    lw      $ra, 0x0014($sp)
lbl_80B27330:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B2733C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_80B26200
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B27380
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80B26C98)     # a1 = 80B20000
    jal     func_80B25590
    addiu   a1, a1, %lo(func_80B26C98) # a1 = 80B26C98
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B26C98
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_80B273B4
    lw      $ra, 0x001C($sp)
lbl_80B27380:
    jal     func_80B25BB4
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t6, 0x05BA(s0)             # 000005BA
    lui     a1, %hi(func_80B26FD8)     # a1 = 80B20000
    addiu   a1, a1, %lo(func_80B26FD8) # a1 = 80B26FD8
    ori     t7, t6, 0x0004             # t7 = 00000004
    sh      t7, 0x05BA(s0)             # 000005BA
    jal     func_80B25590
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B26FD8
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
lbl_80B273B4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B273C4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_80B27294
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B26634
    lw      a1, 0x002C($sp)
    bnel    v0, $zero, lbl_80B274D4
    lw      $ra, 0x0024($sp)
    lh      t6, 0x0522(s0)             # 00000522
    beq     t6, $zero, lbl_80B27410
    nop
    jal     func_80B25DE8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B2745C
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B27410:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80021124
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sw      t7, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      t9, 0x02E8(s0)             # 000002E8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jalr    $ra, t9
    nop
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B2745C:
    jal     func_80B26038
    lw      a1, 0x002C($sp)
    lh      v1, 0x05C0(s0)             # 000005C0
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    bne     v1, $zero, lbl_80B2747C
    addiu   t8, v1, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_80B27488
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B2747C:
    sh      t8, 0x05C0(s0)             # 000005C0
    lh      v1, 0x05C0(s0)             # 000005C0
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B27488:
    bnel    v0, $zero, lbl_80B274A4
    sh      v1, 0x05BE(s0)             # 000005BE
    jal     func_80063BF0
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    sh      v0, 0x05C0(s0)             # 000005C0
    lh      v1, 0x05C0(s0)             # 000005C0
    sh      v1, 0x05BE(s0)             # 000005BE
lbl_80B274A4:
    lh      t0, 0x05BE(s0)             # 000005BE
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t0, 0x0003
    bne     $at, $zero, lbl_80B274BC
    nop
    sh      $zero, 0x05BE(s0)          # 000005BE
lbl_80B274BC:
    jal     func_80B269BC
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80B274D4:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B274E4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a1, $at, lbl_80B2752C
    lw      a0, 0x002C($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a1, $at, lbl_80B27570
    lw      a0, 0x002C($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     a1, $at, lbl_80B2758C
    lw      a0, 0x002C($sp)
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     a1, $at, lbl_80B275A8
    lw      a0, 0x002C($sp)
    beq     $zero, $zero, lbl_80B275C4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B2752C:
    lh      v0, 0x051A(a0)             # 0000051A
    beql    v0, $zero, lbl_80B275C4
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t6, 0x0526(a0)             # 00000526
    slti    $at, v0, 0x0002
    bnel    t6, $zero, lbl_80B275C4
    or      v0, $zero, $zero           # v0 = 00000000
    bne     $at, $zero, lbl_80B27560
    nop
    jal     func_80B257B8
    nop
    beq     $zero, $zero, lbl_80B275C4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B27560:
    jal     func_80B258C0
    nop
    beq     $zero, $zero, lbl_80B275C4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B27570:
    lh      t7, 0x001C(a0)             # 0000001C
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x46C0             # t8 = 060046C0
    bnel    t7, $zero, lbl_80B275C4
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_80B275C0
    sw      t8, 0x0000(a2)             # 00000000
lbl_80B2758C:
    lh      t9, 0x001C(a0)             # 0000001C
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t0, t0, 0x4080             # t0 = 06004080
    bnel    t9, $zero, lbl_80B275C4
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_80B275C0
    sw      t0, 0x0000(a2)             # 00000000
lbl_80B275A8:
    lh      t1, 0x001C(a0)             # 0000001C
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x4DE8             # t2 = 06004DE8
    bnel    t1, $zero, lbl_80B275C4
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t2, 0x0000(a2)             # 00000000
lbl_80B275C0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B275C4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B275D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a2, 0x0020($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a3, 0x0024($sp)
    lw      a1, 0x0028($sp)
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80050CE4
    addiu   a1, a1, 0x04B4             # a1 = 000004B4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B27610:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B26384
    lw      a1, 0x002C($sp)
    jal     func_80B26240
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x002C($sp)
    lui     a3, %hi(func_80B274E4)     # a3 = 80B20000
    addiu   a3, a3, %lo(func_80B274E4) # a3 = 80B274E4
    lw      v0, 0x0000(t6)             # 00000000
    lw      a0, 0x02C0(v0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, a0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v0)             # 000002C0
    sw      t8, 0x0000(a0)             # 00000000
    lh      t9, 0x05BE(s0)             # 000005BE
    lui     a1, %hi(var_80B278D8)      # a1 = 80B20000
    lui     t5, 0x8012                 # t5 = 80120000
    sll     t0, t9,  2
    addu    a1, a1, t0
    lw      a1, %lo(var_80B278D8)(a1)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t2, a1,  4
    srl     t3, t2, 28
    sll     t4, t3,  2
    addu    t5, t5, t4
    lw      t5, 0x0C38(t5)             # 80120C38
    and     t1, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t1, t5
    addu    t7, t6, $at
    sw      t7, 0x0004(a0)             # 00000004
    lui     t8, %hi(func_80B275D4)     # t8 = 80B20000
    addiu   t8, t8, %lo(func_80B275D4) # t8 = 80B275D4
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    sw      s0, 0x0014($sp)
    sw      t8, 0x0010($sp)
    jal     func_8008993C
    lw      a0, 0x002C($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop
    nop

.section .data

var_80B276E0: .word \
0xFFFF0000, 0x00000000, 0x00000400, 0xFFFFFFFF, \
0x00010000, 0x00000000, 0x04000400, 0xFFFFFFFF, \
0x00010064, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0xFFFF0064, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xE7000000, 0x00000000, 0xD7000000, 0x00000000, \
0xFCFFFFFF, 0xFFFFFEFB, 0xE200001C, 0xC8112078, \
0xD9F1FBFF, 0x00000000, 0xFA000000, 0xFFFFFFFF, \
0x01004008
.word var_80B276E0
.word \
0x05000204, 0x00000000, 0x05000406, 0x00000000, \
0xDF000000, 0x00000000
var_80B27770: .word 0x01880400, 0x00000035, 0x015E0000, 0x000005C4
.word func_80B26A84
.word func_80B26C18
.word func_80B273C4
.word func_80B27610
var_80B27790: .word \
0x06000900, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01010000, \
0x00200032, 0xFFE80000, 0x00000000
var_80B277BC: .word 0x01000000, 0x00000000, 0xFF000000
var_80B277C8: .word \
0x06000039, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0014003C, 0xFFE20000, 0x00000000
var_80B277F4: .word \
0x00000000, 0xFFCFFFFF, 0x00040000, 0x00000000, \
0x00000000, 0x01000100, 0x01000000, 0xFF100000, \
0x001C0064
var_80B27818: .word 0x06110039, 0x10000000, 0x00000001
.word var_80B277F4
var_80B27828: .word 0x00000000, 0x00000000, 0x00000000
var_80B27834: .word 0xFFFFFF4B
var_80B27838: .word 0xFFFFFF4B
var_80B2783C: .word 0xFFFFFF00
var_80B27840: .word 0xFFFFFF00
var_80B27844: .word 0x44508000, 0x44508000, 0x00000000
var_80B27850: .word 0x44508000, 0xC4120000, 0x00000000
var_80B2785C: .word var_80B27790
.word var_80B27790
.word var_80B27790
.word var_80B277C8
.word var_80B277C8
.word var_80B277C8
var_80B27874: .word \
0x06005BE8, 0x06000304, 0x06000304, 0x060055F8, \
0x06000304, 0x06000304, 0x06005BE8
var_80B27890: .word \
0x3F800000, 0x40800000, 0x3F800000, 0x3F800000, \
0x41000000, 0x40C00000, 0x40000000
var_80B278AC: .word 0x03030103, 0x01010100
var_80B278B4: .word \
0x42200000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0xC2200000, 0x00000000, \
0x00000000
var_80B278D8: .word \
0x060007E0, 0x06000C60, 0x06001060, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B278F0: .word 0x3D23D70A
var_80B278F4: .word 0x461C4000
var_80B278F8: .word 0x3E2AAAAB
var_80B278FC: .word 0x43360B61
var_80B27900: .word 0x38C90FDB
var_80B27904: .word 0x40490FDB, 0x00000000, 0x00000000

