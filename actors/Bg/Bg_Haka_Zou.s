.section .text
func_8099E950:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_8099F9F8)      # a1 = 809A0000
    addiu   a1, a1, %lo(var_8099F9F8)  # a1 = 8099F9F8
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sh      t0, 0x001C(s0)             # 0000001C
    lh      t1, 0x001C(s0)             # 0000001C
    sra     t8, t6,  8
    sb      t8, 0x0159(s0)             # 00000159
    bne     t1, $at, lbl_8099EAE0
    lw      a0, 0x003C($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_8099FA10)     # $at = 809A0000
    lwc1    $f4, %lo(var_8099FA10)($at)
    lui     $at, %hi(var_8099FA14)     # $at = 809A0000
    lwc1    $f8, %lo(var_8099FA14)($at)
    mul.s   $f6, $f0, $f4
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f10, $f6, $f8
    mfc1    a1, $f10
    jal     func_80020F88
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x4580                # $at = 45800000
    mtc1    $at, $f12                  # $f12 = 4096.00
    c.lt.s  $f0, $f16
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bc1f    lbl_8099EA04
    nop
    beq     $zero, $zero, lbl_8099EA04
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
lbl_8099EA04:
    jal     func_80026D90
    sw      v1, 0x0028($sp)
    lw      v1, 0x0028($sp)
    lh      t2, 0x00B6(s0)             # 000000B6
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sh      t6, 0x015A(s0)             # 0000015A
    multu   t2, v1
    addiu   a0, $zero, 0x0100          # a0 = 00000100
    addiu   a1, $zero, 0x0300          # a1 = 00000300
    mflo    t3
    mtc1    t3, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    add.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t5, $f8
    jal     func_80063BF0
    sh      t5, 0x0032(s0)             # 00000032
    jal     func_800CDCCC              # Rand.Next() float
    sh      v0, 0x0026($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lh      t7, 0x0026($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_8099EA7C
    nop
    beq     $zero, $zero, lbl_8099EA7C
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
lbl_8099EA7C:
    multu   v1, t7
    addiu   a0, $zero, 0x0400          # a0 = 00000400
    addiu   a1, $zero, 0x0800          # a1 = 00000800
    mflo    t8
    sh      t8, 0x0030(s0)             # 00000030
    jal     func_80063BF0
    nop
    jal     func_800CDCCC              # Rand.Next() float
    sh      v0, 0x0026($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lh      t9, 0x0026($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_8099EAC8
    nop
    beq     $zero, $zero, lbl_8099EAC8
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
lbl_8099EAC8:
    multu   v1, t9
    lh      v0, 0x001C(s0)             # 0000001C
    mflo    t0
    sh      t0, 0x0034(s0)             # 00000034
    beq     $zero, $zero, lbl_8099EB4C
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_8099EAE0:
    addiu   a1, s0, 0x015C             # a1 = 0000015C
    jal     func_8004AB7C
    sw      a1, 0x0020($sp)
    lui     a3, %hi(var_8099F9A0)      # a3 = 809A0000
    addiu   a3, a3, %lo(var_8099F9A0)  # a3 = 8099F9A0
    lw      a0, 0x003C($sp)
    lw      a1, 0x0020($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00
    lw      a1, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_8099FA18)     # $at = 809A0000
    bnel    v0, $zero, lbl_8099EB4C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lwc1    $f0, %lo(var_8099FA18)($at)
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f18                  # $f18 = 2000.00
    lh      v0, 0x001C(s0)             # 0000001C
    swc1    $f0, 0x00F8(s0)            # 000000F8
    swc1    $f0, 0x00FC(s0)            # 000000FC
    swc1    $f18, 0x00F4(s0)           # 000000F4
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_8099EB4C:
    bne     v0, $at, lbl_8099EB74
    lw      a0, 0x003C($sp)
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x008D          # a1 = 0000008D
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    beq     $zero, $zero, lbl_8099EB8C
    sb      v0, 0x0158(s0)             # 00000158
lbl_8099EB74:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0069          # a1 = 00000069
    sb      v0, 0x0158(s0)             # 00000158
lbl_8099EB8C:
    lb      t1, 0x0158(s0)             # 00000158
    bgezl   t1, lbl_8099EBAC
    lh      t2, 0x001C(s0)             # 0000001C
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8099EC18
    nop
    lh      t2, 0x001C(s0)             # 0000001C
lbl_8099EBAC:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a0, 0x003C($sp)
    beq     t2, $at, lbl_8099EC18
    nop
    jal     func_8002049C
    lbu     a1, 0x0159(s0)             # 00000159
    beq     v0, $zero, lbl_8099EC18
    nop
    lh      t3, 0x001C(s0)             # 0000001C
    lui     $at, 0x42A0                # $at = 42A00000
    beql    t3, $zero, lbl_8099EBF0
    mtc1    $at, $f6                   # $f6 = 80.00
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8099EC18
    nop
    mtc1    $at, $f6                   # $f6 = 0.00
lbl_8099EBF0:
    lui     $at, 0x4258                # $at = 42580000
    lwc1    $f4, 0x002C(s0)            # 0000002C
    mtc1    $at, $f16                  # $f16 = 54.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    sub.s   $f8, $f4, $f6
    addiu   t4, $zero, 0xC000          # t4 = FFFFC000
    sh      t4, 0x00B4(s0)             # 000000B4
    sub.s   $f18, $f10, $f16
    swc1    $f8, 0x002C(s0)            # 0000002C
    swc1    $f18, 0x0028(s0)           # 00000028
lbl_8099EC18:
    lui     t5, %hi(func_8099EE04)     # t5 = 809A0000
    addiu   t5, t5, %lo(func_8099EE04) # t5 = 8099EE04
    sw      t5, 0x0154(s0)             # 00000154
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8099EC38:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lw      a0, 0x001C($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     t6, $at, lbl_8099EC78
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(a3)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a3, 0x015C             # a1 = 0000015C
lbl_8099EC78:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8099EC88:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s6, 0x0060($sp)
    sw      s1, 0x004C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s5, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f28, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f28                  # $f28 = 1000.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f26                  # $f26 = 200.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f24                  # $f24 = 60.00
    lui     $at, 0x42E0                # $at = 42E00000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f22                  # $f22 = 112.00
    lui     $at, 0x4120                # $at = 41200000
    lui     s4, %hi(var_8099F9CC)      # s4 = 809A0000
    mtc1    $at, $f20                  # $f20 = 10.00
    addiu   s4, s4, %lo(var_8099F9CC)  # s4 = 8099F9CC
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s5, $zero, 0x0002          # s5 = 00000002
    addiu   s3, $sp, 0x0078            # s3 = FFFFFFE8
    addiu   s2, $sp, 0x0084            # s2 = FFFFFFF4
    swc1    $f6, 0x007C($sp)
    swc1    $f8, 0x0080($sp)
    swc1    $f4, 0x0078($sp)
lbl_8099ED28:
    bne     s0, $zero, lbl_8099ED4C
    nop
    jal     func_80026D90
    mov.s   $f12, $f20
    add.s   $f16, $f0, $f22
    lwc1    $f10, 0x0024(s1)           # 00000024
    sub.s   $f18, $f10, $f16
    beq     $zero, $zero, lbl_8099ED60
    swc1    $f18, 0x0084($sp)
lbl_8099ED4C:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f4, 0x0024(s1)            # 00000024
    add.s   $f6, $f0, $f4
    swc1    $f6, 0x0084($sp)
lbl_8099ED60:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f10, $f24, $f0
    lwc1    $f8, 0x0028(s1)            # 00000028
    mul.s   $f4, $f22, $f0
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0088($sp)
    lwc1    $f18, 0x002C(s1)           # 0000002C
    add.s   $f6, $f18, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x008C($sp)
    mul.s   $f8, $f0, $f26
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    sw      t8, 0x0014($sp)
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFF4
    or      a2, s3, $zero              # a2 = FFFFFFE8
    or      a3, s4, $zero              # a3 = 8099F9CC
    add.s   $f10, $f8, $f28
    trunc.w.s $f16, $f10
    mfc1    t7, $f16
    jal     func_8001C1C4
    sw      t7, 0x0010($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s5, lbl_8099ED28
    nop
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    ldc1    $f28, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_8099EE04:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lb      a1, 0x0158(s0)             # 00000158
    jal     func_80081688
    addu    a0, a0, $at
    beq     v0, $zero, lbl_8099EF60
    lui     t7, %hi(func_8099F95C)     # t7 = 809A0000
    lh      t8, 0x001C(s0)             # 0000001C
    lb      t6, 0x0158(s0)             # 00000158
    addiu   t7, t7, %lo(func_8099F95C) # t7 = 8099F95C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sw      t7, 0x0134(s0)             # 00000134
    bne     t8, $at, lbl_8099EE64
    sb      t6, 0x001E(s0)             # 0000001E
    lui     t9, %hi(func_8099EF74)     # t9 = 809A0000
    addiu   t9, t9, %lo(func_8099EF74) # t9 = 8099EF74
    beq     $zero, $zero, lbl_8099EF60
    sw      t9, 0x0154(s0)             # 00000154
lbl_8099EE64:
    lw      a0, 0x002C($sp)
    jal     func_80020FA4
    or      a1, s0, $zero              # a1 = 00000000
    sw      $zero, 0x0024($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x6F70             # a0 = 06006F70
    bne     v0, $zero, lbl_8099EED0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    lh      t3, 0x01A2(s0)             # 000001A2
    lh      t5, 0x01A6(s0)             # 000001A6
    addiu   t0, $zero, 0x0050          # t0 = 00000050
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    addiu   t2, $zero, 0xFFE2          # t2 = FFFFFFE2
    addiu   t4, t3, 0xFFC8             # t4 = FFFFFFC8
    addiu   t6, t5, 0x0038             # t6 = 00000038
    sh      t0, 0x019C(s0)             # 0000019C
    sh      t1, 0x019E(s0)             # 0000019E
    sh      t2, 0x01A0(s0)             # 000001A0
    sh      t4, 0x01A2(s0)             # 000001A2
    sh      t6, 0x01A6(s0)             # 000001A6
    lui     $at, %hi(var_8099FA1C)     # $at = 809A0000
    lwc1    $f4, %lo(var_8099FA1C)($at)
    beq     $zero, $zero, lbl_8099EF10
    swc1    $f4, 0x00F8(s0)            # 000000F8
lbl_8099EED0:
    bne     v0, $at, lbl_8099EEF4
    lui     a0, 0x0600                 # a0 = 06000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x5E30             # a0 = 06005E30
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    addiu   t7, $zero, 0xFFCE          # t7 = FFFFFFCE
    beq     $zero, $zero, lbl_8099EF10
    sh      t7, 0x01A0(s0)             # 000001A0
lbl_8099EEF4:
    addiu   a0, a0, 0x0C2C             # a0 = 00000C2C
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    addiu   t8, $zero, 0x0037          # t8 = 00000037
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sh      t8, 0x019C(s0)             # 0000019C
    sh      t9, 0x019E(s0)             # 0000019E
lbl_8099EF10:
    lw      a0, 0x002C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lh      t0, 0x001C(s0)             # 0000001C
    sw      v0, 0x013C(s0)             # 0000013C
    lw      a0, 0x002C($sp)
    bne     t0, $zero, lbl_8099EF54
    nop
    jal     func_8002049C
    lbu     a1, 0x0159(s0)             # 00000159
    beq     v0, $zero, lbl_8099EF54
    lui     t1, %hi(func_8099F908)     # t1 = 809A0000
    addiu   t1, t1, %lo(func_8099F908) # t1 = 8099F908
    beq     $zero, $zero, lbl_8099EF60
    sw      t1, 0x0154(s0)             # 00000154
lbl_8099EF54:
    lui     t2, %hi(func_8099F39C)     # t2 = 809A0000
    addiu   t2, t2, %lo(func_8099F39C) # t2 = 8099F39C
    sw      t2, 0x0154(s0)             # 00000154
lbl_8099EF60:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8099EF74:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x015A(a0)             # 0000015A
    lui     $at, 0xC100                # $at = C1000000
    beq     v0, $zero, lbl_8099EF94
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
lbl_8099EF94:
    lh      t7, 0x00B4(a0)             # 000000B4
    lh      t8, 0x0030(a0)             # 00000030
    lh      t0, 0x00B8(a0)             # 000000B8
    lh      t1, 0x0034(a0)             # 00000034
    lhu     t3, 0x0088(a0)             # 00000088
    addu    t9, t7, t8
    addu    t2, t0, t1
    andi    t4, t3, 0x0002             # t4 = 00000000
    sh      t9, 0x00B4(a0)             # 000000B4
    beq     t4, $zero, lbl_8099F038
    sh      t2, 0x00B8(a0)             # 000000B8
    lwc1    $f0, 0x0060(a0)            # 00000060
    mtc1    $at, $f4                   # $f4 = -8.00
    lui     $at, 0x4120                # $at = 41200000
    c.lt.s  $f0, $f4
    nop
    bc1f    lbl_8099F02C
    nop
    mtc1    $at, $f2                   # $f2 = 10.00
    lui     $at, %hi(var_8099FA20)     # $at = 809A0000
    lwc1    $f6, %lo(var_8099FA20)($at)
    mul.s   $f8, $f0, $f6
    swc1    $f8, 0x0060(a0)            # 00000060
    lwc1    $f0, 0x0060(a0)            # 00000060
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_8099F010
    swc1    $f0, 0x0060(a0)            # 00000060
    beq     $zero, $zero, lbl_8099F010
    swc1    $f2, 0x0060(a0)            # 00000060
    swc1    $f0, 0x0060(a0)            # 00000060
lbl_8099F010:
    lhu     t5, 0x0088(a0)             # 00000088
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    andi    t6, t5, 0xFFFC             # t6 = 00000000
    sh      t6, 0x0088(a0)             # 00000088
    beq     $zero, $zero, lbl_8099F038
    swc1    $f10, 0x0068(a0)           # 00000068
lbl_8099F02C:
    jal     func_80020EB4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
lbl_8099F038:
    lh      t7, 0x015A(a0)             # 0000015A
    bnel    t7, $zero, lbl_8099F050
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    nop
    lw      $ra, 0x0014($sp)
lbl_8099F050:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8099F05C:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lh      a0, 0x00B6(s1)             # 000000B6
    addiu   a0, a0, 0xC000             # a0 = FFFFC000
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      a0, 0x00B6(s1)             # 000000B6
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f20                  # $f20 = 40.00
    addiu   a0, a0, 0xC000             # a0 = FFFFC000
    sll     a0, a0, 16
    mul.s   $f22, $f0, $f20
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     s3, %hi(var_8099F9CC)      # s3 = 809A0000
    mul.s   $f24, $f0, $f20
    addiu   s3, s3, %lo(var_8099F9CC)  # s3 = 8099F9CC
    addiu   s7, $zero, 0xFFC9          # s7 = FFFFFFC9
    addiu   s4, s2, 0x1C24             # s4 = 00001C24
    addiu   s8, $zero, 0x006E          # s8 = 0000006E
    addiu   s6, $zero, 0x0003          # s6 = 00000003
    addiu   s5, $sp, 0x008C            # s5 = FFFFFFEC
    mtc1    s7, $f4                    # $f4 = NaN
lbl_8099F0F4:
    or      s0, $zero, $zero           # s0 = 00000000
    cvt.s.w $f20, $f4
    addiu   t6, s0, 0xFFFF             # t6 = FFFFFFFF
lbl_8099F100:
    mtc1    t6, $f6                    # $f6 = NaN
    lwc1    $f8, 0x0024(s1)            # 00000024
    or      a0, s4, $zero              # a0 = 00001C24
    cvt.s.w $f0, $f6
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x00BE          # a2 = 000000BE
    mul.s   $f10, $f0, $f22
    add.s   $f16, $f8, $f10
    mul.s   $f4, $f0, $f24
    swc1    $f16, 0x008C($sp)
    lwc1    $f18, 0x002C(s1)           # 0000002C
    lw      a3, 0x008C($sp)
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0094($sp)
    lwc1    $f8, 0x0028(s1)            # 00000028
    lwc1    $f18, 0x0094($sp)
    sw      $zero, 0x0018($sp)
    add.s   $f10, $f8, $f20
    swc1    $f18, 0x0014($sp)
    swc1    $f10, 0x0090($sp)
    lwc1    $f16, 0x0090($sp)
    swc1    $f16, 0x0010($sp)
    lh      t7, 0x00B6(s1)             # 000000B6
    sw      $zero, 0x0020($sp)
    sw      t7, 0x001C($sp)
    lh      t8, 0x001C(s1)             # 0000001C
    addiu   t9, t8, 0x0002             # t9 = 00000002
    jal     func_80025110              # ActorSpawn
    sw      t9, 0x0024($sp)
    addiu   t0, $zero, 0x03E8          # t0 = 000003E8
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFEC
    or      a2, s3, $zero              # a2 = 8099F9CC
    jal     func_8001C1C4
    or      a3, s3, $zero              # a3 = 8099F9CC
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s6, lbl_8099F100
    addiu   t6, s0, 0xFFFF             # t6 = 00000000
    addiu   s7, s7, 0x0037             # s7 = 00000000
    bnel    s7, s8, lbl_8099F0F4
    mtc1    s7, $f4                    # $f4 = 0.00
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
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_8099F1EC:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s6, 0x0050($sp)
    sdc1    $f20, 0x0030($sp)
    lui     $at, 0x4120                # $at = 41200000
    lui     s6, 0x0600                 # s6 = 06000000
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    mtc1    $at, $f20                  # $f20 = 10.00
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    addiu   s3, $sp, 0x0074            # s3 = FFFFFFF4
    addiu   s6, s6, 0x0A10             # s6 = 06000A10
    sw      $ra, 0x005C($sp)
    sw      s8, 0x0058($sp)
    sw      s7, 0x0054($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s0, 0x0038($sp)
    lh      t6, 0x01A2(s1)             # 000001A2
    mfc1    a2, $f20
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    cvt.s.w $f6, $f4
    addiu   t2, $zero, 0x008D          # t2 = 0000008D
    addiu   t3, $zero, 0x0028          # t3 = 00000028
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF4
    or      a3, $zero, $zero           # a3 = 00000000
    swc1    $f6, 0x0074($sp)
    lh      t7, 0x01A4(s1)             # 000001A4
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0078($sp)
    lh      t8, 0x01A6(s1)             # 000001A6
    sw      s6, 0x0024($sp)
    sw      t3, 0x0020($sp)
    mtc1    t8, $f16                   # $f16 = 0.00
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    cvt.s.w $f18, $f16
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    jal     func_8001D29C
    swc1    $f18, 0x007C($sp)
    lui     s4, %hi(var_8099F9CC)      # s4 = 809A0000
    addiu   s4, s4, %lo(var_8099F9CC)  # s4 = 8099F9CC
    addiu   s5, $zero, 0xFFE7          # s5 = FFFFFFE7
    addiu   s8, $zero, 0x004B          # s8 = 0000004B
    addiu   s7, $zero, 0x004B          # s7 = 0000004B
    addiu   s0, $zero, 0xFFE7          # s0 = FFFFFFE7
lbl_8099F2C4:
    lh      t4, 0x01A2(s1)             # 000001A2
lbl_8099F2C8:
    mfc1    a2, $f20
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    addu    t5, t4, s0
    mtc1    t5, $f4                    # $f4 = 0.00
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    cvt.s.w $f6, $f4
    addiu   t1, $zero, 0x008D          # t1 = 0000008D
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF4
    or      a3, $zero, $zero           # a3 = 00000000
    swc1    $f6, 0x0074($sp)
    lh      t6, 0x01A6(s1)             # 000001A6
    sw      s6, 0x0024($sp)
    sw      t2, 0x0020($sp)
    addu    t7, t6, s5
    mtc1    t7, $f8                    # $f8 = 0.00
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    cvt.s.w $f10, $f8
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    jal     func_8001D29C
    swc1    $f10, 0x007C($sp)
    addiu   t3, $zero, 0x03E8          # t3 = 000003E8
    addiu   t4, $zero, 0x0032          # t4 = 00000032
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF4
    or      a2, s4, $zero              # a2 = 8099F9CC
    jal     func_8001C1C4
    or      a3, s4, $zero              # a3 = 8099F9CC
    addiu   s0, s0, 0x0032             # s0 = 00000019
    bnel    s0, s7, lbl_8099F2C8
    lh      t4, 0x01A2(s1)             # 000001A2
    addiu   s5, s5, 0x0032             # s5 = 00000019
    bnel    s5, s8, lbl_8099F2C4
    addiu   s0, $zero, 0xFFE7          # s0 = FFFFFFE7
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0030($sp)
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
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_8099F39C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lbu     t6, 0x016D(s0)             # 0000016D
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_8099F480
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800204D0
    lbu     a1, 0x0159(s0)             # 00000159
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    lui     t9, %hi(func_8099F4E0)     # t9 = 809A0000
    bne     v0, $zero, lbl_8099F418
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t9, t9, %lo(func_8099F4E0) # t9 = 8099F4E0
    sh      t8, 0x015A(s0)             # 0000015A
    sw      t9, 0x0154(s0)             # 00000154
    sw      $zero, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0D48          # a1 = 00000D48
    addiu   a2, $zero, 0x03E7          # a2 = 000003E7
    jal     func_8006B6FC
    or      a3, s0, $zero              # a3 = 00000000
    beq     $zero, $zero, lbl_8099F490
    lw      $ra, 0x0024($sp)
lbl_8099F418:
    bne     v0, $at, lbl_8099F454
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8099F1EC
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      $zero, 0x0134(s0)          # 00000134
    sh      t0, 0x015A(s0)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2802          # a1 = 00002802
    lui     t1, %hi(func_8099F4A0)     # t1 = 809A0000
    addiu   t1, t1, %lo(func_8099F4A0) # t1 = 8099F4A0
    beq     $zero, $zero, lbl_8099F48C
    sw      t1, 0x0154(s0)             # 00000154
lbl_8099F454:
    jal     func_8099F05C
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      t2, 0x015A(s0)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2810          # a1 = 00002810
    lui     t3, %hi(func_8099F4A0)     # t3 = 809A0000
    addiu   t3, t3, %lo(func_8099F4A0) # t3 = 8099F4A0
    beq     $zero, $zero, lbl_8099F48C
    sw      t3, 0x0154(s0)             # 00000154
lbl_8099F480:
    addu    a1, s1, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x015C             # a2 = 0000015C
lbl_8099F48C:
    lw      $ra, 0x0024($sp)
lbl_8099F490:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8099F4A0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x015A(a0)             # 0000015A
    beq     v0, $zero, lbl_8099F4C0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_8099F4C0:
    bnel    v0, $zero, lbl_8099F4D4
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    nop
    lw      $ra, 0x0014($sp)
lbl_8099F4D4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8099F4E0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lh      v0, 0x015A(s0)             # 0000015A
    lui     $at, 0x4348                # $at = 43480000
    beq     v0, $zero, lbl_8099F50C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(s0)             # 0000015A
    lh      v0, 0x015A(s0)             # 0000015A
lbl_8099F50C:
    bgez    v0, lbl_8099F520
    andi    t7, v0, 0x0003             # t7 = 00000000
    beq     t7, $zero, lbl_8099F520
    nop
    addiu   t7, t7, 0xFFFC             # t7 = FFFFFFFC
lbl_8099F520:
    bne     t7, $zero, lbl_8099F5C4
    nop
    mtc1    $at, $f12                  # $f12 = 200.00
    jal     func_80026D90
    nop
    lui     $at, 0x4260                # $at = 42600000
    mtc1    $at, $f6                   # $f6 = 56.00
    lwc1    $f4, 0x0024(s0)            # 00000024
    sub.s   $f8, $f4, $f6
    add.s   $f10, $f0, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x002C($sp)
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f16                  # $f16 = 80.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x4348                # $at = 43480000
    mul.s   $f18, $f0, $f16
    mtc1    $at, $f12                  # $f12 = 200.00
    add.s   $f6, $f18, $f4
    jal     func_80026D90
    swc1    $f6, 0x0030($sp)
    lui     $at, 0x4260                # $at = 42600000
    mtc1    $at, $f10                  # $f10 = 56.00
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     a2, %hi(var_8099F9CC)      # a2 = 809A0000
    addiu   a2, a2, %lo(var_8099F9CC)  # a2 = 8099F9CC
    add.s   $f16, $f8, $f10
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    addiu   t9, $zero, 0x0046          # t9 = 00000046
    sw      t9, 0x0014($sp)
    add.s   $f18, $f0, $f16
    sw      t8, 0x0010($sp)
    or      a3, a2, $zero              # a3 = 8099F9CC
    lw      a0, 0x003C($sp)
    swc1    $f18, 0x0034($sp)
    jal     func_8001C97C
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x180E          # a1 = 0000180E
    lh      v0, 0x015A(s0)             # 0000015A
lbl_8099F5C4:
    bne     v0, $zero, lbl_8099F5DC
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    lui     t1, %hi(func_8099F5F0)     # t1 = 809A0000
    addiu   t1, t1, %lo(func_8099F5F0) # t1 = 8099F5F0
    sh      t0, 0x015A(s0)             # 0000015A
    sw      t1, 0x0154(s0)             # 00000154
lbl_8099F5DC:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8099F5F0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    mul.s   $f4, $f0, $f12
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    add.s   $f2, $f4, $f12
    swc1    $f2, 0x0024($sp)
    lwc1    $f6, 0x0010(s0)            # 00000010
    add.s   $f16, $f2, $f2
    sub.s   $f10, $f6, $f8
    mfc1    a2, $f16
    mfc1    a1, $f10
    jal     func_8006385C
    nop
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    lwc1    $f18, 0x000C(s0)           # 0000000C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a2, 0x0024($sp)
    sub.s   $f6, $f18, $f4
    mfc1    a1, $f6
    jal     func_8006385C
    nop
    beq     v0, $zero, lbl_8099F6AC
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x015A(s0)             # 0000015A
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    beq     v0, $zero, lbl_8099F690
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(s0)             # 0000015A
    lh      v0, 0x015A(s0)             # 0000015A
lbl_8099F690:
    bne     v0, $zero, lbl_8099F6B4
    lui     t9, %hi(func_8099F6C8)     # t9 = 809A0000
    addiu   t9, t9, %lo(func_8099F6C8) # t9 = 8099F6C8
    sh      t7, 0x015A(s0)             # 0000015A
    sh      t8, 0x0030(s0)             # 00000030
    beq     $zero, $zero, lbl_8099F6B4
    sw      t9, 0x0154(s0)             # 00000154
lbl_8099F6AC:
    jal     func_8099EC88
    lw      a1, 0x002C($sp)
lbl_8099F6B4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8099F6C8:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s7, 0x0060($sp)
    sw      s5, 0x0058($sp)
    or      s5, a1, $zero              # s5 = 00000000
    or      s7, a0, $zero              # s7 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s6, 0x005C($sp)
    sw      s4, 0x0054($sp)
    sw      s3, 0x0050($sp)
    sw      s2, 0x004C($sp)
    sw      s1, 0x0048($sp)
    sw      s0, 0x0044($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lh      t6, 0x0030(s7)             # 00000030
    lui     $at, 0x3E00                # $at = 3E000000
    mtc1    $at, $f6                   # $f6 = 0.13
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   a0, s7, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0xC000          # a1 = FFFFC000
    cvt.s.w $f0, $f4
    mul.s   $f8, $f0, $f6
    add.s   $f10, $f0, $f8
    trunc.w.s $f16, $f10
    mfc1    t8, $f16
    nop
    sh      t8, 0x0030(s7)             # 00000030
    jal     func_80063704
    lh      a2, 0x0030(s7)             # 00000030
    beq     v0, $zero, lbl_8099F838
    or      s6, $zero, $zero           # s6 = 00000000
    lui     $at, 0x42E0                # $at = 42E00000
    mtc1    $at, $f28                  # $f28 = 112.00
    lwc1    $f18, 0x0024(s7)           # 00000024
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f26                  # $f26 = 50.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f24                  # $f24 = 1000.00
    swc1    $f18, 0x007C($sp)
    lwc1    $f4, 0x0028(s7)            # 00000028
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f22                  # $f22 = 200.00
    lui     $at, %hi(var_8099FA24)     # $at = 809A0000
    lui     s1, %hi(var_8099F9CC)      # s1 = 809A0000
    addiu   s1, s1, %lo(var_8099F9CC)  # s1 = 8099F9CC
    lwc1    $f20, %lo(var_8099FA24)($at)
    addiu   s4, $zero, 0x0004          # s4 = 00000004
    addiu   s3, $sp, 0x007C            # s3 = FFFFFFF4
    addiu   s2, $zero, 0x0002          # s2 = 00000002
    swc1    $f4, 0x0080($sp)
lbl_8099F79C:
    lwc1    $f6, 0x002C(s7)            # 0000002C
    or      s0, $zero, $zero           # s0 = 00000000
    swc1    $f6, 0x0084($sp)
lbl_8099F7A8:
    bne     s0, s2, lbl_8099F7B8
    lwc1    $f8, 0x0084($sp)
    beq     $zero, $zero, lbl_8099F7BC
    mov.s   $f0, $f20
lbl_8099F7B8:
    mov.s   $f0, $f26
lbl_8099F7BC:
    sub.s   $f10, $f8, $f0
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0084($sp)
    mul.s   $f16, $f0, $f22
    addiu   t1, $zero, 0x00C8          # t1 = 000000C8
    sw      t1, 0x0014($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF4
    or      a2, s1, $zero              # a2 = 8099F9CC
    or      a3, s1, $zero              # a3 = 8099F9CC
    add.s   $f18, $f16, $f24
    trunc.w.s $f4, $f18
    mfc1    t0, $f4
    jal     func_8001C1C4
    sw      t0, 0x0010($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s4, lbl_8099F7A8
    nop
    lwc1    $f6, 0x007C($sp)
    addiu   s6, s6, 0x0001             # s6 = 00000001
    sub.s   $f8, $f6, $f28
    bne     s6, s2, lbl_8099F79C
    swc1    $f8, 0x007C($sp)
    or      a0, s7, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x281D          # a1 = 0000281D
    lui     t3, %hi(func_8099F878)     # t3 = 809A0000
    addiu   t2, $zero, 0x0019          # t2 = 00000019
    addiu   t3, t3, %lo(func_8099F878) # t3 = 8099F878
    sh      t2, 0x015A(s7)             # 0000015A
    sw      t3, 0x0154(s7)             # 00000154
lbl_8099F838:
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    ldc1    $f28, 0x0038($sp)
    lw      s0, 0x0044($sp)
    lw      s1, 0x0048($sp)
    lw      s2, 0x004C($sp)
    lw      s3, 0x0050($sp)
    lw      s4, 0x0054($sp)
    lw      s5, 0x0058($sp)
    lw      s6, 0x005C($sp)
    lw      s7, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_8099F878:
    sw      a1, 0x0004($sp)
    lh      v0, 0x015A(a0)             # 0000015A
    lui     $at, 0xC170                # $at = C1700000
    lui     t9, %hi(func_8099F908)     # t9 = 809A0000
    beq     v0, $zero, lbl_8099F898
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_8099F898:
    bgez    v0, lbl_8099F8AC
    andi    t7, v0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_8099F8AC
    nop
    addiu   t7, t7, 0xFFFE             # t7 = FFFFFFFE
lbl_8099F8AC:
    beq     t7, $zero, lbl_8099F8C4
    andi    t8, v0, 0x00FE             # t8 = 00000000
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f0                   # $f0 = 15.00
    beq     $zero, $zero, lbl_8099F8D0
    mtc1    t8, $f4                    # $f4 = 0.00
lbl_8099F8C4:
    mtc1    $at, $f0                   # $f0 = 15.00
    nop
    mtc1    t8, $f4                    # $f4 = 0.00
lbl_8099F8D0:
    lui     $at, %hi(var_8099FA28)     # $at = 809A0000
    lwc1    $f8, %lo(var_8099FA28)($at)
    cvt.s.w $f6, $f4
    lwc1    $f18, 0x0028(a0)           # 00000028
    addiu   t9, t9, %lo(func_8099F908) # t9 = 8099F908
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f16, $f10, $f0
    add.s   $f4, $f18, $f16
    bne     v0, $zero, lbl_8099F900
    swc1    $f4, 0x0028(a0)            # 00000028
    sw      t9, 0x0154(a0)             # 00000154
lbl_8099F900:
    jr      $ra
    nop


func_8099F908:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_8099F918:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lh      t6, 0x001C(a0)             # 0000001C
    bnel    t6, $at, lbl_8099F950
    lw      $ra, 0x0014($sp)
    jal     func_8002121C
    nop
    lw      $ra, 0x0014($sp)
lbl_8099F950:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8099F95C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_8099FA00)      # a1 = 809A0000
    or      a0, a2, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    a1, a1, t7
    jal     func_80028048
    lw      a1, %lo(var_8099FA00)(a1)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop

.section .data

var_8099F9A0: .word \
0x0A000900, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000008, 0x00000000, 0x00010000, \
0x0005003C, 0x00000000, 0x00000000
var_8099F9CC: .word 0x00000000, 0x00000000, 0x00000000
var_8099F9D8: .word 0x00BE0600, 0x00000010, 0x00010000, 0x000001A8
.word func_8099E950
.word func_8099EC38
.word func_8099F918
.word 0x00000000
var_8099F9F8: .word 0xB86CFC18, 0x48500064
var_8099FA00: .word 0x060064E0, 0x06005CE0, 0x06000A10, 0x06005CE0

.section .rodata

var_8099FA10: .word 0x3BA3D70A
var_8099FA14: .word 0x3CCCCCCD
var_8099FA18: .word 0x453B8000
var_8099FA1C: .word 0x44BB8000
var_8099FA20: .word 0xBF19999A
var_8099FA24: .word 0x44098000
var_8099FA28: .word 0x3D23D70A, 0x00000000

