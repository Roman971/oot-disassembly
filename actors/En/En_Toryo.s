.section .text
func_80A8BC30:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0054($sp)
    lw      t6, 0x0054($sp)
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    lh      v0, 0x00A4(t6)             # 000000A4
    beq     v0, $at, lbl_80A8BCE8
    addiu   $at, $zero, 0x0052         # $at = 00000052
    beq     v0, $at, lbl_80A8BCA4
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    bne     v0, $at, lbl_80A8BD30
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t7, 0x0004(v1)             # 8011A5D4
    addiu   $at, $zero, 0x0011         # $at = 00000011
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t7, $zero, lbl_80A8BC8C
    nop
    beq     $zero, $zero, lbl_80A8BC8C
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80A8BC8C:
    bnel    v0, $at, lbl_80A8BD34
    lhu     t8, 0x01D8(s0)             # 000001D8
    lhu     t8, 0x01D8(s0)             # 000001D8
    ori     t9, t8, 0x0001             # t9 = 00000001
    beq     $zero, $zero, lbl_80A8BD30
    sh      t9, 0x01D8(s0)             # 000001D8
lbl_80A8BCA4:
    addiu   v1, v1, 0xA5D0             # v1 = 80114BA0
    lw      t0, 0x0004(v1)             # 80114BA4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t0, $zero, lbl_80A8BCC4
    nop
    beq     $zero, $zero, lbl_80A8BCC4
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80A8BCC4:
    bnel    v0, $at, lbl_80A8BD34
    lhu     t8, 0x01D8(s0)             # 000001D8
    lw      t1, 0x0010(v1)             # 80114BB0
    bnel    t1, $zero, lbl_80A8BD34
    lhu     t8, 0x01D8(s0)             # 000001D8
    lhu     t2, 0x01D8(s0)             # 000001D8
    ori     t3, t2, 0x0002             # t3 = 00000002
    beq     $zero, $zero, lbl_80A8BD30
    sh      t3, 0x01D8(s0)             # 000001D8
lbl_80A8BCE8:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t4, 0x0004(v1)             # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t4, $zero, lbl_80A8BD0C
    nop
    beq     $zero, $zero, lbl_80A8BD0C
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80A8BD0C:
    bnel    v0, $at, lbl_80A8BD34
    lhu     t8, 0x01D8(s0)             # 000001D8
    lw      t5, 0x0010(v1)             # 8011A5E0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t5, $at, lbl_80A8BD34
    lhu     t8, 0x01D8(s0)             # 000001D8
    lhu     t6, 0x01D8(s0)             # 000001D8
    ori     t7, t6, 0x0004             # t7 = 00000004
    sh      t7, 0x01D8(s0)             # 000001D8
lbl_80A8BD30:
    lhu     t8, 0x01D8(s0)             # 000001D8
lbl_80A8BD34:
    andi    t9, t8, 0x0007             # t9 = 00000000
    bne     t9, $zero, lbl_80A8BD48
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A8BD48:
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4228                 # a3 = 42280000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   t0, s0, 0x0204             # t0 = 00000204
    addiu   t1, s0, 0x026A             # t1 = 0000026A
    addiu   t2, $zero, 0x0011          # t2 = 00000011
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    addiu   a2, a2, 0x7150             # a2 = 06007150
    sw      a1, 0x0038($sp)
    lw      a0, 0x0054($sp)
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    lw      a0, 0x0054($sp)
    lui     a3, %hi(var_80A8C6E0)      # a3 = 80A90000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80A8C6E0)  # a3 = 80A8C6E0
    lw      a0, 0x0054($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_80A8C718)      # a1 = 80A90000
    lui     a2, %hi(var_80A8C70C)      # a2 = 80A90000
    addiu   a2, a2, %lo(var_80A8C70C)  # a2 = 80A8C70C
    addiu   a1, a1, %lo(var_80A8C718)  # a1 = 80A8C718
    jal     func_80050370
    addiu   a0, s0, 0x0098             # a0 = 00000098
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    sw      t3, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    lw      a0, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lui     v1, %hi(var_80A8C738)      # v1 = 80A90000
    addiu   v1, v1, %lo(var_80A8C738)  # v1 = 80A8C738
    jal     func_8008A194
    lw      a0, 0x0000(v1)             # 80A8C738
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     v1, %hi(var_80A8C738)      # v1 = 80A90000
    addiu   v1, v1, %lo(var_80A8C738)  # v1 = 80A8C738
    cvt.s.w $f6, $f4
    lbu     t4, 0x0008(v1)             # 80A8C740
    lwc1    $f8, 0x000C(v1)            # 80A8C744
    lw      a1, 0x0000(v1)             # 80A8C738
    lw      a0, 0x0038($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f6, 0x0010($sp)
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      t4, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lhu     t5, 0x01D8(s0)             # 000001D8
    lui     t8, %hi(func_80A8C3E8)     # t8 = 80A90000
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    addiu   t8, t8, %lo(func_80A8C3E8) # t8 = 80A8C3E8
    ori     t6, t5, 0x0008             # t6 = 00000008
    sh      t6, 0x01D8(s0)             # 000001D8
    sb      t7, 0x001F(s0)             # 0000001F
    sw      t8, 0x0180(s0)             # 00000180
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_80A8BE74:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8BEA0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      a2, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      t6, 0x0020($sp)
    sltiu   $at, v0, 0x0007
    lw      v1, 0x0028($sp)
    lw      a1, 0x002C($sp)
    beq     $at, $zero, lbl_80A8C080
    lw      a2, 0x001C($sp)
    sll     t7, v0,  2
    lui     $at, %hi(var_80A8C760)     # $at = 80A90000
    addu    $at, $at, t7
    lw      t7, %lo(var_80A8C760)($at)
    jr      t7
    nop
var_80A8BEF4:
    or      a0, a1, $zero              # a0 = 00000000
    sw      a1, 0x002C($sp)
    jal     func_800D6110
    sw      a2, 0x001C($sp)
    lw      v1, 0x0028($sp)
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_80A8C080
    lw      a2, 0x001C($sp)
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, a1
    lbu     t8, 0x04BD(t8)             # 000104BD
    or      a0, a1, $zero              # a0 = 00000000
    addiu   t2, $zero, 0x606F          # t2 = 0000606F
    bne     t8, $zero, lbl_80A8BF6C
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_800D6218
    sw      a1, 0x002C($sp)
    lw      v1, 0x0028($sp)
    lw      a1, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    sw      $zero, 0x0118(v1)          # 00000118
    lw      t9, 0x0020($sp)
    addiu   t0, $zero, 0x0037          # t0 = 00000037
    addu    $at, $at, a1
    sb      $zero, 0x0683(t9)          # 00000683
    sb      t0, 0x03DC($at)            # 000103DC
    addiu   t1, $zero, 0x601B          # t1 = 0000601B
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    beq     $zero, $zero, lbl_80A8C080
    sh      t1, 0x010E(v1)             # 0000010E
lbl_80A8BF6C:
    beq     $zero, $zero, lbl_80A8C080
    sh      t2, 0x010E(v1)             # 0000010E
var_80A8BF74:
    lhu     v0, 0x010E(v1)             # 0000010E
    slti    $at, v0, 0x601C
    bne     $at, $zero, lbl_80A8BFA4
    addiu   t3, v0, 0x9F96             # t3 = FFFF9F96
    sltiu   $at, t3, 0x0006
    beq     $at, $zero, lbl_80A8C068
    sll     t3, t3,  2
    lui     $at, %hi(var_80A8C77C)     # $at = 80A90000
    addu    $at, $at, t3
    lw      t3, %lo(var_80A8C77C)($at)
    jr      t3
    nop
lbl_80A8BFA4:
    addiu   $at, $zero, 0x5028         # $at = 00005028
    beq     v0, $at, lbl_80A8BFC4
    or      a0, a1, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x601B         # $at = 0000601B
    beq     v0, $at, lbl_80A8BFF0
    or      a0, a1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8C06C
    or      a0, a1, $zero              # a0 = 00000000
lbl_80A8BFC4:
    jal     func_800D6110
    sw      a2, 0x001C($sp)
    beq     v0, $zero, lbl_80A8C080
    lw      a2, 0x001C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x0F26(v0)             # 8011B4F6
    or      a2, $zero, $zero           # a2 = 00000000
    ori     t5, t4, 0x0004             # t5 = 00000004
    beq     $zero, $zero, lbl_80A8C080
    sh      t5, 0x0F26(v0)             # 8011B4F6
lbl_80A8BFF0:
    jal     func_800D6110
    sw      a2, 0x001C($sp)
    beq     v0, $zero, lbl_80A8C080
    lw      a2, 0x001C($sp)
    beq     $zero, $zero, lbl_80A8C080
    addiu   a2, $zero, 0x0004          # a2 = 00000004
var_80A8C008:
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_800D6110
    sw      a2, 0x001C($sp)
    beq     v0, $zero, lbl_80A8C080
    lw      a2, 0x001C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0F26(v0)             # 8011B4F6
    or      a2, $zero, $zero           # a2 = 00000000
    ori     t7, t6, 0x0002             # t7 = 00000002
    beq     $zero, $zero, lbl_80A8C080
    sh      t7, 0x0F26(v0)             # 8011B4F6
var_80A8C038:
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_800D6110
    sw      a2, 0x001C($sp)
    beq     v0, $zero, lbl_80A8C080
    lw      a2, 0x001C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0F26(v0)             # 8011B4F6
    or      a2, $zero, $zero           # a2 = 00000000
    ori     t9, t8, 0x0001             # t9 = 00000001
    beq     $zero, $zero, lbl_80A8C080
    sh      t9, 0x0F26(v0)             # 8011B4F6
lbl_80A8C068:
    or      a0, a1, $zero              # a0 = 00000000
lbl_80A8C06C:
    jal     func_800D6110
    sw      a2, 0x001C($sp)
    beq     v0, $zero, lbl_80A8C080
    lw      a2, 0x001C($sp)
    or      a2, $zero, $zero           # a2 = 00000000
lbl_80A8C080:
    or      v0, a2, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80A8C094:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x002C($sp)
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    sltiu   $at, v0, 0x0007
    beq     $at, $zero, lbl_80A8C0EC
    sll     t7, v0,  2
    lui     $at, %hi(var_80A8C794)     # $at = 80A90000
    addu    $at, $at, t7
    lw      t7, %lo(var_80A8C794)($at)
    jr      t7
    nop
var_80A8C0D8:
    jal     func_800D6110
    lw      a0, 0x002C($sp)
    beql    v0, $zero, lbl_80A8C0F0
    lw      v0, 0x001C($sp)
    sw      $zero, 0x001C($sp)
lbl_80A8C0EC:
    lw      v0, 0x001C($sp)
lbl_80A8C0F0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80A8C100:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lw      v0, 0x01D0(a0)             # 000001D0
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beql    v0, $zero, lbl_80A8C15C
    lw      v0, 0x001C($sp)
    bne     v0, $at, lbl_80A8C154
    addiu   v1, $zero, 0x200F          # v1 = 0000200F
    jal     func_800646F0
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B0A(t6)            # 8011B4F6
    addiu   v1, $zero, 0x606D          # v1 = 0000606D
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80A8C14C
    nop
    beq     $zero, $zero, lbl_80A8C14C
    addiu   v1, $zero, 0x606E          # v1 = 0000606E
lbl_80A8C14C:
    beq     $zero, $zero, lbl_80A8C158
    sw      v1, 0x001C($sp)
lbl_80A8C154:
    sw      v1, 0x001C($sp)
lbl_80A8C158:
    lw      v0, 0x001C($sp)
lbl_80A8C15C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A8C16C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800597C0
    or      a1, $zero, $zero           # a1 = 00000000
    bne     v0, $zero, lbl_80A8C224
    or      a0, v0, $zero              # a0 = 00000000
    lw      t6, 0x0018($sp)
    lhu     v0, 0x01D8(t6)             # 000001D8
    andi    t7, v0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80A8C1E8
    andi    t2, v0, 0x0002             # t2 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0EE6(v0)             # 8011B4B6
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    andi    t9, t8, 0x000F             # t9 = 00000000
    bnel    t9, $at, lbl_80A8C1CC
    lhu     t0, 0x0F26(v0)             # 8011B4F6
    beq     $zero, $zero, lbl_80A8C224
    addiu   a0, $zero, 0x606C          # a0 = 0000606C
    lhu     t0, 0x0F26(v0)             # 8011B4F6
lbl_80A8C1CC:
    andi    t1, t0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80A8C1E0
    nop
    beq     $zero, $zero, lbl_80A8C224
    addiu   a0, $zero, 0x606B          # a0 = 0000606B
lbl_80A8C1E0:
    beq     $zero, $zero, lbl_80A8C224
    addiu   a0, $zero, 0x606A          # a0 = 0000606A
lbl_80A8C1E8:
    beq     t2, $zero, lbl_80A8C218
    andi    t5, v0, 0x0004             # t5 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t3, 0x0F26(v0)             # 8011B4F6
    andi    t4, t3, 0x0004             # t4 = 00000000
    beq     t4, $zero, lbl_80A8C210
    nop
    beq     $zero, $zero, lbl_80A8C224
    addiu   a0, $zero, 0x5029          # a0 = 00005029
lbl_80A8C210:
    beq     $zero, $zero, lbl_80A8C224
    addiu   a0, $zero, 0x5028          # a0 = 00005028
lbl_80A8C218:
    beql    t5, $zero, lbl_80A8C228
    or      v0, a0, $zero              # v0 = 00005028
    addiu   a0, $zero, 0x506C          # a0 = 0000506C
lbl_80A8C224:
    or      v0, a0, $zero              # v0 = 0000506C
lbl_80A8C228:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8C238:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t6, 0x1C44(s1)             # 00001C44
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    sw      t6, 0x0034($sp)
    lw      v1, 0x01D4(s0)             # 000001D4
    bnel    v1, $at, lbl_80A8C28C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_80022930
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE80
    lhu     a1, 0x010E(s0)             # 0000010E
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sw      v1, 0x01D4(s0)             # 000001D4
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80A8C28C:
    bne     v1, $at, lbl_80A8C2A4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A8BEA0
    or      a1, s1, $zero              # a1 = 00000000
    sw      v0, 0x01D4(s0)             # 000001D4
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A8C2A4:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v1, $at, lbl_80A8C2C0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A8C094
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A8C3D4
    sw      v0, 0x01D4(s0)             # 000001D4
lbl_80A8C2C0:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, $at, lbl_80A8C2DC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE80
    lhu     a1, 0x010E(s0)             # 0000010E
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sw      v1, 0x01D4(s0)             # 000001D4
lbl_80A8C2DC:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v1, $at, lbl_80A8C32C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80A8C308
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sw      $zero, 0x0118(s0)          # 00000118
    beq     $zero, $zero, lbl_80A8C3D4
    sw      t9, 0x01D4(s0)             # 000001D4
lbl_80A8C308:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    lui     a3, 0x42C8                 # a3 = 42C80000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    beq     $zero, $zero, lbl_80A8C3D8
    lw      $ra, 0x0024($sp)
lbl_80A8C32C:
    bne     v1, $zero, lbl_80A8C3D4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80A8C380
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022B04
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A8C374
    sw      v0, 0x01D0(s0)             # 000001D0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A8C100
    or      a1, s1, $zero              # a1 = 00000000
    lw      t0, 0x0034($sp)
    sh      v0, 0x010E(t0)             # 0000010E
    lw      t1, 0x0034($sp)
    lhu     t2, 0x010E(t1)             # 0000010E
    sh      t2, 0x010E(s0)             # 0000010E
lbl_80A8C374:
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    beq     $zero, $zero, lbl_80A8C3D4
    sw      t3, 0x01D4(s0)             # 000001D4
lbl_80A8C380:
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0032            # a2 = FFFFFFFA
    jal     func_80022B14
    addiu   a3, $sp, 0x0030            # a3 = FFFFFFF8
    lh      v0, 0x0032($sp)
    bltz    v0, lbl_80A8C3D4
    slti    $at, v0, 0x0141
    beq     $at, $zero, lbl_80A8C3D4
    lh      v0, 0x0030($sp)
    bltz    v0, lbl_80A8C3D4
    slti    $at, v0, 0x00F1
    beq     $at, $zero, lbl_80A8C3D4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A8C16C
    or      a1, s1, $zero              # a1 = 00000000
    sh      v0, 0x010E(s0)             # 0000010E
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x42C8                 # a2 = 42C80000
    jal     func_80022A34
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
lbl_80A8C3D4:
    lw      $ra, 0x0024($sp)
lbl_80A8C3D8:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80A8C3E8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A8C238
    lw      a1, 0x001C($sp)
    lw      a2, 0x0018($sp)
    lw      t6, 0x01D4(a2)             # 000001D4
    beql    t6, $zero, lbl_80A8C434
    lhu     t9, 0x01D8(a2)             # 000001D8
    lhu     t7, 0x01D8(a2)             # 000001D8
    ori     t8, t7, 0x0010             # t8 = 00000010
    beq     $zero, $zero, lbl_80A8C43C
    sh      t8, 0x01D8(a2)             # 000001D8
    lhu     t9, 0x01D8(a2)             # 000001D8
lbl_80A8C434:
    andi    t0, t9, 0xFFEF             # t0 = 00000000
    sh      t0, 0x01D8(a2)             # 000001D8
lbl_80A8C43C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8C44C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    addiu   a2, s0, 0x0184             # a2 = 00000184
    or      a1, a2, $zero              # a1 = 00000184
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      a2, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00
    sw      t7, 0x002C($sp)
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0024($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    jalr    $ra, t9
    nop
    lhu     v0, 0x01D8(s0)             # 000001D8
    lw      v1, 0x002C($sp)
    andi    t8, v0, 0x0008             # t8 = 00000000
    beql    t8, $zero, lbl_80A8C574
    lw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0038(v1)            # 00000038
    andi    t0, v0, 0x0010             # t0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x01F4(s0)            # 000001F4
    lwc1    $f6, 0x003C(v1)            # 0000003C
    addiu   a1, s0, 0x01DC             # a1 = 000001DC
    or      a2, $zero, $zero           # a2 = 00000000
    swc1    $f6, 0x01F8(s0)            # 000001F8
    lwc1    $f8, 0x0040(v1)            # 00000040
    beq     t0, $zero, lbl_80A8C4FC
    swc1    $f8, 0x01FC(s0)            # 000001FC
    jal     func_80027854
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    beq     $zero, $zero, lbl_80A8C574
    lw      $ra, 0x001C($sp)
lbl_80A8C4FC:
    lh      t1, 0x008A(s0)             # 0000008A
    lh      t2, 0x00B6(s0)             # 000000B6
    lui     $at, %hi(var_80A8C7B0)     # $at = 80A90000
    lwc1    $f16, %lo(var_80A8C7B0)($at)
    subu    t3, t1, t2
    mtc1    t3, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80A8C7B4)     # $at = 80A90000
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f0, $f10
    addiu   a1, s0, 0x01DC             # a1 = 000001DC
    or      a2, $zero, $zero           # a2 = 00000000
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_80A8C568
    nop
    lwc1    $f18, %lo(var_80A8C7B4)($at)
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    c.lt.s  $f18, $f0
    nop
    bc1f    lbl_80A8C568
    nop
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x01DC             # a1 = 000001DC
    jal     func_80027854
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_80A8C574
    lw      $ra, 0x001C($sp)
lbl_80A8C568:
    jal     func_80027854
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      $ra, 0x001C($sp)
lbl_80A8C574:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80A8C584:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0028($sp)
    lui     t7, %hi(func_80A8C5E4)     # t7 = 80A90000
    lui     t8, %hi(func_80A8C674)     # t8 = 80A90000
    lw      a1, 0x0140(v0)             # 00000140
    lw      a2, 0x015C(v0)             # 0000015C
    lbu     a3, 0x013E(v0)             # 0000013E
    addiu   t8, t8, %lo(func_80A8C674) # t8 = 80A8C674
    addiu   t7, t7, %lo(func_80A8C5E4) # t7 = 80A8C5E4
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    lw      a0, 0x002C($sp)
    jal     func_80089D8C
    sw      v0, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80A8C5E4:
    sw      a0, 0x0000($sp)
    lw      a0, 0x0014($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    lhu     t6, 0x01D8(a0)             # 000001D8
    addiu   $at, $zero, 0x0008         # $at = 00000008
    andi    t7, t6, 0x0008             # t7 = 00000000
    beql    t7, $zero, lbl_80A8C66C
    or      v0, $zero, $zero           # v0 = 00000000
    beq     a1, $at, lbl_80A8C624
    lw      v0, 0x0010($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     a1, $at, lbl_80A8C648
    lw      v0, 0x0010($sp)
    beq     $zero, $zero, lbl_80A8C66C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A8C624:
    lh      t8, 0x0000(v0)             # 00000000
    lh      t9, 0x01EC(a0)             # 000001EC
    lh      t1, 0x0002(v0)             # 00000002
    addu    t0, t8, t9
    sh      t0, 0x0000(v0)             # 00000000
    lh      t2, 0x01EA(a0)             # 000001EA
    subu    t3, t1, t2
    beq     $zero, $zero, lbl_80A8C668
    sh      t3, 0x0002(v0)             # 00000002
lbl_80A8C648:
    lh      t4, 0x0000(v0)             # 00000000
    lh      t5, 0x01E6(a0)             # 000001E6
    lh      t7, 0x0004(v0)             # 00000004
    addu    t6, t4, t5
    sh      t6, 0x0000(v0)             # 00000000
    lh      t8, 0x01E4(a0)             # 000001E4
    addu    t9, t7, t8
    sh      t9, 0x0004(v0)             # 00000004
lbl_80A8C668:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A8C66C:
    jr      $ra
    nop


func_80A8C674:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_80A8C6A4
    lui     a0, %hi(var_80A8C748)      # a0 = 80A90000
    lw      a1, 0x0028($sp)
    addiu   a0, a0, %lo(var_80A8C748)  # a0 = 80A8C748
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80A8C6A4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80A8C6C0: .word 0x01320400, 0x00000009, 0x01210000, 0x000002D0
.word func_80A8BC30
.word func_80A8BE74
.word func_80A8C44C
.word func_80A8C584
var_80A8C6E0: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0012003F, 0x00000000, 0x00000000
var_80A8C70C: .word 0x00000000, 0x00000000, 0xFF000000
var_80A8C718: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A8C738: .word 0x06000E50, 0x3F800000, 0x00000000, 0x00000000
var_80A8C748: .word \
0x44480000, 0x447A0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80A8C760: .word lbl_80A8C080
.word lbl_80A8C080
.word lbl_80A8C080
.word lbl_80A8C080
.word var_80A8BEF4
.word lbl_80A8C080
.word var_80A8BF74
var_80A8C77C: .word var_80A8C038
.word lbl_80A8C068
.word lbl_80A8C068
.word lbl_80A8C068
.word lbl_80A8C068
.word var_80A8C008
var_80A8C794: .word lbl_80A8C0EC
.word lbl_80A8C0EC
.word lbl_80A8C0EC
.word lbl_80A8C0EC
.word lbl_80A8C0EC
.word lbl_80A8C0EC
.word var_80A8C0D8
var_80A8C7B0: .word 0x46638E39
var_80A8C7B4: .word 0xC6638E39, 0x00000000, 0x00000000

