.section .text
func_809BBA50:
    beq     a1, $zero, lbl_809BBA70
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a1, $at, lbl_809BBA8C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a1, $at, lbl_809BBA80
    lui     v0, 0x8012                 # v0 = 80120000
    b       lbl_809BBA9C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_809BBA70:
    lw      v0, 0x01A8(a0)             # 000001A8
    xori    v0, v0, 0x0001             # v0 = FFFFFFFE
    jr      $ra
    sltiu   v0, v0, 0x0001
lbl_809BBA80:
    lhu     v0, -0x4B10(v0)            # FFFFB4EE
    jr      $ra
    andi    v0, v0, 0x0040             # v0 = 00000040
lbl_809BBA8C:
    lw      v0, 0x01A8(a0)             # 000001A8
    xori    v0, v0, 0x0004             # v0 = 00000044
    jr      $ra
    sltiu   v0, v0, 0x0001
lbl_809BBA9C:
    jr      $ra
    nop


func_809BBAA4:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a1, $at, lbl_809BBAD0
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a1, $at, lbl_809BBAD8
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a1, $at, lbl_809BBAE0
    lui     v0, 0x8012                 # v0 = 80120000
    jr      $ra
    nop
lbl_809BBAD0:
    jr      $ra
    sw      t6, 0x01A8(a0)             # 000001A8
lbl_809BBAD8:
    jr      $ra
    sw      t7, 0x01A8(a0)             # 000001A8
lbl_809BBAE0:
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0F20(v0)             # 8011B4F0
    ori     t9, t8, 0x0040             # t9 = 00000040
    sh      t9, 0x0F20(v0)             # 8011B4F0
    jr      $ra
    nop


func_809BBAF8:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lui     a1, %hi(var_809BCB3C)      # a1 = 809C0000
    sw      $zero, 0x0044($sp)
    addiu   a1, a1, %lo(var_809BCB3C)  # a1 = 809BCB3C
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t9, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sh      t0, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
    sra     t7, t6,  8
    andi    t8, t7, 0x003F             # t8 = 00000000
    bne     v0, $at, lbl_809BBB8C
    sb      t8, 0x0158(s0)             # 00000158
    lw      t1, 0x0004(s0)             # 00000004
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     t7, %hi(func_809BC73C)     # t7 = 809C0000
    ori     t2, t1, 0x0030             # t2 = 00000030
    trunc.w.s $f6, $f4
    sw      t2, 0x0004(s0)             # 00000004
    lw      t5, 0x07C0(s1)             # 000007C0
    addiu   t7, t7, %lo(func_809BC73C) # t7 = 809BC73C
    mfc1    t4, $f6
    lw      t6, 0x0028(t5)             # 00000028
    sh      t4, 0x0072(t6)             # 00000072
    b       lbl_809BBD68
    sw      t7, 0x0154(s0)             # 00000154
lbl_809BBB8C:
    bne     v0, $zero, lbl_809BBCD0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0x8CE0             # a0 = 06008CE0
    jal     func_80033EF4
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    addiu   a1, s0, 0x015C             # a1 = 0000015C
    sw      a1, 0x0040($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809BCB10)      # a3 = 809C0000
    lw      a1, 0x0040($sp)
    addiu   a3, a3, %lo(var_809BCB10)  # a3 = 809BCB10
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     $at, 0xC29E                # $at = C29E0000
    mtc1    $at, $f10                  # $f10 = -79.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    or      a0, s1, $zero              # a0 = 00000000
    lb      a1, 0x0003(s0)             # 00000003
    add.s   $f16, $f8, $f10
    jal     func_80020640
    swc1    $f16, 0x0028(s0)           # 00000028
    beq     v0, $zero, lbl_809BBC10
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800204D0
    lbu     a1, 0x0158(s0)             # 00000158
    lui     t8, %hi(func_809BC474)     # t8 = 809C0000
    addiu   t8, t8, %lo(func_809BC474) # t8 = 809BC474
    b       lbl_809BBD50
    sw      t8, 0x0154(s0)             # 00000154
lbl_809BBC10:
    jal     func_809BBA50
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    beq     v0, $zero, lbl_809BBCB4
    or      a0, s1, $zero              # a0 = 00000000
    lwc1    $f18, 0x0008(s0)           # 00000008
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x000C(s0)            # 0000000C
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x0010(s0)            # 00000010
    sw      $zero, 0x001C($sp)
    or      a2, s1, $zero              # a2 = 00000000
    swc1    $f6, 0x0018($sp)
    lh      t9, 0x00B6(s0)             # 000000B6
    sw      t1, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    addu    t0, t9, $at
    sw      t0, 0x0020($sp)
    jal     func_800253F0
    addiu   a3, $zero, 0x00C6          # a3 = 000000C6
    beql    v0, $zero, lbl_809BBC90
    lui     $at, 0xC28C                # $at = C28C0000
    lw      v0, 0x011C(s0)             # 0000011C
    lui     $at, %hi(var_809BCB50)     # $at = 809C0000
    lwc1    $f10, %lo(var_809BCB50)($at)
    lwc1    $f8, 0x0010(v0)            # 00000010
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x002C(v0)           # 0000002C
    lui     $at, 0xC28C                # $at = C28C0000
lbl_809BBC90:
    mtc1    $at, $f4                   # $f4 = -70.00
    lwc1    $f18, 0x000C(s0)           # 0000000C
    lui     t2, %hi(func_809BC39C)     # t2 = 809C0000
    addiu   t2, t2, %lo(func_809BC39C) # t2 = 809BC39C
    add.s   $f6, $f18, $f4
    sh      $zero, 0x0032(s0)          # 00000032
    sw      t2, 0x0154(s0)             # 00000154
    b       lbl_809BBD50
    swc1    $f6, 0x0028(s0)            # 00000028
lbl_809BBCB4:
    jal     func_800204D0
    lbu     a1, 0x0158(s0)             # 00000158
    lui     t3, %hi(func_809BBDCC)     # t3 = 809C0000
    addiu   t3, t3, %lo(func_809BBDCC) # t3 = 809BBDCC
    sh      $zero, 0x015A(s0)          # 0000015A
    b       lbl_809BBD50
    sw      t3, 0x0154(s0)             # 00000154
lbl_809BBCD0:
    bne     v0, $at, lbl_809BBD04
    lui     a0, 0x0600                 # a0 = 06000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x5048             # a0 = 06005048
    jal     func_80033EF4
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    lui     t4, %hi(func_809BC608)     # t4 = 809C0000
    addiu   t5, $zero, 0x0200          # t5 = 00000200
    addiu   t4, t4, %lo(func_809BC608) # t4 = 809BC608
    sh      t5, 0x015A(s0)             # 0000015A
    sb      $zero, 0x0158(s0)          # 00000158
    b       lbl_809BBD50
    sw      t4, 0x0154(s0)             # 00000154
lbl_809BBD04:
    addiu   a0, a0, 0x5580             # a0 = 00005580
    jal     func_80033EF4
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C
    lbu     a1, 0x0158(s0)             # 00000158
    beq     v0, $zero, lbl_809BBD48
    lui     t7, %hi(func_809BC8A4)     # t7 = 809C0000
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f10                  # $f10 = 400.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lui     t6, %hi(func_809BC5F8)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809BC5F8) # t6 = 809BC5F8
    sub.s   $f16, $f8, $f10
    sw      t6, 0x0154(s0)             # 00000154
    b       lbl_809BBD50
    swc1    $f16, 0x0028(s0)           # 00000028
lbl_809BBD48:
    addiu   t7, t7, %lo(func_809BC8A4) # t7 = 809BC8A4
    sw      t7, 0x0154(s0)             # 00000154
lbl_809BBD50:
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x0044($sp)
    sw      v0, 0x013C(s0)             # 0000013C
lbl_809BBD68:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_809BBD7C:
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
    bnel    t7, $zero, lbl_809BBDC0
    lw      $ra, 0x0014($sp)
    jal     func_8004ABCC
    addiu   a1, a3, 0x015C             # a1 = 0000015C
    lw      $ra, 0x0014($sp)
lbl_809BBDC0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BBDCC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_809BBA50
    sw      t7, 0x002C($sp)
    beq     v0, $zero, lbl_809BBE88
    lui     $at, 0x437A                # $at = 437A0000
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 250.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_809BBEB4
    nop
    jal     func_809BBAA4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sh      t8, 0x015A(s0)             # 0000015A
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, $zero, 0x0BFE          # a1 = 00000BFE
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    jal     func_8006B6FC
    or      a3, s0, $zero              # a3 = 00000000
    lui     $at, %hi(var_809BCB54)     # $at = 809C0000
    lw      v1, 0x002C($sp)
    lwc1    $f8, %lo(var_809BCB54)($at)
    lui     $at, %hi(var_809BCB58)     # $at = 809C0000
    mtc1    $zero, $f12                # $f12 = 0.00
    swc1    $f8, 0x0024(v1)            # 00000024
    lwc1    $f10, %lo(var_809BCB58)($at)
    lui     $at, %hi(var_809BCB5C)     # $at = 809C0000
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    swc1    $f10, 0x0028(v1)           # 00000028
    lwc1    $f16, %lo(var_809BCB5C)($at)
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    jal     func_800915CC
    swc1    $f16, 0x002C(v1)           # 0000002C
    b       lbl_809BBEB4
    nop
lbl_809BBE88:
    lh      v0, 0x015A(s0)             # 0000015A
    beq     v0, $zero, lbl_809BBEB4
    nop
    beq     v0, $zero, lbl_809BBEA4
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x015A(s0)             # 0000015A
    lh      v0, 0x015A(s0)             # 0000015A
lbl_809BBEA4:
    bne     v0, $zero, lbl_809BBEB4
    lui     t0, %hi(func_809BBF20)     # t0 = 809C0000
    addiu   t0, t0, %lo(func_809BBF20) # t0 = 809BBF20
    sw      t0, 0x0154(s0)             # 00000154
lbl_809BBEB4:
    jal     func_8009CB08
    lw      a0, 0x0034($sp)
    bne     v0, $zero, lbl_809BBEEC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809BBA50
    or      a1, $zero, $zero           # a1 = 00000000
    bne     v0, $zero, lbl_809BBEEC
    lui     $at, 0xC29E                # $at = C29E0000
    lwc1    $f18, 0x000C(s0)           # 0000000C
    mtc1    $at, $f4                   # $f4 = -79.00
    nop
    add.s   $f6, $f18, $f4
    b       lbl_809BBF0C
    swc1    $f6, 0x0028(s0)            # 00000028
lbl_809BBEEC:
    lui     $at, 0xC29E                # $at = C29E0000
    mtc1    $at, $f10                  # $f10 = -79.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    add.s   $f16, $f8, $f10
    sub.s   $f4, $f16, $f18
    swc1    $f4, 0x0028(s0)            # 00000028
lbl_809BBF0C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809BBF20:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f6                   # $f6 = 500.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    add.s   $f8, $f4, $f6
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x40F0                 # a3 = 40F00000
    mfc1    a1, $f8
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lui     $at, %hi(var_809BCB60)     # $at = 809C0000
    lwc1    $f16, %lo(var_809BCB60)($at)
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_809BBFC8
    lh      v0, 0x015A(s0)             # 0000015A
    jal     func_80022FD0
    addiu   a1, $zero, 0x289E          # a1 = 0000289E
    lui     t6, %hi(func_809BC01C)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809BC01C) # t6 = 809BC01C
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    sw      t6, 0x0154(s0)             # 00000154
    sh      t7, 0x015A(s0)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809BBAA4
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    b       lbl_809BC00C
    lw      $ra, 0x0024($sp)
    lh      v0, 0x015A(s0)             # 0000015A
lbl_809BBFC8:
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    beq     v0, $zero, lbl_809BBFE0
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x015A(s0)             # 0000015A
    lh      v0, 0x015A(s0)             # 0000015A
lbl_809BBFE0:
    bnel    v0, $zero, lbl_809BC000
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_800915CC
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    addiu   t9, $zero, 0x000B          # t9 = 0000000B
    sh      t9, 0x015A(s0)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
lbl_809BC000:
    jal     func_8002313C
    addiu   a1, $zero, 0x208F          # a1 = 0000208F
    lw      $ra, 0x0024($sp)
lbl_809BC00C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809BC01C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lh      v0, 0x015A(s0)             # 0000015A
    beq     v0, $zero, lbl_809BC0A8
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(s0)             # 0000015A
    lh      t7, 0x015A(s0)             # 0000015A
    bnel    t7, $zero, lbl_809BC0AC
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x07A0(s1)             # 000007A0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     t9, t8,  2
    addu    t0, s1, t9
    jal     func_8007D85C
    lw      a0, 0x0790(t0)             # 00000790
    sll     a0, v0, 16
    sw      v0, 0x0044($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x3A98          # a1 = 00003A98
    lh      a0, 0x0046($sp)
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x00FA          # a3 = 000000FA
    jal     func_8007D738
    sw      a0, 0x0040($sp)
    lw      a0, 0x0040($sp)
    jal     func_8007D6B0
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
lbl_809BC0A8:
    or      a0, s0, $zero              # a0 = 00000000
lbl_809BC0AC:
    jal     func_809BBA50
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beql    v0, $zero, lbl_809BC148
    lw      $ra, 0x003C($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f8                   # $f8 = 140.00
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    add.s   $f10, $f6, $f8
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00C6          # a3 = 000000C6
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      $zero, 0x001C($sp)
    swc1    $f16, 0x0018($sp)
    lh      t2, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    addu    t3, t2, $at
    jal     func_800253F0
    sw      t3, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809BBAA4
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lui     t5, %hi(func_809BC2DC)     # t5 = 809C0000
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    addiu   t5, t5, %lo(func_809BC2DC) # t5 = 809BC2DC
    sh      t4, 0x015A(s0)             # 0000015A
    sw      t5, 0x0154(s0)             # 00000154
    lh      t6, 0x07A0(s1)             # 000007A0
    sll     t7, t6,  2
    addu    t8, s1, t7
    jal     func_80049DB4
    lw      a0, 0x0790(t8)             # 00000790
    lw      $ra, 0x003C($sp)
lbl_809BC148:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_809BC158:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0060(s0)            # 00000060
    lui     $at, 0xC28C                # $at = C28C0000
    mtc1    $at, $f16                  # $f16 = -70.00
    lwc1    $f10, 0x000C(s0)           # 0000000C
    add.s   $f8, $f4, $f6
    lw      t6, 0x0034($sp)
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f18, $f10, $f16
    lw      v1, 0x1C44(t6)             # 00001C44
    swc1    $f8, 0x0060(s0)            # 00000060
    lw      a2, 0x0060(s0)             # 00000060
    mfc1    a1, $f18
    jal     func_8006385C
    sw      v1, 0x002C($sp)
    beq     v0, $zero, lbl_809BC260
    lw      v1, 0x002C($sp)
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    sh      $zero, 0x0032(s0)          # 00000032
    sh      t7, 0x015A(s0)             # 0000015A
    sw      v1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x289F          # a1 = 0000289F
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f6                   # $f6 = 140.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      t8, 0x011C(s0)             # 0000011C
    lui     t9, %hi(func_809BC340)     # t9 = 809C0000
    add.s   $f8, $f4, $f6
    addiu   t9, t9, %lo(func_809BC340) # t9 = 809BC340
    addiu   a1, $zero, 0x0C08          # a1 = 00000C08
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    swc1    $f8, 0x0028(t8)            # 00000028
    sw      t9, 0x0154(s0)             # 00000154
    lw      a3, 0x011C(s0)             # 0000011C
    sw      $zero, 0x0010($sp)
    jal     func_8006B6FC
    lw      a0, 0x0034($sp)
    lui     $at, %hi(var_809BCB64)     # $at = 809C0000
    lw      v1, 0x002C($sp)
    lwc1    $f10, %lo(var_809BCB64)($at)
    lui     $at, %hi(var_809BCB68)     # $at = 809C0000
    addiu   t0, $zero, 0x7530          # t0 = 00007530
    swc1    $f10, 0x0024(v1)           # 00000024
    lwc1    $f16, %lo(var_809BCB68)($at)
    lui     $at, %hi(var_809BCB6C)     # $at = 809C0000
    mtc1    $zero, $f12                # $f12 = 0.00
    swc1    $f16, 0x0028(v1)           # 00000028
    lwc1    $f18, %lo(var_809BCB6C)($at)
    sh      t0, 0x00B6(v1)             # 000000B6
    lh      t1, 0x00B6(v1)             # 000000B6
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    swc1    $f18, 0x002C(v1)           # 0000002C
    jal     func_800915CC
    sh      t1, 0x0032(v1)             # 00000032
    b       lbl_809BC2CC
    lw      $ra, 0x0024($sp)
lbl_809BC260:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C
    addiu   a1, $zero, 0x2090          # a1 = 00002090
    lh      v0, 0x015A(s0)             # 0000015A
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    beq     v0, $zero, lbl_809BC288
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x015A(s0)             # 0000015A
    lh      v0, 0x015A(s0)             # 0000015A
lbl_809BC288:
    bnel    v0, $zero, lbl_809BC2A8
    lw      v0, 0x011C(s0)             # 0000011C
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_800915CC
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    addiu   t3, $zero, 0x000B          # t3 = 0000000B
    sh      t3, 0x015A(s0)             # 0000015A
    lw      v0, 0x011C(s0)             # 0000011C
lbl_809BC2A8:
    lui     $at, 0x430C                # $at = 430C0000
    beql    v0, $zero, lbl_809BC2CC
    lw      $ra, 0x0024($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    mtc1    $at, $f6                   # $f6 = 140.00
    nop
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0028(v0)            # 00000028
    lw      $ra, 0x0024($sp)
lbl_809BC2CC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809BC2DC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x015A(a2)             # 0000015A
    or      a0, a3, $zero              # a0 = 00000000
    addiu   $at, $zero, 0xFFD8         # $at = FFFFFFD8
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x015A(a2)             # 0000015A
    lh      v0, 0x015A(a2)             # 0000015A
    bne     v0, $zero, lbl_809BC31C
    nop
    jal     func_80020510
    lbu     a1, 0x0158(a2)             # 00000158
    b       lbl_809BC334
    lw      $ra, 0x0014($sp)
lbl_809BC31C:
    bne     v0, $at, lbl_809BC330
    lui     t8, %hi(func_809BC158)     # t8 = 809C0000
    addiu   t8, t8, %lo(func_809BC158) # t8 = 809BC158
    sh      $zero, 0x015A(a2)          # 0000015A
    sw      t8, 0x0154(a2)             # 00000154
lbl_809BC330:
    lw      $ra, 0x0014($sp)
lbl_809BC334:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BC340:
    sw      a1, 0x0004($sp)
    lh      v0, 0x015A(a0)             # 0000015A
    beq     v0, $zero, lbl_809BC358
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_809BC358:
    bne     v0, $zero, lbl_809BC394
    nop
    lw      v0, 0x011C(a0)             # 0000011C
    beq     v0, $zero, lbl_809BC394
    nop
    lh      v1, 0x001C(v0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t7, %hi(func_809BC39C)     # t7 = 809C0000
    bne     v1, $at, lbl_809BC388
    addiu   t7, t7, %lo(func_809BC39C) # t7 = 809BC39C
    jr      $ra
    sw      t7, 0x0154(a0)             # 00000154
lbl_809BC388:
    bne     v1, $zero, lbl_809BC394
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x001C(v0)             # 0000001C
lbl_809BC394:
    jr      $ra
    nop


func_809BC39C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a2, s0, 0x015C             # a2 = 0000015C
    or      a1, a2, $zero              # a1 = 0000015C
    sw      a2, 0x0020($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0020($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at
    lw      a0, 0x002C($sp)
    jal     func_80020640
    lb      a1, 0x0003(s0)             # 00000003
    beq     v0, $zero, lbl_809BC418
    lw      a0, 0x002C($sp)
    jal     func_800204D0
    lbu     a1, 0x0158(s0)             # 00000158
    lh      t6, 0x00B6(s0)             # 000000B6
    lui     t1, %hi(func_809BC474)     # t1 = 809C0000
    addiu   t1, t1, %lo(func_809BC474) # t1 = 809BC474
    addiu   t9, t6, 0x2000             # t9 = 00002000
    andi    t0, t9, 0xC000             # t0 = 00000000
    sh      t0, 0x0016(s0)             # 00000016
    b       lbl_809BC460
    sw      t1, 0x0154(s0)             # 00000154
lbl_809BC418:
    lh      v0, 0x0032(s0)             # 00000032
    lh      t2, 0x00B6(s0)             # 000000B6
    subu    v1, $zero, v0
    addu    t3, t2, v0
    bltz    v0, lbl_809BC438
    sh      t3, 0x00B6(s0)             # 000000B6
    b       lbl_809BC438
    or      v1, v0, $zero              # v1 = 00000000
lbl_809BC438:
    mtc1    v1, $f4                    # $f4 = 0.00
    lui     $at, 0x3B00                # $at = 3B000000
    mtc1    $at, $f8                   # $f8 = 0.00
    cvt.s.w $f6, $f4
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    addiu   a1, $zero, 0x2063          # a1 = 00002063
    mul.s   $f10, $f6, $f8
    mfc1    a2, $f10
    jal     func_800C50AC
    nop
lbl_809BC460:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809BC474:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      a1, 0x0016(a3)             # 00000016
    sw      a3, 0x0020($sp)
    addiu   a0, a3, 0x00B6             # a0 = 000000B6
    jal     func_80063704
    addiu   a2, $zero, 0x0200          # a2 = 00000200
    lw      a3, 0x0020($sp)
    sw      v0, 0x001C($sp)
    lui     $at, 0xC2FA                # $at = C2FA0000
    mtc1    $at, $f6                   # $f6 = -125.00
    lwc1    $f4, 0x000C(a3)            # 0000000C
    lui     a2, 0x4040                 # a2 = 40400000
    addiu   a0, a3, 0x0028             # a0 = 00000028
    add.s   $f8, $f4, $f6
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    beq     v0, $zero, lbl_809BC4E4
    lw      a3, 0x0020($sp)
    lw      t6, 0x001C($sp)
    lui     t7, %hi(func_809BC4F4)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809BC4F4) # t7 = 809BC4F4
    beql    t6, $zero, lbl_809BC4E8
    lw      $ra, 0x0014($sp)
    sw      t7, 0x0154(a3)             # 00000154
lbl_809BC4E4:
    lw      $ra, 0x0014($sp)
lbl_809BC4E8:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809BC4F4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80035364
    sw      a3, 0x0020($sp)
    beq     v0, $zero, lbl_809BC550
    lw      a3, 0x0020($sp)
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0090(a3)            # 00000090
    lui     t6, %hi(func_809BC560)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809BC560) # t6 = 809BC560
    c.lt.s  $f4, $f6
    addiu   a1, $zero, 0x0C12          # a1 = 00000C12
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    bc1fl   lbl_809BC554
    lw      $ra, 0x001C($sp)
    sw      t6, 0x0154(a3)             # 00000154
    sw      $zero, 0x0010($sp)
    jal     func_8006B6FC
    lw      a0, 0x0024($sp)
lbl_809BC550:
    lw      $ra, 0x001C($sp)
lbl_809BC554:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809BC560:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lui     $at, %hi(var_809BCB70)     # $at = 809C0000
    lwc1    $f6, %lo(var_809BCB70)($at)
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lui     $at, %hi(var_809BCB74)     # $at = 809C0000
    lwc1    $f10, %lo(var_809BCB74)($at)
    add.s   $f8, $f4, $f6
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x4170                 # a3 = 41700000
    mfc1    a1, $f8
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lui     $at, %hi(var_809BCB78)     # $at = 809C0000
    lwc1    $f16, %lo(var_809BCB78)($at)
    addiu   a1, $zero, 0x289E          # a1 = 0000289E
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_809BC5DC
    nop
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(func_809BC5F8)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809BC5F8) # t6 = 809BC5F8
    b       lbl_809BC5E4
    sw      t6, 0x0154(s0)             # 00000154
lbl_809BC5DC:
    jal     func_8002313C
    addiu   a1, $zero, 0x208F          # a1 = 0000208F
lbl_809BC5E4:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809BC5F8:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_809BC608:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x015A(s0)             # 0000015A
    beq     v0, $zero, lbl_809BC62C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(s0)             # 0000015A
lbl_809BC62C:
    lbu     t7, 0x0158(s0)             # 00000158
    lw      t2, 0x0024($sp)
    addiu   a1, $zero, 0x003A          # a1 = 0000003A
    bne     t7, $zero, lbl_809BC688
    nop
    jal     func_80035364
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_809BC6E0
    lh      t7, 0x015A(s0)             # 0000015A
    lw      v0, 0x0024($sp)
    addiu   a1, $zero, 0x003A          # a1 = 0000003A
    lw      t8, 0x0790(v0)             # 00000790
    lh      t9, 0x0142(t8)             # 00000142
    sw      t9, 0x01A8(s0)             # 000001A8
    jal     func_800495BC
    lw      a0, 0x0790(v0)             # 00000790
    lw      t0, 0x0024($sp)
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_80049AB8
    lw      a0, 0x0790(t0)             # 00000790
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    b       lbl_809BC6DC
    sb      t1, 0x0158(s0)             # 00000158
lbl_809BC688:
    jal     func_800495BC
    lw      a0, 0x0790(t2)             # 00000790
    jal     func_80035364
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_809BC6B4
    lbu     t4, 0x0158(s0)             # 00000158
    lbu     v0, 0x0158(s0)             # 00000158
    beq     v0, $zero, lbl_809BC6B0
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sb      t3, 0x0158(s0)             # 00000158
lbl_809BC6B0:
    lbu     t4, 0x0158(s0)             # 00000158
lbl_809BC6B4:
    lw      t5, 0x0024($sp)
    bnel    t4, $zero, lbl_809BC6E0
    lh      t7, 0x015A(s0)             # 0000015A
    lw      a0, 0x0790(t5)             # 00000790
    jal     func_800495BC
    lh      a1, 0x01AA(s0)             # 000001AA
    lw      t6, 0x0024($sp)
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_80049A94
    lw      a0, 0x0790(t6)             # 00000790
lbl_809BC6DC:
    lh      t7, 0x015A(s0)             # 0000015A
lbl_809BC6E0:
    lui     $at, %hi(var_809BCB7C)     # $at = 809C0000
    lwc1    $f8, %lo(var_809BCB7C)($at)
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800CF470
    nop
    lui     $at, %hi(var_809BCB80)     # $at = 809C0000
    lwc1    $f16, %lo(var_809BCB80)($at)
    lwc1    $f10, 0x000C(s0)           # 0000000C
    lh      t8, 0x015A(s0)             # 0000015A
    mul.s   $f18, $f0, $f16
    addiu   t9, $zero, 0x0200          # t9 = 00000200
    sub.s   $f4, $f10, $f18
    bne     t8, $zero, lbl_809BC728
    swc1    $f4, 0x0028(s0)            # 00000028
    sh      t9, 0x015A(s0)             # 0000015A
lbl_809BC728:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809BC73C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lbu     a1, 0x0158(a2)             # 00000158
    sw      a2, 0x0018($sp)
    jal     func_8002049C
    or      a0, a3, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_809BC778
    lw      a2, 0x0018($sp)
    lui     t7, %hi(func_809BC788)     # t7 = 809C0000
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t7, t7, %lo(func_809BC788) # t7 = 809BC788
    sh      t6, 0x015A(a2)             # 0000015A
    sw      t7, 0x0154(a2)             # 00000154
lbl_809BC778:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BC788:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x015A(s0)             # 0000015A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F00                 # a2 = 3F000000
    bne     t6, $zero, lbl_809BC7E8
    lui     $at, 0x4296                # $at = 42960000
    jal     func_8006385C
    lw      a1, 0x000C(s0)             # 0000000C
    beq     v0, $zero, lbl_809BC7D4
    lw      a0, 0x0024($sp)
    jal     func_80020510
    lbu     a1, 0x0158(s0)             # 00000158
    lui     t7, %hi(func_809BC73C)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809BC73C) # t7 = 809BC73C
    sw      t7, 0x0154(s0)             # 00000154
lbl_809BC7D4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80023108
    addiu   a1, $zero, 0x205E          # a1 = 0000205E
    b       lbl_809BC828
    lwc1    $f10, 0x0028(s0)           # 00000028
lbl_809BC7E8:
    lwc1    $f4, 0x000C(s0)            # 0000000C
    mtc1    $at, $f6                   # $f6 = 0.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F00                 # a2 = 3F000000
    add.s   $f8, $f4, $f6
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    beq     v0, $zero, lbl_809BC81C
    or      a0, s0, $zero              # a0 = 00000000
    lui     t8, %hi(func_809BC850)     # t8 = 809C0000
    addiu   t8, t8, %lo(func_809BC850) # t8 = 809BC850
    sw      t8, 0x0154(s0)             # 00000154
lbl_809BC81C:
    jal     func_80023108
    addiu   a1, $zero, 0x205E          # a1 = 0000205E
    lwc1    $f10, 0x0028(s0)           # 00000028
lbl_809BC828:
    lw      t1, 0x0024($sp)
    trunc.w.s $f16, $f10
    lw      t2, 0x07C0(t1)             # 000007C0
    mfc1    t0, $f16
    lw      t3, 0x0028(t2)             # 00000028
    sh      t0, 0x0072(t3)             # 00000072
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_809BC850:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      a1, 0x015A(a0)             # 0000015A
    beq     a1, $zero, lbl_809BC870
    addiu   t6, a1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      a1, 0x015A(a0)             # 0000015A
lbl_809BC870:
    jal     func_80023164
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t8, %hi(func_809BC788)     # t8 = 809C0000
    addiu   t8, t8, %lo(func_809BC788) # t8 = 809BC788
    lh      t7, 0x015A(a0)             # 0000015A
    bnel    t7, $zero, lbl_809BC898
    lw      $ra, 0x0014($sp)
    sw      t8, 0x0154(a0)             # 00000154
    lw      $ra, 0x0014($sp)
lbl_809BC898:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BC8A4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80035364
    sw      a3, 0x0020($sp)
    beq     v0, $zero, lbl_809BC918
    lw      a3, 0x0020($sp)
    lbu     a1, 0x0158(a3)             # 00000158
    sw      a3, 0x0020($sp)
    jal     func_800204D0
    lw      a0, 0x0024($sp)
    lw      a3, 0x0020($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x000C(a3)            # 0000000C
    lui     t7, %hi(func_809BC928)     # t7 = 809C0000
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    sub.s   $f8, $f4, $f6
    addiu   t7, t7, %lo(func_809BC928) # t7 = 809BC928
    sh      t6, 0x015A(a3)             # 0000015A
    sw      t7, 0x0154(a3)             # 00000154
    swc1    $f8, 0x000C(a3)            # 0000000C
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x0C1C          # a1 = 00000C1C
    jal     func_8006B6FC
    addiu   a2, $zero, 0x0033          # a2 = 00000033
lbl_809BC918:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809BC928:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x015A(a3)             # 0000015A
    beq     v0, $zero, lbl_809BC94C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a3)             # 0000015A
    lh      v0, 0x015A(a3)             # 0000015A
lbl_809BC94C:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809BCB84)     # $at = 809C0000
    lwc1    $f8, %lo(var_809BCB84)($at)
    cvt.s.w $f6, $f4
    sw      a3, 0x0018($sp)
    mul.s   $f12, $f6, $f8
    jal     func_800D2CD0
    nop
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lw      a3, 0x0018($sp)
    addiu   a1, $zero, 0x289F          # a1 = 0000289F
    mul.s   $f18, $f0, $f16
    lwc1    $f10, 0x000C(a3)           # 0000000C
    lh      t7, 0x015A(a3)             # 0000015A
    or      a0, a3, $zero              # a0 = 00000000
    sub.s   $f4, $f10, $f18
    bne     t7, $zero, lbl_809BC9CC
    swc1    $f4, 0x0028(a3)            # 00000028
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80022FD0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     t8, %hi(func_809BC5F8)     # t8 = 809C0000
    addiu   t8, t8, %lo(func_809BC5F8) # t8 = 809BC5F8
    sw      t8, 0x0154(a3)             # 00000154
    lw      a0, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D5F0
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
    b       lbl_809BC9D8
    lw      $ra, 0x0014($sp)
lbl_809BC9CC:
    jal     func_8002313C
    addiu   a1, $zero, 0x2090          # a1 = 00002090
    lw      $ra, 0x0014($sp)
lbl_809BC9D8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BC9E4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     a1, 0x4248                 # a1 = 42480000
    jal     func_80020F04
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BCA20:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    bnel    v0, $zero, lbl_809BCAA0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t7, 0x0154(a0)             # 00000154
    lui     t6, %hi(func_809BBDCC)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809BBDCC) # t6 = 809BBDCC
    bne     t6, t7, lbl_809BCA9C
    lui     $at, 0xC29E                # $at = C29E0000
    lwc1    $f4, 0x000C(a0)            # 0000000C
    mtc1    $at, $f6                   # $f6 = -79.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    add.s   $f8, $f4, $f6
    lwc1    $f18, 0x0028(a0)           # 00000028
    lui     $at, 0xC248                # $at = C2480000
    sub.s   $f16, $f8, $f10
    c.lt.s  $f16, $f18
    nop
    bc1fl   lbl_809BCAA0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    mtc1    $zero, $f12                # $f12 = 0.00
    mtc1    $at, $f14                  # $f14 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA7F4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lh      v0, 0x001C(a0)             # 0000001C
lbl_809BCA9C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_809BCAA0:
    bne     v0, $at, lbl_809BCAC0
    lw      a0, 0x001C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x38E8             # a1 = 060038E8
    jal     func_800280C8
    lw      a0, 0x001C($sp)
    b       lbl_809BCAD8
    lw      $ra, 0x0014($sp)
lbl_809BCAC0:
    sll     t8, v0,  2
    lui     a1, %hi(var_809BCB40)      # a1 = 809C0000
    addu    a1, a1, t8
    jal     func_80028048
    lw      a1, %lo(var_809BCB40)(a1)
    lw      $ra, 0x0014($sp)
lbl_809BCAD8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_809BCAF0: .word 0x00C80100, 0x00000010, 0x00960000, 0x000001AC
.word func_809BBAF8
.word func_809BBD7C
.word func_809BC9E4
.word func_809BCA20
var_809BCB10: .word \
0x0A110000, 0x20010000, 0x00000000, 0xFFCFFFFF, \
0x00040000, 0x00000000, 0x00000000, 0x09000000, \
0x00BB0050, 0x00000000, 0x00000000
var_809BCB3C: .word 0x48500064
var_809BCB40: .word 0x06008618, 0x06004BE8, 0x060038E8, 0x06005200

.section .rodata

var_809BCB50: .word 0x43838000
var_809BCB54: .word 0xC48D4000
var_809BCB58: .word 0xC4802000
var_809BCB5C: .word 0xC54E4000
var_809BCB60: .word 0x3DCCCCCD
var_809BCB64: .word 0xC48D4000
var_809BCB68: .word 0xC4802000
var_809BCB6C: .word 0xC55AC000
var_809BCB70: .word 0x44714000
var_809BCB74: .word 0x3E4CCCCD
var_809BCB78: .word 0x3C23D70A
var_809BCB7C: .word 0x3C490FDB
var_809BCB80: .word 0x43EB9EB8
var_809BCB84: .word 0x3D80ADFD, 0x00000000, 0x00000000

