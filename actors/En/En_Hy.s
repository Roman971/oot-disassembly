.section .text
func_80AE4EE0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    lui     t9, %hi(var_80AE7B98)      # t9 = 80AE0000
    addiu   t9, t9, %lo(var_80AE7B98)  # t9 = 80AE7B98
    andi    t7, t6, 0x007F             # t7 = 00000000
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  2
    addu    v0, t8, t9
    lbu     v1, 0x0006(v0)             # 00000006
    lui     $at, 0x0001                # $at = 00010000
    lbu     t0, 0x0000(v0)             # 00000000
    lbu     t1, 0x0001(v0)             # 00000001
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lui     a1, %hi(var_80AE78D0)      # a1 = 80AE0000
    sll     t2, v1,  3
    addu    a1, a1, t2
    addu    a0, a3, $at
    sw      a0, 0x0018($sp)
    lh      a1, %lo(var_80AE78D0)(a1)
    sw      a2, 0x0020($sp)
    sb      t0, 0x001F($sp)
    jal     func_80081628              # ObjectIndex
    sb      t1, 0x001E($sp)
    lw      a2, 0x0020($sp)
    lui     a1, %hi(var_80AE78D0)      # a1 = 80AE0000
    sb      v0, 0x0188(a2)             # 00000188
    lb      t3, 0x0188(a2)             # 00000188
    lbu     t4, 0x001E($sp)
    lw      a0, 0x0018($sp)
    bgez    t3, lbl_80AE4F74
    sll     t5, t4,  3
    b       lbl_80AE4FE4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE4F74:
    addu    a1, a1, t5
    lh      a1, %lo(var_80AE78D0)(a1)
    jal     func_80081628              # ObjectIndex
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lui     a1, %hi(var_80AE7810)      # a1 = 80AE0000
    sb      v0, 0x0187(a2)             # 00000187
    lb      t6, 0x0187(a2)             # 00000187
    lbu     t7, 0x001F($sp)
    lw      a0, 0x0018($sp)
    bgez    t6, lbl_80AE4FAC
    sll     t8, t7,  2
    b       lbl_80AE4FE4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE4FAC:
    subu    t8, t8, t7
    sll     t8, t8,  2
    addu    a1, a1, t8
    lh      a1, %lo(var_80AE7810)(a1)
    jal     func_80081628              # ObjectIndex
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    sb      v0, 0x0186(a2)             # 00000186
    lb      t9, 0x0186(a2)             # 00000186
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bgez    t9, lbl_80AE4FE4
    nop
    b       lbl_80AE4FE4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE4FE4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AE4FF4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0020($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at
    lb      a1, 0x0188(t6)             # 00000188
    jal     func_80081688
    sw      a0, 0x001C($sp)
    bne     v0, $zero, lbl_80AE5030
    lw      t7, 0x0020($sp)
    b       lbl_80AE506C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5030:
    lw      a0, 0x001C($sp)
    jal     func_80081688
    lb      a1, 0x0187(t7)             # 00000187
    bne     v0, $zero, lbl_80AE504C
    lw      t8, 0x0020($sp)
    b       lbl_80AE506C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE504C:
    lw      a0, 0x001C($sp)
    jal     func_80081688
    lb      a1, 0x0186(t8)             # 00000186
    bnel    v0, $zero, lbl_80AE506C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    b       lbl_80AE506C
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE506C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AE507C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x00C5          # a1 = 000000C5
    lw      v1, 0x0018($sp)
    sb      v0, 0x0189(v1)             # 00000189
    lb      t6, 0x0189(v1)             # 00000189
    lw      $ra, 0x0014($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bgez    t6, lbl_80AE50C4
    nop
    b       lbl_80AE50C4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE50C4:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80AE50CC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at
    jal     func_80081688
    lb      a1, 0x0189(a3)             # 00000189
    bne     v0, $zero, lbl_80AE5100
    lw      $ra, 0x0014($sp)
    b       lbl_80AE5104
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5100:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE5104:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80AE510C:
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    $at, $f2                   # $f2 = 1.00
    sw      $ra, 0x001C($sp)
    lwc1    $f0, 0x0094(a0)            # 00000094
    lwc1    $f4, 0x0090(a0)            # 00000090
    sw      a2, 0x0250(a0)             # 00000250
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


func_80AE5150:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      a1, 0x001C(a2)             # 0000001C
    lw      v1, 0x1C44(a0)             # 00001C44
    sw      a2, 0x0024($sp)
    andi    a1, a1, 0x007F             # a1 = 00000000
    addiu   a1, a1, 0x0025             # a1 = 00000025
    sw      a0, 0x0020($sp)
    jal     func_800597C0
    sw      v1, 0x001C($sp)
    lw      v1, 0x001C($sp)
    lw      a0, 0x0020($sp)
    lw      a2, 0x0024($sp)
    beq     v0, $zero, lbl_80AE51B4
    andi    a1, v0, 0xFFFF             # a1 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   t8, $zero, 0x0019          # t8 = 00000019
    andi    t7, t6, 0x007F             # t7 = 00000000
    bne     t7, $at, lbl_80AE51AC
    nop
    sb      t8, 0x0683(v1)             # 00000683
lbl_80AE51AC:
    b       lbl_80AE5988
    or      v0, a1, $zero              # v0 = 00000000
lbl_80AE51B4:
    lh      t9, 0x001C(a2)             # 0000001C
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t0, t9, 0x007F             # t0 = 00000000
    sltiu   $at, t0, 0x0015
    beq     $at, $zero, lbl_80AE5988
    sll     t0, t0,  2
    lui     $at, %hi(var_80AE80D0)     # $at = 80AF0000
    addu    $at, $at, t0
    lw      t0, %lo(var_80AE80D0)($at)
    jr      t0
    nop
var_80AE51E0:
    lh      v0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    bnel    v0, $at, lbl_80AE523C
    addiu   $at, $zero, 0x0020         # $at = 00000020
    lhu     t1, 0x0320(a2)             # 00000320
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    andi    t2, t1, 0x0800             # t2 = 00000000
    beq     t2, $zero, lbl_80AE5210
    addiu   v1, $zero, 0x508D          # v1 = 0000508D
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000508D
lbl_80AE5210:
    lhu     t3, 0x0F10(v0)             # 00005F9D
    addiu   v0, $zero, 0x508B          # v0 = 0000508B
    andi    t4, t3, 0x0800             # t4 = 00000000
    beq     t4, $zero, lbl_80AE522C
    nop
    b       lbl_80AE522C
    addiu   v0, $zero, 0x508C          # v0 = 0000508C
lbl_80AE522C:
    or      v1, v0, $zero              # v1 = 0000508C
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000508C
    addiu   $at, $zero, 0x0020         # $at = 00000020
lbl_80AE523C:
    bne     v0, $at, lbl_80AE5270
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t5, 0x1400(v0)             # 8011B9D0
    addiu   v1, $zero, 0x709C          # v1 = 0000709C
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80AE5268
    nop
    addiu   v1, $zero, 0x709B          # v1 = 0000709B
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000709B
lbl_80AE5268:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000709B
lbl_80AE5270:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lbu     t7, 0x141C(v0)             # 8011B9EC
    beq     t7, $zero, lbl_80AE52CC
    nop
    lh      v1, 0x13C4(v0)             # 8011B994
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    v1, v1, 0x0F00             # v1 = 00000000
    sra     v1, v1,  8
    sll     v1, v1, 16
    sra     v1, v1, 16
    beq     v1, $zero, lbl_80AE52C4
    nop
    bne     v1, $at, lbl_80AE52B8
    sb      $zero, 0x0205(a2)          # 00000205
    addiu   v1, $zero, 0x709F          # v1 = 0000709F
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000709F
lbl_80AE52B8:
    addiu   v1, $zero, 0x709E          # v1 = 0000709E
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000709E
lbl_80AE52C4:
    b       lbl_80AE5988
    addiu   v0, $zero, 0x709D          # v0 = 0000709D
lbl_80AE52CC:
    b       lbl_80AE5988
    addiu   v0, $zero, 0x70A0          # v0 = 000070A0
var_80AE52D4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0EE4(v0)             # 8011B4B4
    andi    t9, t8, 0x0001             # t9 = 00000001
    beql    t9, $zero, lbl_80AE5318
    lhu     t2, 0x0F10(v0)             # 8011B4E0
    lhu     t0, 0x0F10(v0)             # 8011B4E0
    addiu   v1, $zero, 0x7045          # v1 = 00007045
    andi    t1, t0, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_80AE530C
    nop
    addiu   v1, $zero, 0x7017          # v1 = 00007017
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007017
lbl_80AE530C:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007017
    lhu     t2, 0x0F10(v0)             # 00007F27
lbl_80AE5318:
    addiu   v1, $zero, 0x7016          # v1 = 00007016
    andi    t3, t2, 0x0001             # t3 = 00000000
    beq     t3, $zero, lbl_80AE5334
    nop
    addiu   v1, $zero, 0x7017          # v1 = 00007017
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007017
lbl_80AE5334:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007017
var_80AE533C:
    lh      v0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    bnel    v0, $at, lbl_80AE5358
    addiu   $at, $zero, 0x0052         # $at = 00000052
    b       lbl_80AE5988
    addiu   v0, $zero, 0x5086          # v0 = 00005086
    addiu   $at, $zero, 0x0052         # $at = 00000052
lbl_80AE5358:
    bne     v0, $at, lbl_80AE5368
    nop
    b       lbl_80AE5988
    addiu   v0, $zero, 0x5085          # v0 = 00005085
lbl_80AE5368:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x0EE4(v0)             # 8011B4B4
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_80AE53AC
    lhu     v1, 0x0ED6(v0)             # 8011B4A6
    lhu     t6, 0x0F10(v0)             # 8011B4E0
    addiu   v1, $zero, 0x7047          # v1 = 00007047
    andi    t7, t6, 0x0008             # t7 = 00000000
    beq     t7, $zero, lbl_80AE53A0
    nop
    addiu   v1, $zero, 0x701A          # v1 = 0000701A
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000701A
lbl_80AE53A0:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000701A
    lhu     v1, 0x0ED6(v0)             # 00007EF0
lbl_80AE53AC:
    andi    t8, v1, 0x0010             # t8 = 00000010
    beq     t8, $zero, lbl_80AE53C0
    andi    t9, v1, 0x0001             # t9 = 00000000
    b       lbl_80AE5988
    addiu   v0, $zero, 0x701A          # v0 = 0000701A
lbl_80AE53C0:
    beql    t9, $zero, lbl_80AE53D4
    lhu     t0, 0x0F10(v0)             # 00007F2A
    b       lbl_80AE5988
    addiu   v0, $zero, 0x701B          # v0 = 0000701B
    lhu     t0, 0x0F10(v0)             # 00007F2B
lbl_80AE53D4:
    andi    t1, t0, 0x0004             # t1 = 00000000
    beq     t1, $zero, lbl_80AE53E8
    nop
    b       lbl_80AE5988
    addiu   v0, $zero, 0x701C          # v0 = 0000701C
lbl_80AE53E8:
    b       lbl_80AE5988
    addiu   v0, $zero, 0x701A          # v0 = 0000701A
var_80AE53F0:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t2, 0x0EE4(v0)             # 8011B4B4
    addiu   v1, $zero, 0x7001          # v1 = 00007001
    andi    t3, t2, 0x0001             # t3 = 00000000
    beq     t3, $zero, lbl_80AE5434
    nop
    lhu     t4, 0x0F10(v0)             # 8011B4E0
    addiu   v0, $zero, 0x70EB          # v0 = 000070EB
    andi    t5, t4, 0x0010             # t5 = 00000000
    beq     t5, $zero, lbl_80AE542C
    nop
    addiu   v0, $zero, 0x7001          # v0 = 00007001
    b       lbl_80AE5988
    andi    v0, v0, 0xFFFF             # v0 = 00007001
lbl_80AE542C:
    b       lbl_80AE5988
    andi    v0, v0, 0xFFFF             # v0 = 00007001
lbl_80AE5434:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007001
var_80AE543C:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EE4(v0)             # 8011B4B4
    addiu   v1, $zero, 0x704B          # v1 = 0000704B
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80AE5464
    lhu     t8, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000704B
    lhu     t8, 0x0F10(v0)             # 00007F5B
lbl_80AE5464:
    addiu   v0, $zero, 0x7023          # v0 = 00007023
    andi    t9, t8, 0x0020             # t9 = 00000000
    beq     t9, $zero, lbl_80AE547C
    nop
    b       lbl_80AE547C
    addiu   v0, $zero, 0x7024          # v0 = 00007024
lbl_80AE547C:
    or      v1, v0, $zero              # v1 = 00007024
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007024
var_80AE5488:
    addiu   t0, $zero, 0x0019          # t0 = 00000019
    sb      t0, 0x0683(v1)             # 000076A7
    b       lbl_80AE5988
    addiu   v0, $zero, 0x700C          # v0 = 0000700C
var_80AE5498:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t1, 0x0EE4(v0)             # 8011B4B4
    addiu   v1, $zero, 0x704A          # v1 = 0000704A
    andi    t2, t1, 0x0001             # t2 = 00000000
    beql    t2, $zero, lbl_80AE54C0
    lhu     t3, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000704A
    lhu     t3, 0x0F10(v0)             # 00007F5A
lbl_80AE54C0:
    addiu   v0, $zero, 0x7021          # v0 = 00007021
    andi    t4, t3, 0x0040             # t4 = 00000000
    beq     t4, $zero, lbl_80AE54D8
    nop
    b       lbl_80AE54D8
    addiu   v0, $zero, 0x7022          # v0 = 00007022
lbl_80AE54D8:
    or      v1, v0, $zero              # v1 = 00007022
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007022
var_80AE54E4:
    lh      v0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    bnel    v0, $at, lbl_80AE5500
    addiu   $at, $zero, 0x0052         # $at = 00000052
    b       lbl_80AE5988
    addiu   v0, $zero, 0x5088          # v0 = 00005088
    addiu   $at, $zero, 0x0052         # $at = 00000052
lbl_80AE5500:
    bne     v0, $at, lbl_80AE5510
    nop
    b       lbl_80AE5988
    addiu   v0, $zero, 0x5087          # v0 = 00005087
lbl_80AE5510:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t5, 0x0EE4(v0)             # 8011B4B4
    addiu   v1, $zero, 0x704D          # v1 = 0000704D
    andi    t6, t5, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_80AE5538
    lhu     t7, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000704D
    lhu     t7, 0x0F10(v0)             # 00007F5D
lbl_80AE5538:
    addiu   v0, $zero, 0x7027          # v0 = 00007027
    andi    t8, t7, 0x0080             # t8 = 00000000
    beq     t8, $zero, lbl_80AE5550
    nop
    b       lbl_80AE5550
    addiu   v0, $zero, 0x7028          # v0 = 00007028
lbl_80AE5550:
    or      v1, v0, $zero              # v1 = 00007028
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007028
var_80AE555C:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t9, 0x0EE4(v0)             # 8011B4B4
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80AE55A0
    lhu     t3, 0x0F10(v0)             # 8011B4E0
    lhu     t1, 0x0F10(v0)             # 8011B4E0
    addiu   v1, $zero, 0x7048          # v1 = 00007048
    andi    t2, t1, 0x0200             # t2 = 00000000
    beq     t2, $zero, lbl_80AE5594
    nop
    addiu   v1, $zero, 0x701E          # v1 = 0000701E
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000701E
lbl_80AE5594:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000701E
    lhu     t3, 0x0F10(v0)             # 00007F2E
lbl_80AE55A0:
    addiu   v1, $zero, 0x701D          # v1 = 0000701D
    andi    t4, t3, 0x0100             # t4 = 00000000
    beq     t4, $zero, lbl_80AE55BC
    nop
    addiu   v1, $zero, 0x701E          # v1 = 0000701E
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000701E
lbl_80AE55BC:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000701E
var_80AE55C4:
    lh      v0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    bnel    v0, $at, lbl_80AE5608
    addiu   $at, $zero, 0x0052         # $at = 00000052
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t5, 0x0EE8(v0)             # 8011B4B8
    addiu   v1, $zero, 0x5081          # v1 = 00005081
    andi    t6, t5, 0x0400             # t6 = 00000000
    beq     t6, $zero, lbl_80AE55FC
    nop
    addiu   v1, $zero, 0x5082          # v1 = 00005082
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00005082
lbl_80AE55FC:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00005082
    addiu   $at, $zero, 0x0052         # $at = 00000052
lbl_80AE5608:
    bne     v0, $at, lbl_80AE5644
    lui     t7, 0x8010                 # t7 = 80100000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t8, 0x00A4(v0)             # 8011A674
    lw      t7, -0x7400(t7)            # 800F8C00
    addiu   v1, $zero, 0x507F          # v1 = 0000507F
    and     t9, t7, t8
    beq     t9, $zero, lbl_80AE563C
    nop
    addiu   v1, $zero, 0x5080          # v1 = 00005080
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00005080
lbl_80AE563C:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00005080
lbl_80AE5644:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x0EE4(v0)             # 8011B4B4
    addiu   v1, $zero, 0x7049          # v1 = 00007049
    andi    t1, t0, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_80AE566C
    lhu     t2, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007049
    lhu     t2, 0x0F10(v0)             # 00007F59
lbl_80AE566C:
    addiu   v0, $zero, 0x701F          # v0 = 0000701F
    andi    t3, t2, 0x0400             # t3 = 00000000
    beq     t3, $zero, lbl_80AE5684
    nop
    b       lbl_80AE5684
    addiu   v0, $zero, 0x7020          # v0 = 00007020
lbl_80AE5684:
    or      v1, v0, $zero              # v1 = 00007020
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007020
var_80AE5690:
    lh      v0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x0037         # $at = 00000037
    bnel    v0, $at, lbl_80AE56D4
    addiu   $at, $zero, 0x0052         # $at = 00000052
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x0EE8(v0)             # 8011B4B8
    addiu   v1, $zero, 0x507D          # v1 = 0000507D
    andi    t5, t4, 0x0400             # t5 = 00000000
    beq     t5, $zero, lbl_80AE56C8
    nop
    addiu   v1, $zero, 0x507E          # v1 = 0000507E
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000507E
lbl_80AE56C8:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000507E
    addiu   $at, $zero, 0x0052         # $at = 00000052
lbl_80AE56D4:
    bne     v0, $at, lbl_80AE5710
    lui     t6, 0x8010                 # t6 = 80100000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t7, 0x00A4(v0)             # 8011A674
    lw      t6, -0x7400(t6)            # 800F8C00
    addiu   v1, $zero, 0x507B          # v1 = 0000507B
    and     t8, t6, t7
    beq     t8, $zero, lbl_80AE5708
    nop
    addiu   v1, $zero, 0x507C          # v1 = 0000507C
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000507C
lbl_80AE5708:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000507C
lbl_80AE5710:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t9, 0x0EE4(v0)             # 8011B4B4
    addiu   v1, $zero, 0x7046          # v1 = 00007046
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80AE5738
    lhu     t1, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007046
    lhu     t1, 0x0F10(v0)             # 00007F56
lbl_80AE5738:
    addiu   v0, $zero, 0x7018          # v0 = 00007018
    andi    t2, t1, 0x0800             # t2 = 00000000
    beq     t2, $zero, lbl_80AE5750
    nop
    b       lbl_80AE5750
    addiu   v0, $zero, 0x7019          # v0 = 00007019
lbl_80AE5750:
    or      v1, v0, $zero              # v1 = 00007019
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007019
var_80AE575C:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t3, 0x0F08(v0)             # 8011B4D8
    addiu   v1, $zero, 0x7014          # v1 = 00007014
    andi    t4, t3, 0x0800             # t4 = 00000000
    beq     t4, $zero, lbl_80AE57A0
    nop
    lhu     t5, 0x0F10(v0)             # 8011B4E0
    addiu   v0, $zero, 0x70A4          # v0 = 000070A4
    andi    t6, t5, 0x1000             # t6 = 00000000
    beq     t6, $zero, lbl_80AE5798
    nop
    addiu   v0, $zero, 0x7014          # v0 = 00007014
    b       lbl_80AE5988
    andi    v0, v0, 0xFFFF             # v0 = 00007014
lbl_80AE5798:
    b       lbl_80AE5988
    andi    v0, v0, 0xFFFF             # v0 = 00007014
lbl_80AE57A0:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007014
var_80AE57A8:
    lh      t7, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x0052         # $at = 00000052
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t7, $at, lbl_80AE57E8
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t8, 0x0010(v0)             # 8011A5E0
    addiu   v1, $zero, 0x5083          # v1 = 00005083
    beq     t8, $zero, lbl_80AE57E0
    nop
    addiu   v1, $zero, 0x5084          # v1 = 00005084
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00005084
lbl_80AE57E0:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00005084
lbl_80AE57E8:
    lhu     t9, 0x0EE4(v0)             # 00005F68
    addiu   v1, $zero, 0x7015          # v1 = 00007015
    andi    t0, t9, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_80AE5808
    nop
    addiu   v1, $zero, 0x7044          # v1 = 00007044
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007044
lbl_80AE5808:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00007044
var_80AE5810:
    b       lbl_80AE5988
    addiu   v0, $zero, 0x7055          # v0 = 00007055
var_80AE5818:
    b       lbl_80AE5988
    addiu   v0, $zero, 0x7089          # v0 = 00007089
var_80AE5820:
    b       lbl_80AE5988
    addiu   v0, $zero, 0x708A          # v0 = 0000708A
var_80AE5828:
    b       lbl_80AE5988
    addiu   v0, $zero, 0x700E          # v0 = 0000700E
var_80AE5830:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t1, 0x0004(v0)             # 8011A5D4
    beql    t1, $zero, lbl_80AE58A4
    lw      t7, 0x0010(v0)             # 8011A5E0
    lw      t2, 0x0010(v0)             # 8011A5E0
    bnel    t2, $zero, lbl_80AE587C
    lhu     t5, 0x0F24(v0)             # 8011B4F4
    lhu     t3, 0x0F24(v0)             # 8011B4F4
    addiu   v1, $zero, 0x5057          # v1 = 00005057
    andi    t4, t3, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_80AE5870
    nop
    addiu   v1, $zero, 0x5058          # v1 = 00005058
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00005058
lbl_80AE5870:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00005058
    lhu     t5, 0x0F24(v0)             # 00005F7C
lbl_80AE587C:
    addiu   v1, $zero, 0x5059          # v1 = 00005059
    andi    t6, t5, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80AE5898
    nop
    addiu   v1, $zero, 0x505A          # v1 = 0000505A
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000505A
lbl_80AE5898:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000505A
    lw      t7, 0x0010(v0)             # 0000506A
lbl_80AE58A4:
    bne     t7, $zero, lbl_80AE58D4
    nop
    lhu     t8, 0x0F24(v0)             # 00005F7E
    addiu   v1, $zero, 0x505B          # v1 = 0000505B
    andi    t9, t8, 0x0004             # t9 = 00000000
    beq     t9, $zero, lbl_80AE58CC
    nop
    addiu   v1, $zero, 0x505C          # v1 = 0000505C
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000505C
lbl_80AE58CC:
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000505C
lbl_80AE58D4:
    b       lbl_80AE5988
    addiu   v0, $zero, 0x5058          # v0 = 00005058
var_80AE58DC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t0, 0x0004(v0)             # 8011A5D4
    beql    t0, $zero, lbl_80AE5938
    lhu     t5, 0x0320(a2)             # 00000320
    lhu     t1, 0x0EE4(v0)             # 8011B4B4
    addiu   v1, $zero, 0x505F          # v1 = 0000505F
    andi    t2, t1, 0x0001             # t2 = 00000000
    beql    t2, $zero, lbl_80AE5910
    lhu     t3, 0x0F24(v0)             # 8011B4F4
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000505F
    lhu     t3, 0x0F24(v0)             # 00005F83
lbl_80AE5910:
    addiu   v0, $zero, 0x505D          # v0 = 0000505D
    andi    t4, t3, 0x0008             # t4 = 00000000
    beq     t4, $zero, lbl_80AE5928
    nop
    b       lbl_80AE5928
    addiu   v0, $zero, 0x505E          # v0 = 0000505E
lbl_80AE5928:
    or      v1, v0, $zero              # v1 = 0000505E
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 0000505E
    lhu     t5, 0x0320(a2)             # 00000320
lbl_80AE5938:
    addiu   v1, $zero, 0x5062          # v1 = 00005062
    andi    t6, t5, 0x0800             # t6 = 00000000
    beql    t6, $zero, lbl_80AE5954
    lhu     t7, 0x0F24(v0)             # 00005F82
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00005062
    lhu     t7, 0x0F24(v0)             # 00005F86
lbl_80AE5954:
    addiu   v0, $zero, 0x5060          # v0 = 00005060
    andi    t8, t7, 0x0010             # t8 = 00000000
    beq     t8, $zero, lbl_80AE596C
    nop
    b       lbl_80AE596C
    addiu   v0, $zero, 0x5061          # v0 = 00005061
lbl_80AE596C:
    or      v1, v0, $zero              # v1 = 00005061
    b       lbl_80AE5988
    andi    v0, v1, 0xFFFF             # v0 = 00005061
var_80AE5978:
    b       lbl_80AE5988
    addiu   v0, $zero, 0x7120          # v0 = 00007120
var_80AE5980:
    b       lbl_80AE5988
    addiu   v0, $zero, 0x7121          # v0 = 00007121
lbl_80AE5988:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AE5998:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    lui     t7, %hi(var_80AE80B0)      # t7 = 80AF0000
    addiu   t7, t7, %lo(var_80AE80B0)  # t7 = 80AE80B0
    lw      t9, 0x0000(t7)             # 80AE80B0
    lw      t8, 0x0004(t7)             # 80AE80B4
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFF4
    lui     t1, %hi(var_80AE80B8)      # t1 = 80AF0000
    addiu   t1, t1, %lo(var_80AE80B8)  # t1 = 80AE80B8
    sw      t9, 0x0000(t6)             # FFFFFFF4
    sw      t8, 0x0004(t6)             # FFFFFFF8
    lw      t2, 0x0004(t1)             # 80AE80BC
    lw      t3, 0x0000(t1)             # 80AE80B8
    addiu   t0, $sp, 0x0034            # t0 = FFFFFFEC
    sw      t2, 0x0004(t0)             # FFFFFFF0
    sw      t3, 0x0000(t0)             # FFFFFFEC
    lw      a0, 0x0048($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    sltiu   $at, v0, 0x000A
    beq     $at, $zero, lbl_80AE5ECC
    sll     t4, v0,  2
    lui     $at, %hi(var_80AE8124)     # $at = 80AF0000
    addu    $at, $at, t4
    lw      t4, %lo(var_80AE8124)($at)
    jr      t4
    nop
var_80AE5A10:
    b       lbl_80AE5ED0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
var_80AE5A18:
    lw      v1, 0x004C($sp)
    addiu   $at, $zero, 0x709E         # $at = 0000709E
    lhu     v0, 0x010E(v1)             # 0000010E
    beq     v0, $at, lbl_80AE5A60
    or      s0, v0, $zero              # s0 = 00000001
    addiu   $at, $zero, 0x709F         # $at = 0000709F
    beq     s0, $at, lbl_80AE5A60
    addiu   $at, $zero, 0x70F0         # $at = 000070F0
    beq     s0, $at, lbl_80AE5ABC
    addiu   $at, $zero, 0x70F1         # $at = 000070F1
    beq     s0, $at, lbl_80AE5ABC
    addiu   $at, $zero, 0x70F2         # $at = 000070F2
    beq     s0, $at, lbl_80AE5ABC
    addiu   $at, $zero, 0x70F3         # $at = 000070F3
    beql    s0, $at, lbl_80AE5AC0
    lw      t0, 0x0144(v1)             # 00000144
    b       lbl_80AE5ED0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE5A60:
    lb      t5, 0x0205(v1)             # 00000205
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t5, $zero, lbl_80AE5AE8
    addiu   $at, $zero, 0x709F         # $at = 0000709F
    bne     v0, $at, lbl_80AE5A84
    lui     a1, 0x8010                 # a1 = 80100000
    b       lbl_80AE5A88
    addiu   s0, $zero, 0x4802          # s0 = 00004802
lbl_80AE5A84:
    addiu   s0, $zero, 0x4806          # s0 = 00004806
lbl_80AE5A88:
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)
    andi    a0, s0, 0xFFFF             # a0 = 00004806
    addiu   a1, a1, 0x4394             # a1 = 80104394
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lw      t8, 0x004C($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    b       lbl_80AE5ED0
    sb      t7, 0x0205(t8)             # 00000205
lbl_80AE5ABC:
    lw      t0, 0x0144(v1)             # 00000144
lbl_80AE5AC0:
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x33B4             # t9 = 060033B4
    beq     t9, t0, lbl_80AE5AE8
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80AE7910)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE7910)  # a1 = 80AE7910
    jal     func_80027C98
    addiu   a2, $zero, 0x0017          # a2 = 00000017
    jal     func_800C69A0
    addiu   a0, $zero, 0x0922          # a0 = 00000922
lbl_80AE5AE8:
    b       lbl_80AE5ED0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
var_80AE5AF0:
    lw      a3, 0x004C($sp)
    lhu     v0, 0x010E(a3)             # 0000010E
    slti    $at, v0, 0x7048
    bne     $at, $zero, lbl_80AE5B78
    or      s0, v0, $zero              # s0 = 00000001
    slti    $at, s0, 0x70A0
    bne     $at, $zero, lbl_80AE5B4C
    addiu   t1, s0, 0x8F15             # t1 = FFFF8F16
    slti    $at, s0, 0x70A5
    bne     $at, $zero, lbl_80AE5B38
    sltiu   $at, t1, 0x0009
    beq     $at, $zero, lbl_80AE5EA4
    sll     t1, t1,  2
    lui     $at, %hi(var_80AE814C)     # $at = 80AF0000
    addu    $at, $at, t1
    lw      t1, %lo(var_80AE814C)($at)
    jr      t1
    nop
lbl_80AE5B38:
    addiu   $at, $zero, 0x70A4         # $at = 000070A4
    beq     s0, $at, lbl_80AE5D9C
    lui     v0, 0x8012                 # v0 = 80120000
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5B4C:
    addiu   $at, $zero, 0x7048         # $at = 00007048
    beq     s0, $at, lbl_80AE5D4C
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   $at, $zero, 0x709E         # $at = 0000709E
    beq     s0, $at, lbl_80AE5E58
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   $at, $zero, 0x709F         # $at = 0000709F
    beq     s0, $at, lbl_80AE5E68
    lui     v0, 0x8012                 # v0 = 80120000
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5B78:
    slti    $at, s0, 0x7028
    bne     $at, $zero, lbl_80AE5BA4
    addiu   t2, s0, 0x8FEA             # t2 = FFFF8FEB
    addiu   $at, $zero, 0x7045         # $at = 00007045
    beq     s0, $at, lbl_80AE5C74
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   $at, $zero, 0x7047         # $at = 00007047
    beq     s0, $at, lbl_80AE5CA8
    lui     v0, 0x8012                 # v0 = 80120000
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5BA4:
    slti    $at, s0, 0x508C
    bne     $at, $zero, lbl_80AE5BD0
    addiu   t3, s0, 0xAFA9             # t3 = FFFFAFAA
    sltiu   $at, t2, 0x0012
    beq     $at, $zero, lbl_80AE5EA4
    sll     t2, t2,  2
    lui     $at, %hi(var_80AE8170)     # $at = 80AF0000
    addu    $at, $at, t2
    lw      t2, %lo(var_80AE8170)($at)
    jr      t2
    nop
lbl_80AE5BD0:
    slti    $at, s0, 0x5061
    bne     $at, $zero, lbl_80AE5BEC
    addiu   $at, $zero, 0x508B         # $at = 0000508B
    beq     s0, $at, lbl_80AE5E40
    lui     v0, 0x8012                 # v0 = 80120000
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5BEC:
    sltiu   $at, t3, 0x000A
    beq     $at, $zero, lbl_80AE5EA4
    sll     t3, t3,  2
    lui     $at, %hi(var_80AE81B8)     # $at = 80AF0000
    addu    $at, $at, t3
    lw      t3, %lo(var_80AE81B8)($at)
    jr      t3
    nop
var_80AE5C0C:
    sll     t4, v0,  1
    addu    a0, $sp, t4
    lui     $at, 0xFFFF                # $at = FFFF0000
    addu    $at, $at, a0
    jal     func_800721CC
    lh      a0, 0x1E54($at)            # FFFF1E54
    lw      a0, 0x004C($sp)
    lui     a1, %hi(var_80AE7910)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE7910)  # a1 = 80AE7910
    addiu   a2, $zero, 0x0011          # a2 = 00000011
    jal     func_80027C98
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0048($sp)
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0x001E          # a3 = 0000001E
    jal     func_80079854
    lw      a1, 0x1C44(a0)             # 00001C44
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5C58:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t5, 0x0F10(v0)             # 8011B4E0
    ori     t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5C74:
    addiu   v0, v0, 0xA5D0             # v0 = FFFFA5D0
    lhu     t7, 0x0F10(v0)             # FFFFB4E0
    ori     t8, t7, 0x0002             # t8 = 00000002
    sh      t8, 0x0F10(v0)             # FFFFB4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5C8C:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t9, 0x0F10(v0)             # 8011B4E0
    ori     t0, t9, 0x0004             # t0 = 00000004
    sh      t0, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5CA8:
    addiu   v0, v0, 0xA5D0             # v0 = FFFFA5D0
    lhu     t1, 0x0F10(v0)             # FFFFB4E0
    ori     t2, t1, 0x0008             # t2 = 00000008
    sh      t2, 0x0F10(v0)             # FFFFB4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5CC0:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t3, 0x0F10(v0)             # 8011B4E0
    ori     t4, t3, 0x0010             # t4 = 00000010
    sh      t4, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5CDC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t5, 0x0F10(v0)             # 8011B4E0
    ori     t6, t5, 0x0020             # t6 = 00000020
    sh      t6, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5CF8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x0F10(v0)             # 8011B4E0
    ori     t8, t7, 0x0040             # t8 = 00000040
    sh      t8, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5D14:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t9, 0x0F10(v0)             # 8011B4E0
    ori     t0, t9, 0x0080             # t0 = 00000080
    sh      t0, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5D30:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t1, 0x0F10(v0)             # 8011B4E0
    ori     t2, t1, 0x0100             # t2 = 00000100
    sh      t2, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5D4C:
    addiu   v0, v0, 0xA5D0             # v0 = FFFFA5D0
    lhu     t3, 0x0F10(v0)             # FFFFB4E0
    ori     t4, t3, 0x0200             # t4 = 00000200
    sh      t4, 0x0F10(v0)             # FFFFB4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5D64:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t5, 0x0F10(v0)             # 8011B4E0
    ori     t6, t5, 0x0400             # t6 = 00000400
    sh      t6, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5D80:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x0F10(v0)             # 8011B4E0
    ori     t8, t7, 0x0800             # t8 = 00000800
    sh      t8, 0x0F10(v0)             # 8011B4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5D9C:
    addiu   v0, v0, 0xA5D0             # v0 = FFFFA5D0
    lhu     t9, 0x0F10(v0)             # FFFFB4E0
    ori     t0, t9, 0x1000             # t0 = 00001000
    sh      t0, 0x0F10(v0)             # FFFFB4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5DB4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t1, 0x0F24(v0)             # 8011B4F4
    ori     t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x0F24(v0)             # 8011B4F4
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5DD0:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t3, 0x0F24(v0)             # 8011B4F4
    ori     t4, t3, 0x0002             # t4 = 00000002
    sh      t4, 0x0F24(v0)             # 8011B4F4
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5DEC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t5, 0x0F24(v0)             # 8011B4F4
    ori     t6, t5, 0x0004             # t6 = 00000004
    sh      t6, 0x0F24(v0)             # 8011B4F4
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5E08:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x0F24(v0)             # 8011B4F4
    ori     t8, t7, 0x0008             # t8 = 00000008
    sh      t8, 0x0F24(v0)             # 8011B4F4
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5E24:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t9, 0x0F24(v0)             # 8011B4F4
    ori     t0, t9, 0x0010             # t0 = 00000010
    sh      t0, 0x0F24(v0)             # 8011B4F4
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5E40:
    addiu   v0, v0, 0xA5D0             # v0 = FFFFA5D0
    lhu     t1, 0x0F10(v0)             # FFFFB4E0
    ori     t2, t1, 0x0800             # t2 = 00000800
    sh      t2, 0x0F10(v0)             # FFFFB4E0
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5E58:
    addiu   v0, v0, 0xA5D0             # v0 = FFFFA5D0
    sh      $zero, 0x13C4(v0)          # FFFFB994
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE5E68:
    addiu   v0, v0, 0xA5D0             # v0 = FFFFA5D0
    lhu     t3, 0x0F2A(v0)             # FFFFB4FA
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x0048($sp)
    andi    t4, t3, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_80AE5E8C
    addiu   s0, $zero, 0x003E          # s0 = 0000003E
    b       lbl_80AE5E8C
    addiu   s0, $zero, 0x004D          # s0 = 0000004D
lbl_80AE5E8C:
    jal     func_80AE510C
    or      a2, s0, $zero              # a2 = 0000004D
    lw      t6, 0x004C($sp)
    lui     t5, %hi(func_80AE6E2C)     # t5 = 80AE0000
    addiu   t5, t5, %lo(func_80AE6E2C) # t5 = 80AE6E2C
    sw      t5, 0x0180(t6)             # 00000180
lbl_80AE5EA4:
    b       lbl_80AE5ED0
    or      v0, $zero, $zero           # v0 = 00000000
var_80AE5EAC:
    jal     func_800D6110
    lw      a0, 0x0048($sp)
    bne     v0, $zero, lbl_80AE5EC4
    nop
    b       lbl_80AE5ED0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE5EC4:
    b       lbl_80AE5ED0
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80AE5ECC:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE5ED0:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80AE5EE4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x020A(a2)             # 0000020A
    bne     v0, $zero, lbl_80AE5F04
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80AE5F0C
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80AE5F04:
    sh      t6, 0x020A(a2)             # 0000020A
    lh      v1, 0x020A(a2)             # 0000020A
lbl_80AE5F0C:
    bne     v1, $zero, lbl_80AE5F90
    lui     v0, %hi(var_80AE7B98)      # v0 = 80AE0000
    lh      t7, 0x001C(a2)             # 0000001C
    lh      t0, 0x0208(a2)             # 00000208
    lui     v1, %hi(var_80AE7818)      # v1 = 80AE0000
    andi    t8, t7, 0x007F             # t8 = 00000000
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    addu    v0, v0, t9
    lbu     v0, %lo(var_80AE7B98)(v0)
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0208(a2)             # 00000208
    sll     t2, v0,  2
    subu    t2, t2, v0
    sll     t2, t2,  2
    addu    v1, v1, t2
    lw      v1, %lo(var_80AE7818)(v1)
    beql    v1, $zero, lbl_80AE5F94
    lw      $ra, 0x0014($sp)
    lh      t3, 0x0208(a2)             # 00000208
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    sll     t4, t3,  2
    addu    t5, v1, t4
    lw      t6, 0x0000(t5)             # 00000000
    bnel    t6, $zero, lbl_80AE5F94
    lw      $ra, 0x0014($sp)
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sh      v0, 0x020A(a2)             # 0000020A
    sh      $zero, 0x0208(a2)          # 00000208
lbl_80AE5F90:
    lw      $ra, 0x0014($sp)
lbl_80AE5F94:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AE5FA0:
    lh      v0, 0x001C(a0)             # 0000001C
    lui     t7, %hi(var_80AE7C94)      # t7 = 80AE0000
    addiu   t7, t7, %lo(var_80AE7C94)  # t7 = 80AE7C94
    andi    v0, v0, 0x007F             # v0 = 00000000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    sll     t6, v0,  2
    addu    t6, t6, v0
    sll     t6, t6,  1
    addu    v1, t6, t7
    lh      t8, 0x0006(v1)             # 00000006
    sh      t8, 0x01CC(a0)             # 000001CC
    lh      t9, 0x0008(v1)             # 00000008
    sh      t9, 0x01CE(a0)             # 000001CE
    jr      $ra
    nop


func_80AE5FDC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lh      v1, 0x001C(a0)             # 0000001C
    lui     t7, %hi(var_80AE7E64)      # t7 = 80AE0000
    addiu   t7, t7, %lo(var_80AE7E64)  # t7 = 80AE7E64
    andi    v1, v1, 0x007F             # v1 = 00000000
    andi    v1, v1, 0x00FF             # v1 = 00000000
    sll     t6, v1,  3
    subu    t6, t6, v1
    sll     t6, t6,  2
    addu    v0, t6, t7
    lwc1    $f4, 0x0000(v0)            # 00000000
    swc1    $f4, 0x00C4(a0)            # 000000C4
    sw      a0, 0x0020($sp)
    sw      v0, 0x0018($sp)
    jal     func_80020F88
    lw      a1, 0x0010(v0)             # 00000010
    lw      v0, 0x0018($sp)
    lw      a0, 0x0020($sp)
    lb      t8, 0x0014(v0)             # 00000014
    lh      t1, 0x01CC(a0)             # 000001CC
    sb      t8, 0x001F(a0)             # 0000001F
    lw      t0, 0x0004(v0)             # 00000004
    mtc1    t1, $f10                   # $f10 = 0.00
    sw      t0, 0x0254(a0)             # 00000254
    lw      t9, 0x0008(v0)             # 00000008
    cvt.s.w $f16, $f10
    sw      t9, 0x0258(a0)             # 00000258
    lw      t0, 0x000C(v0)             # 0000000C
    sw      t0, 0x025C(a0)             # 0000025C
    lwc1    $f6, 0x0018(v0)            # 00000018
    swc1    $f6, 0x024C(a0)            # 0000024C
    lwc1    $f8, 0x024C(a0)            # 0000024C
    add.s   $f18, $f8, $f16
    swc1    $f18, 0x024C(a0)           # 0000024C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AE6074:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     v0, %hi(var_80AE7C94)      # v0 = 80AE0000
    addiu   v0, v0, %lo(var_80AE7C94)  # v0 = 80AE7C94
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   v1, $zero, 0x000A          # v1 = 0000000A
    lwc1    $f4, 0x0024(a3)            # 00000024
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    trunc.w.s $f6, $f4
    addiu   a2, a3, 0x018C             # a2 = 0000018C
    mfc1    t7, $f6
    nop
    sh      t7, 0x0018($sp)
    lwc1    $f8, 0x0028(a3)            # 00000028
    lh      t2, 0x0018($sp)
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x001A($sp)
    lwc1    $f16, 0x002C(a3)           # 0000002C
    lh      t9, 0x001A($sp)
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sh      t1, 0x001C($sp)
    lh      t3, 0x001C(a3)             # 0000001C
    andi    t4, t3, 0x007F             # t4 = 00000000
    multu   t4, v1
    mflo    t5
    addu    t6, v0, t5
    lh      t7, 0x0000(t6)             # 00000000
    addu    t8, t2, t7
    sh      t8, 0x0018($sp)
    lh      t0, 0x001C(a3)             # 0000001C
    lh      t2, 0x001C($sp)
    andi    t1, t0, 0x007F             # t1 = 00000000
    multu   t1, v1
    mflo    t3
    addu    t4, v0, t3
    lh      t5, 0x0002(t4)             # 00000002
    addu    t6, t9, t5
    sh      t6, 0x001A($sp)
    lh      t7, 0x001C(a3)             # 0000001C
    addiu   t9, $sp, 0x0018            # t9 = FFFFFFF8
    andi    t8, t7, 0x007F             # t8 = 00000000
    multu   t8, v1
    mflo    t0
    addu    t1, v0, t0
    lh      t3, 0x0004(t1)             # 00000004
    addu    t4, t2, t3
    sh      t4, 0x001C($sp)
    lw      t6, 0x0000(t9)             # FFFFFFF8
    swl     t6, 0x01D2(a3)             # 000001D2
    swr     t6, 0x01D5(a3)             # 000001D5
    lhu     t6, 0x0004(t9)             # FFFFFFFC
    sh      t6, 0x01D6(a3)             # 000001D6
    lw      a0, 0x0024($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AE6178:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0024($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   a0, $zero, 0x001C          # a0 = 0000001C
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x001C($sp)
    lh      t8, 0x001C(a2)             # 0000001C
    andi    t9, t8, 0x007F             # t9 = 00000000
    bnel    t9, $at, lbl_80AE62B4
    lw      $ra, 0x0014($sp)
    jal     func_80071B04
    sw      a2, 0x0020($sp)
    bne     v0, $zero, lbl_80AE6238
    lw      a2, 0x0020($sp)
    addiu   a0, $zero, 0x001D          # a0 = 0000001D
    jal     func_80071B04
    sw      a2, 0x0020($sp)
    bne     v0, $zero, lbl_80AE6238
    lw      a2, 0x0020($sp)
    addiu   a0, $zero, 0x0019          # a0 = 00000019
    jal     func_80071B04
    sw      a2, 0x0020($sp)
    bne     v0, $zero, lbl_80AE6238
    lw      a2, 0x0020($sp)
    lw      a0, 0x0024($sp)
    jal     func_80022B04
    sw      a2, 0x0020($sp)
    addiu   $at, $zero, 0x001B         # $at = 0000001B
    beq     v0, $at, lbl_80AE6210
    lw      a2, 0x0020($sp)
    addiu   $at, $zero, 0x001C         # $at = 0000001C
    beq     v0, $at, lbl_80AE6210
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    bne     v0, $at, lbl_80AE621C
    lw      a0, 0x0024($sp)
lbl_80AE6210:
    addiu   t0, $zero, 0x70EF          # t0 = 000070EF
    b       lbl_80AE62A4
    sh      t0, 0x010E(a2)             # 0000010E
lbl_80AE621C:
    jal     func_80079B44
    sw      a2, 0x0020($sp)
    bne     v0, $zero, lbl_80AE62A4
    lw      a2, 0x0020($sp)
    addiu   t1, $zero, 0x70ED          # t1 = 000070ED
    b       lbl_80AE62A4
    sh      t1, 0x010E(a2)             # 0000010E
lbl_80AE6238:
    lw      a0, 0x0024($sp)
    jal     func_80022B04
    sw      a2, 0x0020($sp)
    addiu   $at, $zero, 0x0018         # $at = 00000018
    beq     v0, $at, lbl_80AE6278
    lw      a2, 0x0020($sp)
    addiu   $at, $zero, 0x0019         # $at = 00000019
    beq     v0, $at, lbl_80AE6270
    addiu   t2, $zero, 0x70F0          # t2 = 000070F0
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     v0, $at, lbl_80AE6284
    addiu   t4, $zero, 0x70F2          # t4 = 000070F2
    b       lbl_80AE628C
    lw      a0, 0x0024($sp)
lbl_80AE6270:
    b       lbl_80AE62A4
    sh      t2, 0x010E(a2)             # 0000010E
lbl_80AE6278:
    addiu   t3, $zero, 0x70F1          # t3 = 000070F1
    b       lbl_80AE62A4
    sh      t3, 0x010E(a2)             # 0000010E
lbl_80AE6284:
    b       lbl_80AE62A4
    sh      t4, 0x010E(a2)             # 0000010E
lbl_80AE628C:
    jal     func_80079B44
    sw      a2, 0x0020($sp)
    bne     v0, $zero, lbl_80AE62A4
    lw      a2, 0x0020($sp)
    addiu   t5, $zero, 0x700C          # t5 = 0000700C
    sh      t5, 0x010E(a2)             # 0000010E
lbl_80AE62A4:
    lhu     t6, 0x010E(a2)             # 0000010E
    lw      t7, 0x001C($sp)
    sh      t6, 0x010E(t7)             # 0000010E
    lw      $ra, 0x0014($sp)
lbl_80AE62B4:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AE62C0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lh      t7, 0x001C(s0)             # 0000001C
    lw      t6, 0x003C($sp)
    andi    t8, t7, 0x007F             # t8 = 00000000
    sltiu   $at, t8, 0x0013
    beq     $at, $zero, lbl_80AE634C
    lw      v0, 0x1C44(t6)             # 00001C44
    sll     t8, t8,  2
    lui     $at, %hi(var_80AE81E0)     # $at = 80AF0000
    addu    $at, $at, t8
    lw      t8, %lo(var_80AE81E0)($at)
    jr      t8
    nop
var_80AE6304:
    lh      t9, 0x01D8(s0)             # 000001D8
    bne     t9, $zero, lbl_80AE6318
    nop
    b       lbl_80AE6350
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80AE6318:
    b       lbl_80AE6350
    addiu   a3, $zero, 0x0002          # a3 = 00000002
var_80AE6320:
    b       lbl_80AE6350
    addiu   a3, $zero, 0x0001          # a3 = 00000001
var_80AE6328:
    b       lbl_80AE6350
    addiu   a3, $zero, 0x0004          # a3 = 00000004
var_80AE6330:
    lh      t0, 0x01D8(s0)             # 000001D8
    bne     t0, $zero, lbl_80AE6344
    nop
    b       lbl_80AE6350
    addiu   a3, $zero, 0x0002          # a3 = 00000002
lbl_80AE6344:
    b       lbl_80AE6350
    addiu   a3, $zero, 0x0004          # a3 = 00000004
lbl_80AE634C:
    addiu   a3, $zero, 0x0002          # a3 = 00000002
lbl_80AE6350:
    lw      t2, 0x0024(v0)             # 00000024
    lui     t3, 0x8012                 # t3 = 80120000
    or      a0, s0, $zero              # a0 = 00000000
    sw      t2, 0x01F0(s0)             # 000001F0
    lw      t1, 0x0028(v0)             # 00000028
    addiu   a1, s0, 0x01D8             # a1 = 000001D8
    sw      t1, 0x01F4(s0)             # 000001F4
    lw      t2, 0x002C(v0)             # 0000002C
    sw      t2, 0x01F8(s0)             # 000001F8
    lw      t3, -0x5A2C(t3)            # 8011A5D4
    bnel    t3, $zero, lbl_80AE63B0
    lh      t8, 0x001C(s0)             # 0000001C
    lh      t4, 0x001C(s0)             # 0000001C
    lui     t7, %hi(var_80AE7D68)      # t7 = 80AE0000
    addiu   t7, t7, %lo(var_80AE7D68)  # t7 = 80AE7D68
    andi    t5, t4, 0x007F             # t5 = 00000000
    sll     t6, t5,  2
    subu    t6, t6, t5
    sll     t6, t6,  2
    addu    v0, t6, t7
    lwc1    $f4, 0x0008(v0)            # 00000008
    b       lbl_80AE63D4
    swc1    $f4, 0x01EC(s0)            # 000001EC
    lh      t8, 0x001C(s0)             # 0000001C
lbl_80AE63B0:
    lui     t1, %hi(var_80AE7D68)      # t1 = 80AE0000
    addiu   t1, t1, %lo(var_80AE7D68)  # t1 = 80AE7D68
    andi    t9, t8, 0x007F             # t9 = 00000000
    sll     t0, t9,  2
    subu    t0, t0, t9
    sll     t0, t0,  2
    addu    v0, t0, t1
    lwc1    $f6, 0x0004(v0)            # 00000004
    swc1    $f6, 0x01EC(s0)            # 000001EC
lbl_80AE63D4:
    lbu     a2, 0x0000(v0)             # 00000000
    jal     func_80027854
    sw      a1, 0x0028($sp)
    lui     t2, %hi(func_80AE5150)     # t2 = 80AE0000
    lui     t3, %hi(func_80AE5998)     # t3 = 80AE0000
    addiu   t3, t3, %lo(func_80AE5998) # t3 = 80AE5998
    addiu   t2, t2, %lo(func_80AE5150) # t2 = 80AE5150
    lw      a3, 0x024C(s0)             # 0000024C
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800271FC
    lw      a2, 0x0028($sp)
    beq     v0, $zero, lbl_80AE641C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE6178
    lw      a1, 0x003C($sp)
lbl_80AE641C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AE6430:
    lh      v1, 0x00A4(a1)             # 000000A4
    slti    $at, v1, 0x0038
    bne     $at, $zero, lbl_80AE6454
    addiu   t6, v1, 0xFFE2             # t6 = FFFFFFE2
    addiu   $at, $zero, 0x0052         # $at = 00000052
    beql    v1, $at, lbl_80AE6478
    lh      v0, 0x001C(a0)             # 0000001C
    b       lbl_80AE6690
    lh      v1, 0x001C(a0)             # 0000001C
lbl_80AE6454:
    sltiu   $at, t6, 0x001A
    beq     $at, $zero, lbl_80AE668C
    sll     t6, t6,  2
    lui     $at, %hi(var_80AE822C)     # $at = 80AF0000
    addu    $at, $at, t6
    lw      t6, %lo(var_80AE822C)($at)
    jr      t6
    nop
    lh      v0, 0x001C(a0)             # 0000001C
lbl_80AE6478:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    andi    v0, v0, 0x007F             # v0 = 00000000
    beq     v0, $at, lbl_80AE64B4
    lui     v1, 0x8012                 # v1 = 80120000
    beq     a1, v0, lbl_80AE64B4
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     v0, $at, lbl_80AE64B4
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80AE64B4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_80AE64B4
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE64B4:
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t7, 0x0004(v1)             # 8011A5D4
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     t7, $zero, lbl_80AE64D0
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE64D0:
    beq     v0, $at, lbl_80AE64F0
    nop
    lw      t8, 0x0010(v1)             # 8011A5E0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t8, $at, lbl_80AE64F0
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE64F0:
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001


func_80AE64F8:
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    lui     v1, 0x8012                 # v1 = 80120000
    andi    v0, v0, 0x007F             # v0 = 00000000
    beq     a1, v0, lbl_80AE6518
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE6518:
    lw      t9, 0x0004(v1)             # 8011A5D4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t9, $at, lbl_80AE6530
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE6530:
    bne     a1, v0, lbl_80AE654C
    nop
    lw      t0, 0x0010(v1)             # 8011A5E0
    bne     t0, $zero, lbl_80AE654C
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE654C:
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001


func_80AE6554:
    lh      t1, 0x001C(a0)             # 0000001C
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    andi    t2, t1, 0x007F             # t2 = 00000000
    beql    t2, $zero, lbl_80AE6578
    lw      t3, 0x0010(v1)             # 8011A5E0
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE6574:
    lw      t3, 0x0010(v1)             # 8011A5E0
lbl_80AE6578:
    bne     t3, $zero, lbl_80AE6588
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE6588:
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001


func_80AE6590:
    lh      v0, 0x001C(a0)             # 0000001C
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    andi    v0, v0, 0x007F             # v0 = 00000000
    bne     v0, $zero, lbl_80AE65C8
    addiu   $at, $zero, 0x0009         # $at = 00000009
    lw      t4, 0x0004(v1)             # 8011A5D4
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beq     t4, $zero, lbl_80AE65C0
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE65C0:
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000001
lbl_80AE65C8:
    beq     v0, $at, lbl_80AE65EC
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80AE65EC
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_80AE65EC
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE65EC:
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t5, 0x0010(v1)             # 8011A5E0
    bnel    t5, $zero, lbl_80AE6608
    lw      t6, 0x0004(v1)             # 8011A5D4
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE6604:
    lw      t6, 0x0004(v1)             # 8011A5D4
lbl_80AE6608:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t6, $at, lbl_80AE661C
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE661C:
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001


func_80AE6624:
    lh      t7, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    lui     v1, 0x8012                 # v1 = 80120000
    andi    t8, t7, 0x007F             # t8 = 00000000
    beq     t8, $at, lbl_80AE6644
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE6644:
    lw      t9, 0x0010(v1)             # 8011A5E0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t9, $at, lbl_80AE6660
    lhu     t0, 0x0EE4(v1)             # 8011B4B4
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE665C:
    lhu     t0, 0x0EE4(v1)             # 8011B4B4
lbl_80AE6660:
    andi    t1, t0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80AE6684
    nop
    lhu     t2, 0x0EDC(v1)             # 8011B4AC
    andi    t3, t2, 0x0020             # t3 = 00000000
    bne     t3, $zero, lbl_80AE6684
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE6684:
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE668C:
    lh      v1, 0x001C(a0)             # 0000001C
lbl_80AE6690:
    addiu   $at, $zero, 0x0013         # $at = 00000013
    andi    v1, v1, 0x007F             # v1 = 00000050
    beq     v1, $at, lbl_80AE66A4
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v1, $at, lbl_80AE66C0
lbl_80AE66A4:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t4, 0x0004(v1)             # 8011A5D4
    bnel    t4, $zero, lbl_80AE66C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE66C0:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE66C4:
    jr      $ra
    nop


func_80AE66CC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x007F             # t7 = 00000000
    slti    $at, t7, 0x0015
    beq     $at, $zero, lbl_80AE6718
    nop
    jal     func_80AE507C
    lw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_80AE6718
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE4EE0
    lw      a1, 0x0024($sp)
    bnel    v0, $zero, lbl_80AE6724
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AE6718:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AE6724:
    jal     func_80AE6430
    lw      a1, 0x0024($sp)
    bne     v0, $zero, lbl_80AE673C
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AE673C:
    lui     t8, %hi(func_80AE6788)     # t8 = 80AE0000
    addiu   t8, t8, %lo(func_80AE6788) # t8 = 80AE6788
    sw      t8, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AE675C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x018C             # a1 = 0000018C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AE6788:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE50CC
    lw      a1, 0x003C($sp)
    beq     v0, $zero, lbl_80AE6A40
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE4FF4
    lw      a1, 0x003C($sp)
    beq     v0, $zero, lbl_80AE6A40
    lw      a0, 0x003C($sp)
    lb      t6, 0x0188(s0)             # 00000188
    lui     t0, 0x0001                 # t0 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sb      t6, 0x001E(s0)             # 0000001E
    lb      t7, 0x001E(s0)             # 0000001E
    lui     t5, %hi(var_80AE7B9E)      # t5 = 80AE0000
    lui     a2, %hi(var_80AE78D4)      # a2 = 80AE0000
    sll     t8, t7,  4
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, a0, t8
    addu    t0, t0, t9
    lw      t0, 0x17B4(t0)             # 000117B4
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   t8, s0, 0x02C0             # t8 = 000002C0
    addu    t1, t0, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t1, 0x0C50($at)            # 80120C50
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   t7, s0, 0x0260             # t7 = 00000260
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    andi    t3, t2, 0x007F             # t3 = 00000000
    sll     t4, t3,  2
    subu    t4, t4, t3
    sll     t4, t4,  2
    addu    t5, t5, t4
    lbu     t5, %lo(var_80AE7B9E)(t5)
    sw      a1, 0x0034($sp)
    sw      t7, 0x0010($sp)
    sll     t6, t5,  3
    addu    a2, a2, t6
    lw      a2, %lo(var_80AE78D4)(a2)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lb      t0, 0x0189(s0)             # 00000189
    lw      a0, 0x003C($sp)
    lui     t3, 0x0001                 # t3 = 00010000
    sll     t1, t0,  4
    addu    t1, t1, t0
    sll     t1, t1,  2
    addu    t2, a0, t1
    addu    t3, t3, t2
    lw      t3, 0x17B4(t3)             # 000117B4
    lui     $at, 0x8000                # $at = 80000000
    addiu   a1, s0, 0x018C             # a1 = 0000018C
    addu    t4, t3, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t4, 0x0C50($at)            # 80120C50
    jal     func_8004AB7C
    sw      a1, 0x0030($sp)
    lui     a3, %hi(var_80AE7780)      # a3 = 80AE0000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_80AE7780)  # a3 = 80AE7780
    lw      a0, 0x003C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80AE5FA0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, %hi(var_80AE77AC)      # a2 = 80AE0000
    addiu   a2, a2, %lo(var_80AE77AC)  # a2 = 80AE77AC
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t5, 0x001C(s0)             # 0000001C
    lui     a2, %hi(var_80AE7BA3)      # a2 = 80AE0000
    lui     a1, %hi(var_80AE7910)      # a1 = 80AE0000
    andi    t6, t5, 0x007F             # t6 = 00000000
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    addu    a2, a2, t7
    lbu     a2, %lo(var_80AE7BA3)(a2)
    addiu   a1, a1, %lo(var_80AE7910)  # a1 = 80AE7910
    jal     func_80027C98
    lw      a0, 0x0034($sp)
    lw      t8, 0x003C($sp)
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    lui     t2, 0x8012                 # t2 = 80120000
    lh      v0, 0x00A4(t8)             # 000000A4
    beq     v0, $at, lbl_80AE6930
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bnel    v0, $at, lbl_80AE6954
    addiu   $at, $zero, 0x002A         # $at = 0000002A
lbl_80AE6930:
    lw      t9, 0x0004(s0)             # 00000004
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t0, t9, $at
    sw      t0, 0x0004(s0)             # 00000004
    swc1    $f4, 0x00F8(s0)            # 000000F8
    lw      t1, 0x003C($sp)
    lh      v0, 0x00A4(t1)             # 000000A4
    addiu   $at, $zero, 0x002A         # $at = 0000002A
lbl_80AE6954:
    bne     v0, $at, lbl_80AE6964
    nop
    lhu     t2, -0x4B50(t2)            # 8011B4B0
    sh      t2, 0x0320(s0)             # 00000320
lbl_80AE6964:
    jal     func_80AE5FDC
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x003C($sp)
    addiu   a2, $zero, 0x000F          # a2 = 0000000F
    andi    a1, a1, 0x0780             # a1 = 00000000
    sra     a1, a1,  7
    sll     a1, a1, 16
    jal     func_80078F80
    sra     a1, a1, 16
    lh      t3, 0x001C(s0)             # 0000001C
    sw      v0, 0x0200(s0)             # 00000200
    andi    t4, t3, 0x007F             # t4 = 00000000
    sltiu   $at, t4, 0x0015
    beq     $at, $zero, lbl_80AE6A38
    sll     t4, t4,  2
    lui     $at, %hi(var_80AE8294)     # $at = 80AF0000
    addu    $at, $at, t4
    lw      t4, %lo(var_80AE8294)($at)
    jr      t4
    nop
var_80AE69B8:
    lw      t5, 0x0200(s0)             # 00000200
    lui     t6, %hi(func_80AE6B10)     # t6 = 80AE0000
    lui     $at, 0x4040                # $at = 40400000
    beq     t5, $zero, lbl_80AE69D8
    addiu   t6, t6, %lo(func_80AE6B10) # t6 = 80AE6B10
    mtc1    $at, $f6                   # $f6 = 3.00
    nop
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80AE69D8:
    b       lbl_80AE6A40
    sw      t6, 0x0180(s0)             # 00000180
var_80AE69E0:
    lui     t7, %hi(func_80AE6C24)     # t7 = 80AE0000
    addiu   t7, t7, %lo(func_80AE6C24) # t7 = 80AE6C24
    sb      $zero, 0x0185(s0)          # 00000185
    b       lbl_80AE6A40
    sw      t7, 0x0180(s0)             # 00000180
var_80AE69F4:
    lw      t8, 0x003C($sp)
    addiu   $at, $zero, 0x0020         # $at = 00000020
    lui     t0, %hi(func_80AE6A54)     # t0 = 80AE0000
    lh      t9, 0x00A4(t8)             # 000000A4
    addiu   t0, t0, %lo(func_80AE6A54) # t0 = 80AE6A54
    bne     t9, $at, lbl_80AE6A18
    nop
    b       lbl_80AE6A40
    sw      t0, 0x0180(s0)             # 00000180
lbl_80AE6A18:
    lui     t1, %hi(func_80AE6BDC)     # t1 = 80AE0000
    addiu   t1, t1, %lo(func_80AE6BDC) # t1 = 80AE6BDC
    b       lbl_80AE6A40
    sw      t1, 0x0180(s0)             # 00000180
var_80AE6A28:
    lui     t2, %hi(func_80AE6C14)     # t2 = 80AE0000
    addiu   t2, t2, %lo(func_80AE6C14) # t2 = 80AE6C14
    b       lbl_80AE6A40
    sw      t2, 0x0180(s0)             # 00000180
lbl_80AE6A38:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AE6A40:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AE6A54:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x01D8(a3)             # 000001D8
    lui     t9, 0x8012                 # t9 = 80120000
    beq     t6, $zero, lbl_80AE6AA0
    nop
    lw      t8, 0x0144(a3)             # 00000144
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x0BFC             # t7 = 06000BFC
    beq     t7, t8, lbl_80AE6B00
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80AE7910)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE7910)  # a1 = 80AE7910
    jal     func_80027C98
    addiu   a2, $zero, 0x001A          # a2 = 0000001A
    b       lbl_80AE6B04
    lw      $ra, 0x0014($sp)
lbl_80AE6AA0:
    lhu     t9, -0x4630(t9)            # FFFFB9D0
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80AE6AE0
    lw      t4, 0x0144(a3)             # 00000144
    lw      t2, 0x0144(a3)             # 00000144
    lui     t1, 0x0600                 # t1 = 06000000
    addiu   t1, t1, 0x0FE4             # t1 = 06000FE4
    beq     t1, t2, lbl_80AE6B00
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80AE7910)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE7910)  # a1 = 80AE7910
    jal     func_80027C98
    addiu   a2, $zero, 0x0019          # a2 = 00000019
    b       lbl_80AE6B04
    lw      $ra, 0x0014($sp)
    lw      t4, 0x0144(a3)             # 00000144
lbl_80AE6AE0:
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x12E8             # t3 = 060012E8
    beq     t3, t4, lbl_80AE6B00
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80AE7910)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE7910)  # a1 = 80AE7910
    jal     func_80027C98
    addiu   a2, $zero, 0x0018          # a2 = 00000018
lbl_80AE6B00:
    lw      $ra, 0x0014($sp)
lbl_80AE6B04:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AE6B10:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0200(s0)             # 00000200
    lb      a2, 0x0204(s0)             # 00000204
    jal     func_80078FC4
    addiu   a3, $sp, 0x002E            # a3 = FFFFFFFE
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x002E($sp)
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508
    swc1    $f0, 0x0028($sp)
    lwl     t8, 0x0030(s0)             # 00000030
    lwc1    $f2, 0x0028($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwr     t8, 0x0033(s0)             # 00000033
    lui     $at, 0x447A                # $at = 447A0000
    c.lt.s  $f4, $f2
    swl     t8, 0x00B4(s0)             # 000000B4
    swr     t8, 0x00B7(s0)             # 000000B7
    lhu     t8, 0x0034(s0)             # 00000034
    bc1f    lbl_80AE6BC8
    sh      t8, 0x00B8(s0)             # 000000B8
    mtc1    $at, $f6                   # $f6 = 1000.00
    nop
    c.lt.s  $f2, $f6
    nop
    bc1fl   lbl_80AE6BCC
    lw      $ra, 0x0024($sp)
    lb      t9, 0x0204(s0)             # 00000204
    lw      t2, 0x0200(s0)             # 00000200
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sb      t0, 0x0204(s0)             # 00000204
    lbu     t3, 0x0000(t2)             # 00000000
    lb      t1, 0x0204(s0)             # 00000204
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    slt     $at, t4, t1
    beql    $at, $zero, lbl_80AE6BCC
    lw      $ra, 0x0024($sp)
    sb      $zero, 0x0204(s0)          # 00000204
lbl_80AE6BC8:
    lw      $ra, 0x0024($sp)
lbl_80AE6BCC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AE6BDC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      a0, 0x001C($sp)
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    addiu   a1, t6, 0x020C             # a1 = 0000020C
    jal     func_80027D30
    addiu   a2, t6, 0x022C             # a2 = 0000022C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AE6C14:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AE6C24:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80AE6C8C
    lw      a0, 0x0024($sp)
    lw      t6, 0x0200(s0)             # 00000200
    lui     a1, %hi(var_80AE7910)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE7910)  # a1 = 80AE7910
    beq     t6, $zero, lbl_80AE6C88
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, %hi(var_80AE82E8)     # $at = 80AF0000
    lwc1    $f8, %lo(var_80AE82E8)($at)
    lui     t7, %hi(func_80AE6CB0)     # t7 = 80AE0000
    addiu   t7, t7, %lo(func_80AE6CB0) # t7 = 80AE6CB0
    sw      t7, 0x0180(s0)             # 00000180
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_80AE6C88:
    lw      a0, 0x0024($sp)
lbl_80AE6C8C:
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    addiu   a2, s0, 0x022C             # a2 = 0000022C
    jal     func_80027D30
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AE6CB0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lw      v0, 0x0144(s0)             # 00000144
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x2160             # t6 = 06002160
    bne     t6, v0, lbl_80AE6CF8
    nop
    lh      t7, 0x01D8(s0)             # 000001D8
    lui     a1, %hi(var_80AE7910)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE7910)  # a1 = 80AE7910
    beq     t7, $zero, lbl_80AE6CF8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lw      v0, 0x0144(s0)             # 00000144
lbl_80AE6CF8:
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x265C             # t8 = 0600265C
    bne     t8, v0, lbl_80AE6D24
    nop
    lh      t9, 0x01D8(s0)             # 000001D8
    lui     a1, %hi(var_80AE7910)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE7910)  # a1 = 80AE7910
    bne     t9, $zero, lbl_80AE6D24
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0007          # a2 = 00000007
lbl_80AE6D24:
    lui     $at, %hi(var_80AE82EC)     # $at = 80AF0000
    lwc1    $f4, %lo(var_80AE82EC)($at)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0200(s0)             # 00000200
    lb      a2, 0x0204(s0)             # 00000204
    addiu   a3, $sp, 0x0036            # a3 = FFFFFFFE
    jal     func_80078FC4
    swc1    $f4, 0x0068(s0)            # 00000068
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0010($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x0036($sp)
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508
    swc1    $f0, 0x0030($sp)
    lwl     t2, 0x0030(s0)             # 00000030
    lwc1    $f2, 0x0030($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwr     t2, 0x0033(s0)             # 00000033
    lui     $at, 0x447A                # $at = 447A0000
    c.le.s  $f2, $f6
    swl     t2, 0x00B4(s0)             # 000000B4
    swr     t2, 0x00B7(s0)             # 000000B7
    lhu     t2, 0x0034(s0)             # 00000034
    bc1t    lbl_80AE6E18
    sh      t2, 0x00B8(s0)             # 000000B8
    mtc1    $at, $f8                   # $f8 = 1000.00
    nop
    c.le.s  $f8, $f2
    nop
    bc1tl   lbl_80AE6E1C
    lw      $ra, 0x0024($sp)
    lbu     t3, 0x0185(s0)             # 00000185
    bnel    t3, $zero, lbl_80AE6DF8
    lb      t2, 0x0204(s0)             # 00000204
    lb      t4, 0x0204(s0)             # 00000204
    lw      v0, 0x0200(s0)             # 00000200
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sb      t5, 0x0204(s0)             # 00000204
    lbu     t7, 0x0000(v0)             # 00000000
    lb      t6, 0x0204(s0)             # 00000204
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    slt     $at, t8, t6
    beql    $at, $zero, lbl_80AE6E1C
    lw      $ra, 0x0024($sp)
    sb      t9, 0x0185(s0)             # 00000185
    lbu     t0, 0x0000(v0)             # 00000000
    addiu   t1, t0, 0xFFFE             # t1 = FFFFFFFE
    b       lbl_80AE6E18
    sb      t1, 0x0204(s0)             # 00000204
    lb      t2, 0x0204(s0)             # 00000204
lbl_80AE6DF8:
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sb      t3, 0x0204(s0)             # 00000204
    lb      t4, 0x0204(s0)             # 00000204
    bgezl   t4, lbl_80AE6E1C
    lw      $ra, 0x0024($sp)
    sb      $zero, 0x0185(s0)          # 00000185
    sb      t5, 0x0204(s0)             # 00000204
lbl_80AE6E18:
    lw      $ra, 0x0024($sp)
lbl_80AE6E1C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AE6E2C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BB0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE6E5C
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80AE6E9C)     # t6 = 80AE0000
    addiu   t6, t6, %lo(func_80AE6E9C) # t6 = 80AE6E9C
    b       lbl_80AE6E8C
    sw      t6, 0x0180(a0)             # 00000180
lbl_80AE6E5C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lwc1    $f0, 0x0094(a0)            # 00000094
    lwc1    $f4, 0x0090(a0)            # 00000090
    lw      a2, 0x0250(a0)             # 00000250
    abs.s   $f0, $f0
    add.s   $f6, $f4, $f2
    lw      a1, 0x0024($sp)
    add.s   $f8, $f0, $f2
    mfc1    a3, $f6
    jal     func_80022BD4
    swc1    $f8, 0x0010($sp)
lbl_80AE6E8C:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AE6E9C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80AE6F40
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80AE6F3C
    lw      t6, 0x0018($sp)
    lw      v0, 0x0250(t6)             # 00000250
    addiu   $at, $zero, 0x003E         # $at = 0000003E
    beq     v0, $at, lbl_80AE6EF4
    addiu   $at, $zero, 0x004D         # $at = 0000004D
    beq     v0, $at, lbl_80AE6F14
    nop
    b       lbl_80AE6F30
    lw      t0, 0x0018($sp)
lbl_80AE6EF4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x0F2A(v0)             # 8011B4FA
    sh      $zero, 0x13C4(v0)          # 8011B994
    sb      $zero, 0x141C(v0)          # 8011B9EC
    ori     t8, t7, 0x0002             # t8 = 00000002
    b       lbl_80AE6F2C
    sh      t8, 0x0F2A(v0)             # 8011B4FA
lbl_80AE6F14:
    jal     func_800721CC
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sh      $zero, 0x13C4(v0)          # 8011B994
    sb      $zero, 0x141C(v0)          # 8011B9EC
lbl_80AE6F2C:
    lw      t0, 0x0018($sp)
lbl_80AE6F30:
    lui     t9, %hi(func_80AE6BDC)     # t9 = 80AE0000
    addiu   t9, t9, %lo(func_80AE6BDC) # t9 = 80AE6BDC
    sw      t9, 0x0180(t0)             # 00000180
lbl_80AE6F3C:
    lw      $ra, 0x0014($sp)
lbl_80AE6F40:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AE6F4C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lw      v0, 0x0180(s0)             # 00000180
    lui     t6, %hi(func_80AE6788)     # t6 = 80AE0000
    addiu   t6, t6, %lo(func_80AE6788) # t6 = 80AE6788
    beql    t6, v0, lbl_80AE6FF8
    or      a0, s0, $zero              # a0 = 00000000
    lb      t7, 0x0189(s0)             # 00000189
    lui     t0, 0x0001                 # t0 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sll     t8, t7,  4
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, s1, t8
    addu    t0, t0, t9
    lw      t0, 0x17B4(t0)             # 000117B4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addu    t1, t0, $at
    lui     $at, 0x8012                # $at = 80120000
    jal     func_8008C9C0
    sw      t1, 0x0C50($at)            # 80120C50
    jal     func_80AE5EE4
    or      a0, s0, $zero              # a0 = 00000000
    lh      t2, 0x01D8(s0)             # 000001D8
    bnel    t2, $zero, lbl_80AE6FD0
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80AE6FD0:
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    sw      t3, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      v0, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AE6FF8:
    jalr    $ra, v0
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE62C0
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE6074
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80AE702C:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0058($sp)
    sw      a2, 0x0060($sp)
    sw      a3, 0x0064($sp)
    addiu   t2, $zero, 0x000F          # t2 = 0000000F
    lw      t6, 0x0058($sp)
    addiu   t0, $zero, 0x0044          # t0 = 00000044
    bne     s1, t2, lbl_80AE71A0
    lw      a3, 0x0000(t6)             # 00000000
    lui     t1, 0x0001                 # t1 = 00010000
    lui     t3, 0x8000                 # t3 = 80000000
    lw      s0, 0x006C($sp)
    lw      v1, 0x02C0(a3)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0018             # t8 = DB060018
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a3)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lb      t4, 0x0186(s0)             # 00000186
    lw      t9, 0x0058($sp)
    multu   t4, t0
    mflo    t5
    addu    t6, t9, t5
    addu    t7, t6, t1
    lw      t8, 0x17B4(t7)             # 000017BC
    sw      t8, 0x0004(v1)             # 00000004
    lb      t9, 0x0186(s0)             # 00000186
    lw      t4, 0x0058($sp)
    lui     $at, 0x8012                # $at = 80120000
    multu   t9, t0
    lui     a1, %hi(var_80AE7B98)      # a1 = 80AE0000
    mflo    t5
    addu    t6, t4, t5
    addu    t7, t6, t1
    lw      t8, 0x17B4(t7)             # 000017BC
    addu    t9, t8, t3
    sw      t9, 0x0C50($at)            # 80120C50
    lh      t4, 0x001C(s0)             # 0000001C
    lui     t8, %hi(var_80AE7810)      # t8 = 80AE0000
    addiu   t8, t8, %lo(var_80AE7810)  # t8 = 80AE7810
    andi    t5, t4, 0x007F             # t5 = 00000000
    sll     t6, t5,  2
    subu    t6, t6, t5
    sll     t6, t6,  2
    addu    a1, a1, t6
    lbu     a1, %lo(var_80AE7B98)(a1)
    lw      t4, 0x0060($sp)
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t7, a1,  2
    subu    t7, t7, a1
    sll     t7, t7,  2
    addu    a0, t7, t8
    lw      t9, 0x0004(a0)             # 00000004
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t9, 0x0000(t4)             # 00000000
    lw      a2, 0x0008(a0)             # 00000008
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    beql    a2, $zero, lbl_80AE717C
    lb      t6, 0x0188(s0)             # 00000188
    lh      t5, 0x0208(s0)             # 00000208
    sll     t6, t5,  2
    addu    t7, a2, t6
    lw      v0, 0x0000(t7)             # 00000008
    lw      v1, 0x02C0(a3)             # 000002C0
    sll     t4, v0,  4
    srl     t5, t4, 28
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a3)             # 000002C0
    sll     t6, t5,  2
    lui     t7, 0x8012                 # t7 = 80120000
    addu    t7, t7, t6
    sw      t9, 0x0000(v1)             # 00000000
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t8, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t4, t9, $at
    sw      t4, 0x0004(v1)             # 00000004
    lb      t6, 0x0188(s0)             # 00000188
lbl_80AE717C:
    lw      t5, 0x0058($sp)
    lui     $at, 0x8012                # $at = 80120000
    multu   t6, t0
    mflo    t7
    addu    t8, t5, t7
    addu    t9, t8, t1
    lw      t4, 0x17B4(t9)             # DB0617DC
    addu    t6, t4, t3
    sw      t6, 0x0C50($at)            # 80120C50
lbl_80AE71A0:
    bne     s1, t2, lbl_80AE7254
    lw      s0, 0x006C($sp)
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0x44AF                # $at = 44AF0000
    mtc1    $at, $f12                  # $f12 = 1400.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwl     t8, 0x01E0(s0)             # 000001E0
    lwr     t8, 0x01E3(s0)             # 000001E3
    addiu   t5, $sp, 0x0048            # t5 = FFFFFFF0
    lui     $at, 0x4700                # $at = 47000000
    sw      t8, 0x0000(t5)             # FFFFFFF0
    lhu     t8, 0x01E4(s0)             # 000001E4
    mtc1    $at, $f8                   # $f8 = 32768.00
    lui     $at, %hi(var_80AE82F0)     # $at = 80AF0000
    sh      t8, 0x0004(t5)             # FFFFFFF4
    lh      t9, 0x004A($sp)
    lwc1    $f16, %lo(var_80AE82F0)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AA9E0
    nop
    lh      t4, 0x0048($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t4, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80AE82F4)     # $at = 80AF0000
    lwc1    $f10, %lo(var_80AE82F4)($at)
    cvt.s.w $f4, $f18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AAD4C
    nop
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0xC4AF                # $at = C4AF0000
    mtc1    $at, $f12                  # $f12 = -1400.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80AE7254:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    s1, $at, lbl_80AE72E4
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lwl     t7, 0x01E6(s0)             # 000001E6
    lwr     t7, 0x01E9(s0)             # 000001E9
    addiu   t6, $sp, 0x0048            # t6 = FFFFFFF0
    lui     $at, 0x4700                # $at = 47000000
    sw      t7, 0x0000(t6)             # FFFFFFF0
    lhu     t7, 0x01EA(s0)             # 000001EA
    mtc1    $at, $f4                   # $f4 = 32768.00
    lui     $at, %hi(var_80AE82F8)     # $at = 80AF0000
    sh      t7, 0x0004(t6)             # FFFFFFF4
    lh      t8, 0x004A($sp)
    lwc1    $f8, %lo(var_80AE82F8)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    subu    t9, $zero, t8
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    div.s   $f6, $f18, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AA9E0
    nop
    lh      t4, 0x0048($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t4, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80AE82FC)     # $at = 80AF0000
    lwc1    $f6, %lo(var_80AE82FC)($at)
    cvt.s.w $f16, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AAD4C
    nop
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_80AE72E4:
    beq     s1, $at, lbl_80AE72FC
    sll     t6, s1,  1
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     s1, $at, lbl_80AE72FC
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     s1, $at, lbl_80AE7380
lbl_80AE72FC:
    addu    v1, s0, t6
    lh      a0, 0x020C(v1)             # 0000020C
    jal     func_800636C4              # sins?
    sw      v1, 0x0028($sp)
    lw      v0, 0x0068($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lh      t5, 0x0002(v0)             # 00000002
    lw      v1, 0x0028($sp)
    mul.s   $f18, $f0, $f16
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f4, $f10, $f18
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    sh      t8, 0x0002(v0)             # 00000002
    jal     func_80063684              # coss?
    lh      a0, 0x022C(v1)             # 0000022C
    lw      v0, 0x0068($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lh      t9, 0x0004(v0)             # 00000004
    mul.s   $f18, $f0, $f10
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t6, $f6
    nop
    sh      t6, 0x0004(v0)             # 00000004
lbl_80AE7380:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_80AE7398:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    lui     t7, %hi(var_80AE80C0)      # t7 = 80AF0000
    addiu   t7, t7, %lo(var_80AE80C0)  # t7 = 80AE80C0
    lw      t9, 0x0000(t7)             # 80AE80C0
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 80AE80C4
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 80AE80C8
    addiu   $at, $zero, 0x0007         # $at = 00000007
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
    bne     a1, $at, lbl_80AE7440
    lw      a2, 0x0000(a0)             # 00000000
    addiu   a3, $zero, 0x0044          # a3 = 00000044
    lui     t0, 0x0001                 # t0 = 00010000
    lw      t1, 0x0050($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0018             # t3 = DB060018
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(a2)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lb      t4, 0x0187(t1)             # 00000187
    multu   t4, a3
    mflo    t5
    addu    t6, a0, t5
    addu    t7, t6, t0
    lw      t8, 0x17B4(t7)             # 80AE9874
    sw      t8, 0x0004(v1)             # 00000004
    lb      t9, 0x0187(t1)             # 00000187
    lui     $at, 0x8000                # $at = 80000000
    multu   t9, a3
    mflo    t2
    addu    t3, a0, t2
    addu    t4, t3, t0
    lw      t5, 0x17B4(t4)             # 000017B4
    addu    t6, t5, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t6, 0x0C50($at)            # 80120C50
lbl_80AE7440:
    lw      t1, 0x0050($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFEC
    lh      t7, 0x001C(t1)             # 0000001C
    andi    t8, t7, 0x007F             # t8 = 00000040
    bne     t8, $at, lbl_80AE7480
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a1, $at, lbl_80AE7480
    lui     t2, 0xDE00                 # t2 = DE000000
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x5BC8             # t3 = 06005BC8
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a2)             # 000002C0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
lbl_80AE7480:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    a1, $at, lbl_80AE7498
    lw      $ra, 0x0014($sp)
    jal     func_800AB958
    addiu   a1, t1, 0x0038             # a1 = 00000038
    lw      $ra, 0x0014($sp)
lbl_80AE7498:
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80AE74A4:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xFB00                 # t6 = FB000000
    sll     t8, a1, 24
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    andi    t9, a2, 0x00FF             # t9 = 00000000
    lbu     t6, 0x0013($sp)
    sll     t0, t9, 16
    andi    t2, a3, 0x00FF             # t2 = 00000000
    sll     t3, t2,  8
    or      t1, t8, t0                 # t1 = 00000000
    or      t4, t1, t3                 # t4 = 00000000
    or      t7, t4, t6                 # t7 = FB000000
    sw      t7, 0x0004(v1)             # FFFFFFF4
    lui     t9, 0xDF00                 # t9 = DF000000
    sw      t9, 0x0008(v1)             # FFFFFFF8
    sw      $zero, 0x000C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra
    nop


func_80AE7510:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x005C($sp)
    lw      t8, 0x0180(s0)             # 00000180
    lw      t6, 0x005C($sp)
    lui     t7, %hi(func_80AE6788)     # t7 = 80AE0000
    addiu   t7, t7, %lo(func_80AE6788) # t7 = 80AE6788
    beq     t7, t8, lbl_80AE7740
    lw      a2, 0x0000(t6)             # 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8007E298
    sw      a2, 0x0044($sp)
    lwc1    $f12, 0x0254(s0)           # 00000254
    lwc1    $f14, 0x0258(s0)           # 00000258
    lw      a2, 0x025C(s0)             # 0000025C
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t3, 0x001C(s0)             # 0000001C
    addiu   v1, $zero, 0x000C          # v1 = 0000000C
    lui     v0, %hi(var_80AE7B98)      # v0 = 80AE0000
    andi    t4, t3, 0x007F             # t4 = 00000000
    multu   t4, v1
    addiu   v0, v0, %lo(var_80AE7B98)  # v0 = 80AE7B98
    lw      t2, 0x0044($sp)
    addiu   t9, $sp, 0x0050            # t9 = FFFFFFF8
    addiu   t3, $sp, 0x004C            # t3 = FFFFFFF4
    mflo    t5
    addu    t6, v0, t5
    lwl     t8, 0x0002(t6)             # 00000002
    lwr     t8, 0x0005(t6)             # 00000005
    sw      t8, 0x0000(t9)             # FFFFFFF8
    lh      t4, 0x001C(s0)             # 0000001C
    andi    t5, t4, 0x007F             # t5 = 00000000
    multu   t5, v1
    mflo    t9
    addu    t6, v0, t9
    lwl     t8, 0x0007(t6)             # 00000007
    lwr     t8, 0x000A(t6)             # 0000000A
    sw      t8, 0x0000(t3)             # FFFFFFF4
    lh      t4, 0x001C(s0)             # 0000001C
    andi    t5, t4, 0x007F             # t5 = 00000000
    addiu   t9, t5, 0xFFFE             # t9 = FFFFFFFE
    sltiu   $at, t9, 0x0013
    beq     $at, $zero, lbl_80AE7710
    sll     t9, t9,  2
    lui     $at, %hi(var_80AE8300)     # $at = 80AF0000
    addu    $at, $at, t9
    lw      t9, %lo(var_80AE8300)($at)
    jr      t9
    nop
var_80AE75E0:
    lw      v1, 0x02C0(t2)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t3, v1, 0x0008             # t3 = 00000014
    sw      t3, 0x02C0(t2)             # 000002C0
    sw      t6, 0x0000(v1)             # 0000000C
    lw      t7, 0x005C($sp)
    lbu     t8, 0x0053($sp)
    lbu     a3, 0x0052($sp)
    lw      a0, 0x0000(t7)             # 00000000
    sw      t2, 0x0044($sp)
    lbu     a2, 0x0051($sp)
    lbu     a1, 0x0050($sp)
    sw      v1, 0x003C($sp)
    jal     func_80AE74A4
    sw      t8, 0x0010($sp)
    lw      t0, 0x003C($sp)
    lw      t2, 0x0044($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(t2)             # 000002C0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0024             # t5 = DB060024
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(t2)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t9, 0x005C($sp)
    lbu     t3, 0x004F($sp)
    lbu     a3, 0x004E($sp)
    lw      a0, 0x0000(t9)             # 00000000
    lbu     a2, 0x004D($sp)
    lbu     a1, 0x004C($sp)
    sw      v1, 0x0038($sp)
    jal     func_80AE74A4
    sw      t3, 0x0010($sp)
    lw      t1, 0x0038($sp)
    lw      t2, 0x0044($sp)
    addiu   a0, $zero, 0x0008          # a0 = 00000008
    sw      v0, 0x0004(t1)             # 00000004
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    andi    v1, v1, 0x007F             # v1 = 00000000
    beq     a0, v1, lbl_80AE7694
    nop
    bnel    v1, $at, lbl_80AE7714
    lw      a1, 0x0140(s0)             # 00000140
lbl_80AE7694:
    bne     a0, v1, lbl_80AE76AC
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    lw      t6, 0x0050($sp)
    sw      t6, 0x0048($sp)
    lh      v1, 0x001C(s0)             # 0000001C
    andi    v1, v1, 0x007F             # v1 = 00000000
lbl_80AE76AC:
    bne     v1, $at, lbl_80AE76CC
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sb      t4, 0x0048($sp)
    sb      t8, 0x0049($sp)
    sb      t7, 0x004A($sp)
    sb      $zero, 0x004B($sp)
lbl_80AE76CC:
    lw      v1, 0x02C0(t2)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t2)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t3, 0x005C($sp)
    lbu     t6, 0x004B($sp)
    lbu     a3, 0x004A($sp)
    lw      a0, 0x0000(t3)             # 00000000
    lbu     a2, 0x0049($sp)
    lbu     a1, 0x0048($sp)
    sw      v1, 0x0034($sp)
    jal     func_80AE74A4
    sw      t6, 0x0010($sp)
    lw      t0, 0x0034($sp)
    sw      v0, 0x0004(t0)             # 00000004
lbl_80AE7710:
    lw      a1, 0x0140(s0)             # 00000140
lbl_80AE7714:
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t7, %hi(func_80AE702C)     # t7 = 80AE0000
    lui     t8, %hi(func_80AE7398)     # t8 = 80AE0000
    addiu   t8, t8, %lo(func_80AE7398) # t8 = 80AE7398
    addiu   t7, t7, %lo(func_80AE702C) # t7 = 80AE702C
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x005C($sp)
lbl_80AE7740:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80AE7760: .word 0x016E0400, 0x00000019, 0x00010000, 0x00000324
.word func_80AE66CC
.word func_80AE675C
.word func_80AE6F4C
.word func_80AE7510
var_80AE7780: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0014002E, 0x00000000, 0x00000000
var_80AE77AC: .word 0x00000000, 0x00000000, 0xFF000000
var_80AE77B8: .word 0x060005C8, 0x06000DC8, 0x060015C8, 0x00000000
var_80AE77C8: .word 0x0600057C, 0x0600067C, 0x0600077C, 0x00000000
var_80AE77D8: .word 0x060004C8, 0x00000000
var_80AE77E0: .word 0x060005FC, 0x060009FC, 0x06000DFC, 0x00000000
var_80AE77F0: .word 0x060005FC, 0x060006FC, 0x060007FC, 0x00000000
var_80AE7800: .word 0x060007C8, 0x06000FC8, 0x060017C8, 0x00000000
var_80AE7810: .word 0x01050000, 0x06003C88
var_80AE7818: .word var_80AE77B8
.word 0x01150000, 0x06003B78
.word var_80AE7800
.word 0x01110000, 0x060026F0
.word var_80AE77F0
.word \
0x01110000, 0x060052E0, 0x00000000, 0x01110000, \
0x06005528, 0x00000000, 0x01110000, 0x06005738, \
0x00000000, 0x01110000, 0x060059B0, 0x00000000, \
0x01070000, 0x060030F0
.word var_80AE77C8
.word \
0x01070000, 0x06005508, 0x00000000, 0x01070000, \
0x06005728, 0x00000000, 0x010D0000, 0x06002948
.word var_80AE77D8
.word \
0x01080000, 0x06001300, 0x00000000, 0x01080000, \
0x06002860, 0x00000000, 0x010C0000, 0x06002560
.word var_80AE77E0
.word \
0x010C0000, 0x06003F68, 0x00000000, 0x018C0000, \
0x06001300, 0x00000000
var_80AE78D0: .word 0x01050000
var_80AE78D4: .word \
0x060000F0, 0x01150000, 0x060000F0, 0x01110000, \
0x060000F0, 0x01070000, 0x060000F0, 0x010D0000, \
0x060000F0, 0x01080000, 0x060000F0, 0x010C0000, \
0x060000F0, 0x018C0000, 0x060021F8
var_80AE7910: .word \
0x0600092C, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06000228, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x06004CF4, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x060016EC, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x0600265C, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x060042AC, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x060028DC, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06002160, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1200000, \
0x0600265C, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1200000, 0x06004E90, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x06001E7C, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06000170, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x060000B4, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06003D84, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x060041F8, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x0600300C, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x060031B0, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x060031B0, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000, \
0x06002D0C, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06002DC0, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x06004408, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06001F18, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x06004F28, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x060033B4, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000, \
0x060012E8, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1000000, 0x06000FE4, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000, \
0x06000BFC, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1000000
var_80AE7B98: .byte 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
var_80AE7B9E: .byte 0x00, 0xFF, 0xFF, 0xFF, 0xFF
var_80AE7BA3: .byte \
0x00, 0x0F, 0x07, 0xFF, 0xFF, 0xFF, 0xFF, 0x07, 0xFF, 0xFF, 0xFF, 0xFF, 0x16, 0x07, 0x03, 0xFF, \
0xFF, 0xFF, 0xFF, 0x03, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x03, 0x02, 0xFF, 0xFF, 0xFF, 0x00, 0x02, \
0x37, 0x37, 0xFF, 0x00, 0x0F, 0x08, 0x03, 0x00, 0x00, 0x00, 0x00, 0x03, 0xFF, 0x00, 0x00, 0x00, \
0x0B, 0x04, 0x02, 0x32, 0x50, 0x00, 0x00, 0x02, 0x32, 0x50, 0x00, 0x00, 0x10, 0x0A, 0x04, 0xFF, \
0xFF, 0xFF, 0xFF, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0x0A, 0x0D, 0x06, 0x00, 0x32, 0xA0, 0x00, 0x06, \
0xFF, 0xFF, 0xFF, 0x00, 0x04, 0x0B, 0x05, 0xA0, 0xB4, 0xFF, 0x00, 0x05, 0xA0, 0xB4, 0xFF, 0x00, \
0x09, 0x02, 0x02, 0xDC, 0x00, 0x50, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0x00, 0x0D, 0x02, 0x02, 0x00, \
0x82, 0xDC, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0x00, 0x0E, 0x0C, 0x05, 0x46, 0xA0, 0xE6, 0x00, 0x05, \
0xFF, 0xFF, 0x64, 0x00, 0x14, 0x05, 0x02, 0x96, 0x3C, 0x5A, 0x00, 0x02, 0xFF, 0xF0, 0x96, 0x00, \
0x12, 0x09, 0x03, 0xC8, 0xB4, 0xFF, 0x00, 0x03, 0xC8, 0xB4, 0xFF, 0x00, 0x0C, 0x06, 0x02, 0x8C, \
0xFF, 0x6E, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0x00, 0x13, 0x0E, 0x06, 0x82, 0x46, 0x14, 0x00, 0x06, \
0x82, 0xB4, 0xFF, 0x00, 0x15, 0x02, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, \
0x05, 0x08, 0x03, 0x5A, 0x64, 0x14, 0xFF, 0x03, 0x64, 0x8C, 0x32, 0xFF, 0x0B, 0x01, 0x01, 0xFF, \
0xFF, 0xFF, 0xFF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x06, 0x0E, 0x06, 0xA0, 0x00, 0x64, 0x00, 0x06, \
0x46, 0x82, 0xD2, 0x00, 0x15, 0x09, 0x03, 0xA0, 0xE6, 0x00, 0x00, 0x03, 0x00, 0x96, 0x6E, 0x00, \
0x0C
var_80AE7C94: .word \
0x00000000, 0x00040018, 0x00460000, 0x00000008, \
0x001C003E, 0x00000000, 0x00040014, 0x003C0000, \
0x00000002, 0x0014003C, 0x00000000, 0xFFFE0014, \
0x003C0000, 0x00000008, 0x00180028, 0x00000000, \
0x000A001A, 0x00280000, 0x0000000C, 0x001A003A, \
0x00000000, 0x00020012, 0x00440000, 0x00000004, \
0x0014003C, 0x00000000, 0x00040014, 0x003C0000, \
0x00000006, 0x00140040, 0x00000000, 0x00000012, \
0x003C0000, 0x00000000, 0x0010003C, 0x00000000, \
0x00000010, 0x00400000, 0x00000008, 0x0014003A, \
0x00040000, 0x00000012, 0x003E0004, 0x00000000, \
0x0012003E, 0x00000000, 0x0008001C, 0x003E0000, \
0x00000000, 0x0010003C, 0x00000000, 0x00080014, \
0x003A0000
var_80AE7D68: .word \
0x06000000, 0x41A00000, 0x41200000, 0x06000000, \
0x41A00000, 0x41200000, 0x07000000, 0x42200000, \
0x41A00000, 0x06000000, 0x41A00000, 0x41200000, \
0x07000000, 0x42200000, 0x41A00000, 0x08000000, \
0x00000000, 0xC1A00000, 0x09000000, 0x41A00000, \
0x00000000, 0x09000000, 0x41A00000, 0x00000000, \
0x06000000, 0x41A00000, 0x41200000, 0x06000000, \
0x41A00000, 0x41200000, 0x06000000, 0x41A00000, \
0x41200000, 0x06000000, 0x41A00000, 0x41200000, \
0x00000000, 0x00000000, 0x00000000, 0x06000000, \
0x41A00000, 0x41200000, 0x06000000, 0x41A00000, \
0x41200000, 0x0A000000, 0x41A00000, 0x00000000, \
0x06000000, 0x41A00000, 0x41200000, 0x06000000, \
0x41A00000, 0x41200000, 0x06000000, 0x41A00000, \
0x41200000, 0x06000000, 0x41A00000, 0x41200000, \
0x0A000000, 0x41A00000, 0x00000000
var_80AE7E64: .word \
0x42100000, 0x00000000, 0x00000000, 0x44160000, \
0x3C23D70A, 0x06000000, 0x41F00000, 0x42200000, \
0xC2C80000, 0x00000000, 0x43C80000, 0x3C23D70A, \
0x06000000, 0x41F00000, 0x41B00000, 0x00000000, \
0x00000000, 0xC3480000, 0x3C23D70A, 0x06000000, \
0x41F00000, 0x41A00000, 0xC2C80000, 0x00000000, \
0x00000000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41B00000, 0x00000000, 0x00000000, 0x00000000, \
0x3C23D70A, 0x06000000, 0x41F00000, 0x41A80000, \
0x00000000, 0x00000000, 0x00000000, 0x3C23D70A, \
0x06000000, 0x41F00000, 0x41C80000, 0xC2C80000, \
0x00000000, 0x44160000, 0x3C23D70A, 0x06000000, \
0x41F00000, 0x41E00000, 0xC2C80000, 0x00000000, \
0x44480000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41880000, 0x00000000, 0x00000000, 0x442F0000, \
0x3C23D70A, 0x06000000, 0x41F00000, 0x41900000, \
0x00000000, 0x00000000, 0x42C80000, 0x3C23D70A, \
0x06000000, 0x41F00000, 0x41900000, 0x00000000, \
0x00000000, 0xC3480000, 0x3C23D70A, 0x06000000, \
0x41F00000, 0x41880000, 0x00000000, 0x00000000, \
0x442F0000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41A80000, 0x00000000, 0x00000000, 0xC3960000, \
0x3C23D70A, 0x06000000, 0x41F00000, 0x41A00000, \
0x00000000, 0x00000000, 0xC3480000, 0x3C23D70A, \
0x06000000, 0x41F00000, 0x41900000, 0xC3480000, \
0x00000000, 0xC3480000, 0x3C23D70A, 0x06000000, \
0x41F00000, 0x41D80000, 0xC2C80000, 0x00000000, \
0x44480000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41980000, 0x43C80000, 0x00000000, 0x00000000, \
0x3C23D70A, 0x04000000, 0x41F00000, 0x41980000, \
0x43C80000, 0x00000000, 0x00000000, 0x3C23D70A, \
0x06000000, 0x41F00000, 0x42200000, 0xC2C80000, \
0x00000000, 0x43C80000, 0x3C23D70A, 0x06000000, \
0x41F00000, 0x41880000, 0x00000000, 0x00000000, \
0x442F0000, 0x3C23D70A, 0x06000000, 0x41F00000, \
0x41A00000, 0x00000000, 0x00000000, 0xC3480000, \
0x3C23D70A, 0x06000000, 0x41F00000
var_80AE80B0: .word 0x001C0019, 0x001D0018
var_80AE80B8: .word 0x00960064, 0x00320019
var_80AE80C0: .word 0x43C80000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80AE80D0: .word var_80AE51E0
.word var_80AE52D4
.word var_80AE533C
.word var_80AE53F0
.word var_80AE543C
.word var_80AE5488
.word var_80AE5498
.word var_80AE54E4
.word var_80AE555C
.word var_80AE55C4
.word var_80AE5690
.word var_80AE575C
.word var_80AE57A8
.word var_80AE5810
.word var_80AE5818
.word var_80AE5820
.word var_80AE5828
.word var_80AE5830
.word var_80AE58DC
.word var_80AE5978
.word var_80AE5980
var_80AE8124: .word var_80AE5A10
.word var_80AE5A10
.word var_80AE5AF0
.word var_80AE5A18
.word var_80AE5A10
.word var_80AE5EAC
.word var_80AE5A10
.word var_80AE5A10
.word var_80AE5A10
.word var_80AE5A10
var_80AE814C: .word var_80AE5CC0
.word lbl_80AE5EA4
.word lbl_80AE5EA4
.word lbl_80AE5EA4
.word lbl_80AE5EA4
.word var_80AE5C0C
.word var_80AE5C0C
.word var_80AE5C0C
.word var_80AE5C0C
var_80AE8170: .word var_80AE5C58
.word lbl_80AE5EA4
.word var_80AE5D80
.word lbl_80AE5EA4
.word lbl_80AE5EA4
.word var_80AE5C8C
.word lbl_80AE5EA4
.word var_80AE5D30
.word lbl_80AE5EA4
.word var_80AE5D64
.word lbl_80AE5EA4
.word var_80AE5CF8
.word lbl_80AE5EA4
.word var_80AE5CDC
.word lbl_80AE5EA4
.word lbl_80AE5EA4
.word lbl_80AE5EA4
.word var_80AE5D14
var_80AE81B8: .word var_80AE5DB4
.word lbl_80AE5EA4
.word var_80AE5DD0
.word lbl_80AE5EA4
.word var_80AE5DEC
.word lbl_80AE5EA4
.word var_80AE5E08
.word lbl_80AE5EA4
.word lbl_80AE5EA4
.word var_80AE5E24
var_80AE81E0: .word var_80AE6330
.word lbl_80AE634C
.word var_80AE6328
.word var_80AE6304
.word lbl_80AE634C
.word lbl_80AE634C
.word lbl_80AE634C
.word var_80AE6304
.word lbl_80AE634C
.word var_80AE6304
.word var_80AE6304
.word lbl_80AE634C
.word var_80AE6320
.word lbl_80AE634C
.word lbl_80AE634C
.word lbl_80AE634C
.word lbl_80AE634C
.word var_80AE6328
.word var_80AE6330
var_80AE822C: .word func_80AE6624
.word func_80AE6624
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word func_80AE6590
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word lbl_80AE668C
.word func_80AE6554
.word lbl_80AE668C
.word func_80AE64F8
var_80AE8294: .word var_80AE69F4
.word lbl_80AE6A18
.word lbl_80AE6A18
.word var_80AE69B8
.word lbl_80AE6A18
.word var_80AE6A28
.word lbl_80AE6A18
.word var_80AE69E0
.word lbl_80AE6A18
.word var_80AE6A28
.word var_80AE6A28
.word var_80AE6A28
.word var_80AE6A28
.word lbl_80AE6A18
.word lbl_80AE6A18
.word lbl_80AE6A18
.word lbl_80AE6A18
.word lbl_80AE6A18
.word lbl_80AE6A18
.word lbl_80AE6A18
.word lbl_80AE6A18
var_80AE82E8: .word 0x3ECCCCCD
var_80AE82EC: .word 0x3ECCCCCD
var_80AE82F0: .word 0x40490FDB
var_80AE82F4: .word 0x40490FDB
var_80AE82F8: .word 0x40490FDB
var_80AE82FC: .word 0x40490FDB
var_80AE8300: .word var_80AE75E0
.word var_80AE75E0
.word var_80AE75E0
.word var_80AE75E0
.word lbl_80AE7710
.word var_80AE75E0
.word var_80AE75E0
.word var_80AE75E0
.word var_80AE75E0
.word var_80AE75E0
.word var_80AE75E0
.word var_80AE75E0
.word var_80AE75E0
.word var_80AE75E0
.word var_80AE75E0
.word var_80AE75E0
.word lbl_80AE7710
.word var_80AE75E0
.word var_80AE75E0
.word 0x00000000

