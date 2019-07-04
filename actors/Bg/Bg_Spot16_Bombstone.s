.section .text
func_809C4C00:
    lh      v0, 0x001C(a0)             # 0000001C
    sra     t6, v0,  8
    andi    t7, t6, 0x003F             # t7 = 00000000
    andi    t8, v0, 0x00FF             # t8 = 00000000
    sh      t7, 0x0146(a0)             # 00000146
    sh      t8, 0x001C(a0)             # 0000001C
    jr      $ra
    nop


func_809C4C20:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0154             # a1 = 00000154
    sw      a1, 0x0020($sp)
    lw      a0, 0x002C($sp)
    jal     func_8004A484
    sw      a2, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lui     a3, %hi(var_809C5D74)      # a3 = 809C0000
    lw      a1, 0x0020($sp)
    addiu   t6, a2, 0x0174             # t6 = 00000174
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(var_809C5D74)  # a3 = 809C5D74
    jal     func_8004A874
    lw      a0, 0x002C($sp)
    lw      a2, 0x0028($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    lwc1    $f4, 0x0024(a2)            # 00000024
    lw      t9, 0x0170(a2)             # 00000170
    addiu   t6, $zero, 0x0078          # t6 = 00000078
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    sh      t8, 0x0030(t9)             # 00000030
    lwc1    $f8, 0x0028(a2)            # 00000028
    lw      t2, 0x0170(a2)             # 00000170
    add.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sh      t1, 0x0032(t2)             # 00000032
    lwc1    $f4, 0x002C(a2)            # 0000002C
    lw      t5, 0x0170(a2)             # 00000170
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    sh      t4, 0x0034(t5)             # 00000034
    lw      t7, 0x0170(a2)             # 00000170
    sh      t6, 0x0036(t7)             # 00000036
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809C4CD4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x01B4             # a1 = 000001B4
    sw      a1, 0x0018($sp)
    lw      a0, 0x0024($sp)
    jal     func_8004AB7C
    sw      a2, 0x0020($sp)
    lui     a3, %hi(var_809C5D84)      # a3 = 809C0000
    lw      a1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    addiu   a3, a3, %lo(var_809C5D84)  # a3 = 809C5D84
    jal     func_8004ACEC
    lw      a0, 0x0024($sp)
    lw      a2, 0x0020($sp)
    lwc1    $f4, 0x0024(a2)            # 00000024
    lwc1    $f8, 0x0028(a2)            # 00000028
    lwc1    $f16, 0x002C(a2)           # 0000002C
    trunc.w.s $f6, $f4
    lh      t6, 0x01FA(a2)             # 000001FA
    lh      t2, 0x01FC(a2)             # 000001FC
    trunc.w.s $f10, $f8
    mfc1    t0, $f6
    lh      t9, 0x01FE(a2)             # 000001FE
    trunc.w.s $f18, $f16
    mfc1    t7, $f10
    addu    t1, t6, t0
    sh      t1, 0x01FA(a2)             # 000001FA
    mfc1    t3, $f18
    addu    t8, t2, t7
    sh      t8, 0x01FC(a2)             # 000001FC
    addu    t4, t9, t3
    sh      t4, 0x01FE(a2)             # 000001FE
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809C4D68:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    lh      a1, 0x0146(s0)             # 00000146
    beq     v0, $zero, lbl_809C4D98
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809C4E04
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809C4D98:
    lui     a1, %hi(var_809C5F3C)      # a1 = 809C0000
    jal     func_80063F7C
    addiu   a1, a1, %lo(var_809C5F3C)  # a1 = 809C5F3C
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sb      t6, 0x00AE(s0)             # 000000AE
    lw      a1, 0x0024($sp)
    jal     func_809C4C20
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C4CD4
    lw      a1, 0x0024($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x014C(s0)            # 0000014C
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x0C20             # t7 = 06000C20
    swc1    $f0, 0x0150(s0)            # 00000150
    sw      t7, 0x0140(s0)             # 00000140
    jal     func_809C5884
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809C4E04:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809C4E18:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(var_809C5F48)      # a1 = 809C0000
    addiu   a1, a1, %lo(var_809C5F48)  # a1 = 809C5F48
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lui     t8, %hi(var_809C5CD8)      # t8 = 809C0000
    addiu   t8, t8, %lo(var_809C5CD8)  # t8 = 809C5CD8
    sll     t7, t6,  2
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    v0, t7, t8
    lh      t9, 0x0000(v0)             # 00000000
    lui     $at, %hi(var_809C5FA0)     # $at = 809C0000
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0068(s0)            # 00000068
    lh      t0, 0x0002(v0)             # 00000002
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0060(s0)           # 00000060
    lh      t1, 0x0004(v0)             # 00000004
    lwc1    $f4, %lo(var_809C5FA0)($at)
    mtc1    t1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f6, $f18, $f4
    mfc1    a1, $f6
    jal     func_80020F88
    nop
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    lui     v0, %hi(var_809C5CD8)      # v0 = 809C0000
    multu   t2, v1
    addiu   v0, v0, %lo(var_809C5CD8)  # v0 = 809C5CD8
    lh      t8, 0x001C(s0)             # 0000001C
    mflo    t3
    addu    t4, v0, t3
    lh      t5, 0x0006(t4)             # 00000006
    multu   t8, v1
    lh      t4, 0x001C(s0)             # 0000001C
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mflo    t9
    trunc.w.s $f16, $f10
    addu    t0, v0, t9
    multu   t4, v1
    mfc1    t7, $f16
    nop
    sh      t7, 0x0200(s0)             # 00000200
    lh      t1, 0x0008(t0)             # 00000008
    mtc1    t1, $f18                   # $f18 = 0.00
    mflo    t5
    addu    t6, v0, t5
    cvt.s.w $f4, $f18
    trunc.w.s $f6, $f4
    mfc1    t3, $f6
    nop
    sh      t3, 0x0202(s0)             # 00000202
    lh      t7, 0x000A(t6)             # 0000000A
    sh      t7, 0x0032(s0)             # 00000032
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    swc1    $f0, 0x0020($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f2                   # $f2 = 50.00
    lwc1    $f8, 0x0020($sp)
    lwc1    $f16, 0x0008(s0)           # 00000008
    lh      t8, 0x001C(s0)             # 0000001C
    mul.s   $f10, $f8, $f2
    lui     t0, %hi(var_809C5CD8)      # t0 = 809C0000
    sll     t9, t8,  2
    addu    t9, t9, t8
    sll     t9, t9,  2
    addiu   t0, t0, %lo(var_809C5CD8)  # t0 = 809C5CD8
    addu    v0, t9, t0
    add.s   $f18, $f10, $f16
    mul.s   $f16, $f0, $f2
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lui     t5, 0x0600                 # t5 = 06000000
    swc1    $f18, 0x0024(s0)           # 00000024
    lh      t1, 0x000C(v0)             # 0000000C
    lwc1    $f18, 0x0010(s0)           # 00000010
    addiu   t5, t5, 0x09E0             # t5 = 060009E0
    mtc1    t1, $f4                    # $f4 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    cvt.s.w $f6, $f4
    addiu   a1, $zero, 0x0163          # a1 = 00000163
    add.s   $f4, $f16, $f18
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x002C(s0)            # 0000002C
    swc1    $f10, 0x0028(s0)           # 00000028
    lh      t2, 0x000E(v0)             # 0000000E
    sh      t2, 0x00B4(s0)             # 000000B4
    lh      t3, 0x0010(v0)             # 00000010
    sh      t3, 0x00B6(s0)             # 000000B6
    lh      t4, 0x0012(v0)             # 00000012
    sw      t5, 0x0140(s0)             # 00000140
    sh      t4, 0x00B8(s0)             # 000000B8
    lw      a0, 0x0034($sp)
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    sb      v0, 0x0204(s0)             # 00000204
    lb      t6, 0x0204(s0)             # 00000204
    bgez    t6, lbl_809C4FF4
    nop
    beq     $zero, $zero, lbl_809C5000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809C4FF4:
    jal     func_809C5A14
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809C5000:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809C5014:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sh      v1, 0x0026($sp)
    jal     func_809C4C00
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lh      v1, 0x0026($sp)
    lw      a1, 0x002C($sp)
    slti    $at, v0, 0x0006
    bne     $at, $zero, lbl_809C5064
    sll     t6, v0,  2
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_809C5080
    nop
    beq     $zero, $zero, lbl_809C50A4
    nop
lbl_809C5064:
    sltiu   $at, v0, 0x0006
    beq     $at, $zero, lbl_809C50A4
    lui     $at, %hi(var_809C5FA4)     # $at = 809C0000
    addu    $at, $at, t6
    lw      t6, %lo(var_809C5FA4)($at)
    jr      t6
    nop
lbl_809C5080:
    jal     func_809C4D68
    or      a0, s0, $zero              # a0 = 00000000
    sll     v1, v0, 16
    beq     $zero, $zero, lbl_809C50A4
    sra     v1, v1, 16
var_809C5094:
    jal     func_809C4E18
    or      a0, s0, $zero              # a0 = 00000000
    sll     v1, v0, 16
    sra     v1, v1, 16
lbl_809C50A4:
    bnel    v1, $zero, lbl_809C50B8
    lw      $ra, 0x001C($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_809C50B8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809C50C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x001C($sp)
    bne     t6, $at, lbl_809C5104
    addiu   a1, a2, 0x0154             # a1 = 00000154
    jal     func_8004A550
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a2, 0x01B4             # a1 = 000001B4
lbl_809C5104:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809C5114:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0040($sp)
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f4                   # $f4 = 150.00
    lwc1    $f0, 0x0050(t6)            # 00000050
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f6                   # $f6 = 250.00
    mul.s   $f2, $f0, $f4
    lwc1    $f16, 0x0024(t6)           # 00000024
    lui     $at, 0x4248                # $at = 42480000
    mul.s   $f8, $f0, $f6
    swc1    $f16, 0x002C($sp)
    mtc1    $at, $f4                   # $f4 = 50.00
    lwc1    $f18, 0x0028(t6)           # 00000028
    mfc1    a2, $f2
    addiu   t8, $zero, 0x00A0          # t8 = 000000A0
    add.s   $f6, $f18, $f4
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lw      a0, 0x0044($sp)
    trunc.w.s $f10, $f8
    swc1    $f6, 0x0030($sp)
    lwc1    $f8, 0x002C(t6)            # 0000002C
    sw      t9, 0x0018($sp)
    mfc1    v0, $f10
    sw      t8, 0x0014($sp)
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFEC
    sll     v0, v0, 16
    sra     v0, v0, 16
    sw      v0, 0x0010($sp)
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    jal     func_80026308
    swc1    $f8, 0x0034($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_809C51B0:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s6, 0x0040($sp)
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    lui     s5, %hi(var_809C5F68)      # s5 = 809C0000
    lui     s4, %hi(var_809C5F5C)      # s4 = 809C0000
    lui     s1, %hi(var_809C5DB0)      # s1 = 809C0000
    addiu   s1, s1, %lo(var_809C5DB0)  # s1 = 809C5DB0
    addiu   s4, s4, %lo(var_809C5F5C)  # s4 = 809C5F5C
    addiu   s5, s5, %lo(var_809C5F68)  # s5 = 809C5F68
    addiu   s3, $sp, 0x0050            # s3 = FFFFFFE8
    addiu   s2, $zero, 0x000E          # s2 = 0000000E
lbl_809C51FC:
    lh      t0, 0x0148(s0)             # 00000148
    sltiu   $at, t0, 0x001A
    beq     $at, $zero, lbl_809C52F0
    sll     t1, t0, 16
    multu   t0, s2
    lh      t6, 0x0144(s0)             # 00000144
    sra     t1, t1, 16
    mflo    t7
    addu    t8, s1, t7
    lh      t9, 0x0000(t8)             # 00000000
    slt     $at, t6, t9
    bnel    $at, $zero, lbl_809C52F4
    lw      $ra, 0x0044($sp)
    multu   t1, s2
    lwc1    $f8, 0x014C(s0)            # 0000014C
    lwc1    $f16, 0x0150(s0)           # 00000150
    addiu   v1, s0, 0x0024             # v1 = 00000024
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFE8
    or      a2, s4, $zero              # a2 = 809C5F5C
    or      a3, s5, $zero              # a3 = 809C5F68
    mflo    t2
    addu    v0, s1, t2
    lh      t4, 0x0006(v0)             # 00000006
    lh      t3, 0x0002(v0)             # 00000002
    lh      t5, 0x0004(v0)             # 00000004
    mtc1    t4, $f6                    # $f6 = 0.00
    mtc1    t3, $f4                    # $f4 = 0.00
    lh      t7, 0x0008(v0)             # 00000008
    cvt.s.w $f2, $f6
    lwc1    $f6, 0x0000(v1)            # 00000024
    lh      t8, 0x000A(v0)             # 0000000A
    lh      t6, 0x000C(v0)             # 0000000C
    cvt.s.w $f0, $f4
    mul.s   $f10, $f8, $f2
    nop
    mul.s   $f18, $f0, $f16
    mtc1    t5, $f16                   # $f16 = 0.00
    add.s   $f4, $f10, $f18
    cvt.s.w $f10, $f16
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0050($sp)
    lwc1    $f18, 0x0004(v1)           # 00000028
    add.s   $f4, $f10, $f18
    swc1    $f4, 0x0054($sp)
    lwc1    $f6, 0x0150(s0)            # 00000150
    lwc1    $f16, 0x014C(s0)           # 0000014C
    lwc1    $f4, 0x0008(v1)            # 0000002C
    mul.s   $f8, $f6, $f2
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    mul.s   $f10, $f0, $f16
    sw      t6, 0x0018($sp)
    sub.s   $f18, $f8, $f10
    add.s   $f6, $f18, $f4
    jal     func_8001C2A4
    swc1    $f6, 0x0058($sp)
    lh      t9, 0x0148(s0)             # 00000148
    addiu   t2, t9, 0x0001             # t2 = 00000001
    beq     $zero, $zero, lbl_809C51FC
    sh      t2, 0x0148(s0)             # 00000148
lbl_809C52F0:
    lw      $ra, 0x0044($sp)
lbl_809C52F4:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_809C5318:
    addiu   $sp, $sp, 0xFF38           # $sp = FFFFFF38
    sw      s7, 0x0090($sp)
    sw      s1, 0x0078($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0094($sp)
    sw      s6, 0x008C($sp)
    sw      s5, 0x0088($sp)
    sw      s4, 0x0084($sp)
    sw      s3, 0x0080($sp)
    sw      s2, 0x007C($sp)
    sw      s0, 0x0074($sp)
    sdc1    $f30, 0x0068($sp)
    sdc1    $f28, 0x0060($sp)
    sdc1    $f26, 0x0058($sp)
    sdc1    $f24, 0x0050($sp)
    sdc1    $f22, 0x0048($sp)
    sdc1    $f20, 0x0040($sp)
    lh      t6, 0x001C(s1)             # 0000001C
    addiu   a0, s7, 0x1C24             # a0 = 00001C24
    or      a1, s7, $zero              # a1 = 00000000
    bne     t6, $zero, lbl_809C53AC
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f4, 0x0028(s1)            # 00000028
    lw      a3, 0x0024(s1)             # 00000024
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s1)            # 0000002C
    sw      t7, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    addiu   a2, $zero, 0x00CD          # a2 = 000000CD
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    beq     $zero, $zero, lbl_809C53AC
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_809C53AC:
    slti    $at, v0, 0x0005
    beq     $at, $zero, lbl_809C554C
    sll     t8, v0,  2
    lui     $at, %hi(var_809C5FBC)     # $at = 809C0000
    lwc1    $f30, %lo(var_809C5FBC)($at)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f28                  # $f28 = 5.00
    lui     $at, 0x402C                # $at = 402C0000
    mtc1    $at, $f27                  # $f27 = 2.69
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f24                  # $f24 = 16.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f22                  # $f22 = 8.00
    lui     $at, 0x3F00                # $at = 3F000000
    lui     t9, %hi(var_809C5F74)      # t9 = 809C0000
    addiu   t9, t9, %lo(var_809C5F74)  # t9 = 809C5F74
    lui     s6, %hi(var_809C5F88)      # s6 = 809C0000
    lui     s5, 0x0600                 # s5 = 06000000
    mtc1    $at, $f20                  # $f20 = 0.50
    mtc1    $zero, $f26                # $f26 = 0.00
    addiu   s5, s5, 0x09E0             # s5 = 060009E0
    addiu   s6, s6, %lo(var_809C5F88)  # s6 = 809C5F88
    addu    s0, t8, t9
    addiu   s2, s1, 0x0024             # s2 = 00000024
    addiu   s4, $sp, 0x00AC            # s4 = FFFFFFE4
    addiu   s3, $sp, 0x00B8            # s3 = FFFFFFF0
lbl_809C5414:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f8, $f0, $f20
    lwc1    $f16, 0x0024(s1)           # 00000024
    mul.s   $f10, $f8, $f22
    add.s   $f18, $f10, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00B8($sp)
    mul.s   $f4, $f0, $f28
    lwc1    $f6, 0x0028(s1)            # 00000028
    add.s   $f8, $f4, $f6
    add.s   $f10, $f8, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00BC($sp)
    sub.s   $f16, $f0, $f20
    lwc1    $f4, 0x002C(s1)            # 0000002C
    mul.s   $f18, $f16, $f22
    add.s   $f6, $f18, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00C0($sp)
    sub.s   $f8, $f0, $f20
    mul.s   $f10, $f8, $f24
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00AC($sp)
    mov.s   $f2, $f0
    lwc1    $f0, 0x0060(s1)            # 00000060
    cvt.d.s $f4, $f2
    abs.s   $f0, $f0
    mul.s   $f16, $f0, $f30
    nop
    mul.d   $f6, $f4, $f26
    cvt.d.s $f18, $f16
    add.d   $f8, $f18, $f6
    cvt.s.d $f10, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00B0($sp)
    sub.s   $f16, $f0, $f20
    lwc1    $f18, 0x0000(s0)           # 00000000
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    mul.s   $f4, $f16, $f24
    addiu   t1, $zero, 0xFE5C          # t1 = FFFFFE5C
    addiu   t2, $zero, 0x0031          # t2 = 00000031
    addiu   t3, $zero, 0x000F          # t3 = 0000000F
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    swc1    $f4, 0x00B4($sp)
    lwc1    $f6, 0x0050(s1)            # 00000050
    addiu   t7, $zero, 0x00A0          # t7 = 000000A0
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mul.s   $f8, $f18, $f6
    addiu   t9, $zero, 0x0163          # t9 = 00000163
    sw      t9, 0x0038($sp)
    sw      t8, 0x0034($sp)
    sw      t7, 0x0030($sp)
    sw      s5, 0x003C($sp)
    sw      t6, 0x002C($sp)
    mul.s   $f16, $f8, $f10
    sw      t5, 0x0028($sp)
    sw      $zero, 0x0020($sp)
    sw      t4, 0x001C($sp)
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    trunc.w.s $f4, $f16
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF0
    or      a2, s4, $zero              # a2 = FFFFFFE4
    mfc1    v0, $f4
    or      a3, s2, $zero              # a3 = 00000024
    sll     v0, v0, 16
    sra     v0, v0, 16
    jal     func_8001D998
    sw      v0, 0x0024($sp)
    addiu   s0, s0, 0x0004             # s0 = 00000004
    bne     s0, s6, lbl_809C5414
    nop
lbl_809C554C:
    lw      $ra, 0x0094($sp)
    ldc1    $f20, 0x0040($sp)
    ldc1    $f22, 0x0048($sp)
    ldc1    $f24, 0x0050($sp)
    ldc1    $f26, 0x0058($sp)
    ldc1    $f28, 0x0060($sp)
    ldc1    $f30, 0x0068($sp)
    lw      s0, 0x0074($sp)
    lw      s1, 0x0078($sp)
    lw      s2, 0x007C($sp)
    lw      s3, 0x0080($sp)
    lw      s4, 0x0084($sp)
    lw      s5, 0x0088($sp)
    lw      s6, 0x008C($sp)
    lw      s7, 0x0090($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00C8           # $sp = 00000000


func_809C5590:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s2, 0x0038($sp)
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    lui     s0, %hi(var_809C5F88)      # s0 = 809C0000
    lui     s4, %hi(var_809C5F92)      # s4 = 809C0000
    addiu   s4, s4, %lo(var_809C5F92)  # s4 = 809C5F92
    addiu   s0, s0, %lo(var_809C5F88)  # s0 = 809C5F88
    addiu   s1, a0, 0x0024             # s1 = 00000024
    addiu   s3, s2, 0x1C24             # s3 = 00001C24
    lwc1    $f4, 0x0004(s1)            # 00000028
lbl_809C55CC:
    lw      a3, 0x0000(s1)             # 00000024
    lh      t6, 0x0000(s0)             # 809C5F88
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0008(s1)            # 0000002C
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    or      a0, s3, $zero              # a0 = 00001C24
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x00CD          # a2 = 000000CD
    sw      t6, 0x0024($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    beq     v0, $zero, lbl_809C5610
    addiu   s0, s0, 0x0002             # s0 = 809C5F8A
    bnel    s0, s4, lbl_809C55CC
    lwc1    $f4, 0x0004(s1)            # 00000028
lbl_809C5610:
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_809C5630:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f6                   # $f6 = 130.00
    lwc1    $f4, 0x0090(a2)            # 00000090
    lw      a3, 0x1C44(a1)             # 00001C44
    lui     $at, 0x4320                # $at = 43200000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809C5720
    lw      $ra, 0x0014($sp)
    lwc1    $f0, 0x0094(a2)            # 00000094
    mtc1    $at, $f8                   # $f8 = 160.00
    lui     $at, 0xC120                # $at = C1200000
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_809C5720
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f10                  # $f10 = -10.00
    nop
    c.le.s  $f10, $f0
    nop
    bc1fl   lbl_809C5720
    lw      $ra, 0x0014($sp)
    lh      t6, 0x008A(a2)             # 0000008A
    lh      t7, 0x00B6(a2)             # 000000B6
    subu    v0, t6, t7
    bltz    v0, lbl_809C56B0
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_809C56B0
    or      v1, v0, $zero              # v1 = 00000000
lbl_809C56B0:
    addiu   a0, v1, 0xC001             # a0 = FFFFC001
    sll     a0, a0, 16
    sra     a0, a0, 16
    blezl   a0, lbl_809C5720
    lw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    jal     func_800636C4              # sins?
    sw      a3, 0x001C($sp)
    lw      a2, 0x0020($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    lw      a3, 0x001C($sp)
    lwc1    $f16, 0x0090(a2)           # 00000090
    mul.s   $f2, $f0, $f16
    c.le.s  $f18, $f2
    nop
    bc1fl   lbl_809C5720
    lw      $ra, 0x0014($sp)
    lwc1    $f6, 0x014C(a2)            # 0000014C
    lwc1    $f4, 0x0024(a3)            # 00000024
    lwc1    $f16, 0x002C(a3)           # 0000002C
    mul.s   $f8, $f2, $f6
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0024(a3)           # 00000024
    lwc1    $f18, 0x0150(a2)           # 00000150
    mul.s   $f6, $f2, $f18
    add.s   $f4, $f16, $f6
    swc1    $f4, 0x002C(a3)            # 0000002C
    lw      $ra, 0x0014($sp)
lbl_809C5720:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809C572C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     t1, %hi(var_809C5CD4)      # t1 = 809C0000
    addiu   t1, t1, %lo(var_809C5CD4)  # t1 = 809C5CD4
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x0000(t1)             # 809C5CD4
    lw      t6, 0x0024($sp)
    lui     a0, %hi(var_809C5CD0)      # a0 = 809C0000
    blez    v0, lbl_809C5760
    lw      v1, 0x1C44(t6)             # 00001C44
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0000(t1)             # 809C5CD4
lbl_809C5760:
    addiu   a0, a0, %lo(var_809C5CD0)  # a0 = 809C5CD0
    lw      v0, 0x0000(a0)             # 809C5CD0
    beql    v0, $zero, lbl_809C5838
    lw      t4, 0x066C(v1)             # 0000066C
    lw      t8, 0x0130(v0)             # 00000130
    bnel    t8, $zero, lbl_809C5788
    lh      t9, 0x0000(t1)             # 809C5CD4
    beq     $zero, $zero, lbl_809C5874
    sw      $zero, 0x0000(a0)          # 809C5CD0
    lh      t9, 0x0000(t1)             # 809C5CD4
lbl_809C5788:
    lui     $at, 0x44AF                # $at = 44AF0000
    bgtzl   t9, lbl_809C5878
    lw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0028(v0)            # 00000028
    mtc1    $at, $f6                   # $f6 = 1400.00
    lui     $at, %hi(var_809C5FC0)     # $at = 809C0000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809C5878
    lw      $ra, 0x001C($sp)
    lwc1    $f10, %lo(var_809C5FC0)($at)
    lui     $at, %hi(var_809C5FC4)     # $at = 809C0000
    lwc1    $f18, %lo(var_809C5FC4)($at)
    lwc1    $f8, 0x0024(v0)            # 00000024
    lwc1    $f16, 0x002C(v0)           # 0000002C
    add.s   $f12, $f8, $f10
    jal     func_800A5434
    add.s   $f14, $f16, $f18
    lui     $at, %hi(var_809C5FC8)     # $at = 809C0000
    lwc1    $f4, %lo(var_809C5FC8)($at)
    lui     a0, %hi(var_809C5CD0)      # a0 = 809C0000
    lui     t1, %hi(var_809C5CD4)      # t1 = 809C0000
    c.lt.s  $f0, $f4
    addiu   t1, t1, %lo(var_809C5CD4)  # t1 = 809C5CD4
    addiu   a0, a0, %lo(var_809C5CD0)  # a0 = 809C5CD0
    bc1fl   lbl_809C5878
    lw      $ra, 0x001C($sp)
    lw      v0, 0x0000(a0)             # 809C5CD0
    lh      t2, 0x001C(v0)             # 0000001C
    bnel    t2, $zero, lbl_809C5878
    lw      $ra, 0x001C($sp)
    lh      t0, 0x01E8(v0)             # 000001E8
    addiu   a1, $zero, 0x1054          # a1 = 00001054
    or      a3, $zero, $zero           # a3 = 00000000
    blez    t0, lbl_809C5874
    addiu   t3, t0, 0x0014             # t3 = 00000014
    sh      t3, 0x0000(t1)             # 809C5CD4
    lh      a2, 0x0000(t1)             # 809C5CD4
    lw      a0, 0x0024($sp)
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    beq     $zero, $zero, lbl_809C5878
    lw      $ra, 0x001C($sp)
    lw      t4, 0x066C(v1)             # 0000066C
lbl_809C5838:
    andi    t5, t4, 0x0800             # t5 = 00000000
    beql    t5, $zero, lbl_809C5878
    lw      $ra, 0x001C($sp)
    lw      v0, 0x039C(v1)             # 0000039C
    beql    v0, $zero, lbl_809C5878
    lw      $ra, 0x001C($sp)
    lbu     t6, 0x0002(v0)             # 00000002
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t6, $at, lbl_809C5878
    lw      $ra, 0x001C($sp)
    lh      t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    bnel    t7, $at, lbl_809C5878
    lw      $ra, 0x001C($sp)
    sw      v0, 0x0000(a0)             # 00000000
lbl_809C5874:
    lw      $ra, 0x001C($sp)
lbl_809C5878:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809C5884:
    lui     t6, %hi(func_809C5BCC)     # t6 = 809C0000
    lui     t7, %hi(func_809C58A4)     # t7 = 809C0000
    addiu   t6, t6, %lo(func_809C5BCC) # t6 = 809C5BCC
    addiu   t7, t7, %lo(func_809C58A4) # t7 = 809C58A4
    sw      t6, 0x0134(a0)             # 00000134
    sw      t7, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_809C58A4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809C5630
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809C572C
    or      a1, s0, $zero              # a1 = 00000000
    lbu     v0, 0x01C5(s1)             # 000001C5
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_809C5948
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x01C5(s1)             # 000001C5
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809C5590
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x1054          # a1 = 00001054
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800204D0
    lh      a1, 0x0146(s1)             # 00000146
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0ED8(v0)             # 8011B4A8
    or      a0, s1, $zero              # a0 = 00000000
    ori     t9, t8, 0x0008             # t9 = 00000008
    jal     func_809C5990
    sh      t9, 0x0ED8(v0)             # 8011B4A8
    beq     $zero, $zero, lbl_809C5980
    lw      $ra, 0x0024($sp)
lbl_809C5948:
    addu    a1, s0, $at
    sw      a1, 0x0030($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s1, 0x01B4             # a2 = 000001B4
    addiu   a2, s1, 0x0154             # a2 = 00000154
    sw      a2, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a1, 0x0030($sp)
    lw      a2, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a1, 0x0030($sp)
    lw      $ra, 0x0024($sp)
lbl_809C5980:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_809C5990:
    lui     t6, %hi(func_809C59B0)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809C59B0) # t6 = 809C59B0
    sh      $zero, 0x0144(a0)          # 00000144
    sh      $zero, 0x0148(a0)          # 00000148
    sw      $zero, 0x0134(a0)          # 00000134
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_809C59B0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_809C51B0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   $at, $zero, 0x0038         # $at = 00000038
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    lh      v0, 0x0144(a2)             # 00000144
    bnel    v0, $at, lbl_809C59F4
    slti    $at, v0, 0x003D
    jal     func_800646F0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lh      v0, 0x0144(a2)             # 00000144
    slti    $at, v0, 0x003D
lbl_809C59F4:
    bnel    $at, $zero, lbl_809C5A08
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_809C5A08:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809C5A14:
    lui     t6, %hi(func_809C5A2C)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809C5A2C) # t6 = 809C5A2C
    sw      t6, 0x013C(a0)             # 0000013C
    sw      $zero, 0x0134(a0)          # 00000134
    jr      $ra
    nop


func_809C5A2C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at
    jal     func_80081688
    lb      a1, 0x0204(t6)             # 00000204
    beql    v0, $zero, lbl_809C5A78
    lw      $ra, 0x0014($sp)
    jal     func_809C5A84
    lw      a0, 0x0018($sp)
    lw      t8, 0x0018($sp)
    lui     t7, %hi(func_809C5BCC)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809C5BCC) # t7 = 809C5BCC
    sw      t7, 0x0134(t8)             # 00000134
    lw      $ra, 0x0014($sp)
lbl_809C5A78:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809C5A84:
    lui     t6, %hi(func_809C5A9C)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809C5A9C) # t6 = 809C5A9C
    sh      $zero, 0x0144(a0)          # 00000144
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_809C5A9C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x00B4(s0)             # 000000B4
    lh      t7, 0x0200(s0)             # 00000200
    lh      t9, 0x00B8(s0)             # 000000B8
    lh      t0, 0x0202(s0)             # 00000202
    lh      t2, 0x0144(s0)             # 00000144
    addu    t8, t6, t7
    addu    t1, t9, t0
    slti    $at, t2, 0x003D
    sh      t8, 0x00B4(s0)             # 000000B4
    bne     $at, $zero, lbl_809C5AF4
    sh      t1, 0x00B8(s0)             # 000000B8
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809C5B88
    lw      $ra, 0x0024($sp)
lbl_809C5AF4:
    lhu     v0, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    andi    t3, v0, 0x0008             # t3 = 00000000
    bne     t3, $zero, lbl_809C5B2C
    andi    t4, v0, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_809C5B64
    or      a1, s0, $zero              # a1 = 00000000
    lwc1    $f4, 0x0060(s0)            # 00000060
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809C5B68
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_809C5B2C:
    jal     func_809C5318
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C5114
    lw      a1, 0x002C($sp)
    lw      a0, 0x002C($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8
    addiu   a3, $zero, 0x2852          # a3 = 00002852
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809C5B88
    lw      $ra, 0x0024($sp)
lbl_809C5B64:
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_809C5B68:
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    sw      t5, 0x0014($sp)
    lw      a0, 0x002C($sp)
    lui     a2, 0x418C                 # a2 = 418C0000
    lui     a3, 0x420C                 # a3 = 420C0000
    jal     func_80021E6C
    swc1    $f8, 0x0010($sp)
    lw      $ra, 0x0024($sp)
lbl_809C5B88:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809C5B98:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      t6, 0x0144(a0)             # 00000144
    lw      v0, 0x013C(a0)             # 0000013C
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     v0, $zero, lbl_809C5BBC
    sh      t7, 0x0144(a0)             # 00000144
    jalr    $ra, v0
    nop
lbl_809C5BBC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809C5BCC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0034($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0034($sp)
    lw      a0, 0x0000(t6)             # 00000000
    sw      a2, 0x0030($sp)
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      v1, 0x0024($sp)
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0034($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v0, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      v1, 0x0024($sp)
    lw      a2, 0x0030($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lh      t0, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    t0, $at, lbl_809C5C64
    lw      v0, 0x02C0(v1)             # 000002C0
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(v1)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t3, 0x0140(a2)             # 00000140
    sw      t3, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_809C5CC0
    lw      $ra, 0x0014($sp)
    lw      v0, 0x02C0(v1)             # 000002C0
lbl_809C5C64:
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0018             # t5 = DB060018
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0000(v0)             # 00000000
    lb      t7, 0x0204(a2)             # 00000204
    lw      t6, 0x0034($sp)
    lui     t0, 0x0001                 # t0 = 00010000
    sll     t8, t7,  4
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, t6, t8
    addu    t0, t0, t9
    lw      t0, 0x17B4(t0)             # 000117B4
    sw      t0, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(v1)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t3, 0x0140(a2)             # 00000140
    sw      t3, 0x0004(v0)             # 00000004
    lw      $ra, 0x0014($sp)
lbl_809C5CC0:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop
    nop

.section .data

var_809C5CD0: .word 0x00000000
var_809C5CD4: .word 0x00000000
var_809C5CD8: .word \
0x00080004, 0x004607D0, 0xFCE00000, 0x00640000, \
0x00000000, 0x00060003, 0x003200C8, 0x0A28C350, \
0x005A0000, 0x00000000, 0x00050003, 0x0028F63C, \
0x019030B0, 0x00320000, 0x00000000, 0x00030001, \
0x003C0258, 0xFF9CAFC8, 0x00320000, 0x00000000, \
0x00030001, 0x0028F2B8, 0xFF9C6590, 0x001E0000, \
0x00000000, 0x00060009, 0x00280000, 0x0BB8D8F0, \
0x001E0000, 0x00000000
var_809C5D50: .word \
0x00000000, 0x00000000, 0x00000000, 0x4FC1FFF6, \
0x00000000, 0x00010100, 0x00000000, 0x00320000, \
0x01200064
var_809C5D74: .word 0x0C000D39, 0x20000000, 0x00000001
.word var_809C5D50
var_809C5D84: .word \
0x0A000900, 0x00010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000008, 0x00000000, 0x00010000, \
0x00BE0050, 0x0000000A, 0x00000032
var_809C5DB0: .word \
0x0000000A, 0x003CFFF6, 0x010401E0, 0x00070000, \
0x00000032, 0x00000104, 0x017C000D, 0x0001001E, \
0x00140014, 0x00A00104, 0x000A0002, 0x00140028, \
0x001400C8, 0x00960007, 0x0003FFD8, 0x0064001E, \
0x00D20064, 0x00070004, 0x000A0078, 0x000A00A0, \
0x0028000A, 0x0005FFA7, 0x006E0041, 0x00960118, \
0x00070006, 0xFFC40070, 0x006D006E, 0x00820007, \
0x0007FFF2, 0x0050007F, 0x008C00D2, 0x00070008, \
0x00140032, 0x001E008C, 0x00C80007, 0x0009FFEC, \
0x00140028, 0x00C800B4, 0x0007000A, 0x001E0028, \
0xFFE20064, 0x00780007, 0x000AFF92, 0x001D0078, \
0x008C0118, 0x000A000B, 0x001E0014, 0x001E0050, \
0x00C80006, 0x000C0028, 0x001EFFE2, 0x00AA010E, \
0x0011000D, 0xFFD80032, 0xFFEC008C, 0x00560006, \
0x000D0032, 0x00320032, 0x009600C8, 0x000A000E, \
0x00280028, 0xFFD8003C, 0x00A00006, 0x000FFFE2, \
0x00140032, 0x00AA012C, 0x00060010, 0x00280032, \
0x001400AA, 0x00780007, 0x0010001E, 0x0032003C, \
0x009600C8, 0x00060011, 0x000A000A, 0x00000082, \
0x00DC0006, 0x0012000A, 0x00280014, 0x00B400DC, \
0x000B0013, 0x000A0005, 0x0000006E, 0x00460011, \
0x0013FFEC, 0x0032FFE2, 0x009600C8, 0x00060014, \
0x00500032, 0x00000096, 0x00C80008
var_809C5F1C: .word 0x00CD0600, 0x00000010, 0x00C20000, 0x00000208
.word func_809C5014
.word func_809C50C8
.word func_809C5B98
.word func_809C5BCC
var_809C5F3C: .word 0xB0F407D0, 0xB0F801F4, 0x30FC03E8
var_809C5F48: .word \
0xB06CFFFF, 0xB070FFF6, 0xB0F403E8, 0xB0F800C8, \
0x30FC03E8
var_809C5F5C: .word 0x00000000, 0x00000000, 0x00000000
var_809C5F68: .word 0x00000000, 0x3ECCCCCD, 0x00000000
var_809C5F74: .word \
0x42840000, 0x424C0000, 0x42400000, 0x42100000, \
0x41A80000
var_809C5F88: .byte 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04
var_809C5F92: .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

.section .rodata

var_809C5FA0: .word 0x3ADA740E
var_809C5FA4: .word var_809C5094
.word var_809C5094
.word var_809C5094
.word var_809C5094
.word var_809C5094
.word var_809C5094
var_809C5FBC: .word 0x3FA66666
var_809C5FC0: .word 0x44C56000
var_809C5FC4: .word 0x44458000
var_809C5FC8: .word 0x481C4000, 0x00000000

