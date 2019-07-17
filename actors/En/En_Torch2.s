.section .text
func_808BD8E0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    lui     v0, %hi(var_808C0040)      # v0 = 808C0000
    addiu   v0, v0, %lo(var_808C0040)  # v0 = 808C0040
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    sb      $zero, 0x0003(v0)          # 808C0043
    lb      t8, 0x0003(v0)             # 808C0043
    sh      $zero, 0x0012(v0)          # 808C0052
    sh      $zero, 0x000C(v0)          # 808C004C
    sh      $zero, 0x0000(v0)          # 808C0040
    sb      t8, 0x0002(v0)             # 808C0042
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sb      t9, 0x013E(s0)             # 0000013E
    sb      t1, 0x0142(s0)             # 00000142
    sb      t1, 0x0141(s0)             # 00000141
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800796C0
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      a1, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     a2, 0x0600                 # a2 = 06000000
    addu    v0, a1, $at
    sw      v0, 0x0024($sp)
    lw      t9, 0x1D3C(v0)             # 00001D3C
    addiu   a2, a2, 0x4764             # a2 = 06004764
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    lw      v0, 0x0024($sp)
    lw      a1, 0x0034($sp)
    addiu   t5, $zero, 0x0009          # t5 = 00000009
    addiu   a0, $zero, 0x0011          # a0 = 00000011
    addiu   a2, $zero, 0x000D          # a2 = 0000000D
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     t1, %hi(var_808BF948)      # t1 = 808C0000
    addiu   t2, $zero, 0x0026          # t2 = 00000026
    addiu   t1, t1, %lo(var_808BF948)  # t1 = 808BF948
    sb      t2, 0x0117(s0)             # 00000117
    sb      t5, 0x0499(s0)             # 00000499
    sb      a0, 0x0564(s0)             # 00000564
    sb      a0, 0x04E4(s0)             # 000004E4
    sb      a2, 0x0565(s0)             # 00000565
    sb      a2, 0x04E5(s0)             # 000004E5
    sb      t5, 0x0568(s0)             # 00000568
    sb      t5, 0x04E8(s0)             # 000004E8
    sb      t7, 0x0571(s0)             # 00000571
    sb      t7, 0x04F1(s0)             # 000004F1
    sb      t0, 0x0582(s0)             # 00000582
    sb      t0, 0x0502(s0)             # 00000502
    sb      a0, 0x05E4(s0)             # 000005E4
    sb      a2, 0x05E5(s0)             # 000005E5
    sw      t1, 0x0098(s0)             # 00000098
    lui     t9, 0x8012                 # t9 = 80120000
    lh      t9, -0x5A02(t9)            # 8011A5FE
    addiu   t3, $zero, 0x003C          # t3 = 0000003C
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    sra     t2, t9,  3
    sb      t2, 0x00AF(s0)             # 000000AF
    sh      t3, 0x00A8(s0)             # 000000A8
    sh      t4, 0x00AA(s0)             # 000000AA
    lw      t9, 0x1D54(v0)             # 00001D54
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    lui     $at, %hi(var_808C006E)     # $at = 808C0000
    sb      $zero, %lo(var_808C006E)($at)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_808C0071)     # $at = 808C0000
    sb      $zero, %lo(var_808C0071)($at)
    lui     $at, %hi(var_808BF938)     # $at = 808C0000
    swc1    $f4, %lo(var_808BF938)($at)
    lui     $at, %hi(var_808C0058)     # $at = 808C0000
    sb      $zero, %lo(var_808C0058)($at)
    lui     $at, %hi(var_808C006C)     # $at = 808C0000
    sb      $zero, %lo(var_808C006C)($at)
    lui     $at, %hi(var_808C006D)     # $at = 808C0000
    sb      $zero, %lo(var_808C006D)($at)
    lui     v0, %hi(var_808C0072)      # v0 = 808C0000
    lui     v1, %hi(var_808C0073)      # v1 = 808C0000
    addiu   v1, v1, %lo(var_808C0073)  # v1 = 808C0073
    addiu   v0, v0, %lo(var_808C0072)  # v0 = 808C0072
    sb      $zero, 0x0000(v0)          # 808C0072
    sb      $zero, 0x0000(v1)          # 808C0073
    lui     $at, %hi(var_808C0070)     # $at = 808C0000
    sb      $zero, %lo(var_808C0070)($at)
    lui     $at, %hi(var_808C0074)     # $at = 808C0000
    sb      $zero, %lo(var_808C0074)($at)
    lui     $at, %hi(var_808C0075)     # $at = 808C0000
    addiu   t7, $zero, 0x005F          # t7 = 0000005F
    sb      t7, %lo(var_808C0075)($at)
    lw      t1, 0x0008(s0)             # 00000008
    lui     t8, %hi(var_808C0060)      # t8 = 808C0000
    addiu   t8, t8, %lo(var_808C0060)  # t8 = 808C0060
    sw      t1, 0x0000(t8)             # 808C0060
    lw      t0, 0x000C(s0)             # 0000000C
    sw      t0, 0x0004(t8)             # 808C0064
    lw      t1, 0x0010(s0)             # 00000010
    sw      t1, 0x0008(t8)             # 808C0068
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_808BDA88:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8001AE04
    lw      a1, 0x0660(s0)             # 00000660
    jal     func_800C6894
    nop
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, s0, 0x0488             # a1 = 00000488
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B8A8
    addiu   a1, s0, 0x04D4             # a1 = 000004D4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B8A8
    addiu   a1, s0, 0x0554             # a1 = 00000554
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B8A8
    addiu   a1, s0, 0x05D4             # a1 = 000005D4
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808BDAF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80026614
    lui     a2, 0x457A                 # a2 = 457A0000
    beq     v0, $zero, lbl_808BDB28
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_808BDB34
    lw      $ra, 0x0014($sp)
lbl_808BDB28:
    jal     func_8002650C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_808BDB34:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808BDB40:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lwc1    $f4, 0x0828(a2)            # 00000828
    mov.s   $f2, $f0
    addiu   v0, $zero, 0x0007          # v0 = 00000007
    c.lt.s  $f4, $f0
    lw      v1, 0x1C44(a0)             # 00001C44
    bc1t    lbl_808BDB8C
    nop
    lwc1    $f6, 0x0828(v1)            # 00000828
    lui     t8, 0x0001                 # t8 = 00010000
    lui     t6, 0x8012                 # t6 = 80120000
    c.lt.s  $f6, $f0
    lui     t7, %hi(var_808C0075)      # t7 = 808C0000
    addu    t8, t8, a0
    bc1f    lbl_808BDB94
    nop
lbl_808BDB8C:
    beq     $zero, $zero, lbl_808BDCC8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808BDB94:
    lh      t6, -0x5A00(t6)            # 8011A600
    lui     t0, %hi(var_808C0058)      # t0 = 808C0000
    slti    $at, t6, 0x0050
    beq     $at, $zero, lbl_808BDBB4
    lui     $at, %hi(var_808BF970)     # $at = 808C0000
    lwc1    $f8, %lo(var_808BF970)($at)
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
    add.s   $f2, $f0, $f8
lbl_808BDBB4:
    lbu     t7, %lo(var_808C0075)(t7)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     t7, $at, lbl_808BDBD0
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    nop
    add.s   $f2, $f2, $f10
lbl_808BDBD0:
    lw      t8, 0x1DE4(t8)             # 00011DE4
    and     t9, t8, v0
    beq     t9, $zero, lbl_808BDBEC
    nop
    lbu     t0, %lo(var_808C0058)(t0)
    beql    t0, $zero, lbl_808BDCC8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808BDBEC:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x001C($sp)
    lwc1    $f2, 0x001C($sp)
    lui     t1, %hi(var_808C0058)      # t1 = 808C0000
    c.le.s  $f2, $f0
    nop
    bc1fl   lbl_808BDCC8
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t1, %lo(var_808C0058)(t1)
    bnel    t1, $zero, lbl_808BDCB4
    lw      t8, 0x0024($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f16                  # $f16 = 7.00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    mul.s   $f18, $f0, $f16
    trunc.w.s $f4, $f18
    mfc1    v0, $f4
    nop
    beq     v0, $at, lbl_808BDC64
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808BDC8C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_808BDC64
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_808BDC8C
    nop
    beq     $zero, $zero, lbl_808BDCB4
    lw      t8, 0x0024($sp)
lbl_808BDC64:
    lui     v0, %hi(var_808BF934)      # v0 = 808C0000
    addiu   v0, v0, %lo(var_808BF934)  # v0 = 808BF934
    lh      t3, 0x0000(v0)             # 808BF934
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f6                   # $f6 = 127.00
    addiu   t4, t3, 0x4000             # t4 = 00004000
    sh      t4, 0x0000(v0)             # 808BF934
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    beq     $zero, $zero, lbl_808BDCB0
    swc1    $f6, %lo(var_808BF930)($at)
lbl_808BDC8C:
    lui     v0, %hi(var_808BF934)      # v0 = 808C0000
    addiu   v0, v0, %lo(var_808BF934)  # v0 = 808BF934
    lh      t5, 0x0000(v0)             # 808BF934
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f8                   # $f8 = 127.00
    addiu   t6, t5, 0xC000             # t6 = FFFFC000
    sh      t6, 0x0000(v0)             # 808BF934
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    swc1    $f8, %lo(var_808BF930)($at)
lbl_808BDCB0:
    lw      t8, 0x0024($sp)
lbl_808BDCB4:
    addiu   t7, $zero, 0x4000          # t7 = 00004000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_808BDCC8
    sh      t7, 0x0000(t8)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808BDCC8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808BDCD8:
    lh      v0, 0x008A(a2)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addu    t6, v0, $at
    lui     $at, %hi(var_808BF934)     # $at = 808C0000
    sh      v0, 0x00B6(a2)             # 000000B6
    sh      v0, 0x0032(a2)             # 00000032
    sh      t6, %lo(var_808BF934)($at)
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f4                   # $f4 = 127.00
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    ori     t8, $zero, 0x8000          # t8 = 00008000
    swc1    $f4, %lo(var_808BF930)($at)
    lui     $at, %hi(var_808BF940)     # $at = 808C0000
    sb      t7, %lo(var_808BF940)($at)
    sh      t8, 0x0000(a1)             # 00000000
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sb      t9, 0x0A68(a0)             # 00000A68
    lui     $at, %hi(var_808C0070)     # $at = 808C0000
    sb      $zero, %lo(var_808C0070)($at)
    jr      $ra
    nop


func_808BDD30:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      v0, 0x1C44(a2)             # 00001C44
    lh      t7, 0x00B6(s0)             # 000000B6
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    lh      t6, 0x00B6(v0)             # 000000B6
    sh      $zero, %lo(var_808C0040)($at)
    sw      a2, 0x0084($sp)
    subu    t0, t6, t7
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x005A($sp)
    or      a0, a2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D2F0
    sw      v0, 0x0078($sp)
    sw      v0, 0x0068($sp)
    lw      a0, 0x0084($sp)
    jal     func_808BDAF8
    or      a1, s0, $zero              # a1 = 00000000
    lui     v1, %hi(var_808C006E)      # v1 = 808C0000
    lbu     v1, %lo(var_808C006E)(v1)
    lh      t0, 0x005A($sp)
    sw      v0, 0x005C($sp)
    beq     v1, $zero, lbl_808BDDD4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_808BDF4C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_808BED5C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_808BEB1C
    addiu   t8, s0, 0x0024             # t8 = 00000024
    lw      t9, 0x0084($sp)
    lui     $at, 0x0001                # $at = 00010000
    sw      t8, 0x0034($sp)
    addu    t2, t9, $at
    beq     $zero, $zero, lbl_808BEDB0
    sw      t2, 0x002C($sp)
lbl_808BDDD4:
    lh      v0, 0x008A(s0)             # 0000008A
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    sh      v0, 0x0032(s0)             # 00000032
    lh      a0, 0x0032(s0)             # 00000032
    sh      v0, 0x00B6(s0)             # 000000B6
    swc1    $f4, 0x01BC(s0)            # 000001BC
    jal     func_800636C4              # sins?
    swc1    $f6, 0x01C0(s0)            # 000001C0
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f8                   # $f8 = 25.00
    lui     $at, %hi(var_808C0060)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C0060)($at)
    mul.s   $f10, $f0, $f8
    lh      a0, 0x0032(s0)             # 00000032
    add.s   $f18, $f10, $f16
    jal     func_80063684              # coss?
    swc1    $f18, 0x0024(s0)           # 00000024
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    lui     $at, %hi(var_808C0068)     # $at = 808C0000
    lwc1    $f8, %lo(var_808C0068)($at)
    mul.s   $f6, $f0, $f4
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f16                  # $f16 = 120.00
    lwc1    $f18, 0x0090(s0)           # 00000090
    or      a1, s0, $zero              # a1 = 00000000
    c.le.s  $f18, $f16
    add.s   $f10, $f6, $f8
    bc1t    lbl_808BDE68
    swc1    $f10, 0x002C(s0)           # 0000002C
    jal     func_8002691C
    lw      a0, 0x0084($sp)
    bne     v0, $zero, lbl_808BDE68
    lw      t3, 0x005C($sp)
    beql    t3, $zero, lbl_808BDF34
    lw      t8, 0x0084($sp)
lbl_808BDE68:
    lw      t4, 0x005C($sp)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     $at, %hi(var_808C0071)     # $at = 808C0000
    beq     t4, $zero, lbl_808BDF1C
    ori     t7, $zero, 0x8000          # t7 = 00008000
    sb      t5, %lo(var_808C0071)($at)
    lh      t6, 0x008A(s0)             # 0000008A
    lui     $at, %hi(var_808BF934)     # $at = 808C0000
    lw      t8, 0x0068($sp)
    sh      t6, %lo(var_808BF934)($at)
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f4                   # $f4 = 127.00
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    lui     t2, %hi(var_808BF934)      # t2 = 808C0000
    swc1    $f4, %lo(var_808BF930)($at)
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    sh      t7, %lo(var_808C0040)($at)
    lui     $at, %hi(var_808BF940)     # $at = 808C0000
    sb      $zero, %lo(var_808BF940)($at)
    lh      t2, %lo(var_808BF934)(t2)
    lh      t9, 0x013C(t8)             # 0000013C
    subu    a0, t9, t2
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sh      a0, 0x0066($sp)
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    lwc1    $f6, %lo(var_808BF930)($at)
    lui     $at, %hi(var_808C0042)     # $at = 808C0000
    lh      a0, 0x0066($sp)
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    t4, $f10
    jal     func_80063684              # coss?
    sb      t4, %lo(var_808C0042)($at)
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    lwc1    $f16, %lo(var_808BF930)($at)
    lui     $at, %hi(var_808C0043)     # $at = 808C0000
    mul.s   $f18, $f0, $f16
    trunc.w.s $f4, $f18
    mfc1    v1, $f4
    nop
    sll     v1, v1, 24
    sra     v1, v1, 24
    sb      v1, %lo(var_808C0043)($at)
lbl_808BDF1C:
    jal     func_800C6820
    addiu   a0, $zero, 0x0038          # a0 = 00000038
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, %hi(var_808C006E)     # $at = 808C0000
    sb      t6, %lo(var_808C006E)($at)
    lw      t8, 0x0084($sp)
lbl_808BDF34:
    lui     $at, 0x0001                # $at = 00010000
    addiu   t7, s0, 0x0024             # t7 = 00000024
    addu    t9, t8, $at
    sw      t9, 0x002C($sp)
    beq     $zero, $zero, lbl_808BEDB0
    sw      t7, 0x0034($sp)
lbl_808BDF4C:
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a3, %hi(var_808BF930)      # a3 = 808C0000
    addiu   a3, a3, %lo(var_808BF930)  # a3 = 808BF930
    swc1    $f6, 0x0000(a3)            # 808BF930
    lbu     v0, 0x04E5(s0)             # 000004E5
    andi    t2, v0, 0x0080             # t2 = 00000000
    bne     t2, $zero, lbl_808BDF7C
    andi    t5, v0, 0xFF7F             # t5 = 00000000
    lbu     t3, 0x0565(s0)             # 00000565
    andi    t4, t3, 0x0080             # t4 = 00000000
    beq     t4, $zero, lbl_808BE018
    nop
lbl_808BDF7C:
    lbu     t6, 0x0565(s0)             # 00000565
    lbu     t8, 0x04E4(s0)             # 000004E4
    lbu     t2, 0x0564(s0)             # 00000564
    lbu     t4, 0x0499(s0)             # 00000499
    sb      t5, 0x04E5(s0)             # 000004E5
    andi    t7, t6, 0xFF7F             # t7 = 00000001
    sb      t7, 0x0565(s0)             # 00000565
    ori     t9, t8, 0x0004             # t9 = 00000004
    ori     t3, t2, 0x0004             # t3 = 00000004
    andi    t5, t4, 0xFFFD             # t5 = 00000000
    sb      t9, 0x04E4(s0)             # 000004E4
    sb      t3, 0x0564(s0)             # 00000564
    sb      t5, 0x0499(s0)             # 00000499
    lui     t7, %hi(var_808C0074)      # t7 = 808C0000
    lb      t7, %lo(var_808C0074)(t7)
    lb      t6, 0x0832(s0)             # 00000832
    lui     t8, %hi(var_808C0072)      # t8 = 808C0000
    lui     t3, 0x8012                 # t3 = 80120000
    beq     t6, t7, lbl_808BDFE8
    lui     t4, %hi(var_808C0070)      # t4 = 808C0000
    lbu     t8, %lo(var_808C0072)(t8)
    lui     $at, %hi(var_808C0072)     # $at = 808C0000
    addiu   t9, t8, 0x0001             # t9 = 808C0001
    sb      t9, %lo(var_808C0072)($at)
    lb      t2, 0x0832(s0)             # 00000832
    lui     $at, %hi(var_808C0074)     # $at = 808C0000
    sb      t2, %lo(var_808C0074)($at)
lbl_808BDFE8:
    lh      t3, -0x5A00(t3)            # 8011A600
    slti    $at, t3, 0x0050
    beq     $at, $zero, lbl_808BE018
    nop
    lbu     t4, %lo(var_808C0070)(t4)
    lui     $at, %hi(var_808C0070)     # $at = 808C0000
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    beq     t4, $zero, lbl_808BE018
    nop
    sb      $zero, %lo(var_808C0070)($at)
    lui     $at, %hi(var_808C0073)     # $at = 808C0000
    sb      t5, %lo(var_808C0073)($at)
lbl_808BE018:
    lui     t6, %hi(var_808C0070)      # t6 = 808C0000
    lbu     t6, %lo(var_808C0070)(t6)
    beql    t6, $zero, lbl_808BE070
    lb      t8, 0x0A68(s0)             # 00000A68
    lb      t7, 0x0833(s0)             # 00000833
    lui     $at, 0x0001                # $at = 00010000
    lw      a0, 0x0084($sp)
    beq     t7, $zero, lbl_808BE06C
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    sw      a1, 0x0038($sp)
    addiu   a2, s0, 0x04D4             # a2 = 000004D4
    jal     func_8004BF40              # CollisionCheck_setAC
    sh      t0, 0x005A($sp)
    lw      a0, 0x0084($sp)
    lw      a1, 0x0038($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0554             # a2 = 00000554
    lui     a3, %hi(var_808BF930)      # a3 = 808C0000
    addiu   a3, a3, %lo(var_808BF930)  # a3 = 808BF930
    lh      t0, 0x005A($sp)
lbl_808BE06C:
    lb      t8, 0x0A68(s0)             # 00000A68
lbl_808BE070:
    lui     t9, %hi(var_808C006E)      # t9 = 808C0000
    lui     t4, %hi(var_808C0071)      # t4 = 808C0000
    bgez    t8, lbl_808BE0A4
    nop
    lbu     t9, %lo(var_808C006E)(t9)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     t9, $at, lbl_808BE0A4
    nop
    lbu     v0, 0x0499(s0)             # 00000499
    andi    t2, v0, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_808BE0A4
    andi    t3, v0, 0xFFFD             # t3 = 00000000
    sb      t3, 0x0499(s0)             # 00000499
lbl_808BE0A4:
    lbu     t4, %lo(var_808C0071)(t4)
    lui     $at, 0x42FE                # $at = 42FE0000
    lw      t5, 0x005C($sp)
    beq     t4, $zero, lbl_808BE0C4
    nop
    mtc1    $at, $f8                   # $f8 = 127.00
    beq     $zero, $zero, lbl_808BEA5C
    swc1    $f8, 0x0000(a3)            # 808BF930
lbl_808BE0C4:
    beq     t5, $zero, lbl_808BE100
    lui     t9, %hi(var_808C006C)      # t9 = 808C0000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, %hi(var_808C0071)     # $at = 808C0000
    sb      t6, %lo(var_808C0071)($at)
    lh      t7, 0x008A(s0)             # 0000008A
    lui     $at, %hi(var_808BF934)     # $at = 808C0000
    ori     t8, $zero, 0x8000          # t8 = 00008000
    sh      t7, %lo(var_808BF934)($at)
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f10                  # $f10 = 127.00
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    swc1    $f10, 0x0000(a3)           # 808BF930
    beq     $zero, $zero, lbl_808BEA5C
    sh      t8, %lo(var_808C0040)($at)
lbl_808BE100:
    lbu     t9, %lo(var_808C006C)(t9)
    lui     a0, %hi(var_808C006D)      # a0 = 808C0000
    lw      t1, 0x0078($sp)
    bne     t9, $zero, lbl_808BE980
    addiu   a0, a0, %lo(var_808C006D)  # a0 = 808C006D
    lb      t2, 0x0833(t1)             # 00000833
    lui     $at, 0xC040                # $at = C0400000
    bnel    t2, $zero, lbl_808BE140
    lb      t3, 0x0832(t1)             # 00000832
    mtc1    $at, $f16                  # $f16 = -3.00
    lwc1    $f18, 0x0060(t1)           # 00000060
    c.lt.s  $f16, $f18
    nop
    bc1f    lbl_808BE1C8
    nop
    lb      t3, 0x0832(t1)             # 00000832
lbl_808BE140:
    addiu   $at, $zero, 0x0011         # $at = 00000011
    lui     a0, %hi(var_808C006D)      # a0 = 808C0000
    bne     t3, $at, lbl_808BE1C8
    addiu   a0, a0, %lo(var_808C006D)  # a0 = 808C006D
    lh      v1, 0x008A(s0)             # 0000008A
    lui     t5, 0x0001                 # t5 = 00010000
    lui     a2, %hi(var_808C0040)      # a2 = 808C0000
    sh      v1, 0x00B6(s0)             # 000000B6
    sh      v1, 0x0032(s0)             # 00000032
    lw      t4, 0x0084($sp)
    lui     $at, %hi(var_808BF934)     # $at = 808C0000
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    addu    t5, t5, t4
    lw      t5, 0x1DE4(t5)             # 00011DE4
    addiu   t7, v1, 0x4000             # t7 = 00004000
    addiu   t8, v1, 0xC000             # t8 = FFFFC000
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_808BE198
    nop
    lui     $at, %hi(var_808BF934)     # $at = 808C0000
    beq     $zero, $zero, lbl_808BE19C
    sh      t7, %lo(var_808BF934)($at)
lbl_808BE198:
    sh      t8, %lo(var_808BF934)($at)
lbl_808BE19C:
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f4                   # $f4 = 127.00
    lhu     a2, %lo(var_808C0040)(a2)
    lui     $at, %hi(var_808C006C)     # $at = 808C0000
    swc1    $f4, 0x0000(a3)            # 808BF930
    sb      t9, %lo(var_808C006C)($at)
    sb      $zero, 0x0000(a0)          # 808C006D
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    ori     a2, a2, 0x8000             # a2 = 808C8000
    beq     $zero, $zero, lbl_808BEA5C
    sh      a2, %lo(var_808C0040)($at)
lbl_808BE1C8:
    lui     t2, %hi(var_808C0058)      # t2 = 808C0000
    lbu     t2, %lo(var_808C0058)(t2)
    beq     t2, $zero, lbl_808BE39C
    nop
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    swc1    $f6, 0x0000(a3)            # 808BF930
    lh      a0, 0x00B6(t1)             # 000000B6
    lbu     t3, 0x0682(t1)             # 00000682
    addiu   a0, a0, 0xFC18             # a0 = 808BFC85
    sll     a0, a0, 16
    ori     t4, t3, 0x0004             # t4 = 00000004
    sb      t4, 0x0682(t1)             # 00000682
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f8                   # $f8 = 45.00
    lw      t5, 0x0078($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    mul.s   $f10, $f0, $f8
    lwc1    $f16, 0x0024(t5)           # 00000024
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40A0                 # a3 = 40A00000
    swc1    $f4, 0x0010($sp)
    add.s   $f18, $f10, $f16
    mfc1    a1, $f18
    jal     func_80064178
    nop
    lw      t6, 0x0078($sp)
    lh      a0, 0x00B6(t6)             # 000000B6
    addiu   a0, a0, 0xFC18             # a0 = FFFFFC18
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f6                   # $f6 = 45.00
    lw      t7, 0x0078($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    mul.s   $f8, $f0, $f6
    lwc1    $f10, 0x002C(t7)           # 0000002C
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40A0                 # a3 = 40A00000
    swc1    $f18, 0x0010($sp)
    add.s   $f16, $f8, $f10
    mfc1    a1, $f16
    jal     func_80064178
    nop
    lui     v1, %hi(var_808C006F)      # v1 = 808C0000
    addiu   v1, v1, %lo(var_808C006F)  # v1 = 808C006F
    lbu     t8, 0x0000(v1)             # 808C006F
    ori     t4, $zero, 0x8000          # t4 = 00008000
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    andi    v0, t9, 0x00FF             # v0 = 000000FF
    beq     v0, $zero, lbl_808BE2C8
    sb      t9, 0x0000(v1)             # 808C006F
    lw      a3, 0x0078($sp)
    lb      t2, 0x0A68(a3)             # 00000A68
    blez    t2, lbl_808BE338
    nop
    lb      t3, 0x0833(s0)             # 00000833
    bne     t3, $zero, lbl_808BE338
    nop
lbl_808BE2C8:
    lh      v0, 0x008A(s0)             # 0000008A
    lw      a3, 0x0078($sp)
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x00B6(s0)             # 000000B6
    sh      t4, %lo(var_808C0040)($at)
    lbu     t5, 0x0682(a3)             # 00000682
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f4                   # $f4 = 127.00
    andi    t6, t5, 0xFFFB             # t6 = 00000000
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    sb      t6, 0x0682(a3)             # 00000682
    swc1    $f4, %lo(var_808BF930)($at)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    ori     $at, $zero, 0x8000         # $at = 00008000
    swc1    $f6, 0x01BC(a3)            # 000001BC
    lh      t7, 0x008A(s0)             # 0000008A
    addu    t8, t7, $at
    lui     $at, %hi(var_808BF934)     # $at = 808C0000
    sh      t8, %lo(var_808BF934)($at)
    lui     $at, %hi(var_808C0058)     # $at = 808C0000
    sb      $zero, %lo(var_808C0058)($at)
    sb      $zero, 0x0000(v1)          # 808C006F
    lw      t9, 0x0004(s0)             # 00000004
    ori     t2, t9, 0x0001             # t2 = FFFFFFFF
    beq     $zero, $zero, lbl_808BE394
    sw      t2, 0x0004(s0)             # 00000004
lbl_808BE338:
    lui     t3, %hi(var_808C0058)      # t3 = 808C0000
    lbu     t3, %lo(var_808C0058)(t3)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t3, $at, lbl_808BE394
    slti    $at, v0, 0x0010
    beq     $at, $zero, lbl_808BE380
    or      v1, v0, $zero              # v1 = 000000FF
    lui     a1, %hi(var_808C0040)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C0040)  # a1 = 808C0040
    lw      a0, 0x0084($sp)
    jal     func_808BDB40
    or      a2, s0, $zero              # a2 = 00000000
    lui     t4, %hi(var_808C0058)      # t4 = 808C0000
    lbu     t4, %lo(var_808C0058)(t4)
    lui     $at, %hi(var_808C0058)     # $at = 808C0000
    addiu   t5, t4, 0x0001             # t5 = 808C0001
    beq     $zero, $zero, lbl_808BE394
    sb      t5, %lo(var_808C0058)($at)
lbl_808BE380:
    addiu   $at, $zero, 0x0013         # $at = 00000013
    bne     v1, $at, lbl_808BE394
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    jal     func_800C4ED0
    addiu   a1, $zero, 0x6814          # a1 = 00006814
lbl_808BE394:
    beq     $zero, $zero, lbl_808BEA60
    lw      t9, 0x0068($sp)
lbl_808BE39C:
    lui     v1, %hi(var_808BF93C)      # v1 = 808C0000
    addiu   v1, v1, %lo(var_808BF93C)  # v1 = 808BF93C
    lw      v0, 0x0000(v1)             # 808BF93C
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x7FFF          # a3 = 00007FFF
    beq     v0, $zero, lbl_808BE3CC
    addiu   t7, $zero, 0x7FFF          # t7 = 00007FFF
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sw      t6, 0x0000(v1)             # 808BF93C
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    sh      a2, %lo(var_808C0040)($at)
lbl_808BE3CC:
    sw      t7, 0x0010($sp)
    lh      t8, 0x0032(s0)             # 00000032
    sh      t0, 0x005A($sp)
    lw      a0, 0x0084($sp)
    lui     a2, 0x42F0                 # a2 = 42F00000
    jal     func_8002821C
    sw      t8, 0x0014($sp)
    beq     v0, $zero, lbl_808BE65C
    lh      t0, 0x005A($sp)
    lw      a3, 0x0078($sp)
    addiu   v1, $zero, 0x000C          # v1 = 0000000C
    lui     $at, 0x42B4                # $at = 42B40000
    lb      v0, 0x0832(a3)             # 00000832
    addiu   t8, $zero, 0x4000          # t8 = 00004000
    bnel    v1, v0, lbl_808BE544
    lh      t5, 0x008A(s0)             # 0000008A
    lwc1    $f0, 0x0090(s0)            # 00000090
    mtc1    $at, $f8                   # $f8 = 90.00
    nop
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_808BE544
    lh      t5, 0x008A(s0)             # 0000008A
    lb      t9, 0x0833(s0)             # 00000833
    lui     t2, %hi(var_808C0070)      # t2 = 808C0000
    bne     t9, $zero, lbl_808BE524
    nop
    lbu     t2, %lo(var_808C0070)(t2)
    bne     t2, $zero, lbl_808BE524
    nop
    lb      t3, 0x0A68(a3)             # 00000A68
    bne     t3, $zero, lbl_808BE524
    nop
    bne     v1, v0, lbl_808BE524
    lui     $at, 0x42AA                # $at = 42AA0000
    mtc1    $at, $f10                  # $f10 = 85.00
    lw      a0, 0x0084($sp)
    c.le.s  $f0, $f10
    nop
    bc1f    lbl_808BE524
    nop
    jal     func_8002691C
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_808BE524
    lui     v1, %hi(var_808C006F)      # v1 = 808C0000
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    lw      t5, 0x0078($sp)
    swc1    $f16, %lo(var_808BF930)($at)
    lui     $at, %hi(var_808C0058)     # $at = 808C0000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      t4, %lo(var_808C0058)($at)
    lbu     t6, 0x0682(t5)             # 00000682
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   v1, v1, %lo(var_808C006F)  # v1 = 808C006F
    ori     t7, t6, 0x0004             # t7 = 00000004
    sb      t7, 0x0682(t5)             # 00000682
    lw      t8, 0x0004(s0)             # 00000004
    addiu   t2, $zero, 0x001B          # t2 = 0000001B
    mtc1    $zero, $f18                # $f18 = 0.00
    and     t9, t8, $at
    sw      t9, 0x0004(s0)             # 00000004
    lw      t3, 0x0078($sp)
    sb      t2, 0x0000(v1)             # 808C006F
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      $zero, 0x0833(t3)          # 00000833
    lw      t4, 0x0078($sp)
    addiu   t6, $zero, 0xFFF9          # t6 = FFFFFFF9
    lui     $at, 0x4000                # $at = 40000000
    swc1    $f18, 0x0828(t4)           # 00000829
    sb      t6, 0x0A68(s0)             # 00000A68
    swc1    $f4, 0x0828(s0)            # 00000828
    lw      t7, 0x0078($sp)
    mtc1    $at, $f6                   # $f6 = 2.00
    nop
    swc1    $f6, 0x01BC(t7)            # 000001C0
    lw      a1, 0x0078($sp)
    lw      a0, 0x0084($sp)
    jal     func_8008BCA4
    addiu   a1, a1, 0x01A4             # a1 = 000001A4
    lui     $at, %hi(var_808BF93C)     # $at = 808C0000
    sw      $zero, %lo(var_808BF93C)($at)
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    ori     a2, $zero, 0x8000          # a2 = 00008000
    beq     $zero, $zero, lbl_808BE538
    sh      a2, %lo(var_808C0040)($at)
lbl_808BE524:
    lui     a1, %hi(var_808C0040)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C0040)  # a1 = 808C0040
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808BDCD8
    or      a2, s0, $zero              # a2 = 00000000
lbl_808BE538:
    beq     $zero, $zero, lbl_808BE654
    nop
    lh      t5, 0x008A(s0)             # 0000008A
lbl_808BE544:
    lui     v1, %hi(var_808BF934)      # v1 = 808C0000
    addiu   v1, v1, %lo(var_808BF934)  # v1 = 808BF934
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    sh      t5, 0x0000(v1)             # 808BF934
    sh      t8, %lo(var_808C0040)($at)
    lb      v0, 0x0832(a3)             # 00000832
    slti    $at, v0, 0x0004
    beql    $at, $zero, lbl_808BE57C
    slti    $at, v0, 0x0008
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    beq     $zero, $zero, lbl_808BE61C
    swc1    $f8, %lo(var_808BF930)($at)
    slti    $at, v0, 0x0008
lbl_808BE57C:
    beq     $at, $zero, lbl_808BE5A0
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f10                  # $f10 = 127.00
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    swc1    $f10, %lo(var_808BF930)($at)
    lh      t9, 0x0000(v1)             # 808BF934
    addiu   t2, t9, 0x4000             # t2 = 00004000
    beq     $zero, $zero, lbl_808BE61C
    sh      t2, 0x0000(v1)             # 808BF934
lbl_808BE5A0:
    slti    $at, v0, 0x000C
    beq     $at, $zero, lbl_808BE5C8
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f16                  # $f16 = 127.00
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    swc1    $f16, %lo(var_808BF930)($at)
    lh      t3, 0x0000(v1)             # 808BF934
    addiu   t4, t3, 0xC000             # t4 = FFFFC000
    beq     $zero, $zero, lbl_808BE61C
    sh      t4, 0x0000(v1)             # 808BF934
lbl_808BE5C8:
    slti    $at, v0, 0x0018
    beq     $at, $zero, lbl_808BE5E0
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    beq     $zero, $zero, lbl_808BE61C
    sh      a2, %lo(var_808C0040)($at)
lbl_808BE5E0:
    slti    $at, v0, 0x001C
    beq     $at, $zero, lbl_808BE608
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(var_808C0040)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C0040)  # a1 = 808C0040
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808BDCD8
    or      a2, s0, $zero              # a2 = 00000000
    beq     $zero, $zero, lbl_808BE61C
    lw      a3, 0x0078($sp)
lbl_808BE608:
    lui     a1, %hi(var_808C0040)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C0040)  # a1 = 808C0040
    jal     func_808BDCD8
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0078($sp)
lbl_808BE61C:
    lui     a2, %hi(var_808C0040)      # a2 = 808C0000
    lhu     a2, %lo(var_808C0040)(a2)
    andi    t6, a2, 0x8010             # t6 = 00000000
    bne     t6, $zero, lbl_808BE654
    nop
    lb      t7, 0x0833(s0)             # 00000833
    bne     t7, $zero, lbl_808BE654
    nop
    lb      t5, 0x0833(a3)             # 00000833
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, %hi(var_808C0070)     # $at = 808C0000
    beq     t5, $zero, lbl_808BE654
    nop
    sb      t8, %lo(var_808C0070)($at)
lbl_808BE654:
    beq     $zero, $zero, lbl_808BEA60
    lw      t9, 0x0068($sp)
lbl_808BE65C:
    lh      t9, 0x008A(s0)             # 0000008A
    lui     $at, %hi(var_808BF934)     # $at = 808C0000
    sh      t9, %lo(var_808BF934)($at)
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f18                  # $f18 = 90.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    lui     $at, 0x428C                # $at = 428C0000
    c.le.s  $f0, $f18
    nop
    bc1fl   lbl_808BE6F4
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    nop
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_808BE6F4
    lui     $at, 0x428C                # $at = 428C0000
    bltz    t0, lbl_808BE6B0
    subu    v1, $zero, t0
    beq     $zero, $zero, lbl_808BE6B0
    or      v1, t0, $zero              # v1 = 00000000
lbl_808BE6B0:
    slti    $at, v1, 0x7800
    bnel    $at, $zero, lbl_808BE6F4
    lui     $at, 0x428C                # $at = 428C0000
    lbu     t2, 0x010C(s0)             # 0000010C
    lw      t3, 0x0078($sp)
    lw      a0, 0x0084($sp)
    bne     t2, $zero, lbl_808BE6DC
    lui     a1, %hi(var_808C0040)      # a1 = 808C0000
    lw      t4, 0x066C(t3)             # 0000066C
    sll     t6, t4,  9
    bltz    t6, lbl_808BE6F0
lbl_808BE6DC:
    addiu   a1, a1, %lo(var_808C0040)  # a1 = 808C0040
    jal     func_808BDB40
    or      a2, s0, $zero              # a2 = 00000000
    beq     $zero, $zero, lbl_808BEA60
    lw      t9, 0x0068($sp)
lbl_808BE6F0:
    lui     $at, 0x428C                # $at = 428C0000
lbl_808BE6F4:
    mtc1    $at, $f6                   # $f6 = 70.00
    lui     $at, 0x42A0                # $at = 42A00000
    c.le.s  $f0, $f6
    nop
    bc1tl   lbl_808BE73C
    lb      t8, 0x0833(s0)             # 00000833
    mtc1    $at, $f8                   # $f8 = 80.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      t7, 0x0078($sp)
    add.s   $f16, $f8, $f10
    c.le.s  $f0, $f16
    nop
    bc1fl   lbl_808BE794
    lui     $at, 0x4248                # $at = 42480000
    lb      t5, 0x0833(t7)             # 00000833
    beql    t5, $zero, lbl_808BE794
    lui     $at, 0x4248                # $at = 42480000
    lb      t8, 0x0833(s0)             # 00000833
lbl_808BE73C:
    lui     a1, %hi(var_808C0040)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C0040)  # a1 = 808C0040
    bne     t8, $zero, lbl_808BE790
    lw      a0, 0x0084($sp)
    jal     func_808BDB40
    or      a2, s0, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_808BE978
    nop
    lb      t9, 0x0833(s0)             # 00000833
    lui     t2, %hi(var_808C0070)      # t2 = 808C0000
    bne     t9, $zero, lbl_808BE978
    nop
    lbu     t2, %lo(var_808C0070)(t2)
    lui     a1, %hi(var_808C0040)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C0040)  # a1 = 808C0040
    bne     t2, $zero, lbl_808BE978
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808BDCD8
    or      a2, s0, $zero              # a2 = 00000000
    beq     $zero, $zero, lbl_808BE978
    nop
lbl_808BE790:
    lui     $at, 0x4248                # $at = 42480000
lbl_808BE794:
    mtc1    $at, $f18                  # $f18 = 50.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x42C8                # $at = 42C80000
    add.s   $f6, $f18, $f4
    c.le.s  $f0, $f6
    nop
    bc1fl   lbl_808BE814
    mtc1    $at, $f10                  # $f10 = 100.00
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f8                   # $f8 = 127.00
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    lui     a0, %hi(var_808BF934)      # a0 = 808C0000
    swc1    $f8, %lo(var_808BF930)($at)
    lh      t3, 0x008A(s0)             # 0000008A
    lui     $at, %hi(var_808BF934)     # $at = 808C0000
    lw      t6, 0x0078($sp)
    sh      t3, %lo(var_808BF934)($at)
    lbu     t4, 0x010C(s0)             # 0000010C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x2328          # a3 = 00002328
    bne     t4, $zero, lbl_808BE978
    nop
    lh      a1, 0x00B6(t6)             # 000000B6
    sw      $zero, 0x0010($sp)
    addiu   a0, a0, %lo(var_808BF934)  # a0 = 808BF934
    addiu   a1, a1, 0x7FFF             # a1 = 00007FFF
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_808BE978
    nop
    mtc1    $at, $f10                  # $f10 = 0.00
lbl_808BE814:
    mtc1    $zero, $f16                # $f16 = 0.00
    lw      t7, 0x0078($sp)
    add.s   $f18, $f10, $f16
    c.lt.s  $f18, $f0
    nop
    bc1f    lbl_808BE8D8
    nop
    lb      t5, 0x0833(t7)             # 00000833
    beql    t5, $zero, lbl_808BE870
    lui     $at, 0x42FE                # $at = 42FE0000
    lb      v0, 0x0832(t7)             # 00000832
    slti    $at, v0, 0x0018
    bne     $at, $zero, lbl_808BE86C
    slti    $at, v0, 0x001C
    beq     $at, $zero, lbl_808BE86C
    lui     $at, 0x438C                # $at = 438C0000
    mtc1    $at, $f4                   # $f4 = 280.00
    lui     a1, %hi(var_808C0040)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C0040)  # a1 = 808C0040
    c.le.s  $f4, $f0
    or      a0, s0, $zero              # a0 = 00000000
    bc1f    lbl_808BE8C8
lbl_808BE86C:
    lui     $at, 0x42FE                # $at = 42FE0000
lbl_808BE870:
    mtc1    $at, $f6                   # $f6 = 127.00
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    lui     a0, %hi(var_808BF934)      # a0 = 808C0000
    swc1    $f6, %lo(var_808BF930)($at)
    lh      t8, 0x008A(s0)             # 0000008A
    lui     $at, %hi(var_808BF934)     # $at = 808C0000
    lw      t2, 0x0078($sp)
    sh      t8, %lo(var_808BF934)($at)
    lbu     t9, 0x010C(s0)             # 0000010C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x2328          # a3 = 00002328
    bne     t9, $zero, lbl_808BE978
    nop
    lh      a1, 0x00B6(t2)             # 000000B6
    sw      $zero, 0x0010($sp)
    addiu   a0, a0, %lo(var_808BF934)  # a0 = 808BF934
    addiu   a1, a1, 0x7FFF             # a1 = 808C803F
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_808BE978
    nop
lbl_808BE8C8:
    jal     func_808BDCD8
    or      a2, s0, $zero              # a2 = 00000000
    beq     $zero, $zero, lbl_808BE978
    nop
lbl_808BE8D8:
    bltz    t0, lbl_808BE8E8
    subu    v1, $zero, t0
    beq     $zero, $zero, lbl_808BE8E8
    or      v1, t0, $zero              # v1 = 00000000
lbl_808BE8E8:
    slti    $at, v1, 0x7800
    beq     $at, $zero, lbl_808BE90C
    lw      a0, 0x0084($sp)
    bltz    t0, lbl_808BE904
    subu    v0, $zero, t0
    beq     $zero, $zero, lbl_808BE904
    or      v0, t0, $zero              # v0 = 00000000
lbl_808BE904:
    slti    $at, v0, 0x3000
    beq     $at, $zero, lbl_808BE924
lbl_808BE90C:
    lui     a1, %hi(var_808C0040)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C0040)  # a1 = 808C0040
    jal     func_808BDB40
    or      a2, s0, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_808BE978
    nop
lbl_808BE924:
    lh      t3, 0x008A(s0)             # 0000008A
    lui     $at, %hi(var_808BF934)     # $at = 808C0000
    lui     a0, %hi(var_808BF934)      # a0 = 808C0000
    sh      t3, %lo(var_808BF934)($at)
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f8                   # $f8 = 127.00
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    lw      t6, 0x0078($sp)
    swc1    $f8, %lo(var_808BF930)($at)
    lbu     t4, 0x010C(s0)             # 0000010C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x2328          # a3 = 00002328
    bne     t4, $zero, lbl_808BE978
    nop
    lh      a1, 0x00B6(t6)             # 000000B6
    sw      $zero, 0x0010($sp)
    addiu   a0, a0, %lo(var_808BF934)  # a0 = 808BF934
    addiu   a1, a1, 0x7FFF             # a1 = 00007FFF
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
lbl_808BE978:
    beq     $zero, $zero, lbl_808BEA60
    lw      t9, 0x0068($sp)
lbl_808BE980:
    lbu     v0, 0x0000(a0)             # 00000000
    lui     t5, %hi(var_808C0075)      # t5 = 808C0000
    beq     v0, $zero, lbl_808BE9D0
    nop
    lbu     t5, %lo(var_808C0075)(t5)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     t5, $at, lbl_808BE9D0
    nop
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f16, 0x0060(s0)           # 00000060
    lui     a2, %hi(var_808C0040)      # a2 = 808C0000
    c.lt.s  $f10, $f16
    nop
    bc1f    lbl_808BE9D0
    nop
    lhu     a2, %lo(var_808C0040)(a2)
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    ori     a2, a2, 0x4000             # a2 = 808C4000
    beq     $zero, $zero, lbl_808BEA5C
    sh      a2, %lo(var_808C0040)($at)
lbl_808BE9D0:
    bnel    v0, $zero, lbl_808BEA60
    lw      t9, 0x0068($sp)
    lhu     t7, 0x0088(s0)             # 00000088
    lui     t6, %hi(var_808C0040)      # t6 = 808C0000
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_808BEA5C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lh      v0, 0x008A(s0)             # 0000008A
    lui     t9, %hi(var_808C0075)      # t9 = 808C0000
    lui     $at, %hi(var_808BF934)     # $at = 808C0000
    sh      v0, 0x00B6(s0)             # 000000B6
    sh      v0, 0x0032(s0)             # 00000032
    lbu     t9, %lo(var_808C0075)(t9)
    sh      v0, %lo(var_808BF934)($at)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     t9, $at, lbl_808BEA40
    lui     t2, %hi(var_808BF934)      # t2 = 808C0000
    lh      t2, %lo(var_808BF934)(t2)
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addu    t3, t2, $at
    lui     $at, %hi(var_808BF934)     # $at = 808C0000
    sh      t3, %lo(var_808BF934)($at)
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f18                  # $f18 = 127.00
    lui     $at, %hi(var_808BF940)     # $at = 808C0000
    swc1    $f18, 0x0000(a3)           # 00000000
    sb      t4, %lo(var_808BF940)($at)
lbl_808BEA40:
    lhu     t6, %lo(var_808C0040)(t6)
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    ori     t5, t6, 0x8000             # t5 = 808C8000
    sh      t5, %lo(var_808C0040)($at)
    sb      t7, 0x0000(a0)             # 00000000
    sb      t8, 0x0A68(s0)             # 00000A68
lbl_808BEA5C:
    lw      t9, 0x0068($sp)
lbl_808BEA60:
    lui     t3, %hi(var_808BF934)      # t3 = 808C0000
    lh      t3, %lo(var_808BF934)(t3)
    lh      t2, 0x013C(t9)             # 808C013C
    lw      t6, 0x0084($sp)
    lui     $at, 0x0001                # $at = 00010000
    subu    a0, t2, t3
    sll     a0, a0, 16
    sra     a0, a0, 16
    addiu   t4, s0, 0x0024             # t4 = 00000024
    addu    t5, t6, $at
    sw      t5, 0x002C($sp)
    sw      t4, 0x0034($sp)
    jal     func_800636C4              # sins?
    sh      a0, 0x0066($sp)
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    lwc1    $f4, %lo(var_808BF930)($at)
    lui     $at, %hi(var_808C0042)     # $at = 808C0000
    lh      a0, 0x0066($sp)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t8, $f8
    jal     func_80063684              # coss?
    sb      t8, %lo(var_808C0042)($at)
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    lwc1    $f10, %lo(var_808BF930)($at)
    lui     v0, %hi(var_808C0075)      # v0 = 808C0000
    lbu     v0, %lo(var_808C0075)(v0)
    mul.s   $f16, $f0, $f10
    lui     $at, %hi(var_808C0043)     # $at = 808C0000
    trunc.w.s $f18, $f16
    mfc1    v1, $f18
    nop
    sll     v1, v1, 24
    sra     v1, v1, 24
    sb      v1, %lo(var_808C0043)($at)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_808BEDB0
    nop
    lw      t2, 0x002C($sp)
    addiu   t6, v0, 0x0001             # t6 = 808C0001
    lui     $at, %hi(var_808C0075)     # $at = 808C0000
    lw      t3, 0x1DE4(t2)             # 00001DE4
    andi    t4, t3, 0x0007             # t4 = 00000000
    bne     t4, $zero, lbl_808BEDB0
    nop
    beq     $zero, $zero, lbl_808BEDB0
    sb      t6, %lo(var_808C0075)($at)
lbl_808BEB1C:
    sb      $zero, 0x0833(s0)          # 00000833
    lui     $at, %hi(var_808C0043)     # $at = 808C0000
    sb      $zero, %lo(var_808C0043)($at)
    sb      $zero, %lo(var_808C0042)($at)
    lb      t5, 0x0A68(s0)             # 00000A68
    lui     $at, 0x4320                # $at = 43200000
    blezl   t5, lbl_808BED44
    lw      t5, 0x0084($sp)
    lwc1    $f6, 0x0080(s0)            # 00000080
    mtc1    $at, $f8                   # $f8 = 160.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, %hi(var_808C0064)     # $at = 808C0000
    sub.s   $f10, $f6, $f8
    c.lt.s  $f4, $f10
    nop
    bc1fl   lbl_808BED44
    lw      t5, 0x0084($sp)
    lbu     t7, 0x0682(s0)             # 00000682
    lw      t9, 0x0004(s0)             # 00000004
    mtc1    $zero, $f16                # $f16 = 0.00
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    ori     t2, t9, 0x0001             # t2 = 00000001
    sb      t8, 0x0682(s0)             # 00000682
    sw      t2, 0x0004(s0)             # 00000004
    sb      $zero, 0x0A68(s0)          # 00000A68
    swc1    $f16, 0x0060(s0)           # 00000060
    lwc1    $f18, %lo(var_808C0064)($at)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    nop
    add.s   $f8, $f18, $f6
    swc1    $f8, 0x0028(s0)            # 00000028
    lw      t3, 0x0078($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(t3)             # 000000B6
    lui     $at, 0xC2F0                # $at = C2F00000
    mtc1    $at, $f4                   # $f4 = -120.00
    lw      v0, 0x0078($sp)
    mul.s   $f10, $f0, $f4
    lwc1    $f16, 0x0024(v0)           # 00000024
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0024(s0)           # 00000024
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(v0)             # 000000B6
    lui     $at, 0xC2F0                # $at = C2F00000
    mtc1    $at, $f6                   # $f6 = -120.00
    lw      t4, 0x0078($sp)
    lui     a1, %hi(var_808C0060)      # a1 = 808C0000
    mul.s   $f8, $f0, $f6
    lwc1    $f4, 0x002C(t4)            # 0000002C
    addiu   a1, a1, %lo(var_808C0060)  # a1 = 808C0060
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f10, $f8, $f4
    jal     func_800214D8
    swc1    $f10, 0x002C(s0)           # 0000002C
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f16                  # $f16 = 1000.00
    nop
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_808BECE8
    lwc1    $f18, 0x0080(s0)           # 00000080
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f12                  # $f12 = 4000.00
    mul.s   $f6, $f0, $f18
    jal     func_80026D90
    swc1    $f6, 0x0050($sp)
    trunc.w.s $f8, $f0
    lw      a1, 0x0078($sp)
    lui     a0, %hi(var_808C0060)      # a0 = 808C0000
    addiu   a0, a0, %lo(var_808C0060)  # a0 = 808C0060
    mfc1    t5, $f8
    addiu   a1, a1, 0x0024             # a1 = 00000024
    jal     func_80063F00
    sh      t5, 0x004E($sp)
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x00B6(s0)             # 000000B6
    lh      t8, 0x004E($sp)
    lh      t7, 0x0032(s0)             # 00000032
    addu    a0, t7, t8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    lwc1    $f10, 0x0050($sp)
    lui     $at, %hi(var_808C0060)     # $at = 808C0000
    lwc1    $f18, %lo(var_808C0060)($at)
    add.s   $f2, $f4, $f10
    lh      t9, 0x0032(s0)             # 00000032
    mul.s   $f16, $f0, $f2
    add.s   $f6, $f16, $f18
    swc1    $f6, 0x0024(s0)            # 00000024
    lh      t2, 0x004E($sp)
    swc1    $f2, 0x0038($sp)
    addu    a0, t9, t2
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f2, 0x0038($sp)
    lui     $at, %hi(var_808C0068)     # $at = 808C0000
    lwc1    $f4, %lo(var_808C0068)($at)
    mul.s   $f8, $f0, $f2
    lui     $at, %hi(var_808C0064)     # $at = 808C0000
    add.s   $f10, $f8, $f4
    swc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f16, %lo(var_808C0064)($at)
    swc1    $f16, 0x0028(s0)           # 00000028
    beq     $zero, $zero, lbl_808BECF0
    lw      a1, 0x0084($sp)
    lwc1    $f18, 0x0080(s0)           # 00000080
lbl_808BECE8:
    swc1    $f18, 0x0028(s0)           # 00000028
    lw      a1, 0x0084($sp)
lbl_808BECF0:
    lui     t9, 0x0001                 # t9 = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t9, t9, a1
    lw      t9, 0x1D54(t9)             # 00011D54
    jalr    $ra, t9
    nop
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     $at, %hi(var_808C006E)     # $at = 808C0000
    sb      t3, %lo(var_808C006E)($at)
    lui     t4, %hi(var_808C0075)      # t4 = 808C0000
    lbu     t4, %lo(var_808C0075)(t4)
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    swc1    $f6, %lo(var_808BF930)($at)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     t4, $at, lbl_808BED40
    lui     $at, %hi(var_808C0072)     # $at = 808C0000
    sb      $zero, %lo(var_808C0072)($at)
    lui     $at, %hi(var_808C0073)     # $at = 808C0000
    sb      $zero, %lo(var_808C0073)($at)
lbl_808BED40:
    lw      t5, 0x0084($sp)
lbl_808BED44:
    lui     $at, 0x0001                # $at = 00010000
    addiu   t6, s0, 0x0024             # t6 = 00000024
    addu    t7, t5, $at
    sw      t7, 0x002C($sp)
    beq     $zero, $zero, lbl_808BEDB0
    sw      t6, 0x0034($sp)
lbl_808BED5C:
    lui     v1, %hi(var_808C0075)      # v1 = 808C0000
    addiu   v1, v1, %lo(var_808C0075)  # v1 = 808C0075
    lbu     v0, 0x0000(v1)             # 808C0075
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, v0, 0xFFF3             # v0 = FFFFFFF3
    bgtzl   v0, lbl_808BED8C
    sb      v0, 0x0000(v1)             # 808C0075
    jal     func_80020EB4
    sb      $zero, 0x0000(v1)          # 808C0075
    beq     $zero, $zero, lbl_808BF6FC
    lw      $ra, 0x0024($sp)
    sb      v0, 0x0000(v1)             # 00000000
lbl_808BED8C:
    lbu     t8, 0x00C8(s0)             # 000000C8
    lui     $at, 0x0001                # $at = 00010000
    addiu   t9, s0, 0x0024             # t9 = 00000024
    addiu   t2, t8, 0xFFF3             # t2 = FFFFFFF3
    sb      t2, 0x00C8(s0)             # 000000C8
    lw      t3, 0x0084($sp)
    sw      t9, 0x0034($sp)
    addu    t4, t3, $at
    sw      t4, 0x002C($sp)
lbl_808BEDB0:
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x4640(t6)            # 8011B9C0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     t8, %hi(var_808C006E)      # t8 = 808C0000
    bne     t6, $at, lbl_808BEE10
    lui     a1, %hi(var_808C0046)      # a1 = 808C0000
    lw      a3, 0x0078($sp)
    lb      t5, 0x0833(a3)             # 00000833
    beql    t5, $zero, lbl_808BEDF4
    mtc1    $zero, $f8                 # $f8 = 0.00
    lb      v0, 0x0832(a3)             # 00000832
    slti    $at, v0, 0x0018
    bne     $at, $zero, lbl_808BEDF0
    slti    $at, v0, 0x001C
    bne     $at, $zero, lbl_808BEE10
    nop
lbl_808BEDF0:
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_808BEDF4:
    lui     $at, %hi(var_808BF930)     # $at = 808C0000
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    swc1    $f8, %lo(var_808BF930)($at)
    lui     $at, %hi(var_808C0042)     # $at = 808C0000
    sb      $zero, %lo(var_808C0042)($at)
    sb      $zero, %lo(var_808C0043)($at)
    sh      a2, %lo(var_808C0040)($at)
lbl_808BEE10:
    lbu     t8, %lo(var_808C006E)(t8)
    lui     t7, %hi(var_808C0040)      # t7 = 808C0000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t8, $at, lbl_808BEE5C
    lhu     t7, %lo(var_808C0040)(t7)
    lui     $at, %hi(var_808BF974)     # $at = 808C0000
    lwc1    $f4, %lo(var_808BF974)($at)
    lwc1    $f10, 0x0090(s0)           # 00000090
    lui     t2, %hi(var_808BF940)      # t2 = 808C0000
    c.le.s  $f10, $f4
    nop
    bc1f    lbl_808BEE5C
    nop
    lbu     t2, %lo(var_808BF940)(t2)
    ori     a2, t7, 0x2000             # a2 = 808C2000
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    beq     t2, $zero, lbl_808BEE5C
    nop
    sh      a2, %lo(var_808C0040)($at)
lbl_808BEE5C:
    lui     a2, %hi(var_808C0040)      # a2 = 808C0000
    lhu     a2, %lo(var_808C0040)(a2)
    lhu     a1, %lo(var_808C0046)(a1)
    lui     $at, %hi(var_808C004C)     # $at = 808C0000
    andi    t3, a2, 0x0010             # t3 = 00000000
    xor     v1, a1, a2
    and     t9, a2, v1
    sh      t9, %lo(var_808C004C)($at)
    beq     t3, $zero, lbl_808BEEBC
    or      v0, a2, $zero              # v0 = 808C0000
    lui     t4, %hi(var_808C0070)      # t4 = 808C0000
    lbu     t4, %lo(var_808C0070)(t4)
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    sh      a2, %lo(var_808C0040)($at)
    bne     t4, $zero, lbl_808BEEB4
    xori    a2, v0, 0x0010             # a2 = 808C0010
    lb      t6, 0x0833(s0)             # 00000833
    bnel    t6, $zero, lbl_808BEEB8
    andi    a2, a2, 0xFFFF             # a2 = 00000010
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    beq     $zero, $zero, lbl_808BEEBC
    addiu   v0, $zero, 0x0010          # v0 = 00000010
lbl_808BEEB4:
    andi    a2, a2, 0xFFFF             # a2 = 00000010
lbl_808BEEB8:
    or      v0, a2, $zero              # v0 = 00000010
lbl_808BEEBC:
    and     t5, a1, v1
    lui     $at, %hi(var_808C0052)     # $at = 808C0000
    sh      t5, %lo(var_808C0052)($at)
    lui     $at, %hi(var_808C0046)     # $at = 808C0000
    andi    t8, v0, 0x3FFF             # t8 = 00000010
    lui     a0, %hi(var_808C0040)      # a0 = 808C0000
    sh      t8, %lo(var_808C0046)($at)
    addiu   a0, a0, %lo(var_808C0040)  # a0 = 808C0040
    jal     func_800CCED4
    sh      a2, %lo(var_808C0040)($at)
    lui     t7, %hi(var_808C0042)      # t7 = 808C0000
    lui     t2, %hi(var_808C0048)      # t2 = 808C0000
    lb      t2, %lo(var_808C0048)(t2)
    lb      t7, %lo(var_808C0042)(t7)
    lui     t6, %hi(var_808C004E)      # t6 = 808C0000
    lb      t6, %lo(var_808C004E)(t6)
    subu    t4, t7, t2
    lui     $at, %hi(var_808C004E)     # $at = 808C0000
    addu    t5, t6, t4
    sb      t5, %lo(var_808C004E)($at)
    lui     t7, %hi(var_808C0049)      # t7 = 808C0000
    lui     t8, %hi(var_808C0043)      # t8 = 808C0000
    lb      t8, %lo(var_808C0043)(t8)
    lb      t7, %lo(var_808C0049)(t7)
    lui     t6, %hi(var_808C004F)      # t6 = 808C0000
    lb      t6, %lo(var_808C004F)(t6)
    subu    t3, t8, t7
    addu    t4, t6, t3
    sb      t4, %lo(var_808C004F)($at)
    lbu     t5, 0x00AF(s0)             # 000000AF
    bne     t5, $zero, lbl_808BEF68
    lui     t8, %hi(var_808BF944)      # t8 = 808C0000
    lbu     t8, %lo(var_808BF944)(t8)
    addiu   t7, $zero, 0x0018          # t7 = 00000018
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beql    t8, $zero, lbl_808BEF6C
    lb      t6, 0x0A68(s0)             # 00000A68
    sb      t7, 0x0434(s0)             # 00000434
    lw      t2, 0x0078($sp)
    sh      t9, 0x045A(s0)             # 0000045A
    lui     $at, %hi(var_808BF944)     # $at = 808C0000
    sw      t2, 0x0438(s0)             # 00000438
    sb      $zero, %lo(var_808BF944)($at)
lbl_808BEF68:
    lb      t6, 0x0A68(s0)             # 00000A68
lbl_808BEF6C:
    bnel    t6, $zero, lbl_808BF1A4
    lbu     t7, 0x0114(s0)             # 00000114
    lbu     t3, 0x00AF(s0)             # 000000AF
    beql    t3, $zero, lbl_808BF1A4
    lbu     t7, 0x0114(s0)             # 00000114
    lbu     t4, 0x0499(s0)             # 00000499
    andi    t5, t4, 0x0002             # t5 = 00000000
    beql    t5, $zero, lbl_808BF1A4
    lbu     t7, 0x0114(s0)             # 00000114
    lw      t8, 0x066C(s0)             # 0000066C
    sll     t7, t8,  5
    bltzl   t7, lbl_808BF1A4
    lbu     t7, 0x0114(s0)             # 00000114
    lbu     t2, 0x04E4(s0)             # 000004E4
    andi    t9, t2, 0x0002             # t9 = 00000000
    bnel    t9, $zero, lbl_808BF1A4
    lbu     t7, 0x0114(s0)             # 00000114
    lbu     t6, 0x0564(s0)             # 00000564
    andi    t3, t6, 0x0002             # t3 = 00000000
    bnel    t3, $zero, lbl_808BF1A4
    lbu     t7, 0x0114(s0)             # 00000114
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_808BF064
    nop
    jal     func_800C6894
    nop
    lw      t4, 0x0004(s0)             # 00000004
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f0                   # $f0 = 6.00
    lh      t7, 0x008A(s0)             # 0000008A
    addiu   $at, $zero, 0xFFFA         # $at = FFFFFFFA
    lbu     t8, 0x00B0(s0)             # 000000B0
    and     t5, t4, $at
    ori     $at, $zero, 0x8000         # $at = 00008000
    lui     v0, %hi(var_808BF944)      # v0 = 808C0000
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    addu    t2, t7, $at
    addiu   v0, v0, %lo(var_808BF944)  # v0 = 808BF944
    sw      t5, 0x0004(s0)             # 00000004
    sb      v1, 0x0891(s0)             # 00000891
    sh      t2, 0x0892(s0)             # 00000892
    swc1    $f0, 0x0894(s0)            # 00000894
    swc1    $f0, 0x0898(s0)            # 00000898
    sb      t8, 0x0890(s0)             # 00000890
    lbu     t9, 0x0000(v0)             # 808BF944
    lui     $at, %hi(var_808C006E)     # $at = 808C0000
    lw      a0, 0x0084($sp)
    addiu   t6, t9, 0x0001             # t6 = 00000001
    sb      t6, 0x0000(v0)             # 808BF944
    sb      v1, %lo(var_808C006E)($at)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    lw      a0, 0x0084($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lw      a2, 0x0034($sp)
    jal     func_80013A84
    addiu   a3, $zero, 0x00C0          # a3 = 000000C0
    lbu     t3, 0x0682(s0)             # 00000682
    andi    t4, t3, 0xFFFB             # t4 = 00000000
    beq     $zero, $zero, lbl_808BF198
    sb      t4, 0x0682(s0)             # 00000682
lbl_808BF064:
    jal     func_800C6820
    addiu   a0, $zero, 0x0038          # a0 = 00000038
    lbu     t5, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    bne     t5, $at, lbl_808BF0D8
    or      a0, s0, $zero              # a0 = 00000000
    lui     t8, %hi(var_808C0075)      # t8 = 808C0000
    lbu     t8, %lo(var_808C0075)(t8)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    or      a0, s0, $zero              # a0 = 00000000
    bne     t8, $at, lbl_808BF0BC
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sw      t7, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_808BF19C
    sb      $zero, 0x00B0(s0)          # 000000B0
lbl_808BF0BC:
    addiu   t2, $zero, 0x0050          # t2 = 00000050
    sw      t2, 0x0010($sp)
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    beq     $zero, $zero, lbl_808BF19C
    sb      $zero, 0x00B0(s0)          # 000000B0
lbl_808BF0D8:
    lw      t9, 0x0004(s0)             # 00000004
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f0                   # $f0 = 6.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t6, t9, $at
    lh      t5, 0x008A(s0)             # 0000008A
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f16                  # $f16 = 8.00
    lbu     t3, 0x00B0(s0)             # 000000B0
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t8, t5, $at
    sw      t6, 0x0004(s0)             # 00000004
    sb      t4, 0x0891(s0)             # 00000891
    sh      t8, 0x0892(s0)             # 00000892
    addiu   a1, s0, 0x04A0             # a1 = 000004A0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    swc1    $f0, 0x0898(s0)            # 00000898
    sb      t3, 0x0890(s0)             # 00000890
    jal     func_800283BC
    swc1    $f16, 0x0894(s0)           # 00000894
    lbu     t7, 0x0682(s0)             # 00000682
    lui     t4, %hi(var_808C0075)      # t4 = 808C0000
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    andi    t9, t7, 0xFFFB             # t9 = 00000000
    sb      t9, 0x0682(s0)             # 00000682
    ori     t6, t9, 0x0001             # t6 = 00000001
    sb      t6, 0x0682(s0)             # 00000682
    lbu     t4, %lo(var_808C0075)(t4)
    lui     $at, %hi(var_808C006E)     # $at = 808C0000
    sb      t3, %lo(var_808C006E)($at)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     t4, $at, lbl_808BF180
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t5, $zero, 0x000C          # t5 = 0000000C
    sw      t5, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_808BF19C
    sb      $zero, 0x00B0(s0)          # 000000B0
lbl_808BF180:
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    sw      t8, 0x0010($sp)
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    addiu   a3, $zero, 0x2000          # a3 = 00002000
lbl_808BF198:
    sb      $zero, 0x00B0(s0)          # 000000B0
lbl_808BF19C:
    sb      $zero, 0x0890(s0)          # 00000890
    lbu     t7, 0x0114(s0)             # 00000114
lbl_808BF1A4:
    beql    t7, $zero, lbl_808BF1C8
    lbu     t6, 0x0682(s0)             # 00000682
    lhu     t2, 0x0112(s0)             # 00000112
    lui     $at, 0xFBFF                # $at = FBFF0000
    ori     $at, $at, 0xFFFF           # $at = FBFFFFFF
    andi    t9, t2, 0x4000             # t9 = 00000000
    beql    t9, $zero, lbl_808BF1D8
    lw      t8, 0x066C(s0)             # 0000066C
    lbu     t6, 0x0682(s0)             # 00000682
lbl_808BF1C8:
    andi    t3, t6, 0xFFFB             # t3 = 00000000
    beq     $zero, $zero, lbl_808BF214
    sb      t3, 0x0682(s0)             # 00000682
    lw      t8, 0x066C(s0)             # 0000066C
lbl_808BF1D8:
    lbu     t4, 0x0682(s0)             # 00000682
    sb      $zero, 0x0A68(s0)          # 00000A68
    and     t7, t8, $at
    ori     t5, t4, 0x0004             # t5 = 00000004
    sb      t5, 0x0682(s0)             # 00000682
    sw      t7, 0x066C(s0)             # 0000066C
    lui     $at, %hi(var_808C004F)     # $at = 808C0000
    sb      $zero, %lo(var_808C004F)($at)
    sb      $zero, %lo(var_808C004E)($at)
    lui     $at, %hi(var_808C0040)     # $at = 808C0000
    mtc1    $zero, $f18                # $f18 = 0.00
    sh      $zero, %lo(var_808C0040)($at)
    lui     $at, %hi(var_808C004C)     # $at = 808C0000
    sh      $zero, %lo(var_808C004C)($at)
    swc1    $f18, 0x0828(s0)           # 00000828
lbl_808BF214:
    lw      t2, 0x002C($sp)
    lui     a2, %hi(var_808C0040)      # a2 = 808C0000
    lw      a1, 0x0084($sp)
    lw      t9, 0x1D40(t2)             # 00001D40
    addiu   a2, a2, %lo(var_808C0040)  # a2 = 808C0040
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    lui     $at, 0xC190                # $at = C1900000
    mtc1    $at, $f6                   # $f6 = -18.00
    lwc1    $f8, 0x0828(s0)            # 00000828
    c.eq.s  $f6, $f8
    nop
    bc1f    lbl_808BF430
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D90
    nop
    cfc1    t6, $f31
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ctc1    v0, $f31
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t3, 0x8012                 # t3 = 80120000
    cvt.w.s $f4, $f0
    cfc1    v0, $f31
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    beql    v0, $zero, lbl_808BF2D0
    mfc1    v0, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f4, $f0, $f4
    ctc1    v0, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    v0, $f31
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    bne     v0, $zero, lbl_808BF2C4
    nop
    mfc1    v0, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_808BF2DC
    or      v0, v0, $at                # v0 = 80000000
lbl_808BF2C4:
    beq     $zero, $zero, lbl_808BF2DC
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    mfc1    v0, $f4
lbl_808BF2D0:
    nop
    bltz    v0, lbl_808BF2C4
    nop
lbl_808BF2DC:
    lh      t3, -0x5A00(t3)            # 8011A600
    ctc1    t6, $f31
    addiu   v0, v0, 0x0006             # v0 = 00000005
    slti    $at, t3, 0x0050
    beq     $at, $zero, lbl_808BF38C
    andi    v0, v0, 0x00FF             # v0 = 00000005
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D90
    nop
    cfc1    t4, $f31
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ctc1    v0, $f31
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f10, $f0
    cfc1    v0, $f31
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    beql    v0, $zero, lbl_808BF374
    mfc1    v0, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f10, $f0, $f10
    ctc1    v0, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    v0, $f31
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    bne     v0, $zero, lbl_808BF368
    nop
    mfc1    v0, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_808BF380
    or      v0, v0, $at                # v0 = 80000000
lbl_808BF368:
    beq     $zero, $zero, lbl_808BF380
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    mfc1    v0, $f10
lbl_808BF374:
    nop
    bltz    v0, lbl_808BF368
    nop
lbl_808BF380:
    ctc1    t4, $f31
    addiu   v0, v0, 0x0003             # v0 = 00000002
    andi    v0, v0, 0x00FF             # v0 = 00000002
lbl_808BF38C:
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f16                  # $f16 = 80.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    lui     $at, 0x428C                # $at = 428C0000
    lui     t5, %hi(var_808C0072)      # t5 = 808C0000
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_808BF3C4
    mtc1    $at, $f6                   # $f6 = 70.00
    lui     $at, %hi(var_808BF978)     # $at = 808C0000
    lwc1    $f18, %lo(var_808BF978)($at)
    beq     $zero, $zero, lbl_808BF3F4
    swc1    $f18, 0x0828(s0)           # 00000828
    mtc1    $at, $f6                   # $f6 = 0.00
lbl_808BF3C4:
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_808BF3EC
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0xBFC0                # $at = BFC00000
    mtc1    $at, $f8                   # $f8 = -1.50
    beq     $zero, $zero, lbl_808BF3F4
    swc1    $f8, 0x0828(s0)            # 00000828
    mtc1    $at, $f4                   # $f4 = -1.50
lbl_808BF3EC:
    nop
    swc1    $f4, 0x0828(s0)            # 00000828
lbl_808BF3F4:
    lbu     t5, %lo(var_808C0072)(t5)
    slt     $at, v0, t5
    beq     $at, $zero, lbl_808BF430
    lui     $at, %hi(var_808BF97C)     # $at = 808C0000
    lwc1    $f16, %lo(var_808BF97C)($at)
    lwc1    $f10, 0x01C0(s0)           # 000001C0
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    addiu   a1, $zero, 0x083F          # a1 = 0000083F
    mul.s   $f18, $f10, $f16
    jal     func_800C4ED0
    swc1    $f18, 0x01C0(s0)           # 000001C0
    lui     $at, %hi(var_808C0073)     # $at = 808C0000
    sb      $zero, %lo(var_808C0073)($at)
    lui     $at, %hi(var_808C0072)     # $at = 808C0000
    sb      $zero, %lo(var_808C0072)($at)
lbl_808BF430:
    lw      v1, 0x0078($sp)
    lui     $at, 0xC190                # $at = C1900000
    mtc1    $at, $f6                   # $f6 = -18.00
    lwc1    $f8, 0x0828(v1)            # 00000828
    lui     a2, %hi(var_808C0070)      # a2 = 808C0000
    addiu   a2, a2, %lo(var_808C0070)  # a2 = 808C0070
    c.eq.s  $f6, $f8
    nop
    bc1f    lbl_808BF4B8
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    lui     $at, 0x428C                # $at = 428C0000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_808BF488
    mtc1    $at, $f16                  # $f16 = 70.00
    lui     $at, %hi(var_808BF980)     # $at = 808C0000
    lwc1    $f10, %lo(var_808BF980)($at)
    beq     $zero, $zero, lbl_808BF4B8
    swc1    $f10, 0x0828(v1)           # 00000828
    mtc1    $at, $f16                  # $f16 = 0.00
lbl_808BF488:
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_808BF4B0
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     $at, 0xBFC0                # $at = BFC00000
    mtc1    $at, $f18                  # $f18 = -1.50
    beq     $zero, $zero, lbl_808BF4B8
    swc1    $f18, 0x0828(v1)           # 00000828
    mtc1    $at, $f6                   # $f6 = -1.50
lbl_808BF4B0:
    nop
    swc1    $f6, 0x0828(v1)            # 00000828
lbl_808BF4B8:
    lbu     v0, 0x0000(a2)             # 808C0070
    beq     v0, $zero, lbl_808BF544
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_808BF544
    nop
    lb      t8, 0x0833(s0)             # 00000833
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    bnel    t8, $zero, lbl_808BF4EC
    sb      t7, 0x0000(a2)             # 808C0070
    beq     $zero, $zero, lbl_808BF544
    sb      $zero, 0x0000(a2)          # 808C0070
    sb      t7, 0x0000(a2)             # 808C0070
lbl_808BF4EC:
    sb      t2, 0x0833(s0)             # 00000833
    lwc1    $f4, 0x01C0(v1)            # 000001C0
    lwc1    $f8, 0x01BC(v1)            # 000001BC
    addiu   t9, s0, 0x0554             # t9 = 00000554
    addiu   t6, s0, 0x04D4             # t6 = 000004D4
    sub.s   $f10, $f8, $f4
    addiu   a1, s0, 0x01A4             # a1 = 000001A4
    swc1    $f10, 0x01BC(s0)           # 000001BC
    lwc1    $f16, 0x01C0(v1)           # 000001C0
    swc1    $f16, 0x01C0(s0)           # 000001C0
    sw      t6, 0x0030($sp)
    sw      t9, 0x0038($sp)
    jal     func_8008BCA4
    lw      a0, 0x0084($sp)
    lw      a0, 0x0084($sp)
    jal     func_8004B9C8
    lw      a1, 0x0030($sp)
    lw      a0, 0x0084($sp)
    jal     func_8004B9C8
    lw      a1, 0x0038($sp)
    lui     a2, %hi(var_808C0070)      # a2 = 808C0000
    addiu   a2, a2, %lo(var_808C0070)  # a2 = 808C0070
lbl_808BF544:
    lui     v0, %hi(var_808C0073)      # v0 = 808C0000
    lbu     v0, %lo(var_808C0073)(v0)
    lui     v1, %hi(var_808C0071)      # v1 = 808C0000
    addiu   v1, v1, %lo(var_808C0071)  # v1 = 808C0071
    beq     v0, $zero, lbl_808BF580
    addiu   t3, v0, 0xFFFF             # t3 = 808BFFFF
    lui     $at, %hi(var_808C0073)     # $at = 808C0000
    sb      t3, %lo(var_808C0073)($at)
    lui     t4, %hi(var_808C0073)      # t4 = 808C0000
    lbu     t4, %lo(var_808C0073)(t4)
    lui     $at, %hi(var_808C0072)     # $at = 808C0000
    bnel    t4, $zero, lbl_808BF584
    lbu     v0, 0x0000(v1)             # 808C0071
    sb      $zero, 0x0000(a2)          # 808C0070
    sb      $zero, %lo(var_808C0072)($at)
lbl_808BF580:
    lbu     v0, 0x0000(v1)             # 808C0071
lbl_808BF584:
    beq     v0, $zero, lbl_808BF5B4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_808BF598
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sb      t5, 0x0A68(s0)             # 00000A68
lbl_808BF598:
    lb      t8, 0x0A68(s0)             # 00000A68
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    blezl   t8, lbl_808BF5B4
    sb      $zero, 0x0000(v1)          # 808C0071
    beq     $zero, $zero, lbl_808BF5B4
    sb      t7, 0x0000(v1)             # 808C0071
    sb      $zero, 0x0000(v1)          # 808C0071
lbl_808BF5B4:
    lb      t2, 0x0A68(s0)             # 00000A68
    lui     t5, %hi(var_808C0058)      # t5 = 808C0000
    beq     t2, $zero, lbl_808BF5D4
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sb      t9, 0x049C(s0)             # 0000049C
    beq     $zero, $zero, lbl_808BF5E4
    sb      t6, 0x04B4(s0)             # 000004B4
lbl_808BF5D4:
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      t3, 0x049C(s0)             # 0000049C
    sb      t4, 0x04B4(s0)             # 000004B4
lbl_808BF5E4:
    lbu     t5, %lo(var_808C0058)(t5)
    beq     t5, $zero, lbl_808BF634
    nop
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     a0, %hi(var_808BF938)      # a0 = 808C0000
    lui     a1, 0x4524                 # a1 = 45240000
    ori     a1, a1, 0x6000             # a1 = 45246000
    addiu   a0, a0, %lo(var_808BF938)  # a0 = 808BF938
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x44FA                 # a3 = 44FA0000
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    lui     $at, %hi(var_808BF984)     # $at = 808C0000
    lwc1    $f8, %lo(var_808BF984)($at)
    lwc1    $f6, 0x0060(s0)            # 00000060
    lui     v1, %hi(var_808BF938)      # v1 = 808C0000
    addiu   v1, v1, %lo(var_808BF938)  # v1 = 808BF938
    sub.s   $f4, $f6, $f8
    beq     $zero, $zero, lbl_808BF674
    swc1    $f4, 0x0060(s0)            # 00000060
lbl_808BF634:
    lui     v1, %hi(var_808BF938)      # v1 = 808C0000
    addiu   v1, v1, %lo(var_808BF938)  # v1 = 808BF938
    lwc1    $f0, 0x0000(v1)            # 808BF938
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, %hi(var_808BF988)     # $at = 808C0000
    c.eq.s  $f10, $f0
    nop
    bc1t    lbl_808BF674
    nop
    lwc1    $f18, %lo(var_808BF988)($at)
    lwc1    $f16, 0x0028(s0)           # 00000028
    mtc1    $zero, $f4                 # $f4 = 0.00
    mul.s   $f6, $f0, $f18
    add.s   $f8, $f16, $f6
    swc1    $f8, 0x0028(s0)            # 00000028
    swc1    $f4, 0x0000(v1)            # 808BF938
lbl_808BF674:
    lui     t8, %hi(var_808C006E)      # t8 = 808C0000
    lbu     t8, %lo(var_808C006E)(t8)
    lui     a0, %hi(var_808C006C)      # a0 = 808C0000
    addiu   a0, a0, %lo(var_808C006C)  # a0 = 808C006C
    beq     t8, $zero, lbl_808BF6A0
    nop
    lb      t7, 0x0A68(s0)             # 00000A68
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, %hi(var_808BF940)     # $at = 808C0000
    bgez    t7, lbl_808BF6AC
    nop
lbl_808BF6A0:
    lui     $at, %hi(var_808BF940)     # $at = 808C0000
    beq     $zero, $zero, lbl_808BF6B0
    sb      $zero, %lo(var_808BF940)($at)
lbl_808BF6AC:
    sb      t2, %lo(var_808BF940)($at)
lbl_808BF6B0:
    lbu     v0, 0x0000(a0)             # 808C006C
    beq     v0, $zero, lbl_808BF6C0
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sb      t9, 0x0000(a0)             # 808C006C
lbl_808BF6C0:
    lw      t6, 0x0034($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lw      t4, 0x0000(t6)             # 00000000
    sw      t4, 0x0038(s0)             # 00000038
    lw      t3, 0x0004(t6)             # 00000004
    sw      t3, 0x003C(s0)             # 0000003C
    lwc1    $f10, 0x003C(s0)           # 0000003C
    lw      t4, 0x0008(t6)             # 00000008
    add.s   $f16, $f10, $f18
    sw      t4, 0x0040(s0)             # 00000040
    swc1    $f16, 0x003C(s0)           # 0000003C
    lwc1    $f6, 0x0000(v1)            # 808BF938
    swc1    $f6, 0x00BC(s0)            # 000000BC
    lw      $ra, 0x0024($sp)
lbl_808BF6FC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0080           # $sp += 0x80
    jr      $ra
    nop


func_808BF70C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lw      t6, 0x0030($sp)
    lw      t7, 0x0034($sp)
    sw      t6, 0x0010($sp)
    jal     func_8007A740
    sw      t7, 0x0014($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808BF738:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lw      t6, 0x0030($sp)
    jal     func_8007B734
    sw      t6, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808BF75C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s2, 0x0030($sp)
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s1, 0x002C($sp)
    lw      s1, 0x0000(s2)             # 00000000
    jal     func_8007E22C
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8007E2C0
    lw      a0, 0x0000(s2)             # 00000000
    lui     t0, %hi(var_808C0075)      # t0 = 808C0000
    addiu   t0, t0, %lo(var_808C0075)  # t0 = 808C0075
    lbu     t6, 0x0000(t0)             # 808C0075
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lui     t7, 0x800F                 # t7 = 800F0000
    bne     t6, $at, lbl_808BF850
    addiu   t7, t7, 0x8510             # t7 = 800E8510
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xFB00                 # t8 = FB000000
    lui     $at, 0xFF00                # $at = FF000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lbu     t1, 0x0000(t0)             # 808C0075
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0030             # t4 = DB060030
    or      t2, t1, $at                # t2 = FF000000
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x8520             # t5 = 800E8520
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80022554
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a1, 0x01A8(s0)             # 000001A8
    lw      a2, 0x01C4(s0)             # 000001C4
    lbu     a3, 0x01A6(s0)             # 000001A6
    lui     t6, %hi(func_808BF70C)     # t6 = 808C0000
    lui     t7, %hi(func_808BF738)     # t7 = 808C0000
    addiu   t7, t7, %lo(func_808BF738) # t7 = 808BF738
    addiu   t6, t6, %lo(func_808BF70C) # t6 = 808BF70C
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      s0, 0x0018($sp)
    lw      t8, 0x02C0(s1)             # 000002C0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8008A88C
    sw      t8, 0x001C($sp)
    beq     $zero, $zero, lbl_808BF8EC
    sw      v0, 0x02C0(s1)             # 000002C0
lbl_808BF850:
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xFB00                 # t1 = FB000000
    lui     $at, 0xFF00                # $at = FF000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(v0)             # 00000000
    lbu     t3, 0x0000(t0)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    or      t4, t3, $at                # t4 = FF000000
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0030             # t6 = DB060030
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80022554
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a1, 0x01A8(s0)             # 000001A8
    lw      a2, 0x01C4(s0)             # 000001C4
    lbu     a3, 0x01A6(s0)             # 000001A6
    lui     t8, %hi(func_808BF70C)     # t8 = 808C0000
    lui     t9, %hi(func_808BF738)     # t9 = 808C0000
    addiu   t9, t9, %lo(func_808BF738) # t9 = 808BF738
    addiu   t8, t8, %lo(func_808BF70C) # t8 = 808BF70C
    sw      t8, 0x0010($sp)
    sw      t9, 0x0014($sp)
    sw      s0, 0x0018($sp)
    lw      t1, 0x02D0(s1)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8008A88C
    sw      t1, 0x001C($sp)
    sw      v0, 0x02D0(s1)             # 000002D0
lbl_808BF8EC:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    nop
    nop
    nop

.section .data

var_808BF910: .word 0x00330900, 0x00000035, 0x00200000, 0x00000A84
.word func_808BD8E0
.word func_808BDA88
.word func_808BDD30
.word func_808BF75C
var_808BF930: .word 0x00000000
var_808BF934: .word 0x00000000
var_808BF938: .word 0x00000000
var_808BF93C: .word 0x00000000
var_808BF940: .word 0x00000000
var_808BF944: .word 0x00000000
var_808BF948: .word \
0x10020102, 0x10020210, 0x01020402, 0x02020202, \
0x02E260D3, 0x00000104, 0x02020804, 0x00000400, \
0x00000000, 0x00000000

.section .rodata

var_808BF970: .word 0x3E99999A
var_808BF974: .word 0x44188000
var_808BF978: .word 0x3F99999A
var_808BF97C: .word 0x3F19999A
var_808BF980: .word 0x3F99999A
var_808BF984: .word 0x3F19999A
var_808BF988: .word 0x3C23D70A, 0x00000000

.bss

var_808C0040: .space 0x02
var_808C0042: .space 0x01
var_808C0043: .space 0x03
var_808C0046: .space 0x02
var_808C0048: .space 0x01
var_808C0049: .space 0x03
var_808C004C: .space 0x02
var_808C004E: .space 0x01
var_808C004F: .space 0x03
var_808C0052: .space 0x06
var_808C0058: .space 0x08
var_808C0060: .space 0x04
var_808C0064: .space 0x04
var_808C0068: .space 0x04
var_808C006C: .space 0x01
var_808C006D: .space 0x01
var_808C006E: .space 0x01
var_808C006F: .space 0x01
var_808C0070: .space 0x01
var_808C0071: .space 0x01
var_808C0072: .space 0x01
var_808C0073: .space 0x01
var_808C0074: .space 0x01
var_808C0075: .space 0x0B
