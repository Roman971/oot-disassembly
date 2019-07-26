.section .text
func_80B18FC0:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B18FD0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    lui     v1, %hi(var_80B197E0)      # v1 = 80B20000
    addiu   v1, v1, %lo(var_80B197E0)  # v1 = 80B197E0
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lbu     t6, 0x0000(v1)             # 80B197E0
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    beq     t6, $zero, lbl_80B19010
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B1910C
    lw      $ra, 0x002C($sp)
lbl_80B19010:
    lw      t8, 0x0034($sp)
    sb      t7, 0x0000(v1)             # 00000000
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sw      $zero, 0x1D38(t8)          # 00001D38
    lhu     t0, 0x1402(v0)             # 00001402
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addu    t1, v0, t0
    sb      t9, 0x00BC(t1)             # 000000BC
    addiu   t2, s0, 0x0184             # t2 = 00000184
    addiu   t3, s0, 0x01C0             # t3 = 000001C0
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a3, a3, 0x0498             # a3 = 06000498
    addiu   a2, a2, 0x4FE0             # a2 = 06004FE0
    jal     func_8008C788
    addiu   a1, s0, 0x0140             # a1 = 00000140
    addiu   v0, s0, 0x0024             # v0 = 00000024
    lw      t6, 0x0000(v0)             # 00000024
    lui     $at, 0x4305                # $at = 43050000
    mtc1    $at, $f4                   # $f4 = 133.00
    sw      t6, 0x0038(s0)             # 00000038
    lw      t5, 0x0004(v0)             # 00000028
    lui     $at, 0xC140                # $at = C1400000
    mtc1    $at, $f6                   # $f6 = -12.00
    sw      t5, 0x003C(s0)             # 0000003C
    lw      t6, 0x0008(v0)             # 0000002C
    lui     $at, 0x42CC                # $at = 42CC0000
    mtc1    $at, $f8                   # $f8 = 102.00
    sw      t6, 0x0040(s0)             # 00000040
    lw      t8, 0x0000(v0)             # 00000024
    lui     a1, 0x3C54                 # a1 = 3C540000
    ori     a1, a1, 0xFDF4             # a1 = 3C54FDF4
    sw      t8, 0x0210(s0)             # 00000210
    lw      t7, 0x0004(v0)             # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    sw      t7, 0x0214(s0)             # 00000214
    lw      t8, 0x0008(v0)             # 0000002C
    swc1    $f4, 0x0024(s0)            # 00000024
    swc1    $f6, 0x0028(s0)            # 00000028
    swc1    $f8, 0x002C(s0)            # 0000002C
    jal     func_80020F88
    sw      t8, 0x0218(s0)             # 00000218
    addiu   t1, $zero, 0xB1E0          # t1 = FFFFB1E0
    lui     $at, 0x42B4                # $at = 42B40000
    sh      t1, 0x00B6(s0)             # 000000B6
    mtc1    $at, $f10                  # $f10 = 90.00
    lb      t0, 0x0003(s0)             # 00000003
    lh      t2, 0x00B6(s0)             # 000000B6
    lui     t4, %hi(func_80B1911C)     # t4 = 80B20000
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, t4, %lo(func_80B1911C) # t4 = 80B1911C
    sb      t9, 0x0003(s0)             # 00000003
    sb      t3, 0x001F(s0)             # 0000001F
    sw      t4, 0x013C(s0)             # 0000013C
    swc1    $f10, 0x020C(s0)           # 0000020C
    sh      t0, 0x0206(s0)             # 00000206
    sh      t2, 0x0032(s0)             # 00000032
    lw      $ra, 0x002C($sp)
lbl_80B1910C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B1911C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0498             # a0 = 06000498
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0498             # a1 = 06000498
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    mfc1    t7, $f8
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lh      t0, 0x0204(s0)             # 00000204
    lui     t3, %hi(func_80B191C8)     # t3 = 80B20000
    addiu   t1, $zero, 0x006D          # t1 = 0000006D
    bne     t0, $zero, lbl_80B191B0
    addiu   t3, t3, %lo(func_80B191C8) # t3 = 80B191C8
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    sh      t1, 0x010E(s0)             # 0000010E
    sh      t2, 0x01FC(s0)             # 000001FC
lbl_80B191B0:
    sw      t3, 0x013C(s0)             # 0000013C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B191C8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x0140             # a0 = 00000140
    jal     func_8008C9C0
    sw      a3, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_80022930
    lw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_80B19230
    lw      a3, 0x0020($sp)
    lh      t6, 0x01FC(a3)             # 000001FC
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    beql    a2, t6, lbl_80B19234
    lw      t0, 0x0024($sp)
    lh      t7, 0x0204(a3)             # 00000204
    lui     t9, %hi(func_80B19558)     # t9 = 80B20000
    lui     t8, %hi(func_80B19370)     # t8 = 80B20000
    bne     t7, $zero, lbl_80B19228
    addiu   t9, t9, %lo(func_80B19558) # t9 = 80B19558
    addiu   t8, t8, %lo(func_80B19370) # t8 = 80B19370
    b       lbl_80B19360
    sw      t8, 0x013C(a3)             # 0000013C
lbl_80B19228:
    b       lbl_80B19360
    sw      t9, 0x013C(a3)             # 0000013C
lbl_80B19230:
    lw      t0, 0x0024($sp)
lbl_80B19234:
    lh      t1, 0x008A(a3)             # 0000008A
    lh      t2, 0x00B6(a3)             # 000000B6
    lui     $at, 0x0001                # $at = 00010000
    addu    t0, t0, $at
    lb      t3, 0x1CBC(t0)             # 00001CBC
    subu    v1, t1, t2
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    sll     v1, v1, 16
    bne     a2, t3, lbl_80B1927C
    sra     v1, v1, 16
    lh      t4, 0x020A(a3)             # 0000020A
    addiu   t5, $zero, 0x006E          # t5 = 0000006E
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    bnel    t4, $zero, lbl_80B19280
    lh      t7, 0x020A(a3)             # 0000020A
    sh      t5, 0x010E(a3)             # 0000010E
    sh      t6, 0x020A(a3)             # 0000020A
    sh      a2, 0x01FC(a3)             # 000001FC
lbl_80B1927C:
    lh      t7, 0x020A(a3)             # 0000020A
lbl_80B19280:
    bne     t7, $zero, lbl_80B192E0
    nop
    lh      t8, 0x0204(a3)             # 00000204
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    beq     t8, $zero, lbl_80B192E0
    nop
    sh      v1, 0x001C($sp)
    sw      a3, 0x0020($sp)
    jal     func_8002049C
    sw      t0, 0x0018($sp)
    lh      v1, 0x001C($sp)
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lw      a3, 0x0020($sp)
    beq     v0, $zero, lbl_80B192D4
    lw      t0, 0x0018($sp)
    addiu   t9, $zero, 0x0084          # t9 = 00000084
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    sh      t9, 0x010E(a3)             # 0000010E
    b       lbl_80B192E0
    sh      t1, 0x01FC(a3)             # 000001FC
lbl_80B192D4:
    addiu   t2, $zero, 0x704C          # t2 = 0000704C
    sh      t2, 0x010E(a3)             # 0000010E
    sh      a2, 0x01FC(a3)             # 000001FC
lbl_80B192E0:
    bltz    v1, lbl_80B192F4
    subu    v0, $zero, v1
    sll     v0, v1, 16
    b       lbl_80B192FC
    sra     v0, v0, 16
lbl_80B192F4:
    sll     v0, v0, 16
    sra     v0, v0, 16
lbl_80B192FC:
    slti    $at, v0, 0x4300
    beql    $at, $zero, lbl_80B19364
    lw      $ra, 0x0014($sp)
    lh      t3, 0x0206(a3)             # 00000206
    lb      t4, 0x1CBC(t0)             # 00001CBC
    or      a0, a3, $zero              # a0 = 00000000
    lui     a2, 0x42C8                 # a2 = 42C80000
    beql    t3, t4, lbl_80B1933C
    lh      t7, 0x0208(a3)             # 00000208
    lw      t5, 0x0004(a3)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sh      $zero, 0x0208(a3)          # 00000208
    and     t6, t5, $at
    b       lbl_80B19360
    sw      t6, 0x0004(a3)             # 00000004
    lh      t7, 0x0208(a3)             # 00000208
lbl_80B1933C:
    bne     t7, $zero, lbl_80B19358
    nop
    lw      t8, 0x0004(a3)             # 00000004
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      t1, 0x0208(a3)             # 00000208
    ori     t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0004(a3)             # 00000004
lbl_80B19358:
    jal     func_80022A68
    lw      a1, 0x0024($sp)
lbl_80B19360:
    lw      $ra, 0x0014($sp)
lbl_80B19364:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B19370:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    lh      t6, 0x01FC(s0)             # 000001FC
    bnel    t6, v0, lbl_80B19498
    lw      $ra, 0x0024($sp)
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B19494
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s1
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t7, 0x8012                 # t7 = 80120000
    beq     v0, $zero, lbl_80B193D4
    nop
    beq     v0, $at, lbl_80B19464
    nop
    b       lbl_80B19498
    lw      $ra, 0x0024($sp)
lbl_80B193D4:
    lh      t7, -0x59FC(t7)            # 8011A604
    slti    $at, t7, 0x000A
    bne     $at, $zero, lbl_80B19430
    nop
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800721CC
    addiu   a0, $zero, 0xFFF6          # a0 = FFFFFFF6
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x0204(s0)             # 00000204
    sw      $zero, 0x0118(s0)          # 00000118
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0071          # a2 = 00000071
    lui     a3, 0x44FA                 # a3 = 44FA0000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lui     t9, %hi(func_80B194A8)     # t9 = 80B20000
    addiu   t9, t9, %lo(func_80B194A8) # t9 = 80B194A8
    b       lbl_80B19494
    sw      t9, 0x013C(s0)             # 0000013C
lbl_80B19430:
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t0, $zero, 0x0085          # t0 = 00000085
    sh      t0, 0x010E(s0)             # 0000010E
    andi    a1, t0, 0xFFFF             # a1 = 00000085
    jal     func_800DCE80
    or      a0, s1, $zero              # a0 = 00000000
    lui     t2, %hi(func_80B19558)     # t2 = 80B20000
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    addiu   t2, t2, %lo(func_80B19558) # t2 = 80B19558
    sh      t1, 0x01FC(s0)             # 000001FC
    b       lbl_80B19494
    sw      t2, 0x013C(s0)             # 0000013C
lbl_80B19464:
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t3, $zero, 0x002D          # t3 = 0000002D
    sh      t3, 0x010E(s0)             # 0000010E
    andi    a1, t3, 0xFFFF             # a1 = 0000002D
    jal     func_800DCE80
    or      a0, s1, $zero              # a0 = 00000000
    lui     t5, %hi(func_80B19558)     # t5 = 80B20000
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    addiu   t5, t5, %lo(func_80B19558) # t5 = 80B19558
    sh      t4, 0x01FC(s0)             # 000001FC
    sw      t5, 0x013C(s0)             # 0000013C
lbl_80B19494:
    lw      $ra, 0x0024($sp)
lbl_80B19498:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80B194A8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BB0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80B194D8
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80B19504)     # t6 = 80B20000
    addiu   t6, t6, %lo(func_80B19504) # t6 = 80B19504
    b       lbl_80B194F4
    sw      t6, 0x013C(a0)             # 0000013C
lbl_80B194D8:
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0042          # a2 = 00000042
    lui     a3, 0x44FA                 # a3 = 44FA0000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_80B194F4:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B19504:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80B1954C
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80B19548
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80B1911C)     # t6 = 80B20000
    addiu   t6, t6, %lo(func_80B1911C) # t6 = 80B1911C
    sw      t6, 0x013C(t7)             # 0000013C
lbl_80B19548:
    lw      $ra, 0x0014($sp)
lbl_80B1954C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B19558:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lw      t6, 0x0018($sp)
    lh      t7, 0x01FC(t6)             # 000001FC
    bnel    t7, v0, lbl_80B195B0
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beql    v0, $zero, lbl_80B195B0
    lw      $ra, 0x0014($sp)
    jal     func_800D6218
    lw      a0, 0x001C($sp)
    lw      t9, 0x0018($sp)
    lui     t8, %hi(func_80B1911C)     # t8 = 80B20000
    addiu   t8, t8, %lo(func_80B1911C) # t8 = 80B1911C
    sw      t8, 0x013C(t9)             # 0000013C
    lw      $ra, 0x0014($sp)
lbl_80B195B0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B195BC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lh      v0, 0x0200(s0)             # 00000200
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B195E4
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0200(s0)             # 00000200
lbl_80B195E4:
    jal     func_80020F04
    lw      a1, 0x020C(s0)             # 0000020C
    lw      t8, 0x0038(s0)             # 00000038
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sw      t8, 0x0010($sp)
    lw      t7, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x021C             # a2 = 0000021C
    addiu   a3, s0, 0x0222             # a3 = 00000222
    sw      t7, 0x0014($sp)
    lw      t8, 0x0040(s0)             # 00000040
    jal     func_8002B024
    sw      t8, 0x0018($sp)
    lh      t9, 0x0200(s0)             # 00000200
    bnel    t9, $zero, lbl_80B19664
    lh      t8, 0x0202(s0)             # 00000202
    lh      t0, 0x01FE(s0)             # 000001FE
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x01FE(s0)             # 000001FE
    lh      t2, 0x01FE(s0)             # 000001FE
    slti    $at, t2, 0x0002
    bne     $at, $zero, lbl_80B19660
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f12                  # $f12 = 60.00
    jal     func_80026D64
    sh      $zero, 0x01FE(s0)          # 000001FE
    trunc.w.s $f4, $f0
    mfc1    t6, $f4
    nop
    addiu   t7, t6, 0x0014             # t7 = 00000014
    sh      t7, 0x0200(s0)             # 00000200
lbl_80B19660:
    lh      t8, 0x0202(s0)             # 00000202
lbl_80B19664:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x0202(s0)             # 00000202
    lw      t9, 0x013C(s0)             # 0000013C
    lw      a1, 0x0034($sp)
    jalr    $ra, t9
    nop
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B19694:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_80B196C0
    lw      v0, 0x0014($sp)
    lw      v1, 0x0010($sp)
    lh      t7, 0x0224(v0)             # 00000224
    lh      t6, 0x0000(v1)             # 00000000
    addu    t8, t6, t7
    sh      t8, 0x0000(v1)             # 00000000
lbl_80B196C0:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lw      v0, 0x0014($sp)
    bne     a1, $at, lbl_80B196F0
    lw      v1, 0x0010($sp)
    lh      t9, 0x0000(v1)             # 00000000
    lh      t0, 0x021E(v0)             # 0000021E
    lh      t2, 0x0004(v1)             # 00000004
    addu    t1, t9, t0
    sh      t1, 0x0000(v1)             # 00000000
    lh      t3, 0x0220(v0)             # 00000220
    addu    t4, t2, t3
    sh      t4, 0x0004(v1)             # 00000004
lbl_80B196F0:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80B196FC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0030($sp)
    lw      t1, 0x0030($sp)
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lh      t9, 0x01FE(s0)             # 000001FE
    lui     t0, %hi(var_80B197E4)      # t0 = 80B20000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t2, t9,  2
    addu    t0, t0, t2
    lw      t0, %lo(var_80B197E4)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    lw      a1, 0x0144(s0)             # 00000144
    lw      a2, 0x0160(s0)             # 00000160
    lbu     a3, 0x0142(s0)             # 00000142
    lui     t2, %hi(func_80B19694)     # t2 = 80B20000
    addiu   t2, t2, %lo(func_80B19694) # t2 = 80B19694
    sw      t2, 0x0010($sp)
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    jal     func_80089D8C
    lw      a0, 0x003C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop

.section .data

var_80B197C0: .word 0x017C0400, 0x08000039, 0x01550000, 0x00000228
.word func_80B18FD0
.word func_80B18FC0
.word func_80B195BC
.word func_80B196FC
var_80B197E0: .word 0x00000000
var_80B197E4: .word 0x06000970, 0x06000D70, 0x00000000

.section .rodata


