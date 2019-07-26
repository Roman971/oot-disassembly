.section .text
func_80954F50:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x04B2(s0)             # 000004B2
    beql    t6, $zero, lbl_80954F7C
    lwc1    $f4, 0x04C0(s0)            # 000004C0
    b       lbl_80955034
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f4, 0x04C0(s0)            # 000004C0
lbl_80954F7C:
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x04C4(s0)            # 000004C4
    addiu   a3, $zero, 0x00AB          # a3 = 000000AB
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x04C8(s0)            # 000004C8
    sw      $zero, 0x001C($sp)
    swc1    $f8, 0x0018($sp)
    lh      t7, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0024($sp)
    sw      t7, 0x0020($sp)
    lh      t8, 0x04AA(s0)             # 000004AA
    sw      a2, 0x0044($sp)
    jal     func_800253F0
    sw      t8, 0x0028($sp)
    bnel    v0, $zero, lbl_80954FD0
    lbu     t9, 0x00AF(s0)             # 000000AF
    b       lbl_80955034
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t9, 0x00AF(s0)             # 000000AF
lbl_80954FD0:
    lw      t1, 0x011C(s0)             # 0000011C
    addiu   t3, $zero, 0x0008          # t3 = 00000008
    bgez    t9, lbl_80954FEC
    andi    t0, t9, 0x0007             # t0 = 00000000
    beq     t0, $zero, lbl_80954FEC
    nop
    addiu   t0, t0, 0xFFF8             # t0 = FFFFFFF8
lbl_80954FEC:
    sb      t0, 0x00AF(t1)             # 000000AF
    lw      v0, 0x011C(s0)             # 0000011C
    or      a1, s0, $zero              # a1 = 00000000
    lbu     t2, 0x00AF(v0)             # 000000AF
    bnel    t2, $zero, lbl_8095500C
    lw      t4, 0x0004(s0)             # 00000004
    sb      t3, 0x00AF(v0)             # 000000AF
    lw      t4, 0x0004(s0)             # 00000004
lbl_8095500C:
    addiu   $at, $zero, 0x2000         # $at = 00002000
    lw      a0, 0x0044($sp)
    andi    t5, t4, 0x2000             # t5 = 00000000
    bnel    t5, $at, lbl_8095502C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    jal     func_80021790
    lw      a2, 0x011C(s0)             # 0000011C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
lbl_8095502C:
    sb      t6, 0x04A4(s0)             # 000004A4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80955034:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80955048:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s2, 0x0054($sp)
    sw      a3, 0x0074($sp)
    sll     a3, a3, 16
    sll     s2, a2, 16
    sw      s3, 0x0058($sp)
    sw      s1, 0x0050($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sra     s2, s2, 16
    sra     a3, a3, 16
    sw      $ra, 0x0064($sp)
    sw      s5, 0x0060($sp)
    sw      s4, 0x005C($sp)
    sw      s0, 0x004C($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    sw      a2, 0x0070($sp)
    blez    s2, lbl_80955138
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, %hi(var_80957940)     # $at = 80950000
    mtc1    s2, $f4                    # $f4 = 0.00
    lwc1    $f24, %lo(var_80957940)($at)
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f22                  # $f22 = 360.00
    addiu   s4, s3, 0x1C24             # s4 = 00001C24
    sll     s5, a3, 15
    cvt.s.w $f20, $f4
    mtc1    s0, $f6                    # $f6 = 0.00
lbl_809550C0:
    lh      t0, 0x008A(s1)             # 0000008A
    or      t1, s5, s0                 # t1 = 00000000
    cvt.s.w $f8, $f6
    lwc1    $f6, 0x0024(s1)            # 00000024
    or      a0, s4, $zero              # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f6, 0x0010($sp)
    or      a2, s3, $zero              # a2 = 00000000
    mul.s   $f10, $f8, $f22
    lwc1    $f8, 0x0028(s1)            # 00000028
    addiu   a3, $zero, 0x00A3          # a3 = 000000A3
    swc1    $f8, 0x0014($sp)
    div.s   $f16, $f10, $f20
    lwc1    $f10, 0x002C(s1)           # 0000002C
    sw      t1, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    swc1    $f10, 0x0018($sp)
    mul.s   $f18, $f16, $f24
    trunc.w.s $f4, $f18
    mfc1    t9, $f4
    nop
    addu    v0, t9, t0
    sll     v0, v0, 16
    sra     v0, v0, 16
    jal     func_800253F0
    sw      v0, 0x0020($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s2, lbl_809550C0
    mtc1    s0, $f6                    # $f6 = 0.00
lbl_80955138:
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    ldc1    $f24, 0x0040($sp)
    lw      s0, 0x004C($sp)
    lw      s1, 0x0050($sp)
    lw      s2, 0x0054($sp)
    lw      s3, 0x0058($sp)
    lw      s4, 0x005C($sp)
    lw      s5, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_80955168:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0054($sp)
    lui     t7, %hi(var_80957884)      # t7 = 80950000
    addiu   t7, t7, %lo(var_80957884)  # t7 = 80957884
    lw      t9, 0x0000(t7)             # 80957884
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80957888
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 8095788C
    lui     t1, %hi(var_80957890)      # t1 = 80950000
    addiu   t1, t1, %lo(var_80957890)  # t1 = 80957890
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t3, 0x0000(t1)             # 80957890
    addiu   t0, $sp, 0x0038            # t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             # 80957894
    sw      t3, 0x0000(t0)             # FFFFFFE8
    lw      t3, 0x0008(t1)             # 80957898
    lui     t5, %hi(var_8095789C)      # t5 = 80950000
    addiu   t5, t5, %lo(var_8095789C)  # t5 = 8095789C
    sw      t2, 0x0004(t0)             # FFFFFFEC
    sw      t3, 0x0008(t0)             # FFFFFFF0
    lw      t7, 0x0000(t5)             # 8095789C
    addiu   t4, $sp, 0x002C            # t4 = FFFFFFDC
    lw      t6, 0x0004(t5)             # 809578A0
    sw      t7, 0x0000(t4)             # FFFFFFDC
    lw      t7, 0x0008(t5)             # 809578A4
    sw      t6, 0x0004(t4)             # FFFFFFE0
    lui     t8, %hi(func_809560A0)     # t8 = 80950000
    sw      t7, 0x0008(t4)             # FFFFFFE4
    lw      v0, 0x0180(a0)             # 00000180
    addiu   t8, t8, %lo(func_809560A0) # t8 = 809560A0
    lui     t9, %hi(func_80955E80)     # t9 = 80950000
    beq     t8, v0, lbl_80955200
    addiu   t9, t9, %lo(func_80955E80) # t9 = 80955E80
    bnel    t9, v0, lbl_809552C8
    lw      $ra, 0x0024($sp)
lbl_80955200:
    lwc1    $f4, 0x0024(a0)            # 00000024
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    swc1    $f4, 0x0044($sp)
    lwc1    $f6, 0x0080(a0)            # 00000080
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0048($sp)
    lwc1    $f16, 0x002C(a0)           # 0000002C
    sw      a0, 0x0050($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x004C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    nop
    sub.s   $f2, $f0, $f18
    add.s   $f4, $f2, $f2
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x002C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, %hi(var_80957944)     # $at = 80950000
    lwc1    $f10, %lo(var_80957944)($at)
    sub.s   $f8, $f0, $f6
    lui     $at, %hi(var_80957948)     # $at = 80950000
    lwc1    $f18, %lo(var_80957948)($at)
    mul.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0030($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, %hi(var_8095794C)     # $at = 80950000
    lwc1    $f10, %lo(var_8095794C)($at)
    sub.s   $f2, $f0, $f6
    lui     $at, %hi(var_80957950)     # $at = 80950000
    lwc1    $f16, %lo(var_80957950)($at)
    addiu   t0, $sp, 0x002C            # t0 = FFFFFFDC
    add.s   $f8, $f2, $f2
    addiu   t1, $zero, 0x0008          # t1 = 00000008
    lw      a0, 0x0050($sp)
    sw      t1, 0x0014($sp)
    swc1    $f8, 0x0034($sp)
    sw      t0, 0x0010($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFF4
    addiu   a3, $sp, 0x0038            # a3 = FFFFFFE8
    swc1    $f10, 0x0018($sp)
    jal     func_80956CA8
    swc1    $f16, 0x001C($sp)
    lw      $ra, 0x0024($sp)
lbl_809552C8:
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_809552D4:
    lw      v0, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_80955BC0)     # t6 = 80950000
    addiu   t6, t6, %lo(func_80955BC0) # t6 = 80955BC0
    beq     t6, v0, lbl_8095530C
    lui     t7, %hi(func_80955C50)     # t7 = 80950000
    addiu   t7, t7, %lo(func_80955C50) # t7 = 80955C50
    beq     t7, v0, lbl_8095530C
    lui     t8, %hi(func_80955D24)     # t8 = 80950000
    addiu   t8, t8, %lo(func_80955D24) # t8 = 80955D24
    beq     t8, v0, lbl_8095530C
    lui     t9, %hi(func_80956300)     # t9 = 80950000
    addiu   t9, t9, %lo(func_80956300) # t9 = 80956300
    bnel    t9, v0, lbl_80955318
    lbu     t0, 0x1C26(a1)             # 00001C26
lbl_8095530C:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80955314:
    lbu     t0, 0x1C26(a1)             # 00001C26
lbl_80955318:
    lui     $at, 0x4396                # $at = 43960000
    or      v0, $zero, $zero           # v0 = 00000000
    beq     t0, $zero, lbl_80955368
    nop
    lwc1    $f4, 0x0090(a0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 300.00
    lui     $at, 0x4270                # $at = 42700000
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_80955368
    nop
    lwc1    $f8, 0x0094(a0)            # 00000094
    mtc1    $at, $f10                  # $f10 = 60.00
    nop
    c.lt.s  $f8, $f10
    nop
    bc1f    lbl_80955368
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80955368:
    jr      $ra
    nop


func_80955370:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lbu     v0, 0x0195(s0)             # 00000195
    lw      t6, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, v0, 0x0002             # t7 = 00000000
    bne     t7, $zero, lbl_809553B4
    lw      a2, 0x1C44(t6)             # 00001C44
    or      a1, t6, $zero              # a1 = 00000000
    jal     func_809552D4
    sw      a2, 0x002C($sp)
    beq     v0, $zero, lbl_80955448
    lw      a2, 0x002C($sp)
    lbu     v0, 0x0195(s0)             # 00000195
lbl_809553B4:
    lh      t9, 0x04B2(s0)             # 000004B2
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    sb      t8, 0x0195(s0)             # 00000195
    beql    t9, $zero, lbl_809553D4
    lw      v0, 0x01A0(s0)             # 000001A0
    b       lbl_809554F4
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v0, 0x01A0(s0)             # 000001A0
lbl_809553D4:
    or      a0, s0, $zero              # a0 = 00000000
    lw      v1, 0x0024(v0)             # 00000024
    beq     v1, $zero, lbl_809553FC
    nop
    lw      t0, 0x0000(v1)             # 00000000
    andi    t1, t0, 0x0080             # t1 = 00000000
    beq     t1, $zero, lbl_809553FC
    nop
    b       lbl_809554F4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809553FC:
    jal     func_80954F50
    lw      a1, 0x0034($sp)
    bne     v0, $zero, lbl_80955414
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    b       lbl_809554F4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80955414:
    lw      t3, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sh      t2, 0x04B2(s0)             # 000004B2
    and     t4, t3, $at
    sw      t4, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x397A          # a1 = 0000397A
    lw      a0, 0x0034($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_809554F4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80955448:
    lh      v0, 0x04B4(s0)             # 000004B4
    bne     v0, $zero, lbl_8095545C
    addiu   t5, v0, 0xFFFF             # t5 = 00000000
    b       lbl_80955464
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8095545C:
    sh      t5, 0x04B4(s0)             # 000004B4
    lh      v1, 0x04B4(s0)             # 000004B4
lbl_80955464:
    bnel    v1, $zero, lbl_809554F4
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     v0, 0x0194(s0)             # 00000194
    andi    t7, v0, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_809554F4
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t8, 0x04B2(s0)             # 000004B2
    andi    t6, v0, 0xFFFD             # t6 = 00000000
    sb      t6, 0x0194(s0)             # 00000194
    beql    t8, $zero, lbl_8095549C
    lbu     t9, 0x0194(s0)             # 00000194
    b       lbl_809554F4
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t9, 0x0194(s0)             # 00000194
lbl_8095549C:
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    or      a0, a2, $zero              # a0 = 00000000
    andi    t0, t9, 0x0004             # t0 = 00000000
    beq     t0, $zero, lbl_809554B8
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    b       lbl_809554F4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809554B8:
    jal     func_80022FD0
    sh      t1, 0x04B4(s0)             # 000004B4
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lwc1    $f4, 0x0068(s0)            # 00000068
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f10                  # $f10 = 6.00
    add.s   $f8, $f4, $f6
    lh      a3, 0x008A(s0)             # 0000008A
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    mfc1    a2, $f8
    jal     func_80022EC4
    swc1    $f10, 0x0010($sp)
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809554F4:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80955508:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0058($sp)
    sw      a2, 0x0060($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      a0, 0x0058($sp)
    addiu   a1, a3, 0x0024             # a1 = 00000024
    sw      a1, 0x0030($sp)
    addiu   a0, a0, 0x0024             # a0 = 00000024
    jal     func_80063E18
    sw      a0, 0x0034($sp)
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f4                   # $f4 = 400.00
    lw      a0, 0x0034($sp)
    c.lt.s  $f4, $f0
    nop
    bc1f    lbl_80955558
    nop
    b       lbl_80955608
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80955558:
    jal     func_80063F00
    lw      a1, 0x0030($sp)
    lw      t6, 0x0058($sp)
    mtc1    v0, $f6                    # $f6 = 0.00
    lw      a0, 0x0060($sp)
    lh      t7, 0x00B6(t6)             # 000000B6
    cvt.s.w $f8, $f6
    lw      a1, 0x0034($sp)
    mtc1    t7, $f10                   # $f10 = 0.00
    lw      a2, 0x0030($sp)
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFEC
    cvt.s.w $f16, $f10
    addiu   t9, $sp, 0x0054            # t9 = FFFFFFFC
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $sp, 0x0050            # t2 = FFFFFFF8
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    sub.s   $f18, $f8, $f16
    trunc.w.s $f4, $f18
    mfc1    v1, $f4
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    bltz    v1, lbl_809555C4
    subu    v0, $zero, v1
    b       lbl_809555C4
    or      v0, v1, $zero              # v0 = 00000000
lbl_809555C4:
    slti    $at, v0, 0x1C71
    bnel    $at, $zero, lbl_809555DC
    sw      t9, 0x0010($sp)
    b       lbl_80955608
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t9, 0x0010($sp)
lbl_809555DC:
    sw      t0, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      t1, 0x0020($sp)
    jal     func_800308B4
    sw      t2, 0x0024($sp)
    beql    v0, $zero, lbl_80955608
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    b       lbl_80955608
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80955608:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80955618:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s0, 0x0018($sp)
    lw      s0, 0x1C4C(s1)             # 00001C4C
    addiu   s4, $zero, 0x0001          # s4 = 00000001
    addiu   s3, $zero, 0x0010          # s3 = 00000010
    beql    s0, $zero, lbl_809556B8
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
lbl_80955654:
    bne     t6, $zero, lbl_80955668
    nop
    lw      t7, 0x0118(s0)             # 00000118
    beql    t7, $zero, lbl_80955674
    lh      t8, 0x0000(s0)             # 00000000
lbl_80955668:
    b       lbl_809556AC
    lw      s0, 0x0124(s0)             # 00000124
    lh      t8, 0x0000(s0)             # 00000000
lbl_80955674:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    beq     s3, t8, lbl_8095568C
    nop
    b       lbl_809556AC
    lw      s0, 0x0124(s0)             # 00000124
lbl_8095568C:
    jal     func_80955508
    or      a2, s1, $zero              # a2 = 00000000
    beq     v0, s4, lbl_809556A4
    nop
    b       lbl_809556AC
    lw      s0, 0x0124(s0)             # 00000124
lbl_809556A4:
    b       lbl_809556B8
    or      v0, s0, $zero              # v0 = 00000000
lbl_809556AC:
    bnel    s0, $zero, lbl_80955654
    lh      t6, 0x001C(s0)             # 0000001C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809556B8:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_809556D8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a2, $zero              # a1 = 00000000
    sw      a0, 0x0020($sp)
    jal     func_80955618
    sw      a2, 0x0024($sp)
    lw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80955708
    lw      a2, 0x0024($sp)
    b       lbl_80955740
    lw      $ra, 0x0014($sp)
lbl_80955708:
    lh      t6, 0x04B4(a0)             # 000004B4
    beql    t6, $zero, lbl_80955720
    lw      a1, 0x1C44(a2)             # 00001C44
    b       lbl_8095573C
    or      v0, $zero, $zero           # v0 = 00000000
    lw      a1, 0x1C44(a2)             # 00001C44
lbl_80955720:
    jal     func_80955508
    sw      a1, 0x001C($sp)
    bne     v0, $zero, lbl_80955738
    lw      a1, 0x001C($sp)
    b       lbl_8095573C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80955738:
    or      v0, a1, $zero              # v0 = 00000000
lbl_8095573C:
    lw      $ra, 0x0014($sp)
lbl_80955740:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8095574C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   a0, s0, 0x0008             # a0 = 00000008
    jal     func_80063F00
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lh      t6, 0x0046($sp)
    addiu   $at, $zero, 0x1554         # $at = 00001554
    multu   t6, $at
    mflo    t7
    addu    v1, v0, t7
    sll     a0, v1, 16
    sh      v1, 0x0036($sp)
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lwc1    $f4, 0x0040($sp)
    lwc1    $f8, 0x0008(s0)            # 00000008
    lh      a0, 0x0036($sp)
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x0028($sp)
    lwc1    $f16, 0x0040($sp)
    lwc1    $f4, 0x0010(s0)            # 00000010
    lwc1    $f8, 0x0028($sp)
    mul.s   $f18, $f0, $f16
    addiu   t8, $sp, 0x0028            # t8 = FFFFFFF0
    lw      v0, 0x0038($sp)
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0030($sp)
    lwc1    $f10, 0x0024(s0)           # 00000024
    sub.s   $f16, $f8, $f10
    swc1    $f16, 0x0028($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sub.s   $f4, $f6, $f18
    swc1    $f4, 0x0030($sp)
    lw      t0, 0x0000(t8)             # FFFFFFF0
    sw      t0, 0x0000(v0)             # 00000000
    lw      t9, 0x0004(t8)             # FFFFFFF4
    sw      t9, 0x0004(v0)             # 00000004
    lw      t0, 0x0008(t8)             # FFFFFFF8
    sw      t0, 0x0008(v0)             # 00000008
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80955814:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    mtc1    a2, $f12                   # $f12 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a3, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0064($sp)
    mfc1    a2, $f12
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFE0
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8095574C
    lh      a3, 0x0000(s1)             # 00000000
    lwc1    $f4, 0x0040($sp)
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f16, 0x0048($sp)
    lw      a0, 0x0064($sp)
    add.s   $f8, $f4, $f6
    addiu   t6, $sp, 0x005C            # t6 = FFFFFFFC
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    swc1    $f8, 0x0040($sp)
    lwc1    $f10, 0x0028(s0)           # 00000028
    addiu   t9, $sp, 0x0058            # t9 = FFFFFFF8
    addiu   a1, s0, 0x0024             # a1 = 00000024
    swc1    $f10, 0x0044($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sw      t9, 0x0024($sp)
    sw      t8, 0x0020($sp)
    add.s   $f4, $f16, $f18
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      t7, 0x0014($sp)
    swc1    $f4, 0x0048($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFEC
    jal     func_800308B4
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    beql    v0, $zero, lbl_809558D0
    lh      t2, 0x04B0(s0)             # 000004B0
    lh      t0, 0x0000(s1)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    subu    t1, $zero, t0
    b       lbl_80955934
    sh      t1, 0x0000(s1)             # 00000000
    lh      t2, 0x04B0(s0)             # 000004B0
lbl_809558D0:
    bne     t2, $zero, lbl_809558FC
    nop
    lh      v0, 0x04AE(s0)             # 000004AE
    bne     v0, $zero, lbl_809558EC
    addiu   t3, v0, 0xFFFF             # t3 = 00000000
    b       lbl_809558F4
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809558EC:
    sh      t3, 0x04AE(s0)             # 000004AE
    lh      v1, 0x04AE(s0)             # 000004AE
lbl_809558F4:
    beq     v1, $zero, lbl_80955904
    nop
lbl_809558FC:
    b       lbl_80955934
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80955904:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    c.lt.s  $f6, $f0
    nop
    bc1f    lbl_80955934
    nop
    lh      t4, 0x0000(s1)             # 00000000
    subu    t5, $zero, t4
    sh      t5, 0x0000(s1)             # 00000000
lbl_80955934:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_80955948:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x04B2(s0)             # 000004B2
    addiu   a0, s0, 0x04BC             # a0 = 000004BC
    lui     a2, 0x3E99                 # a2 = 3E990000
    beql    t6, $zero, lbl_80955A48
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lui     a3, 0x4120                 # a3 = 41200000
    mfc1    a1, $f0
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    cfc1    t7, $f31
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    ctc1    t8, $f31
    lwc1    $f0, 0x04BC(s0)            # 000004BC
    lui     t9, %hi(func_80956300)     # t9 = 80950000
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f4, $f0
    addiu   t9, t9, %lo(func_80956300) # t9 = 80956300
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_80955A04
    mfc1    t8, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f4, $f0, $f4
    ctc1    t8, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_809559F8
    nop
    mfc1    t8, $f4
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80955A10
    or      t8, t8, $at                # t8 = 80000000
lbl_809559F8:
    b       lbl_80955A10
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f4
lbl_80955A04:
    nop
    bltz    t8, lbl_809559F8
    nop
lbl_80955A10:
    sb      t8, 0x00C8(s0)             # 000000C8
    lui     $at, %hi(var_80957954)     # $at = 80950000
    ctc1    t7, $f31
    lwc1    $f6, %lo(var_80957954)($at)
    c.le.s  $f6, $f0
    nop
    bc1tl   lbl_80955A48
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      $zero, 0x04B2(s0)          # 000004B2
    sh      $zero, 0x04AE(s0)          # 000004AE
    sw      t9, 0x0180(s0)             # 00000180
    swc1    $f8, 0x0068(s0)            # 00000068
    lw      $ra, 0x0024($sp)
lbl_80955A48:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80955A58:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   t6, s0, 0x04CC             # t6 = 000004CC
    addiu   t7, s0, 0x056E             # t7 = 0000056E
    addiu   t8, $zero, 0x001B          # t8 = 0000001B
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, a2, 0x5810             # a2 = 06005810
    lw      a0, 0x0044($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4200                 # a3 = 42000000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0034($sp)
    jal     func_8004A484
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_809577F0)      # a3 = 80950000
    addiu   t9, s0, 0x01A4             # t9 = 000001A4
    lw      a1, 0x0034($sp)
    sw      t9, 0x0010($sp)
    addiu   a3, a3, %lo(var_809577F0)  # a3 = 809577F0
    lw      a0, 0x0044($sp)
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80049E10
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    lui     a2, %hi(var_80957800)      # a2 = 80950000
    addiu   a2, a2, %lo(var_80957800)  # a2 = 80957800
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, v0, $zero              # a1 = 00000000
    lw      t0, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     a1, 0x3C23                 # a1 = 3C230000
    and     t1, t0, $at
    lui     $at, 0x0100                # $at = 01000000
    sw      t1, 0x0004(s0)             # 00000004
    or      t3, t1, $at                # t3 = 01000000
    sw      t3, 0x0004(s0)             # 00000004
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sh      t4, 0x04AC(s0)             # 000004AC
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x006C(s0)            # 0000006C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     t8, %hi(func_80955BC0)     # t8 = 80950000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    c.lt.s  $f0, $f6
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    addiu   t7, $zero, 0x0022          # t7 = 00000022
    addiu   t8, t8, %lo(func_80955BC0) # t8 = 80955BC0
    bc1fl   lbl_80955B78
    sh      t6, 0x04AA(s0)             # 000004AA
    b       lbl_80955B78
    sh      t5, 0x04AA(s0)             # 000004AA
    sh      t6, 0x04AA(s0)             # 000004AA
lbl_80955B78:
    sb      t7, 0x0117(s0)             # 00000117
    sw      t8, 0x0180(s0)             # 00000180
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80955B94:
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


func_80955BC0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t7, 0x0008(a3)             # 00000008
    lui     $at, 0x437F                # $at = 437F0000
    lw      t6, 0x000C(a3)             # 0000000C
    sw      t7, 0x0024(a3)             # 00000024
    lw      t7, 0x0010(a3)             # 00000010
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 255.00
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sh      $zero, 0x001C(a3)          # 0000001C
    sb      t8, 0x00C8(a3)             # 000000C8
    sb      $zero, 0x04A4(a3)          # 000004A4
    lui     a1, %hi(var_8095780C)      # a1 = 80950000
    sw      t6, 0x0028(a3)             # 00000028
    sw      t7, 0x002C(a3)             # 0000002C
    swc1    $f4, 0x0054(a3)            # 00000054
    swc1    $f6, 0x04BC(a3)            # 000004BC
    sw      a3, 0x0018($sp)
    addiu   a1, a1, %lo(var_8095780C)  # a1 = 8095780C
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3981          # a1 = 00003981
    lw      a3, 0x0018($sp)
    lui     t9, %hi(func_80955C50)     # t9 = 80950000
    addiu   t9, t9, %lo(func_80955C50) # t9 = 80955C50
    sw      t9, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80955C50:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lw      a1, 0x014C(a3)             # 0000014C
    sw      a3, 0x0020($sp)
    jal     func_8008D6A8
    sw      a0, 0x001C($sp)
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80955CE4
    lw      a3, 0x0020($sp)
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lui     $at, %hi(var_80957958)     # $at = 80950000
    lh      t6, 0x0032(a3)             # 00000032
    swc1    $f4, 0x0060(a3)            # 00000060
    lwc1    $f6, %lo(var_80957958)($at)
    lw      t8, 0x0004(a3)             # 00000004
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    xori    t7, t6, 0x8000             # t7 = FFFF8000
    ori     t9, t8, 0x0001             # t9 = 00000001
    sh      t7, 0x0032(a3)             # 00000032
    sw      t9, 0x0004(a3)             # 00000004
    lui     a1, %hi(var_8095780C)      # a1 = 80950000
    swc1    $f6, 0x0054(a3)            # 00000054
    swc1    $f8, 0x0068(a3)            # 00000068
    sw      a3, 0x0020($sp)
    addiu   a1, a1, %lo(var_8095780C)  # a1 = 8095780C
    jal     func_80027C98
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a3, 0x0020($sp)
    lui     t0, %hi(func_80955D24)     # t0 = 80950000
    addiu   t0, t0, %lo(func_80955D24) # t0 = 80955D24
    b       lbl_80955D14
    sw      t0, 0x0180(a3)             # 00000180
lbl_80955CE4:
    lui     $at, %hi(var_8095795C)     # $at = 80950000
    lwc1    $f10, %lo(var_8095795C)($at)
    lwc1    $f16, 0x0150(a3)           # 00000150
    lwc1    $f4, 0x0154(a3)            # 00000154
    lh      t1, 0x00B6(a3)             # 000000B6
    div.s   $f18, $f10, $f16
    addiu   t2, t1, 0x2000             # t2 = 00002000
    sh      t2, 0x00B6(a3)             # 000000B6
    lh      t3, 0x00B6(a3)             # 000000B6
    sh      t3, 0x0032(a3)             # 00000032
    mul.s   $f6, $f4, $f18
    swc1    $f6, 0x0054(a3)            # 00000054
lbl_80955D14:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80955D24:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lhu     t6, 0x0088(a3)             # 00000088
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80955D94
    lw      $ra, 0x0014($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f4, 0x0060(a3)            # 00000060
    lui     a1, %hi(var_8095780C)      # a1 = 80950000
    addiu   a1, a1, %lo(var_8095780C)  # a1 = 8095780C
    c.lt.s  $f0, $f4
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    bc1tl   lbl_80955D94
    lw      $ra, 0x0014($sp)
    lh      t8, 0x00B6(a3)             # 000000B6
    swc1    $f0, 0x0060(a3)            # 00000060
    swc1    $f0, 0x0068(a3)            # 00000068
    sh      t8, 0x0032(a3)             # 00000032
    jal     func_80027C98
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     t9, %hi(func_80955DA0)     # t9 = 80950000
    addiu   t9, t9, %lo(func_80955DA0) # t9 = 80955DA0
    sw      t9, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)
lbl_80955D94:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80955DA0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s0, 0x0020($sp)
    mtc1    $at, $f0                   # $f0 = 1.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    mfc1    a1, $f0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a3, $f0
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0158             # a0 = 00000158
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_80955E6C
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    jal     func_80063BF0
    addiu   a1, $zero, 0x005A          # a1 = 0000005A
    sh      v0, 0x04AE(s0)             # 000004AE
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80063E18
    addiu   a1, s0, 0x0008             # a1 = 00000008
    mfc1    a2, $f0
    swc1    $f0, 0x04B8(s0)            # 000004B8
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFF4
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8095574C
    lh      a3, 0x04AA(s0)             # 000004AA
    lwc1    $f12, 0x002C($sp)
    jal     func_800CD76C
    lwc1    $f14, 0x0034($sp)
    lui     $at, %hi(var_80957960)     # $at = 80950000
    lwc1    $f6, %lo(var_80957960)($at)
    lui     a1, %hi(var_8095780C)      # a1 = 80950000
    addiu   a1, a1, %lo(var_8095780C)  # a1 = 8095780C
    mul.s   $f8, $f0, $f6
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    sh      t7, 0x0032(s0)             # 00000032
    jal     func_80027C98
    lw      a0, 0x0028($sp)
    lui     t8, %hi(func_80955E80)     # t8 = 80950000
    addiu   t8, t8, %lo(func_80955E80) # t8 = 80955E80
    sw      t8, 0x0180(s0)             # 00000180
lbl_80955E6C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80955E80:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lh      t6, 0x04AE(s0)             # 000004AE
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t6, 0x001F
    beq     $at, $zero, lbl_80955EC8
    nop
    lh      t7, 0x04B2(s0)             # 000004B2
    addiu   a1, $zero, 0x3183          # a1 = 00003183
    bne     t7, $zero, lbl_80955EC8
    nop
    jal     func_8002313C
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80955ED4
    lh      v0, 0x04AE(s0)             # 000004AE
lbl_80955EC8:
    jal     func_8002313C
    addiu   a1, $zero, 0x317E          # a1 = 0000317E
    lh      v0, 0x04AE(s0)             # 000004AE
lbl_80955ED4:
    bne     v0, $zero, lbl_80955EE4
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    b       lbl_80955EF0
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80955EE4:
    sh      t8, 0x04AE(s0)             # 000004AE
    lh      v0, 0x04AE(s0)             # 000004AE
    or      v1, v0, $zero              # v1 = 00000000
lbl_80955EF0:
    beql    v1, $zero, lbl_80955F74
    lh      t4, 0x0032(s0)             # 00000032
    lh      t0, 0x04AA(s0)             # 000004AA
    lh      t9, 0x00B6(s0)             # 000000B6
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    sll     t1, t0, 13
    addu    t2, t9, t1
    bne     v0, $at, lbl_8095608C
    sh      t2, 0x00B6(s0)             # 000000B6
    lh      t3, 0x04B2(s0)             # 000004B2
    lui     $at, 0x4320                # $at = 43200000
    bnel    t3, $zero, lbl_80956090
    lw      $ra, 0x001C($sp)
    mtc1    $at, $f4                   # $f4 = 160.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    lw      a1, 0x003C($sp)
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    bc1f    lbl_80955F60
    nop
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    jal     func_80955048
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    b       lbl_80956090
    lw      $ra, 0x001C($sp)
lbl_80955F60:
    jal     func_80955048
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    b       lbl_80956090
    lw      $ra, 0x001C($sp)
    lh      t4, 0x0032(s0)             # 00000032
lbl_80955F74:
    lh      t5, 0x00B6(s0)             # 000000B6
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    t4, $f8                    # $f8 = 0.00
    mtc1    t5, $f10                   # $f10 = 0.00
    lui     a2, 0x3F19                 # a2 = 3F190000
    cvt.s.w $f2, $f8
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFF4
    lui     a3, 0x4600                 # a3 = 46000000
    swc1    $f18, 0x002C($sp)
    cvt.s.w $f16, $f10
    sub.s   $f2, $f2, $f16
    abs.s   $f0, $f2
    div.s   $f2, $f2, $f0
    mfc1    a1, $f0
    jal     func_80064280
    swc1    $f2, 0x0034($sp)
    lwc1    $f2, 0x0034($sp)
    lwc1    $f4, 0x002C($sp)
    addiu   a0, s0, 0x0008             # a0 = 00000008
    mul.s   $f6, $f4, $f2
    trunc.w.s $f8, $f6
    swc1    $f6, 0x002C($sp)
    lh      t6, 0x00B6(s0)             # 000000B6
    mfc1    t9, $f8
    nop
    addu    t1, t6, t9
    sh      t1, 0x00B6(s0)             # 000000B6
    lwc1    $f0, 0x002C($sp)
    abs.s   $f0, $f0
    trunc.w.s $f10, $f0
    swc1    $f0, 0x002C($sp)
    mfc1    t3, $f10
    nop
    slti    $at, t3, 0x012D
    beql    $at, $zero, lbl_80956014
    lh      t5, 0x0032(s0)             # 00000032
    lh      t4, 0x0032(s0)             # 00000032
    sh      t4, 0x00B6(s0)             # 000000B6
    lh      t5, 0x0032(s0)             # 00000032
lbl_80956014:
    lh      t7, 0x00B6(s0)             # 000000B6
    bnel    t5, t7, lbl_80956090
    lw      $ra, 0x001C($sp)
    jal     func_80063F00
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lh      t8, 0x04AA(s0)             # 000004AA
    sh      v0, 0x04A6(s0)             # 000004A6
    ori     t0, $zero, 0xFFFF          # t0 = 0000FFFF
    bgezl   t8, lbl_80956048
    sh      $zero, 0x04A8(s0)          # 000004A8
    b       lbl_80956048
    sh      t0, 0x04A8(s0)             # 000004A8
    sh      $zero, 0x04A8(s0)          # 000004A8
lbl_80956048:
    lw      t6, 0x003C($sp)
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    lw      t9, 0x009C(t6)             # 0000009C
    andi    t1, t9, 0x0007             # t1 = 00000000
    addiu   t2, t1, 0x0002             # t2 = 00000002
    jal     func_80063BF0
    sh      t2, 0x04B0(s0)             # 000004B0
    lui     a1, %hi(var_8095780C)      # a1 = 80950000
    sh      v0, 0x04AE(s0)             # 000004AE
    addiu   a1, a1, %lo(var_8095780C)  # a1 = 8095780C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lui     t3, %hi(func_809560A0)     # t3 = 80950000
    addiu   t3, t3, %lo(func_809560A0) # t3 = 809560A0
    sw      t3, 0x0180(s0)             # 00000180
lbl_8095608C:
    lw      $ra, 0x001C($sp)
lbl_80956090:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_809560A0:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)
    lw      a2, 0x04B8(s0)             # 000004B8
    jal     func_80955814
    addiu   a3, s0, 0x04AA             # a3 = 000004AA
    beq     v0, $zero, lbl_8095611C
    addiu   a0, s0, 0x0008             # a0 = 00000008
    lh      t6, 0x04B2(s0)             # 000004B2
    lui     a1, %hi(var_8095780C)      # a1 = 80950000
    lui     $at, 0x40C0                # $at = 40C00000
    bne     t6, $zero, lbl_8095611C
    addiu   a1, a1, %lo(var_8095780C)  # a1 = 8095780C
    lh      t7, 0x0032(s0)             # 00000032
    mtc1    $at, $f4                   # $f4 = 6.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    xori    t8, t7, 0x8000             # t8 = FFFF8000
    sh      t8, 0x0032(s0)             # 00000032
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    swc1    $f4, 0x0060(s0)            # 00000060
    jal     func_80027C98
    swc1    $f6, 0x0068(s0)            # 00000068
    lui     t9, %hi(func_80955D24)     # t9 = 80950000
    addiu   t9, t9, %lo(func_80955D24) # t9 = 80955D24
    b       lbl_809562EC
    sw      t9, 0x0180(s0)             # 00000180
lbl_8095611C:
    addiu   a1, s0, 0x0024             # a1 = 00000024
    jal     func_80063F00
    sw      a0, 0x0028($sp)
    lh      t0, 0x04A6(s0)             # 000004A6
    lh      t1, 0x04AA(s0)             # 000004AA
    or      a0, s0, $zero              # a0 = 00000000
    subu    v1, v0, t0
    sll     v1, v1, 16
    blez    t1, lbl_80956168
    sra     v1, v1, 16
    lhu     t3, 0x04A8(s0)             # 000004A8
    andi    t2, v1, 0xFFFF             # t2 = 00000000
    slt     $at, t2, t3
    beql    $at, $zero, lbl_8095618C
    lh      t0, 0x04B0(s0)             # 000004B0
    lh      t4, 0x04B0(s0)             # 000004B0
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    b       lbl_80956188
    sh      t5, 0x04B0(s0)             # 000004B0
lbl_80956168:
    lhu     t6, 0x04A8(s0)             # 000004A8
    andi    t7, v1, 0xFFFF             # t7 = 00000000
    slt     $at, t6, t7
    beql    $at, $zero, lbl_8095618C
    lh      t0, 0x04B0(s0)             # 000004B0
    lh      t8, 0x04B0(s0)             # 000004B0
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x04B0(s0)             # 000004B0
lbl_80956188:
    lh      t0, 0x04B0(s0)             # 000004B0
lbl_8095618C:
    bgezl   t0, lbl_8095619C
    sh      v1, 0x04A8(s0)             # 000004A8
    sh      $zero, 0x04B0(s0)          # 000004B0
    sh      v1, 0x04A8(s0)             # 000004A8
lbl_8095619C:
    jal     func_809556D8
    lw      a1, 0x004C($sp)
    beq     v0, $zero, lbl_809561CC
    lui     $at, 0x4348                # $at = 43480000
    lh      t1, 0x04B2(s0)             # 000004B2
    lw      a0, 0x0028($sp)
    bnel    t1, $zero, lbl_809561D0
    mtc1    $at, $f2                   # $f2 = 200.00
    jal     func_80063E18
    addiu   a1, v0, 0x0024             # a1 = 00000024
    b       lbl_809561D4
    mov.s   $f2, $f0
lbl_809561CC:
    mtc1    $at, $f2                   # $f2 = 0.00
lbl_809561D0:
    nop
lbl_809561D4:
    mtc1    $zero, $f8                 # $f8 = 0.00
    mfc1    a1, $f2
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x04B8             # a0 = 000004B8
    lui     a3, 0x42C8                 # a3 = 42C80000
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE8
    or      a1, s0, $zero              # a1 = 00000000
    lw      a2, 0x04B8(s0)             # 000004B8
    jal     func_8095574C
    lh      a3, 0x04AA(s0)             # 000004AA
    lwc1    $f12, 0x0030($sp)
    jal     func_800CD76C
    lwc1    $f14, 0x0038($sp)
    lui     $at, %hi(var_80957964)     # $at = 80950000
    lwc1    $f10, %lo(var_80957964)($at)
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0010($sp)
    mul.s   $f16, $f0, $f10
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    trunc.w.s $f18, $f16
    mfc1    a1, $f18
    nop
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    lwl     t5, 0x00B4(s0)             # 000000B4
    lwr     t5, 0x00B7(s0)             # 000000B7
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x317D          # a1 = 0000317D
    swl     t5, 0x0030(s0)             # 00000030
    swr     t5, 0x0033(s0)             # 00000033
    lhu     t5, 0x00B8(s0)             # 000000B8
    jal     func_8002313C
    sh      t5, 0x0034(s0)             # 00000034
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x4150                # $at = 41500000
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f4, $f0
    nop
    bc1t    lbl_809562C4
    nop
    mtc1    $at, $f6                   # $f6 = 13.00
    lui     $at, 0x41E0                # $at = 41E00000
    c.eq.s  $f6, $f0
    nop
    bc1t    lbl_809562C4
    nop
    mtc1    $at, $f8                   # $f8 = 28.00
    nop
    c.eq.s  $f8, $f0
    nop
    bc1fl   lbl_809562D0
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_809562C4:
    jal     func_80022FD0
    addiu   a1, $zero, 0x397C          # a1 = 0000397C
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_809562D0:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4100                 # a1 = 41000000
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
lbl_809562EC:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80956300:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x04AE(a0)             # 000004AE
    beq     v0, $zero, lbl_80956338
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x04AE(a0)             # 000004AE
    lh      t7, 0x04AE(a0)             # 000004AE
    bnel    t7, $zero, lbl_8095636C
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    nop
    b       lbl_8095636C
    lw      $ra, 0x0014($sp)
lbl_80956338:
    lh      v0, 0x001C(a0)             # 0000001C
    lui     t9, %hi(func_80955BC0)     # t9 = 80950000
    addiu   t9, t9, %lo(func_80955BC0) # t9 = 80955BC0
    andi    t8, v0, 0x8000             # t8 = 00000000
    beq     t8, $zero, lbl_80956358
    andi    t0, v0, 0x4000             # t0 = 00000000
    b       lbl_80956368
    sw      t9, 0x0180(a0)             # 00000180
lbl_80956358:
    beq     t0, $zero, lbl_80956368
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    sh      $zero, 0x001C(a0)          # 0000001C
    sh      t1, 0x04AE(a0)             # 000004AE
lbl_80956368:
    lw      $ra, 0x0014($sp)
lbl_8095636C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80956378:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lh      t6, 0x04AC(s0)             # 000004AC
    beq     t6, $zero, lbl_809563A8
    nop
    jal     func_800C6820
    addiu   a0, $zero, 0x0038          # a0 = 00000038
    sh      $zero, 0x04AC(s0)          # 000004AC
lbl_809563A8:
    lui     t7, %hi(func_80955BC0)     # t7 = 80950000
    addiu   t7, t7, %lo(func_80955BC0) # t7 = 80955BC0
    sw      t7, 0x0034($sp)
    lw      t8, 0x0180(s0)             # 00000180
    beql    t7, t8, lbl_809563D8
    lw      t9, 0x0004(s0)             # 00000004
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80955168
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x0004(s0)             # 00000004
lbl_809563D8:
    addiu   $at, $zero, 0x2000         # $at = 00002000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t0, t9, 0x2000             # t0 = 00000000
    bnel    t0, $at, lbl_80956448
    lw      t7, 0x0180(s0)             # 00000180
    jal     func_80954F50
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80956430
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      t1, 0x0004(s0)             # 00000004
    addiu   t3, $zero, 0x001E          # t3 = 0000001E
    sh      t3, 0x04B2(s0)             # 000004B2
    and     t2, t1, $at
    sw      t2, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x397A          # a1 = 0000397A
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_80956460
    nop
lbl_80956430:
    lw      t4, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xDFFF         # $at = FFFFDFFF
    and     t5, t4, $at
    b       lbl_80956460
    sw      t5, 0x0004(s0)             # 00000004
    lw      t7, 0x0180(s0)             # 00000180
lbl_80956448:
    lui     t6, %hi(func_80956300)     # t6 = 80950000
    addiu   t6, t6, %lo(func_80956300) # t6 = 80956300
    beq     t6, t7, lbl_80956460
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80955370
    or      a1, s1, $zero              # a1 = 00000000
lbl_80956460:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sw      t8, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80955948
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    jal     func_80956EB0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80956D98
    or      a0, s0, $zero              # a0 = 00000000
    lw      v1, 0x0180(s0)             # 00000180
    lw      t0, 0x0034($sp)
    lui     t1, %hi(func_80955C50)     # t1 = 80950000
    addiu   t1, t1, %lo(func_80955C50) # t1 = 80955C50
    beql    t0, v1, lbl_80956564
    lw      $ra, 0x0024($sp)
    beq     t1, v1, lbl_80956560
    lui     t2, %hi(func_80956300)     # t2 = 80950000
    addiu   t2, t2, %lo(func_80956300) # t2 = 80956300
    beql    t2, v1, lbl_80956564
    lw      $ra, 0x0024($sp)
    lh      t3, 0x04B4(s0)             # 000004B4
    bnel    t3, $zero, lbl_8095651C
    lui     $at, 0x0001                # $at = 00010000
    lh      t4, 0x04B2(s0)             # 000004B2
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bne     t4, $zero, lbl_80956518
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x0184             # a2 = 00000184
    lw      v1, 0x0180(s0)             # 00000180
lbl_80956518:
    lui     $at, 0x0001                # $at = 00010000
lbl_8095651C:
    lui     t5, %hi(func_809560A0)     # t5 = 80950000
    addiu   t5, t5, %lo(func_809560A0) # t5 = 809560A0
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    beq     t5, v1, lbl_80956540
    addiu   a2, s0, 0x0184             # a2 = 00000184
    lui     t6, %hi(func_80955E80)     # t6 = 80950000
    addiu   t6, t6, %lo(func_80955E80) # t6 = 80955E80
    bne     t6, v1, lbl_80956558
lbl_80956540:
    or      a0, s1, $zero              # a0 = 00000000
    sw      a1, 0x0034($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a2, 0x002C($sp)
    lw      a1, 0x0034($sp)
    lw      a2, 0x002C($sp)
lbl_80956558:
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
lbl_80956560:
    lw      $ra, 0x0024($sp)
lbl_80956564:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80956574:
    sw      a0, 0x0000($sp)
    sw      a3, 0x000C($sp)
    lw      t6, 0x0014($sp)
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t7, 0x04B2(t6)             # 000004B2
    beq     t7, $zero, lbl_809565A8
    nop
    beq     a1, $at, lbl_809565A4
    addiu   $at, $zero, 0x0015         # $at = 00000015
    bne     a1, $at, lbl_809565A8
    nop
lbl_809565A4:
    sw      $zero, 0x0000(a2)          # 00000000
lbl_809565A8:
    jr      $ra
    nop


func_809565B0:
    addiu   $sp, $sp, 0xFF30           # $sp -= 0xD0
    sw      s7, 0x0070($sp)
    sw      s6, 0x006C($sp)
    sw      s4, 0x0064($sp)
    sw      s3, 0x0060($sp)
    sw      s2, 0x005C($sp)
    sw      s0, 0x0054($sp)
    or      s0, a0, $zero              # s0 = 00000000
    addiu   s2, $sp, 0x009C            # s2 = FFFFFFCC
    or      s3, a1, $zero              # s3 = 00000000
    addiu   s4, $sp, 0x00A8            # s4 = FFFFFFD8
    addiu   s6, $sp, 0x0090            # s6 = FFFFFFC0
    addiu   s7, $sp, 0x0084            # s7 = FFFFFFB4
    sw      $ra, 0x0074($sp)
    sw      s5, 0x0068($sp)
    sw      s1, 0x0058($sp)
    sdc1    $f30, 0x0048($sp)
    sdc1    $f28, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a2, 0x00D8($sp)
    sw      a3, 0x00DC($sp)
    lui     t7, %hi(var_809578A8)      # t7 = 80950000
    addiu   t7, t7, %lo(var_809578A8)  # t7 = 809578A8
    lw      t9, 0x0000(t7)             # 809578A8
    addiu   t6, $sp, 0x00C0            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 809578AC
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 809578B0
    lui     t1, %hi(var_809578B4)      # t1 = 80950000
    addiu   t1, t1, %lo(var_809578B4)  # t1 = 809578B4
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      t3, 0x0000(t1)             # 809578B4
    addiu   t0, $sp, 0x00B4            # t0 = FFFFFFE4
    lw      t2, 0x0004(t1)             # 809578B8
    sw      t3, 0x0000(t0)             # FFFFFFE4
    lw      t3, 0x0008(t1)             # 809578BC
    lui     t4, %hi(var_809578C0)      # t4 = 80950000
    addiu   t4, t4, %lo(var_809578C0)  # t4 = 809578C0
    sw      t2, 0x0004(t0)             # FFFFFFE8
    sw      t3, 0x0008(t0)             # FFFFFFEC
    lw      t6, 0x0000(t4)             # 809578C0
    lui     t7, %hi(var_809578CC)      # t7 = 80950000
    addiu   t7, t7, %lo(var_809578CC)  # t7 = 809578CC
    sw      t6, 0x0000(s4)             # FFFFFFD8
    lw      t5, 0x0004(t4)             # 809578C4
    lui     t0, %hi(var_809578D8)      # t0 = 80950000
    addiu   t0, t0, %lo(var_809578D8)  # t0 = 809578D8
    sw      t5, 0x0004(s4)             # FFFFFFDC
    lw      t6, 0x0008(t4)             # 809578C8
    lui     t3, %hi(var_809578E4)      # t3 = 80950000
    addiu   t3, t3, %lo(var_809578E4)  # t3 = 809578E4
    sw      t6, 0x0008(s4)             # FFFFFFE0
    lw      t9, 0x0000(t7)             # 809578CC
    addiu   $at, $zero, 0x0015         # $at = 00000015
    sw      t9, 0x0000(s2)             # FFFFFFCC
    lw      t8, 0x0004(t7)             # 809578D0
    sw      t8, 0x0004(s2)             # FFFFFFD0
    lw      t9, 0x0008(t7)             # 809578D4
    sw      t9, 0x0008(s2)             # FFFFFFD4
    lw      t2, 0x0000(t0)             # 809578D8
    sw      t2, 0x0000(s6)             # FFFFFFC0
    lw      t1, 0x0004(t0)             # 809578DC
    sw      t1, 0x0004(s6)             # FFFFFFC4
    lw      t2, 0x0008(t0)             # 809578E0
    sw      t2, 0x0008(s6)             # FFFFFFC8
    lw      t5, 0x0000(t3)             # 809578E4
    sw      t5, 0x0000(s7)             # FFFFFFB4
    lw      t4, 0x0004(t3)             # 809578E8
    sw      t4, 0x0004(s7)             # FFFFFFB8
    lw      t5, 0x0008(t3)             # 809578EC
    bne     s3, $at, lbl_809566F0
    sw      t5, 0x0008(s7)             # FFFFFFBC
    lw      s5, 0x00E0($sp)
    or      a0, s4, $zero              # a0 = FFFFFFD8
    jal     func_800AB958
    addiu   a1, s5, 0x04C0             # a1 = 000004C0
lbl_809566F0:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     s3, $at, lbl_80956708
    lw      s5, 0x00E0($sp)
    or      a0, s4, $zero              # a0 = FFFFFFD8
    jal     func_800AB958
    addiu   a1, s5, 0x0038             # a1 = 00000038
lbl_80956708:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x0012         # $at = 00000012
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x0016         # $at = 00000016
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x0017         # $at = 00000017
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x0018         # $at = 00000018
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x0019         # $at = 00000019
    beq     s3, $at, lbl_8095677C
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    bnel    s3, $at, lbl_80956890
    or      a0, s3, $zero              # a0 = 00000000
lbl_8095677C:
    lw      t6, 0x009C(s0)             # 0000009C
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, %hi(var_80957968)     # $at = 80950000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80956890
    or      a0, s3, $zero              # a0 = 00000000
    lwc1    $f30, %lo(var_80957968)($at)
    lui     $at, %hi(var_8095796C)     # $at = 80950000
    lwc1    $f28, %lo(var_8095796C)($at)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f26                  # $f26 = 40.00
    lui     $at, %hi(var_80957970)     # $at = 80950000
    lwc1    $f24, %lo(var_80957970)($at)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f22                  # $f22 = 20.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    or      a0, s4, $zero              # a0 = FFFFFFD8
lbl_809567C8:
    jal     func_800AB958
    or      a1, s2, $zero              # a1 = FFFFFFCC
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f6, $f0, $f20
    lwc1    $f4, 0x009C($sp)
    mul.s   $f8, $f6, $f22
    add.s   $f10, $f4, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x009C($sp)
    sub.s   $f18, $f0, $f20
    lwc1    $f16, 0x00A0($sp)
    mul.s   $f6, $f18, $f26
    add.s   $f4, $f16, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00A0($sp)
    sub.s   $f10, $f0, $f20
    lwc1    $f8, 0x00A4($sp)
    mul.s   $f18, $f10, $f22
    add.s   $f16, $f8, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00A4($sp)
    sub.s   $f6, $f0, $f20
    mul.s   $f4, $f6, $f24
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0090($sp)
    sub.s   $f10, $f0, $f20
    mul.s   $f8, $f10, $f28
    add.s   $f18, $f8, $f30
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0094($sp)
    sub.s   $f16, $f0, $f20
    lui     $at, %hi(var_80957974)     # $at = 80950000
    lwc1    $f4, %lo(var_80957974)($at)
    mtc1    $zero, $f10                # $f10 = 0.00
    mul.s   $f6, $f16, $f24
    or      a0, s5, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a2, s2, $zero              # a2 = FFFFFFCC
    or      a3, s7, $zero              # a3 = FFFFFFB4
    sw      s6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0098($sp)
    swc1    $f4, 0x0018($sp)
    jal     func_80956CA8
    swc1    $f10, 0x001C($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s1, lbl_809567C8
    or      a0, s4, $zero              # a0 = FFFFFFD8
    or      a0, s3, $zero              # a0 = 00000000
lbl_80956890:
    jal     func_80050CE4
    addiu   a1, s5, 0x0184             # a1 = 00000184
    lw      $ra, 0x0074($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    ldc1    $f28, 0x0040($sp)
    ldc1    $f30, 0x0048($sp)
    lw      s0, 0x0054($sp)
    lw      s1, 0x0058($sp)
    lw      s2, 0x005C($sp)
    lw      s3, 0x0060($sp)
    lw      s4, 0x0064($sp)
    lw      s5, 0x0068($sp)
    lw      s6, 0x006C($sp)
    lw      s7, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D0           # $sp += 0xD0


func_809568DC:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s0, 0x0038($sp)
    lui     t7, %hi(var_809578F0)      # t7 = 80950000
    addiu   t7, t7, %lo(var_809578F0)  # t7 = 809578F0
    lw      t9, 0x0000(t7)             # 809578F0
    addiu   t6, $sp, 0x008C            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 809578F4
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 809578F8
    lui     t7, %hi(var_809578FC)      # t7 = 80950000
    addiu   t7, t7, %lo(var_809578FC)  # t7 = 809578FC
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lw      t9, 0x0000(t7)             # 809578FC
    addiu   t6, $sp, 0x0080            # t6 = FFFFFFE0
    lw      t8, 0x0004(t7)             # 80957900
    sw      t9, 0x0000(t6)             # FFFFFFE0
    lw      t9, 0x0008(t7)             # 80957904
    sw      t8, 0x0004(t6)             # FFFFFFE4
    sw      t9, 0x0008(t6)             # FFFFFFE8
    lw      t6, 0x009C(s2)             # 0000009C
    sw      t6, 0x007C($sp)
    jal     func_800AA6EC
    lw      s0, 0x0000(s2)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80957398
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80956FCC
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_800AA724
    nop
    lw      t8, 0x0180(s1)             # 00000180
    lui     t7, %hi(func_80955BC0)     # t7 = 80950000
    addiu   t7, t7, %lo(func_80955BC0) # t7 = 80955BC0
    beq     t7, t8, lbl_80956C90
    lui     $at, %hi(var_80957978)     # $at = 80950000
    lwc1    $f4, 0x04BC(s1)            # 000004BC
    lwc1    $f6, %lo(var_80957978)($at)
    c.lt.s  $f4, $f6
    nop
    bc1tl   lbl_80956C94
    lw      $ra, 0x0044($sp)
    jal     func_8007E2C0
    lw      a0, 0x0000(s2)             # 00000000
    lbu     v0, 0x00AF(s1)             # 000000AF
    lui     t6, 0xFA00                 # t6 = FA000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    bgez    v0, lbl_809569C4
    or      a2, $zero, $zero           # a2 = 00000000
    b       lbl_809569DC
    or      t4, $zero, $zero           # t4 = 00000000
lbl_809569C4:
    slti    $at, v0, 0x0018
    bne     $at, $zero, lbl_809569D8
    or      v1, v0, $zero              # v1 = FFFFFFFF
    b       lbl_809569D8
    addiu   v1, $zero, 0x0017          # v1 = 00000017
lbl_809569D8:
    or      t4, v1, $zero              # t4 = 00000017
lbl_809569DC:
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t6, t6, 0x0080             # t6 = FA000080
    addiu   t7, $sp, 0x008C            # t7 = FFFFFFEC
    addiu   t9, v1, 0x0008             # t9 = 0000001F
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000017
    lwc1    $f8, 0x04BC(s1)            # 000004BC
    or      t1, v1, $zero              # t1 = 00000017
    bgez    t4, lbl_80956A0C
    sra     t2, t4,  3
    addiu   $at, t4, 0x0007            # $at = 0000001E
    sra     t2, $at,  3
lbl_80956A0C:
    sll     t2, t2,  2
    addu    v0, t2, t7
    lbu     t9, 0x0002(v0)             # 00000001
    lbu     t8, 0x0000(v0)             # FFFFFFFF
    lui     $at, 0x4F00                # $at = 4F000000
    sll     t6, t9,  8
    sll     t9, t8, 24
    or      t7, t6, t9                 # t7 = FA00009F
    lbu     t6, 0x0001(v0)             # 00000000
    sll     t9, t6, 16
    or      t8, t7, t9                 # t8 = FA00009F
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    cfc1    t6, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_80956AA8
    mfc1    t7, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t7, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80956A9C
    nop
    mfc1    t7, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80956AB4
    or      t7, t7, $at                # t7 = 80000000
lbl_80956A9C:
    b       lbl_80956AB4
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f10
lbl_80956AA8:
    nop
    bltz    t7, lbl_80956A9C
    nop
lbl_80956AB4:
    ctc1    t6, $f31
    or      t9, t7, $zero              # t9 = FFFFFFFF
    andi    t6, t9, 0x00FF             # t6 = 000000FF
    or      t7, t8, t6                 # t7 = FA0000FF
    sw      t7, 0x0004(t1)             # 0000001B
    lw      t3, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t6, $sp, 0x0080            # t6 = FFFFFFE0
    addiu   t9, t3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    addu    t0, t2, t6
    sw      t8, 0x0000(t3)             # 00000000
    lbu     t9, 0x0002(t0)             # 00000002
    lbu     t7, 0x0000(t0)             # 00000000
    lwc1    $f16, 0x04BC(s1)           # 000004BC
    sll     t8, t9,  8
    sll     t9, t7, 24
    or      t6, t8, t9                 # t6 = FB000008
    lbu     t8, 0x0001(t0)             # 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    or      a3, $zero, $zero           # a3 = 00000000
    sll     t9, t8, 16
    or      t7, t6, t9                 # t7 = FB000008
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    cfc1    t8, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_80956B80
    mfc1    t6, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t6, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80956B74
    nop
    mfc1    t6, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80956B8C
    or      t6, t6, $at                # t6 = 80000000
lbl_80956B74:
    b       lbl_80956B8C
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f18
lbl_80956B80:
    nop
    bltz    t6, lbl_80956B74
    nop
lbl_80956B8C:
    ctc1    t8, $f31
    or      t9, t6, $zero              # t9 = FFFFFFFF
    andi    t8, t9, 0x00FF             # t8 = 000000FF
    or      t6, t7, t8                 # t6 = FB0000FF
    sw      t6, 0x0004(t3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t9, v1, 0x0008             # t9 = 0000001F
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000017
    lw      t7, 0x007C($sp)
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0010($sp)
    sll     t8, t7,  2
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    subu    t8, t8, t7
    sll     t8, t8,  1
    sw      t6, 0x0014($sp)
    sw      t9, 0x0018($sp)
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    andi    t6, t8, 0x00FF             # t6 = 00000020
    subu    t7, t9, t6
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    sw      t8, 0x0024($sp)
    sw      t9, 0x0028($sp)
    sw      t7, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_8007EB84
    sw      v1, 0x0064($sp)
    lw      t5, 0x0064($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    sw      v0, 0x0004(t5)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x8510             # t6 = 800E8510
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    lbu     a3, 0x013E(s1)             # 0000013E
    lui     t7, %hi(func_80956574)     # t7 = 80950000
    lui     t8, %hi(func_809565B0)     # t8 = 80950000
    addiu   t8, t8, %lo(func_809565B0) # t8 = 809565B0
    addiu   t7, t7, %lo(func_80956574) # t7 = 80956574
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    sw      s1, 0x0018($sp)
    lw      t9, 0x02D0(s0)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8008A88C
    sw      t9, 0x001C($sp)
    sw      v0, 0x02D0(s0)             # 000002D0
lbl_80956C90:
    lw      $ra, 0x0044($sp)
lbl_80956C94:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_80956CA8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a1, 0x0024($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sw      $ra, 0x0014($sp)
    addiu   v1, a0, 0x0610             # v1 = 00000610
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80956CC0:
    lbu     t6, 0x0000(v1)             # 00000610
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t6, $zero, lbl_80956D7C
    sra     v0, v0, 16
    lwc1    $f4, 0x0038($sp)
    andi    t6, a1, 0x00FF             # t6 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    swc1    $f4, 0x0004(v1)            # 00000614
    lwc1    $f6, 0x003C($sp)
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    swc1    $f6, 0x0008(v1)            # 00000618
    lbu     t8, 0x0037($sp)
    sb      a1, 0x0000(v1)             # 00000610
    sb      t8, 0x0001(v1)             # 00000611
    sb      t8, 0x0002(v1)             # 00000612
    lw      t0, 0x0000(a2)             # 00000000
    sw      t0, 0x0014(v1)             # 00000624
    lw      t9, 0x0004(a2)             # 00000004
    sw      t9, 0x0018(v1)             # 00000628
    lw      t0, 0x0008(a2)             # 00000008
    sw      t0, 0x001C(v1)             # 0000062C
    lw      t1, 0x0030($sp)
    lw      t3, 0x0000(t1)             # 00000000
    sw      t3, 0x002C(v1)             # 0000063C
    lw      t2, 0x0004(t1)             # 00000004
    sw      t2, 0x0030(v1)             # 00000640
    lw      t3, 0x0008(t1)             # 00000008
    sw      t3, 0x0034(v1)             # 00000644
    lw      t5, 0x0000(a3)             # 00000000
    sw      t5, 0x0020(v1)             # 00000630
    lw      t4, 0x0004(a3)             # 00000004
    sw      t4, 0x0024(v1)             # 00000634
    lw      t5, 0x0008(a3)             # 00000008
    bne     t6, $at, lbl_80956D88
    sw      t5, 0x0028(v1)             # 00000638
    sb      t7, 0x000F(v1)             # 0000061F
    jal     func_800CDCCC              # Rand.Next() float
    sw      v1, 0x001C($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lw      v1, 0x001C($sp)
    mul.s   $f10, $f0, $f8
    trunc.w.s $f16, $f10
    mfc1    t1, $f16
    b       lbl_80956D88
    sb      t1, 0x0001(v1)             # 00000001
lbl_80956D7C:
    slti    $at, v0, 0x00C8
    bne     $at, $zero, lbl_80956CC0
    addiu   v1, v1, 0x0038             # v1 = 00000038
lbl_80956D88:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80956D98:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lui     $at, %hi(var_8095797C)     # $at = 80950000
    lwc1    $f22, %lo(var_8095797C)($at)
    lui     $at, %hi(var_80957980)     # $at = 80950000
    addiu   s0, a0, 0x0610             # s0 = 00000610
    lwc1    $f20, %lo(var_80957980)($at)
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s2, $zero, 0x0001          # s2 = 00000001
lbl_80956DD0:
    lbu     t6, 0x0000(s0)             # 00000610
    bnel    s2, t6, lbl_80956E7C
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lbu     t7, 0x0001(s0)             # 00000611
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    andi    t9, t8, 0x00FF             # t9 = 000000FF
    bne     t9, $zero, lbl_80956DF4
    sb      t8, 0x0001(s0)             # 00000611
    sb      $zero, 0x0000(s0)          # 00000610
lbl_80956DF4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f20
    sub.s   $f6, $f4, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x002C(s0)            # 0000063C
    lwc1    $f12, 0x0020(s0)           # 00000630
    lwc1    $f10, 0x0014(s0)           # 00000624
    mul.s   $f8, $f0, $f20
    lwc1    $f14, 0x0024(s0)           # 00000634
    add.s   $f18, $f10, $f12
    lwc1    $f4, 0x0018(s0)            # 00000628
    lwc1    $f16, 0x0028(s0)           # 00000638
    swc1    $f18, 0x0014(s0)           # 00000624
    lwc1    $f18, 0x002C(s0)           # 0000063C
    add.s   $f6, $f4, $f14
    sub.s   $f2, $f8, $f22
    lwc1    $f8, 0x001C(s0)            # 0000062C
    swc1    $f6, 0x0018(s0)            # 00000628
    add.s   $f4, $f12, $f18
    lwc1    $f6, 0x0030(s0)            # 00000640
    lwc1    $f18, 0x0004(s0)           # 00000614
    add.s   $f10, $f8, $f16
    swc1    $f4, 0x0020(s0)            # 00000630
    lwc1    $f4, 0x0008(s0)            # 00000618
    add.s   $f8, $f14, $f6
    swc1    $f10, 0x001C(s0)           # 0000062C
    swc1    $f2, 0x0034(s0)            # 00000644
    add.s   $f10, $f16, $f2
    swc1    $f8, 0x0024(s0)            # 00000634
    add.s   $f6, $f18, $f4
    swc1    $f10, 0x0028(s0)           # 00000638
    swc1    $f6, 0x0004(s0)            # 00000614
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80956E7C:
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x00C8
    bne     $at, $zero, lbl_80956DD0
    addiu   s0, s0, 0x0038             # s0 = 00000648
    lw      $ra, 0x0034($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80956EB0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    addiu   a2, $sp, 0x0008            # a2 = FFFFFFE8
    lui     t6, %hi(var_80957908)      # t6 = 80950000
    addiu   t6, t6, %lo(var_80957908)  # t6 = 80957908
    lw      t8, 0x0000(t6)             # 80957908
    addiu   v0, a0, 0x0610             # v0 = 00000610
    or      v1, $zero, $zero           # v1 = 00000000
    sw      t8, 0x0000(a2)             # FFFFFFE8
    lw      t7, 0x0004(t6)             # 8095790C
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    sw      t7, 0x0004(a2)             # FFFFFFEC
    lw      t8, 0x0008(t6)             # 80957910
    sw      t8, 0x0008(a2)             # FFFFFFF0
    lw      t7, 0x000C(t6)             # 80957914
    sw      t7, 0x000C(a2)             # FFFFFFF4
lbl_80956EEC:
    lbu     t9, 0x0000(v0)             # 00000610
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    bne     a3, t9, lbl_80956FB8
    sra     v1, v1, 16
    lwc1    $f0, 0x0020(v0)            # 00000630
    lwc1    $f4, 0x0014(v0)            # 00000624
    lwc1    $f2, 0x0024(v0)            # 00000634
    lwc1    $f8, 0x0018(v0)            # 00000628
    lwc1    $f12, 0x0028(v0)           # 00000638
    lwc1    $f16, 0x001C(v0)           # 0000062C
    add.s   $f6, $f4, $f0
    lbu     t0, 0x0001(v0)             # 00000611
    lwc1    $f4, 0x002C(v0)            # 0000063C
    add.s   $f10, $f8, $f2
    lwc1    $f8, 0x0030(v0)            # 00000640
    swc1    $f6, 0x0014(v0)            # 00000624
    add.s   $f18, $f16, $f12
    lwc1    $f16, 0x0034(v0)           # 00000644
    swc1    $f10, 0x0018(v0)           # 00000628
    add.s   $f6, $f0, $f4
    swc1    $f18, 0x001C(v0)           # 0000062C
    addiu   t1, t0, 0x0001             # t1 = 00000001
    add.s   $f10, $f2, $f8
    andi    t2, t1, 0x00FF             # t2 = 00000001
    sb      t1, 0x0001(v0)             # 00000611
    add.s   $f18, $f12, $f16
    swc1    $f6, 0x0020(v0)            # 00000630
    swc1    $f10, 0x0024(v0)           # 00000634
    lbu     a1, 0x000F(v0)             # 0000061F
    swc1    $f18, 0x0028(v0)           # 00000638
    bgez    t2, lbl_80956F7C
    andi    t3, t2, 0x0003             # t3 = 00000001
    beq     t3, $zero, lbl_80956F7C
    nop
    addiu   t3, t3, 0xFFFC             # t3 = FFFFFFFD
lbl_80956F7C:
    sll     t4, t3,  2
    addu    a0, a2, t4
    lbu     t5, 0x0000(a0)             # 00000000
    slti    $at, a1, 0x001F
    addiu   t8, a1, 0xFFE2             # t8 = FFFFFFE2
    sb      t5, 0x000C(v0)             # 0000061C
    lbu     t6, 0x0001(a0)             # 00000001
    sb      t6, 0x000D(v0)             # 0000061D
    lbu     t7, 0x0002(a0)             # 00000002
    bne     $at, $zero, lbl_80956FB0
    sb      t7, 0x000E(v0)             # 0000061E
    b       lbl_80956FB8
    sb      t8, 0x000F(v0)             # 0000061F
lbl_80956FB0:
    sb      $zero, 0x000F(v0)          # 0000061F
    sb      $zero, 0x0000(v0)          # 00000610
lbl_80956FB8:
    slti    $at, v1, 0x00C8
    bne     $at, $zero, lbl_80956EEC
    addiu   v0, v0, 0x0038             # v0 = 00000648
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80956FCC:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s8, 0x0058($sp)
    sw      s7, 0x0054($sp)
    or      s7, a0, $zero              # s7 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s6, 0x0050($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    addiu   s2, s7, 0x0610             # s2 = 00000610
    lw      a0, 0x0000(s8)             # 00000000
    sh      $zero, 0x0060($sp)
    jal     func_8007E2C0
    or      s1, a0, $zero              # s1 = 00000000
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f26                  # $f26 = 8.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f22                  # $f22 = 255.00
    mtc1    $at, $f20                  # $f20 = 255.00
    or      s5, $zero, $zero           # s5 = 00000000
lbl_80957044:
    lbu     t6, 0x0000(s2)             # 00000610
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     s6, 0x0600                 # s6 = 06000000
    bne     t6, $at, lbl_80957340
    addiu   s6, s6, 0x7938             # s6 = 06007938
    lh      t7, 0x0060($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    bne     t7, $zero, lbl_80957150
    addu    s4, s8, $at
    lw      a0, 0x02D0(s1)             # 000002D0
    lui     s3, 0x0600                 # s3 = 06000000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x0060($sp)
    addiu   s3, s3, 0x7928             # s3 = 06007928
    jal     func_8007DFBC
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      t0, 0x0000(v0)             # 00000000
    sw      s3, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lwc1    $f4, 0x04BC(s7)            # 000004BC
    lui     $at, 0x4F00                # $at = 4F000000
    div.s   $f6, $f4, $f20
    mul.s   $f8, $f6, $f22
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_80957130
    mfc1    t4, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t4, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_80957124
    nop
    mfc1    t4, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8095713C
    or      t4, t4, $at                # t4 = 80000000
lbl_80957124:
    b       lbl_8095713C
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f10
lbl_80957130:
    nop
    bltz    t4, lbl_80957124
    nop
lbl_8095713C:
    andi    t6, t4, 0x00FF             # t6 = 000000FF
    lui     $at, 0xFF0A                # $at = FF0A0000
    ctc1    t3, $f31
    or      t7, t6, $at                # t7 = FF0A00FF
    sw      t7, 0x0004(v1)             # 00000004
lbl_80957150:
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    lwc1    $f16, 0x04BC(s7)           # 000004BC
    lui     $at, 0x4F00                # $at = 4F000000
    or      a3, $zero, $zero           # a3 = 00000000
    div.s   $f18, $f16, $f20
    mul.s   $f4, $f18, $f22
    cfc1    t0, $f31
    ctc1    t1, $f31
    nop
    cvt.w.s $f6, $f4
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    beql    t1, $zero, lbl_809571E8
    mfc1    t1, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t1, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_809571DC
    nop
    mfc1    t1, $f6
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_809571F4
    or      t1, t1, $at                # t1 = 80000000
lbl_809571DC:
    b       lbl_809571F4
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    mfc1    t1, $f6
lbl_809571E8:
    nop
    bltz    t1, lbl_809571DC
    nop
lbl_809571F4:
    andi    t3, t1, 0x00FF             # t3 = 000000FF
    lui     $at, 0xFFFF                # $at = FFFF0000
    ctc1    t0, $f31
    or      t4, t3, $at                # t4 = FFFF00FF
    sw      t4, 0x0004(v0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lwc1    $f12, 0x0014(s2)           # 00000624
    lwc1    $f14, 0x0018(s2)           # 00000628
    jal     func_800AA7F4
    lw      a2, 0x001C(s2)             # 0000062C
    jal     func_800ABE54
    or      a0, s4, $zero              # a0 = 00000000
    lwc1    $f12, 0x0004(s2)           # 00000614
    mfc1    a2, $f24
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s3, 0x0008             # t7 = 06007930
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s3)             # 06007928
    jal     func_800AB900
    lw      a0, 0x0000(s8)             # 00000000
    sw      v0, 0x0004(s3)             # 0600792C
    lbu     t9, 0x0001(s2)             # 00000611
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    mtc1    t9, $f8                    # $f8 = 0.00
    lui     a0, %hi(var_80957918)      # a0 = 80950000
    bgez    t9, lbl_8095729C
    cvt.s.w $f10, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_8095729C:
    lbu     t0, 0x0002(s2)             # 00000612
    lui     $at, 0x4F80                # $at = 4F800000
    lui     t9, 0x8012                 # t9 = 80120000
    mtc1    t0, $f18                   # $f18 = 0.00
    bgez    t0, lbl_809572C0
    cvt.s.w $f4, $f18
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_809572C0:
    div.s   $f8, $f26, $f4
    mul.s   $f16, $f10, $f8
    trunc.w.s $f18, $f16
    mfc1    a2, $f18
    nop
    sll     a2, a2, 16
    sra     a2, a2, 16
    lw      s0, 0x02D0(s1)             # 000002D0
    sll     t4, a2,  2
    addu    a0, a0, t4
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    lw      a0, %lo(var_80957918)(a0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t6, a0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t5, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t0, t5, t9
    addu    t1, t0, $at
    sw      t1, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
lbl_80957340:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16
    sra     s5, s5, 16
    slti    $at, s5, 0x00C8
    bne     $at, $zero, lbl_80957044
    addiu   s2, s2, 0x0038             # s2 = 00000648
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    lw      s5, 0x004C($sp)
    lw      s6, 0x0050($sp)
    lw      s7, 0x0054($sp)
    lw      s8, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_80957398:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s5, 0x003C($sp)
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s8, 0x0048($sp)
    sw      s7, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a0, 0x0050($sp)
    lw      s1, 0x0050($sp)
    addiu   s1, s1, 0x0610             # s1 = 00000610
    lw      a0, 0x0000(s5)             # 00000000
    or      s8, $zero, $zero           # s8 = 00000000
    jal     func_8007E2C0
    or      s2, a0, $zero              # s2 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f20                  # $f20 = 255.00
    or      s6, $zero, $zero           # s6 = 00000000
lbl_80957400:
    lbu     t6, 0x0000(s1)             # 00000610
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     s7, 0x0600                 # s7 = 06000000
    bne     t6, $at, lbl_809575C8
    addiu   s7, s7, 0x7A78             # s7 = 06007A78
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    bne     s8, $zero, lbl_80957450
    addu    s4, s5, $at
    lui     s3, 0x0600                 # s3 = 06000000
    addiu   s3, s3, 0x79F8             # s3 = 060079F8
    lw      a0, 0x0000(s5)             # 00000000
    jal     func_8007E2C0
    addiu   s8, $zero, 0x0001          # s8 = 00000001
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
lbl_80957450:
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t0, 0xFA00                 # t0 = FA000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      t0, 0x0000(v0)             # 00000000
    lbu     t2, 0x000C(s1)             # 0000061C
    lbu     t5, 0x000D(s1)             # 0000061D
    lbu     t9, 0x000E(s1)             # 0000061E
    sll     t3, t2, 24
    lbu     t2, 0x000F(s1)             # 0000061F
    sll     t6, t5, 16
    or      t7, t3, t6                 # t7 = 00000000
    mtc1    t2, $f4                    # $f4 = 0.00
    sll     t0, t9,  8
    or      t1, t7, t0                 # t1 = FA000000
    lw      t4, 0x0050($sp)
    bgez    t2, lbl_809574AC
    cvt.s.w $f6, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_809574AC:
    lwc1    $f10, 0x04BC(t4)           # 000004BC
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    div.s   $f16, $f10, $f20
    mul.s   $f18, $f6, $f16
    cfc1    t5, $f31
    ctc1    t3, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_8095752C
    mfc1    t3, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t3, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80957520
    nop
    mfc1    t3, $f4
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80957538
    or      t3, t3, $at                # t3 = 80000000
lbl_80957520:
    b       lbl_80957538
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f4
lbl_8095752C:
    nop
    bltz    t3, lbl_80957520
    nop
lbl_80957538:
    andi    t8, t3, 0x00FF             # t8 = 000000FF
    ctc1    t5, $f31
    or      t9, t1, t8                 # t9 = FA0000FF
    sw      t9, 0x0004(v0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t0, 0xE700                 # t0 = E7000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    lwc1    $f12, 0x0014(s1)           # 00000624
    lwc1    $f14, 0x0018(s1)           # 00000628
    jal     func_800AA7F4
    lw      a2, 0x001C(s1)             # 0000062C
    jal     func_800ABE54
    or      a0, s4, $zero              # a0 = 00000000
    lwc1    $f12, 0x0004(s1)           # 00000614
    mfc1    a2, $f22
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t2, s3, 0x0008             # t2 = 06007A00
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      t4, 0x0000(s3)             # 060079F8
    jal     func_800AB900
    lw      a0, 0x0000(s5)             # 00000000
    sw      v0, 0x0004(s3)             # 060079FC
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
lbl_809575C8:
    addiu   s6, s6, 0x0001             # s6 = 00000001
    sll     s6, s6, 16
    sra     s6, s6, 16
    slti    $at, s6, 0x00C8
    bne     $at, $zero, lbl_80957400
    addiu   s1, s1, 0x0038             # s1 = 00000648
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
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    nop
    nop

.section .data

var_80957620: .word 0x00990500, 0x00000215, 0x009E0000, 0x000031D0
.word func_80955A58
.word func_80955B94
.word func_80956378
.word func_809568DC
var_80957640: .word \
0x00000000, 0xFFCFFFFF, 0x01000000, 0x00040088, \
0x00000000, 0x01050100, 0x15000640, 0x00000000, \
0x0005012C, 0x00000000, 0xFFCFFFFF, 0x01000000, \
0x00040008, 0x00000000, 0x01010100, 0x0C000640, \
0x00000000, 0x00050190, 0x00000000, 0xFFCFFFFF, \
0x01000000, 0x00040008, 0x00000000, 0x01010100, \
0x0E000320, 0x00000000, 0x0004012C, 0x00000000, \
0xFFCFFFFF, 0x01000000, 0x00040008, 0x00000000, \
0x01010100, 0x0F000640, 0x00000000, 0x0004012C, \
0x00000000, 0xFFCFFFFF, 0x01000000, 0x00040008, \
0x00000000, 0x01010100, 0x100007D0, 0x00000000, \
0x0004012C, 0x00000000, 0xFFCFFFFF, 0x01000000, \
0x00040008, 0x00000000, 0x01010100, 0x11000320, \
0x00000000, 0x0004012C, 0x00000000, 0xFFCFFFFF, \
0x01000000, 0x00040008, 0x00000000, 0x01010100, \
0x12000640, 0x00000000, 0x0004012C, 0x00000000, \
0xFFCFFFFF, 0x01000000, 0x00040008, 0x00000000, \
0x01010100, 0x130007D0, 0x00000000, 0x0004012C, \
0x00000000, 0xFFCFFFFF, 0x01000000, 0x00040008, \
0x00000000, 0x01010100, 0x04000898, 0x00000000, \
0x00040190, 0x00000000, 0xFFCFFFFF, 0x01000000, \
0x00040008, 0x00000000, 0x01010100, 0x04001388, \
0x00000000, 0x0004012C, 0x00000000, 0xFFCFFFFF, \
0x01000000, 0x00040008, 0x00000000, 0x01010100, \
0x08000898, 0x00000000, 0x00040190, 0x00000000, \
0xFFCFFFFF, 0x01000000, 0x00040008, 0x00000000, \
0x01010100, 0x08001388, 0x00000000, 0x0004012C
var_809577F0: .word 0x0A110939, 0x10000000, 0x0000000C
.word var_80957640
var_80957800: .word 0x18000002, 0x00190019, 0xFF000000
var_8095780C: .word \
0x060010B4, 0x3F800000, 0x00000000, 0xBF800000, \
0x03000000, 0x00000000, 0x06005C64, 0x3F800000, \
0x00000000, 0xBF800000, 0x03000000, 0xC1200000, \
0x06006044, 0x00000000, 0x00000000, 0xBF800000, \
0x03000000, 0xC1200000, 0x06006A18, 0x3F800000, \
0x00000000, 0xBF800000, 0x01000000, 0xC1200000, \
0x06006B64, 0x00000000, 0x00000000, 0xBF800000, \
0x03000000, 0xC1200000
var_80957884: .word 0x00000000, 0x00000000, 0x00000000
var_80957890: .word 0x00000000, 0x00000000, 0x00000000
var_8095789C: .word 0x00000000, 0x00000000, 0x00000000
var_809578A8: .word 0x45D48000, 0x00000000, 0x00000000
var_809578B4: .word 0x45D48000, 0x00000000, 0x00000000
var_809578C0: .word 0x00000000, 0x00000000, 0x00000000
var_809578CC: .word 0x00000000, 0x00000000, 0x00000000
var_809578D8: .word 0x00000000, 0x00000000, 0x00000000
var_809578E4: .word 0x00000000, 0x00000000, 0x00000000
var_809578F0: .word 0xFFFFC8FF, 0xC8C8C8FF, 0xFFFF00FF
var_809578FC: .word 0x00FF00FF, 0x0000FFFF, 0xFF0000FF
var_80957908: .word 0xFF800000, 0xFF000000, 0xFFFF0000, 0xFF000000
var_80957918: .word \
0x04058EE0, 0x04058AE0, 0x040586E0, 0x040582E0, \
0x04057EE0, 0x04057AE0, 0x040576E0, 0x040572E0, \
0x00000000, 0x00000000

.section .rodata

var_80957940: .word 0x43360B61
var_80957944: .word 0x3E4CCCCD
var_80957948: .word 0x3E99999A
var_8095794C: .word 0x3F19999A
var_80957950: .word 0x3E4CCCCD
var_80957954: .word 0x3F666666
var_80957958: .word 0x3C23D70A
var_8095795C: .word 0x3C23D70A
var_80957960: .word 0x4622F983
var_80957964: .word 0x4622F983
var_80957968: .word 0x3F19999A
var_8095796C: .word 0x3E4CCCCD
var_80957970: .word 0x3ECCCCCD
var_80957974: .word 0x3BC49BA6
var_80957978: .word 0x3F666666
var_8095797C: .word 0x3E4CCCCD
var_80957980: .word 0x3ECCCCCD, 0x00000000, 0x00000000, 0x00000000

