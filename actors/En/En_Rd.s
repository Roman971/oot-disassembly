.section .text
func_80939A90:
    sw      a1, 0x02F8(a0)             # 000002F8
    jr      $ra
    nop


func_80939A9C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a1, %hi(var_8093BFAC)      # a1 = 80940000
    addiu   a1, a1, %lo(var_8093BFAC)  # a1 = 8093BFAC
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t6, %hi(var_8093BF8C)      # t6 = 80940000
    addiu   t6, t6, %lo(var_8093BF8C)  # t6 = 8093BF8C
    mfc1    a1, $f0
    mfc1    a3, $f0
    sb      $zero, 0x001F(s0)          # 0000001F
    sw      t6, 0x0098(s0)             # 00000098
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_8001EC20
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t8, 0x0028(s0)             # 00000028
    lui     $at, 0x4248                # $at = 42480000
    lw      t9, 0x0024(s0)             # 00000024
    sw      t8, 0x003C(s0)             # 0000003C
    lwc1    $f4, 0x003C(s0)            # 0000003C
    mtc1    $at, $f6                   # $f6 = 50.00
    sh      $zero, 0x02FE(s0)          # 000002FE
    lh      t7, 0x02FE(s0)             # 000002FE
    lh      t4, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
    add.s   $f8, $f4, $f6
    sw      t9, 0x0038(s0)             # 00000038
    lw      t9, 0x002C(s0)             # 0000002C
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sh      t7, 0x0300(s0)             # 00000300
    andi    t5, t4, 0xFF00             # t5 = 00000000
    addiu   t0, $zero, 0x00FE          # t0 = 000000FE
    addiu   t1, $zero, 0x0008          # t1 = 00000008
    andi    t3, t2, 0x00FF             # t3 = 000000FF
    sra     t6, t5,  8
    andi    t7, v0, 0x0080             # t7 = 00000000
    swc1    $f8, 0x003C(s0)            # 0000003C
    sb      t0, 0x00AE(s0)             # 000000AE
    sb      t1, 0x00AF(s0)             # 000000AF
    sh      t3, 0x0304(s0)             # 00000304
    sb      t2, 0x030D(s0)             # 0000030D
    sh      t6, 0x0302(s0)             # 00000302
    beq     t7, $zero, lbl_80939B68
    sw      t9, 0x0040(s0)             # 00000040
    ori     t8, v0, 0xFF00             # t8 = 0000FF00
    b       lbl_80939B70
    sh      t8, 0x001C(s0)             # 0000001C
lbl_80939B68:
    andi    t9, v0, 0x00FF             # t9 = 00000000
    sh      t9, 0x001C(s0)             # 0000001C
lbl_80939B70:
    lh      t0, 0x001C(s0)             # 0000001C
    lw      a0, 0x0044($sp)
    addiu   a1, s0, 0x0178             # a1 = 00000178
    slti    $at, t0, 0xFFFF
    bne     $at, $zero, lbl_80939BCC
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a1, s0, 0x0178             # a1 = 00000178
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   t1, s0, 0x01BC             # t1 = 000001BC
    addiu   t2, s0, 0x0258             # t2 = 00000258
    addiu   t3, $zero, 0x001A          # t3 = 0000001A
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    addiu   a3, a3, 0x87D0             # a3 = 060087D0
    addiu   a2, a2, 0xE778             # a2 = 0600E778
    sw      a1, 0x0038($sp)
    jal     func_8008C788
    lw      a0, 0x0044($sp)
    addiu   t4, $zero, 0x002A          # t4 = 0000002A
    b       lbl_80939C00
    sb      t4, 0x0117(s0)             # 00000117
lbl_80939BCC:
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   t5, s0, 0x01BC             # t5 = 000001BC
    addiu   t6, s0, 0x0258             # t6 = 00000258
    addiu   t7, $zero, 0x001A          # t7 = 0000001A
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    addiu   a3, a3, 0x87D0             # a3 = 060087D0
    addiu   a2, a2, 0x3DD8             # a2 = 00003DD8
    jal     func_8008C788
    sw      a1, 0x0038($sp)
    addiu   t8, $zero, 0x002D          # t8 = 0000002D
    sb      t8, 0x0117(s0)             # 00000117
lbl_80939C00:
    addiu   a1, s0, 0x0310             # a1 = 00000310
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_8093BF60)      # a3 = 80940000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_8093BF60)  # a3 = 8093BF60
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    slti    $at, t9, 0xFFFE
    bne     $at, $zero, lbl_80939C48
    nop
    jal     func_80939D38
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80939C50
    nop
lbl_80939C48:
    jal     func_8093A00C
    or      a0, s0, $zero              # a0 = 00000000
lbl_80939C50:
    jal     func_8008C9C0
    lw      a0, 0x0038($sp)
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t0, $at, lbl_80939C78
    lw      $ra, 0x002C($sp)
    lw      t1, 0x0004(s0)             # 00000004
    ori     t2, t1, 0x0080             # t2 = 00000080
    sw      t2, 0x0004(s0)             # 00000004
    lw      $ra, 0x002C($sp)
lbl_80939C78:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80939C88:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x1422(v0)             # 8011B9F2
    or      a0, a3, $zero              # a0 = 00000000
    beq     t6, $zero, lbl_80939CB4
    nop
    sh      $zero, 0x1422(v0)          # 8011B9F2
lbl_80939CB4:
    jal     func_8004ABCC
    addiu   a1, a2, 0x0310             # a1 = 00000310
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80939CCC:
    lw      v0, 0x1C5C(a0)             # 00001C5C
    addiu   v1, $zero, 0x0090          # v1 = 00000090
    beq     v0, $zero, lbl_80939D30
    nop
    lh      t6, 0x0000(v0)             # 00000000
lbl_80939CE0:
    bne     v1, t6, lbl_80939CFC
    nop
    beq     v0, a1, lbl_80939CFC
    nop
    lh      t7, 0x001C(v0)             # 0000001C
    bgez    t7, lbl_80939D04
    nop
lbl_80939CFC:
    b       lbl_80939D28
    lw      v0, 0x0124(v0)             # 00000124
lbl_80939D04:
    beql    a2, $zero, lbl_80939D18
    lw      t8, 0x0118(v0)             # 00000118
    b       lbl_80939D24
    sw      a1, 0x0118(v0)             # 00000118
    lw      t8, 0x0118(v0)             # 00000118
lbl_80939D18:
    bnel    a1, t8, lbl_80939D28
    lw      v0, 0x0124(v0)             # 00000124
    sw      $zero, 0x0118(v0)          # 00000118
lbl_80939D24:
    lw      v0, 0x0124(v0)             # 00000124
lbl_80939D28:
    bnel    v0, $zero, lbl_80939CE0
    lh      t6, 0x0000(v0)             # 00000000
lbl_80939D30:
    jr      $ra
    nop


func_80939D38:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beq     t6, $at, lbl_80939D78
    lui     a1, 0x0600                 # a1 = 06000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x87D0             # a1 = 060087D0
    addiu   a0, s0, 0x0178             # a0 = 00000178
    jal     func_8008D328
    lui     a2, 0xC0C0                 # a2 = C0C00000
    b       lbl_80939D80
    nop
lbl_80939D78:
    jal     func_8008D2D4
    addiu   a1, a1, 0x5D98             # a1 = 00005D98
lbl_80939D80:
    jal     func_800CDCCC              # Rand.Next() float
    sb      $zero, 0x030B(s0)          # 0000030B
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    mul.s   $f6, $f0, $f4
    mtc1    $zero, $f18                # $f18 = 0.00
    lh      t9, 0x00B6(s0)             # 000000B6
    lui     a1, %hi(func_80939DE0)     # a1 = 80940000
    addiu   a1, a1, %lo(func_80939DE0) # a1 = 80939DE0
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f18, 0x0068(s0)           # 00000068
    add.s   $f10, $f6, $f8
    sh      t9, 0x0032(s0)             # 00000032
    trunc.w.s $f16, $f10
    mfc1    t8, $f16
    jal     func_80939A90
    sh      t8, 0x02FC(s0)             # 000002FC
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80939DE0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    addiu   a0, s0, 0x0178             # a0 = 00000178
    jal     func_8008C9C0
    sw      a0, 0x002C($sp)
    addiu   a0, s0, 0x02FE             # a0 = 000002FE
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0300             # a0 = 00000300
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t6, $at, lbl_80939EAC
    lh      t7, 0x02FC(s0)             # 000002FC
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0190(s0)            # 00000190
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80939EAC
    lh      t7, 0x02FC(s0)             # 000002FC
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lw      a0, 0x002C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    c.le.s  $f8, $f0
    nop
    bc1f    lbl_80939E98
    nop
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5D98             # a1 = 06005D98
    jal     func_8008D2D4
    lw      a0, 0x002C($sp)
    b       lbl_80939EF4
    lw      t2, 0x0118(s0)             # 00000118
lbl_80939E98:
    jal     func_8008D2D4
    addiu   a1, a1, 0x57AC             # a1 = 000057AC
    b       lbl_80939EF4
    lw      t2, 0x0118(s0)             # 00000118
    lh      t7, 0x02FC(s0)             # 000002FC
lbl_80939EAC:
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x02FC(s0)             # 000002FC
    lh      t9, 0x02FC(s0)             # 000002FC
    bnel    t9, $zero, lbl_80939EF4
    lw      t2, 0x0118(s0)             # 00000118
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    mul.s   $f10, $f0, $f2
    swc1    $f4, 0x0190(s0)            # 00000190
    add.s   $f16, $f10, $f2
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sh      t1, 0x02FC(s0)             # 000002FC
    lw      t2, 0x0118(s0)             # 00000118
lbl_80939EF4:
    beql    t2, $zero, lbl_80939F3C
    lbu     t5, 0x02F5(s0)             # 000002F5
    lbu     t3, 0x02F5(s0)             # 000002F5
    bnel    t3, $zero, lbl_80939FD4
    lw      t9, 0x0034($sp)
    lh      t4, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t4, $at, lbl_80939F28
    nop
    jal     func_8093A880
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80939FD4
    lw      t9, 0x0034($sp)
lbl_80939F28:
    jal     func_8093AFD8
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80939FD4
    lw      t9, 0x0034($sp)
    lbu     t5, 0x02F5(s0)             # 000002F5
lbl_80939F3C:
    beql    t5, $zero, lbl_80939F70
    lui     $at, 0x4316                # $at = 43160000
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t6, $at, lbl_80939F64
    nop
    jal     func_8093AE68
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80939F70
    lui     $at, 0x4316                # $at = 43160000
lbl_80939F64:
    jal     func_8093AFD8
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4316                # $at = 43160000
lbl_80939F70:
    mtc1    $at, $f6                   # $f6 = 150.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    sb      $zero, 0x02F5(s0)          # 000002F5
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_80939FD4
    lw      t9, 0x0034($sp)
    jal     func_80021768
    lw      a0, 0x0034($sp)
    beql    v0, $zero, lbl_80939FD4
    lw      t9, 0x0034($sp)
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t7, $at, lbl_80939FC8
    nop
    lbu     t8, 0x02F5(s0)             # 000002F5
    bne     t8, $zero, lbl_80939FC8
    nop
    jal     func_8093AE68
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80939FD4
    lw      t9, 0x0034($sp)
lbl_80939FC8:
    jal     func_8093AFD8
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0034($sp)
lbl_80939FD4:
    lui     t0, 0x0001                 # t0 = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t0, t0, t9
    lw      t0, 0x1DE4(t0)             # 00011DE4
    andi    t1, t0, 0x005F             # t1 = 00000000
    bnel    t1, $zero, lbl_80939FFC
    lw      $ra, 0x0024($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x38E4          # a1 = 000038E4
    lw      $ra, 0x0024($sp)
lbl_80939FFC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8093A00C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x87D0             # a0 = 060087D0
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC0C0                # $at = C0C00000
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = -6.00
    lui     a1, 0x0601                 # a1 = 06010000
    mfc1    a2, $f0
    mfc1    a3, $f0
    addiu   a1, a1, 0x87D0             # a1 = 060087D0
    swc1    $f6, 0x0010($sp)
    addiu   a0, s0, 0x0178             # a0 = 00000178
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x000B          # t6 = 0000000B
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    addiu   t8, $zero, 0xC000          # t8 = FFFFC000
    lui     a1, %hi(func_8093A0AC)     # a1 = 80940000
    sb      t6, 0x030B(s0)             # 0000030B
    sh      t7, 0x02FC(s0)             # 000002FC
    sh      t8, 0x00B4(s0)             # 000000B4
    addiu   a1, a1, %lo(func_8093A0AC) # a1 = 8093A0AC
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x006C(s0)            # 0000006C
    swc1    $f0, 0x00BC(s0)            # 000000BC
    jal     func_80939A90
    swc1    $f0, 0x0068(s0)            # 00000068
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8093A0AC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x00B4(s0)             # 000000B4
    addiu   $at, $zero, 0xC000         # $at = FFFFC000
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    beq     t6, $at, lbl_8093A134
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lui     $at, %hi(var_8093C010)     # $at = 80940000
    lwc1    $f2, %lo(var_8093C010)($at)
    lw      a1, 0x000C(s0)             # 0000000C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    mfc1    a2, $f2
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0xC060                # $at = C0600000
    c.eq.s  $f0, $f4
    nop
    bc1fl   lbl_8093A21C
    lw      $ra, 0x0024($sp)
    mtc1    $at, $f6                   # $f6 = -3.50
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80939D38
    swc1    $f6, 0x006C(s0)            # 0000006C
    b       lbl_8093A21C
    lw      $ra, 0x0024($sp)
lbl_8093A134:
    lwc1    $f0, 0x000C(s0)            # 0000000C
    lwc1    $f8, 0x0028(s0)            # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f0, $f8
    nop
    bc1f    lbl_8093A15C
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x38E4          # a1 = 000038E4
    lwc1    $f0, 0x000C(s0)            # 0000000C
lbl_8093A15C:
    lui     $at, %hi(var_8093C014)     # $at = 80940000
    lwc1    $f2, %lo(var_8093C014)($at)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    mfc1    a2, $f2
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f16, $f0, $f10
    lui     a3, 0x4000                 # a3 = 40000000
    swc1    $f2, 0x0010($sp)
    mfc1    a1, $f16
    jal     func_80064178
    nop
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     $at, %hi(var_8093C018)     # $at = 80940000
    lwc1    $f2, %lo(var_8093C018)($at)
    c.eq.s  $f0, $f12
    nop
    bc1fl   lbl_8093A21C
    lw      $ra, 0x0024($sp)
    lh      v0, 0x02FC(s0)             # 000002FC
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a3, 0x3F80                 # a3 = 3F800000
    beq     v0, $zero, lbl_8093A1E0
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x02FC(s0)             # 000002FC
    mfc1    a2, $f2
    swc1    $f2, 0x0010($sp)
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x40C0                 # a1 = 40C00000
    jal     func_80064178
    lui     a3, 0x3F80                 # a3 = 3F800000
    b       lbl_8093A21C
    lw      $ra, 0x0024($sp)
lbl_8093A1E0:
    mfc1    a1, $f12
    mfc1    a2, $f2
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    c.eq.s  $f0, $f18
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    bc1fl   lbl_8093A21C
    lw      $ra, 0x0024($sp)
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lw      $ra, 0x0024($sp)
lbl_8093A21C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8093A22C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xEFDC             # a0 = 0600EFDC
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0xEFDC             # a1 = 0600EFDC
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4080                 # a3 = 40800000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x0178             # a0 = 00000178
    lw      a0, 0x0028($sp)
    lui     $at, %hi(var_8093C01C)     # $at = 80940000
    lwc1    $f10, %lo(var_8093C01C)($at)
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    lui     a1, %hi(func_8093A2B8)     # a1 = 80940000
    addiu   a1, a1, %lo(func_8093A2B8) # a1 = 8093A2B8
    sb      t7, 0x030B(a0)             # 0000030B
    jal     func_80939A90
    swc1    $f10, 0x0068(a0)           # 00000068
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8093A2B8:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0054($sp)
    lui     t7, %hi(var_8093BFB8)      # t7 = 80940000
    addiu   t7, t7, %lo(var_8093BFB8)  # t7 = 8093BFB8
    lw      t9, 0x0000(t7)             # 8093BFB8
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 8093BFBC
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 8093BFC0
    sw      t8, 0x0004(t6)             # FFFFFFF8
    lui     t0, %hi(var_8093BFC4)      # t0 = 80940000
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lui     t1, %hi(var_8093BFC8)      # t1 = 80940000
    lw      t0, %lo(var_8093BFC4)(t0)
    lw      t1, %lo(var_8093BFC8)(t1)
    lw      t2, 0x0054($sp)
    sw      t0, 0x0040($sp)
    sw      t1, 0x003C($sp)
    lw      t3, 0x1C44(t2)             # 00001C44
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      t3, 0x0038($sp)
    lh      t4, 0x00B6(s0)             # 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    lh      t6, 0x02FE(s0)             # 000002FE
    lh      t8, 0x0300(s0)             # 00000300
    subu    t5, a1, t4
    subu    t7, t5, t6
    subu    t9, t7, t8
    sh      t9, 0x0032($sp)
    lwc1    $f4, 0x0068(s0)            # 00000068
    addiu   a3, $zero, 0x00FA          # a3 = 000000FA
    swc1    $f4, 0x0194(s0)            # 00000194
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x02FE             # a0 = 000002FE
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0300             # a0 = 00000300
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      t0, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x0178             # a0 = 00000178
    jal     func_8008C9C0
    sh      t0, 0x0032(s0)             # 00000032
    lw      a0, 0x0038($sp)
    jal     func_800214D8
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f6, $f0
    nop
    bc1fl   lbl_8093A3C4
    lh      v1, 0x0032($sp)
    jal     func_8093A5EC
    lw      a1, 0x0054($sp)
    lh      v1, 0x0032($sp)
lbl_8093A3C4:
    or      a0, s0, $zero              # a0 = 00000000
    bltz    v1, lbl_8093A3D8
    subu    v0, $zero, v1
    b       lbl_8093A3D8
    or      v0, v1, $zero              # v0 = 00000000
lbl_8093A3D8:
    slti    $at, v0, 0x1554
    beql    $at, $zero, lbl_8093A4A8
    lbu     v0, 0x02F7(s0)             # 000002F7
    jal     func_800214AC
    lw      a1, 0x0038($sp)
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f8                   # $f8 = 150.00
    lw      t1, 0x0038($sp)
    c.le.s  $f0, $f8
    nop
    bc1fl   lbl_8093A4A8
    lbu     v0, 0x02F7(s0)             # 000002F7
    lw      t2, 0x066C(t1)             # 0000066C
    lui     $at, 0x002C                # $at = 002C0000
    ori     $at, $at, 0x6080           # $at = 002C6080
    and     t3, t2, $at
    bne     t3, $zero, lbl_8093A49C
    or      a0, s0, $zero              # a0 = 00000000
    lw      t4, 0x0670(t1)             # 00000670
    andi    t5, t4, 0x0080             # t5 = 00000000
    bne     t5, $zero, lbl_8093A49C
    nop
    lbu     t6, 0x02F6(s0)             # 000002F6
    bnel    t6, $zero, lbl_8093A4A8
    lbu     v0, 0x02F7(s0)             # 000002F7
    lh      t7, 0x0302(s0)             # 00000302
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    or      a1, s0, $zero              # a1 = 00000000
    andi    t8, t7, 0x0080             # t8 = 00000000
    bnel    t8, $zero, lbl_8093A484
    addiu   t3, $zero, 0x003C          # t3 = 0000003C
    sh      t9, 0x0110(t1)             # 00000110
    jal     func_80079968
    lw      a0, 0x0054($sp)
    lw      t0, 0x0054($sp)
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    lw      t2, 0x1C44(t0)             # 00001C44
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    sw      s0, 0x0674(t2)             # 00000674
    jal     func_800915CC
    lwc1    $f12, 0x0090(s0)           # 00000090
    addiu   t3, $zero, 0x003C          # t3 = 0000003C
lbl_8093A484:
    sb      t3, 0x02F6(s0)             # 000002F6
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38E5          # a1 = 000038E5
    b       lbl_8093A4A8
    lbu     v0, 0x02F7(s0)             # 000002F7
lbl_8093A49C:
    jal     func_8093A5EC
    lw      a1, 0x0054($sp)
    lbu     v0, 0x02F7(s0)             # 000002F7
lbl_8093A4A8:
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8093A4BC
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    sb      t4, 0x02F7(s0)             # 000002F7
    andi    v0, t4, 0x00FF             # v0 = 000000FF
lbl_8093A4BC:
    bnel    v0, $zero, lbl_8093A544
    lh      t8, 0x001C(s0)             # 0000001C
    jal     func_800214AC
    lw      a1, 0x0038($sp)
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f10                  # $f10 = 45.00
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f0, $f10
    nop
    bc1fl   lbl_8093A544
    lh      t8, 0x001C(s0)             # 0000001C
    jal     func_80021A28
    addiu   a1, $zero, 0x38E3          # a1 = 000038E3
    beq     v0, $zero, lbl_8093A540
    lw      a0, 0x0054($sp)
    lw      t5, 0x0038($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, a0
    sh      $zero, 0x0110(t5)          # 00000110
    lw      t9, 0x1D4C(t9)             # 00011D4C
    lw      a1, 0x0038($sp)
    jalr    $ra, t9
    nop
    beql    v0, $zero, lbl_8093A570
    lui     $at, 0x4120                # $at = 41200000
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      a0, s0, $zero              # a0 = 00000000
    and     t7, t6, $at
    jal     func_8093AA98
    sw      t7, 0x0004(s0)             # 00000004
    b       lbl_8093A570
    lui     $at, 0x4120                # $at = 41200000
lbl_8093A540:
    lh      t8, 0x001C(s0)             # 0000001C
lbl_8093A544:
    blezl   t8, lbl_8093A570
    lui     $at, 0x4120                # $at = 41200000
    lw      t1, 0x0118(s0)             # 00000118
    beql    t1, $zero, lbl_8093A56C
    sb      $zero, 0x02F5(s0)          # 000002F5
    jal     func_8093A880
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8093A570
    lui     $at, 0x4120                # $at = 41200000
    sb      $zero, 0x02F5(s0)          # 000002F5
lbl_8093A56C:
    lui     $at, 0x4120                # $at = 41200000
lbl_8093A570:
    mtc1    $at, $f16                  # $f16 = 10.00
    lwc1    $f0, 0x0190(s0)            # 00000190
    lui     $at, 0x41B0                # $at = 41B00000
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f16, $f0
    nop
    bc1t    lbl_8093A5AC
    nop
    mtc1    $at, $f18                  # $f18 = 22.00
    lw      t0, 0x0054($sp)
    lui     t2, 0x0001                 # t2 = 00010000
    c.eq.s  $f18, $f0
    addu    t2, t2, t0
    bc1fl   lbl_8093A5C0
    lw      t2, 0x1DE4(t2)             # 00011DE4
lbl_8093A5AC:
    jal     func_80022FD0
    addiu   a1, $zero, 0x382E          # a1 = 0000382E
    b       lbl_8093A5DC
    lw      $ra, 0x0024($sp)
    lw      t2, 0x1DE4(t2)             # 00001DE4
lbl_8093A5C0:
    or      a0, s0, $zero              # a0 = 00000000
    andi    t3, t2, 0x005F             # t3 = 00000000
    bnel    t3, $zero, lbl_8093A5DC
    lw      $ra, 0x0024($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x38E4          # a1 = 000038E4
    lw      $ra, 0x0024($sp)
lbl_8093A5DC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_8093A5EC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xEFDC             # a0 = 0600EFDC
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0xEFDC             # a1 = 0600EFDC
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x0178             # a0 = 00000178
    lw      a0, 0x0028($sp)
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    lui     a1, %hi(func_8093A66C)     # a1 = 80940000
    addiu   a1, a1, %lo(func_8093A66C) # a1 = 8093A66C
    jal     func_80939A90
    sb      t7, 0x030B(a0)             # 0000030B
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8093A66C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    addiu   a1, s0, 0x0008             # a1 = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      a1, 0x0028($sp)
    jal     func_8002140C
    sw      t7, 0x0034($sp)
    sh      v0, 0x002E($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800214D8
    lw      a1, 0x0028($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lh      a1, 0x002E($sp)
    addiu   a3, $zero, 0x01C2          # a3 = 000001C2
    c.le.s  $f4, $f0
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bc1fl   lbl_8093A6EC
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    b       lbl_8093A734
    addiu   a0, s0, 0x02FE             # a0 = 000002FE
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_8093A6EC:
    lh      a1, 0x0016(s0)             # 00000016
    addiu   a3, $zero, 0x01C2          # a3 = 000001C2
    swc1    $f6, 0x0068(s0)            # 00000068
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    bnel    v0, $zero, lbl_8093A734
    addiu   a0, s0, 0x02FE             # a0 = 000002FE
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t8, $at, lbl_8093A728
    nop
    jal     func_80939D38
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8093A734
    addiu   a0, s0, 0x02FE             # a0 = 000002FE
lbl_8093A728:
    jal     func_8093B080
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x02FE             # a0 = 000002FE
lbl_8093A734:
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0300             # a0 = 00000300
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      t9, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x0178             # a0 = 00000178
    jal     func_8008C9C0
    sh      t9, 0x0032(s0)             # 00000032
    lw      a0, 0x0034($sp)
    lui     $at, 0x002C                # $at = 002C0000
    ori     $at, $at, 0x6080           # $at = 002C6080
    lw      t0, 0x066C(a0)             # 0000066C
    and     t1, t0, $at
    bnel    t1, $zero, lbl_8093A7D8
    lh      t4, 0x001C(s0)             # 0000001C
    lw      t2, 0x0670(a0)             # 00000670
    andi    t3, t2, 0x0080             # t3 = 00000000
    bnel    t3, $zero, lbl_8093A7D8
    lh      t4, 0x001C(s0)             # 0000001C
    jal     func_800214D8
    lw      a1, 0x0028($sp)
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f8                   # $f8 = 150.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_8093A7D8
    lh      t4, 0x001C(s0)             # 0000001C
    sb      $zero, 0x001F(s0)          # 0000001F
    jal     func_8093A22C
    lw      a1, 0x003C($sp)
    b       lbl_8093A804
    lui     $at, 0x4120                # $at = 41200000
    lh      t4, 0x001C(s0)             # 0000001C
lbl_8093A7D8:
    blezl   t4, lbl_8093A804
    lui     $at, 0x4120                # $at = 41200000
    lw      t5, 0x0118(s0)             # 00000118
    beql    t5, $zero, lbl_8093A800
    sb      $zero, 0x02F5(s0)          # 000002F5
    jal     func_8093A880
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8093A804
    lui     $at, 0x4120                # $at = 41200000
    sb      $zero, 0x02F5(s0)          # 000002F5
lbl_8093A800:
    lui     $at, 0x4120                # $at = 41200000
lbl_8093A804:
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f0, 0x0190(s0)            # 00000190
    lui     $at, 0x41B0                # $at = 41B00000
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f10, $f0
    nop
    bc1t    lbl_8093A840
    nop
    mtc1    $at, $f16                  # $f16 = 22.00
    lw      t6, 0x003C($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    c.eq.s  $f16, $f0
    addu    t7, t7, t6
    bc1fl   lbl_8093A854
    lw      t7, 0x1DE4(t7)             # 00011DE4
lbl_8093A840:
    jal     func_80022FD0
    addiu   a1, $zero, 0x382E          # a1 = 0000382E
    b       lbl_8093A870
    lw      $ra, 0x0024($sp)
    lw      t7, 0x1DE4(t7)             # 00001DE4
lbl_8093A854:
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x005F             # t8 = 00000000
    bnel    t8, $zero, lbl_8093A870
    lw      $ra, 0x0024($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x38E4          # a1 = 000038E4
    lw      $ra, 0x0024($sp)
lbl_8093A870:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8093A880:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xEFDC             # a0 = 0600EFDC
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0xEFDC             # a1 = 0600EFDC
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x0178             # a0 = 00000178
    lw      a0, 0x0028($sp)
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     a1, %hi(func_8093A904)     # a1 = 80940000
    addiu   a1, a1, %lo(func_8093A904) # a1 = 8093A904
    sb      t7, 0x030B(a0)             # 0000030B
    jal     func_80939A90
    sb      t8, 0x02F5(a0)             # 000002F5
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8093A904:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    lw      v0, 0x0118(s0)             # 00000118
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8093AA00
    nop
    lw      t7, 0x0024(v0)             # 00000024
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFEC
    or      a0, s0, $zero              # a0 = 00000000
    sw      t7, 0x0000(a1)             # FFFFFFEC
    lw      t6, 0x0028(v0)             # 00000028
    sw      t6, 0x0004(a1)             # FFFFFFF0
    lw      t7, 0x002C(v0)             # 0000002C
    jal     func_8002140C
    sw      t7, 0x0008(a1)             # FFFFFFF4
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x00FA          # a3 = 000000FA
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800214D8
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFEC
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f4                   # $f4 = 45.00
    lui     $at, %hi(var_8093C020)     # $at = 80940000
    c.le.s  $f4, $f0
    nop
    bc1fl   lbl_8093A9A0
    lh      t8, 0x001C(s0)             # 0000001C
    lwc1    $f6, %lo(var_8093C020)($at)
    b       lbl_8093A9C8
    swc1    $f6, 0x0068(s0)            # 00000068
    lh      t8, 0x001C(s0)             # 0000001C
lbl_8093A9A0:
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t8, $at, lbl_8093A9C0
    swc1    $f8, 0x0068(s0)            # 00000068
    jal     func_80939D38
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8093A9CC
    addiu   a0, s0, 0x02FE             # a0 = 000002FE
lbl_8093A9C0:
    jal     func_8093B080
    or      a0, s0, $zero              # a0 = 00000000
lbl_8093A9C8:
    addiu   a0, s0, 0x02FE             # a0 = 000002FE
lbl_8093A9CC:
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0300             # a0 = 00000300
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    b       lbl_8093AA0C
    lh      t9, 0x00B6(s0)             # 000000B6
lbl_8093AA00:
    jal     func_8093A22C
    lw      a1, 0x0044($sp)
    lh      t9, 0x00B6(s0)             # 000000B6
lbl_8093AA0C:
    addiu   a0, s0, 0x0178             # a0 = 00000178
    jal     func_8008C9C0
    sh      t9, 0x0032(s0)             # 00000032
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f0, 0x0190(s0)            # 00000190
    lui     $at, 0x41B0                # $at = 41B00000
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f10, $f0
    nop
    bc1t    lbl_8093AA58
    nop
    mtc1    $at, $f16                  # $f16 = 22.00
    lw      t0, 0x0044($sp)
    lui     t1, 0x0001                 # t1 = 00010000
    c.eq.s  $f16, $f0
    addu    t1, t1, t0
    bc1fl   lbl_8093AA6C
    lw      t1, 0x1DE4(t1)             # 00011DE4
lbl_8093AA58:
    jal     func_80022FD0
    addiu   a1, $zero, 0x382E          # a1 = 0000382E
    b       lbl_8093AA88
    lw      $ra, 0x0024($sp)
    lw      t1, 0x1DE4(t1)             # 00001DE4
lbl_8093AA6C:
    or      a0, s0, $zero              # a0 = 00000000
    andi    t2, t1, 0x005F             # t2 = 00000000
    bnel    t2, $zero, lbl_8093AA88
    lw      $ra, 0x0024($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x38E4          # a1 = 000038E4
    lw      $ra, 0x0024($sp)
lbl_8093AA88:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8093AA98:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4ADC             # a1 = 06004ADC
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008D1C4
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    andi    t6, $zero, 0x00FF          # t6 = 00000000
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    lui     a1, %hi(func_8093AAFC)     # a1 = 80940000
    addiu   a1, a1, %lo(func_8093AAFC) # a1 = 8093AAFC
    sh      t6, 0x02FC(a0)             # 000002FC
    sb      $zero, 0x02F4(a0)          # 000002F4
    sb      t7, 0x0309(a0)             # 00000309
    sb      t8, 0x030B(a0)             # 0000030B
    jal     func_80939A90
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8093AAFC:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x004C($sp)
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      a0, 0x0034($sp)
    jal     func_8008C9C0
    sw      t7, 0x0040($sp)
    beql    v0, $zero, lbl_8093AB40
    lbu     t0, 0x02F4(s0)             # 000002F4
    lbu     t8, 0x02F4(s0)             # 000002F4
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x02F4(s0)             # 000002F4
    lbu     t0, 0x02F4(s0)             # 000002F4
lbl_8093AB40:
    sltiu   $at, t0, 0x0005
    beq     $at, $zero, lbl_8093AE54
    sll     t0, t0,  2
    lui     $at, %hi(var_8093C024)     # $at = 80940000
    addu    $at, $at, t0
    lw      t0, %lo(var_8093C024)($at)
    jr      t0
    nop
var_8093AB60:
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4268             # a1 = 06004268
    jal     func_8008D2D4
    lw      a0, 0x0034($sp)
    lbu     t1, 0x02F4(s0)             # 000002F4
    lw      a0, 0x004C($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x02F4(s0)             # 000002F4
    addu    t9, t9, a0
    lw      t9, 0x1D58(t9)             # 00011D58
    addiu   a1, $zero, 0xFFF8          # a1 = FFFFFFF8
    jalr    $ra, t9
    nop
    lwc1    $f12, 0x0090(s0)           # 00000090
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_800915CC
    addiu   a3, $zero, 0x000C          # a3 = 0000000C
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x0309(s0)             # 00000309
var_8093ABB4:
    addiu   a0, s0, 0x02FE             # a0 = 000002FE
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0300             # a0 = 00000300
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    jal     func_80064508
    sw      $zero, 0x0010($sp)
var_8093ABE4:
    lw      t4, 0x0040($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t5, 0x0670(t4)             # 00000670
    andi    t6, t5, 0x0080             # t6 = 00000000
    bne     t6, $zero, lbl_8093AC54
    nop
    jal     func_8008A194
    addiu   a0, a0, 0x46F8             # a0 = 060046F8
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    mfc1    a3, $f0
    sw      t7, 0x0014($sp)
    addiu   a1, a1, 0x46F8             # a1 = 060046F8
    lw      a0, 0x0034($sp)
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lbu     t8, 0x02F4(s0)             # 000002F4
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    sb      t1, 0x030B(s0)             # 0000030B
    addiu   t0, t8, 0x0001             # t0 = 00000001
    b       lbl_8093AE54
    sb      t0, 0x02F4(s0)             # 000002F4
lbl_8093AC54:
    lw      t2, -0x5A2C(t2)            # FFFFA5D4
    lui     a1, 0xC4BB                 # a1 = C4BB0000
    ori     a1, a1, 0x8000             # a1 = C4BB8000
    beq     t2, $zero, lbl_8093AC7C
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4316                 # a3 = 43160000
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
lbl_8093AC7C:
    lw      t9, 0x0040($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(t9)             # 000000B6
    lui     $at, 0xC1C8                # $at = C1C80000
    mtc1    $at, $f10                  # $f10 = -25.00
    lw      t3, 0x0040($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    mul.s   $f16, $f0, $f10
    lwc1    $f18, 0x0024(t3)           # 00000024
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    swc1    $f6, 0x0010($sp)
    add.s   $f4, $f16, $f18
    mfc1    a1, $f4
    jal     func_80064178
    nop
    lw      t4, 0x0040($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x0028(t4)             # 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    lw      t5, 0x0040($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(t5)             # 000000B6
    lui     $at, 0xC1C8                # $at = C1C80000
    mtc1    $at, $f10                  # $f10 = -25.00
    lw      t6, 0x0040($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    mul.s   $f16, $f0, $f10
    lwc1    $f18, 0x002C(t6)           # 0000002C
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    swc1    $f6, 0x0010($sp)
    add.s   $f4, $f16, $f18
    mfc1    a1, $f4
    jal     func_80064178
    nop
    lw      t7, 0x0040($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      a1, 0x00B6(t7)             # 000000B6
    sw      $zero, 0x0010($sp)
    jal     func_80064508
    addiu   a3, $zero, 0x1770          # a3 = 00001770
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f10, 0x0190(s0)           # 00000190
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f8, $f10
    nop
    bc1fl   lbl_8093AD68
    lbu     t8, 0x0309(s0)             # 00000309
    jal     func_80022FD0
    addiu   a1, $zero, 0x38E8          # a1 = 000038E8
    lbu     t8, 0x0309(s0)             # 00000309
lbl_8093AD68:
    addiu   t0, t8, 0xFFFF             # t0 = FFFFFFFF
    andi    t1, t0, 0x00FF             # t1 = 000000FF
    bne     t1, $zero, lbl_8093AE54
    sb      t0, 0x0309(s0)             # 00000309
    lw      a0, 0x004C($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    addiu   a1, $zero, 0xFFF8          # a1 = FFFFFFF8
    addu    t9, t9, a0
    lw      t9, 0x1D58(t9)             # 00011D58
    jalr    $ra, t9
    nop
    lwc1    $f12, 0x0090(s0)           # 00000090
    addiu   a1, $zero, 0x00F0          # a1 = 000000F0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_800915CC
    addiu   a3, $zero, 0x000C          # a3 = 0000000C
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x0309(s0)             # 00000309
    lw      a0, 0x0040($sp)
    lw      t4, 0x0668(a0)             # 00000668
    lhu     a1, 0x0092(t4)             # 00000092
    addiu   a1, a1, 0x6805             # a1 = 00006805
    jal     func_80022F84
    andi    a1, a1, 0xFFFF             # a1 = 00006805
    b       lbl_8093AE58
    lw      $ra, 0x002C($sp)
var_8093ADD0:
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x5A2C(t5)            # 8011A5D4
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     t5, $zero, lbl_8093AE54
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     a3, 0x43C8                 # a3 = 43C80000
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    b       lbl_8093AE58
    lw      $ra, 0x002C($sp)
var_8093AE00:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     t6, $zero, lbl_8093AE28
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     a3, 0x43C8                 # a3 = 43C80000
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
lbl_8093AE28:
    lw      t7, 0x0004(s0)             # 00000004
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    addiu   t1, $zero, 0x000F          # t1 = 0000000F
    ori     t8, t7, 0x0001             # t8 = 00000001
    sb      $zero, 0x001F(s0)          # 0000001F
    sw      t8, 0x0004(s0)             # 00000004
    sb      t0, 0x02F6(s0)             # 000002F6
    sb      t1, 0x02F7(s0)             # 000002F7
    lw      a1, 0x004C($sp)
    jal     func_8093A22C
    or      a0, s0, $zero              # a0 = 00000000
lbl_8093AE54:
    lw      $ra, 0x002C($sp)
lbl_8093AE58:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_8093AE68:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4F94             # a0 = 06004F94
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x4F94             # a1 = 06004F94
    swc1    $f6, 0x0010($sp)
    addiu   a0, a0, 0x0178             # a0 = 00000178
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      a0, 0x0028($sp)
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    lui     a1, %hi(func_8093AEE0)     # a1 = 80940000
    addiu   a1, a1, %lo(func_8093AEE0) # a1 = 8093AEE0
    jal     func_80939A90
    sb      t7, 0x030B(a0)             # 0000030B
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8093AEE0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0044($sp)
    lui     t7, %hi(var_8093BFCC)      # t7 = 80940000
    addiu   t7, t7, %lo(var_8093BFCC)  # t7 = 8093BFCC
    lw      t9, 0x0000(t7)             # 8093BFCC
    addiu   t6, $sp, 0x0034            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 8093BFD0
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 8093BFD4
    sw      t8, 0x0004(t6)             # FFFFFFF8
    lui     t1, %hi(var_8093BFD8)      # t1 = 80940000
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lui     t2, %hi(var_8093BFDC)      # t2 = 80940000
    lw      t1, %lo(var_8093BFD8)(t1)
    lw      t2, %lo(var_8093BFDC)(t2)
    lw      t3, 0x0044($sp)
    sw      t1, 0x0030($sp)
    sw      t2, 0x002C($sp)
    lh      t5, 0x00B6(s0)             # 000000B6
    lh      t4, 0x008A(s0)             # 0000008A
    lh      t7, 0x02FE(s0)             # 000002FE
    lh      t9, 0x0300(s0)             # 00000300
    subu    t6, t4, t5
    subu    t8, t6, t7
    subu    v0, t8, t9
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_8093AF68
    lw      t0, 0x1C44(t3)             # 00001C44
    b       lbl_8093AF6C
    or      v1, v0, $zero              # v1 = 00000000
lbl_8093AF68:
    subu    v1, $zero, v0
lbl_8093AF6C:
    slti    $at, v1, 0x2008
    beql    $at, $zero, lbl_8093AFC8
    lw      $ra, 0x001C($sp)
    lh      t1, 0x0302(s0)             # 00000302
    addiu   t3, $zero, 0x003C          # t3 = 0000003C
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    andi    t2, t1, 0x0080             # t2 = 00000000
    bne     t2, $zero, lbl_8093AFAC
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    sh      t3, 0x0110(t0)             # 00000110
    lwc1    $f12, 0x0090(s0)           # 00000090
    jal     func_800915CC
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    lw      a0, 0x0044($sp)
    jal     func_80079968
    or      a1, s0, $zero              # a1 = 00000000
lbl_8093AFAC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38E5          # a1 = 000038E5
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8093A22C
    lw      a1, 0x0044($sp)
    lw      $ra, 0x001C($sp)
lbl_8093AFC8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8093AFD8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8040             # a1 = 06008040
    addiu   a0, a3, 0x0178             # a0 = 00000178
    lui     a2, 0xC080                 # a2 = C0800000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    lui     a1, %hi(func_8093B024)     # a1 = 80940000
    addiu   a1, a1, %lo(func_8093B024) # a1 = 8093B024
    jal     func_80939A90
    sb      t6, 0x030B(a0)             # 0000030B
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8093B024:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   a0, a1, 0x0178             # a0 = 00000178
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    beq     v0, $zero, lbl_8093B070
    lw      a1, 0x0018($sp)
    lw      t6, 0x0118(a1)             # 00000118
    beq     t6, $zero, lbl_8093B068
    nop
    jal     func_8093A880
    or      a0, a1, $zero              # a0 = 00000000
    b       lbl_8093B074
    lw      $ra, 0x0014($sp)
lbl_8093B068:
    jal     func_8093AE68
    or      a0, a1, $zero              # a0 = 00000000
lbl_8093B070:
    lw      $ra, 0x0014($sp)
lbl_8093B074:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8093B080:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x8040             # a0 = 06008040
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f4, $f4
    lw      a0, 0x0028($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    mfc1    a3, $f4
    addiu   a1, a1, 0x8040             # a1 = 06008040
    lui     a2, 0xBF80                 # a2 = BF800000
    swc1    $f8, 0x0018($sp)
    addiu   a0, a0, 0x0178             # a0 = 00000178
    jal     func_8008D17C
    swc1    $f6, 0x0010($sp)
    lw      a0, 0x0028($sp)
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    lui     a1, %hi(func_8093B100)     # a1 = 80940000
    addiu   a1, a1, %lo(func_8093B100) # a1 = 8093B100
    jal     func_80939A90
    sb      t7, 0x030B(a0)             # 0000030B
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8093B100:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x0178             # a0 = 00000178
    beql    v0, $zero, lbl_8093B130
    lw      $ra, 0x0014($sp)
    jal     func_80939D38
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_8093B130:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8093B13C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x74F0             # a1 = 060074F0
    addiu   a0, a3, 0x0178             # a0 = 00000178
    lui     a2, 0xC0C0                 # a2 = C0C00000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     $at, 0xC000                # $at = C0000000
    lhu     t6, 0x0088(a3)             # 00000088
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_8093B188
    lw      t8, 0x0004(a3)             # 00000004
    mtc1    $at, $f4                   # $f4 = -2.00
    nop
    swc1    $f4, 0x0068(a3)            # 00000068
    lw      t8, 0x0004(a3)             # 00000004
lbl_8093B188:
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38E6          # a1 = 000038E6
    ori     t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0004(a3)             # 00000004
    jal     func_80022FD0
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t0, $zero, 0x0009          # t0 = 00000009
    lui     a1, %hi(func_8093B1C8)     # a1 = 80940000
    addiu   a1, a1, %lo(func_8093B1C8) # a1 = 8093B1C8
    jal     func_80939A90
    sb      t0, 0x030B(a0)             # 0000030B
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8093B1C8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_8093C038)     # $at = 80940000
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   a0, s0, 0x02FE             # a0 = 000002FE
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t7, 0x002C($sp)
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_8093B21C
    lh      t8, 0x008A(s0)             # 0000008A
    lwc1    $f6, %lo(var_8093C038)($at)
    add.s   $f8, $f0, $f6
    swc1    $f8, 0x0068(s0)            # 00000068
    lh      t8, 0x008A(s0)             # 0000008A
lbl_8093B21C:
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x012C          # a3 = 0000012C
    sh      t8, 0x0032(s0)             # 00000032
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0300             # a0 = 00000300
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x012C          # a3 = 0000012C
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beql    v0, $zero, lbl_8093B2C8
    lw      $ra, 0x0024($sp)
    lw      t0, 0x0118(s0)             # 00000118
    lh      t9, 0x00B6(s0)             # 000000B6
    addiu   a1, s0, 0x0008             # a1 = 00000008
    beq     t0, $zero, lbl_8093B27C
    sh      t9, 0x0032(s0)             # 00000032
    jal     func_8093A880
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8093B2C0
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
lbl_8093B27C:
    jal     func_800214D8
    lw      a0, 0x002C($sp)
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f10                  # $f10 = 150.00
    lw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f10, $f0
    nop
    bc1f    lbl_8093B2B4
    nop
    jal     func_8093A5EC
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8093B2C0
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
lbl_8093B2B4:
    jal     func_8093A22C
    lw      a1, 0x0034($sp)
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
lbl_8093B2C0:
    sb      t1, 0x030D(s0)             # 0000030D
    lw      $ra, 0x0024($sp)
lbl_8093B2C8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8093B2D8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x6E88             # a1 = 06006E88
    addiu   a0, a3, 0x0178             # a0 = 00000178
    lui     a2, 0xBF80                 # a2 = BF800000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      t8, 0x0004(a0)             # 00000004
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t7, $zero, 0x012C          # t7 = 0000012C
    and     t9, t8, $at
    addiu   a1, $zero, 0x38E7          # a1 = 000038E7
    sb      t6, 0x030B(a0)             # 0000030B
    sh      t7, 0x02FC(a0)             # 000002FC
    sw      t9, 0x0004(a0)             # 00000004
    jal     func_80022FD0
    swc1    $f4, 0x0068(a0)            # 00000068
    lui     a1, %hi(func_8093B350)     # a1 = 80940000
    lw      a0, 0x0018($sp)
    jal     func_80939A90
    addiu   a1, a1, %lo(func_8093B350) # a1 = 8093B350
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8093B350:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lbu     t6, 0x0002(s0)             # 00000002
    lw      a0, 0x002C($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     t6, $at, lbl_8093B384
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800265D4
    addiu   a3, $zero, 0x0006          # a3 = 00000006
lbl_8093B384:
    addiu   a0, s0, 0x02FE             # a0 = 000002FE
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0300             # a0 = 00000300
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beql    v0, $zero, lbl_8093B45C
    lwc1    $f10, 0x0190(s0)           # 00000190
    lh      v0, 0x02FC(s0)             # 000002FC
    bne     v0, $zero, lbl_8093B450
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    lh      a1, 0x0302(s0)             # 00000302
    lw      a0, 0x002C($sp)
    jal     func_8002049C
    andi    a1, a1, 0x007F             # a1 = 00000000
    bnel    v0, $zero, lbl_8093B3FC
    lh      v0, 0x0304(s0)             # 00000304
    lh      a1, 0x0302(s0)             # 00000302
    lw      a0, 0x002C($sp)
    jal     func_800204D0
    andi    a1, a1, 0x007F             # a1 = 00000000
    lh      v0, 0x0304(s0)             # 00000304
lbl_8093B3FC:
    addiu   $at, $zero, 0x00B4         # $at = 000000B4
    beq     v0, $zero, lbl_8093B440
    nop
    bne     v0, $at, lbl_8093B420
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80939CCC
    or      a2, $zero, $zero           # a2 = 00000000
    lh      v0, 0x0304(s0)             # 00000304
lbl_8093B420:
    lui     $at, %hi(var_8093C03C)     # $at = 80940000
    lwc1    $f6, %lo(var_8093C03C)($at)
    lwc1    $f4, 0x0054(s0)            # 00000054
    addiu   t8, v0, 0xFFFB             # t8 = FFFFFFFB
    sh      t8, 0x0304(s0)             # 00000304
    sub.s   $f8, $f4, $f6
    b       lbl_8093B488
    swc1    $f8, 0x0054(s0)            # 00000054
lbl_8093B440:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8093B48C
    lw      $ra, 0x0024($sp)
lbl_8093B450:
    b       lbl_8093B488
    sh      t9, 0x02FC(s0)             # 000002FC
    lwc1    $f10, 0x0190(s0)           # 00000190
lbl_8093B45C:
    addiu   $at, $zero, 0x0021         # $at = 00000021
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f16, $f10
    mfc1    v0, $f16
    nop
    beq     v0, $at, lbl_8093B480
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bnel    v0, $at, lbl_8093B48C
    lw      $ra, 0x0024($sp)
lbl_8093B480:
    jal     func_80022FD0
    addiu   a1, $zero, 0x387A          # a1 = 0000387A
lbl_8093B488:
    lw      $ra, 0x0024($sp)
lbl_8093B48C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8093B49C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mtc1    $zero, $f4                 # $f4 = 0.00
    lh      t6, 0x00B6(s0)             # 000000B6
    sb      v0, 0x030B(s0)             # 0000030B
    lui     t7, 0x8012                 # t7 = 80120000
    swc1    $f4, 0x0068(s0)            # 00000068
    sh      t6, 0x0032(s0)             # 00000032
    lh      t7, -0x460E(t7)            # 8011B9F2
    addiu   t8, $zero, 0x0258          # t8 = 00000258
    or      a0, s0, $zero              # a0 = 00000000
    beq     t7, $zero, lbl_8093B50C
    addiu   a1, $zero, 0x3836          # a1 = 00003836
    sb      v0, 0x0308(s0)             # 00000308
    jal     func_80022FD0
    sh      t8, 0x0306(s0)             # 00000306
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sw      t9, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x8000          # a1 = FFFF8000
    addiu   a2, $zero, 0x80C8          # a2 = FFFF80C8
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    b       lbl_8093B564
    nop
lbl_8093B50C:
    lbu     t0, 0x030C(s0)             # 0000030C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a1, $zero, $zero           # a1 = 00000000
    bne     t0, $at, lbl_8093B540
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    sw      t1, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    b       lbl_8093B564
    nop
lbl_8093B540:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3836          # a1 = 00003836
    addiu   t2, $zero, 0x0050          # t2 = 00000050
    sw      t2, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x8000          # a1 = FFFF8000
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
lbl_8093B564:
    lui     a1, %hi(func_8093B588)     # a1 = 80940000
    addiu   a1, a1, %lo(func_8093B588) # a1 = 8093B588
    jal     func_80939A90
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8093B588:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lbu     t6, 0x0308(s0)             # 00000308
    beql    t6, $zero, lbl_8093B5F8
    lbu     t9, 0x0114(s0)             # 00000114
    lh      v0, 0x0306(s0)             # 00000306
    beq     v0, $zero, lbl_8093B5F4
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0306(s0)             # 00000306
    lh      v0, 0x0306(s0)             # 00000306
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x8000          # a1 = FFFF8000
    slti    $at, v0, 0x00FF
    bne     $at, $zero, lbl_8093B5E4
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t8, 0x0010($sp)
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lh      v0, 0x0306(s0)             # 00000306
lbl_8093B5E4:
    bne     v0, $zero, lbl_8093B5F4
    lui     $at, 0x8012                # $at = 80120000
    sb      $zero, 0x0308(s0)          # 00000308
    sh      $zero, -0x460E($at)        # 8011B9F2
lbl_8093B5F4:
    lbu     t9, 0x0114(s0)             # 00000114
lbl_8093B5F8:
    bnel    t9, $zero, lbl_8093B64C
    lw      $ra, 0x0024($sp)
    lbu     t0, 0x00AF(s0)             # 000000AF
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    bne     t0, $zero, lbl_8093B640
    nop
    jal     func_80939CCC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8093B2D8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    jal     func_80013A84
    addiu   a3, $zero, 0x0090          # a3 = 00000090
    b       lbl_8093B64C
    lw      $ra, 0x0024($sp)
lbl_8093B640:
    jal     func_8093B13C
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_8093B64C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8093B65C:
    sw      a1, 0x0004($sp)
    lh      a1, 0x00B6(a0)             # 000000B6
    lh      a2, 0x0300(a0)             # 00000300
    lh      v1, 0x008A(a0)             # 0000008A
    addu    t8, a1, a2
    subu    v0, v1, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0xFE0C
    beq     $at, $zero, lbl_8093B690
    subu    t1, v1, a1
    b       lbl_8093B6AC
    addiu   a3, $zero, 0xFE0C          # a3 = FFFFFE0C
lbl_8093B690:
    slti    $at, v0, 0x01F5
    bne     $at, $zero, lbl_8093B6A4
    or      t0, v0, $zero              # t0 = 00000000
    b       lbl_8093B6A4
    addiu   t0, $zero, 0x01F4          # t0 = 000001F4
lbl_8093B6A4:
    sll     a3, t0, 16
    sra     a3, a3, 16
lbl_8093B6AC:
    lh      t9, 0x02FE(a0)             # 000002FE
    sll     t2, t1, 16
    sra     t3, t2, 16
    subu    v0, v0, t9
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0xFE0C
    beql    $at, $zero, lbl_8093B6DC
    slti    $at, v0, 0x01F5
    b       lbl_8093B6F4
    addiu   v0, $zero, 0xFE0C          # v0 = FFFFFE0C
    slti    $at, v0, 0x01F5
lbl_8093B6DC:
    bne     $at, $zero, lbl_8093B6EC
    or      t0, v0, $zero              # t0 = FFFFFE0C
    b       lbl_8093B6EC
    addiu   t0, $zero, 0x01F4          # t0 = 000001F4
lbl_8093B6EC:
    sll     v0, t0, 16
    sra     v0, v0, 16
lbl_8093B6F4:
    bltz    t3, lbl_8093B734
    addiu   t1, $zero, 0xB6A1          # t1 = FFFFB6A1
    bltz    a3, lbl_8093B70C
    subu    t0, $zero, a3
    b       lbl_8093B70C
    or      t0, a3, $zero              # t0 = FFFFFE0C
lbl_8093B70C:
    addu    t4, a2, t0
    bltz    v0, lbl_8093B720
    sh      t4, 0x0300(a0)             # 00000300
    b       lbl_8093B724
    or      t0, v0, $zero              # t0 = FFFFFE0C
lbl_8093B720:
    subu    t0, $zero, v0
lbl_8093B724:
    lh      t5, 0x02FE(a0)             # 000002FE
    addu    t6, t5, t0
    b       lbl_8093B768
    sh      t6, 0x02FE(a0)             # 000002FE
lbl_8093B734:
    bltz    a3, lbl_8093B744
    subu    t0, $zero, a3
    b       lbl_8093B744
    or      t0, a3, $zero              # t0 = FFFFFE0C
lbl_8093B744:
    subu    t7, a2, t0
    bltz    v0, lbl_8093B758
    sh      t7, 0x0300(a0)             # 00000300
    b       lbl_8093B75C
    or      t0, v0, $zero              # t0 = FFFFFE0C
lbl_8093B758:
    subu    t0, $zero, v0
lbl_8093B75C:
    lh      t8, 0x02FE(a0)             # 000002FE
    subu    t9, t8, t0
    sh      t9, 0x02FE(a0)             # 000002FE
lbl_8093B768:
    lh      a2, 0x0300(a0)             # 00000300
    addiu   t2, $zero, 0xDA91          # t2 = FFFFDA91
    slti    $at, a2, 0xB6A1
    beql    $at, $zero, lbl_8093B788
    slti    $at, a2, 0x4960
    b       lbl_8093B79C
    sh      t1, 0x0300(a0)             # 00000300
    slti    $at, a2, 0x4960
lbl_8093B788:
    bne     $at, $zero, lbl_8093B798
    or      t0, a2, $zero              # t0 = 00000000
    b       lbl_8093B798
    addiu   t0, $zero, 0x495F          # t0 = 0000495F
lbl_8093B798:
    sh      t0, 0x0300(a0)             # 00000300
lbl_8093B79C:
    lh      v0, 0x02FE(a0)             # 000002FE
    slti    $at, v0, 0xDA91
    beql    $at, $zero, lbl_8093B7B8
    slti    $at, v0, 0x2570
    jr      $ra
    sh      t2, 0x02FE(a0)             # 000002FE
lbl_8093B7B4:
    slti    $at, v0, 0x2570
lbl_8093B7B8:
    bne     $at, $zero, lbl_8093B7C8
    or      t0, v0, $zero              # t0 = FFFFFE0C
    b       lbl_8093B7C8
    addiu   t0, $zero, 0x256F          # t0 = 0000256F
lbl_8093B7C8:
    sh      t0, 0x02FE(a0)             # 000002FE
    jr      $ra
    nop


func_8093B7D4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lh      t7, -0x460E(t7)            # 8011B9F2
    lw      t6, 0x0034($sp)
    beq     t7, $zero, lbl_8093B844
    lw      v1, 0x1C44(t6)             # 00001C44
    lh      t8, 0x00B4(s0)             # 000000B4
    bnel    t8, $zero, lbl_8093B848
    lbu     v0, 0x0321(s0)             # 00000321
    lbu     t9, 0x0308(s0)             # 00000308
    bnel    t9, $zero, lbl_8093B848
    lbu     v0, 0x0321(s0)             # 00000321
    lbu     v0, 0x030B(s0)             # 0000030B
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_8093B844
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_8093B844
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_8093B848
    lbu     v0, 0x0321(s0)             # 00000321
    jal     func_8093B49C
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8093B990
    lw      $ra, 0x0024($sp)
lbl_8093B844:
    lbu     v0, 0x0321(s0)             # 00000321
lbl_8093B848:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    andi    t0, v0, 0x0002             # t0 = 00000000
    beq     t0, $zero, lbl_8093B98C
    andi    t1, v0, 0xFFFD             # t1 = 00000000
    lbu     t3, 0x030B(s0)             # 0000030B
    lbu     t2, 0x00B1(s0)             # 000000B1
    sb      t1, 0x0321(s0)             # 00000321
    beq     t3, $at, lbl_8093B98C
    sb      t2, 0x030C(s0)             # 0000030C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0328             # a1 = 00000328
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_800283BC
    sw      v1, 0x0028($sp)
    lw      v1, 0x0028($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lb      t4, 0x0834(v1)             # 00000834
    beql    t4, $zero, lbl_8093B8A4
    lbu     v0, 0x030C(s0)             # 0000030C
    lbu     t5, 0x0835(v1)             # 00000835
    sb      t5, 0x030D(s0)             # 0000030D
    lbu     v0, 0x030C(s0)             # 0000030C
lbl_8093B8A4:
    beql    v0, $zero, lbl_8093B990
    lw      $ra, 0x0024($sp)
    beql    v0, $at, lbl_8093B990
    lw      $ra, 0x0024($sp)
    beq     a0, v0, lbl_8093B8C4
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bnel    v0, $at, lbl_8093B8EC
    addiu   $at, $zero, 0x000E         # $at = 0000000E
lbl_8093B8C4:
    lbu     t6, 0x030B(s0)             # 0000030B
    beql    a0, t6, lbl_8093B8EC
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8093B49C
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8093B990
    lw      $ra, 0x0024($sp)
    addiu   $at, $zero, 0x000E         # $at = 0000000E
lbl_8093B8EC:
    sb      $zero, 0x0308(s0)          # 00000308
    bne     v0, $at, lbl_8093B920
    sh      $zero, 0x0306(s0)          # 00000306
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sw      t7, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    b       lbl_8093B93C
    sb      t8, 0x030A(s0)             # 0000030A
lbl_8093B920:
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    sw      t9, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
lbl_8093B93C:
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t0, 0x00AF(s0)             # 000000AF
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    bne     t0, $zero, lbl_8093B984
    nop
    jal     func_80939CCC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8093B2D8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0034($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    jal     func_80013A84
    addiu   a3, $zero, 0x0090          # a3 = 00000090
    b       lbl_8093B990
    lw      $ra, 0x0024($sp)
lbl_8093B984:
    jal     func_8093B13C
    or      a0, s0, $zero              # a0 = 00000000
lbl_8093B98C:
    lw      $ra, 0x0024($sp)
lbl_8093B990:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8093B9A0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      a1, 0x0044($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8093B7D4
    sw      t6, 0x0034($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lh      t7, 0x1422(v0)             # 8011B9F2
    beql    t7, $zero, lbl_8093B9EC
    lbu     v0, 0x030C(s0)             # 0000030C
    lbu     t8, 0x0308(s0)             # 00000308
    bnel    t8, $zero, lbl_8093B9EC
    lbu     v0, 0x030C(s0)             # 0000030C
    sh      $zero, 0x1422(v0)          # 8011B9F2
    lbu     v0, 0x030C(s0)             # 0000030C
lbl_8093B9EC:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    v0, $at, lbl_8093BAD4
    lw      t3, 0x0028(s0)             # 00000028
    lbu     t9, 0x030B(s0)             # 0000030B
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     t9, $at, lbl_8093BA10
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beql    v0, $at, lbl_8093BAD4
    lw      t3, 0x0028(s0)             # 00000028
lbl_8093BA10:
    lbu     v0, 0x02F6(s0)             # 000002F6
    beq     v0, $zero, lbl_8093BA20
    addiu   t0, v0, 0xFFFF             # t0 = 8011A5CF
    sb      t0, 0x02F6(s0)             # 000002F6
lbl_8093BA20:
    lw      t9, 0x02F8(s0)             # 000002F8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jalr    $ra, t9
    nop
    lbu     v0, 0x030B(s0)             # 0000030B
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beql    v0, $at, lbl_8093BA6C
    lh      t1, 0x00B4(s0)             # 000000B4
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0068(s0)            # 00000068
    c.eq.s  $f4, $f6
    nop
    bc1tl   lbl_8093BA6C
    lh      t1, 0x00B4(s0)             # 000000B4
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lbu     v0, 0x030B(s0)             # 0000030B
    lh      t1, 0x00B4(s0)             # 000000B4
lbl_8093BA6C:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    t1, $zero, lbl_8093BAC0
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beql    v0, $at, lbl_8093BAC0
    addiu   $at, $zero, 0x0007         # $at = 00000007
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    c.eq.s  $f8, $f10
    lui     a2, 0x41F0                 # a2 = 41F00000
    lui     a3, 0x41A0                 # a3 = 41A00000
    lui     $at, 0x420C                # $at = 420C0000
    bc1t    lbl_8093BABC
    addiu   t2, $zero, 0x001D          # t2 = 0000001D
    mtc1    $at, $f16                  # $f16 = 35.00
    sw      t2, 0x0014($sp)
    jal     func_80021E6C
    swc1    $f16, 0x0010($sp)
    lbu     v0, 0x030B(s0)             # 0000030B
lbl_8093BABC:
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_8093BAC0:
    bne     v0, $at, lbl_8093BAD0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8093B65C
    lw      a1, 0x0044($sp)
lbl_8093BAD0:
    lw      t3, 0x0028(s0)             # 00000028
lbl_8093BAD4:
    lui     $at, 0x4248                # $at = 42480000
    lw      t4, 0x0024(s0)             # 00000024
    sw      t3, 0x003C(s0)             # 0000003C
    lwc1    $f18, 0x003C(s0)           # 0000003C
    mtc1    $at, $f4                   # $f4 = 50.00
    lbu     t5, 0x00AF(s0)             # 000000AF
    sw      t4, 0x0038(s0)             # 00000038
    add.s   $f6, $f18, $f4
    lw      t4, 0x002C(s0)             # 0000002C
    swc1    $f6, 0x003C(s0)            # 0000003C
    blez    t5, lbl_8093BB78
    sw      t4, 0x0040(s0)             # 00000040
    lbu     t6, 0x030B(s0)             # 0000030B
    addiu   $at, $zero, 0x0008         # $at = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    beq     t6, $at, lbl_8093BB78
    addiu   a1, s0, 0x0310             # a1 = 00000310
    jal     func_80050B00
    sw      a1, 0x0028($sp)
    lw      a0, 0x0044($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    sw      a1, 0x002C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0028($sp)
    lbu     t8, 0x030B(s0)             # 0000030B
    addiu   $at, $zero, 0x0009         # $at = 00000009
    lw      a1, 0x002C($sp)
    bne     t8, $at, lbl_8093BB6C
    lw      v0, 0x0034($sp)
    lb      t0, 0x0834(v0)             # 00000834
    beql    t0, $zero, lbl_8093BB7C
    lw      $ra, 0x0024($sp)
    lbu     t9, 0x030D(s0)             # 0000030D
    lbu     t1, 0x0835(v0)             # 00000835
    beql    t9, t1, lbl_8093BB7C
    lw      $ra, 0x0024($sp)
lbl_8093BB6C:
    lw      a0, 0x0044($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0028($sp)
lbl_8093BB78:
    lw      $ra, 0x0024($sp)
lbl_8093BB7C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8093BB8C:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0017         # $at = 00000017
    bne     a1, $at, lbl_8093BBBC
    lw      v0, 0x0010($sp)
    lw      t7, 0x0014($sp)
    lh      t6, 0x0002(v0)             # 00000002
    lh      t8, 0x02FE(t7)             # 000002FE
    addu    t9, t6, t8
    b       lbl_8093BBDC
    sh      t9, 0x0002(v0)             # 00000002
lbl_8093BBBC:
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     a1, $at, lbl_8093BBDC
    lw      v0, 0x0010($sp)
    lw      t1, 0x0014($sp)
    lh      t0, 0x0002(v0)             # 00000002
    lh      t2, 0x0300(t1)             # 00000300
    addu    t3, t0, t2
    sh      t3, 0x0002(v0)             # 00000002
lbl_8093BBDC:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_8093BBE8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    lw      a2, 0x0048($sp)
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFF4
    sw      $ra, 0x0014($sp)
    sw      a3, 0x0044($sp)
    lui     t6, %hi(var_8093BFE0)      # t6 = 80940000
    addiu   t6, t6, %lo(var_8093BFE0)  # t6 = 8093BFE0
    lw      t8, 0x0000(t6)             # 8093BFE0
    addiu   t3, a1, 0xFFFF             # t3 = FFFFFFFF
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    sw      t8, 0x0000(a0)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 8093BFE4
    sltiu   $at, t3, 0x0019
    sw      t7, 0x0004(a0)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 8093BFE8
    sw      t8, 0x0008(a0)             # FFFFFFFC
    lbu     t9, 0x030A(a2)             # 0000030A
    bne     t9, $zero, lbl_8093BC58
    nop
    lbu     t0, 0x0114(a2)             # 00000114
    beql    t0, $zero, lbl_8093BD24
    lw      $ra, 0x0014($sp)
    lhu     t1, 0x0112(a2)             # 00000112
    andi    t2, t1, 0x4000             # t2 = 00000000
    beql    t2, $zero, lbl_8093BD24
    lw      $ra, 0x0014($sp)
lbl_8093BC58:
    beq     $at, $zero, lbl_8093BCC0
    sll     t3, t3,  2
    lui     $at, %hi(var_8093C040)     # $at = 80940000
    addu    $at, $at, t3
    lw      t3, %lo(var_8093C040)($at)
    jr      t3
    nop
var_8093BC74:
    b       lbl_8093BCC0
    or      v1, $zero, $zero           # v1 = 00000000
var_8093BC7C:
    b       lbl_8093BCC0
    addiu   v1, $zero, 0x0001          # v1 = 00000001
var_8093BC84:
    b       lbl_8093BCC0
    addiu   v1, $zero, 0x0002          # v1 = 00000002
var_8093BC8C:
    b       lbl_8093BCC0
    addiu   v1, $zero, 0x0003          # v1 = 00000003
var_8093BC94:
    b       lbl_8093BCC0
    addiu   v1, $zero, 0x0004          # v1 = 00000004
var_8093BC9C:
    b       lbl_8093BCC0
    addiu   v1, $zero, 0x0005          # v1 = 00000005
var_8093BCA4:
    b       lbl_8093BCC0
    addiu   v1, $zero, 0x0006          # v1 = 00000006
var_8093BCAC:
    b       lbl_8093BCC0
    addiu   v1, $zero, 0x0007          # v1 = 00000007
var_8093BCB4:
    b       lbl_8093BCC0
    addiu   v1, $zero, 0x0008          # v1 = 00000008
var_8093BCBC:
    addiu   v1, $zero, 0x0009          # v1 = 00000009
lbl_8093BCC0:
    bltz    v1, lbl_8093BD20
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFE0
    jal     func_800AB958
    sw      v1, 0x0024($sp)
    lwc1    $f4, 0x0018($sp)
    lw      v1, 0x0024($sp)
    lw      a2, 0x0048($sp)
    trunc.w.s $f6, $f4
    sll     t4, v1,  2
    subu    t4, t4, v1
    sll     t4, t4,  1
    mfc1    t6, $f6
    addu    v0, a2, t4
    sh      t6, 0x013C(v0)             # 0000013C
    lwc1    $f8, 0x001C($sp)
    trunc.w.s $f10, $f8
    mfc1    t8, $f10
    nop
    sh      t8, 0x013E(v0)             # 0000013E
    lwc1    $f16, 0x0020($sp)
    trunc.w.s $f18, $f16
    mfc1    t0, $f18
    nop
    sh      t0, 0x0140(v0)             # 00000140
lbl_8093BD20:
    lw      $ra, 0x0014($sp)
lbl_8093BD24:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8093BD30:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s2, 0x0030($sp)
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s1, 0x002C($sp)
    lw      t8, 0x0024(s0)             # 00000024
    addiu   t6, $sp, 0x005C            # t6 = FFFFFFEC
    sw      t8, 0x0000(t6)             # FFFFFFEC
    lw      t7, 0x0028(s0)             # 00000028
    sw      t7, 0x0004(t6)             # FFFFFFF0
    lw      t8, 0x002C(s0)             # 0000002C
    sw      t8, 0x0008(t6)             # FFFFFFF4
    lh      t9, 0x0304(s0)             # 00000304
    lw      a2, 0x0000(s2)             # 00000000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     t9, $at, lbl_8093BE88
    or      s1, a2, $zero              # s1 = 00000000
    jal     func_8007E298
    or      a0, a2, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t2, 0xFB00                 # t2 = FB000000
    lui     t6, 0xDB06                 # t6 = DB060000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lh      t3, 0x0304(s0)             # 00000304
    ori     t6, t6, 0x0020             # t6 = DB060020
    lui     t8, %hi(func_8093BB8C)     # t8 = 80940000
    andi    t4, t3, 0x00FF             # t4 = 00000000
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x8520             # t7 = 800E8520
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      a1, 0x017C(s0)             # 0000017C
    lw      a2, 0x0198(s0)             # 00000198
    lbu     a3, 0x017A(s0)             # 0000017A
    lui     t9, %hi(func_8093BBE8)     # t9 = 80940000
    addiu   t9, t9, %lo(func_8093BBE8) # t9 = 8093BBE8
    addiu   t8, t8, %lo(func_8093BB8C) # t8 = 8093BB8C
    sw      t8, 0x0010($sp)
    sw      t9, 0x0014($sp)
    sw      s0, 0x0018($sp)
    lw      t1, 0x02C0(s1)             # 000002C0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8008A88C
    sw      t1, 0x001C($sp)
    lui     a1, %hi(var_8093BFF8)      # a1 = 80940000
    sw      v0, 0x02C0(s1)             # 000002C0
    addiu   a1, a1, %lo(var_8093BFF8)  # a1 = 8093BFF8
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFEC
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80026AD0
    or      a3, s2, $zero              # a3 = 00000000
    lbu     t2, 0x030A(s0)             # 0000030A
    beql    t2, $zero, lbl_8093BF24
    lw      $ra, 0x0034($sp)
    lbu     t5, 0x030A(s0)             # 0000030A
    lbu     t3, 0x0114(s0)             # 00000114
    or      a0, s2, $zero              # a0 = 00000000
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    andi    v1, t6, 0x00FF             # v1 = 000000FF
    andi    t7, v1, 0x0003             # t7 = 00000003
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x0114(s0)             # 00000114
    bne     t7, $zero, lbl_8093BF20
    sb      t6, 0x030A(s0)             # 0000030A
    sra     v0, v1,  2
    sll     t8, v0,  2
    subu    t8, t8, v0
    sll     t8, t8,  1
    addu    a2, s0, t8
    addiu   a2, a2, 0x013C             # a2 = 0000013C
    sw      v0, 0x0018($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x004B          # a3 = 0000004B
    sw      $zero, 0x0010($sp)
    jal     func_8001E064
    sw      $zero, 0x0014($sp)
    b       lbl_8093BF24
    lw      $ra, 0x0034($sp)
lbl_8093BE88:
    jal     func_8007E2C0
    or      a0, a2, $zero              # a0 = 00000000
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xFB00                 # t1 = FB000000
    lui     t5, 0xDB06                 # t5 = DB060000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t2, 0x0304(s0)             # 00000304
    ori     t5, t5, 0x0020             # t5 = DB060020
    lui     t7, %hi(func_8093BB8C)     # t7 = 80940000
    andi    t3, t2, 0x00FF             # t3 = 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x8510             # t6 = 800E8510
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      a1, 0x017C(s0)             # 0000017C
    lw      a2, 0x0198(s0)             # 00000198
    lbu     a3, 0x017A(s0)             # 0000017A
    addiu   t7, t7, %lo(func_8093BB8C) # t7 = 8093BB8C
    sw      t7, 0x0010($sp)
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    lw      t8, 0x02D0(s1)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8008A88C
    sw      t8, 0x001C($sp)
    sw      v0, 0x02D0(s1)             # 000002D0
    lui     a1, %hi(var_8093BFF8)      # a1 = 80940000
    addiu   a1, a1, %lo(var_8093BFF8)  # a1 = 8093BFF8
    lbu     a2, 0x0305(s0)             # 00000305
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFEC
    jal     func_80026AD0
    or      a3, s2, $zero              # a3 = 00000000
lbl_8093BF20:
    lw      $ra, 0x0034($sp)
lbl_8093BF24:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    nop
    nop

.section .data

var_8093BF40: .word 0x00900500, 0x00000415, 0x00980000, 0x0000035C
.word func_80939A9C
.word func_80939C88
.word func_8093B9A0
.word func_8093BD30
var_8093BF60: .word \
0x00000909, 0x10010000, 0x01000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00050100, \
0x00140046, 0x00000000, 0x00000000
var_8093BF8C: .word \
0x00F20000, 0x0000F210, 0xF1F2F400, 0x00000000, \
0x00E460D3, 0x0000F1F4, 0xF2F2F8F4, 0x0000F400
var_8093BFAC: .word 0xB04C07D0, 0xC850000A, 0x386CF254
var_8093BFB8: .word 0x00000000, 0x00000000, 0x00000000
var_8093BFC4: .word 0xC8C8FFFF
var_8093BFC8: .word 0x0000FF00
var_8093BFCC: .word 0x00000000, 0x00000000, 0x00000000
var_8093BFD8: .word 0xC8C8FFFF
var_8093BFDC: .word 0x0000FF00
var_8093BFE0: .word \
0x43960000, 0x00000000, 0x00000000, 0x43960000, \
0x00000000, 0x00000000
var_8093BFF8: .word \
0x3E800000, 0x3E800000, 0x3E800000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_8093C010: .word 0x3E99999A
var_8093C014: .word 0x3E99999A
var_8093C018: .word 0x3E99999A
var_8093C01C: .word 0x3ECCCCCD
var_8093C020: .word 0x3ECCCCCD
var_8093C024: .word var_8093ABB4
.word var_8093AB60
.word var_8093ABE4
.word var_8093ADD0
.word var_8093AE00
var_8093C038: .word 0x3E19999A
var_8093C03C: .word 0x389D4952
var_8093C040: .word var_8093BC7C
.word lbl_8093BCC0
.word lbl_8093BCC0
.word var_8093BCAC
.word lbl_8093BCC0
.word var_8093BCBC
.word lbl_8093BCC0
.word lbl_8093BCC0
.word var_8093BCA4
.word lbl_8093BCC0
.word var_8093BCB4
.word lbl_8093BCC0
.word lbl_8093BCC0
.word var_8093BC94
.word lbl_8093BCC0
.word lbl_8093BCC0
.word lbl_8093BCC0
.word var_8093BC8C
.word lbl_8093BCC0
.word lbl_8093BCC0
.word lbl_8093BCC0
.word var_8093BC84
.word lbl_8093BCC0
.word var_8093BC74
.word var_8093BC9C
.word 0x00000000, 0x00000000, 0x00000000

