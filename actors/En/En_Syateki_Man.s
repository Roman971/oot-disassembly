.section .text
func_809A0B30:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t6, 0x001F(s0)             # 0000001F
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t7, s0, 0x0180             # t7 = 00000180
    addiu   t8, s0, 0x01B6             # t8 = 000001B6
    addiu   t9, $zero, 0x0009          # t9 = 00000009
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    addiu   a3, a3, 0x0338             # a3 = 06000338
    addiu   a2, a2, 0x9B38             # a2 = 06009B38
    lw      a0, 0x0034($sp)
    jal     func_8008C788
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t0, -0x5A2C(t0)            # 8011A5D4
    lui     t3, %hi(func_809A1554)     # t3 = 809A0000
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    beq     t0, $zero, lbl_809A0BB0
    addiu   t3, t3, %lo(func_809A1554) # t3 = 809A1554
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sh      t1, 0x01F4(s0)             # 000001F4
lbl_809A0BB0:
    lui     t5, %hi(func_809A0BF4)     # t5 = 809A0000
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    addiu   t5, t5, %lo(func_809A0BF4) # t5 = 809A0BF4
    sh      t2, 0x01FE(s0)             # 000001FE
    sh      $zero, 0x01FC(s0)          # 000001FC
    sw      t3, 0x0214(s0)             # 00000214
    sh      t4, 0x00A8(s0)             # 000000A8
    sw      t5, 0x01EC(s0)             # 000001EC
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809A0BE4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_809A0BF4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0338             # a0 = 06000338
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0338             # a1 = 06000338
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lw      t1, 0x0028($sp)
    lui     t0, %hi(func_809A0C88)     # t0 = 809A0000
    addiu   t0, t0, %lo(func_809A0C88) # t0 = 809A0C88
    sw      t0, 0x01EC(t1)             # 000001EC
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809A0C88:
    sw      a1, 0x0004($sp)
    lh      t6, 0x0204(a0)             # 00000204
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    bnel    t6, $at, lbl_809A0CA8
    lh      v0, 0x0200(a0)             # 00000200
    sh      t7, 0x0200(a0)             # 00000200
    lh      v0, 0x0200(a0)             # 00000200
lbl_809A0CA8:
    lui     t8, %hi(var_809A17D0)      # t8 = 809A0000
    lui     t9, %hi(var_809A17D8)      # t9 = 809A0000
    sll     v0, v0,  1
    addu    t8, t8, v0
    lh      t8, %lo(var_809A17D0)(t8)
    addu    t9, t9, v0
    lui     t0, %hi(func_809A0CE0)     # t0 = 809A0000
    sh      t8, 0x010E(a0)             # 0000010E
    lh      t9, %lo(var_809A17D8)(t9)
    addiu   t0, t0, %lo(func_809A0CE0) # t0 = 809A0CE0
    sw      t0, 0x01EC(a0)             # 000001EC
    sh      t9, 0x0202(a0)             # 00000202
    jr      $ra
    nop


func_809A0CE0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0018($sp)
    jal     func_80022930
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_809A0D20
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_809A0D3C)     # t6 = 809A0000
    addiu   t6, t6, %lo(func_809A0D3C) # t6 = 809A0D3C
    beq     $zero, $zero, lbl_809A0D2C
    sw      t6, 0x01EC(a0)             # 000001EC
lbl_809A0D20:
    lw      a1, 0x001C($sp)
    jal     func_80022A68
    lui     a2, 0x42C8                 # a2 = 42C80000
lbl_809A0D2C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809A0D3C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sh      $zero, 0x0026($sp)
    lbu     t6, 0x020C(s0)             # 0000020C
    lh      v1, 0x0026($sp)
    lw      t8, 0x002C($sp)
    beq     t6, $zero, lbl_809A0D7C
    lui     $at, 0x0001                # $at = 00010000
    addiu   t7, $zero, 0xFFFE          # t7 = FFFFFFFE
    addu    $at, $at, t8
    sb      t7, 0x1E5C($at)            # 00011E5C
lbl_809A0D7C:
    lw      a0, 0x002C($sp)
    sh      v1, 0x0026($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lh      t9, 0x0202(s0)             # 00000202
    lh      v1, 0x0026($sp)
    lw      a0, 0x002C($sp)
    bnel    t9, v0, lbl_809A0ED4
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    sh      v1, 0x0026($sp)
    beq     v0, $zero, lbl_809A0ED0
    lh      v1, 0x0026($sp)
    lh      t0, 0x0200(s0)             # 00000200
    lw      t1, 0x002C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    bne     t0, $zero, lbl_809A0E7C
    lw      a0, 0x002C($sp)
    addu    v0, v0, t1
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t2, 0x8012                 # t2 = 80120000
    beq     v0, $zero, lbl_809A0DEC
    nop
    beq     v0, $at, lbl_809A0E4C
    lui     t7, %hi(var_809A17D6)      # t7 = 809A0000
    beq     $zero, $zero, lbl_809A0E68
    lhu     a1, 0x010E(s0)             # 0000010E
lbl_809A0DEC:
    lh      t2, -0x59FC(t2)            # 8011A604
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    slti    $at, t2, 0x0014
    bnel    $at, $zero, lbl_809A0E20
    sh      t4, 0x0200(s0)             # 00000200
    jal     func_800721CC
    addiu   a0, $zero, 0xFFEC          # a0 = FFFFFFEC
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sh      t3, 0x0200(s0)             # 00000200
    beq     $zero, $zero, lbl_809A0E20
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sh      t4, 0x0200(s0)             # 00000200
lbl_809A0E20:
    lh      v0, 0x0200(s0)             # 00000200
    lui     t5, %hi(var_809A17D0)      # t5 = 809A0000
    lui     t6, %hi(var_809A17D8)      # t6 = 809A0000
    sll     v0, v0,  1
    addu    t5, t5, v0
    lh      t5, %lo(var_809A17D0)(t5)
    addu    t6, t6, v0
    sh      t5, 0x010E(s0)             # 0000010E
    lh      t6, %lo(var_809A17D8)(t6)
    beq     $zero, $zero, lbl_809A0E64
    sh      t6, 0x0202(s0)             # 00000202
lbl_809A0E4C:
    lh      t7, %lo(var_809A17D6)(t7)
    lui     t8, %hi(var_809A17DE)      # t8 = 809A0000
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    sh      t7, 0x010E(s0)             # 0000010E
    lh      t8, %lo(var_809A17DE)(t8)
    sh      t8, 0x0202(s0)             # 00000202
lbl_809A0E64:
    lhu     a1, 0x010E(s0)             # 0000010E
lbl_809A0E68:
    sh      v1, 0x0026($sp)
    jal     func_800DCE80
    lw      a0, 0x002C($sp)
    beq     $zero, $zero, lbl_809A0E88
    lh      v1, 0x0026($sp)
lbl_809A0E7C:
    jal     func_800D6218
    sh      v1, 0x0026($sp)
    lh      v1, 0x0026($sp)
lbl_809A0E88:
    beq     v1, $zero, lbl_809A0EB0
    lui     t9, %hi(func_809A0C88)     # t9 = 809A0000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_809A0EBC
    lui     t0, %hi(func_809A0F8C)     # t0 = 809A0000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_809A0EC8
    lui     t1, %hi(func_809A0EE4)     # t1 = 809A0000
    beq     $zero, $zero, lbl_809A0ED4
    lw      $ra, 0x001C($sp)
lbl_809A0EB0:
    addiu   t9, t9, %lo(func_809A0C88) # t9 = 809A0C88
    beq     $zero, $zero, lbl_809A0ED0
    sw      t9, 0x01EC(s0)             # 000001EC
lbl_809A0EBC:
    addiu   t0, t0, %lo(func_809A0F8C) # t0 = 809A0F8C
    beq     $zero, $zero, lbl_809A0ED0
    sw      t0, 0x01EC(s0)             # 000001EC
lbl_809A0EC8:
    addiu   t1, t1, %lo(func_809A0EE4) # t1 = 809A0EE4
    sw      t1, 0x01EC(s0)             # 000001EC
lbl_809A0ED0:
    lw      $ra, 0x001C($sp)
lbl_809A0ED4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809A0EE4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lbu     t6, 0x020C(s0)             # 0000020C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    beq     t6, $zero, lbl_809A0F1C
    addiu   t7, $zero, 0xFFFE          # t7 = FFFFFFFE
    sb      t7, 0x1E5C($at)            # 00011E5C
lbl_809A0F1C:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    lh      t8, 0x0202(s0)             # 00000202
    bnel    t8, v0, lbl_809A0F7C
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_809A0F7C
    lw      $ra, 0x001C($sp)
    lbu     t9, 0x020C(s0)             # 0000020C
    or      a0, s1, $zero              # a0 = 00000000
    beq     t9, $zero, lbl_809A0F64
    nop
    jal     func_8006B9B4
    lh      a1, 0x0218(s0)             # 00000218
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    sh      t0, 0x0218(s0)             # 00000218
    sb      $zero, 0x020C(s0)          # 0000020C
lbl_809A0F64:
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    lui     t1, %hi(func_809A0C88)     # t1 = 809A0000
    addiu   t1, t1, %lo(func_809A0C88) # t1 = 809A0C88
    sw      t1, 0x01EC(s0)             # 000001EC
    lw      $ra, 0x001C($sp)
lbl_809A0F7C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809A0F8C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lbu     t6, 0x020C(s0)             # 0000020C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    beq     t6, $zero, lbl_809A0FC4
    addiu   t7, $zero, 0xFFFE          # t7 = FFFFFFFE
    sb      t7, 0x1E5C($at)            # 00011E5C
lbl_809A0FC4:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    lh      t8, 0x0202(s0)             # 00000202
    bnel    t8, v0, lbl_809A103C
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_809A103C
    lw      $ra, 0x001C($sp)
    lbu     t9, 0x020C(s0)             # 0000020C
    or      a0, s1, $zero              # a0 = 00000000
    beq     t9, $zero, lbl_809A100C
    nop
    jal     func_8006B9B4
    lh      a1, 0x0218(s0)             # 00000218
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    sh      t0, 0x0218(s0)             # 00000218
    sb      $zero, 0x020C(s0)          # 0000020C
lbl_809A100C:
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    lw      v0, 0x0118(s0)             # 00000118
    lui     t3, %hi(func_809A104C)     # t3 = 809A0000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lw      t1, 0x0130(v0)             # 00000130
    addiu   t3, t3, %lo(func_809A104C) # t3 = 809A104C
    beql    t1, $zero, lbl_809A103C
    lw      $ra, 0x001C($sp)
    sh      t2, 0x0144(v0)             # 00000144
    sw      t3, 0x01EC(s0)             # 000001EC
    lw      $ra, 0x001C($sp)
lbl_809A103C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809A104C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      v1, 0x0118(s0)             # 00000118
    lw      a3, 0x0034($sp)
    lw      t6, 0x0130(v1)             # 00000130
    beql    t6, $zero, lbl_809A1158
    lw      $ra, 0x0024($sp)
    lh      t7, 0x0144(v1)             # 00000144
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, a3, $zero              # a0 = 00000000
    bne     t7, $at, lbl_809A1154
    addiu   a1, $zero, 0x1F42          # a1 = 00001F42
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, s0, $zero              # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_8006B6FC
    sw      v1, 0x002C($sp)
    lw      v1, 0x002C($sp)
    lw      a3, 0x0034($sp)
    sh      v0, 0x0218(s0)             # 00000218
    lh      a0, 0x0146(v1)             # 00000146
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   t7, $zero, 0xFFFE          # t7 = FFFFFFFE
    beq     a0, $at, lbl_809A10EC
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     a0, $at, lbl_809A10EC
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     a0, $at, lbl_809A1100
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x71AF          # t9 = 000071AF
    sh      t8, 0x0204(s0)             # 00000204
    beq     $zero, $zero, lbl_809A1130
    sh      t9, 0x010E(s0)             # 0000010E
lbl_809A10EC:
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    addiu   t1, $zero, 0x71AE          # t1 = 000071AE
    sh      t0, 0x0204(s0)             # 00000204
    beq     $zero, $zero, lbl_809A1130
    sh      t1, 0x010E(s0)             # 0000010E
lbl_809A1100:
    addiu   t3, $zero, 0x71AD          # t3 = 000071AD
    lui     t4, 0x0001                 # t4 = 00010000
    sh      t2, 0x0204(s0)             # 00000204
    sh      t3, 0x010E(s0)             # 0000010E
    addu    t4, t4, a3
    lb      t4, 0x1E5C(t4)             # 00011E5C
    addiu   $at, $zero, 0x0010         # $at = 00000010
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    bne     t4, $at, lbl_809A1130
    addiu   t6, $zero, 0x002D          # t6 = 0000002D
    sh      t5, 0x0204(s0)             # 00000204
    sh      t6, 0x010E(s0)             # 0000010E
lbl_809A1130:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a3
    sb      t7, 0x1E5C($at)            # 00011E5C
    lhu     a1, 0x010E(s0)             # 0000010E
    jal     func_800DCE14
    or      a0, a3, $zero              # a0 = 00000000
    lui     t8, %hi(func_809A1168)     # t8 = 809A0000
    addiu   t8, t8, %lo(func_809A1168) # t8 = 809A1168
    sw      t8, 0x01EC(s0)             # 000001EC
lbl_809A1154:
    lw      $ra, 0x0024($sp)
lbl_809A1158:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809A1168:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a0, 0x002C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lh      t6, 0x0202(s0)             # 00000202
    bnel    t6, v0, lbl_809A13A8
    lw      $ra, 0x0024($sp)
    jal     func_800D6110
    lw      a0, 0x002C($sp)
    beql    v0, $zero, lbl_809A13A8
    lw      $ra, 0x0024($sp)
    lh      t7, 0x0204(s0)             # 00000204
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a0, 0x002C($sp)
    beq     t7, $at, lbl_809A11D0
    nop
    jal     func_8006B9B4
    lh      a1, 0x0218(s0)             # 00000218
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sh      t8, 0x0218(s0)             # 00000218
lbl_809A11D0:
    jal     func_800D6218
    lw      a0, 0x002C($sp)
    lw      a0, 0x0118(s0)             # 00000118
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    lw      t9, 0x0130(a0)             # 00000130
    beql    t9, $zero, lbl_809A13A8
    lw      $ra, 0x0024($sp)
    sh      t0, 0x0144(a0)             # 00000144
    lh      v1, 0x0204(s0)             # 00000204
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      $zero, 0x0200(s0)          # 00000200
    beq     v1, a1, lbl_809A1218
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_809A1324
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    beq     $zero, $zero, lbl_809A1344
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_809A1218:
    lw      t1, 0x0118(s0)             # 00000118
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $zero, 0x0118(s0)          # 00000118
    sw      t1, 0x0210(s0)             # 00000210
    lw      t2, 0x0004(v1)             # 8011A5D4
    lui     a3, 0x44FA                 # a3 = 44FA0000
    beql    t2, $zero, lbl_809A1290
    lhu     t3, 0x0EF0(v1)             # 8011B4C0
    lhu     t3, 0x0EF0(v1)             # 8011B4C0
    lui     t6, 0x8010                 # t6 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    andi    t4, t3, 0x2000             # t4 = 00000000
    bne     t4, $zero, lbl_809A1284
    addiu   t2, $zero, 0x0055          # t2 = 00000055
    lw      t5, 0x00A0(v1)             # 8011A670
    lw      t6, -0x736C(t6)            # 800F8C94
    lbu     t8, -0x7337(t8)            # 800F8CC9
    addiu   t0, $zero, 0x0060          # t0 = 00000060
    and     t7, t5, t6
    srav    t9, t7, t8
    bne     a1, t9, lbl_809A127C
    addiu   t1, $zero, 0x007B          # t1 = 0000007B
    beq     $zero, $zero, lbl_809A12FC
    sw      t0, 0x0208(s0)             # 00000208
lbl_809A127C:
    beq     $zero, $zero, lbl_809A12FC
    sw      t1, 0x0208(s0)             # 00000208
lbl_809A1284:
    beq     $zero, $zero, lbl_809A12FC
    sw      t2, 0x0208(s0)             # 00000208
    lhu     t3, 0x0EF0(v1)             # 8011B4C0
lbl_809A1290:
    lui     t6, 0x8010                 # t6 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    andi    t4, t3, 0x4000             # t4 = 00000000
    bne     t4, $zero, lbl_809A12F8
    addiu   t2, $zero, 0x0055          # t2 = 00000055
    lw      t5, 0x00A0(v1)             # 8011A670
    lw      t6, -0x7380(t6)            # 800F8C80
    lbu     t8, -0x733C(t8)            # 800F8CC4
    addiu   t9, $zero, 0x0055          # t9 = 00000055
    and     t7, t5, t6
    srav    v0, t7, t8
    beq     v0, $zero, lbl_809A12E0
    nop
    beq     v0, a1, lbl_809A12E8
    addiu   t0, $zero, 0x0030          # t0 = 00000030
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809A12F0
    addiu   t1, $zero, 0x0031          # t1 = 00000031
    beq     $zero, $zero, lbl_809A1300
    lui     $at, 0x447A                # $at = 447A0000
lbl_809A12E0:
    beq     $zero, $zero, lbl_809A12FC
    sw      t9, 0x0208(s0)             # 00000208
lbl_809A12E8:
    beq     $zero, $zero, lbl_809A12FC
    sw      t0, 0x0208(s0)             # 00000208
lbl_809A12F0:
    beq     $zero, $zero, lbl_809A12FC
    sw      t1, 0x0208(s0)             # 00000208
lbl_809A12F8:
    sw      t2, 0x0208(s0)             # 00000208
lbl_809A12FC:
    lui     $at, 0x447A                # $at = 447A0000
lbl_809A1300:
    mtc1    $at, $f4                   # $f4 = 1000.00
    lw      a2, 0x0208(s0)             # 00000208
    lw      a1, 0x002C($sp)
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lui     t3, %hi(func_809A13B8)     # t3 = 809A0000
    addiu   t3, t3, %lo(func_809A13B8) # t3 = 809A13B8
    beq     $zero, $zero, lbl_809A13A4
    sw      t3, 0x01EC(s0)             # 000001EC
lbl_809A1324:
    sh      t4, 0x0206(s0)             # 00000206
    lw      a0, 0x002C($sp)
    jal     func_80079A04
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    lui     t5, %hi(func_809A14EC)     # t5 = 809A0000
    addiu   t5, t5, %lo(func_809A14EC) # t5 = 809A14EC
    beq     $zero, $zero, lbl_809A13A4
    sw      t5, 0x01EC(s0)             # 000001EC
lbl_809A1344:
    bne     v1, $at, lbl_809A135C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     t6, %hi(func_809A0C88)     # t6 = 809A0000
    addiu   t6, t6, %lo(func_809A0C88) # t6 = 809A0C88
    beq     $zero, $zero, lbl_809A13A4
    sw      t6, 0x01EC(s0)             # 000001EC
lbl_809A135C:
    lh      v0, 0x0200(s0)             # 00000200
    lui     t8, %hi(var_809A17D0)      # t8 = 809A0000
    sb      t7, 0x020C(s0)             # 0000020C
    sll     v0, v0,  1
    addu    t8, t8, v0
    lh      t8, %lo(var_809A17D0)(t8)
    lui     t9, %hi(var_809A17D8)      # t9 = 809A0000
    addu    t9, t9, v0
    sh      t8, 0x010E(s0)             # 0000010E
    lh      t9, %lo(var_809A17D8)(t9)
    or      a2, $zero, $zero           # a2 = 00000000
    andi    a1, t8, 0xFFFF             # a1 = 00000000
    sh      t9, 0x0202(s0)             # 00000202
    jal     func_800DCE14
    lw      a0, 0x002C($sp)
    lui     t0, %hi(func_809A0D3C)     # t0 = 809A0000
    addiu   t0, t0, %lo(func_809A0D3C) # t0 = 809A0D3C
    sw      t0, 0x01EC(s0)             # 000001EC
lbl_809A13A4:
    lw      $ra, 0x0024($sp)
lbl_809A13A8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809A13B8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_809A13F8
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(func_809A1428)     # t6 = 809A0000
    addiu   t6, t6, %lo(func_809A1428) # t6 = 809A1428
    beq     $zero, $zero, lbl_809A1414
    sw      t6, 0x01EC(s0)             # 000001EC
lbl_809A13F8:
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    lw      a2, 0x0208(s0)             # 00000208
    lw      a1, 0x002C($sp)
    lui     a3, 0x44FA                 # a3 = 44FA0000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_809A1414:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809A1428:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_809A14DC
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_800D6110
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_809A14DC
    lw      a2, 0x0018($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t6, 0x0004(v1)             # 8011A5D4
    lui     t4, %hi(func_809A0C88)     # t4 = 809A0000
    addiu   t4, t4, %lo(func_809A0C88) # t4 = 809A0C88
    beql    t6, $zero, lbl_809A14A0
    lw      v0, 0x0208(a2)             # 00000208
    lhu     t7, 0x0EF0(v1)             # 8011B4C0
    ori     t8, t7, 0x2000             # t8 = 00002000
    beq     $zero, $zero, lbl_809A14C0
    sh      t8, 0x0EF0(v1)             # 8011B4C0
    lw      v0, 0x0208(a2)             # 00000208
lbl_809A14A0:
    addiu   $at, $zero, 0x0030         # $at = 00000030
    beq     v0, $at, lbl_809A14B4
    addiu   $at, $zero, 0x0031         # $at = 00000031
    bnel    v0, $at, lbl_809A14C4
    lw      t2, 0x0004(a2)             # 00000004
lbl_809A14B4:
    lhu     t9, 0x0EF0(v1)             # 8011B4C0
    ori     t0, t9, 0x4000             # t0 = 00004000
    sh      t0, 0x0EF0(v1)             # 8011B4C0
lbl_809A14C0:
    lw      t2, 0x0004(a2)             # 00000004
lbl_809A14C4:
    lw      t1, 0x0210(a2)             # 00000210
    sh      $zero, 0x0204(a2)          # 00000204
    ori     t3, t2, 0x0001             # t3 = 00000001
    sw      t3, 0x0004(a2)             # 00000004
    sw      t4, 0x01EC(a2)             # 000001EC
    sw      t1, 0x0118(a2)             # 00000118
lbl_809A14DC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809A14EC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lh      t6, 0x0206(a1)             # 00000206
    bnel    t6, $zero, lbl_809A1548
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0118(a1)             # 00000118
    lui     t9, %hi(func_809A104C)     # t9 = 809A0000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lw      t7, 0x0130(v0)             # 00000130
    addiu   t9, t9, %lo(func_809A104C) # t9 = 809A104C
    beql    t7, $zero, lbl_809A1548
    lw      $ra, 0x0014($sp)
    sh      t8, 0x0144(v0)             # 00000144
    sh      $zero, 0x0204(a1)          # 00000204
    sw      t9, 0x01EC(a1)             # 000001EC
    lw      $ra, 0x0014($sp)
lbl_809A1548:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809A1554:
    lh      v0, 0x01FE(a0)             # 000001FE
    lui     t6, %hi(func_809A1588)     # t6 = 809A0000
    addiu   t6, t6, %lo(func_809A1588) # t6 = 809A1588
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    sll     v0, v0, 16
    sra     v0, v0, 16
    beql    v0, $zero, lbl_809A1580
    sw      t6, 0x0214(a0)             # 00000214
    jr      $ra
    sh      v0, 0x01FE(a0)             # 000001FE
lbl_809A157C:
    sw      t6, 0x0214(a0)             # 00000214
lbl_809A1580:
    jr      $ra
    nop


func_809A1588:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      v0, 0x01FE(a0)             # 000001FE
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    sll     v0, v0, 16
    sra     v0, v0, 16
    beql    v0, $zero, lbl_809A15B4
    lh      v0, 0x01FC(a0)             # 000001FC
    beq     $zero, $zero, lbl_809A1618
    sh      v0, 0x01FE(a0)             # 000001FE
    lh      v0, 0x01FC(a0)             # 000001FC
lbl_809A15B4:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   v0, v0, 0x0001             # v0 = 00000000
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0003
    bnel    $at, $zero, lbl_809A1614
    sh      v0, 0x01FC(a0)             # 000001FC
    sh      $zero, 0x01FC(a0)          # 000001FC
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0018($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    lw      a0, 0x0018($sp)
    lui     t9, %hi(func_809A1554)     # t9 = 809A0000
    mul.s   $f6, $f0, $f4
    addiu   t9, t9, %lo(func_809A1554) # t9 = 809A1554
    sw      t9, 0x0214(a0)             # 00000214
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    addiu   t8, t7, 0x0014             # t8 = 00000014
    beq     $zero, $zero, lbl_809A1618
    sh      t8, 0x01FE(a0)             # 000001FE
    sh      v0, 0x01FC(a0)             # 000001FC
lbl_809A1614:
    sh      t0, 0x01FE(a0)             # 000001FE
lbl_809A1618:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809A1628:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lh      v0, 0x0206(s0)             # 00000206
    beq     v0, $zero, lbl_809A164C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0206(s0)             # 00000206
lbl_809A164C:
    lw      t9, 0x01EC(s0)             # 000001EC
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jalr    $ra, t9
    nop
    lw      t9, 0x0214(s0)             # 00000214
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f0                   # $f0 = 70.00
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a1, $f0
    jal     func_80020F04
    swc1    $f0, 0x003C(s0)            # 0000003C
    lw      t8, 0x0038(s0)             # 00000038
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sw      t8, 0x0010($sp)
    lw      t7, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x01F0             # a2 = 000001F0
    addiu   a3, s0, 0x01F6             # a3 = 000001F6
    sw      t7, 0x0014($sp)
    lw      t8, 0x0040(s0)             # 00000040
    jal     func_8002B024
    sw      t8, 0x0018($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809A16C8:
    sw      a0, 0x0000($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_809A16F0
    lw      v0, 0x0014($sp)
    lw      v1, 0x0010($sp)
    lh      t7, 0x01F8(v0)             # 000001F8
    lh      t6, 0x0000(v1)             # 00000000
    addu    t8, t6, t7
    sh      t8, 0x0000(v1)             # 00000000
lbl_809A16F0:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lw      v0, 0x0014($sp)
    bne     a1, $at, lbl_809A174C
    lw      v1, 0x0010($sp)
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x7E28             # t9 = 06007E28
    sw      t9, 0x0000(a2)             # 00000000
    lh      t0, 0x0204(v0)             # 00000204
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    bnel    t0, $at, lbl_809A1728
    lh      t2, 0x01F2(v0)             # 000001F2
    addiu   a0, $zero, 0xFFFF          # a0 = FFFFFFFF
    lh      t2, 0x01F2(v0)             # 000001F2
lbl_809A1728:
    lh      t1, 0x0000(v1)             # 00000000
    lh      t5, 0x0004(v1)             # 00000004
    multu   t2, a0
    mflo    t3
    addu    t4, t1, t3
    sh      t4, 0x0000(v1)             # 00000000
    lh      t6, 0x01F4(v0)             # 000001F4
    addu    t7, t5, t6
    sh      t7, 0x0004(v1)             # 00000004
lbl_809A174C:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_809A1758:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0028($sp)
    lui     t7, %hi(func_809A16C8)     # t7 = 809A0000
    addiu   t7, t7, %lo(func_809A16C8) # t7 = 809A16C8
    lw      a1, 0x0140(v0)             # 00000140
    lw      a2, 0x015C(v0)             # 0000015C
    lbu     a3, 0x013E(v0)             # 0000013E
    sw      $zero, 0x0014($sp)
    sw      t7, 0x0010($sp)
    lw      a0, 0x002C($sp)
    jal     func_80089D8C
    sw      v0, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop

.section .data

var_809A17B0: .word 0x00C10400, 0x08000019, 0x005B0000, 0x0000021C
.word func_809A0B30
.word func_809A0BE4
.word func_809A1628
.word func_809A1758
var_809A17D0: .byte 0x00, 0x2B, 0x00, 0x2E, 0x00, 0xC8
var_809A17D6: .byte 0x00, 0x2D
var_809A17D8: .byte 0x00, 0x04, 0x00, 0x05, 0x00, 0x05
var_809A17DE: .byte 0x00, 0x05

.section .rodata


