# "Parameter" part of the code file
#
# Handles the HUD and other things like the player's inventory/equipment.
#
# Starts at VRAM: 8006D8E0 / VROM: AE3840
#

.section .text
func_8006D8E0:
# HUD related, affects HUD visibility
# A0 = Hud State
    sw      a0, 0x0000($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    lhu     t6, 0x13EA(v0)             # 8011B9BA
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     t6, a0, lbl_8006D90C
    nop
    sh      a0, 0x13E8(v0)             # 8011B9B8
    sh      a0, 0x13EA(v0)             # 8011B9BA
    sh      t8, 0x13EC(v0)             # 8011B9BC
lbl_8006D90C:
    jr      $ra
    nop


func_8006D914:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    sra     a1, a1, 16
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    lbu     t6, 0x13E2(a2)             # 8011B9B2
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    bne     v1, t6, lbl_8006D96C
    addu    v0, a0, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v0, a0, $at
    lhu     t7, 0x0248(v0)             # 00000248
    addiu   a3, $zero, 0x0046          # a3 = 00000046
    addiu   a0, $zero, 0x0046          # a0 = 00000046
    beq     a3, t7, lbl_8006D964
    nop
    sh      a0, 0x0248(v0)             # 00000248
lbl_8006D964:
    b       lbl_8006D980
    lbu     t9, 0x13E3(a2)             # 8011B9B3
lbl_8006D96C:
    lhu     t8, 0x0248(v0)             # 00000248
    beql    v1, t8, lbl_8006D980
    lbu     t9, 0x13E3(a2)             # 8011B9B3
    sh      a1, 0x0248(v0)             # 00000248
    lbu     t9, 0x13E3(a2)             # 8011B9B3
lbl_8006D980:
    addiu   a0, $zero, 0x0046          # a0 = 00000046
    addiu   a3, $zero, 0x0046          # a3 = 00000046
    bnel    v1, t9, lbl_8006D9A8
    lhu     t1, 0x024A(v0)             # 0000024A
    lhu     t0, 0x024A(v0)             # 0000024A
    beql    a3, t0, lbl_8006D9B8
    lbu     t2, 0x13E4(a2)             # 8011B9B4
    b       lbl_8006D9B4
    sh      a0, 0x024A(v0)             # 0000024A
    lhu     t1, 0x024A(v0)             # 0000024A
lbl_8006D9A8:
    beql    v1, t1, lbl_8006D9B8
    lbu     t2, 0x13E4(a2)             # 8011B9B4
    sh      a1, 0x024A(v0)             # 0000024A
lbl_8006D9B4:
    lbu     t2, 0x13E4(a2)             # 8011B9B4
lbl_8006D9B8:
    bnel    v1, t2, lbl_8006D9D8
    lhu     t4, 0x024C(v0)             # 0000024C
    lhu     t3, 0x024C(v0)             # 0000024C
    beql    a3, t3, lbl_8006D9E8
    lbu     t5, 0x13E5(a2)             # 8011B9B5
    b       lbl_8006D9E4
    sh      a0, 0x024C(v0)             # 0000024C
    lhu     t4, 0x024C(v0)             # 0000024C
lbl_8006D9D8:
    beql    v1, t4, lbl_8006D9E8
    lbu     t5, 0x13E5(a2)             # 8011B9B5
    sh      a1, 0x024C(v0)             # 0000024C
lbl_8006D9E4:
    lbu     t5, 0x13E5(a2)             # 8011B9B5
lbl_8006D9E8:
    bnel    v1, t5, lbl_8006DA08
    lhu     t7, 0x024E(v0)             # 0000024E
    lhu     t6, 0x024E(v0)             # 0000024E
    beql    a3, t6, lbl_8006DA18
    lbu     t8, 0x13E6(a2)             # 8011B9B6
    b       lbl_8006DA14
    sh      a0, 0x024E(v0)             # 0000024E
    lhu     t7, 0x024E(v0)             # 0000024E
lbl_8006DA08:
    beql    v1, t7, lbl_8006DA18
    lbu     t8, 0x13E6(a2)             # 8011B9B6
    sh      a1, 0x024E(v0)             # 0000024E
lbl_8006DA14:
    lbu     t8, 0x13E6(a2)             # 8011B9B6
lbl_8006DA18:
    bnel    v1, t8, lbl_8006DA38
    lhu     t0, 0x0246(v0)             # 00000246
    lhu     t9, 0x0246(v0)             # 00000246
    beq     a3, t9, lbl_8006DA44
    nop
    jr      $ra
    sh      a0, 0x0246(v0)             # 00000246
lbl_8006DA34:
    lhu     t0, 0x0246(v0)             # 00000246
lbl_8006DA38:
    beq     v1, t0, lbl_8006DA44
    nop
    sh      a1, 0x0246(v0)             # 00000246
lbl_8006DA44:
    jr      $ra
    nop


func_8006DA4C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x4649(t6)            # 8011B9B7
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    beq     t6, $zero, lbl_8006DA98
    addu    v0, a0, $at
    sll     a1, a2, 16
    jal     func_8006D914
    sra     a1, a1, 16
    b       lbl_8006DB14
    lw      $ra, 0x0014($sp)
lbl_8006DA98:
    lhu     v1, 0x0248(v0)             # 00000248
    beq     v1, $zero, lbl_8006DAB0
    slt     $at, a1, v1
    beql    $at, $zero, lbl_8006DAB4
    lhu     v1, 0x0246(v0)             # 00000246
    sh      a1, 0x0248(v0)             # 00000248
lbl_8006DAB0:
    lhu     v1, 0x0246(v0)             # 00000246
lbl_8006DAB4:
    beq     v1, $zero, lbl_8006DAC8
    slt     $at, a1, v1
    beql    $at, $zero, lbl_8006DACC
    lhu     v1, 0x024A(v0)             # 0000024A
    sh      a1, 0x0246(v0)             # 00000246
lbl_8006DAC8:
    lhu     v1, 0x024A(v0)             # 0000024A
lbl_8006DACC:
    beq     v1, $zero, lbl_8006DAE0
    slt     $at, a1, v1
    beql    $at, $zero, lbl_8006DAE4
    lhu     v1, 0x024C(v0)             # 0000024C
    sh      a1, 0x024A(v0)             # 0000024A
lbl_8006DAE0:
    lhu     v1, 0x024C(v0)             # 0000024C
lbl_8006DAE4:
    beq     v1, $zero, lbl_8006DAF8
    slt     $at, a1, v1
    beql    $at, $zero, lbl_8006DAFC
    lhu     v1, 0x024E(v0)             # 0000024E
    sh      a1, 0x024C(v0)             # 0000024C
lbl_8006DAF8:
    lhu     v1, 0x024E(v0)             # 0000024E
lbl_8006DAFC:
    beq     v1, $zero, lbl_8006DB10
    slt     $at, a1, v1
    beql    $at, $zero, lbl_8006DB14
    lw      $ra, 0x0014($sp)
    sh      a1, 0x024E(v0)             # 0000024E
lbl_8006DB10:
    lw      $ra, 0x0014($sp)
lbl_8006DB14:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8006DB20:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a1, 0x002C($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x4648(v0)            # 8011B9B8
    subu    a2, a3, a1
    sll     a2, a2, 16
    addiu   t6, v0, 0xFFFF             # t6 = 8011FFFF
    sltiu   $at, t6, 0x000D
    beq     $at, $zero, lbl_8006E2F8
    sra     a2, a2, 16
    sll     t6, t6,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t6
    lw      t6, -0x7900($at)           # 80108700
    jr      t6
    nop
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_8006DB98
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     t7, 0x0248(v1)             # 00000248
    beql    a3, t7, lbl_8006DBC0
    lhu     v0, 0x0246(v1)             # 00000246
    b       lbl_8006DBBC
    sh      a2, 0x0248(v1)             # 00000248
lbl_8006DB98:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     v0, 0x0248(v1)             # 00000248
    beq     v0, $zero, lbl_8006DBBC
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DBC0
    lhu     v0, 0x0246(v1)             # 00000246
    sh      a1, 0x0248(v1)             # 00000248
lbl_8006DBBC:
    lhu     v0, 0x0246(v1)             # 00000246
lbl_8006DBC0:
    beq     v0, $zero, lbl_8006DBD4
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DBD8
    lhu     v0, 0x024A(v1)             # 0000024A
    sh      a1, 0x0246(v1)             # 00000246
lbl_8006DBD4:
    lhu     v0, 0x024A(v1)             # 0000024A
lbl_8006DBD8:
    beq     v0, $zero, lbl_8006DBEC
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DBF0
    lhu     v0, 0x024C(v1)             # 0000024C
    sh      a1, 0x024A(v1)             # 0000024A
lbl_8006DBEC:
    lhu     v0, 0x024C(v1)             # 0000024C
lbl_8006DBF0:
    beq     v0, $zero, lbl_8006DC04
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DC08
    lhu     v0, 0x024E(v1)             # 0000024E
    sh      a1, 0x024C(v1)             # 0000024C
lbl_8006DC04:
    lhu     v0, 0x024E(v1)             # 0000024E
lbl_8006DC08:
    beq     v0, $zero, lbl_8006DC1C
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DC20
    lhu     v0, 0x0250(v1)             # 00000250
    sh      a1, 0x024E(v1)             # 0000024E
lbl_8006DC1C:
    lhu     v0, 0x0250(v1)             # 00000250
lbl_8006DC20:
    beq     v0, $zero, lbl_8006DC34
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DC38
    lhu     v0, 0x0252(v1)             # 00000252
    sh      a1, 0x0250(v1)             # 00000250
lbl_8006DC34:
    lhu     v0, 0x0252(v1)             # 00000252
lbl_8006DC38:
    beq     v0, $zero, lbl_8006DC4C
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DC50
    lhu     v0, 0x0254(v1)             # 00000254
    sh      a1, 0x0252(v1)             # 00000252
lbl_8006DC4C:
    lhu     v0, 0x0254(v1)             # 00000254
lbl_8006DC50:
    beq     v0, $zero, lbl_8006E2F8
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E2FC
    lui     t2, 0x0001                 # t2 = 00010000
    b       lbl_8006E2F8
    sh      a1, 0x0254(v1)             # 00000254
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     v0, 0x0246(v1)             # 00000246
    beq     v0, $zero, lbl_8006DC8C
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DC90
    sw      v1, 0x001C($sp)
    sh      a1, 0x0246(v1)             # 00000246
lbl_8006DC8C:
    sw      v1, 0x001C($sp)
lbl_8006DC90:
    sw      a0, 0x0028($sp)
    sh      a1, 0x002E($sp)
    jal     func_8006DA4C
    sh      a2, 0x0022($sp)
    lw      v1, 0x001C($sp)
    lh      a1, 0x002E($sp)
    lw      a0, 0x0028($sp)
    lhu     v0, 0x0252(v1)             # 00000252
    lh      a2, 0x0022($sp)
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    beq     v0, $zero, lbl_8006DCCC
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DCD0
    lhu     v0, 0x0254(v1)             # 00000254
    sh      a1, 0x0252(v1)             # 00000252
lbl_8006DCCC:
    lhu     v0, 0x0254(v1)             # 00000254
lbl_8006DCD0:
    beq     v0, $zero, lbl_8006DCE4
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DCE8
    lhu     t8, 0x0250(v1)             # 00000250
    sh      a1, 0x0254(v1)             # 00000254
lbl_8006DCE4:
    lhu     t8, 0x0250(v1)             # 00000250
lbl_8006DCE8:
    beql    a3, t8, lbl_8006E2FC
    lui     t2, 0x0001                 # t2 = 00010000
    b       lbl_8006E2F8
    sh      a2, 0x0250(v1)             # 00000250
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     v0, 0x0248(v1)             # 00000248
    beq     v0, $zero, lbl_8006DD1C
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DD20
    lhu     v0, 0x0246(v1)             # 00000246
    sh      a1, 0x0248(v1)             # 00000248
lbl_8006DD1C:
    lhu     v0, 0x0246(v1)             # 00000246
lbl_8006DD20:
    beq     v0, $zero, lbl_8006DD34
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DD38
    lhu     v0, 0x024A(v1)             # 0000024A
    sh      a1, 0x0246(v1)             # 00000246
lbl_8006DD34:
    lhu     v0, 0x024A(v1)             # 0000024A
lbl_8006DD38:
    beq     v0, $zero, lbl_8006DD4C
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DD50
    lhu     v0, 0x024C(v1)             # 0000024C
    sh      a1, 0x024A(v1)             # 0000024A
lbl_8006DD4C:
    lhu     v0, 0x024C(v1)             # 0000024C
lbl_8006DD50:
    beq     v0, $zero, lbl_8006DD64
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DD68
    lhu     v0, 0x024E(v1)             # 0000024E
    sh      a1, 0x024C(v1)             # 0000024C
lbl_8006DD64:
    lhu     v0, 0x024E(v1)             # 0000024E
lbl_8006DD68:
    beq     v0, $zero, lbl_8006DD7C
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DD80
    lhu     v0, 0x0250(v1)             # 00000250
    sh      a1, 0x024E(v1)             # 0000024E
lbl_8006DD7C:
    lhu     v0, 0x0250(v1)             # 00000250
lbl_8006DD80:
    beq     v0, $zero, lbl_8006DD94
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DD98
    lhu     v0, 0x0252(v1)             # 00000252
    sh      a1, 0x0250(v1)             # 00000250
lbl_8006DD94:
    lhu     v0, 0x0252(v1)             # 00000252
lbl_8006DD98:
    beq     v0, $zero, lbl_8006DDAC
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DDB0
    lhu     v0, 0x0254(v1)             # 00000254
    sh      a1, 0x0252(v1)             # 00000252
lbl_8006DDAC:
    lhu     v0, 0x0254(v1)             # 00000254
lbl_8006DDB0:
    beq     v0, $zero, lbl_8006DDC4
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DDC8
    lhu     t9, 0x0246(v1)             # 00000246
    sh      a1, 0x0254(v1)             # 00000254
lbl_8006DDC4:
    lhu     t9, 0x0246(v1)             # 00000246
lbl_8006DDC8:
    beql    a3, t9, lbl_8006E2FC
    lui     t2, 0x0001                 # t2 = 00010000
    b       lbl_8006E2F8
    sh      a2, 0x0246(v1)             # 00000246
    sw      a0, 0x0028($sp)
    sh      a1, 0x002E($sp)
    jal     func_8006DA4C
    sh      a2, 0x0022($sp)
    lw      a0, 0x0028($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     v0, 0x0254(v1)             # 00000254
    lh      a1, 0x002E($sp)
    lh      a2, 0x0022($sp)
    beq     v0, $zero, lbl_8006DE1C
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DE20
    lhu     t0, 0x0246(v1)             # 00000246
    sh      a1, 0x0254(v1)             # 00000254
lbl_8006DE1C:
    lhu     t0, 0x0246(v1)             # 00000246
lbl_8006DE20:
    beql    a3, t0, lbl_8006DE30
    lhu     t1, 0x0250(v1)             # 00000250
    sh      a2, 0x0246(v1)             # 00000246
    lhu     t1, 0x0250(v1)             # 00000250
lbl_8006DE30:
    beql    a3, t1, lbl_8006DE40
    lhu     t2, 0x0252(v1)             # 00000252
    sh      a2, 0x0250(v1)             # 00000250
    lhu     t2, 0x0252(v1)             # 00000252
lbl_8006DE40:
    beql    a3, t2, lbl_8006E2FC
    lui     t2, 0x0001                 # t2 = 00010000
    b       lbl_8006E2F8
    sh      a2, 0x0252(v1)             # 00000252
    sw      a0, 0x0028($sp)
    jal     func_8006DA4C
    sh      a2, 0x0022($sp)
    lw      a0, 0x0028($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     t3, 0x0246(v1)             # 00000246
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    lh      a2, 0x0022($sp)
    beql    a3, t3, lbl_8006DE88
    lhu     t4, 0x0250(v1)             # 00000250
    sh      a2, 0x0246(v1)             # 00000246
    lhu     t4, 0x0250(v1)             # 00000250
lbl_8006DE88:
    beql    a3, t4, lbl_8006DE98
    lhu     t5, 0x0252(v1)             # 00000252
    sh      a2, 0x0250(v1)             # 00000250
    lhu     t5, 0x0252(v1)             # 00000252
lbl_8006DE98:
    beql    a3, t5, lbl_8006DEA8
    lh      t6, 0x00A4(a0)             # 000000A4
    sh      a2, 0x0252(v1)             # 00000252
    lh      t6, 0x00A4(a0)             # 000000A4
lbl_8006DEA8:
    addiu   t7, t6, 0xFFAF             # t7 = FFFFFFAF
    sltiu   $at, t7, 0x0014
    beq     $at, $zero, lbl_8006DEF0
    sll     t7, t7,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t7
    lw      t7, -0x78CC($at)           # 80108734
    jr      t7
    nop
    lhu     t8, 0x0254(v1)             # 00000254
    addiu   t9, $zero, 0x00AA          # t9 = 000000AA
    slti    $at, t8, 0x00AA
    beq     $at, $zero, lbl_8006DEE8
    nop
    b       lbl_8006E2F8
    sh      a2, 0x0254(v1)             # 00000254
lbl_8006DEE8:
    b       lbl_8006E2F8
    sh      t9, 0x0254(v1)             # 00000254
lbl_8006DEF0:
    lhu     t0, 0x0254(v1)             # 00000254
    beql    a3, t0, lbl_8006E2FC
    lui     t2, 0x0001                 # t2 = 00010000
    b       lbl_8006E2F8
    sh      a2, 0x0254(v1)             # 00000254
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     v0, 0x0254(v1)             # 00000254
    beq     v0, $zero, lbl_8006DF28
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DF2C
    sll     a1, a2, 16
    sh      a1, 0x0254(v1)             # 00000254
lbl_8006DF28:
    sll     a1, a2, 16
lbl_8006DF2C:
    sra     a1, a1, 16
    sw      v1, 0x001C($sp)
    sw      a0, 0x0028($sp)
    jal     func_8006D914
    sh      a2, 0x0022($sp)
    lw      v1, 0x001C($sp)
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    lw      a0, 0x0028($sp)
    lhu     t1, 0x0250(v1)             # 00000250
    lh      a2, 0x0022($sp)
    beql    a3, t1, lbl_8006DF64
    lhu     t2, 0x0252(v1)             # 00000252
    sh      a2, 0x0250(v1)             # 00000250
    lhu     t2, 0x0252(v1)             # 00000252
lbl_8006DF64:
    beql    a3, t2, lbl_8006E2FC
    lui     t2, 0x0001                 # t2 = 00010000
    b       lbl_8006E2F8
    sh      a2, 0x0252(v1)             # 00000252
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     v0, 0x0248(v1)             # 00000248
    beq     v0, $zero, lbl_8006DF98
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DF9C
    lhu     v0, 0x0246(v1)             # 00000246
    sh      a1, 0x0248(v1)             # 00000248
lbl_8006DF98:
    lhu     v0, 0x0246(v1)             # 00000246
lbl_8006DF9C:
    beq     v0, $zero, lbl_8006DFB0
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DFB4
    lhu     v0, 0x024A(v1)             # 0000024A
    sh      a1, 0x0246(v1)             # 00000246
lbl_8006DFB0:
    lhu     v0, 0x024A(v1)             # 0000024A
lbl_8006DFB4:
    beq     v0, $zero, lbl_8006DFC8
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DFCC
    lhu     v0, 0x024C(v1)             # 0000024C
    sh      a1, 0x024A(v1)             # 0000024A
lbl_8006DFC8:
    lhu     v0, 0x024C(v1)             # 0000024C
lbl_8006DFCC:
    beq     v0, $zero, lbl_8006DFE0
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DFE4
    lhu     v0, 0x024E(v1)             # 0000024E
    sh      a1, 0x024C(v1)             # 0000024C
lbl_8006DFE0:
    lhu     v0, 0x024E(v1)             # 0000024E
lbl_8006DFE4:
    beq     v0, $zero, lbl_8006DFF8
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006DFFC
    lhu     v0, 0x0254(v1)             # 00000254
    sh      a1, 0x024E(v1)             # 0000024E
lbl_8006DFF8:
    lhu     v0, 0x0254(v1)             # 00000254
lbl_8006DFFC:
    beq     v0, $zero, lbl_8006E010
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E014
    lhu     t3, 0x0250(v1)             # 00000250
    sh      a1, 0x0254(v1)             # 00000254
lbl_8006E010:
    lhu     t3, 0x0250(v1)             # 00000250
lbl_8006E014:
    beql    a3, t3, lbl_8006E024
    lhu     t4, 0x0252(v1)             # 00000252
    sh      a2, 0x0250(v1)             # 00000250
    lhu     t4, 0x0252(v1)             # 00000252
lbl_8006E024:
    beql    a3, t4, lbl_8006E2FC
    lui     t2, 0x0001                 # t2 = 00010000
    b       lbl_8006E2F8
    sh      a2, 0x0252(v1)             # 00000252
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     v0, 0x0246(v1)             # 00000246
    beq     v0, $zero, lbl_8006E058
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E05C
    lhu     v0, 0x024A(v1)             # 0000024A
    sh      a1, 0x0246(v1)             # 00000246
lbl_8006E058:
    lhu     v0, 0x024A(v1)             # 0000024A
lbl_8006E05C:
    beq     v0, $zero, lbl_8006E070
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E074
    lhu     v0, 0x024C(v1)             # 0000024C
    sh      a1, 0x024A(v1)             # 0000024A
lbl_8006E070:
    lhu     v0, 0x024C(v1)             # 0000024C
lbl_8006E074:
    beq     v0, $zero, lbl_8006E088
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E08C
    lhu     v0, 0x024E(v1)             # 0000024E
    sh      a1, 0x024C(v1)             # 0000024C
lbl_8006E088:
    lhu     v0, 0x024E(v1)             # 0000024E
lbl_8006E08C:
    beq     v0, $zero, lbl_8006E0A0
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E0A4
    lhu     v0, 0x0250(v1)             # 00000250
    sh      a1, 0x024E(v1)             # 0000024E
lbl_8006E0A0:
    lhu     v0, 0x0250(v1)             # 00000250
lbl_8006E0A4:
    beq     v0, $zero, lbl_8006E0B8
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E0BC
    lhu     v0, 0x0252(v1)             # 00000252
    sh      a1, 0x0250(v1)             # 00000250
lbl_8006E0B8:
    lhu     v0, 0x0252(v1)             # 00000252
lbl_8006E0BC:
    beq     v0, $zero, lbl_8006E0D0
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E0D4
    lhu     v0, 0x0254(v1)             # 00000254
    sh      a1, 0x0252(v1)             # 00000252
lbl_8006E0D0:
    lhu     v0, 0x0254(v1)             # 00000254
lbl_8006E0D4:
    beq     v0, $zero, lbl_8006E0E8
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E0EC
    lhu     t5, 0x0248(v1)             # 00000248
    sh      a1, 0x0254(v1)             # 00000254
lbl_8006E0E8:
    lhu     t5, 0x0248(v1)             # 00000248
lbl_8006E0EC:
    beql    a3, t5, lbl_8006E2FC
    lui     t2, 0x0001                 # t2 = 00010000
    b       lbl_8006E2F8
    sh      a2, 0x0248(v1)             # 00000248
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     v0, 0x0248(v1)             # 00000248
    beq     v0, $zero, lbl_8006E120
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E124
    lhu     v0, 0x0246(v1)             # 00000246
    sh      a1, 0x0248(v1)             # 00000248
lbl_8006E120:
    lhu     v0, 0x0246(v1)             # 00000246
lbl_8006E124:
    beq     v0, $zero, lbl_8006E138
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E13C
    lhu     v0, 0x024A(v1)             # 0000024A
    sh      a1, 0x0246(v1)             # 00000246
lbl_8006E138:
    lhu     v0, 0x024A(v1)             # 0000024A
lbl_8006E13C:
    beq     v0, $zero, lbl_8006E150
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E154
    lhu     v0, 0x024C(v1)             # 0000024C
    sh      a1, 0x024A(v1)             # 0000024A
lbl_8006E150:
    lhu     v0, 0x024C(v1)             # 0000024C
lbl_8006E154:
    beq     v0, $zero, lbl_8006E168
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E16C
    lhu     v0, 0x024E(v1)             # 0000024E
    sh      a1, 0x024C(v1)             # 0000024C
lbl_8006E168:
    lhu     v0, 0x024E(v1)             # 0000024E
lbl_8006E16C:
    beq     v0, $zero, lbl_8006E180
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E184
    lhu     v0, 0x0254(v1)             # 00000254
    sh      a1, 0x024E(v1)             # 0000024E
lbl_8006E180:
    lhu     v0, 0x0254(v1)             # 00000254
lbl_8006E184:
    beq     v0, $zero, lbl_8006E198
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E19C
    lhu     v0, 0x0252(v1)             # 00000252
    sh      a1, 0x0254(v1)             # 00000254
lbl_8006E198:
    lhu     v0, 0x0252(v1)             # 00000252
lbl_8006E19C:
    beq     v0, $zero, lbl_8006E1B0
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E1B4
    lhu     t6, 0x0250(v1)             # 00000250
    sh      a1, 0x0252(v1)             # 00000252
lbl_8006E1B0:
    lhu     t6, 0x0250(v1)             # 00000250
lbl_8006E1B4:
    beql    a3, t6, lbl_8006E2FC
    lui     t2, 0x0001                 # t2 = 00010000
    b       lbl_8006E2F8
    sh      a2, 0x0250(v1)             # 00000250
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     t7, 0x0246(v1)             # 00000246
    beql    a3, t7, lbl_8006E1E4
    lhu     t8, 0x0248(v1)             # 00000248
    sh      a2, 0x0246(v1)             # 00000246
    lhu     t8, 0x0248(v1)             # 00000248
lbl_8006E1E4:
    beql    a3, t8, lbl_8006E1F4
    lhu     t9, 0x0254(v1)             # 00000254
    sh      a2, 0x0248(v1)             # 00000248
    lhu     t9, 0x0254(v1)             # 00000254
lbl_8006E1F4:
    beql    a3, t9, lbl_8006E204
    lhu     v0, 0x024A(v1)             # 0000024A
    sh      a2, 0x0254(v1)             # 00000254
    lhu     v0, 0x024A(v1)             # 0000024A
lbl_8006E204:
    beq     v0, $zero, lbl_8006E218
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E21C
    lhu     v0, 0x024C(v1)             # 0000024C
    sh      a1, 0x024A(v1)             # 0000024A
lbl_8006E218:
    lhu     v0, 0x024C(v1)             # 0000024C
lbl_8006E21C:
    beq     v0, $zero, lbl_8006E230
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E234
    lhu     v0, 0x024E(v1)             # 0000024E
    sh      a1, 0x024C(v1)             # 0000024C
lbl_8006E230:
    lhu     v0, 0x024E(v1)             # 0000024E
lbl_8006E234:
    beq     v0, $zero, lbl_8006E248
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E24C
    lhu     v0, 0x0252(v1)             # 00000252
    sh      a1, 0x024E(v1)             # 0000024E
lbl_8006E248:
    lhu     v0, 0x0252(v1)             # 00000252
lbl_8006E24C:
    beq     v0, $zero, lbl_8006E260
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E264
    lhu     v0, 0x0250(v1)             # 00000250
    sh      a1, 0x0252(v1)             # 00000252
lbl_8006E260:
    lhu     v0, 0x0250(v1)             # 00000250
lbl_8006E264:
    beq     v0, $zero, lbl_8006E2F8
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E2FC
    lui     t2, 0x0001                 # t2 = 00010000
    b       lbl_8006E2F8
    sh      a1, 0x0250(v1)             # 00000250
    sw      a0, 0x0028($sp)
    sh      a1, 0x002E($sp)
    jal     func_8006DA4C
    sh      a2, 0x0022($sp)
    lw      a0, 0x0028($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     v0, 0x0254(v1)             # 00000254
    lh      a1, 0x002E($sp)
    lh      a2, 0x0022($sp)
    beq     v0, $zero, lbl_8006E2C0
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E2C4
    lhu     v0, 0x0246(v1)             # 00000246
    sh      a1, 0x0254(v1)             # 00000254
lbl_8006E2C0:
    lhu     v0, 0x0246(v1)             # 00000246
lbl_8006E2C4:
    beq     v0, $zero, lbl_8006E2D8
    slt     $at, a1, v0
    beql    $at, $zero, lbl_8006E2DC
    lhu     t0, 0x0250(v1)             # 00000250
    sh      a1, 0x0246(v1)             # 00000246
lbl_8006E2D8:
    lhu     t0, 0x0250(v1)             # 00000250
lbl_8006E2DC:
    beql    a3, t0, lbl_8006E2EC
    lhu     t1, 0x0252(v1)             # 00000252
    sh      a2, 0x0250(v1)             # 00000250
    lhu     t1, 0x0252(v1)             # 00000252
lbl_8006E2EC:
    beql    a3, t1, lbl_8006E2FC
    lui     t2, 0x0001                 # t2 = 00010000
    sh      a2, 0x0252(v1)             # 00000252
lbl_8006E2F8:
    lui     t2, 0x0001                 # t2 = 00010000
lbl_8006E2FC:
    addu    t2, t2, a0
    lbu     t2, 0x1CBF(t2)             # 00011CBF
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t2, $at, lbl_8006E330
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lhu     t3, 0x0254(v1)             # 00000254
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    slti    $at, t3, 0x00FF
    bnel    $at, $zero, lbl_8006E334
    lw      $ra, 0x0014($sp)
    sh      t4, 0x0254(v1)             # 00000254
lbl_8006E330:
    lw      $ra, 0x0014($sp)
lbl_8006E334:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8006E340:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    ori     v1, $zero, 0xFFF0          # v1 = 0000FFF0
    lw      t6, 0x0038($sp)
    lw      v0, 0x0008(a2)             # 8011A5D8
    or      t0, $zero, $zero           # t0 = 00000000
    lw      t7, 0x1C44(t6)             # 00001C44
    slt     $at, v0, v1
    bne     $at, $zero, lbl_8006E38C
    sw      t7, 0x0030($sp)
    lh      t8, 0x00A4(t6)             # 000000A4
    addiu   $at, $zero, 0x0063         # $at = 00000063
    bne     t8, $at, lbl_8006F214
    nop
    bne     v1, v0, lbl_8006F214
    nop
lbl_8006E38C:
    lw      t9, 0x0030($sp)
    sb      $zero, 0x13E7(a2)          # 8011B9B7
    lw      t8, 0x0038($sp)
    lw      t7, 0x066C(t9)             # 0000066C
    lui     $at, 0x0001                # $at = 00010000
    addu    t2, t8, $at
    sll     t6, t7,  8
    bltzl   t6, lbl_8006E3F8
    lbu     t6, 0x0068(a2)             # 8011A638
    lb      t9, 0x1E5C(t2)             # 00001E5C
    slti    $at, t9, 0x0002
    beql    $at, $zero, lbl_8006E3F8
    lbu     t6, 0x0068(a2)             # 8011A638
    lh      t7, 0x00A4(t8)             # 000000A4
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    or      a0, t8, $zero              # a0 = 00000000
    bne     t7, $at, lbl_8006E6D0
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    sh      t0, 0x0028($sp)
    jal     func_8002049C
    sw      t2, 0x0018($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lh      t0, 0x0028($sp)
    beq     v0, $zero, lbl_8006E6D0
    lw      t2, 0x0018($sp)
    lbu     t6, 0x0068(a2)             # 8011A638
lbl_8006E3F8:
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beq     t5, t6, lbl_8006E6A4
    lw      t7, 0x0030($sp)
    lbu     t7, 0x13E2(a2)             # 8011B9B2
    lw      t2, 0x0038($sp)
    lui     $at, 0x0001                # $at = 00010000
    sb      t9, 0x13E7(a2)             # 8011B9B7
    bne     t5, t7, lbl_8006E430
    addu    t2, t2, $at
    sb      $zero, 0x13E5(a2)          # 8011B9B5
    sb      $zero, 0x13E4(a2)          # 8011B9B4
    sb      $zero, 0x13E3(a2)          # 8011B9B3
    sb      $zero, 0x13E2(a2)          # 8011B9B2
lbl_8006E430:
    lbu     v1, 0x0068(a2)             # 8011A638
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v1, $at, lbl_8006E5A8
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_8006E5A8
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beql    v1, $at, lbl_8006E5AC
    lbu     t6, 0x241B(t2)             # 0000241B
    beql    t5, v1, lbl_8006E5AC
    lbu     t6, 0x241B(t2)             # 0000241B
    lw      t8, 0x0038($sp)
    sb      v1, 0x13E2(a2)             # 8011B9B2
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    lh      t6, 0x00A4(t8)             # 000000A4
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    or      a0, t8, $zero              # a0 = 00000000
    bnel    t6, $at, lbl_8006E4D4
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sh      t0, 0x0028($sp)
    jal     func_8002049C
    sw      t2, 0x0018($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lh      t0, 0x0028($sp)
    lw      t2, 0x0018($sp)
    beq     v0, $zero, lbl_8006E4D0
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t9, $zero, 0x0009          # t9 = 00000009
    sb      t9, 0x0068(a2)             # 8011A638
    lw      a0, 0x0038($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    sh      t0, 0x0028($sp)
    jal     func_8006FB50
    sw      t2, 0x0018($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lh      t0, 0x0028($sp)
    lw      t2, 0x0018($sp)
    b       lbl_8006E57C
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
lbl_8006E4D0:
    addiu   t7, $zero, 0x0003          # t7 = 00000003
lbl_8006E4D4:
    sb      t7, 0x0068(a2)             # 8011A638
    lb      t6, 0x1E5C(t2)             # 00001E5C
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    or      a1, $zero, $zero           # a1 = 00000000
    slti    $at, t6, 0x0002
    bnel    $at, $zero, lbl_8006E544
    lbu     t7, 0x0077(a2)             # 8011A647
    lw      t8, 0x0004(a2)             # 8011A5D4
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    beq     t8, $zero, lbl_8006E50C
    nop
    b       lbl_8006E50C
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_8006E50C:
    bnel    v0, a3, lbl_8006E51C
    lw      a0, 0x0038($sp)
    sb      t9, 0x0068(a2)             # 8011A638
    lw      a0, 0x0038($sp)
lbl_8006E51C:
    sh      t0, 0x0028($sp)
    jal     func_8006FB50
    sw      t2, 0x0018($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lh      t0, 0x0028($sp)
    lw      t2, 0x0018($sp)
    b       lbl_8006E57C
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    lbu     t7, 0x0077(a2)             # 8011A647
lbl_8006E544:
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    lw      a0, 0x0038($sp)
    bne     t5, t7, lbl_8006E55C
    or      a1, $zero, $zero           # a1 = 00000000
    b       lbl_8006E57C
    sb      t1, 0x0068(a2)             # 8011A638
lbl_8006E55C:
    sh      t0, 0x0028($sp)
    jal     func_8006FB50
    sw      t2, 0x0018($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lh      t0, 0x0028($sp)
    lw      t2, 0x0018($sp)
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
lbl_8006E57C:
    sb      t1, 0x13E5(a2)             # 8011B9B5
    sb      t1, 0x13E4(a2)             # 8011B9B4
    sb      t1, 0x13E3(a2)             # 8011B9B3
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    sh      t0, 0x0028($sp)
    jal     func_8006D8E0
    sw      t2, 0x0018($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lh      t0, 0x0028($sp)
    lw      t2, 0x0018($sp)
lbl_8006E5A8:
    lbu     t6, 0x241B(t2)             # 0000241B
lbl_8006E5AC:
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    beql    t6, $zero, lbl_8006E5D4
    lhu     t8, 0x1404(a2)             # 8011B9D4
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
    lhu     t8, 0x1404(a2)             # 8011B9D4
lbl_8006E5D4:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   a0, $zero, 0x0008          # a0 = 00000008
    bnel    v1, t8, lbl_8006E600
    lb      t9, 0x1E5C(t2)             # 00001E5C
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
    lb      t9, 0x1E5C(t2)             # 00001E5C
lbl_8006E600:
    addiu   a0, $zero, 0x0008          # a0 = 00000008
    lw      t7, 0x0038($sp)
    slti    $at, t9, 0x0002
    bnel    $at, $zero, lbl_8006E630
    lh      t6, 0x00A4(t7)             # 000000A4
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
    lh      t6, 0x00A4(t7)             # 000000A4
lbl_8006E630:
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    or      a0, t7, $zero              # a0 = 00000000
    bne     t6, $at, lbl_8006E674
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    jal     func_8002049C
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    beq     v0, $zero, lbl_8006E674
    lh      t0, 0x0028($sp)
    addiu   a0, $zero, 0x0008          # a0 = 00000008
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
lbl_8006E674:
    lw      t8, 0x0030($sp)
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    lw      t9, 0x066C(t8)             # 0000066C
    sll     t6, t9,  8
    bgez    t6, lbl_8006F214
    nop
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
lbl_8006E6A4:
    lw      t8, 0x066C(t7)             # 0000066C
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    sll     t9, t8,  8
    bgez    t9, lbl_8006F214
    nop
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
lbl_8006E6D0:
    lw      t6, 0x0038($sp)
    addiu   $at, $zero, 0x0044         # $at = 00000044
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lh      v0, 0x00A4(t6)             # 000000A4
    bnel    v0, $at, lbl_8006E704
    addiu   $at, $zero, 0x0049         # $at = 00000049
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
    addiu   $at, $zero, 0x0049         # $at = 00000049
lbl_8006E704:
    bne     v0, $at, lbl_8006E83C
    lw      t7, 0x0038($sp)
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sb      t7, 0x13E7(a2)             # 8011B9B7
    lbu     t8, 0x0750(t2)             # 00000750
    beql    t8, $zero, lbl_8006E790
    lbu     t7, 0x0068(a2)             # 8011A638
    lbu     v1, 0x0068(a2)             # 8011A638
    addiu   $at, $zero, 0x0059         # $at = 00000059
    addiu   t9, $zero, 0x0059          # t9 = 00000059
    beq     v1, $at, lbl_8006E760
    or      a1, $zero, $zero           # a1 = 00000000
    sb      v1, 0x13E2(a2)             # 8011B9B2
    sb      t9, 0x0068(a2)             # 8011A638
    sh      $zero, 0x13EA(a2)          # 8011B9BA
    lw      a0, 0x0038($sp)
    jal     func_8006FB50
    sh      t0, 0x0028($sp)
    jal     func_8006D8E0
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lh      t0, 0x0028($sp)
lbl_8006E760:
    lhu     t6, 0x13EA(a2)             # 8011B9BA
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    beq     t6, $at, lbl_8006F214
    nop
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
    lbu     t7, 0x0068(a2)             # 8011A638
lbl_8006E790:
    addiu   $at, $zero, 0x0059         # $at = 00000059
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    bne     t7, $at, lbl_8006E804
    addiu   a0, $zero, 0x0032          # a0 = 00000032
    lbu     t8, 0x13E2(a2)             # 8011B9B2
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    sh      $zero, 0x13EA(a2)          # 8011B9BA
    andi    t9, t8, 0x00FF             # t9 = 00000000
    beq     t5, t9, lbl_8006E7D4
    sb      t8, 0x0068(a2)             # 8011A638
    lw      a0, 0x0038($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8006FB50
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lh      t0, 0x0028($sp)
lbl_8006E7D4:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    sb      v0, 0x13E5(a2)             # 8011B9B5
    sb      v0, 0x13E4(a2)             # 8011B9B4
    sb      v0, 0x13E3(a2)             # 8011B9B3
    sb      v0, 0x13E2(a2)             # 8011B9B2
    addiu   a0, $zero, 0x0032          # a0 = 00000032
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
lbl_8006E804:
    lbu     t6, 0x13E2(a2)             # 8011B9B2
    bnel    t6, $zero, lbl_8006E818
    sb      v0, 0x13E5(a2)             # 8011B9B5
    sh      $zero, 0x13EA(a2)          # 8011B9BA
    sb      v0, 0x13E5(a2)             # 8011B9B5
lbl_8006E818:
    sb      v0, 0x13E4(a2)             # 8011B9B4
    sb      v0, 0x13E3(a2)             # 8011B9B3
    sb      v0, 0x13E2(a2)             # 8011B9B2
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
lbl_8006E83C:
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, t7
    lbu     t8, 0x03DC(t8)             # 000103DC
    or      a0, t7, $zero              # a0 = 00000000
    bne     t8, $zero, lbl_8006F214
    nop
    jal     func_80079DD0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    slti    $at, v0, 0x0002
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    bne     $at, $zero, lbl_8006E980
    lh      t0, 0x0028($sp)
    lw      a0, 0x0038($sp)
    jal     func_80079DD0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    slti    $at, v0, 0x0005
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    beq     $at, $zero, lbl_8006E980
    lh      t0, 0x0028($sp)
    lbu     t9, 0x13E2(a2)             # 8011B9B2
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    beq     t5, t9, lbl_8006E8A8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_8006E8A8:
    sb      t1, 0x13E2(a2)             # 8011B9B2
    lw      a0, 0x0038($sp)
lbl_8006E8B0:
    sh      a1, 0x002A($sp)
    jal     func_80079DD0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lh      a1, 0x002A($sp)
    lh      t0, 0x0028($sp)
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    bne     v0, $at, lbl_8006E92C
    addiu   $ra, $zero, 0x000A         # $ra = 0000000A
    addu    v1, a2, a1
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beql    $ra, v0, lbl_8006E918
    lbu     t8, 0x13E2(v1)             # 000013E2
    beql    v0, $at, lbl_8006E918
    lbu     t8, 0x13E2(v1)             # 000013E2
    lbu     t6, 0x13E2(v1)             # 000013E2
    bne     t6, $zero, lbl_8006E90C
    nop
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_8006E90C:
    b       lbl_8006E944
    sb      t1, 0x13E2(v1)             # 000013E2
    lbu     t8, 0x13E2(v1)             # 000013E2
lbl_8006E918:
    bne     t5, t8, lbl_8006E924
    nop
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_8006E924:
    b       lbl_8006E944
    sb      $zero, 0x13E2(v1)          # 000013E2
lbl_8006E92C:
    addu    v1, a2, a1
    lbu     t7, 0x13E2(v1)             # 000013E2
    bnel    t7, $zero, lbl_8006E944
    sb      t1, 0x13E2(v1)             # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t1, 0x13E2(v1)             # 000013E2
lbl_8006E944:
    addiu   a1, a1, 0x0001             # a1 = 00000001
    sll     a1, a1, 16
    sra     a1, a1, 16
    slti    $at, a1, 0x0004
    bnel    $at, $zero, lbl_8006E8B0
    lw      a0, 0x0038($sp)
    beq     t0, $zero, lbl_8006E968
    addiu   a0, $zero, 0x0032          # a0 = 00000032
    sh      $zero, 0x13EA(a2)          # 8011B9BA
lbl_8006E968:
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
lbl_8006E980:
    lw      t9, 0x0030($sp)
    lw      v0, 0x066C(t9)             # 0000066C
    sll     t6, v0, 10
    bltzl   t6, lbl_8006E9A8
    lbu     t6, 0x13E2(a2)             # 8011B9B2
    lw      t8, 0x0670(t9)             # 00000670
    sll     t7, t8, 13
    bgezl   t7, lbl_8006E9E8
    lhu     t9, 0x13FA(a2)             # 8011B9CA
    lbu     t6, 0x13E2(a2)             # 8011B9B2
lbl_8006E9A8:
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    beq     t5, t6, lbl_8006F214
    addiu   a0, $zero, 0x0032          # a0 = 00000032
    sb      t1, 0x13E2(a2)             # 8011B9B2
    sb      t1, 0x13E3(a2)             # 8011B9B3
    sb      t1, 0x13E4(a2)             # 8011B9B4
    sb      t1, 0x13E5(a2)             # 8011B9B5
    sh      $zero, 0x13EA(a2)          # 8011B9BA
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
    lhu     t9, 0x13FA(a2)             # 8011B9CA
lbl_8006E9E8:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    andi    t8, t9, 0x000F             # t8 = 00000000
    bne     v1, t8, lbl_8006EB54
    lw      t9, 0x0038($sp)
    sll     t7, v0,  8
    bgez    t7, lbl_8006EA50
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    lbu     v0, 0x0068(a2)             # 8011A638
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     t5, v0, lbl_8006EA48
    nop
    beq     v0, $at, lbl_8006EA48
    nop
    lbu     t6, 0x0077(a2)             # 8011A647
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    bnel    t5, t6, lbl_8006EA44
    sb      t9, 0x0068(a2)             # 8011A638
    b       lbl_8006EAA0
    sb      t1, 0x0068(a2)             # 8011A638
    sb      t9, 0x0068(a2)             # 8011A638
lbl_8006EA44:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_8006EA48:
    b       lbl_8006EAA0
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
lbl_8006EA50:
    lbu     v1, 0x0068(a2)             # 8011A638
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beq     t5, v1, lbl_8006EA6C
    or      v0, v1, $zero              # v0 = 00000001
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_8006EAA0
lbl_8006EA6C:
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    beq     v0, $at, lbl_8006EA9C
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    beq     v0, $at, lbl_8006EA9C
    addiu   $at, $zero, 0x003D         # $at = 0000003D
    beq     v0, $at, lbl_8006EA9C
    addiu   $at, $zero, 0x0055         # $at = 00000055
    beql    v0, $at, lbl_8006EAA0
    sb      v1, 0x13E2(a2)             # 8011B9B2
    lbu     t8, 0x13E2(a2)             # 8011B9B2
    b       lbl_8006EAA0
    sb      t8, 0x0068(a2)             # 8011A638
lbl_8006EA9C:
    sb      v1, 0x13E2(a2)             # 8011B9B2
lbl_8006EAA0:
    beq     t0, $zero, lbl_8006EACC
    lw      a0, 0x0038($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      t0, $zero, $zero           # t0 = 00000000
    jal     func_8006FB50
    sh      $zero, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lh      t0, 0x0028($sp)
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
lbl_8006EACC:
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    addiu   t3, $zero, 0x0007          # t3 = 00000007
    addu    v1, a2, a1
lbl_8006EADC:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    beq     t3, v0, lbl_8006EB10
    sra     a1, a1, 16
    beql    t4, v0, lbl_8006EB14
    lbu     t6, 0x13E2(v1)             # 000013E2
    lbu     t7, 0x13E2(v1)             # 000013E2
    bne     t7, $zero, lbl_8006EB08
    nop
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_8006EB08:
    b       lbl_8006EB24
    sb      t1, 0x13E2(v1)             # 000013E2
lbl_8006EB10:
    lbu     t6, 0x13E2(v1)             # 000013E2
lbl_8006EB14:
    bnel    t5, t6, lbl_8006EB24
    sb      $zero, 0x13E2(v1)          # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      $zero, 0x13E2(v1)          # 000013E2
lbl_8006EB24:
    slti    $at, a1, 0x0004
    bnel    $at, $zero, lbl_8006EADC
    addu    v1, a2, a1
    beq     t0, $zero, lbl_8006EB3C
    addiu   a0, $zero, 0x0032          # a0 = 00000032
    sh      $zero, 0x13EA(a2)          # 8011B9BA
lbl_8006EB3C:
    jal     func_8006D8E0
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006F214
    lh      t0, 0x0028($sp)
lbl_8006EB54:
    ori     $at, $at, 0x04F0           # $at = 000004F0
    addu    t8, t9, $at
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, t9
    sw      t8, 0x001C($sp)
    lbu     v0, 0x0753(v0)             # 00010753
    bne     v0, $zero, lbl_8006EC14
    nop
    lbu     v0, 0x0068(a2)             # 8011A638
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_8006EB9C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_8006EB9C
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_8006EB9C
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    bnel    t5, v0, lbl_8006EBEC
    lbu     v0, 0x13E2(a2)             # 8011B9B2
lbl_8006EB9C:
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    bnel    t5, v0, lbl_8006EBB8
    lbu     t6, 0x13E2(a2)             # 8011B9B2
    lhu     t7, 0x0F32(a2)             # 8011B502
    bnel    t7, $zero, lbl_8006ECA8
    lw      t9, 0x001C($sp)
    lbu     t6, 0x13E2(a2)             # 8011B9B2
lbl_8006EBB8:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    or      a1, $zero, $zero           # a1 = 00000000
    andi    t8, t6, 0x00FF             # t8 = 00000000
    beq     t5, t8, lbl_8006ECA4
    sb      t6, 0x0068(a2)             # 8011A638
    lw      a0, 0x0038($sp)
    jal     func_8006FB50
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006ECA4
    lh      t0, 0x0028($sp)
    lbu     v0, 0x13E2(a2)             # 8011B9B2
lbl_8006EBEC:
    bnel    t5, v0, lbl_8006ECA8
    lw      t9, 0x001C($sp)
    beq     t5, v0, lbl_8006EC04
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    bne     v0, $zero, lbl_8006EC0C
    nop
lbl_8006EC04:
    b       lbl_8006ECA4
    sb      $zero, 0x13E2(a2)          # 8011B9B2
lbl_8006EC0C:
    b       lbl_8006ECA4
    sb      v0, 0x0068(a2)             # 8011A638
lbl_8006EC14:
    bnel    v1, v0, lbl_8006ECA8
    lw      t9, 0x001C($sp)
    lbu     v0, 0x0068(a2)             # 8011A638
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_8006EC44
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_8006EC44
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_8006EC44
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    bne     t5, v0, lbl_8006EC90
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
lbl_8006EC44:
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    bnel    t5, v0, lbl_8006EC60
    lbu     t7, 0x13E2(a2)             # 8011B9B2
    lhu     t9, 0x0F32(a2)             # 8011B502
    bnel    t9, $zero, lbl_8006ECA8
    lw      t9, 0x001C($sp)
    lbu     t7, 0x13E2(a2)             # 8011B9B2
lbl_8006EC60:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    or      a1, $zero, $zero           # a1 = 00000000
    andi    t6, t7, 0x00FF             # t6 = 00000000
    beq     t5, t6, lbl_8006ECA4
    sb      t7, 0x0068(a2)             # 8011A638
    lw      a0, 0x0038($sp)
    jal     func_8006FB50
    sh      t0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    b       lbl_8006ECA4
    lh      t0, 0x0028($sp)
lbl_8006EC90:
    lbu     t8, 0x13E2(a2)             # 8011B9B2
    bnel    t8, $zero, lbl_8006ECA4
    sb      t1, 0x13E2(a2)             # 8011B9B2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t1, 0x13E2(a2)             # 8011B9B2
lbl_8006ECA4:
    lw      t9, 0x001C($sp)
lbl_8006ECA8:
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    lbu     v0, 0x0265(t9)             # 00000265
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     v0, $zero, lbl_8006ED0C
    addu    v1, a2, a1
lbl_8006ECC0:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    slti    $at, v0, 0x0014
    bne     $at, $zero, lbl_8006ECF8
    sra     a1, a1, 16
    slti    $at, v0, 0x0021
    beql    $at, $zero, lbl_8006ECFC
    slti    $at, a1, 0x0004
    lbu     t7, 0x13E2(v1)             # 000013E2
    bnel    t7, $zero, lbl_8006ECF8
    sb      t1, 0x13E2(v1)             # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t1, 0x13E2(v1)             # 000013E2
lbl_8006ECF8:
    slti    $at, a1, 0x0004
lbl_8006ECFC:
    bnel    $at, $zero, lbl_8006ECC0
    addu    v1, a2, a1
    b       lbl_8006ED60
    lw      t8, 0x001C($sp)
lbl_8006ED0C:
    bne     v0, $zero, lbl_8006ED5C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addu    v1, a2, a1
lbl_8006ED18:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    slti    $at, v0, 0x0014
    bne     $at, $zero, lbl_8006ED50
    sra     a1, a1, 16
    slti    $at, v0, 0x0021
    beql    $at, $zero, lbl_8006ED54
    slti    $at, a1, 0x0004
    lbu     t6, 0x13E2(v1)             # 000013E2
    bnel    t5, t6, lbl_8006ED50
    sb      $zero, 0x13E2(v1)          # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      $zero, 0x13E2(v1)          # 000013E2
lbl_8006ED50:
    slti    $at, a1, 0x0004
lbl_8006ED54:
    bnel    $at, $zero, lbl_8006ED18
    addu    v1, a2, a1
lbl_8006ED5C:
    lw      t8, 0x001C($sp)
lbl_8006ED60:
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   $ra, $zero, 0x000A         # $ra = 0000000A
    lbu     v0, 0x0266(t8)             # 00000266
    beq     v0, $zero, lbl_8006EDC0
    addu    v1, a2, a1
lbl_8006ED74:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    slti    $at, v0, 0x0021
    bne     $at, $zero, lbl_8006EDAC
    sra     a1, a1, 16
    slti    $at, v0, 0x0038
    beql    $at, $zero, lbl_8006EDB0
    slti    $at, a1, 0x0004
    lbu     t9, 0x13E2(v1)             # 000013E2
    bnel    t9, $zero, lbl_8006EDAC
    sb      t1, 0x13E2(v1)             # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t1, 0x13E2(v1)             # 000013E2
lbl_8006EDAC:
    slti    $at, a1, 0x0004
lbl_8006EDB0:
    bnel    $at, $zero, lbl_8006ED74
    addu    v1, a2, a1
    b       lbl_8006EE14
    lw      t6, 0x001C($sp)
lbl_8006EDC0:
    bne     v0, $zero, lbl_8006EE10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addu    v1, a2, a1
lbl_8006EDCC:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    slti    $at, v0, 0x0021
    bne     $at, $zero, lbl_8006EE04
    sra     a1, a1, 16
    slti    $at, v0, 0x0038
    beql    $at, $zero, lbl_8006EE08
    slti    $at, a1, 0x0004
    lbu     t7, 0x13E2(v1)             # 000013E2
    bnel    t5, t7, lbl_8006EE04
    sb      $zero, 0x13E2(v1)          # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      $zero, 0x13E2(v1)          # 000013E2
lbl_8006EE04:
    slti    $at, a1, 0x0004
lbl_8006EE08:
    bnel    $at, $zero, lbl_8006EDCC
    addu    v1, a2, a1
lbl_8006EE10:
    lw      t6, 0x001C($sp)
lbl_8006EE14:
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    lbu     v0, 0x0267(t6)             # 00000267
    addiu   t3, $zero, 0x0007          # t3 = 00000007
    beq     v0, $zero, lbl_8006EE74
    addu    v1, a2, a1
lbl_8006EE2C:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    beq     $ra, v0, lbl_8006EE4C
    sra     a1, a1, 16
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bnel    v0, $at, lbl_8006EE64
    slti    $at, a1, 0x0004
lbl_8006EE4C:
    lbu     t8, 0x13E2(v1)             # 000013E2
    bnel    t8, $zero, lbl_8006EE60
    sb      t1, 0x13E2(v1)             # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t1, 0x13E2(v1)             # 000013E2
lbl_8006EE60:
    slti    $at, a1, 0x0004
lbl_8006EE64:
    bnel    $at, $zero, lbl_8006EE2C
    addu    v1, a2, a1
    b       lbl_8006EEC8
    lw      t7, 0x001C($sp)
lbl_8006EE74:
    bne     v0, $zero, lbl_8006EEC4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   $ra, $zero, 0x000A         # $ra = 0000000A
    addu    v1, a2, a1
lbl_8006EE84:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    beq     $ra, v0, lbl_8006EEA4
    sra     a1, a1, 16
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bnel    v0, $at, lbl_8006EEBC
    slti    $at, a1, 0x0004
lbl_8006EEA4:
    lbu     t9, 0x13E2(v1)             # 000013E2
    bnel    t5, t9, lbl_8006EEB8
    sb      $zero, 0x13E2(v1)          # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      $zero, 0x13E2(v1)          # 000013E2
lbl_8006EEB8:
    slti    $at, a1, 0x0004
lbl_8006EEBC:
    bnel    $at, $zero, lbl_8006EE84
    addu    v1, a2, a1
lbl_8006EEC4:
    lw      t7, 0x001C($sp)
lbl_8006EEC8:
    addiu   $ra, $zero, 0x000A         # $ra = 0000000A
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lbu     v0, 0x0268(t7)             # 00000268
    addiu   t2, $zero, 0x000D          # t2 = 0000000D
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    beq     v0, $zero, lbl_8006EF2C
    addiu   a0, $zero, 0x0013          # a0 = 00000013
    addu    v1, a2, a1
lbl_8006EEE8:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    beq     t3, v0, lbl_8006EF04
    sra     a1, a1, 16
    bnel    t4, v0, lbl_8006EF1C
    slti    $at, a1, 0x0004
lbl_8006EF04:
    lbu     t6, 0x13E2(v1)             # 000013E2
    bnel    t6, $zero, lbl_8006EF18
    sb      t1, 0x13E2(v1)             # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t1, 0x13E2(v1)             # 000013E2
lbl_8006EF18:
    slti    $at, a1, 0x0004
lbl_8006EF1C:
    bnel    $at, $zero, lbl_8006EEE8
    addu    v1, a2, a1
    b       lbl_8006EF80
    lw      t9, 0x001C($sp)
lbl_8006EF2C:
    bne     v0, $zero, lbl_8006EF7C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    addiu   t3, $zero, 0x0007          # t3 = 00000007
    addu    v1, a2, a1
lbl_8006EF40:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    beq     t3, v0, lbl_8006EF5C
    sra     a1, a1, 16
    bnel    t4, v0, lbl_8006EF74
    slti    $at, a1, 0x0004
lbl_8006EF5C:
    lbu     t8, 0x13E2(v1)             # 000013E2
    bnel    t5, t8, lbl_8006EF70
    sb      $zero, 0x13E2(v1)          # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      $zero, 0x13E2(v1)          # 000013E2
lbl_8006EF70:
    slti    $at, a1, 0x0004
lbl_8006EF74:
    bnel    $at, $zero, lbl_8006EF40
    addu    v1, a2, a1
lbl_8006EF7C:
    lw      t9, 0x001C($sp)
lbl_8006EF80:
    addiu   t3, $zero, 0x0007          # t3 = 00000007
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    lbu     v0, 0x026B(t9)             # 0000026B
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     v0, $zero, lbl_8006EFD4
    addu    v1, a2, a1
lbl_8006EF98:
    lbu     t7, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    bne     t2, t7, lbl_8006EFC0
    sra     a1, a1, 16
    lbu     t6, 0x13E2(v1)             # 000013E2
    bnel    t6, $zero, lbl_8006EFC0
    sb      t1, 0x13E2(v1)             # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t1, 0x13E2(v1)             # 000013E2
lbl_8006EFC0:
    slti    $at, a1, 0x0004
    bnel    $at, $zero, lbl_8006EF98
    addu    v1, a2, a1
    b       lbl_8006F01C
    lw      t7, 0x001C($sp)
lbl_8006EFD4:
    bne     v0, $zero, lbl_8006F018
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   t2, $zero, 0x000D          # t2 = 0000000D
    addu    v1, a2, a1
lbl_8006EFE4:
    lbu     t8, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    bne     t2, t8, lbl_8006F00C
    sra     a1, a1, 16
    lbu     t9, 0x13E2(v1)             # 000013E2
    bnel    t5, t9, lbl_8006F00C
    sb      $zero, 0x13E2(v1)          # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      $zero, 0x13E2(v1)          # 000013E2
lbl_8006F00C:
    slti    $at, a1, 0x0004
    bnel    $at, $zero, lbl_8006EFE4
    addu    v1, a2, a1
lbl_8006F018:
    lw      t7, 0x001C($sp)
lbl_8006F01C:
    addiu   t2, $zero, 0x000D          # t2 = 0000000D
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lbu     v0, 0x026C(t7)             # 0000026C
    beq     v0, $zero, lbl_8006F074
    addu    v1, a2, a1
lbl_8006F030:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    beq     a3, v0, lbl_8006F04C
    sra     a1, a1, 16
    bnel    a0, v0, lbl_8006F064
    slti    $at, a1, 0x0004
lbl_8006F04C:
    lbu     t6, 0x13E2(v1)             # 000013E2
    bnel    t6, $zero, lbl_8006F060
    sb      t1, 0x13E2(v1)             # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t1, 0x13E2(v1)             # 000013E2
lbl_8006F060:
    slti    $at, a1, 0x0004
lbl_8006F064:
    bnel    $at, $zero, lbl_8006F030
    addu    v1, a2, a1
    b       lbl_8006F0C8
    lw      t9, 0x001C($sp)
lbl_8006F074:
    bne     v0, $zero, lbl_8006F0C4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    addiu   a0, $zero, 0x0013          # a0 = 00000013
    addu    v1, a2, a1
lbl_8006F088:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    beq     a3, v0, lbl_8006F0A4
    sra     a1, a1, 16
    bnel    a0, v0, lbl_8006F0BC
    slti    $at, a1, 0x0004
lbl_8006F0A4:
    lbu     t8, 0x13E2(v1)             # 000013E2
    bnel    t5, t8, lbl_8006F0B8
    sb      $zero, 0x13E2(v1)          # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      $zero, 0x13E2(v1)          # 000013E2
lbl_8006F0B8:
    slti    $at, a1, 0x0004
lbl_8006F0BC:
    bnel    $at, $zero, lbl_8006F088
    addu    v1, a2, a1
lbl_8006F0C4:
    lw      t9, 0x001C($sp)
lbl_8006F0C8:
    addiu   a0, $zero, 0x0013          # a0 = 00000013
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    lbu     v0, 0x026D(t9)             # 0000026D
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     v0, $zero, lbl_8006F180
    nop
    addiu   a3, $zero, 0x000F          # a3 = 0000000F
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    addu    v1, a2, a1
lbl_8006F0EC:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    beq     t3, v0, lbl_8006F16C
    sra     a1, a1, 16
    beq     t4, v0, lbl_8006F16C
    slti    $at, v0, 0x0014
    bne     $at, $zero, lbl_8006F114
    slti    $at, v0, 0x0021
    bne     $at, $zero, lbl_8006F16C
lbl_8006F114:
    slti    $at, v0, 0x0021
    bne     $at, $zero, lbl_8006F12C
    lw      t7, 0x0038($sp)
    slti    $at, v0, 0x0038
    bnel    $at, $zero, lbl_8006F170
    slti    $at, a1, 0x0004
lbl_8006F12C:
    lh      t6, 0x00A4(t7)             # 000000A4
    bnel    a0, t6, lbl_8006F144
    lbu     t8, 0x13E2(v1)             # 000013E2
    beql    a3, v0, lbl_8006F15C
    lbu     t9, 0x13E2(v1)             # 000013E2
    lbu     t8, 0x13E2(v1)             # 000013E2
lbl_8006F144:
    bne     t8, $zero, lbl_8006F150
    nop
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_8006F150:
    b       lbl_8006F16C
    sb      t1, 0x13E2(v1)             # 000013E2
    lbu     t9, 0x13E2(v1)             # 000013E2
lbl_8006F15C:
    bnel    t5, t9, lbl_8006F16C
    sb      $zero, 0x13E2(v1)          # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      $zero, 0x13E2(v1)          # 000013E2
lbl_8006F16C:
    slti    $at, a1, 0x0004
lbl_8006F170:
    bnel    $at, $zero, lbl_8006F0EC
    addu    v1, a2, a1
    b       lbl_8006F214
    nop
lbl_8006F180:
    bne     v0, $zero, lbl_8006F214
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   t1, $zero, 0x000B          # t1 = 0000000B
    addu    v1, a2, a1
lbl_8006F190:
    lbu     v0, 0x0068(v1)             # 00000068
    addiu   a1, a1, 0x0001             # a1 = 00000002
    sll     a1, a1, 16
    beq     a3, v0, lbl_8006F208
    sra     a1, a1, 16
    beql    $ra, v0, lbl_8006F20C
    slti    $at, a1, 0x0004
    beql    t1, v0, lbl_8006F20C
    slti    $at, a1, 0x0004
    beql    t2, v0, lbl_8006F20C
    slti    $at, a1, 0x0004
    beql    a0, v0, lbl_8006F20C
    slti    $at, a1, 0x0004
    beql    t3, v0, lbl_8006F20C
    slti    $at, a1, 0x0004
    beq     t4, v0, lbl_8006F208
    slti    $at, v0, 0x0014
    bne     $at, $zero, lbl_8006F1E0
    slti    $at, v0, 0x0021
    bne     $at, $zero, lbl_8006F208
lbl_8006F1E0:
    slti    $at, v0, 0x0021
    bne     $at, $zero, lbl_8006F1F4
    slti    $at, v0, 0x0038
    bnel    $at, $zero, lbl_8006F20C
    slti    $at, a1, 0x0004
lbl_8006F1F4:
    lbu     t7, 0x13E2(v1)             # 000013E2
    bnel    t5, t7, lbl_8006F208
    sb      $zero, 0x13E2(v1)          # 000013E2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      $zero, 0x13E2(v1)          # 000013E2
lbl_8006F208:
    slti    $at, a1, 0x0004
lbl_8006F20C:
    bnel    $at, $zero, lbl_8006F190
    addu    v1, a2, a1
lbl_8006F214:
    beql    t0, $zero, lbl_8006F250
    lw      $ra, 0x0014($sp)
    lw      t2, 0x0038($sp)
    lui     $at, 0x0001                # $at = 00010000
    sh      $zero, 0x13EA(a2)          # 8011B9BA
    addu    t2, t2, $at
    lb      t6, 0x1E15(t2)             # 00001E22
    bnel    t6, $zero, lbl_8006F250
    lw      $ra, 0x0014($sp)
    lbu     t8, 0x241B(t2)             # 00002428
    bnel    t8, $zero, lbl_8006F250
    lw      $ra, 0x0014($sp)
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0032          # a0 = 00000032
    lw      $ra, 0x0014($sp)
lbl_8006F250:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8006F25C:
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a0, $at
    sb      $zero, 0x075D(v1)          # 0000075D
    sb      $zero, 0x075C(v1)          # 0000075C
    sb      $zero, 0x075B(v1)          # 0000075B
    sb      $zero, 0x075A(v1)          # 0000075A
    sb      $zero, 0x0759(v1)          # 00000759
    sb      $zero, 0x0758(v1)          # 00000758
    sb      $zero, 0x0757(v1)          # 00000757
    sb      $zero, 0x0756(v1)          # 00000756
    sb      $zero, 0x0755(v1)          # 00000755
    sb      $zero, 0x0754(v1)          # 00000754
    sb      $zero, 0x0753(v1)          # 00000753
    sb      $zero, 0x0752(v1)          # 00000752
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   a2, t6, 0x7350             # a2 = 800F7350
    lui     t0, 0x800F                 # t0 = 800F0000
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t0, t0, 0x7350             # t0 = 800F7350
    lbu     a3, 0x0000(a2)             # 800F7350
    lbu     a1, 0x00A5(a0)             # 000000A5
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
lbl_8006F2B4:
    bne     a1, a3, lbl_8006F380
    addiu   v0, v0, 0x0001             # v0 = 00000001
    lbu     t7, 0x0001(a2)             # 800F7351
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    andi    t8, t7, 0x00C0             # t8 = 00000000
    sra     t9, t8,  6
    addu    v0, a0, $at
    sb      t9, 0x0262(v0)             # 00000263
    lbu     t1, 0x0001(a2)             # 800F7351
    andi    t2, t1, 0x0030             # t2 = 00000000
    sra     t3, t2,  4
    sb      t3, 0x0263(v0)             # 00000264
    lbu     t4, 0x0001(a2)             # 800F7351
    andi    t5, t4, 0x000C             # t5 = 00000000
    sra     t6, t5,  2
    sb      t6, 0x0264(v0)             # 00000265
    lbu     t7, 0x0001(a2)             # 800F7351
    andi    t8, t7, 0x0003             # t8 = 00000000
    sb      t8, 0x0265(v0)             # 00000266
    lbu     t9, 0x0002(a2)             # 800F7352
    andi    t1, t9, 0x00C0             # t1 = 00000000
    sra     t2, t1,  6
    sb      t2, 0x0266(v0)             # 00000267
    lbu     t3, 0x0002(a2)             # 800F7352
    andi    t4, t3, 0x0030             # t4 = 00000000
    sra     t5, t4,  4
    sb      t5, 0x0267(v0)             # 00000268
    lbu     t6, 0x0002(a2)             # 800F7352
    andi    t7, t6, 0x000C             # t7 = 00000000
    sra     t8, t7,  2
    sb      t8, 0x0268(v0)             # 00000269
    lbu     t9, 0x0002(a2)             # 800F7352
    andi    t1, t9, 0x0003             # t1 = 00000000
    sb      t1, 0x0269(v0)             # 0000026A
    lbu     t2, 0x0003(a2)             # 800F7353
    andi    t3, t2, 0x00C0             # t3 = 00000000
    sra     t4, t3,  6
    sb      t4, 0x026A(v0)             # 0000026B
    lbu     t5, 0x0003(a2)             # 800F7353
    andi    t6, t5, 0x0030             # t6 = 00000000
    sra     t7, t6,  4
    sb      t7, 0x026B(v0)             # 0000026C
    lbu     t8, 0x0003(a2)             # 800F7353
    andi    t9, t8, 0x000C             # t9 = 00000000
    sra     t1, t9,  2
    sb      t1, 0x026C(v0)             # 0000026D
    lbu     t2, 0x0003(a2)             # 800F7353
    andi    t3, t2, 0x0003             # t3 = 00000000
    jr      $ra
    sb      t3, 0x026D(v0)             # 0000026E
lbl_8006F380:
    sll     v0, v0, 16
    sra     v0, v0, 16
    sll     t4, v0,  2
    addu    a2, t0, t4
    lbu     a3, 0x0000(a2)             # 800F7350
    bne     v1, a3, lbl_8006F2B4
    nop
    jr      $ra
    nop


func_8006F3A4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    sll     a3, a3, 16
    sll     a2, a2, 16
    sra     a2, a2, 16
    sra     a3, a3, 16
    lui     t0, 0x0700                 # t0 = 07000000
    or      v1, a0, $zero              # v1 = 00000000
    lui     t6, 0xFD70                 # t6 = FD700000
    sw      t6, 0x0000(v1)             # 00000000
    sw      a1, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      t1, a0, $zero              # t1 = 00000008
    lui     t7, 0xF570                 # t7 = F5700000
    sw      t7, 0x0000(t1)             # 00000008
    sw      t0, 0x0004(t1)             # 0000000C
    addiu   a0, a0, 0x0008             # a0 = 00000010
    or      t2, a0, $zero              # t2 = 00000010
    lui     t8, 0xE600                 # t8 = E6000000
    sw      t8, 0x0000(t2)             # 00000010
    sw      $zero, 0x0004(t2)          # 00000014
    addiu   a0, a0, 0x0008             # a0 = 00000018
    multu   a2, a3
    or      v0, a0, $zero              # v0 = 00000018
    addiu   a0, a0, 0x0008             # a0 = 00000020
    or      t4, a0, $zero              # t4 = 00000020
    addiu   a0, a0, 0x0008             # a0 = 00000028
    or      t5, a0, $zero              # t5 = 00000028
    lui     t9, 0xF300                 # t9 = F3000000
    sw      t9, 0x0000(v0)             # 00000018
    addiu   a0, a0, 0x0008             # a0 = 00000030
    or      t1, a2, $zero              # t1 = 00000000
    mflo    t3
    addiu   t3, t3, 0x0001             # t3 = 00000001
    sra     t3, t3,  1
    addiu   t3, t3, 0xFFFF             # t3 = 00000000
    slti    $at, t3, 0x07FF
    beql    $at, $zero, lbl_8006F450
    addiu   a1, $zero, 0x07FF          # a1 = 000007FF
    b       lbl_8006F450
    or      a1, t3, $zero              # a1 = 00000000
    addiu   a1, $zero, 0x07FF          # a1 = 000007FF
lbl_8006F450:
    bgez    t1, lbl_8006F460
    sra     v1, t1,  3
    addiu   $at, t1, 0x0007            # $at = 00000007
    sra     v1, $at,  3
lbl_8006F460:
    bgtz    v1, lbl_8006F470
    or      t2, v1, $zero              # t2 = 00000000
    b       lbl_8006F470
    addiu   t2, $zero, 0x0001          # t2 = 00000001
lbl_8006F470:
    bgtz    v1, lbl_8006F480
    addiu   t6, t2, 0x07FF             # t6 = 00000800
    b       lbl_8006F484
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_8006F480:
    or      t3, v1, $zero              # t3 = 00000000
lbl_8006F484:
    div     $zero, t6, t3
    mflo    t7
    andi    t8, t7, 0x0FFF             # t8 = 00000000
    bne     t3, $zero, lbl_8006F49C
    nop
    break   # 0x01C00
lbl_8006F49C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t3, $at, lbl_8006F4B4
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_8006F4B4
    nop
    break   # 0x01800
lbl_8006F4B4:
    andi    t6, a1, 0x0FFF             # t6 = 000007FF
    sll     t7, t6, 12
    or      t9, t8, t0                 # t9 = 07000000
    or      t8, t9, t7                 # t8 = F7700000
    sw      t8, 0x0004(v0)             # 0000001C
    lui     t6, 0xE700                 # t6 = E7000000
    sw      t6, 0x0000(t4)             # 00000020
    sw      $zero, 0x0004(t4)          # 00000024
    addiu   t9, t1, 0x0007             # t9 = 00000007
    sra     t7, t9,  3
    andi    t8, t7, 0x01FF             # t8 = 00000000
    sll     t6, t8,  9
    lui     $at, 0xF568                # $at = F5680000
    or      t9, t6, $at                # t9 = F7680000
    sw      t9, 0x0000(t5)             # 00000028
    sw      $zero, 0x0004(t5)          # 0000002C
    sw      a0, 0x0004($sp)
    lw      t8, 0x0004($sp)
    lui     t7, 0xF200                 # t7 = F2000000
    addiu   t6, a2, 0xFFFF             # t6 = FFFFFFFF
    sll     t9, t6,  2
    sw      t7, 0x0000(t8)             # 00000000
    andi    t7, t9, 0x0FFF             # t7 = 00000000
    addiu   t6, a3, 0xFFFF             # t6 = FFFFFFFF
    sll     t9, t6,  2
    sll     t8, t7, 12
    andi    t7, t9, 0x0FFF             # t7 = 00000000
    lw      t9, 0x0004($sp)
    or      t6, t8, t7                 # t6 = 00000000
    addiu   a0, a0, 0x0008             # a0 = 00000038
    sw      t6, 0x0004(t9)             # F7680004
    lh      a1, 0x0032($sp)
    lh      t8, 0x003A($sp)
    lh      a2, 0x0036($sp)
    lui     $at, 0xE400                # $at = E4000000
    addu    t7, a1, t8
    sll     t6, t7,  2
    andi    t9, t6, 0x0FFF             # t9 = 00000000
    lh      t6, 0x003E($sp)
    sll     t8, t9, 12
    or      t7, t8, $at                # t7 = E4000000
    addu    t9, a2, t6
    sll     t8, t9,  2
    andi    t6, t8, 0x0FFF             # t6 = 00000000
    or      t9, t7, t6                 # t9 = E4000000
    or      v1, a0, $zero              # v1 = 00000038
    sll     t8, a1,  2
    andi    t7, t8, 0x0FFF             # t7 = 00000000
    sw      t9, 0x0000(v1)             # 00000038
    sll     t9, a2,  2
    andi    t8, t9, 0x0FFF             # t8 = 00000000
    sll     t6, t7, 12
    or      t7, t6, t8                 # t7 = 00000000
    sw      t7, 0x0004(v1)             # 0000003C
    addiu   a0, a0, 0x0008             # a0 = 00000040
    or      a3, a0, $zero              # a3 = 00000040
    lui     t9, 0xE100                 # t9 = E1000000
    sw      t9, 0x0000(a3)             # 00000040
    sw      $zero, 0x0004(a3)          # 00000044
    addiu   a0, a0, 0x0008             # a0 = 00000048
    or      t0, a0, $zero              # t0 = 00000048
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(t0)             # 00000048
    lhu     t7, 0x0042($sp)
    lhu     t8, 0x0046($sp)
    addiu   a0, a0, 0x0008             # a0 = 00000050
    sll     t9, t7, 16
    or      t7, t9, t8                 # t7 = E1000000
    sw      t7, 0x0004(t0)             # 0000004C
    or      v0, a0, $zero              # v0 = 00000050
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8006F5D4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    sll     a3, a3, 16
    sll     a2, a2, 16
    sra     a2, a2, 16
    sra     a3, a3, 16
    lui     t0, 0x0700                 # t0 = 07000000
    or      v1, a0, $zero              # v1 = 00000000
    lui     t6, 0xFD90                 # t6 = FD900000
    sw      t6, 0x0000(v1)             # 00000000
    sw      a1, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      t1, a0, $zero              # t1 = 00000008
    lui     t7, 0xF590                 # t7 = F5900000
    sw      t7, 0x0000(t1)             # 00000008
    sw      t0, 0x0004(t1)             # 0000000C
    addiu   a0, a0, 0x0008             # a0 = 00000010
    or      t2, a0, $zero              # t2 = 00000010
    lui     t8, 0xE600                 # t8 = E6000000
    sw      t8, 0x0000(t2)             # 00000010
    sw      $zero, 0x0004(t2)          # 00000014
    addiu   a0, a0, 0x0008             # a0 = 00000018
    multu   a2, a3
    or      v0, a0, $zero              # v0 = 00000018
    addiu   a0, a0, 0x0008             # a0 = 00000020
    or      t4, a0, $zero              # t4 = 00000020
    addiu   a0, a0, 0x0008             # a0 = 00000028
    or      t5, a0, $zero              # t5 = 00000028
    lui     t9, 0xF300                 # t9 = F3000000
    sw      t9, 0x0000(v0)             # 00000018
    addiu   a0, a0, 0x0008             # a0 = 00000030
    or      t1, a2, $zero              # t1 = 00000000
    mflo    t3
    addiu   t3, t3, 0x0001             # t3 = 00000001
    sra     t3, t3,  1
    addiu   t3, t3, 0xFFFF             # t3 = 00000000
    slti    $at, t3, 0x07FF
    beql    $at, $zero, lbl_8006F680
    addiu   a1, $zero, 0x07FF          # a1 = 000007FF
    b       lbl_8006F680
    or      a1, t3, $zero              # a1 = 00000000
    addiu   a1, $zero, 0x07FF          # a1 = 000007FF
lbl_8006F680:
    bgez    t1, lbl_8006F690
    sra     v1, t1,  3
    addiu   $at, t1, 0x0007            # $at = 00000007
    sra     v1, $at,  3
lbl_8006F690:
    bgtz    v1, lbl_8006F6A0
    or      t2, v1, $zero              # t2 = 00000000
    b       lbl_8006F6A0
    addiu   t2, $zero, 0x0001          # t2 = 00000001
lbl_8006F6A0:
    bgtz    v1, lbl_8006F6B0
    addiu   t6, t2, 0x07FF             # t6 = 00000800
    b       lbl_8006F6B4
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_8006F6B0:
    or      t3, v1, $zero              # t3 = 00000000
lbl_8006F6B4:
    div     $zero, t6, t3
    mflo    t7
    andi    t8, t7, 0x0FFF             # t8 = 00000000
    bne     t3, $zero, lbl_8006F6CC
    nop
    break   # 0x01C00
lbl_8006F6CC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t3, $at, lbl_8006F6E4
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_8006F6E4
    nop
    break   # 0x01800
lbl_8006F6E4:
    andi    t6, a1, 0x0FFF             # t6 = 000007FF
    sll     t7, t6, 12
    or      t9, t8, t0                 # t9 = 07000000
    or      t8, t9, t7                 # t8 = F7900000
    sw      t8, 0x0004(v0)             # 0000001C
    lui     t6, 0xE700                 # t6 = E7000000
    sw      t6, 0x0000(t4)             # 00000020
    sw      $zero, 0x0004(t4)          # 00000024
    addiu   t9, t1, 0x0007             # t9 = 00000007
    sra     t7, t9,  3
    andi    t8, t7, 0x01FF             # t8 = 00000000
    sll     t6, t8,  9
    lui     $at, 0xF588                # $at = F5880000
    or      t9, t6, $at                # t9 = F7880000
    sw      t9, 0x0000(t5)             # 00000028
    sw      $zero, 0x0004(t5)          # 0000002C
    sw      a0, 0x0004($sp)
    lw      t8, 0x0004($sp)
    lui     t7, 0xF200                 # t7 = F2000000
    addiu   t6, a2, 0xFFFF             # t6 = FFFFFFFF
    sll     t9, t6,  2
    sw      t7, 0x0000(t8)             # 00000000
    andi    t7, t9, 0x0FFF             # t7 = 00000000
    addiu   t6, a3, 0xFFFF             # t6 = FFFFFFFF
    sll     t9, t6,  2
    sll     t8, t7, 12
    andi    t7, t9, 0x0FFF             # t7 = 00000000
    lw      t9, 0x0004($sp)
    or      t6, t8, t7                 # t6 = 00000000
    addiu   a0, a0, 0x0008             # a0 = 00000038
    sw      t6, 0x0004(t9)             # F7880004
    lh      a1, 0x0032($sp)
    lh      t8, 0x003A($sp)
    lh      a2, 0x0036($sp)
    lui     $at, 0xE400                # $at = E4000000
    addu    t7, a1, t8
    sll     t6, t7,  2
    andi    t9, t6, 0x0FFF             # t9 = 00000000
    lh      t6, 0x003E($sp)
    sll     t8, t9, 12
    or      t7, t8, $at                # t7 = E4000000
    addu    t9, a2, t6
    sll     t8, t9,  2
    andi    t6, t8, 0x0FFF             # t6 = 00000000
    or      t9, t7, t6                 # t9 = E4000000
    or      v1, a0, $zero              # v1 = 00000038
    sll     t8, a1,  2
    andi    t7, t8, 0x0FFF             # t7 = 00000000
    sw      t9, 0x0000(v1)             # 00000038
    sll     t9, a2,  2
    andi    t8, t9, 0x0FFF             # t8 = 00000000
    sll     t6, t7, 12
    or      t7, t6, t8                 # t7 = 00000000
    sw      t7, 0x0004(v1)             # 0000003C
    addiu   a0, a0, 0x0008             # a0 = 00000040
    or      a3, a0, $zero              # a3 = 00000040
    lui     t9, 0xE100                 # t9 = E1000000
    sw      t9, 0x0000(a3)             # 00000040
    sw      $zero, 0x0004(a3)          # 00000044
    addiu   a0, a0, 0x0008             # a0 = 00000048
    or      t0, a0, $zero              # t0 = 00000048
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(t0)             # 00000048
    lhu     t7, 0x0042($sp)
    lhu     t8, 0x0046($sp)
    addiu   a0, a0, 0x0008             # a0 = 00000050
    sll     t9, t7, 16
    or      t7, t9, t8                 # t7 = E1000000
    sw      t7, 0x0004(t0)             # 0000004C
    or      v0, a0, $zero              # v0 = 00000050
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8006F804:
# Swap Link's Age Equipment
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lw      t6, 0x0004(a1)             # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t6, $zero, lbl_8006F828
    addiu   a0, $zero, 0x003B          # a0 = 0000003B
    b       lbl_8006F828
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_8006F828:
    bne     v0, $at, lbl_8006F958
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006F830:
    beq     v0, $zero, lbl_8006F848
    addu    v1, a1, v0
    addu    v1, a1, v0
    lbu     t7, 0x0068(v1)             # 00000068
    b       lbl_8006F84C
    sb      t7, 0x0040(v1)             # 00000040
lbl_8006F848:
    sb      a0, 0x0040(v1)             # 00000040
lbl_8006F84C:
    beql    v0, $zero, lbl_8006F860
    addiu   v0, v0, 0x0001             # v0 = 00000001
    lbu     t8, 0x006B(v1)             # 0000006B
    sb      t8, 0x0043(v1)             # 00000043
    addiu   v0, v0, 0x0001             # v0 = 00000002
lbl_8006F860:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    bne     $at, $zero, lbl_8006F830
    nop
    lbu     t0, 0x004A(a1)             # 8011A61A
    lhu     t9, 0x0070(a1)             # 8011A640
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    bne     v1, t0, lbl_8006F8DC
    sh      t9, 0x0048(a1)             # 8011A618
    lbu     t2, 0x0075(a1)             # 8011A645
    addiu   t1, $zero, 0x003C          # t1 = 0000003C
    sb      t1, 0x0068(a1)             # 8011A638
    beq     v1, t2, lbl_8006F8AC
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      v0, 0x0069(a1)             # 8011A639
    b       lbl_8006F8B8
    sb      v0, 0x006C(a1)             # 8011A63C
lbl_8006F8AC:
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sb      t4, 0x006C(a1)             # 8011A63C
    sb      t4, 0x0069(a1)             # 8011A639
lbl_8006F8B8:
    lbu     t5, 0x007B(a1)             # 8011A64B
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addiu   t7, $zero, 0x1122          # t7 = 00001122
    sb      v0, 0x006A(a1)             # 8011A63A
    sb      v0, 0x006D(a1)             # 8011A63D
    sb      t6, 0x006E(a1)             # 8011A63E
    sh      t7, 0x0070(a1)             # 8011A640
    b       lbl_8006F950
    sb      t5, 0x006B(a1)             # 8011A63B
lbl_8006F8DC:
    or      v0, $zero, $zero           # v0 = 00000000
    addu    v1, a1, v0
lbl_8006F8E4:
    lbu     t8, 0x004A(v1)             # 00000149
    beq     v0, $zero, lbl_8006F8F8
    sb      t8, 0x0068(v1)             # 00000167
    lbu     t9, 0x004D(v1)             # 0000014C
    sb      t9, 0x006B(v1)             # 0000016A
lbl_8006F8F8:
    lbu     a0, 0x0068(v1)             # 00000167
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    slti    $at, a0, 0x0014
    bne     $at, $zero, lbl_8006F918
    sra     v0, v0, 16
    slti    $at, a0, 0x0021
    bne     $at, $zero, lbl_8006F92C
lbl_8006F918:
    slti    $at, a0, 0x0021
    bne     $at, $zero, lbl_8006F93C
    slti    $at, a0, 0x0038
    beql    $at, $zero, lbl_8006F940
    slti    $at, v0, 0x0004
lbl_8006F92C:
    lbu     t0, 0x006B(v1)             # 0000016A
    addu    t1, a1, t0
    lbu     t2, 0x0074(t1)             # 000000B0
    sb      t2, 0x0068(v1)             # 00000167
lbl_8006F93C:
    slti    $at, v0, 0x0004
lbl_8006F940:
    bnel    $at, $zero, lbl_8006F8E4
    addu    v1, a1, v0
    lhu     t3, 0x0052(a1)             # 8011A622
    sh      t3, 0x0070(a1)             # 8011A640
lbl_8006F950:
    b       lbl_8006FA28
    lhu     v0, 0x0070(a1)             # 8011A640
lbl_8006F958:
    or      v0, $zero, $zero           # v0 = 00000000
    addu    v1, a1, v0
lbl_8006F960:
    lbu     t4, 0x0068(v1)             # 00000167
    beq     v0, $zero, lbl_8006F974
    sb      t4, 0x004A(v1)             # 00000149
    lbu     t5, 0x006B(v1)             # 0000016A
    sb      t5, 0x004D(v1)             # 0000014C
lbl_8006F974:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    bnel    $at, $zero, lbl_8006F960
    addu    v1, a1, v0
    lbu     t6, 0x0040(a1)             # 8011A610
    lhu     v0, 0x0070(a1)             # 8011A640
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    beq     v1, t6, lbl_8006FA28
    sh      v0, 0x0052(a1)             # 8011A622
    or      v0, $zero, $zero           # v0 = 00000000
    addu    v1, a1, v0
lbl_8006F9A8:
    lbu     t7, 0x0040(v1)             # 0000013F
    beq     v0, $zero, lbl_8006F9BC
    sb      t7, 0x0068(v1)             # 00000167
    lbu     t8, 0x0043(v1)             # 00000142
    sb      t8, 0x006B(v1)             # 0000016A
lbl_8006F9BC:
    lbu     a0, 0x0068(v1)             # 00000167
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    slti    $at, a0, 0x0014
    bne     $at, $zero, lbl_8006F9DC
    sra     v0, v0, 16
    slti    $at, a0, 0x0021
    bne     $at, $zero, lbl_8006F9F0
lbl_8006F9DC:
    slti    $at, a0, 0x0021
    bne     $at, $zero, lbl_8006FA00
    slti    $at, a0, 0x0038
    beql    $at, $zero, lbl_8006FA04
    slti    $at, v0, 0x0004
lbl_8006F9F0:
    lbu     t9, 0x006B(v1)             # 0000016A
    addu    t0, a1, t9
    lbu     t1, 0x0074(t0)             # 00000074
    sb      t1, 0x0068(v1)             # 00000167
lbl_8006FA00:
    slti    $at, v0, 0x0004
lbl_8006FA04:
    bnel    $at, $zero, lbl_8006F9A8
    addu    v1, a1, v0
    lhu     t3, 0x0048(a1)             # 8011A618
    andi    t5, t3, 0xFFF0             # t5 = 00000000
    ori     t6, t5, 0x0001             # t6 = 00000001
    sh      t3, 0x0070(a1)             # 8011A640
    sh      t5, 0x0070(a1)             # 8011A640
    sh      t6, 0x0070(a1)             # 8011A640
    andi    v0, t6, 0xFFFF             # v0 = 00000001
lbl_8006FA28:
    lui     t7, 0x8010                 # t7 = 80100000
    lhu     t7, -0x738E(t7)            # 800F8C72
    lui     t8, 0x8010                 # t8 = 80100000
    and     a0, t7, v0
    andi    a0, a0, 0xFFFF             # a0 = 0000003B
    beq     a0, $zero, lbl_8006FA80
    nop
    lbu     t8, -0x733F(t8)            # 800F8CC1
    lui     t0, 0x8010                 # t0 = 80100000
    lhu     t1, 0x009C(a1)             # 8011A66C
    srlv    a0, a0, t8
    andi    a0, a0, 0xFFFF             # a0 = 0000003B
    sll     t9, a0,  2
    addu    t0, t0, t9
    lw      t0, -0x7404(t0)            # 800F8BFC
    lui     t3, 0x8010                 # t3 = 80100000
    and     t2, t0, t1
    bne     t2, $zero, lbl_8006FA80
    nop
    lhu     t3, -0x7386(t3)            # 800F8C7A
    and     t4, v0, t3
    sh      t4, 0x0070(a1)             # 8011A640
lbl_8006FA80:
    jr      $ra
    nop


func_8006FA88:
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x800F                 # a2 = 800F0000
    addiu   a2, a2, 0x74E4             # a2 = 800F74E4
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    sh      t6, 0x1404(a1)             # 8011B9D4
    addu    v0, a0, $at
    sh      $zero, 0x0732(v0)          # 00000732
    sh      $zero, 0x0730(v0)          # 00000730
    sh      $zero, 0x072C(v0)          # 0000072C
    sh      $zero, 0x0000(a2)          # 800F74E4
    lh      t7, 0x0000(a2)             # 800F74E4
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sh      t7, 0x1406(a1)             # 8011B9D6
    sh      t8, 0x072E(v0)             # 0000072E
    jr      $ra
    nop


func_8006FAD0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x8BF0             # a1 = 800F8BF0
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    lui     v0, 0x8010                 # v0 = 80100000
    lbu     v0, -0x7340(v0)            # 800F8CC0
    lw      t7, 0x0008(a1)             # 800F8BF8
    lhu     t6, 0x009C(v1)             # 8011A66C
    addiu   t1, $zero, 0x0008          # t1 = 00000008
    sllv    t8, t7, v0
    lw      t4, 0x000C(a1)             # 800F8BFC
    sllv    t2, t1, v0
    or      t0, t6, t8                 # t0 = 00000000
    xor     t3, t0, t2
    andi    t5, t3, 0xFFFF             # t5 = 00000000
    sh      t0, 0x009C(v1)             # 8011A66C
    and     t7, t4, t5
    beq     t7, $zero, lbl_8006FB30
    sh      t3, 0x009C(v1)             # 8011A66C
    addiu   t6, $zero, 0x0055          # t6 = 00000055
    b       lbl_8006FB38
    sb      t6, 0x0068(v1)             # 8011A638
lbl_8006FB30:
    addiu   t8, $zero, 0x003D          # t8 = 0000003D
    sb      t8, 0x0068(v1)             # 8011A638
lbl_8006FB38:
    jal     func_8006FB50
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8006FB50:
# Update B/C-Button Texture
# ROM st: icon_item_static
# A0 = Global Context
# A1 = u16 Button Index
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x06B0           # $at = 000106B0
    addu    a0, a3, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x06C8           # $at = 000106C8
    addu    a1, a3, $at
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80004220              # osCreateMesgQueue
    sw      a3, 0x0030($sp)
    lhu     t0, 0x0036($sp)
    lw      v0, 0x0030($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t0
    addu    v0, v0, $at
    lw      t6, 0x0138(v0)             # 00000138
    lbu     t8, -0x59C8(t8)            # 8011A638
    lui     t1, 0x007C                 # t1 = 007C0000
    addiu   t1, t1, 0xD000             # t1 = 007BD000
    addiu   v1, v0, 0x01C0             # v1 = 000001C0
    sll     t7, t0, 12
    sll     t9, t8, 12
    addu    a2, t9, t1
    sw      v1, 0x0014($sp)
    sw      v1, 0x0028($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    addiu   a0, v0, 0x0160             # a0 = 00000160
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    jal     func_80000D28
    addu    a1, t6, t7
    lw      a0, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8006FC00:
# Update B/C-Button Texture (Unused?, Identical to 8006FB50)
# ROM st: icon_item_static
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x06B0           # $at = 000106B0
    addu    a0, a3, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x06C8           # $at = 000106C8
    addu    a1, a3, $at
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80004220              # osCreateMesgQueue
    sw      a3, 0x0030($sp)
    lhu     t0, 0x0036($sp)
    lw      v0, 0x0030($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t0
    addu    v0, v0, $at
    lw      t6, 0x0138(v0)             # 00000138
    lbu     t8, -0x59C8(t8)            # 8011A638
    lui     t1, 0x007C                 # t1 = 007C0000
    addiu   t1, t1, 0xD000             # t1 = 007BD000
    addiu   v1, v0, 0x01C0             # v1 = 000001C0
    sll     t7, t0, 12
    sll     t9, t8, 12
    addu    a2, t9, t1
    sw      v1, 0x0014($sp)
    sw      v1, 0x0028($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    addiu   a0, v0, 0x0180             # a0 = 00000180
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    jal     func_80000D28
    addu    a1, t6, t7
    lw      a0, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8006FCB0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    beq     a1, $zero, lbl_8006FDA0
    lui     v1, 0x8012                 # v1 = 80120000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lbu     v0, 0x0068(v1)             # 8011A638
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a1, v0, lbl_8006FD10
    nop
    beq     v0, $at, lbl_8006FD10
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_8006FD10
    addiu   $at, $zero, 0x0059         # $at = 00000059
    beq     v0, $at, lbl_8006FD10
    nop
    lbu     a2, 0x13E2(v1)             # 8011B9B2
    addiu   a0, $zero, 0x00FF          # a0 = 000000FF
    bne     a0, a2, lbl_8006FD50
    nop
lbl_8006FD10:
    beq     a1, v0, lbl_8006FD30
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_8006FD30
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_8006FD30
    addiu   $at, $zero, 0x0059         # $at = 00000059
    bnel    v0, $at, lbl_8006FD84
    sb      $zero, 0x13E5(v1)          # 8011B9B5
lbl_8006FD30:
    lbu     t6, 0x13E2(v1)             # 8011B9B2
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8006FB50
    sb      t6, 0x0068(v1)             # 8011A638
    lui     v1, 0x8012                 # v1 = 80120000
    b       lbl_8006FD80
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
lbl_8006FD50:
    bnel    a0, v0, lbl_8006FD84
    sb      $zero, 0x13E5(v1)          # 8011B9B5
    bne     a0, v0, lbl_8006FD6C
    or      a1, $zero, $zero           # a1 = 00000000
    lhu     t7, 0x0F32(v1)             # 8011B502
    bnel    t7, $zero, lbl_8006FD84
    sb      $zero, 0x13E5(v1)          # 8011B9B5
lbl_8006FD6C:
    sb      a2, 0x0068(v1)             # 8011A638
    jal     func_8006FB50
    or      a0, a3, $zero              # a0 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
lbl_8006FD80:
    sb      $zero, 0x13E5(v1)          # 8011B9B5
lbl_8006FD84:
    sb      $zero, 0x13E4(v1)          # 8011B9B4
    sb      $zero, 0x13E3(v1)          # 8011B9B3
    sb      $zero, 0x13E2(v1)          # 8011B9B2
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0007          # a0 = 00000007
    b       lbl_8006FDC0
    lw      $ra, 0x0014($sp)
lbl_8006FDA0:
    addiu   v1, v1, 0xA5D0             # v1 = FFFFA5D0
    sb      $zero, 0x13E5(v1)          # FFFFB9B5
    sb      $zero, 0x13E4(v1)          # FFFFB9B4
    sb      $zero, 0x13E3(v1)          # FFFFB9B3
    sb      $zero, 0x13E2(v1)          # FFFFB9B2
    jal     func_8006E340
    or      a0, a3, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_8006FDC0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8006FDCC:
# Item Giving Routine
# one of them at least
# A0 = Global Context
# A1 = Item Index
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lbu     t6, 0x0037($sp)
    lui     t8, 0x800F                 # t8 = 800F0000
    addu    v0, t2, t6
    lbu     t4, 0x0000(v0)             # 00000000
    slti    $at, t6, 0x008A
    or      a3, t6, $zero              # a3 = 00000000
    sll     t3, t4, 16
    sra     t3, t3, 16
    bne     $at, $zero, lbl_8006FE20
    or      v1, t4, $zero              # v1 = 00000000
    sll     t7, t6,  1
    addu    t8, t8, t7
    lh      t8, 0x7400(t8)             # 800F7400
    addu    t9, t2, t8
    lbu     t3, 0x0000(t9)             # 00000000
lbl_8006FE20:
    slti    $at, a3, 0x0066
    bne     $at, $zero, lbl_8006FE6C
    slti    $at, a3, 0x006C
    beq     $at, $zero, lbl_8006FE6C
    lui     t0, 0x8012                 # t0 = 80120000
    sll     t6, a3,  2
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t7, t7, t6
    lw      t7, -0x75A8(t7)            # 800F8A58
    lw      t5, 0x00A4(t0)             # 8011A674
    addiu   $at, $zero, 0x0068         # $at = 00000068
    or      t8, t5, t7                 # t8 = 80100000
    bne     a3, $at, lbl_8006FE64
    sw      t8, 0x00A4(t0)             # 8011A674
    jal     func_8005A4B0
    lw      a0, 0x0030($sp)
lbl_8006FE64:
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8006FE6C:
    slti    $at, a3, 0x005A
    bne     $at, $zero, lbl_8006FEA8
    slti    $at, a3, 0x0066
    beq     $at, $zero, lbl_8006FEA8
    lui     t0, 0x8012                 # t0 = 80120000
    sll     t6, a3,  2
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t5, t5, t6
    lw      t5, -0x7560(t5)            # 800F8AA0
    lw      t9, 0x00A4(t0)             # 8011A674
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    or      t7, t9, t5                 # t7 = 80100000
    b       lbl_80071410
    sw      t7, 0x00A4(t0)             # 8011A674
lbl_8006FEA8:
    slti    $at, a3, 0x006C
    bne     $at, $zero, lbl_8006FEE4
    slti    $at, a3, 0x006F
    beq     $at, $zero, lbl_8006FEE4
    lui     t0, 0x8012                 # t0 = 80120000
    sll     t6, a3,  2
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t9, t9, t6
    lw      t9, -0x7578(t9)            # 800F8A88
    lw      t8, 0x00A4(t0)             # 8011A674
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    or      t5, t8, t9                 # t5 = 80100000
    b       lbl_80071410
    sw      t5, 0x00A4(t0)             # 8011A674
lbl_8006FEE4:
    addiu   $at, $zero, 0x006F         # $at = 0000006F
    beq     a3, $at, lbl_8006FEF4
    addiu   $at, $zero, 0x0070         # $at = 00000070
    bne     a3, $at, lbl_8006FF20
lbl_8006FEF4:
    lui     t0, 0x8012                 # t0 = 80120000
    sll     t6, a3,  2
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t8, t8, t6
    lw      t8, -0x7578(t8)            # 800F8A88
    lw      t7, 0x00A4(t0)             # 8011A674
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    or      t9, t7, t8                 # t9 = 80100000
    b       lbl_80071410
    sw      t9, 0x00A4(t0)             # 8011A674
lbl_8006FF20:
    addiu   $at, $zero, 0x0071         # $at = 00000071
    bne     a3, $at, lbl_8006FF60
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    sll     t6, a3,  2
    lui     t7, 0x8010                 # t7 = 80100000
    addu    t7, t7, t6
    lw      t7, -0x7578(t7)            # 800F8A88
    lw      t5, 0x00A4(t0)             # 8011A674
    lh      t9, 0x00D0(t0)             # 8011A6A0
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    or      t8, t5, t7                 # t8 = 80100000
    addiu   t6, t9, 0x0001             # t6 = 80100001
    sw      t8, 0x00A4(t0)             # 8011A674
    b       lbl_80071410
    sh      t6, 0x00D0(t0)             # 8011A6A0
lbl_8006FF60:
    slti    $at, a3, 0x003B
    bne     $at, $zero, lbl_8007003C
    slti    $at, a3, 0x003E
    beq     $at, $zero, lbl_8007003C
    lui     t0, 0x8012                 # t0 = 80120000
    sll     t7, a3,  2
    lui     t8, 0x8010                 # t8 = 80100000
    addu    t8, t8, t7
    lui     v0, 0x8010                 # v0 = 80100000
    lbu     v0, -0x7340(v0)            # 800F8CC0
    lw      t8, -0x74FC(t8)            # 800F8B04
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lhu     t5, 0x009C(t0)             # 8011A66C
    sllv    t9, t8, v0
    addiu   $at, $zero, 0x003D         # $at = 0000003D
    or      t6, t5, t9                 # t6 = 80100000
    bne     a3, $at, lbl_80070004
    sh      t6, 0x009C(t0)             # 8011A66C
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sh      t7, 0x0036(t0)             # 8011A606
    lui     t8, 0x8010                 # t8 = 80100000
    lhu     t8, -0x7390(t8)            # 800F8C70
    andi    v1, t6, 0xFFFF             # v1 = 00000000
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    and     t5, v1, t8
    srav    t9, t5, v0
    bne     t9, $at, lbl_80070034
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    lbu     t5, 0x0068(t0)             # 8011A638
    sllv    t7, t6, v0
    xor     t8, v1, t7
    addiu   $at, $zero, 0x0055         # $at = 00000055
    bne     t5, $at, lbl_80070034
    sh      t8, 0x009C(t0)             # 8011A66C
    addiu   t9, $zero, 0x003D          # t9 = 0000003D
    sb      t9, 0x0068(t0)             # 8011A638
    lw      a0, 0x0030($sp)
    jal     func_8006FB50
    or      a1, $zero, $zero           # a1 = 00000000
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80070004:
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    bne     a3, $at, lbl_80070034
    addiu   t6, $zero, 0x003C          # t6 = 0000003C
    lhu     t7, 0x0070(t0)             # 00000070
    sb      t6, 0x0068(t0)             # 00000068
    lw      a0, 0x0030($sp)
    andi    t5, t7, 0xFFF0             # t5 = 00000000
    sh      t5, 0x0070(t0)             # 00000070
    ori     t9, t5, 0x0002             # t9 = 00000002
    sh      t9, 0x0070(t0)             # 00000070
    jal     func_8006FB50
    or      a1, $zero, $zero           # a1 = 00000000
lbl_80070034:
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8007003C:
    slti    $at, a3, 0x003E
    bne     $at, $zero, lbl_80070084
    slti    $at, a3, 0x0041
    beq     $at, $zero, lbl_80070084
    lui     t0, 0x8012                 # t0 = 80120000
    sll     t6, a3,  2
    lui     t7, 0x8010                 # t7 = 80100000
    addu    t7, t7, t6
    lui     t8, 0x8010                 # t8 = 80100000
    lbu     t8, -0x733F(t8)            # 800F8CC1
    lw      t7, -0x7508(t7)            # 800F8AF8
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lhu     t9, 0x009C(t0)             # 8011A66C
    sllv    t5, t7, t8
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    or      t6, t9, t5                 # t6 = 00000000
    b       lbl_80071410
    sh      t6, 0x009C(t0)             # 8011A66C
lbl_80070084:
    slti    $at, a3, 0x0041
    bne     $at, $zero, lbl_800700CC
    slti    $at, a3, 0x0044
    beq     $at, $zero, lbl_800700CC
    lui     t0, 0x8012                 # t0 = 80120000
    sll     t7, a3,  2
    lui     t8, 0x8010                 # t8 = 80100000
    addu    t8, t8, t7
    lui     t9, 0x8010                 # t9 = 80100000
    lbu     t9, -0x733E(t9)            # 800F8CC2
    lw      t8, -0x7514(t8)            # 800F8AEC
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lhu     t6, 0x009C(t0)             # 8011A66C
    sllv    t5, t8, t9
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    or      t7, t6, t5                 # t7 = 00000000
    b       lbl_80071410
    sh      t7, 0x009C(t0)             # 8011A66C
lbl_800700CC:
    slti    $at, a3, 0x0044
    bne     $at, $zero, lbl_80070114
    slti    $at, a3, 0x0047
    beq     $at, $zero, lbl_80070114
    lui     t0, 0x8012                 # t0 = 80120000
    sll     t8, a3,  2
    lui     t9, 0x8010                 # t9 = 80100000
    addu    t9, t9, t8
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x733D(t6)            # 800F8CC3
    lw      t9, -0x7520(t9)            # 800F8AE0
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lhu     t7, 0x009C(t0)             # 8011A66C
    sllv    t5, t9, t6
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    or      t8, t7, t5                 # t8 = 00000000
    b       lbl_80071410
    sh      t8, 0x009C(t0)             # 8011A66C
lbl_80070114:
    addiu   $at, $zero, 0x0074         # $at = 00000074
    beq     a3, $at, lbl_8007012C
    addiu   $at, $zero, 0x0075         # $at = 00000075
    beq     a3, $at, lbl_8007012C
    addiu   $at, $zero, 0x0076         # $at = 00000076
    bne     a3, $at, lbl_80070160
lbl_8007012C:
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lhu     t9, 0x1402(t0)             # 8011B9D2
    sll     t7, a3,  2
    lui     t5, 0x8010                 # t5 = 80100000
    addu    t5, t5, t7
    addu    v1, t0, t9
    lbu     t6, 0x00A8(v1)             # 000000A8
    lw      t5, -0x75E0(t5)            # 800F8A20
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    or      t8, t6, t5                 # t8 = 80100000
    b       lbl_80071410
    sb      t8, 0x00A8(v1)             # 000000A8
lbl_80070160:
    addiu   $at, $zero, 0x0077         # $at = 00000077
    bne     a3, $at, lbl_800701A0
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lhu     t9, 0x1402(t0)             # 8011B9D2
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addu    v1, t0, t9
    lb      a0, 0x00BC(v1)             # 000000BC
    bgez    a0, lbl_80070198
    addiu   t7, a0, 0x0001             # t7 = 00000001
    sb      t1, 0x00BC(v1)             # 000000BC
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80070198:
    b       lbl_80071410
    sb      t7, 0x00BC(v1)             # 000000BC
lbl_800701A0:
    addiu   $at, $zero, 0x004A         # $at = 0000004A
    beq     a3, $at, lbl_800701B0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a3, $at, lbl_80070264
lbl_800701B0:
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lui     a0, 0x8010                 # a0 = 80100000
    lw      a0, -0x7380(a0)            # 800F8C80
    lw      t6, 0x00A0(t0)             # 8011A670
    lui     a1, 0x8010                 # a1 = 80100000
    lbu     a1, -0x733C(a1)            # 800F8CC4
    and     t5, t6, a0
    srav    t8, t5, a1
    bnel    t8, $zero, lbl_80070220
    lbu     t5, 0x0003(t2)             # 00000003
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80081294
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t9, 0x0003(t2)             # 800F8F37
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addu    v1, t0, t9
    sb      t7, 0x0074(v1)             # 00000074
    lui     t6, 0x8010                 # t6 = 80100000
    lhu     t6, -0x7332(t6)            # 800F8CCE
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t6, 0x008C(v1)             # 0000008C
    lbu     t5, 0x0003(t2)             # 800F8F37
lbl_80070220:
    lui     v0, 0x8010                 # v0 = 80100000
    addu    v1, t0, t5
    lb      t8, 0x008C(v1)             # 0000008C
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x008C(v1)             # 0000008C
    lw      t7, 0x00A0(t0)             # 8011A670
    lb      t9, 0x008C(v1)             # 0000008C
    and     t6, t7, a0
    srav    t5, t6, a1
    sll     t8, t5,  1
    addu    v0, v0, t8
    lhu     v0, -0x7334(v0)            # 800F8CCC
    slt     $at, v0, t9
    beq     $at, $zero, lbl_800713F4
    nop
    b       lbl_800713F4
    sb      v0, 0x008C(v1)             # 0000008C
lbl_80070264:
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    bne     a3, $at, lbl_800702A4
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80081294
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t6, 0x0003(t2)             # 800F8F37
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t7, 0x8010                 # t7 = 80100000
    lhu     t7, -0x7330(t7)            # 800F8CD0
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t5, t0, t6
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t7, 0x008C(t5)             # 0000008C
lbl_800702A4:
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    bne     a3, $at, lbl_800702E4
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80081294
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t9, 0x0003(t2)             # 800F8F37
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t8, 0x8010                 # t8 = 80100000
    lhu     t8, -0x732E(t8)            # 800F8CD2
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t6, t0, t9
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t8, 0x008C(t6)             # 0000008C
lbl_800702E4:
    addiu   $at, $zero, 0x0048         # $at = 00000048
    bne     a3, $at, lbl_80070324
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    jal     func_80081294
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t5, 0x0006(t2)             # 800F8F3A
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t7, 0x8010                 # t7 = 80100000
    lhu     t7, -0x7308(t7)            # 800F8CF8
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t9, t0, t5
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t7, 0x008C(t9)             # 0000008C
lbl_80070324:
    addiu   $at, $zero, 0x0049         # $at = 00000049
    bne     a3, $at, lbl_80070364
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    jal     func_80081294
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t6, 0x0006(t2)             # 800F8F3A
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t8, 0x8010                 # t8 = 80100000
    lhu     t8, -0x7306(t8)            # 800F8CFA
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t5, t0, t6
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t8, 0x008C(t5)             # 0000008C
lbl_80070364:
    addiu   $at, $zero, 0x004D         # $at = 0000004D
    bne     a3, $at, lbl_80070420
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lui     a0, 0x8010                 # a0 = 80100000
    lw      a0, -0x737C(a0)            # 800F8C84
    lw      t7, 0x00A0(t0)             # 8011A670
    lui     a1, 0x8010                 # a1 = 80100000
    lbu     a1, -0x733B(a1)            # 800F8CC5
    and     t9, t7, a0
    srav    t6, t9, a1
    bnel    t6, $zero, lbl_800703DC
    lbu     t9, 0x0002(t2)             # 800F8F36
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_80081294
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t8, 0x0002(t2)             # 800F8F36
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addu    v1, t0, t8
    sb      t5, 0x0074(v1)             # 00000074
    lui     t7, 0x8010                 # t7 = 80100000
    lhu     t7, -0x732A(t7)            # 800F8CD6
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t7, 0x008C(v1)             # 0000008C
    lbu     t9, 0x0002(t2)             # 800F8F36
lbl_800703DC:
    lui     v0, 0x8010                 # v0 = 80100000
    addu    v1, t0, t9
    lb      t6, 0x008C(v1)             # 0000008C
    addiu   t8, t6, 0x0001             # t8 = 00000001
    sb      t8, 0x008C(v1)             # 0000008C
    lw      t5, 0x00A0(t0)             # 8011A670
    lb      t8, 0x008C(v1)             # 0000008C
    and     t7, t5, a0
    srav    t9, t7, a1
    sll     t6, t9,  1
    addu    v0, v0, t6
    lhu     v0, -0x732C(v0)            # 800F8CD4
    slt     $at, v0, t8
    beq     $at, $zero, lbl_800713F4
    nop
    b       lbl_800713F4
    sb      v0, 0x008C(v1)             # 0000008C
lbl_80070420:
    addiu   $at, $zero, 0x004E         # $at = 0000004E
    bne     a3, $at, lbl_80070460
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_80081294
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t7, 0x0002(t2)             # 800F8F36
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t5, 0x8010                 # t5 = 80100000
    lhu     t5, -0x7328(t5)            # 800F8CD8
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t9, t0, t7
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t5, 0x008C(t9)             # 0000008C
lbl_80070460:
    addiu   $at, $zero, 0x004F         # $at = 0000004F
    bne     a3, $at, lbl_800704A0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_80081294
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t8, 0x0002(t2)             # 800F8F36
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t6, 0x8010                 # t6 = 80100000
    lhu     t6, -0x7326(t6)            # 800F8CDA
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t7, t0, t8
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t6, 0x008C(t7)             # 0000008C
lbl_800704A0:
    addiu   $at, $zero, 0x0050         # $at = 00000050
    bne     a3, $at, lbl_800704BC
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    jal     func_80081294
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800704BC:
    addiu   $at, $zero, 0x0051         # $at = 00000051
    bne     a3, $at, lbl_800704D8
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    jal     func_80081294
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800704D8:
    addiu   $at, $zero, 0x0052         # $at = 00000052
    bne     a3, $at, lbl_800704F4
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    jal     func_80081294
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800704F4:
    addiu   $at, $zero, 0x0053         # $at = 00000053
    bne     a3, $at, lbl_80070510
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    jal     func_80081294
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80070510:
    addiu   $at, $zero, 0x0054         # $at = 00000054
    bne     a3, $at, lbl_8007052C
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    jal     func_80081294
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8007052C:
    addiu   $at, $zero, 0x0056         # $at = 00000056
    bne     a3, $at, lbl_80070548
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    jal     func_80081294
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80070548:
    addiu   $at, $zero, 0x0057         # $at = 00000057
    bne     a3, $at, lbl_80070564
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    jal     func_80081294
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80070564:
    addiu   $at, $zero, 0x0098         # $at = 00000098
    bne     a3, $at, lbl_800705CC
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t5, t0, t3
    lbu     t9, 0x0074(t5)             # 00000074
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    bne     a2, t9, lbl_80070598
    nop
    lbu     t8, 0x0000(t2)             # 00000000
    addu    t6, t0, t8
    sb      $zero, 0x0074(t6)          # 00000074
lbl_80070598:
    jal     func_80081294
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t5, 0x0000(t2)             # 800F8F34
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t7, 0x8010                 # t7 = 80100000
    lhu     t7, -0x7300(t7)            # 800F8D00
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t9, t0, t5
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t7, 0x008C(t9)             # 0000008C
lbl_800705CC:
    addiu   $at, $zero, 0x0099         # $at = 00000099
    bne     a3, $at, lbl_80070634
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t8, t0, t3
    lbu     t6, 0x0074(t8)             # 00000074
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    bne     a2, t6, lbl_80070600
    nop
    lbu     t5, 0x0000(t2)             # 800F8F34
    addu    t7, t0, t5
    sb      $zero, 0x0074(t7)          # 80100074
lbl_80070600:
    jal     func_80081294
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t8, 0x0000(t2)             # 800F8F34
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t9, 0x8010                 # t9 = 80100000
    lhu     t9, -0x72FE(t9)            # 800F8D02
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t6, t0, t8
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t9, 0x008C(t6)             # 0000008C
lbl_80070634:
    addiu   $at, $zero, 0x009A         # $at = 0000009A
    bne     a3, $at, lbl_800706A0
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t5, t0, t3
    lbu     t7, 0x0074(t5)             # 00000074
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a0, $zero, 0x0007          # a0 = 00000007
    bne     a2, t7, lbl_8007066C
    nop
    lbu     t9, 0x0001(t2)             # 800F8F35
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addu    t6, t0, t9
    sb      t8, 0x0074(t6)             # 00000074
lbl_8007066C:
    jal     func_80081294
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t7, 0x0001(t2)             # 800F8F35
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t5, 0x8010                 # t5 = 80100000
    lhu     t5, -0x72F8(t5)            # 800F8D08
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t9, t0, t7
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t5, 0x008C(t9)             # 0000008C
lbl_800706A0:
    addiu   $at, $zero, 0x009B         # $at = 0000009B
    bne     a3, $at, lbl_8007070C
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t8, t0, t3
    lbu     t6, 0x0074(t8)             # 00000074
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a0, $zero, 0x0007          # a0 = 00000007
    bne     a2, t6, lbl_800706D8
    nop
    lbu     t5, 0x0001(t2)             # 800F8F35
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addu    t9, t0, t5
    sb      t7, 0x0074(t9)             # 00000074
lbl_800706D8:
    jal     func_80081294
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t6, 0x0001(t2)             # 800F8F35
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t8, 0x8010                 # t8 = 80100000
    lhu     t8, -0x72F6(t8)            # 800F8D0A
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t5, t0, t6
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t8, 0x008C(t5)             # 0000008C
lbl_8007070C:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     a3, $at, lbl_80070784
    nop
    lbu     t7, 0x0037($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t9, t0, t4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      t7, 0x0074(t9)             # 00000074
    addu    v1, t0, v0
lbl_80070734:
    lbu     t6, 0x0068(v1)             # 00000068
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    bne     t6, $at, lbl_80070764
    andi    a1, v0, 0xFFFF             # a1 = 00000001
    sb      t8, 0x0068(v1)             # 00000068
    lw      a0, 0x0030($sp)
    jal     func_8006FB50
    sh      v0, 0x002E($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lh      v0, 0x002E($sp)
lbl_80070764:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    bnel    $at, $zero, lbl_80070734
    addu    v1, t0, v0
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80070784:
    bne     a3, $zero, lbl_8007083C
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t5, t0, t3
    lbu     t7, 0x0074(t5)             # 00000074
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    bne     a2, t7, lbl_800707E4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      v0, 0x0024($sp)
    jal     func_80081294
    sh      t3, 0x002C($sp)
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t9, 0x0000(t2)             # 800F8F34
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lw      v0, 0x0024($sp)
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addu    t6, t0, t9
    sb      t1, 0x008C(t6)             # 0000008C
    lh      t3, 0x002C($sp)
    b       lbl_800713F4
    lbu     t4, 0x0000(v0)             # 00000000
lbl_800707E4:
    lbu     t8, 0x0000(t2)             # 800F8F34
    lui     t6, 0x8010                 # t6 = 80100000
    lui     v1, 0x8010                 # v1 = 80100000
    addu    v0, t0, t8
    lb      t5, 0x008C(v0)             # 0000008C
    addiu   t7, t5, 0x0001             # t7 = 00000001
    sb      t7, 0x008C(v0)             # 0000008C
    lw      t6, -0x7368(t6)            # 800F8C98
    lw      t9, 0x00A0(t0)             # 8011A670
    lui     t5, 0x8010                 # t5 = 80100000
    lbu     t5, -0x7336(t5)            # 800F8CCA
    and     t8, t9, t6
    lb      t6, 0x008C(v0)             # 0000008C
    srav    t7, t8, t5
    sll     t9, t7,  1
    addu    v1, v1, t9
    lhu     v1, -0x7304(v1)            # 800F8CFC
    slt     $at, v1, t6
    beq     $at, $zero, lbl_800713F4
    nop
    b       lbl_800713F4
    sb      v1, 0x008C(v0)             # 0000008C
lbl_8007083C:
    addiu   $at, $zero, 0x008A         # $at = 0000008A
    beq     a3, $at, lbl_8007084C
    addiu   $at, $zero, 0x008B         # $at = 0000008B
    bne     a3, $at, lbl_80070924
lbl_8007084C:
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t8, t0, t3
    lbu     t5, 0x0074(t8)             # 00000074
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    sll     t1, a3,  1
    bne     a2, t5, lbl_800708B4
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      t1, 0x0024($sp)
    jal     func_80081294
    sh      t3, 0x002C($sp)
    lw      t1, 0x0024($sp)
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t9, 0x0000(t2)             # 800F8F34
    lui     t7, 0x800F                 # t7 = 800F0000
    lui     t0, 0x8012                 # t0 = 80120000
    addu    t7, t7, t1
    lh      t7, 0x7454(t7)             # 800F7454
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t6, t0, t9
    lh      t3, 0x002C($sp)
    b       lbl_80070910
    sb      t7, 0x008C(t6)             # 0000008C
lbl_800708B4:
    lbu     t8, 0x0000(t2)             # 800F8F34
    addu    t9, t9, t1
    lh      t9, 0x7454(t9)             # 00007454
    addu    v0, t0, t8
    lb      t5, 0x008C(v0)             # 0000008C
    lui     t8, 0x8010                 # t8 = 80100000
    lui     v1, 0x8010                 # v1 = 80100000
    addu    t7, t5, t9
    sb      t7, 0x008C(v0)             # 0000008C
    lw      t8, -0x7368(t8)            # 800F8C98
    lw      t6, 0x00A0(t0)             # 8011A670
    lui     t9, 0x8010                 # t9 = 80100000
    lbu     t9, -0x7336(t9)            # 800F8CCA
    and     t5, t6, t8
    lb      t8, 0x008C(v0)             # 0000008C
    srav    t7, t5, t9
    sll     t6, t7,  1
    addu    v1, v1, t6
    lhu     v1, -0x7304(v1)            # 800F8CFC
    slt     $at, v1, t8
    beq     $at, $zero, lbl_80070910
    nop
    sb      v1, 0x008C(v0)             # 0000008C
lbl_80070910:
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t5, t5, 0x8F34             # t5 = 800F8F34
    sb      $zero, 0x0037($sp)
    b       lbl_800713F4
    lbu     t4, 0x0000(t5)             # 800F8F34
lbl_80070924:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    bne     t1, a3, lbl_800709E4
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t9, t0, t3
    lbu     t7, 0x0074(t9)             # 80100074
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a0, $zero, 0x0007          # a0 = 00000007
    bne     a2, t7, lbl_8007098C
    sll     a1, t1, 16
    sra     a1, a1, 16
    sw      v0, 0x0024($sp)
    jal     func_80081294
    sh      t3, 0x002C($sp)
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t6, 0x0001(t2)             # 800F8F35
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lw      v0, 0x0024($sp)
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addu    t8, t0, t6
    sb      t1, 0x008C(t8)             # 0000008C
    lh      t3, 0x002C($sp)
    b       lbl_800713F4
    lbu     t4, 0x0000(v0)             # 00000000
lbl_8007098C:
    lbu     t5, 0x0001(t2)             # 800F8F35
    lui     t8, 0x8010                 # t8 = 80100000
    lui     v1, 0x8010                 # v1 = 80100000
    addu    v0, t0, t5
    lb      t9, 0x008C(v0)             # 0000008C
    addiu   t7, t9, 0x0001             # t7 = 00000001
    sb      t7, 0x008C(v0)             # 0000008C
    lw      t8, -0x7364(t8)            # 800F8C9C
    lw      t6, 0x00A0(t0)             # 8011A670
    lui     t9, 0x8010                 # t9 = 80100000
    lbu     t9, -0x7335(t9)            # 800F8CCB
    and     t5, t6, t8
    lb      t8, 0x008C(v0)             # 0000008C
    srav    t7, t5, t9
    sll     t6, t7,  1
    addu    v1, v1, t6
    lhu     v1, -0x72FC(v1)            # 800F8D04
    slt     $at, v1, t8
    beq     $at, $zero, lbl_800713F4
    nop
    b       lbl_800713F4
    sb      v1, 0x008C(v0)             # 0000008C
lbl_800709E4:
    addiu   $at, $zero, 0x008C         # $at = 0000008C
    beq     a3, $at, lbl_800709F4
    addiu   $at, $zero, 0x008D         # $at = 0000008D
    bne     a3, $at, lbl_80070AD8
lbl_800709F4:
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t5, t0, t3
    lbu     t9, 0x0074(t5)             # 00000074
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    sll     t1, a3,  1
    bne     a2, t9, lbl_80070A64
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   a0, $zero, 0x0007          # a0 = 00000007
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      t1, 0x0024($sp)
    jal     func_80081294
    sh      t3, 0x002C($sp)
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lw      t1, 0x0024($sp)
    lbu     t7, 0x0001(t2)             # 800F8F35
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lui     t8, 0x800F                 # t8 = 800F0000
    addu    t8, t8, t1
    addu    v0, t0, t7
    lb      t6, 0x008C(v0)             # 0000008C
    lh      t8, 0x7450(t8)             # 800F7450
    lh      t3, 0x002C($sp)
    addu    t5, t6, t8
    b       lbl_80070AC0
    sb      t5, 0x008C(v0)             # 0000008C
lbl_80070A64:
    lbu     t9, 0x0001(t2)             # 800F8F35
    addu    t6, t6, t1
    lh      t6, 0x7450(t6)             # 00007450
    addu    v0, t0, t9
    lb      t7, 0x008C(v0)             # 0000008C
    lui     t9, 0x8010                 # t9 = 80100000
    lui     v1, 0x8010                 # v1 = 80100000
    addu    t8, t7, t6
    sb      t8, 0x008C(v0)             # 0000008C
    lw      t9, -0x7364(t9)            # 800F8C9C
    lw      t5, 0x00A0(t0)             # 8011A670
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x7335(t6)            # 800F8CCB
    and     t7, t5, t9
    lb      t9, 0x008C(v0)             # 0000008C
    srav    t8, t7, t6
    sll     t5, t8,  1
    addu    v1, v1, t5
    lhu     v1, -0x72FC(v1)            # 800F8D04
    slt     $at, v1, t9
    beql    $at, $zero, lbl_80070AC4
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      v1, 0x008C(v0)             # 0000008C
lbl_80070AC0:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
lbl_80070AC4:
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x8F35             # t6 = 800F8F35
    sb      t7, 0x0037($sp)
    b       lbl_800713F4
    lbu     t4, 0x0000(t6)             # 800F8F35
lbl_80070AD8:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    a3, $at, lbl_80070B50
    slti    $at, a3, 0x008E
    lbu     t8, 0x0002(t2)             # 800F8F36
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    v1, t0, t8
    lb      a0, 0x008C(v1)             # 8010008C
    lui     t9, 0x8010                 # t9 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sll     a0, a0, 24
    sra     a0, a0, 24
    sb      a0, 0x008C(v1)             # 8010008C
    lw      t9, -0x737C(t9)            # 800F8C84
    lw      t5, 0x00A0(t0)             # 8011A670
    lbu     t6, -0x733B(t6)            # 800F8CC5
    lui     v0, 0x8010                 # v0 = 80100000
    and     t7, t5, t9
    srav    t8, t7, t6
    sll     t5, t8,  1
    addu    v0, v0, t5
    lhu     v0, -0x732C(v0)            # 800F8CD4
    slt     $at, v0, a0
    beq     $at, $zero, lbl_80070B44
    nop
    sb      v0, 0x008C(v1)             # 8010008C
lbl_80070B44:
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    slti    $at, a3, 0x008E
lbl_80070B50:
    bne     $at, $zero, lbl_80070BD4
    slti    $at, a3, 0x0092
    beq     $at, $zero, lbl_80070BD4
    lui     t0, 0x8012                 # t0 = 80120000
    lbu     t9, 0x0002(t2)             # 800F8F36
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    sll     t6, a3,  1
    lui     t8, 0x800F                 # t8 = 800F0000
    addu    t8, t8, t6
    addu    v1, t0, t9
    lb      t7, 0x008C(v1)             # 8010008C
    lh      t8, 0x744C(t8)             # 800F744C
    lui     t9, 0x8010                 # t9 = 80100000
    lui     v0, 0x8010                 # v0 = 80100000
    addu    a0, t7, t8
    sll     a0, a0, 24
    sra     a0, a0, 24
    sb      a0, 0x008C(v1)             # 8010008C
    lw      t9, -0x737C(t9)            # 800F8C84
    lw      t5, 0x00A0(t0)             # 8011A670
    lui     t7, 0x8010                 # t7 = 80100000
    lbu     t7, -0x733B(t7)            # 800F8CC5
    and     t6, t5, t9
    srav    t8, t6, t7
    sll     t5, t8,  1
    addu    v0, v0, t5
    lhu     v0, -0x732C(v0)            # 800F8CD4
    slt     $at, v0, a0
    beq     $at, $zero, lbl_80070BCC
    nop
    sb      v0, 0x008C(v1)             # 8010008C
lbl_80070BCC:
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80070BD4:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     a3, $at, lbl_80070C4C
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t9, t0, t3
    lbu     t6, 0x0074(t9)             # 80100074
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    bnel    a2, t6, lbl_80070C1C
    lbu     t9, 0x0009(t2)             # 800F8F3D
    lbu     t7, 0x0009(t2)             # 800F8F3D
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addu    v1, t0, t7
    sb      t8, 0x0074(v1)             # 80100074
    b       lbl_80071410
    sb      t5, 0x008C(v1)             # 8010008C
    lbu     t9, 0x0009(t2)             # 800F8F3D
lbl_80070C1C:
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    addu    v1, t0, t9
    lb      t6, 0x008C(v1)             # 8010008C
    addiu   t7, t6, 0x000A             # t7 = 8010000A
    sb      t7, 0x008C(v1)             # 8010008C
    lb      t8, 0x008C(v1)             # 8010008C
    slti    $at, t8, 0x0033
    bne     $at, $zero, lbl_80070C44
    nop
    sb      t5, 0x008C(v1)             # 8010008C
lbl_80070C44:
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80070C4C:
    addiu   $at, $zero, 0x0096         # $at = 00000096
    beq     a3, $at, lbl_80070C60
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   $at, $zero, 0x0097         # $at = 00000097
    bne     a3, $at, lbl_80070CE8
lbl_80070C60:
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t9, t0, t3
    lbu     t6, 0x0074(t9)             # 80100074
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    sll     t1, a3,  1
    bne     a2, t6, lbl_80070CAC
    lui     t5, 0x800F                 # t5 = 800F0000
    lbu     t7, 0x0009(t2)             # 800F8F3D
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    lui     t9, 0x800F                 # t9 = 800F0000
    addu    v1, t0, t7
    sb      t8, 0x0074(v1)             # 80100074
    addu    t9, t9, t1
    lh      t9, 0x744C(t9)             # 800F744C
    lb      t5, 0x008C(v1)             # 8010008C
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addu    t6, t5, t9
    b       lbl_80071410
    sb      t6, 0x008C(v1)             # 8010008C
lbl_80070CAC:
    lbu     t7, 0x0009(t2)             # 800F8F3D
    addu    t5, t5, t1
    lh      t5, 0x744C(t5)             # 800F744C
    addu    v1, t0, t7
    lb      t8, 0x008C(v1)             # 8010008C
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    addu    t9, t8, t5
    sb      t9, 0x008C(v1)             # 8010008C
    lb      t6, 0x008C(v1)             # 8010008C
    slti    $at, t6, 0x0033
    bne     $at, $zero, lbl_80070CE0
    nop
    sb      t7, 0x008C(v1)             # 8010008C
lbl_80070CE0:
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80070CE8:
    slti    $at, a3, 0x0092
    bne     $at, $zero, lbl_80070D74
    slti    $at, a3, 0x0095
    beq     $at, $zero, lbl_80070D74
    lui     t0, 0x8012                 # t0 = 80120000
    lbu     t8, 0x0003(t2)             # 800F8F37
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    sll     t9, a3,  1
    lui     t6, 0x800F                 # t6 = 800F0000
    addu    t6, t6, t9
    addu    v1, t0, t8
    lb      t5, 0x008C(v1)             # 8010008C
    lh      t6, 0x744C(t6)             # 800F744C
    lui     t9, 0x8010                 # t9 = 80100000
    lui     v0, 0x8010                 # v0 = 80100000
    addu    t7, t5, t6
    sb      t7, 0x008C(v1)             # 8010008C
    lw      t9, -0x7380(t9)            # 800F8C80
    lw      t8, 0x00A0(t0)             # 8011A670
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x733C(t6)            # 800F8CC4
    and     t5, t8, t9
    lb      a0, 0x008C(v1)             # 8010008C
    srav    t7, t5, t6
    sll     t8, t7,  1
    addu    v0, v0, t8
    lhu     v0, -0x7334(v0)            # 800F8CCC
    slt     $at, a0, v0
    beql    $at, $zero, lbl_80070D6C
    sb      v0, 0x008C(v1)             # 8010008C
    bgez    a0, lbl_80070D6C
    nop
    sb      v0, 0x008C(v1)             # 8010008C
lbl_80070D6C:
    b       lbl_80071410
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_80070D74:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     a3, $at, lbl_80070DB8
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    jal     func_80081294
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x8F34             # t2 = 800F8F34
    lbu     t9, 0x0006(t2)             # 800F8F3A
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    addu    v1, t0, t9
    sb      t5, 0x0074(v1)             # 00000074
    sb      t6, 0x008C(v1)             # 0000008C
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80070DB8:
    addiu   $at, $zero, 0x0058         # $at = 00000058
    bnel    a3, $at, lbl_80070E48
    addiu   $at, $zero, 0x0095         # $at = 00000095
    lbu     t7, 0x0006(t2)             # 800F8F3A
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    v1, t0, t7
    lb      t8, 0x008C(v1)             # 0000008C
    lui     t6, 0x8010                 # t6 = 80100000
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   t9, t8, 0x0005             # t9 = 00000005
    sb      t9, 0x008C(v1)             # 0000008C
    lw      t6, -0x736C(t6)            # 800F8C94
    lw      t5, 0x00A0(t0)             # 8011A670
    lui     t8, 0x8010                 # t8 = 80100000
    lbu     t8, -0x7337(t8)            # 800F8CC9
    and     t7, t5, t6
    lb      t6, 0x008C(v1)             # 0000008C
    srav    t9, t7, t8
    sll     t5, t9,  1
    addu    v0, v0, t5
    lhu     v0, -0x730C(v0)            # 800F8CF4
    slt     $at, t6, v0
    bnel    $at, $zero, lbl_80070E24
    lhu     v1, 0x0EF2(t0)             # 8011B4C2
    sb      v0, 0x008C(v1)             # 0000008C
    lhu     v1, 0x0EF2(t0)             # 8011B4C2
lbl_80070E24:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    andi    t7, v1, 0x0008             # t7 = 00000000
    bne     t7, $zero, lbl_80070E3C
    ori     t8, v1, 0x0008             # t8 = 00000008
    b       lbl_80071410
    sh      t8, 0x0EF2(t0)             # 8011B4C2
lbl_80070E3C:
    b       lbl_80071410
    addiu   v0, $zero, 0x0058          # v0 = 00000058
    addiu   $at, $zero, 0x0095         # $at = 00000095
lbl_80070E48:
    bnel    a3, $at, lbl_80070ED4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lbu     t9, 0x0006(t2)             # 800F8F3A
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    v1, t0, t9
    lb      t5, 0x008C(v1)             # 0000008C
    lui     t8, 0x8010                 # t8 = 80100000
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   t6, t5, 0x001E             # t6 = 00000024
    sb      t6, 0x008C(v1)             # 0000008C
    lw      t8, -0x736C(t8)            # 800F8C94
    lw      t7, 0x00A0(t0)             # 8011A670
    lui     t5, 0x8010                 # t5 = 80100000
    lbu     t5, -0x7337(t5)            # 800F8CC9
    and     t9, t7, t8
    lb      t8, 0x008C(v1)             # 0000008C
    srav    t6, t9, t5
    sll     t7, t6,  1
    addu    v0, v0, t7
    lhu     v0, -0x730C(v0)            # 800F8CF4
    slt     $at, t8, v0
    bnel    $at, $zero, lbl_80070EB0
    lhu     v1, 0x0EF2(t0)             # 8011B4C2
    sb      v0, 0x008C(v1)             # 0000008C
    lhu     v1, 0x0EF2(t0)             # 8011B4C2
lbl_80070EB0:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    andi    t9, v1, 0x0008             # t9 = 00000000
    bne     t9, $zero, lbl_80070EC8
    ori     t5, v1, 0x0008             # t5 = 00000008
    b       lbl_80071410
    sh      t5, 0x0EF2(t0)             # 8011B4C2
lbl_80070EC8:
    b       lbl_80071410
    addiu   v0, $zero, 0x0058          # v0 = 00000058
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_80070ED4:
    bne     a3, $at, lbl_80070EF8
    lui     t0, 0x8012                 # t0 = 80120000
    lbu     t7, 0x0007(t2)             # 800F8F3B
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    addu    t8, t0, t7
    sb      t6, 0x0074(t8)             # 80100074
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80070EF8:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    a3, $at, lbl_80070F78
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lbu     t5, 0x0008(t2)             # 800F8F3C
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    addu    t7, t0, t5
    sb      t9, 0x0074(t7)             # 00000074
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addu    v1, t0, v0
lbl_80070F24:
    lbu     t6, 0x0068(v1)             # 00000068
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    bne     t6, $at, lbl_80070F54
    andi    a1, v0, 0xFFFF             # a1 = 00000001
    sb      t8, 0x0068(v1)             # 00000068
    lw      a0, 0x0030($sp)
    jal     func_8006FB50
    sh      v0, 0x002E($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lh      v0, 0x002E($sp)
lbl_80070F54:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    bnel    $at, $zero, lbl_80070F24
    addu    v1, t0, v0
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   $at, $zero, 0x0010         # $at = 00000010
lbl_80070F78:
    bne     a3, $at, lbl_80070FF0
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t5, t0, t3
    lbu     t9, 0x0074(t5)             # 00000074
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addu    t6, t0, t4
    bne     a2, t9, lbl_80070FC0
    lbu     t7, 0x0037($sp)
    sb      t7, 0x0074(t6)             # 00000074
    lbu     t8, 0x0010(t2)             # 00000010
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addu    t5, t0, t8
    sb      t1, 0x008C(t5)             # 0000008C
    lbu     t9, 0x0011(t2)             # 00000011
    addu    t7, t0, t9
    b       lbl_80071410
    sb      t1, 0x008C(t7)             # 0000008C
lbl_80070FC0:
    lbu     t6, 0x0010(t2)             # 00000010
    lbu     t9, 0x0011(t2)             # 00000011
    addu    v0, t0, t6
    lb      t8, 0x008C(v0)             # 0000018B
    addu    v1, t0, t9
    addiu   t5, t8, 0x0001             # t5 = 00000001
    sb      t5, 0x008C(v0)             # 0000018B
    lb      t7, 0x008C(v1)             # 0000008C
    addiu   t6, t7, 0x0001             # t6 = 00000001
    sb      t6, 0x008C(v1)             # 0000008C
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80070FF0:
    addiu   $at, $zero, 0x007A         # $at = 0000007A
    beq     a3, $at, lbl_80071004
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   $at, $zero, 0x0073         # $at = 00000073
    bne     a3, $at, lbl_80071020
lbl_80071004:
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lw      t8, 0x00A4(t0)             # 8011A674
    lui     $at, 0x1000                # $at = 10000000
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addu    t5, t8, $at
    b       lbl_80071410
    sw      t5, 0x00A4(t0)             # 8011A674
lbl_80071020:
    addiu   $at, $zero, 0x0072         # $at = 00000072
    bne     a3, $at, lbl_80071050
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lh      t9, 0x002E(t0)             # 8011A5FE
    lh      t6, 0x0030(t0)             # 8011A600
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t7, t9, 0x0010             # t7 = 00000010
    addiu   t8, t6, 0x0010             # t8 = 00000011
    sh      t7, 0x002E(t0)             # 8011A5FE
    b       lbl_80071410
    sh      t8, 0x0030(t0)             # 8011A600
lbl_80071050:
    addiu   $at, $zero, 0x0083         # $at = 00000083
    bnel    a3, $at, lbl_80071074
    addiu   $at, $zero, 0x0078         # $at = 00000078
    lw      a0, 0x0030($sp)
    jal     func_800720BC
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    b       lbl_80071410
    lbu     v0, 0x0037($sp)
    addiu   $at, $zero, 0x0078         # $at = 00000078
lbl_80071074:
    bnel    a3, $at, lbl_800710C4
    addiu   $at, $zero, 0x0079         # $at = 00000079
    jal     func_80072500
    lw      a0, 0x0030($sp)
    lw      a0, 0x0030($sp)
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    jal     func_80072588
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lhu     v1, 0x0F2A(t0)             # 8011B4FA
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    andi    t5, v1, 0x0100             # t5 = 00000000
    bne     t5, $zero, lbl_800710B8
    ori     t9, v1, 0x0100             # t9 = 00000100
    b       lbl_80071410
    sh      t9, 0x0F2A(t0)             # 8011B4FA
lbl_800710B8:
    b       lbl_80071410
    lbu     v0, 0x0037($sp)
    addiu   $at, $zero, 0x0079         # $at = 00000079
lbl_800710C4:
    bnel    a3, $at, lbl_80071114
    slti    $at, a3, 0x0084
    jal     func_80072500
    lw      a0, 0x0030($sp)
    lw      a0, 0x0030($sp)
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    jal     func_80072588
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lhu     v1, 0x0F2A(t0)             # 8011B4FA
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    andi    t7, v1, 0x0100             # t7 = 00000000
    bne     t7, $zero, lbl_80071108
    ori     t6, v1, 0x0100             # t6 = 00000100
    b       lbl_80071410
    sh      t6, 0x0F2A(t0)             # 8011B4FA
lbl_80071108:
    b       lbl_80071410
    lbu     v0, 0x0037($sp)
    slti    $at, a3, 0x0084
lbl_80071114:
    bne     $at, $zero, lbl_80071140
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    slti    $at, a3, 0x008A
    beq     $at, $zero, lbl_80071140
    sll     t8, a3,  1
    lui     a0, 0x800F                 # a0 = 800F0000
    addu    a0, a0, t8
    jal     func_800721CC
    lh      a0, 0x7474(a0)             # 800F7474
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80071140:
    bne     a2, a3, lbl_800711A4
    slti    $at, a3, 0x0015
    sll     a1, v1, 16
    lui     t5, 0x8012                 # t5 = 80120000
    sra     a1, a1, 16
    addiu   t5, t5, 0xA5D0             # t5 = 8011A5D0
    addu    a0, a1, t5
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addu    v1, a0, v0
lbl_80071168:
    lbu     t9, 0x0074(v1)             # 00000074
    lbu     t7, 0x0037($sp)
    bnel    a2, t9, lbl_80071188
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sb      t7, 0x0074(v1)             # 00000074
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   v0, v0, 0x0001             # v0 = 00000100
lbl_80071188:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    bnel    $at, $zero, lbl_80071168
    addu    v1, a0, v0
    b       lbl_800713F4
    nop
lbl_800711A4:
    bne     $at, $zero, lbl_800711B0
    slti    $at, a3, 0x0021
    bne     $at, $zero, lbl_800711B8
lbl_800711B0:
    addiu   $at, $zero, 0x0082         # $at = 00000082
    bne     a3, $at, lbl_80071344
lbl_800711B8:
    sll     a1, v1, 16
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     a3, $at, lbl_800712F0
    sra     a1, a1, 16
    addiu   $at, $zero, 0x001B         # $at = 0000001B
    beq     a3, $at, lbl_800712F0
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   $at, $zero, 0x0082         # $at = 00000082
    bne     a3, $at, lbl_800711F0
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t6, $zero, 0x001A          # t6 = 0000001A
    lui     a1, 0x8010                 # a1 = 80100000
    sb      t6, 0x0037($sp)
    lbu     a1, -0x70B2(a1)            # 800F8F4E
lbl_800711F0:
    addiu   t8, t8, 0xA5D0             # t8 = 8011A5D0
    addu    a0, a1, t8
    addu    v1, a0, v0
lbl_800711FC:
    lbu     t5, 0x0074(v1)             # 00000074
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    bnel    a2, t5, lbl_800712C8
    addiu   v0, v0, 0x0001             # v0 = 00000001
    lbu     t9, 0x006C(t0)             # 8011A63C
    addu    a0, a1, v0
    lbu     t7, 0x0037($sp)
    bne     a0, t9, lbl_80071248
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sb      t7, 0x0069(t0)             # 8011A639
    lw      a0, 0x0030($sp)
    jal     func_8006FC00
    sw      v1, 0x001C($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lw      v1, 0x001C($sp)
    b       lbl_800712B4
    sb      $zero, 0x13E3(t0)          # 8011B9B3
lbl_80071248:
    lbu     t6, 0x006D(t0)             # 8011A63D
    lbu     t8, 0x0037($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    bnel    a0, t6, lbl_80071284
    lbu     t5, 0x006E(t0)             # 8011A63E
    sb      t8, 0x006A(t0)             # 8011A63A
    lw      a0, 0x0030($sp)
    jal     func_8006FC00
    sw      v1, 0x001C($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lw      v1, 0x001C($sp)
    b       lbl_800712B4
    sb      $zero, 0x13E4(t0)          # 8011B9B4
    lbu     t5, 0x006E(t0)             # 8011A63E
lbl_80071284:
    lbu     t9, 0x0037($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    bnel    a0, t5, lbl_800712B8
    lbu     t7, 0x0037($sp)
    sb      t9, 0x006B(t0)             # 8011A63B
    lw      a0, 0x0030($sp)
    jal     func_8006FB50
    sw      v1, 0x001C($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lw      v1, 0x001C($sp)
    sb      $zero, 0x13E5(t0)          # 8011B9B5
lbl_800712B4:
    lbu     t7, 0x0037($sp)
lbl_800712B8:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    b       lbl_80071410
    sb      t7, 0x0074(v1)             # 00000074
    addiu   v0, v0, 0x0001             # v0 = 00000100
lbl_800712C8:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    bnel    $at, $zero, lbl_800711FC
    addu    v1, a0, v0
    lbu     t6, 0x0037($sp)
    lui     t4, 0x8010                 # t4 = 80100000
    addu    t4, t4, t6
    b       lbl_800713F4
    lbu     t4, -0x70CC(t4)            # 800F8F34
lbl_800712F0:
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t8, t8, 0xA5D0             # t8 = 8011A5D0
    addu    a0, a1, t8
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addu    v1, a0, v0
lbl_80071308:
    lbu     t5, 0x0074(v1)             # 00000074
    lbu     t9, 0x0037($sp)
    bnel    a2, t5, lbl_80071328
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sb      t9, 0x0074(v1)             # 00000074
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   v0, v0, 0x0001             # v0 = 00000100
lbl_80071328:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    bnel    $at, $zero, lbl_80071308
    addu    v1, a0, v0
    b       lbl_800713F4
    nop
lbl_80071344:
    slti    $at, a3, 0x0021
    bne     $at, $zero, lbl_800713F4
    slti    $at, a3, 0x0038
    beq     $at, $zero, lbl_800713F4
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     a3, $at, lbl_80071370
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lhu     t7, 0x0EF2(t0)             # 8011B4C2
    ori     t6, t7, 0x8000             # t6 = 00008000
    sh      t6, 0x0EF2(t0)             # 8011B4C2
lbl_80071370:
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    v0, t0, t4
    lbu     a1, 0x0074(v0)             # 00000174
    lbu     t8, 0x0037($sp)
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    beq     a1, a2, lbl_800713EC
    sb      t8, 0x0074(v0)             # 00000174
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addu    v1, t0, v0
lbl_80071398:
    lbu     t5, 0x0068(v1)             # 00000068
    bne     a1, t5, lbl_800713D4
    addiu   $at, $zero, 0x002C         # $at = 0000002C
    beq     a3, $at, lbl_800713C8
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    lbu     t9, 0x0037($sp)
    lw      a0, 0x0030($sp)
    andi    a1, v0, 0xFFFF             # a1 = 00000001
    jal     func_8006FB50
    sb      t9, 0x0068(v1)             # 00000068
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800713C8:
    sb      t7, 0x0068(v1)             # 00000068
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800713D4:
    addiu   v0, v0, 0x0001             # v0 = 00000100
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    bnel    $at, $zero, lbl_80071398
    addu    v1, t0, v0
lbl_800713EC:
    b       lbl_80071410
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800713F4:
    lui     t0, 0x8012                 # t0 = 80120000
    lbu     t8, 0x0037($sp)
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addu    t6, t0, t3
    lbu     v0, 0x0074(t6)             # 00000074
    addu    t5, t0, t4
    sb      t8, 0x0074(t5)             # 00000074
lbl_80071410:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80071420:
# ? Check if player has item?
# A0 = Item Index
# V0 = 0xFF if no Item?
    sw      a0, 0x0000($sp)
    lui     a2, 0x8010                 # a2 = 80100000
    addiu   a2, a2, 0x8F34             # a2 = 800F8F34
    andi    a0, a0, 0x00FF             # a0 = 00000000
    addu    t6, a2, a0
    lbu     v1, 0x0000(t6)             # 00000000
    slti    $at, a0, 0x008A
    or      v0, a0, $zero              # v0 = 00000000
    sll     a1, v1, 16
    bne     $at, $zero, lbl_80071464
    sra     a1, a1, 16
    sll     t7, v0,  1
    lui     t8, 0x800F                 # t8 = 800F0000
    addu    t8, t8, t7
    lh      t8, 0x7400(t8)             # 800F7400
    addu    t9, a2, t8
    lbu     a1, 0x0000(t9)             # 00000000
lbl_80071464:
    slti    $at, v0, 0x0066
    bne     $at, $zero, lbl_80071480
    slti    $at, v0, 0x006C
    beql    $at, $zero, lbl_80071484
    slti    $at, v0, 0x006C
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80071480:
    slti    $at, v0, 0x006C
lbl_80071484:
    bne     $at, $zero, lbl_8007149C
    slti    $at, v0, 0x0072
    beql    $at, $zero, lbl_800714A0
    slti    $at, v0, 0x003B
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8007149C:
    slti    $at, v0, 0x003B
lbl_800714A0:
    bne     $at, $zero, lbl_800714FC
    slti    $at, v0, 0x003E
    beq     $at, $zero, lbl_800714FC
    addiu   $at, $zero, 0x003D         # $at = 0000003D
    bne     v0, $at, lbl_800714C0
    sll     t0, v0,  2
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800714C0:
    lui     t1, 0x8010                 # t1 = 80100000
    addu    t1, t1, t0
    lui     t2, 0x8010                 # t2 = 80100000
    lbu     t2, -0x7340(t2)            # 800F8CC0
    lw      t1, -0x74FC(t1)            # 800F8B04
    lui     t4, 0x8012                 # t4 = 80120000
    lhu     t4, -0x5994(t4)            # 8011A66C
    sllv    t3, t1, t2
    and     t5, t3, t4
    beq     t5, $zero, lbl_800714F4
    nop
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_800714F4:
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800714FC:
    slti    $at, v0, 0x003E
    bne     $at, $zero, lbl_8007154C
    slti    $at, v0, 0x0041
    beq     $at, $zero, lbl_8007154C
    sll     t6, v0,  2
    lui     t7, 0x8010                 # t7 = 80100000
    addu    t7, t7, t6
    lui     t8, 0x8010                 # t8 = 80100000
    lbu     t8, -0x733F(t8)            # 800F8CC1
    lw      t7, -0x7508(t7)            # 800F8AF8
    lui     t0, 0x8012                 # t0 = 80120000
    lhu     t0, -0x5994(t0)            # 8011A66C
    sllv    t9, t7, t8
    and     t1, t9, t0
    beq     t1, $zero, lbl_80071544
    nop
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_80071544:
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8007154C:
    slti    $at, v0, 0x0041
    bne     $at, $zero, lbl_8007159C
    slti    $at, v0, 0x0044
    beq     $at, $zero, lbl_8007159C
    sll     t2, v0,  2
    lui     t3, 0x8010                 # t3 = 80100000
    addu    t3, t3, t2
    lui     t4, 0x8010                 # t4 = 80100000
    lbu     t4, -0x733E(t4)            # 800F8CC2
    lw      t3, -0x7514(t3)            # 800F8AEC
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x5994(t6)            # 8011A66C
    sllv    t5, t3, t4
    and     t7, t5, t6
    beq     t7, $zero, lbl_80071594
    nop
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_80071594:
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8007159C:
    slti    $at, v0, 0x0044
    bne     $at, $zero, lbl_800715EC
    slti    $at, v0, 0x0047
    beq     $at, $zero, lbl_800715EC
    sll     t8, v0,  2
    lui     t9, 0x8010                 # t9 = 80100000
    addu    t9, t9, t8
    lui     t0, 0x8010                 # t0 = 80100000
    lbu     t0, -0x733D(t0)            # 800F8CC3
    lw      t9, -0x7520(t9)            # 800F8AE0
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x5994(t2)            # 8011A66C
    sllv    t1, t9, t0
    and     t3, t1, t2
    beq     t3, $zero, lbl_800715E4
    nop
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_800715E4:
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800715EC:
    addiu   $at, $zero, 0x0074         # $at = 00000074
    beq     v0, $at, lbl_80071608
    addiu   $at, $zero, 0x0075         # $at = 00000075
    beq     v0, $at, lbl_80071608
    addiu   $at, $zero, 0x0076         # $at = 00000076
    bnel    v0, $at, lbl_80071614
    addiu   $at, $zero, 0x0077         # $at = 00000077
lbl_80071608:
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80071610:
    addiu   $at, $zero, 0x0077         # $at = 00000077
lbl_80071614:
    bnel    v0, $at, lbl_80071628
    slti    $at, v0, 0x0006
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80071624:
    slti    $at, v0, 0x0006
lbl_80071628:
    bne     $at, $zero, lbl_80071640
    slti    $at, v0, 0x000A
    beql    $at, $zero, lbl_80071644
    addiu   $at, $zero, 0x0096         # $at = 00000096
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80071640:
    addiu   $at, $zero, 0x0096         # $at = 00000096
lbl_80071644:
    beq     v0, $at, lbl_80071654
    addiu   $at, $zero, 0x0097         # $at = 00000097
    bnel    v0, $at, lbl_80071660
    addiu   $at, $zero, 0x004A         # $at = 0000004A
lbl_80071654:
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8007165C:
    addiu   $at, $zero, 0x004A         # $at = 0000004A
lbl_80071660:
    beq     v0, $at, lbl_80071670
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_800716A4
lbl_80071670:
    lui     t5, 0x8010                 # t5 = 80100000
    lw      t5, -0x7380(t5)            # 800F8C80
    lw      t4, -0x5990(t4)            # 8011A670
    lui     t7, 0x8010                 # t7 = 80100000
    lbu     t7, -0x733C(t7)            # 800F8CC4
    and     t6, t4, t5
    srav    t8, t6, t7
    bne     t8, $zero, lbl_8007169C
    nop
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8007169C:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800716A4:
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    beq     v0, $at, lbl_800716B8
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    bnel    v0, $at, lbl_800716C4
    addiu   $at, $zero, 0x0048         # $at = 00000048
lbl_800716B8:
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800716C0:
    addiu   $at, $zero, 0x0048         # $at = 00000048
lbl_800716C4:
    beq     v0, $at, lbl_800716D4
    addiu   $at, $zero, 0x0049         # $at = 00000049
    bnel    v0, $at, lbl_800716E0
    addiu   $at, $zero, 0x004D         # $at = 0000004D
lbl_800716D4:
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800716DC:
    addiu   $at, $zero, 0x004D         # $at = 0000004D
lbl_800716E0:
    beq     v0, $at, lbl_800716F0
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80071724
lbl_800716F0:
    lui     t0, 0x8010                 # t0 = 80100000
    lw      t0, -0x737C(t0)            # 800F8C84
    lw      t9, -0x5990(t9)            # 8011A670
    lui     t2, 0x8010                 # t2 = 80100000
    lbu     t2, -0x733B(t2)            # 800F8CC5
    and     t1, t9, t0
    srav    t3, t1, t2
    bne     t3, $zero, lbl_8007171C
    nop
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8007171C:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80071724:
    slti    $at, v0, 0x0098
    bne     $at, $zero, lbl_80071740
    slti    $at, v0, 0x009C
    beql    $at, $zero, lbl_80071744
    slti    $at, v0, 0x004E
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80071740:
    slti    $at, v0, 0x004E
lbl_80071744:
    bne     $at, $zero, lbl_8007175C
    slti    $at, v0, 0x0058
    beql    $at, $zero, lbl_80071760
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8007175C:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
lbl_80071760:
    bnel    v0, $at, lbl_80071774
    addiu   $at, $zero, 0x0058         # $at = 00000058
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80071770:
    addiu   $at, $zero, 0x0058         # $at = 00000058
lbl_80071774:
    beq     v0, $at, lbl_80071788
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   $at, $zero, 0x0095         # $at = 00000095
    bnel    v0, $at, lbl_800717AC
    addiu   $at, $zero, 0x0010         # $at = 00000010
lbl_80071788:
    lhu     t4, -0x4B3E(t4)            # 8011B4C2
    andi    t5, t4, 0x0008             # t5 = 00000000
    bne     t5, $zero, lbl_800717A0
    nop
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800717A0:
    jr      $ra
    addiu   v0, $zero, 0x0058          # v0 = 00000058
lbl_800717A8:
    addiu   $at, $zero, 0x0010         # $at = 00000010
lbl_800717AC:
    bnel    v0, $at, lbl_800717C0
    addiu   $at, $zero, 0x007A         # $at = 0000007A
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800717BC:
    addiu   $at, $zero, 0x007A         # $at = 0000007A
lbl_800717C0:
    beq     v0, $at, lbl_800717D0
    addiu   $at, $zero, 0x0073         # $at = 00000073
    bnel    v0, $at, lbl_800717DC
    addiu   $at, $zero, 0x0072         # $at = 00000072
lbl_800717D0:
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800717D8:
    addiu   $at, $zero, 0x0072         # $at = 00000072
lbl_800717DC:
    bnel    v0, $at, lbl_800717F0
    addiu   $at, $zero, 0x0083         # $at = 00000083
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800717EC:
    addiu   $at, $zero, 0x0083         # $at = 00000083
lbl_800717F0:
    bnel    v0, $at, lbl_80071804
    addiu   $at, $zero, 0x0078         # $at = 00000078
    jr      $ra
    addiu   v0, $zero, 0x0083          # v0 = 00000083
lbl_80071800:
    addiu   $at, $zero, 0x0078         # $at = 00000078
lbl_80071804:
    beq     v0, $at, lbl_80071818
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   $at, $zero, 0x0079         # $at = 00000079
    bnel    v0, $at, lbl_8007183C
    slti    $at, v0, 0x0084
lbl_80071818:
    lhu     t6, -0x4B06(t6)            # 8011B4FA
    andi    t7, t6, 0x0100             # t7 = 00000000
    bne     t7, $zero, lbl_80071830
    nop
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80071830:
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_80071838:
    slti    $at, v0, 0x0084
lbl_8007183C:
    bne     $at, $zero, lbl_80071858
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    slti    $at, v0, 0x008A
    beq     $at, $zero, lbl_80071858
    nop
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80071858:
    bne     a2, v0, lbl_80071868
    slti    $at, v0, 0x0015
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80071868:
    bne     $at, $zero, lbl_80071874
    slti    $at, v0, 0x0021
    bne     $at, $zero, lbl_8007187C
lbl_80071874:
    addiu   $at, $zero, 0x0082         # $at = 00000082
    bne     v0, $at, lbl_80071930
lbl_8007187C:
    sll     a0, v1, 16
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     v0, $at, lbl_800718E8
    sra     a0, a0, 16
    addiu   $at, $zero, 0x001B         # $at = 0000001B
    beq     v0, $at, lbl_800718E8
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   $at, $zero, 0x0082         # $at = 00000082
    bne     v0, $at, lbl_800718AC
    addiu   t8, t8, 0xA5D0             # t8 = 8011A5D0
    lui     a0, 0x8010                 # a0 = 80100000
    lbu     a0, -0x70B2(a0)            # 800F8F4E
lbl_800718AC:
    or      v0, $zero, $zero           # v0 = 00000000
    addu    v1, a0, t8
    addu    t9, v1, v0
lbl_800718B8:
    lbu     t0, 0x0074(t9)             # 80120074
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     a2, t0, lbl_800718D4
    sra     v0, v0, 16
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800718D4:
    slti    $at, v0, 0x0004
    bnel    $at, $zero, lbl_800718B8
    addu    t9, v1, v0
    b       lbl_8007194C
    nop
lbl_800718E8:
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xA5D0             # t1 = 8011A5D0
    addu    v1, a0, t1
    addiu   a0, $zero, 0x00FF          # a0 = 000000FF
    or      v0, $zero, $zero           # v0 = 00000000
    addu    t2, v1, v0
lbl_80071900:
    lbu     t3, 0x0074(t2)             # 80100074
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     a0, t3, lbl_8007191C
    sra     v0, v0, 16
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8007191C:
    slti    $at, v0, 0x0004
    bnel    $at, $zero, lbl_80071900
    addu    t2, v1, v0
    b       lbl_8007194C
    nop
lbl_80071930:
    slti    $at, v0, 0x0021
    bne     $at, $zero, lbl_8007194C
    slti    $at, v0, 0x0038
    beq     $at, $zero, lbl_8007194C
    nop
    jr      $ra
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8007194C:
    lui     v0, 0x8012                 # v0 = 80120000
    addu    v0, v0, a1
    lbu     v0, -0x59BC(v0)            # 8011A644
    jr      $ra
    nop


func_80071960:
# Inventory Editor, Remove Item (Inventory and C-Buttons)
# A0 = Item Index
# A1 = Inventory Slot Index
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     a0, $at, lbl_80071994
    or      v0, a0, $zero              # v0 = 00000000
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x70BB(t6)            # 800F8F45
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    addu    t7, a2, t6
    sb      $zero, 0x008C(t7)          # 0000008C
lbl_80071994:
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    addu    t8, a2, a1
    sb      a3, 0x0074(t8)             # 00000074
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addu    a0, a2, v1
lbl_800719B0:
    lbu     t9, 0x0068(a0)             # 00000068
    addiu   v1, v1, 0x0001             # v1 = 00000002
    sll     v1, v1, 16
    bne     v0, t9, lbl_800719CC
    sra     v1, v1, 16
    sb      a3, 0x0068(a0)             # 00000068
    sb      a3, 0x006B(a0)             # 0000006B
lbl_800719CC:
    slti    $at, v1, 0x0004
    bnel    $at, $zero, lbl_800719B0
    addu    a0, a2, v1
    jr      $ra
    nop


func_800719E0:
# Try Update Trade Quest Item
# (Egg -> Chicken/Pocket Cucco, Ruto's Letter -> Bottle)
# A0 = Global Context
# A1 = Old Item Index
# A2 = New Item Index
# V0 = 1 if successful, else 0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    or      v0, $zero, $zero           # v0 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    addu    v1, a0, v0
lbl_80071A10:
    lbu     t6, 0x0074(v1)             # 00000074
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     a3, t6, lbl_80071A74
    sra     v0, v0, 16
    sb      a2, 0x0074(v1)             # 00000074
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addu    v1, a0, v0
lbl_80071A30:
    lbu     t7, 0x0068(v1)             # 00000068
    bnel    a3, t7, lbl_80071A58
    addiu   v0, v0, 0x0001             # v0 = 00000002
    sb      a2, 0x0068(v1)             # 00000068
    lw      a0, 0x0018($sp)
    jal     func_8006FB50
    andi    a1, v0, 0xFFFF             # a1 = 00000002
    b       lbl_80071A84
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   v0, v0, 0x0001             # v0 = 00000002
lbl_80071A58:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    bnel    $at, $zero, lbl_80071A30
    addu    v1, a0, v0
    b       lbl_80071A84
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80071A74:
    slti    $at, v0, 0x0018
    bnel    $at, $zero, lbl_80071A10
    addu    v1, a0, v0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80071A84:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80071A94:
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x59AA(t6)            # 8011A656
    addiu   v0, $zero, 0x0014          # v0 = 00000014
    lui     t7, 0x8012                 # t7 = 80120000
    bne     v0, t6, lbl_80071AB4
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80071AB4:
    lbu     t7, -0x59A9(t7)            # 8011A657
    lui     t8, 0x8012                 # t8 = 80120000
    bne     v0, t7, lbl_80071ACC
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80071ACC:
    lbu     t8, -0x59A8(t8)            # 8011A658
    lui     t9, 0x8012                 # t9 = 80120000
    bne     v0, t8, lbl_80071AE4
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80071AE4:
    lbu     t9, -0x59A7(t9)            # 8011A659
    bnel    v0, t9, lbl_80071AFC
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80071AF8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80071AFC:
    jr      $ra
    nop


func_80071B04:
    sw      a0, 0x0000($sp)
    andi    a0, a0, 0x00FF             # a0 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x59AA(t6)            # 8011A656
    lui     t7, 0x8012                 # t7 = 80120000
    or      v0, a0, $zero              # v0 = 00000000
    bne     a0, t6, lbl_80071B2C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80071B2C:
    lbu     t7, -0x59A9(t7)            # 8011A657
    lui     t8, 0x8012                 # t8 = 80120000
    bne     v0, t7, lbl_80071B44
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80071B44:
    lbu     t8, -0x59A8(t8)            # 8011A658
    lui     t9, 0x8012                 # t9 = 80120000
    bne     v0, t8, lbl_80071B5C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80071B5C:
    lbu     t9, -0x59A7(t9)            # 8011A659
    bnel    v0, t9, lbl_80071B74
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80071B70:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80071B74:
    jr      $ra
    nop


func_80071B7C:
# Update Bottle Contents
# A0 = Global Context
# A1 = Item Slot Index (C-Item)
# A2 = u8 Button Index (0 = B, 1 = C-Left, 2 = C-Down, 3 = C-Right)
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a2, 0x0028($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    andi    a3, a1, 0x00FF             # a3 = 00000000
    addu    t6, t0, a2
    lbu     t7, 0x006B(t6)             # 0000006B
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    addu    v1, t0, a2
    addu    v0, t0, t7
    lbu     t8, 0x0074(v0)             # 00000074
    andi    a1, a2, 0xFFFF             # a1 = 00000000
    bne     t8, $at, lbl_80071BD0
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    a3, $at, lbl_80071BD4
    sb      a3, 0x0074(v0)             # 00000074
    addiu   a3, $zero, 0x001F          # a3 = 0000001F
lbl_80071BD0:
    sb      a3, 0x0074(v0)             # 00000074
lbl_80071BD4:
    sb      a3, 0x0068(v1)             # 00000068
    lw      a0, 0x0020($sp)
    sw      v1, 0x0018($sp)
    jal     func_8006FB50
    sb      a3, 0x0027($sp)
    lw      t9, 0x0020($sp)
    lbu     a3, 0x0027($sp)
    lw      v1, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t9
    sh      a3, 0x099E($at)            # 0001099E
    sb      $zero, 0x13E2(v1)          # 000013E2
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80071C14:
# Related to checking if Link should revive from a fairy
# A0 = Global Context
# V0 = 1 if should revive from fairy, else 0?
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    lbu     a3, -0x70B4(a3)            # 800F8F4C
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t6, t6, 0xA5D0             # t6 = 8011A5D0
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    addu    v1, a3, t6
    addu    a1, v1, v0
lbl_80071C40:
    lbu     t7, 0x0074(a1)             # 00000074
    bnel    a0, t7, lbl_80071CC4
    addiu   v0, v0, 0x0001             # v0 = 00000001
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addu    a2, v0, v1
lbl_80071C5C:
    lbu     t8, 0x0068(a2)             # 00000068
    bne     a0, t8, lbl_80071C98
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x0068(a2)             # 00000068
    lw      a0, 0x0028($sp)
    andi    a1, v1, 0xFFFF             # a1 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_8006FB50
    sw      a2, 0x001C($sp)
    lw      a2, 0x001C($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lbu     a3, 0x006B(a2)             # 0000006B
    b       lbl_80071CB0
    addu    a1, a3, t0
lbl_80071C98:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0004
    bnel    $at, $zero, lbl_80071C5C
    addu    a2, v0, v1
lbl_80071CB0:
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x0074(a1)             # 00000074
    b       lbl_80071CDC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   v0, v0, 0x0001             # v0 = 00000002
lbl_80071CC4:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    bnel    $at, $zero, lbl_80071C40
    addu    a1, v1, v0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80071CDC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80071CEC:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    blez    a1, lbl_80071D1C
    or      v1, a1, $zero              # v1 = 00000000
lbl_80071D00:
    sll     t6, v0,  2
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0xFFFF             # v0 = 00000001
    slt     $at, v0, v1
    addu    t7, a0, t6
    bne     $at, $zero, lbl_80071D00
    sw      $zero, 0x0000(t7)          # 00000000
lbl_80071D1C:
    jr      $ra
    nop


func_80071D24:
# ROM st: do_action_static
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    sw      a1, 0x003C($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a2, 0x0040($sp)
    slti    $at, a1, 0x001D
    bne     $at, $zero, lbl_80071D50
    or      v0, a1, $zero              # v0 = 00000000
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
lbl_80071D50:
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x4627(t6)            # 8011B9D9
    addiu   a1, v0, 0x001D             # a1 = 00000027
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     t6, $zero, lbl_80071D6C
    lui     v1, 0x8012                 # v1 = 80120000
    andi    v0, a1, 0xFFFF             # v0 = 00000027
lbl_80071D6C:
    beq     v0, $at, lbl_80071E00
    addiu   v1, v1, 0x0C38             # v1 = 80120C38
    addiu   $at, $zero, 0x0027         # $at = 00000027
    beq     v0, $at, lbl_80071E00
    addiu   a0, s0, 0x01C0             # a0 = 000001C0
    addiu   a1, s0, 0x01D8             # a1 = 000001D8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      v0, 0x0034($sp)
    jal     func_80004220              # osCreateMesgQueue
    sw      a0, 0x0030($sp)
    lh      t8, 0x0042($sp)
    addiu   v1, $zero, 0x0180          # v1 = 00000180
    lw      v0, 0x0034($sp)
    multu   t8, v1
    lw      t7, 0x0134(s0)             # 00000134
    lw      t2, 0x0030($sp)
    lui     t1, 0x008E                 # t1 = 008E0000
    addiu   t1, t1, 0x0000             # t1 = 008E0000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0160             # a0 = 00000160
    addiu   a3, $zero, 0x0180          # a3 = 00000180
    sw      t2, 0x0014($sp)
    mflo    t9
    addu    a1, t7, t9
    nop
    multu   v0, v1
    mflo    t0
    addu    a2, t0, t1
    jal     func_80000D28
    nop
    lw      a0, 0x0030($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    b       lbl_80071E5C
    lw      $ra, 0x002C($sp)
lbl_80071E00:
    lw      t3, 0x0134(s0)             # 00000134
    lh      t5, 0x0042($sp)
    lui     $at, 0x8000                # $at = 80000000
    lui     v0, 0x800F                 # v0 = 800F0000
    addu    t4, t3, $at
    sll     t6, t5,  2
    sw      t4, 0x001C(v1)             # 0000001C
    addu    v0, v0, t6
    lw      v0, 0x7588(v0)             # 800F7588
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, v0,  4
    srl     t9, t7, 28
    sll     t0, t9,  2
    addu    t1, v1, t0
    lw      t2, 0x0000(t1)             # 00000000
    and     t8, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    a0, t8, t2
    addu    a0, a0, $at
    jal     func_80071CEC
    addiu   a1, $zero, 0x0060          # a1 = 00000060
    lw      $ra, 0x002C($sp)
lbl_80071E5C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80071E6C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a1, 0x002C($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a3
    lhu     t6, 0x06E0(t6)             # 000106E0
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    beq     a1, t6, lbl_80071EE4
    addu    a0, a3, $at
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      a1, 0x01F0(a0)             # 000001F0
    sh      t7, 0x01EC(a0)             # 000001EC
    swc1    $f4, 0x01F4(a0)            # 000001F4
    sw      a3, 0x0028($sp)
    sw      a0, 0x001C($sp)
    jal     func_80071D24
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a3, 0x0028($sp)
    lui     t8, 0x0001                 # t8 = 00010000
    lw      a0, 0x001C($sp)
    addu    t8, t8, a3
    lhu     t8, 0x0934(t8)             # 00010934
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    beql    t8, $zero, lbl_80071EE8
    lw      $ra, 0x0014($sp)
    sh      t9, 0x01EC(a0)             # 000001EC
lbl_80071EE4:
    lw      $ra, 0x0014($sp)
lbl_80071EE8:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80071EF4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a1, 0x0034($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      $ra, 0x001C($sp)
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    beq     a1, $at, lbl_80071F18
    or      v1, a1, $zero              # v1 = 00000000
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     a1, $at, lbl_80071FC4
lbl_80071F18:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v0, a0, $at
    lh      t6, 0x01F8(v0)             # 000001F8
    bnel    t6, $zero, lbl_80071FC8
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    lbu     t7, 0x1D6C(a0)             # 00001D6C
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bnel    t7, $zero, lbl_80071FC8
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    bne     v1, $at, lbl_80071F80
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t8, 0x0014($sp)
    addiu   a0, $zero, 0x6843          # a0 = 00006843
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      v0, 0x0028($sp)
    jal     func_800C806C
    sw      v1, 0x0024($sp)
    lw      v0, 0x0028($sp)
    lw      v1, 0x0024($sp)
lbl_80071F80:
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    bne     v1, $at, lbl_80071FA4
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x4394             # a0 = 80104394
    addiu   a1, $zero, 0x685F          # a1 = 0000685F
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    jal     func_800C5264
    sw      v0, 0x0028($sp)
    lw      v0, 0x0028($sp)
lbl_80071FA4:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      t9, 0x01F8(v0)             # 000001F8
    lui     $at, 0x800F                # $at = 800F0000
    sh      $zero, 0x74F0($at)         # 800F74F0
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    b       lbl_80071FE8
    sh      t0, 0x74F4($at)            # 800F74F4
lbl_80071FC4:
    addiu   $at, $zero, 0x001F         # $at = 0000001F
lbl_80071FC8:
    bne     v1, $at, lbl_80071FE8
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v0, a0, $at
    lh      t1, 0x01F8(v0)             # 000001F8
    beql    t1, $zero, lbl_80071FEC
    lw      $ra, 0x001C($sp)
    sh      $zero, 0x01F8(v0)          # 000001F8
lbl_80071FE8:
    lw      $ra, 0x001C($sp)
lbl_80071FEC:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80071FF8:
# ROM st: do_action_static
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    andi    a3, a1, 0xFFFF             # a3 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x4627(t6)            # 8011B9D9
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    beq     t6, $zero, lbl_80072030
    lw      s0, 0x0040($sp)
    addiu   a3, a3, 0x001D             # a3 = 0000001D
    andi    a3, a3, 0xFFFF             # a3 = 0000001D
lbl_80072030:
    addu    s0, s0, $at
    sh      a3, 0x01FC(s0)             # 000001FC
    addiu   a0, s0, 0x01C0             # a0 = 000001C0
    sw      a0, 0x0030($sp)
    sw      a3, 0x0034($sp)
    addiu   a1, s0, 0x01D8             # a1 = 000001D8
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      v0, 0x0034($sp)
    lw      a1, 0x0134(s0)             # 00000134
    lw      t9, 0x0030($sp)
    sll     t7, v0,  2
    lui     t8, 0x008E                 # t8 = 008E0000
    subu    t7, t7, v0
    sll     t7, t7,  7
    addiu   t8, t8, 0x0000             # t8 = 008E0000
    addu    a2, t7, t8
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0160             # a0 = 00000160
    addiu   a3, $zero, 0x0180          # a3 = 00000180
    addiu   a1, a1, 0x0180             # a1 = 00000180
    jal     func_80000D28
    sw      t9, 0x0014($sp)
    lw      a0, 0x0030($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t0, 0x01FA(s0)             # 000001FA
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_800720BC:
# Update Player Health
# A0 = Global Context
# A1 = s16 Increment Health (e.g. -4 deals 1/4th heart damage)
# V0 = ?
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    sll     s0, a1, 16
    sra     s0, s0, 16
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    blez    s0, lbl_80072118
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t6, 0x0014($sp)
    addiu   a0, $zero, 0x480B          # a0 = 0000480B
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     a1, 0x8012                 # a1 = 80120000
    b       lbl_8007213C
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
lbl_80072118:
    addiu   a1, a1, 0xA5D0             # a1 = 80114BA0
    lbu     t7, 0x003D(a1)             # 80114BDD
    beql    t7, $zero, lbl_80072140
    lh      t8, 0x0030(a1)             # 80114BD0
    bgezl   s0, lbl_80072140
    lh      t8, 0x0030(a1)             # 80114BD0
    sra     s0, s0,  1
    sll     s0, s0, 16
    sra     s0, s0, 16
lbl_8007213C:
    lh      t8, 0x0030(a1)             # 80114BD0
lbl_80072140:
    lh      v0, 0x002E(a1)             # 80114BCE
    addu    t9, t8, s0
    sh      t9, 0x0030(a1)             # 80114BD0
    lh      a0, 0x0030(a1)             # 80114BD0
    slt     $at, v0, a0
    beq     $at, $zero, lbl_80072164
    nop
    sh      v0, 0x0030(a1)             # 80114BD0
    lh      a0, 0x0030(a1)             # 80114BD0
lbl_80072164:
    bgez    a0, lbl_80072178
    andi    v0, a0, 0x000F             # v0 = 00000000
    beq     v0, $zero, lbl_80072178
    nop
    addiu   v0, v0, 0xFFF0             # v0 = FFFFFFF0
lbl_80072178:
    bgtz    a0, lbl_80072188
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_8007218C
    sh      $zero, 0x0030(a1)          # 80114BD0
lbl_80072188:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8007218C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800721A0:
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sra     a0, a0, 16
    lh      t6, 0x002E(v0)             # 8011A5FE
    sll     t7, a0,  4
    addu    t8, t6, t7
    sh      t8, 0x002E(v0)             # 8011A5FE
    jr      $ra
    nop


func_800721CC:
# Adds or removes rupees from the rupee accumulator (negative values subtract, positive add)
# A0 = s32 rupee amount
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sra     a0, a0, 16
    lh      t6, 0x13CC(v0)             # 8011B99C
    addu    t7, t6, a0
    sh      t7, 0x13CC(v0)             # 8011B99C
    jr      $ra
    nop


func_800721F4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sll     a0, a0, 16
    sra     a0, a0, 16
    sra     a1, a1, 16
    bne     a0, $zero, lbl_80072288
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x70CC(t6)            # 800F8F34
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addu    v1, v0, t6
    lb      t7, 0x008C(v1)             # 0000008C
    lui     t0, 0x8010                 # t0 = 80100000
    lui     t2, 0x8010                 # t2 = 80100000
    addu    t8, t7, a1
    sb      t8, 0x008C(v1)             # 0000008C
    lw      t0, -0x7368(t0)            # 800F8C98
    lw      t9, 0x00A0(v0)             # 8011A670
    lbu     t2, -0x7336(t2)            # 800F8CCA
    lui     a2, 0x8010                 # a2 = 80100000
    and     t1, t9, t0
    srav    t3, t1, t2
    sll     t4, t3,  1
    addu    a2, a2, t4
    lhu     a2, -0x7304(a2)            # 800F8CFC
    lb      a0, 0x008C(v1)             # 0000008C
    slt     $at, a0, a2
    bne     $at, $zero, lbl_80072278
    nop
    jr      $ra
    sb      a2, 0x008C(v1)             # 0000008C
lbl_80072278:
    bgez    a0, lbl_800724F8
    nop
    jr      $ra
    sb      $zero, 0x008C(v1)          # 0000008C
lbl_80072288:
    bne     a0, $at, lbl_80072300
    lui     v0, 0x8012                 # v0 = 80120000
    lui     t5, 0x8010                 # t5 = 80100000
    lbu     t5, -0x70CB(t5)            # 800F8F35
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     t9, 0x8010                 # t9 = 80100000
    addu    v1, v0, t5
    lb      t6, 0x008C(v1)             # 0000008C
    lui     t1, 0x8010                 # t1 = 80100000
    lui     a2, 0x8010                 # a2 = 80100000
    addu    t7, t6, a1
    sb      t7, 0x008C(v1)             # 0000008C
    lw      t9, -0x7364(t9)            # 800F8C9C
    lw      t8, 0x00A0(v0)             # 8011A670
    lbu     t1, -0x7335(t1)            # 800F8CCB
    lb      a0, 0x008C(v1)             # 0000008C
    and     t0, t8, t9
    srav    t2, t0, t1
    sll     t3, t2,  1
    addu    a2, a2, t3
    lhu     a2, -0x72FC(a2)            # 800F8D04
    slt     $at, a0, a2
    bne     $at, $zero, lbl_800722F0
    nop
    jr      $ra
    sb      a2, 0x008C(v1)             # 0000008C
lbl_800722F0:
    bgez    a0, lbl_800724F8
    nop
    jr      $ra
    sb      $zero, 0x008C(v1)          # 0000008C
lbl_80072300:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     a0, $at, lbl_80072354
    lui     t4, 0x8010                 # t4 = 80100000
    lbu     t4, -0x70C3(t4)            # 800F8F3D
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addu    v1, v0, t4
    lb      t5, 0x008C(v1)             # 0000008C
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    addu    t6, t5, a1
    sb      t6, 0x008C(v1)             # 0000008C
    lb      a0, 0x008C(v1)             # 0000008C
    slti    $at, a0, 0x0032
    bne     $at, $zero, lbl_80072344
    nop
    jr      $ra
    sb      t7, 0x008C(v1)             # 0000008C
lbl_80072344:
    bgez    a0, lbl_800724F8
    nop
    jr      $ra
    sb      $zero, 0x008C(v1)          # 0000008C
lbl_80072354:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a0, $at, lbl_800723D0
    lui     v0, 0x8012                 # v0 = 80120000
    lui     t8, 0x8010                 # t8 = 80100000
    lbu     t8, -0x70C9(t8)            # 800F8F37
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     t2, 0x8010                 # t2 = 80100000
    addu    v1, v0, t8
    lb      t9, 0x008C(v1)             # 0000008C
    lui     t4, 0x8010                 # t4 = 80100000
    lui     a2, 0x8010                 # a2 = 80100000
    addu    t0, t9, a1
    sb      t0, 0x008C(v1)             # 0000008C
    lw      t2, -0x7380(t2)            # 800F8C80
    lw      t1, 0x00A0(v0)             # 8011A670
    lbu     t4, -0x733C(t4)            # 800F8CC4
    lb      a0, 0x008C(v1)             # 0000008C
    and     t3, t1, t2
    srav    t5, t3, t4
    sll     t6, t5,  1
    addu    a2, a2, t6
    lhu     a2, -0x7334(a2)            # 800F8CCC
    slt     $at, a0, a2
    bne     $at, $zero, lbl_800723C0
    nop
    jr      $ra
    sb      a2, 0x008C(v1)             # 0000008C
lbl_800723C0:
    bgez    a0, lbl_800724F8
    nop
    jr      $ra
    sb      $zero, 0x008C(v1)          # 0000008C
lbl_800723D0:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     a0, $at, lbl_800723E4
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   $at, $zero, 0x0058         # $at = 00000058
    bne     a0, $at, lbl_80072454
lbl_800723E4:
    lui     t7, 0x8010                 # t7 = 80100000
    lbu     t7, -0x70C6(t7)            # 800F8F3A
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     t1, 0x8010                 # t1 = 80100000
    addu    v1, v0, t7
    lb      t8, 0x008C(v1)             # 0000008C
    lui     t3, 0x8010                 # t3 = 80100000
    lui     a2, 0x8010                 # a2 = 80100000
    addu    t9, t8, a1
    sb      t9, 0x008C(v1)             # 0000008C
    lw      t1, -0x736C(t1)            # 800F8C94
    lw      t0, 0x00A0(v0)             # 8011A670
    lbu     t3, -0x7337(t3)            # 800F8CC9
    lb      a0, 0x008C(v1)             # 0000008C
    and     t2, t0, t1
    srav    t4, t2, t3
    sll     t5, t4,  1
    addu    a2, a2, t5
    lhu     a2, -0x730C(a2)            # 800F8CF4
    slt     $at, a0, a2
    bne     $at, $zero, lbl_80072444
    nop
    jr      $ra
    sb      a2, 0x008C(v1)             # 0000008C
lbl_80072444:
    bgez    a0, lbl_800724F8
    nop
    jr      $ra
    sb      $zero, 0x008C(v1)          # 0000008C
lbl_80072454:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a0, $at, lbl_800724D0
    lui     v0, 0x8012                 # v0 = 80120000
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x70CA(t6)            # 800F8F36
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     t0, 0x8010                 # t0 = 80100000
    addu    v1, v0, t6
    lb      t7, 0x008C(v1)             # 0000008C
    lui     t2, 0x8010                 # t2 = 80100000
    lui     a2, 0x8010                 # a2 = 80100000
    addu    t8, t7, a1
    sb      t8, 0x008C(v1)             # 0000008C
    lw      t0, -0x737C(t0)            # 800F8C84
    lw      t9, 0x00A0(v0)             # 8011A670
    lbu     t2, -0x733B(t2)            # 800F8CC5
    lb      a0, 0x008C(v1)             # 0000008C
    and     t1, t9, t0
    srav    t3, t1, t2
    sll     t4, t3,  1
    addu    a2, a2, t4
    lhu     a2, -0x732C(a2)            # 800F8CD4
    slt     $at, a0, a2
    bne     $at, $zero, lbl_800724C0
    nop
    jr      $ra
    sb      a2, 0x008C(v1)             # 0000008C
lbl_800724C0:
    bgez    a0, lbl_800724F8
    nop
    jr      $ra
    sb      $zero, 0x008C(v1)          # 0000008C
lbl_800724D0:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     a0, $at, lbl_800724F8
    lui     t5, 0x8010                 # t5 = 80100000
    lbu     t5, -0x70BC(t5)            # 800F8F44
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addu    v1, v0, t5
    lb      t6, 0x008C(v1)             # 0000008C
    addu    t7, t6, a1
    sb      t7, 0x008C(v1)             # 0000008C
lbl_800724F8:
    jr      $ra
    nop


func_80072500:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a0, 0x0000($sp)
    lbu     t6, 0x003A(v0)             # 8011A60A
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    beq     t6, $zero, lbl_80072540
    nop
    lbu     t8, 0x003C(v0)             # 8011A60C
    lh      t7, 0x13F0(v0)             # 8011B9C0
    sh      t1, 0x13F0(v0)             # 8011B9C0
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  4
    addiu   t0, t9, 0x0030             # t0 = 00000030
    sh      t0, 0x13F6(v0)             # 8011B9C6
    sh      t7, 0x13F2(v0)             # 8011B9C2
lbl_80072540:
    jr      $ra
    nop


func_80072548:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      a0, 0x0000($sp)
    lh      v0, 0x13F0(v1)             # 8011B9C0
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80072580
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_80072580
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    v0, $at, lbl_80072580
    sh      t6, 0x13F0(v1)             # 8011B9C0
    sh      v0, 0x13F2(v1)             # 8011B9C2
    sh      t6, 0x13F0(v1)             # 8011B9C0
lbl_80072580:
    jr      $ra
    nop


func_80072588:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sra     a1, a1, 16
    sra     a2, a2, 16
    sw      $ra, 0x001C($sp)
    lbu     t6, 0x003A(v1)             # 8011A60A
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     t6, $zero, lbl_800725C8
    nop
    b       lbl_80072830
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800725C8:
    beql    a2, $at, lbl_80072620
    sltiu   $at, a2, 0x0006
    lb      t7, 0x0033(v1)             # 8011A603
    subu    t8, t7, a1
    bgezl   t8, lbl_80072620
    sltiu   $at, a2, 0x0006
    lh      t9, 0x13F4(v1)             # 8011B9C4
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    beq     t9, $zero, lbl_80072614
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t0, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
lbl_80072614:
    b       lbl_80072830
    or      v0, $zero, $zero           # v0 = 00000000
    sltiu   $at, a2, 0x0006
lbl_80072620:
    beq     $at, $zero, lbl_8007282C
    sll     t1, a2,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t1
    lw      t1, -0x787C($at)           # 80108784
    jr      t1
    nop
    lh      v0, 0x13F0(v1)             # 000013F0
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    beql    v0, $zero, lbl_80072658
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_8007267C
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_80072658:
    bnel    v0, $at, lbl_80072668
    lb      t2, 0x0033(v1)             # 00000033
    sb      $zero, 0x1C27(a0)          # 00001C27
    lb      t2, 0x0033(v1)             # 00000033
lbl_80072668:
    sh      t4, 0x13F0(v1)             # 000013F0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    subu    t3, t2, a1
    b       lbl_80072830
    sh      t3, 0x13F8(v1)             # 000013F8
lbl_8007267C:
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t5, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_80072830
    or      v0, $zero, $zero           # v0 = 00000000
    lh      v0, 0x13F0(v1)             # 000013F0
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    beql    v0, $zero, lbl_800726CC
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_800726F0
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_800726CC:
    bnel    v0, $at, lbl_800726DC
    lb      t6, 0x0033(v1)             # 00000033
    sb      $zero, 0x1C27(a0)          # 00001C27
    lb      t6, 0x0033(v1)             # 00000033
lbl_800726DC:
    sh      t8, 0x13F0(v1)             # 000013F0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    subu    t7, t6, a1
    b       lbl_80072830
    sh      t7, 0x13F8(v1)             # 000013F8
lbl_800726F0:
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_80072830
    or      v0, $zero, $zero           # v0 = 00000000
    lh      v0, 0x13F0(v1)             # 000013F0
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $zero, lbl_80072764
    nop
    lb      t0, 0x0033(v1)             # 00000033
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    beq     t0, $zero, lbl_8007275C
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    sh      t1, 0x0720($at)            # 00010720
    addiu   t2, $zero, 0x0007          # t2 = 00000007
    sh      t2, 0x13F0(v1)             # 000013F0
    b       lbl_80072830
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8007275C:
    b       lbl_80072830
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80072764:
    bne     v0, $at, lbl_80072774
    nop
    b       lbl_80072830
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80072774:
    b       lbl_80072830
    or      v0, $zero, $zero           # v0 = 00000000
    lh      v0, 0x13F0(v1)             # 000013F0
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    beql    v0, $zero, lbl_80072798
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_800727BC
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_80072798:
    bnel    v0, $at, lbl_800727A8
    lb      t3, 0x0033(v1)             # 00000033
    sb      $zero, 0x1C27(a0)          # 00001C27
    lb      t3, 0x0033(v1)             # 00000033
lbl_800727A8:
    sh      t5, 0x13F0(v1)             # 000013F0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    subu    t4, t3, a1
    b       lbl_80072830
    sh      t4, 0x13F8(v1)             # 000013F8
lbl_800727BC:
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_80072830
    or      v0, $zero, $zero           # v0 = 00000000
    lh      v0, 0x13F4(v1)             # 000013F4
    lb      a0, 0x0033(v1)             # 00000033
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    slt     $at, v0, a0
    bne     $at, $zero, lbl_8007282C
    addu    t7, a0, a1
    sh      t7, 0x13F8(v1)             # 000013F8
    lh      t8, 0x13F8(v1)             # 000013F8
    slt     $at, t8, v0
    bnel    $at, $zero, lbl_80072824
    sh      t9, 0x13F0(v1)             # 000013F0
    sh      v0, 0x13F8(v1)             # 000013F8
    sh      t9, 0x13F0(v1)             # 000013F0
lbl_80072824:
    b       lbl_80072830
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8007282C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80072830:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80072840:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x001C($sp)
    lh      t6, 0x13F0(v1)             # 8011B9C0
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sltiu   $at, t7, 0x000A
    beq     $at, $zero, lbl_800730D8
    sll     t7, t7,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t7
    lw      t7, -0x7864($at)           # 8010879C
    jr      t7
    nop
    lb      v0, 0x0032(v1)             # 8011A602
    lh      a0, 0x13F4(v1)             # 8011B9C4
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    addu    $at, v0, $zero
    sll     v0, v0,  2
    subu    v0, v0, $at
    sll     v0, v0,  4
    sll     v0, v0, 16
    sra     v0, v0, 16
    beq     v0, a0, lbl_800728E8
    slt     $at, a0, v0
    beq     $at, $zero, lbl_800728CC
    addiu   t6, a0, 0xFFF8             # t6 = FFFFFFF8
    addiu   t8, a0, 0x0008             # t8 = 00000008
    sh      t8, 0x13F4(v1)             # 8011B9C4
    lh      t9, 0x13F4(v1)             # 8011B9C4
    slt     $at, v0, t9
    beq     $at, $zero, lbl_800730DC
    nop
    b       lbl_800730DC
    sh      v0, 0x13F4(v1)             # 8011B9C4
lbl_800728CC:
    sh      t6, 0x13F4(v1)             # 8011B9C4
    lh      t7, 0x13F4(v1)             # 8011B9C4
    slt     $at, v0, t7
    bnel    $at, $zero, lbl_800730E0
    lw      $ra, 0x001C($sp)
    b       lbl_800730DC
    sh      v0, 0x13F4(v1)             # 8011B9C4
lbl_800728E8:
    b       lbl_800730DC
    sh      t8, 0x13F0(v1)             # 8011B9C0
    lb      t9, 0x0033(v1)             # 8011A603
    lw      t7, 0x135C(v1)             # 8011B92C
    addiu   t6, t9, 0x0004             # t6 = 00000004
    bne     t7, $zero, lbl_80072944
    sb      t6, 0x0033(v1)             # 8011A603
    lw      t8, 0x1360(v1)             # 8011B930
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    slti    $at, t8, 0x0004
    beq     $at, $zero, lbl_80072944
    addiu   a0, $zero, 0x401F          # a0 = 0000401F
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
lbl_80072944:
    lh      v0, 0x13F6(v1)             # 8011B9C6
    lb      t6, 0x0033(v1)             # 8011A603
    slt     $at, t6, v0
    bnel    $at, $zero, lbl_800730E0
    lw      $ra, 0x001C($sp)
    lh      t7, 0x13F2(v1)             # 8011B9C2
    sb      v0, 0x0033(v1)             # 8011A603
    sh      $zero, 0x13F2(v1)          # 8011B9C2
    b       lbl_800730DC
    sh      t7, 0x13F0(v1)             # 8011B9C0
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sh      t8, 0x13F0(v1)             # 8011B9C0
    lui     $at, 0x800F                # $at = 800F0000
    b       lbl_800730DC
    sh      t1, 0x75B0($at)            # 800F75B0
    lb      t9, 0x0033(v1)             # 8011A603
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t6, t9, 0xFFFE             # t6 = FFFFFFFE
    sb      t6, 0x0033(v1)             # 8011A603
    lb      v0, 0x0033(v1)             # 8011A603
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    bgtzl   v0, lbl_800729D4
    lh      t7, 0x13F8(v1)             # 8011B9C8
    sb      $zero, 0x0033(v1)          # 8011A603
    sh      t7, 0x13F0(v1)             # 8011B9C0
    lui     $at, 0x800F                # $at = 800F0000
    sh      t8, 0x7510($at)            # 800F7510
    lui     $at, 0x800F                # $at = 800F0000
    sh      t9, 0x750C($at)            # 800F750C
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    b       lbl_80072A08
    sh      t6, 0x7508($at)            # 800F7508
    lh      t7, 0x13F8(v1)             # 8011B9C8
lbl_800729D4:
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    bne     t7, v0, lbl_80072A08
    nop
    sh      t8, 0x13F0(v1)             # 8011B9C0
    lui     $at, 0x800F                # $at = 800F0000
    sh      t9, 0x7510($at)            # 800F7510
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sh      t6, 0x750C($at)            # 800F750C
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sh      t7, 0x7508($at)            # 800F7508
lbl_80072A08:
    lui     $ra, 0x800F                # $ra = 800F0000
    lh      $ra, 0x75B4($ra)           # 800F75B4
    lui     v0, 0x800F                 # v0 = 800F0000
    lui     t9, 0x800F                 # t9 = 800F0000
    sll     $ra, $ra,  1
    addu    v0, v0, $ra
    lh      v0, 0x75A8(v0)             # 800F75A8
    addiu   t9, t9, 0x7590             # t9 = 800F7590
    lui     a2, 0x800F                 # a2 = 800F0000
    sll     t8, v0,  2
    subu    t8, t8, v0
    sll     t8, t8,  1
    addu    a1, t8, t9
    lh      t5, 0x0000(a1)             # 00000000
    lh      a2, 0x7508(a2)             # 800F7508
    lui     t0, 0x800F                 # t0 = 800F0000
    lui     a3, 0x800F                 # a3 = 800F0000
    subu    v1, a2, t5
    lh      a3, 0x750C(a3)             # 800F750C
    bltz    v1, lbl_80072A64
    lh      t0, 0x7510(t0)             # 800F7510
    b       lbl_80072A68
    or      a0, v1, $zero              # a0 = 8011A5D0
lbl_80072A64:
    subu    a0, $zero, v1
lbl_80072A68:
    lui     t1, 0x800F                 # t1 = 800F0000
    lh      t1, 0x75B0(t1)             # 800F75B0
    lh      t4, 0x0002(a1)             # 00000002
    div     $zero, a0, t1
    mflo    v1
    sll     v1, v1, 16
    bne     t1, $zero, lbl_80072A8C
    nop
    break   # 0x01C00
lbl_80072A8C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_80072AA4
    lui     $at, 0x8000                # $at = 80000000
    bne     a0, $at, lbl_80072AA4
    nop
    break   # 0x01800
lbl_80072AA4:
    subu    v0, a3, t4
    bltz    v0, lbl_80072AB8
    sra     v1, v1, 16
    b       lbl_80072ABC
    or      a0, v0, $zero              # a0 = 800F0000
lbl_80072AB8:
    subu    a0, $zero, v0
lbl_80072ABC:
    div     $zero, a0, t1
    lh      t3, 0x0004(a1)             # 00000004
    mflo    t2
    sll     t2, t2, 16
    bne     t1, $zero, lbl_80072AD8
    nop
    break   # 0x01C00
lbl_80072AD8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_80072AF0
    lui     $at, 0x8000                # $at = 80000000
    bne     a0, $at, lbl_80072AF0
    nop
    break   # 0x01800
lbl_80072AF0:
    subu    v0, t0, t3
    bltz    v0, lbl_80072B04
    sra     t2, t2, 16
    b       lbl_80072B08
    or      a0, v0, $zero              # a0 = 800F0000
lbl_80072B04:
    subu    a0, $zero, v0
lbl_80072B08:
    slt     $at, a2, t5
    bnel    $at, $zero, lbl_80072B28
    addu    t7, a2, v1
    subu    t6, a2, v1
    lui     $at, 0x800F                # $at = 800F0000
    b       lbl_80072B30
    sh      t6, 0x7508($at)            # 800F7508
    addu    t7, a2, v1
lbl_80072B28:
    lui     $at, 0x800F                # $at = 800F0000
    sh      t7, 0x7508($at)            # 800F7508
lbl_80072B30:
    slt     $at, a3, t4
    bnel    $at, $zero, lbl_80072B50
    addu    t9, a3, t2
    subu    t8, a3, t2
    lui     $at, 0x800F                # $at = 800F0000
    b       lbl_80072B58
    sh      t8, 0x750C($at)            # 800F750C
    addu    t9, a3, t2
lbl_80072B50:
    lui     $at, 0x800F                # $at = 800F0000
    sh      t9, 0x750C($at)            # 800F750C
lbl_80072B58:
    slt     $at, t0, t3
    bne     $at, $zero, lbl_80072BA8
    nop
    div     $zero, a0, t1
    bne     t1, $zero, lbl_80072B74
    nop
    break   # 0x01C00
lbl_80072B74:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_80072B8C
    lui     $at, 0x8000                # $at = 80000000
    bne     a0, $at, lbl_80072B8C
    nop
    break   # 0x01800
lbl_80072B8C:
    mflo    t6
    sll     t7, t6, 16
    sra     t8, t7, 16
    subu    t9, t0, t8
    lui     $at, 0x800F                # $at = 800F0000
    b       lbl_80072BE8
    sh      t9, 0x7510($at)            # 800F7510
lbl_80072BA8:
    div     $zero, a0, t1
    bne     t1, $zero, lbl_80072BB8
    nop
    break   # 0x01C00
lbl_80072BB8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_80072BD0
    lui     $at, 0x8000                # $at = 80000000
    bne     a0, $at, lbl_80072BD0
    nop
    break   # 0x01800
lbl_80072BD0:
    mflo    t6
    sll     t7, t6, 16
    sra     t8, t7, 16
    addu    t9, t0, t8
    lui     $at, 0x800F                # $at = 800F0000
    sh      t9, 0x7510($at)            # 800F7510
lbl_80072BE8:
    addiu   t1, t1, 0xFFFF             # t1 = 800EFFFF
    sll     t1, t1, 16
    sra     t1, t1, 16
    lui     $at, 0x800F                # $at = 800F0000
    bne     t1, $zero, lbl_800730DC
    sh      t1, 0x75B0($at)            # 800F75B0
    lui     $at, 0x800F                # $at = 800F0000
    sh      t5, 0x7508($at)            # 800F7508
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x800F                # $at = 800F0000
    sh      t4, 0x750C($at)            # 800F750C
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t8, 0x75B4(t8)             # 800F75B4
    lui     $at, 0x800F                # $at = 800F0000
    sh      t3, 0x7510($at)            # 800F7510
    addu    t7, t6, $ra
    lh      t1, 0x04E4(t7)             # 000005E3
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t9, t8, 0x0001             # t9 = 800F0001
    sh      t9, 0x75B4($at)            # 800F75B4
    lui     $at, 0x800F                # $at = 800F0000
    sll     t6, t9, 16
    sra     t7, t6, 16
    sh      t1, 0x75B0($at)            # 800F75B0
    slti    $at, t7, 0x0004
    bne     $at, $zero, lbl_800730DC
    lui     $at, 0x800F                # $at = 800F0000
    b       lbl_800730DC
    sh      $zero, 0x75B4($at)         # 800F75B4
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    lui     $at, 0x800F                # $at = 800F0000
    sh      t8, 0x7510($at)            # 800F7510
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sh      t9, 0x750C($at)            # 800F750C
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sh      t6, 0x7508($at)            # 800F7508
    b       lbl_800730DC
    sh      $zero, 0x13F0(v1)          # 8011B9C0
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at
    lhu     t7, 0x0934(v0)             # 800F0934
    bne     t7, $zero, lbl_80072E18
    nop
    lhu     t8, 0x0936(v0)             # 800F0936
    bne     t8, $zero, lbl_80072E18
    nop
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, a0
    lbu     t9, 0x03DC(t9)             # 000103DC
    bne     t9, $zero, lbl_80072E18
    nop
    lhu     t6, 0x0A20(v0)             # 800F0A20
    bne     t6, $zero, lbl_80072E18
    nop
    lb      t7, 0x1E15(v0)             # 800F1E15
    bne     t7, $zero, lbl_80072E18
    nop
    lbu     t8, 0x241B(v0)             # 800F241B
    bne     t8, $zero, lbl_80072E18
    nop
    jal     func_8009CB08
    sw      a0, 0x0020($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    bne     v0, $zero, lbl_80072E18
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lb      t9, 0x0033(v1)             # 8011A603
    beql    t9, $zero, lbl_80072D70
    lw      t7, 0x0020($sp)
    jal     func_80079DD0
    lw      a0, 0x0020($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    slti    $at, v0, 0x0002
    bne     $at, $zero, lbl_80072D34
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    jal     func_80079DD0
    lw      a0, 0x0020($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    slti    $at, v0, 0x0005
    bne     $at, $zero, lbl_80072D6C
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
lbl_80072D34:
    lbu     t6, 0x0069(v1)             # 8011A639
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
    lw      t9, 0x0020($sp)
    beql    v0, t6, lbl_80072D64
    lbu     t6, 0x1C27(t9)             # 00001C27
    lbu     t7, 0x006A(v1)             # 8011A63A
    beql    v0, t7, lbl_80072D64
    lbu     t6, 0x1C27(t9)             # 00001C27
    lbu     t8, 0x006B(v1)             # 8011A63B
    bnel    v0, t8, lbl_80072D70
    lw      t7, 0x0020($sp)
    lbu     t6, 0x1C27(t9)             # 00001C27
lbl_80072D64:
    bnel    t6, $zero, lbl_80072DE0
    lw      v0, 0x0020($sp)
lbl_80072D6C:
    lw      t7, 0x0020($sp)
lbl_80072D70:
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    sb      $zero, 0x1C27(t7)          # 00001C27
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a1, a1, 0x4394             # a1 = 80104394
    addiu   a0, $zero, 0x482B          # a0 = 0000482B
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7510             # a0 = 800F7510
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sh      t9, 0x0000(a0)             # 800F7510
    lh      t6, 0x0000(a0)             # 800F7510
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x750C             # v0 = 800F750C
    lui     v1, 0x8012                 # v1 = 80120000
    sh      t6, 0x0000(v0)             # 800F750C
    lh      t7, 0x0000(v0)             # 800F750C
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sh      $zero, 0x13F0(v1)          # 8011B9C0
    lui     $at, 0x800F                # $at = 800F0000
    b       lbl_800730DC
    sh      t7, 0x7508($at)            # 800F7508
    lw      v0, 0x0020($sp)
lbl_80072DE0:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v0, v0, $at
    lh      t8, 0x0230(v0)             # 800F773C
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0230(v0)             # 800F773C
    lh      t6, 0x0230(v0)             # 800F773C
    bne     t6, $zero, lbl_80072E18
    nop
    lb      t7, 0x0033(v1)             # 8011A603
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sb      t8, 0x0033(v1)             # 8011A603
    sh      t9, 0x0230(v0)             # 800F773C
lbl_80072E18:
    lui     $ra, 0x800F                # $ra = 800F0000
    lh      $ra, 0x75B4($ra)           # 800F75B4
    lui     v0, 0x800F                 # v0 = 800F0000
    lui     t7, 0x800F                 # t7 = 800F0000
    sll     $ra, $ra,  1
    addu    v0, v0, $ra
    lh      v0, 0x75A8(v0)             # 800F75A8
    addiu   t7, t7, 0x7590             # t7 = 800F7590
    lui     a2, 0x800F                 # a2 = 800F0000
    sll     t6, v0,  2
    subu    t6, t6, v0
    sll     t6, t6,  1
    addu    a1, t6, t7
    lh      t5, 0x0000(a1)             # 00000000
    lh      a2, 0x7508(a2)             # 800F7508
    lui     t1, 0x800F                 # t1 = 800F0000
    lui     a3, 0x800F                 # a3 = 800F0000
    subu    v1, a2, t5
    bltz    v1, lbl_80072E70
    lui     t0, 0x800F                 # t0 = 800F0000
    b       lbl_80072E74
    or      a0, v1, $zero              # a0 = 8011A5D0
lbl_80072E70:
    subu    a0, $zero, v1
lbl_80072E74:
    lh      t1, 0x75B0(t1)             # 800F75B0
    lh      a3, 0x750C(a3)             # 800F750C
    lh      t4, 0x0002(a1)             # 00000002
    div     $zero, a0, t1
    mflo    v1
    sll     v1, v1, 16
    bne     t1, $zero, lbl_80072E98
    nop
    break   # 0x01C00
lbl_80072E98:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_80072EB0
    lui     $at, 0x8000                # $at = 80000000
    bne     a0, $at, lbl_80072EB0
    nop
    break   # 0x01800
lbl_80072EB0:
    subu    v0, a3, t4
    bltz    v0, lbl_80072EC4
    sra     v1, v1, 16
    b       lbl_80072EC8
    or      a0, v0, $zero              # a0 = 800F0000
lbl_80072EC4:
    subu    a0, $zero, v0
lbl_80072EC8:
    div     $zero, a0, t1
    lh      t0, 0x7510(t0)             # 800F7510
    lh      t3, 0x0004(a1)             # 00000004
    mflo    t2
    sll     t2, t2, 16
    bne     t1, $zero, lbl_80072EE8
    nop
    break   # 0x01C00
lbl_80072EE8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_80072F00
    lui     $at, 0x8000                # $at = 80000000
    bne     a0, $at, lbl_80072F00
    nop
    break   # 0x01800
lbl_80072F00:
    subu    v0, t0, t3
    bltz    v0, lbl_80072F14
    sra     t2, t2, 16
    b       lbl_80072F18
    or      a0, v0, $zero              # a0 = 800F0000
lbl_80072F14:
    subu    a0, $zero, v0
lbl_80072F18:
    slt     $at, a2, t5
    bnel    $at, $zero, lbl_80072F38
    addu    t9, a2, v1
    subu    t8, a2, v1
    lui     $at, 0x800F                # $at = 800F0000
    b       lbl_80072F40
    sh      t8, 0x7508($at)            # 800F7508
    addu    t9, a2, v1
lbl_80072F38:
    lui     $at, 0x800F                # $at = 800F0000
    sh      t9, 0x7508($at)            # 800F7508
lbl_80072F40:
    slt     $at, a3, t4
    bnel    $at, $zero, lbl_80072F60
    addu    t7, a3, t2
    subu    t6, a3, t2
    lui     $at, 0x800F                # $at = 800F0000
    b       lbl_80072F68
    sh      t6, 0x750C($at)            # 800F750C
    addu    t7, a3, t2
lbl_80072F60:
    lui     $at, 0x800F                # $at = 800F0000
    sh      t7, 0x750C($at)            # 800F750C
lbl_80072F68:
    slt     $at, t0, t3
    bne     $at, $zero, lbl_80072FB8
    nop
    div     $zero, a0, t1
    bne     t1, $zero, lbl_80072F84
    nop
    break   # 0x01C00
lbl_80072F84:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_80072F9C
    lui     $at, 0x8000                # $at = 80000000
    bne     a0, $at, lbl_80072F9C
    nop
    break   # 0x01800
lbl_80072F9C:
    mflo    t8
    sll     t9, t8, 16
    sra     t6, t9, 16
    subu    t7, t0, t6
    lui     $at, 0x800F                # $at = 800F0000
    b       lbl_80072FF8
    sh      t7, 0x7510($at)            # 800F7510
lbl_80072FB8:
    div     $zero, a0, t1
    bne     t1, $zero, lbl_80072FC8
    nop
    break   # 0x01C00
lbl_80072FC8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_80072FE0
    lui     $at, 0x8000                # $at = 80000000
    bne     a0, $at, lbl_80072FE0
    nop
    break   # 0x01800
lbl_80072FE0:
    mflo    t8
    sll     t9, t8, 16
    sra     t6, t9, 16
    addu    t7, t0, t6
    lui     $at, 0x800F                # $at = 800F0000
    sh      t7, 0x7510($at)            # 800F7510
lbl_80072FF8:
    addiu   t1, t1, 0xFFFF             # t1 = 800EFFFF
    sll     t1, t1, 16
    sra     t1, t1, 16
    lui     $at, 0x800F                # $at = 800F0000
    bne     t1, $zero, lbl_800730DC
    sh      t1, 0x75B0($at)            # 800F75B0
    lui     $at, 0x800F                # $at = 800F0000
    sh      t5, 0x7508($at)            # 800F7508
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4600(t8)            # 8011BA00
    lui     $at, 0x800F                # $at = 800F0000
    sh      t4, 0x750C($at)            # 800F750C
    lui     t6, 0x800F                 # t6 = 800F0000
    lh      t6, 0x75B4(t6)             # 800F75B4
    lui     $at, 0x800F                # $at = 800F0000
    sh      t3, 0x7510($at)            # 800F7510
    addu    t9, t8, $ra
    lh      t1, 0x04E4(t9)             # 00000534
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t7, t6, 0x0001             # t7 = 800F0001
    sh      t7, 0x75B4($at)            # 800F75B4
    lui     $at, 0x800F                # $at = 800F0000
    sll     t8, t7, 16
    sra     t9, t8, 16
    sh      t1, 0x75B0($at)            # 800F75B0
    slti    $at, t9, 0x0004
    bne     $at, $zero, lbl_800730DC
    lui     $at, 0x800F                # $at = 800F0000
    b       lbl_800730DC
    sh      $zero, 0x75B4($at)         # 800F75B4
    lb      t6, 0x0033(v1)             # 8011A603
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   t7, t6, 0x0004             # t7 = 800F0004
    sb      t7, 0x0033(v1)             # 8011A603
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x401F          # a0 = 0000401F
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lh      v0, 0x13F8(v1)             # 8011B9C8
    lb      t9, 0x0033(v1)             # 8011A603
    slt     $at, t9, v0
    bnel    $at, $zero, lbl_800730E0
    lw      $ra, 0x001C($sp)
    lh      t6, 0x13F2(v1)             # 8011B9C2
    sb      v0, 0x0033(v1)             # 8011A603
    sh      $zero, 0x13F2(v1)          # 8011B9C2
    b       lbl_800730DC
    sh      t6, 0x13F0(v1)             # 8011B9C0
lbl_800730D8:
    sh      $zero, 0x13F0(v1)          # 8011B9C0
lbl_800730DC:
    lw      $ra, 0x001C($sp)
lbl_800730E0:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800730EC:
# parameter_static texture: Magic Meter Side & Middle & Fill
    addiu   $sp, $sp, 0xFF10           # $sp -= 0xF0
    sw      $ra, 0x002C($sp)
    lui     $ra, 0x8012                # $ra = 80120000
    addiu   $ra, $ra, 0xA5D0           # $ra = 8011A5D0
    sw      a0, 0x00F0($sp)
    lw      t6, 0x00F0($sp)
    lb      t7, 0x0032($ra)            # 8011A602
    lw      a1, 0x0000(t6)             # 00000000
    beq     t7, $zero, lbl_800738D8
    or      t0, a1, $zero              # t0 = 00000000
    lh      t8, 0x002E($ra)            # 8011A5FE
    or      a0, a1, $zero              # a0 = 00000000
    slti    $at, t8, 0x00A1
    bne     $at, $zero, lbl_80073138
    lui     t2, 0x8012                 # t2 = 80120000
    addiu   t2, t2, 0xBA00             # t2 = 8011BA00
    lw      t9, 0x0000(t2)             # 8011BA00
    b       lbl_80073148
    lh      t3, 0x0AF8(t9)             # 00000AF8
lbl_80073138:
    lui     t2, 0x8012                 # t2 = 80120000
    addiu   t2, t2, 0xBA00             # t2 = 8011BA00
    lw      t6, 0x0000(t2)             # 8011BA00
    lh      t3, 0x0AF4(t6)             # 00000AF4
lbl_80073148:
    sw      t0, 0x00E4($sp)
    jal     func_8007E610
    sh      t3, 0x00EA($sp)
    lui     t2, 0x8012                 # t2 = 80120000
    addiu   t2, t2, 0xBA00             # t2 = 8011BA00
    lw      t0, 0x00E4($sp)
    lh      t3, 0x00EA($sp)
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(t0)             # 000002B0
    sw      t8, 0x0000(v1)             # 00000000
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t8, 0x750C(t8)             # 800F750C
    lh      t6, 0x7508(t9)             # 800F7508
    lw      t4, 0x00F0($sp)
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t7, t6, 24
    sll     t6, t9, 16
    lui     t9, 0x800F                 # t9 = 800F0000
    lh      t9, 0x7510(t9)             # 800F7510
    or      t8, t7, t6                 # t8 = 00000008
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    andi    t7, t9, 0x00FF             # t7 = 00000000
    sll     t6, t7,  8
    addu    t4, t4, $at
    lhu     t7, 0x0252(t4)             # 00000252
    or      t9, t8, t6                 # t9 = 00000008
    lui     a1, 0x0200                 # a1 = 02000000
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t6, t9, t8                 # t6 = 00000008
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t8, 0x6432                 # t8 = 64320000
    ori     t8, t8, 0x32FF             # t8 = 643232FF
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(t0)             # 000002B0
    lui     t9, 0xFB00                 # t9 = FB000000
    sw      t9, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      t6, 0x0000(t2)             # 8011BA00
    lw      a0, 0x02B0(t0)             # 000002B0
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    lh      t7, 0x0AF6(t6)             # 00000AFE
    addiu   t6, $zero, 0x0400          # t6 = 00000400
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t7, 0x0010($sp)
    addiu   t7, $zero, 0x0400          # t7 = 00000400
    sw      t7, 0x0024($sp)
    sw      t8, 0x001C($sp)
    sw      t6, 0x0020($sp)
    sw      t4, 0x0034($sp)
    sw      t9, 0x0018($sp)
    sw      t3, 0x0014($sp)
    addiu   a1, a1, 0x38C0             # a1 = 020038C0
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8006F3A4
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    lw      t0, 0x00E4($sp)
    lh      t3, 0x00EA($sp)
    lui     t2, 0x8012                 # t2 = 80120000
    addiu   t2, t2, 0xBA00             # t2 = 8011BA00
    sw      v0, 0x02B0(t0)             # 000002B0
    lw      t9, 0x0000(t2)             # 8011BA00
    lui     $ra, 0x8012                # $ra = 80120000
    addiu   $ra, $ra, 0xA5D0           # $ra = 8011A5D0
    lh      t8, 0x0AF6(t9)             # 00000AF6
    lh      t7, 0x13F4($ra)            # 8011B9C4
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   t6, t8, 0x0008             # t6 = 00000008
    sw      t6, 0x0010($sp)
    addiu   t6, $zero, 0x0400          # t6 = 00000400
    addiu   t8, $zero, 0x0400          # t8 = 00000400
    lui     a1, 0x0200                 # a1 = 02000000
    addiu   a1, a1, 0x3940             # a1 = 02003940
    sw      t8, 0x0020($sp)
    sw      t6, 0x0024($sp)
    sw      t9, 0x001C($sp)
    or      a0, v0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    sw      t3, 0x0014($sp)
    jal     func_8006F3A4
    sw      t7, 0x0018($sp)
    lui     t2, 0x8012                 # t2 = 80120000
    lui     t5, 0x0703                 # t5 = 07030000
    lui     $ra, 0x8012                # $ra = 80120000
    addiu   $ra, $ra, 0xA5D0           # $ra = 8011A5D0
    ori     t5, t5, 0xF800             # t5 = 0703F800
    addiu   t2, t2, 0xBA00             # t2 = 8011BA00
    lw      t0, 0x00E4($sp)
    lui     t1, 0xE600                 # t1 = E6000000
    lh      t3, 0x00EA($sp)
    lui     t4, 0xF300                 # t4 = F3000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(t0)             # 000002B0
    lui     t8, 0x0200                 # t8 = 02000000
    addiu   t8, t8, 0x38C0             # t8 = 020038C0
    lui     t9, 0xFD70                 # t9 = FD700000
    sw      t9, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t9, 0x0700                 # t9 = 07000000
    ori     t9, t9, 0x0130             # t9 = 07000130
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    lui     t7, 0xF570                 # t7 = F5700000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t9, 0xE700                 # t9 = E7000000
    lui     t6, 0xF568                 # t6 = F5680000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    ori     t6, t6, 0x0200             # t6 = F5680200
    addiu   t7, $zero, 0x0130          # t7 = 00000130
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(t0)             # 000002B0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t6, 0x0001                 # t6 = 00010000
    ori     t6, t6, 0xC03C             # t6 = 0001C03C
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(t0)             # 000002B0
    lui     t8, 0xF200                 # t8 = F2000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     $at, 0xE400                # $at = E4000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(t0)             # 000002B0
    lw      t9, 0x0000(t2)             # 8011BA00
    lh      t6, 0x13F4($ra)            # 8011B9C4
    lh      t8, 0x0AF6(t9)             # 00000AFE
    addu    t7, t8, t6
    addiu   t9, t7, 0x0010             # t9 = 00000018
    sll     t8, t9,  2
    andi    t6, t8, 0x0FFF             # t6 = 00000000
    sll     t7, t6, 12
    addiu   t8, t3, 0x0010             # t8 = 00000010
    sll     t6, t8,  2
    or      t9, t7, $at                # t9 = E4000008
    andi    t7, t6, 0x0FFF             # t7 = 00000000
    or      t8, t9, t7                 # t8 = E4000008
    sw      t8, 0x0000(v1)             # 00000000
    lw      t6, 0x0000(t2)             # 8011BA00
    lh      t7, 0x13F4($ra)            # 8011B9C4
    lh      t9, 0x0AF6(t6)             # 00000AF6
    addu    t8, t9, t7
    addiu   t6, t8, 0x0008             # t6 = E4000010
    sll     t9, t6,  2
    andi    t7, t9, 0x0FFF             # t7 = 00000008
    sll     t6, t3,  2
    andi    t9, t6, 0x0FFF             # t9 = 00000010
    sll     t8, t7, 12
    or      t7, t8, t9                 # t7 = E4000018
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t8, 0xE100                 # t8 = E1000000
    lui     t9, 0x0100                 # t9 = 01000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t8, 0x0400                 # t8 = 04000000
    ori     t8, t8, 0x0400             # t8 = 04000400
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(t0)             # 000002B0
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    lui     t8, 0xFC30                 # t8 = FC300000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t9, 0x55FE                 # t9 = 55FE0000
    ori     t9, t9, 0xF77B             # t9 = 55FEF77B
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    ori     t8, t8, 0xFE61             # t8 = FC30FE61
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(t0)             # 000002B0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lh      t9, 0x13F0($ra)            # 8011B9C0
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t9, $at, lbl_8007372C
    lw      v1, 0x02B0(t0)             # 000002B0
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t6, 0xFA00                 # t6 = FA000000
    lui     $at, 0xFAFA                # $at = FAFA0000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(t0)             # 000002B0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t8, 0x0034($sp)
    lhu     t9, 0x0252(t8)             # 00000351
    andi    t7, t9, 0x00FF             # t7 = 0000007B
    or      t6, t7, $at                # t6 = FAFA007B
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t7, 0x0200                 # t7 = 02000000
    addiu   t7, t7, 0x3AC0             # t7 = 02003AC0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(t0)             # 000002B0
    lui     t9, 0xFD90                 # t9 = FD900000
    sw      t9, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t8, 0xF590                 # t8 = F5900000
    lui     t9, 0x0700                 # t9 = 07000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t6, 0xF580                 # t6 = F5800000
    ori     t6, t6, 0x0200             # t6 = F5800200
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t7, 0x0003                 # t7 = 00030000
    ori     t7, t7, 0xC03C             # t7 = 0003C03C
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(t0)             # 000002B0
    lui     t9, 0xF200                 # t9 = F2000000
    sw      t9, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    addiu   t1, t3, 0x000A             # t1 = 0000000A
    sll     t1, t1,  2
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    lw      t8, 0x0000(t2)             # 8011BA00
    lb      t7, 0x0033($ra)            # 8011A603
    lui     $at, 0xE400                # $at = E4000000
    lh      t9, 0x0AFA(t8)             # 00000B02
    andi    t1, t1, 0x0FFF             # t1 = 0000000A
    addiu   t4, t3, 0x0003             # t4 = 00000003
    addu    t6, t9, t7
    sll     t8, t6,  2
    andi    t9, t8, 0x0FFF             # t9 = 00000008
    sll     t7, t9, 12
    or      t6, t7, $at                # t6 = E403C03C
    or      t8, t6, t1                 # t8 = E403C03E
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0000(t2)             # 8011BA00
    sll     t4, t4,  2
    andi    t4, t4, 0x0FFF             # t4 = 00000003
    lh      t7, 0x0AFA(t9)             # 00000B02
    sll     t6, t7,  2
    andi    t8, t6, 0x0FFF             # t8 = 0000003C
    sll     t9, t8, 12
    or      t7, t9, t4                 # t7 = 0000000B
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t8, 0xE100                 # t8 = E1000000
    lui     t7, 0xF100                 # t7 = F1000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t6, 0x0400                 # t6 = 04000000
    ori     t6, t6, 0x0400             # t6 = 04000400
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(t0)             # 000002B0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(t0)             # 000002B0
    sw      t6, 0x0000(v1)             # 00000000
    lw      v0, 0x0000(t2)             # 8011BA00
    lh      t8, 0x0798(v0)             # 00000798
    andi    t9, t8, 0x00FF             # t9 = 00000008
    lh      t8, 0x0794(v0)             # 00000794
    sll     t7, t9,  8
    sll     t9, t8, 24
    lh      t8, 0x0796(v0)             # 00000796
    or      t6, t7, t9                 # t6 = 00000008
    andi    t7, t8, 0x00FF             # t7 = 00000008
    sll     t9, t7, 16
    lw      t7, 0x0034($sp)
    or      t8, t6, t9                 # t8 = 00000008
    lhu     t6, 0x0252(t7)             # 0000025A
    andi    t9, t6, 0x00FF             # t9 = 00000008
    or      t7, t8, t9                 # t7 = 00000008
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     $at, 0xE400                # $at = E4000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    lw      t8, 0x0000(t2)             # 8011BA00
    lh      t7, 0x13F8($ra)            # 8011B9C8
    lh      t9, 0x0AFA(t8)             # 00000B02
    addu    t6, t9, t7
    sll     t8, t6,  2
    andi    t9, t8, 0x0FFF             # t9 = 00000008
    sll     t7, t9, 12
    or      t6, t7, $at                # t6 = E4000008
    or      t8, t6, t1                 # t8 = E400000A
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0000(t2)             # 8011BA00
    lh      t7, 0x0AFA(t9)             # 00000B02
    sll     t6, t7,  2
    andi    t8, t6, 0x0FFF             # t8 = 00000008
    sll     t9, t8, 12
    or      t7, t9, t4                 # t7 = 0000000B
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t8, 0xE100                 # t8 = E1000000
    lui     t7, 0xF100                 # t7 = F1000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t6, 0x0400                 # t6 = 04000000
    ori     t6, t6, 0x0400             # t6 = 04000400
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(t0)             # 000002B0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    b       lbl_800738DC
    lw      $ra, 0x002C($sp)
    lw      v1, 0x02B0(t0)             # 000002B0
lbl_8007372C:
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(t0)             # 000002B0
    sw      t9, 0x0000(v1)             # 00000000
    lw      v0, 0x0000(t2)             # 8011BA00
    lh      t7, 0x0798(v0)             # 00000798
    andi    t6, t7, 0x00FF             # t6 = 00000000
    lh      t7, 0x0794(v0)             # 00000794
    sll     t8, t6,  8
    sll     t6, t7, 24
    lh      t7, 0x0796(v0)             # 00000796
    or      t9, t8, t6                 # t9 = 00000008
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t6, t8, 16
    lw      t8, 0x0034($sp)
    or      t7, t9, t6                 # t7 = 00000008
    lhu     t9, 0x0252(t8)             # 00000252
    andi    t6, t9, 0x00FF             # t6 = 00000008
    or      t8, t7, t6                 # t8 = 00000008
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t6, 0x0200                 # t6 = 02000000
    addiu   t6, t6, 0x3AC0             # t6 = 02003AC0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(t0)             # 000002B0
    lui     t7, 0xFD90                 # t7 = FD900000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t9, 0xF590                 # t9 = F5900000
    lui     t7, 0x0700                 # t7 = 07000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(t0)             # 000002B0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(t0)             # 000002B0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t8, 0xF580                 # t8 = F5800000
    ori     t8, t8, 0x0200             # t8 = F5800200
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t6, 0x0003                 # t6 = 00030000
    ori     t6, t6, 0xC03C             # t6 = 0003C03C
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(t0)             # 000002B0
    lui     t7, 0xF200                 # t7 = F2000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     $at, 0xE400                # $at = E4000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(t0)             # 000002B0
    lw      t9, 0x0000(t2)             # 8011BA00
    lb      t6, 0x0033($ra)            # 8011A603
    lh      t7, 0x0AFA(t9)             # 00000B02
    addu    t8, t7, t6
    sll     t9, t8,  2
    andi    t7, t9, 0x0FFF             # t7 = 00000008
    sll     t6, t7, 12
    addiu   t9, t3, 0x000A             # t9 = 0000000A
    sll     t7, t9,  2
    or      t8, t6, $at                # t8 = E403C03C
    andi    t6, t7, 0x0FFF             # t6 = 00000008
    or      t9, t8, t6                 # t9 = E403C03C
    sw      t9, 0x0000(v1)             # 00000000
    lw      t7, 0x0000(t2)             # 8011BA00
    lh      t8, 0x0AFA(t7)             # 00000B02
    sll     t6, t8,  2
    andi    t9, t6, 0x0FFF             # t9 = 00000008
    addiu   t8, t3, 0x0003             # t8 = 00000003
    sll     t6, t8,  2
    sll     t7, t9, 12
    andi    t9, t6, 0x0FFF             # t9 = 00000008
    or      t8, t7, t9                 # t8 = 00000008
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t7, 0xE100                 # t7 = E1000000
    lui     t8, 0xF100                 # t8 = F1000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(t0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(t0)             # 000002B0
    lui     t6, 0x0400                 # t6 = 04000000
    ori     t6, t6, 0x0400             # t6 = 04000400
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(t0)             # 000002B0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
lbl_800738D8:
    lw      $ra, 0x002C($sp)
lbl_800738DC:
    addiu   $sp, $sp, 0x00F0           # $sp += 0xF0
    jr      $ra
    nop


func_800738E8:
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sra     a0, a0, 16
    addiu   t6, $zero, 0x008C          # t6 = 0000008C
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sh      t6, 0x13D8(v0)             # 8011B9A8
    sh      t7, 0x13DC(v0)             # 8011B9AC
    lui     $at, 0x800F                # $at = 800F0000
    sh      $zero, 0x753C($at)         # 800F753C
    beq     a0, $zero, lbl_80073928
    sh      a0, 0x13D4(v0)             # 8011B9A4
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    jr      $ra
    sh      t8, 0x13D2(v0)             # 8011B9A2
lbl_80073928:
    addiu   t9, $zero, 0x0007          # t9 = 00000007
    sh      t9, 0x13D2(v0)             # 8011B9A2
    jr      $ra
    nop


func_80073938:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a0, 0x0000($sp)
    lh      t6, 0x13D2(v0)             # 8011B9A2
    beq     t6, $zero, lbl_80073974
    nop
    lhu     t7, 0x13FC(v0)             # 8011B9CC
    addiu   t9, $zero, 0x00EF          # t9 = 000000EF
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_80073974
    sh      t0, 0x13D4(v0)             # 8011B9A4
    jr      $ra
    sh      t9, 0x13D4(v0)             # 8011B9A4
lbl_80073970:
    sh      t0, 0x13D4(v0)             # 8011B9A4
lbl_80073974:
    jr      $ra
    nop


func_8007397C:
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sra     a0, a0, 16
    addiu   t6, $zero, 0x008C          # t6 = 0000008C
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sh      t6, 0x13D6(v0)             # 8011B9A6
    sh      t7, 0x13DA(v0)             # 8011B9AA
    lui     $at, 0x800F                # $at = 800F0000
    sh      $zero, 0x753C($at)         # 800F753C
    beq     a0, $zero, lbl_800739BC
    sh      a0, 0x13D0(v0)             # 8011B9A0
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    jr      $ra
    sh      t8, 0x13CE(v0)             # 8011B99E
lbl_800739BC:
    addiu   t9, $zero, 0x000B          # t9 = 0000000B
    sh      t9, 0x13CE(v0)             # 8011B99E
    jr      $ra
    nop


func_800739CC:
    lw      v0, 0x02B0(a0)             # 000002B0
    lui     t7, 0xFD70                 # t7 = FD700000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a0)             # 000002B0
    sw      a1, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a0)             # 000002B0
    lui     t9, 0xF570                 # t9 = F5700000
    lui     t5, 0x0700                 # t5 = 07000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a0)             # 000002B0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a0)             # 000002B0
    lui     t7, 0xE600                 # t7 = E6000000
    lui     t9, 0xF300                 # t9 = F3000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a0)             # 000002B0
    lui     t5, 0x070B                 # t5 = 070B0000
    ori     t5, t5, 0xF2AB             # t5 = 070BF2AB
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a0)             # 000002B0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a0)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a0)             # 000002B0
    lui     t9, 0xF560                 # t9 = F5600000
    ori     t9, t9, 0x0600             # t9 = F5600600
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a0)             # 000002B0
    lui     t7, 0x000B                 # t7 = 000B0000
    ori     t7, t7, 0xC03C             # t7 = 000BC03C
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(a0)             # 000002B0
    lui     t6, 0xF200                 # t6 = F2000000
    sw      t6, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a0)             # 000002B0
    lui     t9, 0x0700                 # t9 = 07000000
    ori     t9, t9, 0x0406             # t9 = 07000406
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a0)             # 000002B0
    addiu   t5, $zero, 0x0602          # t5 = 00000602
    sw      t5, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    jr      $ra
    nop


func_80073AB4:
# HUD Draw Function Related
# Contains draw commands for displaying "Navi" text from parameter_static, parameter_static texture: Action Button
    addiu   $sp, $sp, 0xFEB0           # $sp -= 0x150
    sw      s2, 0x0038($sp)
    lui     s2, 0x8012                 # s2 = 80120000
    addiu   s2, s2, 0xBA00             # s2 = 8011BA00
    sw      $ra, 0x003C($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sw      a0, 0x0150($sp)
    lui     t2, 0xFA00                 # t2 = FA000000
    lui     t5, 0xE700                 # t5 = E7000000
    lw      t6, 0x0150($sp)
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0148($sp)
    lw      s1, 0x0000(t6)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t7, 0xFC11                 # t7 = FC110000
    ori     t7, t7, 0x9623             # t7 = FC119623
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t6, 0xFF2F                 # t6 = FF2F0000
    ori     t6, t6, 0xFFFF             # t6 = FF2FFFFF
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      t6, 0x0004(t0)             # 00000004
    sw      t7, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     $at, 0x0001                # $at = 00010000
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      t2, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lw      s0, 0x0150($sp)
    lh      t9, 0x07EE(v1)             # 000007EE
    addu    s0, s0, $at
    andi    t7, t9, 0x00FF             # t7 = 00000008
    lh      t9, 0x07EA(v1)             # 000007EA
    sll     t6, t7,  8
    sll     t7, t9, 24
    lh      t9, 0x07EC(v1)             # 000007EC
    or      t8, t6, t7                 # t8 = FF2FFFFF
    andi    t6, t9, 0x00FF             # t6 = 00000008
    sll     t7, t6, 16
    lhu     t6, 0x0738(s0)             # 00000738
    or      t9, t8, t7                 # t9 = FF2FFFFF
    andi    t8, t6, 0x00FF             # t8 = 00000008
    or      t7, t9, t8                 # t7 = FF2FFFFF
    sw      t7, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    sw      t8, 0x0004(t0)             # 00000004
    sw      t9, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lw      a0, 0x02B0(s1)             # 000002B0
    lui     a1, 0x0200                 # a1 = 02000000
    lh      t7, 0x0820(v1)             # 00000820
    addiu   a1, a1, 0x0A00             # a1 = 02000A00
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    sw      t7, 0x0010($sp)
    lh      t6, 0x0828(v1)             # 00000828
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    sw      t6, 0x0014($sp)
    lh      v0, 0x0FB4(v1)             # 00000FB4
    sw      v0, 0x0018($sp)
    sw      v0, 0x001C($sp)
    lh      t1, 0x0830(v1)             # 00000830
    sll     t1, t1,  1
    andi    t1, t1, 0xFFFF             # t1 = 00000000
    sw      t1, 0x0020($sp)
    jal     func_8006F3A4
    sw      t1, 0x0024($sp)
    lui     t2, 0xFA00                 # t2 = FA000000
    lui     t5, 0xE700                 # t5 = E7000000
    lui     $ra, 0xE400                # $ra = E4000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      t2, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lw      t1, 0x0150($sp)
    lh      t7, 0x07E6(v1)             # 000007E6
    addu    t1, t1, $at
    andi    t6, t7, 0x00FF             # t6 = 00000000
    lh      t7, 0x07E2(v1)             # 000007E2
    sll     t9, t6,  8
    sll     t6, t7, 24
    lh      t7, 0x07E4(v1)             # 000007E4
    or      t8, t9, t6                 # t8 = 00000008
    andi    t9, t7, 0x00FF             # t9 = 00000000
    sll     t6, t9, 16
    lhu     t9, 0x024A(t1)             # 0000024A
    or      t7, t8, t6                 # t7 = 00000008
    andi    t8, t9, 0x00FF             # t8 = 00000000
    or      t6, t7, t8                 # t6 = 00000008
    sw      t6, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      a2, 0x0FB6(v1)             # 00000FB6
    lh      t7, 0x082A(v1)             # 0000082A
    addu    t8, a2, t7
    sll     t6, t8,  2
    lh      t8, 0x0822(v1)             # 00000822
    andi    t9, t6, 0x0FFF             # t9 = 00000008
    or      t7, t9, $ra                # t7 = E4000008
    addu    t6, t8, a2
    sll     t9, t6,  2
    andi    t8, t9, 0x0FFF             # t8 = 00000008
    sll     t6, t8, 12
    or      t9, t7, t6                 # t9 = E4000008
    sw      t9, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t8, 0x082A(v1)             # 0000082A
    lh      t9, 0x0822(v1)             # 00000822
    sll     t7, t8,  2
    andi    t6, t7, 0x0FFF             # t6 = 00000008
    sll     t8, t9,  2
    andi    t7, t8, 0x0FFF             # t7 = 00000008
    sll     t9, t7, 12
    or      t8, t6, t9                 # t8 = E4000008
    sw      t8, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t6, 0xE100                 # t6 = E1000000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t6, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t8, 0xF100                 # t8 = F1000000
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t7, 0x0000(s2)             # 8011BA00
    lh      a0, 0x0832(t7)             # 0000083A
    sll     a0, a0,  1
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    sll     t6, a0, 16
    or      t9, a0, t6                 # t9 = E1000000
    sw      t9, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      t2, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t7, 0x07E6(v1)             # 000007E6
    andi    t6, t7, 0x00FF             # t6 = 00000008
    lh      t7, 0x07E2(v1)             # 000007E2
    sll     t9, t6,  8
    sll     t6, t7, 24
    lh      t7, 0x07E4(v1)             # 000007E4
    or      t8, t9, t6                 # t8 = E1000008
    andi    t9, t7, 0x00FF             # t9 = 00000008
    sll     t6, t9, 16
    lhu     t9, 0x024C(t1)             # 0000024C
    or      t7, t8, t6                 # t7 = E1000008
    andi    t8, t9, 0x00FF             # t8 = 00000008
    or      t6, t7, t8                 # t6 = E1000008
    sw      t6, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      a3, 0x0FB8(v1)             # 00000FB8
    lh      t7, 0x082C(v1)             # 0000082C
    addu    t8, a3, t7
    sll     t6, t8,  2
    lh      t8, 0x0824(v1)             # 00000824
    andi    t9, t6, 0x0FFF             # t9 = 00000008
    or      t7, t9, $ra                # t7 = E4000008
    addu    t6, t8, a3
    sll     t9, t6,  2
    andi    t8, t9, 0x0FFF             # t8 = 00000008
    sll     t6, t8, 12
    or      t9, t7, t6                 # t9 = E5000008
    sw      t9, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t8, 0x082C(v1)             # 0000082C
    lh      t9, 0x0824(v1)             # 00000824
    sll     t7, t8,  2
    andi    t6, t7, 0x0FFF             # t6 = 00000008
    sll     t8, t9,  2
    andi    t7, t8, 0x0FFF             # t7 = 00000008
    sll     t9, t7, 12
    or      t8, t6, t9                 # t8 = E5000008
    sw      t8, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t6, 0xE100                 # t6 = E1000000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t6, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t8, 0xF100                 # t8 = F1000000
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t7, 0x0000(s2)             # 8011BA00
    lh      a0, 0x0834(t7)             # 0000083C
    sll     a0, a0,  1
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    sll     t6, a0, 16
    or      t9, a0, t6                 # t9 = E1000000
    sw      t9, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      t2, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t7, 0x07E6(v1)             # 000007E6
    andi    t6, t7, 0x00FF             # t6 = 00000008
    lh      t7, 0x07E2(v1)             # 000007E2
    sll     t9, t6,  8
    sll     t6, t7, 24
    lh      t7, 0x07E4(v1)             # 000007E4
    or      t8, t9, t6                 # t8 = E1000008
    andi    t9, t7, 0x00FF             # t9 = 00000008
    sll     t6, t9, 16
    lhu     t9, 0x024E(t1)             # 0000024E
    or      t7, t8, t6                 # t7 = E1000008
    andi    t8, t9, 0x00FF             # t8 = 00000008
    or      t6, t7, t8                 # t6 = E1000008
    sw      t6, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      a3, 0x0FBA(v1)             # 00000FBA
    lh      t7, 0x082E(v1)             # 0000082E
    addu    t8, a3, t7
    sll     t6, t8,  2
    lh      t8, 0x0826(v1)             # 00000826
    andi    t9, t6, 0x0FFF             # t9 = 00000008
    or      t7, t9, $ra                # t7 = E4000008
    addu    t6, t8, a3
    sll     t9, t6,  2
    andi    t8, t9, 0x0FFF             # t8 = 00000008
    sll     t6, t8, 12
    or      t9, t7, t6                 # t9 = E5000008
    sw      t9, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t8, 0x082E(v1)             # 0000082E
    lh      t9, 0x0826(v1)             # 00000826
    sll     t7, t8,  2
    andi    t6, t7, 0x0FFF             # t6 = 00000008
    sll     t8, t9,  2
    andi    t7, t8, 0x0FFF             # t7 = 00000008
    sll     t9, t7, 12
    or      t8, t6, t9                 # t8 = E5000008
    sw      t8, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t6, 0xE100                 # t6 = E1000000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t6, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t8, 0xF100                 # t8 = F1000000
    lui     a0, 0x0001                 # a0 = 00010000
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t7, 0x0000(s2)             # 8011BA00
    lh      v1, 0x0836(t7)             # 0000083E
    sll     v1, v1,  1
    andi    v1, v1, 0xFFFF             # v1 = 00000000
    sll     t6, v1, 16
    or      t9, v1, t6                 # t9 = E1000000
    sw      t9, 0x0004(t0)             # 00000004
    lw      t8, 0x0150($sp)
    addu    a0, a0, t8
    lhu     a0, 0x0934(a0)             # 00010934
    slti    $at, a0, 0x0008
    bne     $at, $zero, lbl_80073F34
    slti    $at, a0, 0x0012
    bnel    $at, $zero, lbl_800742FC
    lh      t7, 0x01F8(t1)             # 000001F8
lbl_80073F34:
    lhu     t7, 0x0934(s0)             # 00000934
    bnel    t7, $zero, lbl_80073F50
    lw      t0, 0x02B0(s1)             # 000002B0
    lhu     t6, 0x0936(s0)             # 00000936
    beql    t6, $zero, lbl_800742FC
    lh      t7, 0x01F8(t1)             # 000001F8
    lw      t0, 0x02B0(s1)             # 000002B0
lbl_80073F50:
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     $at, 0xC800                # $at = C8000000
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      t2, 0x0000(t0)             # 00000000
    lh      t7, 0x0256(t1)             # 00000256
    andi    t6, t7, 0x00FF             # t6 = 00000008
    or      t9, t6, $at                # t9 = C8000008
    sw      t9, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t7, 0x081E(v1)             # 0000081E
    addiu   t6, t7, 0x0016             # t6 = 0000001E
    sll     t9, t6,  2
    lh      t6, 0x081C(v1)             # 0000081C
    andi    t8, t9, 0x0FFF             # t8 = 00000008
    or      t7, t8, $ra                # t7 = E4000008
    addiu   t9, t6, 0x0016             # t9 = 00000034
    sll     t8, t9,  2
    andi    t6, t8, 0x0FFF             # t6 = 00000008
    sll     t9, t6, 12
    or      t8, t7, t9                 # t8 = E400003C
    sw      t8, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t6, 0x081E(v1)             # 0000081E
    lh      t8, 0x081C(v1)             # 0000081C
    sll     t7, t6,  2
    andi    t9, t7, 0x0FFF             # t9 = 00000008
    sll     t6, t8,  2
    andi    t7, t6, 0x0FFF             # t7 = 00000008
    sll     t8, t7, 12
    or      t6, t9, t8                 # t6 = E400003C
    sw      t6, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t9, 0xE100                 # t9 = E1000000
    lui     t6, 0xF100                 # t6 = F1000000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t9, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t7, 0x05B6                 # t7 = 05B60000
    ori     t7, t7, 0x05B6             # t7 = 05B605B6
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      t7, 0x0004(t0)             # 00000004
    sw      t6, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0xA5D0             # t4 = 8011A5D0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      t2, 0x0000(t0)             # 00000000
    lh      t6, 0x0256(t1)             # 00000256
    andi    t7, t6, 0x00FF             # t7 = 00000000
    or      t9, t7, $at                # t9 = FFFFFF00
    sw      t9, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t6, 0xFB00                 # t6 = FB000000
    lui     t9, 0xFC30                 # t9 = FC300000
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t6, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t8, 0x552E                 # t8 = 552E0000
    ori     t8, t8, 0xFF7F             # t8 = 552EFF7F
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    ori     t9, t9, 0x9661             # t9 = FC309661
    sw      t9, 0x0000(t0)             # 00000000
    sw      t8, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t7, 0xFD70                 # t7 = FD700000
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    sw      t7, 0x0000(t0)             # 00000000
    lw      t9, 0x0134(t1)             # 00000134
    mtc1    $at, $f0                   # $f0 = 100.00
    addiu   t8, t9, 0x0300             # t8 = FC309961
    sw      t8, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t7, 0xF570                 # t7 = F5700000
    lui     t9, 0x0700                 # t9 = 07000000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    sw      t9, 0x0004(t0)             # 00000004
    sw      t7, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t6, 0xE600                 # t6 = E6000000
    lui     t9, 0xF300                 # t9 = F3000000
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t6, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t8, 0x070B                 # t8 = 070B0000
    ori     t8, t8, 0xF2AB             # t8 = 070BF2AB
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      t8, 0x0004(t0)             # 00000004
    sw      t9, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t9, 0xF560                 # t9 = F5600000
    ori     t9, t9, 0x0600             # t9 = F5600600
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t9, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t7, 0x000B                 # t7 = 000B0000
    ori     t7, t7, 0xC03C             # t7 = 000BC03C
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    lui     t6, 0xF200                 # t6 = F2000000
    sw      t6, 0x0000(t0)             # 00000000
    sw      t7, 0x0004(t0)             # 00000004
    lbu     t9, 0x1409(t4)             # 8011B9D9
    lw      v1, 0x0000(s2)             # 8011BA00
    lui     $at, 0x4480                # $at = 44800000
    sll     t8, t9,  1
    addu    t6, v1, t8
    lh      t7, 0x07F6(t6)             # F20007F6
    mtc1    $at, $f4                   # $f4 = 1024.00
    lui     $at, 0x4240                # $at = 42400000
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mtc1    $at, $f6                   # $f6 = 48.00
    lui     $at, 0x4180                # $at = 41800000
    div.s   $f10, $f8, $f0
    div.s   $f16, $f4, $f10
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    nop
    sh      t8, 0x07F4(v1)             # 000007F4
    lbu     t6, 0x1409(t4)             # 8011B9D9
    lw      v1, 0x0000(s2)             # 8011BA00
    sll     t7, t6,  1
    addu    t9, v1, t7
    lh      t8, 0x07F6(t9)             # F5600DF6
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    mtc1    $at, $f8                   # $f8 = 16.00
    div.s   $f10, $f4, $f0
    div.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    sh      t7, 0x07FA(v1)             # 000007FA
    lbu     t9, 0x1409(t4)             # 8011B9D9
    lw      v1, 0x0000(s2)             # 8011BA00
    sll     t8, t9,  1
    addu    t6, v1, t8
    lh      t7, 0x07F6(t6)             # F20007F6
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f0
    div.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    nop
    sh      t8, 0x07FC(v1)             # 000007FC
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    lbu     t7, 0x1409(t4)             # 8011B9D9
    lw      v1, 0x0000(s2)             # 8011BA00
    sll     t9, t7,  1
    addu    v0, v1, t9
    lh      t6, 0x07FE(v0)             # 000007FE
    lh      t8, 0x07FC(v1)             # 000007FC
    addu    t7, t8, t6
    sll     t9, t7,  2
    andi    t8, t9, 0x0FFF             # t8 = 00000600
    lh      t7, 0x0802(v0)             # 00000802
    lh      t9, 0x07FA(v1)             # 000007FA
    or      t6, t8, $ra                # t6 = E4000600
    addu    t8, t7, t9
    sll     t7, t8,  2
    andi    t9, t7, 0x0FFF             # t9 = 0000003C
    sll     t8, t9, 12
    or      t7, t6, t8                 # t7 = E4000600
    sw      t7, 0x0000(t0)             # 00000000
    lbu     t6, 0x1409(t4)             # 8011B9D9
    lw      t9, 0x0000(s2)             # 8011BA00
    sll     t8, t6,  1
    addu    v0, t9, t8
    lh      t7, 0x07FE(v0)             # 000007FE
    lh      t8, 0x0802(v0)             # 00000802
    sll     t6, t7,  2
    andi    t9, t6, 0x0FFF             # t9 = 00000600
    sll     t7, t8,  2
    andi    t6, t7, 0x0FFF             # t6 = 00000600
    sll     t8, t6, 12
    or      t7, t9, t8                 # t7 = 00000600
    sw      t7, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t9, 0xE100                 # t9 = E1000000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t9, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t7, 0xF100                 # t7 = F1000000
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      t7, 0x0000(t0)             # 00000000
    lw      t6, 0x0000(s2)             # 8011BA00
    lh      a3, 0x07F4(t6)             # 000007FC
    andi    a3, a3, 0xFFFF             # a3 = 00000000
    sll     t9, a3, 16
    or      t8, a3, t9                 # t8 = E1000000
    sw      t8, 0x0004(t0)             # 00000004
    lh      t7, 0x01F8(t1)             # 000001F8
lbl_800742FC:
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0xA5D0             # t4 = 8011A5D0
    beql    t7, $zero, lbl_80074704
    lw      t0, 0x02B0(s1)             # 000002B0
    lhu     t6, 0x0934(s0)             # 00000934
    bnel    t6, $zero, lbl_80074704
    lw      t0, 0x02B0(s1)             # 000002B0
    lhu     t9, 0x0936(s0)             # 00000936
    lw      t8, 0x0150($sp)
    bnel    t9, $zero, lbl_80074704
    lw      t0, 0x02B0(s1)             # 000002B0
    lbu     t7, 0x1D6C(t8)             # E1001D6C
    lui     t3, 0x800F                 # t3 = 800F0000
    addiu   t3, t3, 0x74F0             # t3 = 800F74F0
    bnel    t7, $zero, lbl_80074704
    lw      t0, 0x02B0(s1)             # 000002B0
    lhu     t6, 0x0000(t3)             # 800F74F0
    bne     t6, $zero, lbl_800746D0
    nop
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lhu     v1, 0x13EA(t4)             # 8011B9BA
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_8007437C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_8007437C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v1, $at, lbl_80074384
    lw      t8, 0x0148($sp)
lbl_8007437C:
    b       lbl_800743E8
    or      s0, $zero, $zero           # s0 = 00000000
lbl_80074384:
    lw      t7, 0x066C(t8)             # E100066C
    lw      a0, 0x0150($sp)
    sll     t6, t7, 10
    bltz    t6, lbl_800743DC
    nop
    jal     func_80079DD0
    sw      t1, 0x0044($sp)
    lui     t3, 0x800F                 # t3 = 800F0000
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t4, t4, 0xA5D0             # t4 = 8011A5D0
    addiu   t3, t3, 0x74F0             # t3 = 800F74F0
    lw      t1, 0x0044($sp)
    lui     t2, 0xFA00                 # t2 = FA000000
    lui     t5, 0xE700                 # t5 = E7000000
    beq     v0, $at, lbl_800743DC
    lui     $ra, 0xE400                # $ra = E4000000
    lw      t9, 0x0148($sp)
    lw      t8, 0x0670(t9)             # 00000670
    sll     t7, t8, 13
    bgezl   t7, lbl_800743E8
    lh      s0, 0x0250(t1)             # 00000250
lbl_800743DC:
    b       lbl_800743E8
    addiu   s0, $zero, 0x0046          # s0 = 00000046
    lh      s0, 0x0250(t1)             # 00000250
lbl_800743E8:
    lw      t0, 0x02B0(s1)             # 000002B0
    andi    a2, s0, 0x00FF             # a2 = 00000046
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    sw      t2, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t9, 0x07E6(v1)             # 000007E6
    andi    t8, t9, 0x00FF             # t8 = 00000000
    lh      t9, 0x07E2(v1)             # 000007E2
    sll     t7, t8,  8
    sll     t8, t9, 24
    lh      t9, 0x07E4(v1)             # 000007E4
    or      t6, t7, t8                 # t6 = 00000000
    andi    t7, t9, 0x00FF             # t7 = 00000000
    sll     t8, t7, 16
    or      t9, t6, t8                 # t9 = 00000000
    or      t7, t9, a2                 # t7 = 00000046
    sw      t7, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t8, 0xFC11                 # t8 = FC110000
    lui     t9, 0xFF2F                 # t9 = FF2F0000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    ori     t9, t9, 0xFFFF             # t9 = FF2FFFFF
    ori     t8, t8, 0x9623             # t8 = FC119623
    sw      t8, 0x0000(t0)             # 00000000
    sw      t9, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t6, 0x0812(v1)             # 00000812
    addiu   t8, t6, 0x0010             # t8 = 00000018
    sll     t9, t8,  2
    lh      t8, 0x0810(v1)             # 00000810
    andi    t7, t9, 0x0FFF             # t7 = 00000FFF
    or      t6, t7, $ra                # t6 = E4000FFF
    addiu   t9, t8, 0x0010             # t9 = 00000028
    sll     t7, t9,  2
    andi    t8, t7, 0x0FFF             # t8 = 00000FFF
    sll     t9, t8, 12
    or      t7, t6, t9                 # t7 = E4000FFF
    sw      t7, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t8, 0x0812(v1)             # 00000812
    lh      t7, 0x0810(v1)             # 00000810
    sll     t6, t8,  2
    andi    t9, t6, 0x0FFF             # t9 = 00000FFF
    sll     t8, t7,  2
    andi    t6, t8, 0x0FFF             # t6 = 00000FFF
    sll     t7, t6, 12
    or      t8, t9, t7                 # t8 = E4000FFF
    sw      t8, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t9, 0xE100                 # t9 = E1000000
    lui     t8, 0xF100                 # t8 = F1000000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t9, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t6, 0x0800                 # t6 = 08000000
    ori     t6, t6, 0x0800             # t6 = 08000800
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      t6, 0x0004(t0)             # 00000004
    sw      t8, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    or      t8, a2, $at                # t8 = FFFFFF46
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      t8, 0x0004(t0)             # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t9, 0xFB00                 # t9 = FB000000
    lui     t8, 0xFC30                 # t8 = FC300000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t9, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t6, 0x552E                 # t6 = 552E0000
    ori     t6, t6, 0xFF7F             # t6 = 552EFF7F
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    ori     t8, t8, 0x9661             # t8 = FC309661
    sw      t8, 0x0000(t0)             # 00000000
    sw      t6, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t7, 0xFD70                 # t7 = FD700000
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      t7, 0x0000(t0)             # 00000000
    lbu     t8, 0x1409(t4)             # 8011B9D9
    lui     t9, 0x800F                 # t9 = 800F0000
    sll     t6, t8,  2
    addu    t9, t9, t6
    lw      t9, 0x75B8(t9)             # 800F75B8
    sw      t9, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t8, 0xF570                 # t8 = F5700000
    lui     t6, 0x0700                 # t6 = 07000000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      t6, 0x0004(t0)             # 00000004
    sw      t8, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t7, 0xE600                 # t7 = E6000000
    lui     t6, 0xF300                 # t6 = F3000000
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t7, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t9, 0x0703                 # t9 = 07030000
    ori     t9, t9, 0xF400             # t9 = 0703F400
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      t9, 0x0004(t0)             # 00000004
    sw      t6, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t6, 0xF560                 # t6 = F5600000
    ori     t6, t6, 0x0400             # t6 = F5600400
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t6, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t8, 0x0007                 # t8 = 00070000
    ori     t8, t8, 0xC01C             # t8 = 0007C01C
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    lui     t7, 0xF200                 # t7 = F2000000
    sw      t7, 0x0000(t0)             # 00000000
    sw      t8, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t9, 0x0546(v1)             # 00000546
    addiu   t7, t9, 0x0008             # t7 = 00000010
    sll     t8, t7,  2
    lh      t7, 0x0544(v1)             # 00000544
    andi    t6, t8, 0x0FFF             # t6 = 0000001C
    or      t9, t6, $ra                # t9 = E400001C
    addiu   t8, t7, 0x0020             # t8 = 00000030
    sll     t6, t8,  2
    andi    t7, t6, 0x0FFF             # t7 = 0000001C
    sll     t8, t7, 12
    or      t6, t9, t8                 # t6 = E400003C
    sw      t6, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t7, 0x0546(v1)             # 00000546
    lh      t6, 0x0544(v1)             # 00000544
    sll     t9, t7,  2
    andi    t8, t9, 0x0FFF             # t8 = 0000001C
    sll     t7, t6,  2
    andi    t9, t7, 0x0FFF             # t9 = 0000001C
    sll     t6, t9, 12
    or      t7, t8, t6                 # t7 = E400003C
    sw      t7, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t8, 0xE100                 # t8 = E1000000
    lui     t7, 0xF100                 # t7 = F1000000
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t8, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t9, 0x0400                 # t9 = 04000000
    ori     t9, t9, 0x0400             # t9 = 04000400
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    sw      t9, 0x0004(t0)             # 00000004
    sw      t7, 0x0000(t0)             # 00000000
lbl_800746D0:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x74F4             # v0 = 800F74F4
    lhu     t8, 0x0000(v0)             # 800F74F4
    addiu   t6, t8, 0xFFFF             # t6 = E0FFFFFF
    andi    t7, t6, 0xFFFF             # t7 = 0000FFFF
    bne     t7, $zero, lbl_80074700
    sh      t6, 0x0000(v0)             # 800F74F4
    lhu     t9, 0x0000(t3)             # 800F74F0
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sh      t6, 0x0000(v0)             # 800F74F4
    xori    t8, t9, 0x0001             # t8 = 04000401
    sh      t8, 0x0000(t3)             # 800F74F0
lbl_80074700:
    lw      t0, 0x02B0(s1)             # 000002B0
lbl_80074704:
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    addu    t9, t4, s0
lbl_8007471C:
    lbu     t8, 0x0068(t9)             # 04000468
    slti    $at, t8, 0x00F1
    bne     $at, $zero, lbl_800748AC
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    s0, $at, lbl_8007478C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    sw      t2, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t7, 0x07E6(v1)             # 000007E6
    andi    t9, t7, 0x00FF             # t9 = 00000008
    lh      t7, 0x07E2(v1)             # 000007E2
    sll     t8, t9,  8
    sll     t9, t7, 24
    lh      t7, 0x07E4(v1)             # 000007E4
    or      t6, t8, t9                 # t6 = 04000409
    andi    t8, t7, 0x00FF             # t8 = 00000008
    sll     t9, t8, 16
    lhu     t8, 0x024A(t1)             # 0000024A
    or      t7, t6, t9                 # t7 = 04000409
    andi    t6, t8, 0x00FF             # t6 = 00000008
    or      t9, t7, t6                 # t9 = 04000409
    sw      t9, 0x0004(t0)             # 00000004
    b       lbl_80074838
    lw      t8, 0x0000(s2)             # 8011BA00
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_8007478C:
    bnel    s0, $at, lbl_800747EC
    lw      t0, 0x02B0(s1)             # 000002B0
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      t2, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t7, 0x07E6(v1)             # 000007E6
    andi    t6, t7, 0x00FF             # t6 = 00000009
    lh      t7, 0x07E2(v1)             # 000007E2
    sll     t9, t6,  8
    sll     t6, t7, 24
    lh      t7, 0x07E4(v1)             # 000007E4
    or      t8, t9, t6                 # t8 = 04000409
    andi    t9, t7, 0x00FF             # t9 = 00000009
    sll     t6, t9, 16
    lhu     t9, 0x024C(t1)             # 0000024C
    or      t7, t8, t6                 # t7 = 04000409
    andi    t8, t9, 0x00FF             # t8 = 00000009
    or      t6, t7, t8                 # t6 = 04000409
    sw      t6, 0x0004(t0)             # 00000004
    b       lbl_80074838
    lw      t8, 0x0000(s2)             # 8011BA00
    lw      t0, 0x02B0(s1)             # 000002B0
lbl_800747EC:
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      t2, 0x0000(t0)             # 00000000
    lw      v1, 0x0000(s2)             # 8011BA00
    lh      t7, 0x07E6(v1)             # 000007E6
    andi    t8, t7, 0x00FF             # t8 = 00000009
    lh      t7, 0x07E2(v1)             # 000007E2
    sll     t6, t8,  8
    sll     t8, t7, 24
    lh      t7, 0x07E4(v1)             # 000007E4
    or      t9, t6, t8                 # t9 = 04000409
    andi    t6, t7, 0x00FF             # t6 = 00000009
    sll     t8, t6, 16
    lhu     t6, 0x024E(t1)             # 0000024E
    or      t7, t9, t8                 # t7 = 04000409
    andi    t9, t6, 0x00FF             # t9 = 00000009
    or      t8, t7, t9                 # t8 = 04000409
    sw      t8, 0x0004(t0)             # 00000004
    lw      t8, 0x0000(s2)             # 8011BA00
lbl_80074838:
    sll     t6, s0, 10
    addiu   t7, t6, 0x0400             # t7 = 00000409
    lui     t9, 0x0200                 # t9 = 02000000
    addiu   t9, t9, 0x0A00             # t9 = 02000A00
    sll     t6, s0,  1
    addu    a1, t7, t9
    addu    v0, t8, t6
    lh      t7, 0x0820(v0)             # 800F7D14
    lw      a0, 0x02B0(s1)             # 000002B0
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    sw      t7, 0x0010($sp)
    lh      t9, 0x0828(v0)             # 800F7D1C
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    sw      t9, 0x0014($sp)
    lh      v1, 0x0FB4(v0)             # 800F84A8
    sw      v1, 0x0018($sp)
    sw      v1, 0x001C($sp)
    lh      t0, 0x0830(v0)             # 800F7D24
    sw      t1, 0x0044($sp)
    sll     t0, t0,  1
    andi    t0, t0, 0xFFFF             # t0 = 00000000
    sw      t0, 0x0020($sp)
    jal     func_8006F3A4
    sw      t0, 0x0024($sp)
    lw      t1, 0x0044($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0xA5D0             # t4 = 8011A5D0
    sw      v0, 0x02B0(s1)             # 000002B0
    lui     t2, 0xFA00                 # t2 = FA000000
lbl_800748AC:
    addiu   s0, s0, 0x0001             # s0 = 00000002
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0004
    bnel    $at, $zero, lbl_8007471C
    addu    t9, t4, s0
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0150           # $sp += 0x150


func_800748DC:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    lw      v1, 0x0000(a0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t7, 0xFD18                 # t7 = FD180000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(v1)             # 000002B0
    sw      a1, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t9, 0xF518                 # t9 = F5180000
    lui     t5, 0x0700                 # t5 = 07000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(v1)             # 000002B0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t7, 0xE600                 # t7 = E6000000
    lui     t9, 0xF300                 # t9 = F3000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(v1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t5, 0x073F                 # t5 = 073F0000
    ori     t5, t5, 0xF080             # t5 = 073FF080
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(v1)             # 000002B0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(v1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t9, 0xF518                 # t9 = F5180000
    ori     t9, t9, 0x1000             # t9 = F5181000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(v1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t7, 0x0007                 # t7 = 00070000
    ori     t7, t7, 0xC07C             # t7 = 0007C07C
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(v1)             # 000002B0
    lui     t6, 0xF200                 # t6 = F2000000
    sw      t6, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0xBA00             # t4 = 8011BA00
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(v1)             # 000002B0
    lw      t9, 0x0000(t4)             # 8011BA00
    sll     a1, a2,  1
    lui     $at, 0xE400                # $at = E4000000
    addu    a3, t9, a1
    lh      t0, 0x0FAC(a3)             # 00000FAC
    lh      t5, 0x0840(a3)             # 00000840
    addu    t6, t0, t5
    lh      t5, 0x0838(a3)             # 00000838
    sll     t7, t6,  2
    andi    t8, t7, 0x0FFF             # t8 = 0000007C
    addu    t6, t5, t0
    sll     t7, t6,  2
    or      t9, t8, $at                # t9 = E400007C
    andi    t8, t7, 0x0FFF             # t8 = 0000007C
    sll     t5, t8, 12
    or      t6, t9, t5                 # t6 = E400007C
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(t4)             # 8011BA00
    addu    a3, t7, a1
    lh      t8, 0x0840(a3)             # 00000840
    lh      t6, 0x0838(a3)             # 00000838
    sll     t9, t8,  2
    sll     t7, t6,  2
    andi    t8, t7, 0x0FFF             # t8 = 0000007C
    andi    t5, t9, 0x0FFF             # t5 = 0000007C
    sll     t9, t8, 12
    or      t6, t5, t9                 # t6 = E400007C
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t8, 0xE100                 # t8 = E1000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(v1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t9, 0xF100                 # t9 = F1000000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(v1)             # 000002B0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(t4)             # 8011BA00
    addu    t7, t6, a1
    lh      t3, 0x0848(t7)             # 00000850
    sll     t3, t3,  1
    andi    t3, t3, 0xFFFF             # t3 = 00000000
    sll     t8, t3, 16
    or      t5, t3, t8                 # t5 = E1000000
    sw      t5, 0x0004(v0)             # 00000004
    jr      $ra
    nop


func_80074A84:
# Item upgrade related. parameter_static texture: Item Amount Digit 0 x2
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    sw      a2, 0x0058($sp)
    lh      t7, 0x0056($sp)
    lw      t6, 0x0050($sp)
    lui     t9, 0x8010                 # t9 = 80100000
    addu    t8, a3, t7
    lbu     v0, 0x0068(t8)             # 00000068
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t9, t9, 0x8F34             # t9 = 800F8F34
    beq     v0, $zero, lbl_80074B00
    lw      t1, 0x0000(t6)             # 00000000
    beq     v0, $at, lbl_80074B00
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80074B00
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80074B00
    slti    $at, v0, 0x0038
    bne     $at, $zero, lbl_80074AE8
    slti    $at, v0, 0x003B
    bne     $at, $zero, lbl_80074B00
lbl_80074AE8:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_80074B00
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_80074B00
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     v0, $at, lbl_80074F14
lbl_80074B00:
    slti    $at, v0, 0x0038
    bne     $at, $zero, lbl_80074B18
    slti    $at, v0, 0x003B
    beql    $at, $zero, lbl_80074B1C
    addu    a2, v0, t9
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_80074B18:
    addu    a2, v0, t9
lbl_80074B1C:
    lbu     t2, 0x0000(a2)             # 00000000
    addu    t3, a3, t2
    lb      t0, 0x008C(t3)             # 0000008C
    lw      v1, 0x02B0(t1)             # 000002B0
    lui     t5, 0xE700                 # t5 = E7000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(t1)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lh      t6, 0x0056($sp)
    bne     t6, $zero, lbl_80074B70
    lh      t9, 0x0056($sp)
    lhu     t7, 0x1404(a3)             # 8011B9D4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t8, 0x0050($sp)
    bne     t7, $at, lbl_80074B70
    nop
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, t8
    b       lbl_80074DC8
    lh      t0, 0x072E(t0)             # 0001072E
lbl_80074B70:
    bne     t9, $zero, lbl_80074BA0
    lw      t2, 0x0050($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, t2
    lb      v0, 0x1E5C(v0)             # 00011E5C
    slti    $at, v0, 0x0002
    bnel    $at, $zero, lbl_80074BA4
    lh      t3, 0x0056($sp)
    addiu   t0, v0, 0xFFFF             # t0 = 0000FFFF
    sll     t0, t0, 16
    b       lbl_80074DC8
    sra     t0, t0, 16
lbl_80074BA0:
    lh      t3, 0x0056($sp)
lbl_80074BA4:
    lw      t4, 0x0050($sp)
    bne     t3, $zero, lbl_80074C0C
    nop
    lh      t5, 0x00A4(t4)             # 000000AC
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    or      a0, t4, $zero              # a0 = 00000008
    bne     t5, $at, lbl_80074C0C
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    sw      a2, 0x0034($sp)
    sh      t0, 0x004C($sp)
    jal     func_8002049C
    sw      t1, 0x0048($sp)
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    lw      a2, 0x0034($sp)
    lh      t0, 0x004C($sp)
    beq     v0, $zero, lbl_80074C0C
    lw      t1, 0x0048($sp)
    lw      t6, 0x0050($sp)
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, t6
    lb      t0, 0x1E5D(t0)             # 00011E5D
    bgez    t0, lbl_80074DC8
    nop
    b       lbl_80074DC8
    or      t0, $zero, $zero           # t0 = 00000000
lbl_80074C0C:
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x8F37             # t7 = 800F8F37
    bne     a2, t7, lbl_80074C60
    lui     v0, 0x8010                 # v0 = 80100000
    lui     v1, 0x8010                 # v1 = 80100000
    addiu   v1, v1, 0x8C80             # v1 = 800F8C80
    lui     a0, 0x8010                 # a0 = 80100000
    lw      t5, 0x0000(v1)             # 800F8C80
    lbu     t8, 0x0000(a2)             # 00000000
    lw      t3, 0x00A0(a3)             # 8011A670
    addiu   a0, a0, 0x8CC4             # a0 = 800F8CC4
    lbu     t6, 0x0000(a0)             # 800F8CC4
    addu    t9, a3, t8
    and     t4, t3, t5
    srav    t7, t4, t6
    lb      t2, 0x008C(t9)             # 0000008C
    sll     t8, t7,  1
    addiu   v0, v0, 0x8CCC             # v0 = 800F8CCC
    addu    t9, v0, t8
    lhu     t3, 0x0000(t9)             # 00000000
    beq     t2, t3, lbl_80074DA0
lbl_80074C60:
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t5, t5, 0x8F36             # t5 = 800F8F36
    lui     v0, 0x8010                 # v0 = 80100000
    lui     v1, 0x8010                 # v1 = 80100000
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x8CC4             # a0 = 800F8CC4
    addiu   v1, v1, 0x8C80             # v1 = 800F8C80
    bne     a2, t5, lbl_80074CB4
    addiu   v0, v0, 0x8CCC             # v0 = 800F8CCC
    lbu     t4, 0x0000(a2)             # 00000000
    lw      t8, 0x00A0(a3)             # 8011A670
    lw      t9, 0x0004(v1)             # 800F8C84
    lbu     t3, 0x0001(a0)             # 800F8CC5
    addu    t6, a3, t4
    and     t2, t8, t9
    srav    t5, t2, t3
    lb      t7, 0x008C(t6)             # 0000008C
    sll     t4, t5,  1
    addu    t6, v0, t4
    lhu     t8, 0x0008(t6)             # 00000008
    beq     t7, t8, lbl_80074DA0
lbl_80074CB4:
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x8F3A             # t9 = 800F8F3A
    bne     a2, t9, lbl_80074CF4
    nop
    lbu     t2, 0x0000(a2)             # 00000000
    lw      t4, 0x00A0(a3)             # 8011A670
    lw      t6, 0x0014(v1)             # 800F8C94
    lbu     t8, 0x0005(a0)             # 800F8CC9
    addu    t3, a3, t2
    and     t7, t4, t6
    srav    t9, t7, t8
    lb      t5, 0x008C(t3)             # 0000008C
    sll     t2, t9,  1
    addu    t3, v0, t2
    lhu     t4, 0x0028(t3)             # 00000028
    beq     t5, t4, lbl_80074DA0
lbl_80074CF4:
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x8F34             # t6 = 800F8F34
    bne     a2, t6, lbl_80074D34
    nop
    lbu     t7, 0x0000(a2)             # 00000000
    lw      t2, 0x00A0(a3)             # 8011A670
    lw      t3, 0x0018(v1)             # 800F8C98
    lbu     t4, 0x0006(a0)             # 800F8CCA
    addu    t8, a3, t7
    and     t5, t2, t3
    srav    t6, t5, t4
    lb      t9, 0x008C(t8)             # 0000008C
    sll     t7, t6,  1
    addu    t8, v0, t7
    lhu     t2, 0x0030(t8)             # 00000030
    beq     t9, t2, lbl_80074DA0
lbl_80074D34:
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0x8F35             # t3 = 800F8F35
    bne     a2, t3, lbl_80074D74
    nop
    lbu     t5, 0x0000(a2)             # 00000000
    lw      t7, 0x00A0(a3)             # 8011A670
    lw      t8, 0x001C(v1)             # 800F8C9C
    lbu     t2, 0x0007(a0)             # 800F8CCB
    addu    t4, a3, t5
    and     t9, t7, t8
    srav    t3, t9, t2
    lb      t6, 0x008C(t4)             # 0000008C
    sll     t5, t3,  1
    addu    t4, v0, t5
    lhu     t7, 0x0038(t4)             # 00000038
    beq     t6, t7, lbl_80074DA0
lbl_80074D74:
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8F3D             # t8 = 800F8F3D
    bne     a2, t8, lbl_80074D88
    addiu   $at, $zero, 0x0032         # $at = 00000032
    beq     t0, $at, lbl_80074DA0
lbl_80074D88:
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x8F44             # t9 = 800F8F44
    bne     a2, t9, lbl_80074DC8
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     t0, $at, lbl_80074DC8
    nop
lbl_80074DA0:
    lw      v1, 0x02B0(t1)             # 000002B0
    lui     t3, 0xFA00                 # t3 = FA000000
    lui     $at, 0x78FF                # $at = 78FF0000
    addiu   t2, v1, 0x0008             # t2 = 800F8C88
    sw      t2, 0x02B0(t1)             # 000002B0
    sw      t3, 0x0000(v1)             # 800F8C80
    lh      t5, 0x005A($sp)
    andi    t4, t5, 0x00FF             # t4 = 00000036
    or      t6, t4, $at                # t6 = 78FF0036
    sw      t6, 0x0004(v1)             # 800F8C84
lbl_80074DC8:
    bne     t0, $zero, lbl_80074DFC
    lui     t4, 0x0200                 # t4 = 02000000
    lw      v1, 0x02B0(t1)             # 000002B0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     $at, 0x6464                # $at = 64640000
    addiu   t7, v1, 0x0008             # t7 = 800F8C88
    sw      t7, 0x02B0(t1)             # 000002B0
    sw      t8, 0x0000(v1)             # 800F8C80
    lh      t9, 0x005A($sp)
    ori     $at, $at, 0x6400           # $at = 64646400
    andi    t2, t9, 0x00FF             # t2 = 00000044
    or      t3, t2, $at                # t3 = 64646444
    sw      t3, 0x0004(v1)             # 800F8C84
lbl_80074DFC:
    slti    $at, t0, 0x000A
    bne     $at, $zero, lbl_80074E28
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80074E08:
    addiu   t0, t0, 0xFFF6             # t0 = FFFFFFF6
    sll     t0, t0, 16
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sra     t0, t0, 16
    slti    $at, t0, 0x000A
    sll     v0, v0, 16
    beq     $at, $zero, lbl_80074E08
    sra     v0, v0, 16
lbl_80074E28:
    beq     v0, $zero, lbl_80074EA0
    sll     t5, v0,  6
    lh      t7, 0x0056($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    sll     t8, t7,  1
    lw      a0, 0x02B0(t1)             # 000002B0
    addu    v1, t6, t8
    lh      t9, 0x0F94(v1)             # 800F9C14
    addiu   t4, t4, 0x35C0             # t4 = 020035C0
    addu    a1, t5, t4
    sw      t9, 0x0010($sp)
    lh      t2, 0x0F9C(v1)             # 800F9C1C
    addiu   t4, $zero, 0x0400          # t4 = 00000400
    addiu   t5, $zero, 0x0008          # t5 = 00000008
    addiu   t7, $zero, 0x0400          # t7 = 00000400
    addiu   t3, $zero, 0x0008          # t3 = 00000008
    sw      t3, 0x0018($sp)
    sw      t7, 0x0024($sp)
    sw      t5, 0x001C($sp)
    sw      t4, 0x0020($sp)
    sw      t1, 0x0048($sp)
    sh      t0, 0x004C($sp)
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    jal     func_8006F3A4
    sw      t2, 0x0014($sp)
    lw      t1, 0x0048($sp)
    lh      t0, 0x004C($sp)
    sw      v0, 0x02B0(t1)             # 000002B0
lbl_80074EA0:
    lh      t2, 0x0056($sp)
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    sll     t3, t2,  1
    lw      a0, 0x02B0(t1)             # 000002B0
    addu    v1, t9, t3
    lh      t5, 0x0F94(v1)             # 00000F94
    lui     t8, 0x0200                 # t8 = 02000000
    addiu   t8, t8, 0x35C0             # t8 = 020035C0
    addiu   t4, t5, 0x0006             # t4 = 00000006
    sw      t4, 0x0010($sp)
    lh      t7, 0x0F9C(v1)             # 00000F9C
    sll     t6, t0,  6
    addu    a1, t6, t8
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t9, $zero, 0x0400          # t9 = 00000400
    addiu   t2, $zero, 0x0400          # t2 = 00000400
    sw      t2, 0x0020($sp)
    sw      t9, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t8, 0x001C($sp)
    sw      t1, 0x0048($sp)
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    jal     func_8006F3A4
    sw      t7, 0x0014($sp)
    lw      t1, 0x0048($sp)
    sw      v0, 0x02B0(t1)             # 000002B0
lbl_80074F14:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80074F24:
# parameter_static texture: Action Button
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    mtc1    $zero, $f12                # $f12 = 0.00
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0058($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lh      t8, 0x0AB8(t7)             # 80120AB8
    lw      t6, 0x0058($sp)
    mov.s   $f14, $f12
    mtc1    t8, $f4                    # $f4 = 0.00
    or      a3, $zero, $zero           # a3 = 00000000
    lw      s0, 0x0000(t6)             # 00000000
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    mfc1    a2, $f10
    jal     func_800AA7F4
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v0, 0x0058($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v0, v0, $at
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f18, -0x783C($at)         # 801087C4
    lwc1    $f16, 0x01F4(v0)           # 000001F4
    sw      v0, 0x0020($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0
    div.s   $f12, $f16, $f18
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s0)             # 000002B0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x0058($sp)
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0048($sp)
    lw      a3, 0x0048($sp)
    lui     t8, 0xFD70                 # t8 = FD700000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t4, 0x0100                 # t4 = 01000000
    ori     t4, t4, 0x4008             # t4 = 01004008
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02B0(s0)             # 000002B0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x0020($sp)
    lw      t6, 0x0128(t5)             # 00000128
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t9, 0x0200                 # t9 = 02000000
    addiu   t9, t9, 0x0A00             # t9 = 02000A00
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t2, 0xF570                 # t2 = F5700000
    lui     t3, 0x0700                 # t3 = 07000000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02B0(s0)             # 000002B0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t5, 0xE600                 # t5 = E6000000
    lui     t7, 0xF300                 # t7 = F3000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t8, 0x071F                 # t8 = 071F0000
    ori     t8, t8, 0xF200             # t8 = 071FF200
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s0)             # 000002B0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t5, 0xF200                 # t5 = F2000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t3, 0xF568                 # t3 = F5680000
    ori     t3, t3, 0x0800             # t3 = F5680800
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t6, 0x0007                 # t6 = 00070000
    ori     t6, t6, 0xC07C             # t6 = 0007C07C
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s0)             # 000002B0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t8, 0x0700                 # t8 = 07000000
    ori     t8, t8, 0x0406             # t8 = 07000406
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    addiu   t9, $zero, 0x0602          # t9 = 00000602
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80075108:
    lui     t2, 0x8012                 # t2 = 80120000
    addiu   t2, t2, 0xBA00             # t2 = 8011BA00
    lw      a1, 0x0000(a0)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    a2, a0, $at
    lw      v1, 0x02C4(a1)             # 000002C4
    addiu   t6, $zero, 0xFFF2          # t6 = FFFFFFF2
    addiu   t9, $zero, 0x000E          # t9 = 0000000E
    addiu   v1, v1, 0xFF80             # v1 = FFFFFF80
    sw      v1, 0x02C4(a1)             # 000002C4
    sw      v1, 0x0618(a2)             # 00000618
    sh      t6, 0x0020(v1)             # FFFFFFA0
    lw      a3, 0x0618(a2)             # 00000618
    or      t1, $zero, $zero           # t1 = 00000000
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    lh      t7, 0x0020(a3)             # 00000020
    sh      t7, 0x0000(a3)             # 00000000
    lw      a3, 0x0618(a2)             # 00000618
    lh      t0, 0x0000(a3)             # 00000000
    addiu   t0, t0, 0x001C             # t0 = 0000001C
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0030(a3)             # 00000030
    lw      t8, 0x0618(a2)             # 00000618
    sh      t0, 0x0010(t8)             # 00000010
    lw      t4, 0x0618(a2)             # 00000618
    sh      t9, 0x0012(t4)             # 00000012
    lw      a3, 0x0618(a2)             # 00000618
    lh      t5, 0x0012(a3)             # 00000012
    sh      t5, 0x0002(a3)             # 00000002
    lw      a3, 0x0618(a2)             # 00000618
    lh      t0, 0x0002(a3)             # 00000002
    addiu   t0, t0, 0xFFE4             # t0 = 00000000
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0032(a3)             # 00000032
    lw      t6, 0x0618(a2)             # 00000618
    sh      t0, 0x0022(t6)             # 00000014
    lw      t7, 0x0000(t2)             # 8011BA00
    lw      t8, 0x0618(a2)             # 00000618
    lh      t0, 0x0ABE(t7)             # 00000ABE
    bgez    t0, lbl_800751B8
    addu    $at, t0, $zero
    addiu   $at, t0, 0x0001            # $at = 00000001
lbl_800751B8:
    sra     t0, $at,  1
    subu    t0, $zero, t0
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0060(t8)             # 00000060
    lw      t9, 0x0618(a2)             # 00000618
    sh      t0, 0x0040(t9)             # 0000004E
    lw      a3, 0x0618(a2)             # 00000618
    lw      t4, 0x0000(t2)             # 8011BA00
    lh      t6, 0x0040(a3)             # 00000040
    lh      t5, 0x0ABE(t4)             # 00000ABE
    addu    t0, t5, t6
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0070(a3)             # 00000070
    lw      t7, 0x0618(a2)             # 00000618
    sh      t0, 0x0050(t7)             # 00000050
    lw      t8, 0x0000(t2)             # 8011BA00
    lw      t9, 0x0618(a2)             # 00000618
    lh      t0, 0x0ACC(t8)             # 00000ACC
    bgez    t0, lbl_80075214
    addu    $at, t0, $zero
    addiu   $at, t0, 0x0001            # $at = 00000001
lbl_80075214:
    sra     t0, $at,  1
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0052(t9)             # 00000060
    lw      t4, 0x0618(a2)             # 00000618
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    sh      t0, 0x0042(t4)             # 00000042
    lw      a3, 0x0618(a2)             # 00000618
    lw      t6, 0x0000(t2)             # 8011BA00
    addiu   t2, $zero, 0x0400          # t2 = 00000400
    lh      t5, 0x0042(a3)             # 00000042
    lh      t7, 0x0ACC(t6)             # 00000ABE
    addu    v0, a0, $at
    subu    t0, t5, t7
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0072(a3)             # 00000072
    lw      t8, 0x0618(a2)             # 00000618
    sh      t0, 0x0062(t8)             # 00000062
lbl_80075264:
    lw      t9, 0x0128(v0)             # 00000128
    sll     v1, t1,  4
    addiu   t1, t1, 0x0004             # t1 = 00000004
    addu    t4, t9, v1
    sh      $zero, 0x0034(t4)          # 00000034
    lw      t6, 0x0128(v0)             # 00000128
    sll     t1, t1, 16
    sra     t1, t1, 16
    addu    a3, t6, v1
    lh      a1, 0x0034(a3)             # 00000034
    slti    $at, t1, 0x0008
    sh      a1, 0x0024(a3)             # 00000024
    lw      t5, 0x0128(v0)             # 00000128
    addu    t7, t5, v1
    sh      a1, 0x0014(t7)             # 00000014
    lw      t8, 0x0128(v0)             # 00000128
    addu    t9, t8, v1
    sh      a1, 0x0004(t9)             # 00000012
    lw      t4, 0x0128(v0)             # 00000128
    addu    t6, t4, v1
    sh      $zero, 0x0036(t6)          # 00000028
    lw      t5, 0x0128(v0)             # 00000128
    addu    a3, t5, v1
    lhu     t0, 0x0036(a3)             # 00000036
    sh      t0, 0x0026(a3)             # 00000026
    lw      t7, 0x0128(v0)             # 00000128
    addu    t8, t7, v1
    sh      t0, 0x0016(t8)             # 00000016
    lw      t9, 0x0128(v0)             # 00000128
    addu    t4, t9, v1
    sh      t0, 0x0006(t4)             # 00000006
    lw      t6, 0x0128(v0)             # 00000128
    addu    t5, t6, v1
    sh      $zero, 0x0028(t5)          # 00000028
    lw      t7, 0x0128(v0)             # 00000128
    addu    a3, t7, v1
    lh      a1, 0x0028(a3)             # 00000028
    sh      a1, 0x001A(a3)             # 0000001A
    lw      t8, 0x0128(v0)             # 00000128
    addu    t9, t8, v1
    sh      a1, 0x000A(t9)             # 00000018
    lw      t4, 0x0128(v0)             # 00000128
    addu    t6, t4, v1
    sh      a1, 0x0008(t6)             # FFFFFFFA
    lw      t5, 0x0128(v0)             # 00000128
    addu    t7, t5, v1
    sh      t2, 0x003A(t7)             # 0000003A
    lw      t8, 0x0128(v0)             # 00000128
    addu    a3, t8, v1
    lh      a1, 0x003A(a3)             # 0000003A
    sh      a1, 0x0038(a3)             # 00000038
    lw      t9, 0x0128(v0)             # 00000128
    addu    t4, t9, v1
    sh      a1, 0x002A(t4)             # 0000002A
    lw      t6, 0x0128(v0)             # 00000128
    addu    t5, t6, v1
    sh      a1, 0x0018(t5)             # 00000018
    lw      t7, 0x0128(v0)             # 00000128
    addu    t8, t7, v1
    sb      t3, 0x003E(t8)             # 0000003E
    lw      t9, 0x0128(v0)             # 00000128
    addu    a3, t9, v1
    lbu     a2, 0x003E(a3)             # 0000003E
    sb      a2, 0x002E(a3)             # 0000002E
    lw      t4, 0x0128(v0)             # 00000128
    addu    t6, t4, v1
    sb      a2, 0x001E(t6)             # 00000010
    lw      t5, 0x0128(v0)             # 00000128
    addu    t7, t5, v1
    sb      a2, 0x000E(t7)             # 0000000E
    lw      t8, 0x0128(v0)             # 00000128
    addu    t9, t8, v1
    sb      a2, 0x003D(t9)             # 0000004B
    lw      t4, 0x0128(v0)             # 00000128
    addu    t6, t4, v1
    sb      a2, 0x002D(t6)             # 0000001F
    lw      t5, 0x0128(v0)             # 00000128
    addu    t7, t5, v1
    sb      a2, 0x001D(t7)             # 0000001D
    lw      t8, 0x0128(v0)             # 00000128
    addu    t9, t8, v1
    sb      a2, 0x000D(t9)             # 0000001B
    lw      t4, 0x0128(v0)             # 00000128
    addu    t6, t4, v1
    sb      a2, 0x003C(t6)             # 0000002E
    lw      t5, 0x0128(v0)             # 00000128
    addu    t7, t5, v1
    sb      a2, 0x002C(t7)             # 0000002C
    lw      t8, 0x0128(v0)             # 00000128
    addu    t9, t8, v1
    sb      a2, 0x001C(t9)             # 0000002A
    lw      t4, 0x0128(v0)             # 00000128
    addu    t6, t4, v1
    sb      a2, 0x000C(t6)             # FFFFFFFE
    lw      t5, 0x0128(v0)             # 00000128
    addu    t7, t5, v1
    sb      t3, 0x003F(t7)             # 0000003F
    lw      t8, 0x0128(v0)             # 00000128
    addu    a3, t8, v1
    lbu     a1, 0x003F(a3)             # 0000003F
    sb      a1, 0x002F(a3)             # 0000002F
    lw      t9, 0x0128(v0)             # 00000128
    addu    t4, t9, v1
    sb      a1, 0x001F(t4)             # 0000001F
    lw      t6, 0x0128(v0)             # 00000128
    addu    t5, t6, v1
    bne     $at, $zero, lbl_80075264
    sb      a1, 0x000F(t5)             # 0000000F
    lw      t8, 0x0128(v0)             # 00000128
    addiu   t7, $zero, 0x0600          # t7 = 00000600
    addiu   t0, $zero, 0x0200          # t0 = 00000200
    sh      t7, 0x0078(t8)             # 00000078
    lw      a3, 0x0128(v0)             # 00000128
    addiu   t1, $zero, 0xFFF8          # t1 = FFFFFFF8
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    lh      t9, 0x0078(a3)             # 00000078
    sh      t9, 0x0058(a3)             # 00000058
    lw      t4, 0x0128(v0)             # 00000128
    sh      t0, 0x007A(t4)             # 0000007A
    lw      a3, 0x0128(v0)             # 00000128
    lh      t6, 0x007A(a3)             # 0000007A
    sh      t6, 0x006A(a3)             # 0000006A
    lw      a1, 0x0000(a0)             # 00000000
    lw      v1, 0x02C4(a1)             # 000002C4
    addiu   v1, v1, 0xFFC0             # v1 = FFFFFF40
    sw      v1, 0x02C4(a1)             # 000002C4
    sw      v1, 0x012C(v0)             # 0000012C
    sh      t1, 0x0020(v1)             # FFFFFF60
    lw      a2, 0x012C(v0)             # 0000012C
    lh      t5, 0x0020(a2)             # 00000020
    sh      t5, 0x0000(a2)             # 00000000
    lw      t7, 0x012C(v0)             # 0000012C
    sh      t2, 0x0030(t7)             # 00000630
    lw      a2, 0x012C(v0)             # 0000012C
    lh      t8, 0x0030(a2)             # 00000030
    sh      t8, 0x0010(a2)             # 00000010
    lw      t9, 0x012C(v0)             # 0000012C
    sh      t2, 0x0012(t9)             # 00000020
    lw      a2, 0x012C(v0)             # 0000012C
    lh      t4, 0x0012(a2)             # 00000012
    sh      t4, 0x0002(a2)             # 00000002
    lw      t6, 0x012C(v0)             # 0000012C
    sh      t1, 0x0032(t6)             # 00000024
    lw      a2, 0x012C(v0)             # 0000012C
    lh      t5, 0x0032(a2)             # 00000032
    sh      t5, 0x0022(a2)             # 00000022
    lw      t7, 0x012C(v0)             # 0000012C
    sh      $zero, 0x0034(t7)          # 00000634
    lw      a2, 0x012C(v0)             # 0000012C
    lh      a1, 0x0034(a2)             # 00000034
    sh      a1, 0x0024(a2)             # 00000024
    lw      t8, 0x012C(v0)             # 0000012C
    sh      a1, 0x0014(t8)             # 00000014
    lw      t9, 0x012C(v0)             # 0000012C
    sh      a1, 0x0004(t9)             # 00000012
    lw      t4, 0x012C(v0)             # 0000012C
    sh      $zero, 0x0036(t4)          # 00000036
    lw      a2, 0x012C(v0)             # 0000012C
    lhu     a1, 0x0036(a2)             # 00000036
    sh      a1, 0x0026(a2)             # 00000026
    lw      t6, 0x012C(v0)             # 0000012C
    sh      a1, 0x0016(t6)             # 00000008
    lw      t5, 0x012C(v0)             # 0000012C
    sh      a1, 0x0006(t5)             # 00000006
    lw      t7, 0x012C(v0)             # 0000012C
    sh      $zero, 0x0028(t7)          # 00000628
    lw      a2, 0x012C(v0)             # 0000012C
    lh      a1, 0x0028(a2)             # 00000028
    sh      a1, 0x001A(a2)             # 0000001A
    lw      t8, 0x012C(v0)             # 0000012C
    sh      a1, 0x000A(t8)             # 0000000A
    lw      t9, 0x012C(v0)             # 0000012C
    sh      a1, 0x0008(t9)             # 00000016
    lw      t4, 0x012C(v0)             # 0000012C
    sh      t0, 0x003A(t4)             # 0000003A
    lw      a2, 0x012C(v0)             # 0000012C
    lh      a1, 0x003A(a2)             # 0000003A
    sh      a1, 0x0038(a2)             # 00000038
    lw      t6, 0x012C(v0)             # 0000012C
    sh      a1, 0x002A(t6)             # 0000001C
    lw      t5, 0x012C(v0)             # 0000012C
    sh      a1, 0x0018(t5)             # 00000018
    lw      t7, 0x012C(v0)             # 0000012C
    sb      t3, 0x003F(t7)             # 0000063F
    lw      a2, 0x012C(v0)             # 0000012C
    lbu     v1, 0x003F(a2)             # 0000003F
    sb      v1, 0x002F(a2)             # 0000002F
    lw      t8, 0x012C(v0)             # 0000012C
    sb      v1, 0x001F(t8)             # 0000001F
    lw      t9, 0x012C(v0)             # 0000012C
    sb      v1, 0x000F(t9)             # 0000001D
    lw      t4, 0x012C(v0)             # 0000012C
    sb      v1, 0x003E(t4)             # 0000003E
    lw      t6, 0x012C(v0)             # 0000012C
    sb      v1, 0x002E(t6)             # 00000020
    lw      t5, 0x012C(v0)             # 0000012C
    sb      v1, 0x001E(t5)             # 0000001E
    lw      t7, 0x012C(v0)             # 0000012C
    sb      v1, 0x000E(t7)             # 0000060E
    lw      t8, 0x012C(v0)             # 0000012C
    sb      v1, 0x003D(t8)             # 0000003D
    lw      t9, 0x012C(v0)             # 0000012C
    sb      v1, 0x002D(t9)             # 0000003B
    lw      t4, 0x012C(v0)             # 0000012C
    sb      v1, 0x001D(t4)             # 0000001D
    lw      t6, 0x012C(v0)             # 0000012C
    sb      v1, 0x000D(t6)             # FFFFFFFF
    lw      t5, 0x012C(v0)             # 0000012C
    sb      v1, 0x003C(t5)             # 0000003C
    lw      t7, 0x012C(v0)             # 0000012C
    sb      v1, 0x002C(t7)             # 0000062C
    lw      t8, 0x012C(v0)             # 0000012C
    sb      v1, 0x001C(t8)             # 0000001C
    lw      t9, 0x012C(v0)             # 0000012C
    sb      v1, 0x000C(t9)             # 0000001A
    jr      $ra
    nop


func_800755C8:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    sw      a2, 0x0058($sp)
    sw      a3, 0x005C($sp)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lw      s0, 0x0050($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    s0, s0, $at
    swc1    $f0, 0x0048($sp)
    swc1    $f0, 0x0044($sp)
    swc1    $f0, 0x0040($sp)
    swc1    $f0, 0x0038($sp)
    swc1    $f0, 0x0034($sp)
    swc1    $f0, 0x0030($sp)
    swc1    $f0, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFF0
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFE4
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFD8
    swc1    $f4, 0x003C($sp)
    jal     func_80091918
    swc1    $f6, 0x002C($sp)
    lw      t6, 0x0054($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x01DC             # a1 = 000001DC
    sw      t6, 0x01DC(s0)             # 000001DC
    lw      t7, 0x0058($sp)
    sw      t7, 0x01E0(s0)             # 000001E0
    lw      t8, 0x005C($sp)
    sw      t8, 0x01E4(s0)             # 000001E4
    lw      t9, 0x0060($sp)
    jal     func_80091AE0
    sw      t9, 0x01E8(s0)             # 000001E8
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f0                   # $f0 = 60.00
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x4120                 # a2 = 41200000
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_80091A34
    nop
    jal     func_800926D0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_800756A8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    addiu   t6, $zero, 0x00F0          # t6 = 000000F0
    addiu   t7, $zero, 0x0140          # t7 = 00000140
    sw      t7, 0x0024($sp)
    sw      t6, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    lw      a0, 0x0028($sp)
    jal     func_80091AE0
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF0
    jal     func_80092490
    lw      a0, 0x0028($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800756F0:
# Draw HUD
# parameter_static texture: Rupee & Key & Counter Digit 0 x3 & Carrot & Score Target & Counter Digit 0 & Timer & Counter Digit 0
    addiu   $sp, $sp, 0xFD90           # $sp -= 0x270
    sw      s6, 0x0044($sp)
    or      s6, a0, $zero              # s6 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s7, 0x0048($sp)
    sw      s5, 0x0040($sp)
    sw      s4, 0x003C($sp)
    sw      s3, 0x0038($sp)
    sw      s2, 0x0034($sp)
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    lw      t6, 0x1C44(s6)             # 00001C44
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0008             # t8 = DB060008
    sw      t6, 0x0260($sp)
    lw      s4, 0x0000(s6)             # 00000000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     $at, 0x0001                # $at = 00010000
    addu    a2, s6, $at
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      t8, 0x0000(s1)             # 00000000
    lw      t9, 0x0620(a2)             # 00000620
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    sw      t9, 0x0004(s1)             # 00000004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x001C             # t5 = DB06001C
    addiu   t4, s1, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      t5, 0x0000(s1)             # 00000000
    lw      t6, 0x0624(a2)             # 00000624
    lui     t5, 0xDB06                 # t5 = DB060000
    or      a0, s6, $zero              # a0 = 00000000
    sw      t6, 0x0004(s1)             # 00000004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      t8, 0x0000(s1)             # 00000000
    lw      t9, 0x0628(a2)             # 00000628
    sw      t9, 0x0004(s1)             # 00000004
    lw      s1, 0x02B0(s4)             # 000002B0
    ori     t5, t5, 0x002C             # t5 = DB06002C
    addu    s7, s6, $at
    addiu   t4, s1, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      t5, 0x0000(s1)             # 00000000
    lw      t6, 0x013C(s7)             # 0000013C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0760           # $at = 00010760
    sw      t6, 0x0004(s1)             # 00000004
    addu    v1, s6, $at
    lhu     t7, 0x01D6(v1)             # 000001D6
    bnel    t7, $zero, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    sw      v1, 0x0054($sp)
    jal     func_80075108
    sw      a2, 0x0050($sp)
    jal     func_800756A8
    or      a0, s7, $zero              # a0 = 00000000
    jal     func_80064D98
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_8007E610
    lw      a0, 0x0000(s6)             # 00000000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xFA00                 # t9 = FA000000
    lui     $at, 0xC8FF                # $at = C8FF0000
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      t9, 0x0000(s1)             # 00000000
    lhu     t4, 0x0252(s7)             # 00000252
    ori     $at, $at, 0x6400           # $at = C8FF6400
    lui     t8, 0xFB00                 # t8 = FB000000
    andi    t5, t4, 0x00FF             # t5 = 00000000
    or      t6, t5, $at                # t6 = C8FF6400
    sw      t6, 0x0004(s1)             # 00000004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0x0050                 # t9 = 00500000
    ori     t9, t9, 0x00FF             # t9 = 005000FF
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      t9, 0x0004(s1)             # 00000004
    sw      t8, 0x0000(s1)             # 00000000
    lw      a0, 0x02B0(s4)             # 000002B0
    lui     a1, 0x0200                 # a1 = 02000000
    addiu   t4, $zero, 0x001A          # t4 = 0000001A
    addiu   t5, $zero, 0x00CE          # t5 = 000000CE
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    addiu   t8, $zero, 0x0400          # t8 = 00000400
    addiu   t9, $zero, 0x0400          # t9 = 00000400
    sw      t9, 0x0024($sp)
    sw      t8, 0x0020($sp)
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    addiu   a1, a1, 0x1F00             # a1 = 02001F00
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    jal     func_8006F3A4
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    sw      v0, 0x02B0(s4)             # 000002B0
    lh      t4, 0x00A4(s6)             # 000000A4
    addiu   t5, t4, 0xFFFD             # t5 = FFFFFFFD
    sltiu   $at, t5, 0x000E
    beq     $at, $zero, lbl_80075AE0
    sll     t5, t5,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t5
    lw      t5, -0x7838($at)           # 801087C8
    jr      t5
    nop
    lui     s5, 0x8012                 # s5 = 80120000
    addiu   s5, s5, 0xA5D0             # s5 = 8011A5D0
    lhu     t6, 0x1402(s5)             # 8011B9D2
    lui     a1, 0x0200                 # a1 = 02000000
    addiu   a1, a1, 0x1E00             # a1 = 02001E00
    addu    t7, s5, t6
    lb      t8, 0x00BC(t7)             # 000000BC
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    bltz    t8, lbl_80075AD8
    nop
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t4, 0xE700                 # t4 = E7000000
    addiu   t9, s1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 00000004
    sw      t4, 0x0000(s1)             # 00000000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xFA00                 # t6 = FA000000
    lui     $at, 0xC8E6                # $at = C8E60000
    addiu   t5, s1, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      t6, 0x0000(s1)             # 00000000
    lhu     t7, 0x0252(s7)             # 00000252
    ori     $at, $at, 0xFF00           # $at = C8E6FF00
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = C8E6FF00
    sw      t9, 0x0004(s1)             # 00000004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xFB00                 # t5 = FB000000
    addiu   t6, $zero, 0x14FF          # t6 = 000014FF
    addiu   t4, s1, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      t6, 0x0004(s1)             # 00000004
    sw      t5, 0x0000(s1)             # 00000000
    lw      a0, 0x02B0(s4)             # 000002B0
    addiu   t7, $zero, 0x001A          # t7 = 0000001A
    addiu   t8, $zero, 0x00BE          # t8 = 000000BE
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    addiu   t5, $zero, 0x0400          # t5 = 00000400
    addiu   t6, $zero, 0x0400          # t6 = 00000400
    sw      t6, 0x0024($sp)
    sw      t5, 0x0020($sp)
    sw      t4, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    jal     func_8006F3A4
    sw      t7, 0x0010($sp)
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s4)             # 000002B0
    lui     t8, 0xE700                 # t8 = E7000000
    sw      t8, 0x0000(v0)             # 00000000
    sw      $zero, 0x0004(v0)          # 00000004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t9, s1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      t4, 0x0000(s1)             # 00000000
    lhu     t5, 0x0252(s7)             # 00000252
    lui     t9, 0xFCFF                 # t9 = FCFF0000
    ori     t9, t9, 0x97FF             # t9 = FCFF97FF
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t7, t6, $at                # t7 = FFFFFF00
    sw      t7, 0x0004(s1)             # 00000004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t4, 0xFF2D                 # t4 = FF2D0000
    ori     t4, t4, 0xFEFF             # t4 = FF2DFEFF
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      t4, 0x0004(s1)             # 00000004
    sw      t9, 0x0000(s1)             # 00000000
    sh      $zero, 0x0236(s7)          # 00000236
    lhu     t5, 0x1402(s5)             # 8011B9D2
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    addu    t6, s5, t5
    lb      t7, 0x00BC(t6)             # 000000BC
    lui     t6, 0x0200                 # t6 = 02000000
    addiu   t6, t6, 0x3040             # t6 = 02003040
    sh      t7, 0x0238(s7)             # 00000238
    lh      v1, 0x0238(s7)             # 00000238
    addiu   t7, $zero, 0x002A          # t7 = 0000002A
    slti    $at, v1, 0x000A
    bne     $at, $zero, lbl_80075A34
lbl_80075A14:
    addiu   t4, v1, 0xFFF6             # t4 = FFFFFFF6
    sh      t4, 0x0238(s7)             # 00000238
    lh      v1, 0x0238(s7)             # 00000238
    lh      t8, 0x0236(s7)             # 00000236
    slti    $at, v1, 0x000A
    addiu   t9, t8, 0x0001             # t9 = 00000009
    beq     $at, $zero, lbl_80075A14
    sh      t9, 0x0236(s7)             # 00000236
lbl_80075A34:
    lh      v0, 0x0236(s7)             # 00000236
    addiu   s2, $zero, 0x002A          # s2 = 0000002A
    addiu   t8, $zero, 0x00BE          # t8 = 000000BE
    beq     v0, $zero, lbl_80075A88
    sll     t5, v0,  7
    lw      a0, 0x02B0(s4)             # 000002B0
    addu    a1, t5, t6
    addiu   t6, $zero, 0x0400          # t6 = 00000400
    addiu   t5, $zero, 0x0400          # t5 = 00000400
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    sw      t4, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t5, 0x0020($sp)
    sw      t6, 0x0024($sp)
    sw      t8, 0x0014($sp)
    jal     func_8006F5D4
    sw      t7, 0x0010($sp)
    sw      v0, 0x02B0(s4)             # 000002B0
    lh      v1, 0x0238(s7)             # 00000238
    addiu   s2, $zero, 0x0032          # s2 = 00000032
lbl_80075A88:
    lw      a0, 0x02B0(s4)             # 000002B0
    lui     t8, 0x0200                 # t8 = 02000000
    addiu   t8, t8, 0x3040             # t8 = 02003040
    sll     t7, v1,  7
    addu    a1, t7, t8
    addiu   t7, $zero, 0x0400          # t7 = 00000400
    addiu   t9, $zero, 0x00BE          # t9 = 000000BE
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    addiu   t6, $zero, 0x0400          # t6 = 00000400
    sw      t6, 0x0020($sp)
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t7, 0x0024($sp)
    sw      s2, 0x0010($sp)
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8006F5D4
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    sw      v0, 0x02B0(s4)             # 000002B0
lbl_80075AD8:
    b       lbl_80075AEC
    addiu   s2, $zero, 0x002A          # s2 = 0000002A
lbl_80075AE0:
    lui     s5, 0x8012                 # s5 = 80120000
    addiu   s5, s5, 0xA5D0             # s5 = 8011A5D0
    addiu   s2, $zero, 0x002A          # s2 = 0000002A
lbl_80075AEC:
    lui     a0, 0x8010                 # a0 = 80100000
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x8CC4             # a1 = 800F8CC4
    addiu   a0, a0, 0x8C80             # a0 = 800F8C80
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xE700                 # t9 = E7000000
    lui     s0, 0x800F                 # s0 = 800F0000
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 00000004
    sw      t9, 0x0000(s1)             # 00000000
    lw      t4, 0x00A0(s5)             # 8011A670
    lw      t5, 0x0010(a0)             # 800F8C90
    lbu     t7, 0x0004(a1)             # 800F8CC8
    lh      v1, 0x0034(s5)             # 8011A604
    and     t6, t4, t5
    srav    t8, t6, t7
    sll     t9, t8,  1
    lui     t4, 0x8010                 # t4 = 80100000
    addu    t4, t4, t9
    lhu     t4, -0x7314(t4)            # 800F8CEC
    bne     v1, t4, lbl_80075B78
    nop
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xFA00                 # t6 = FA000000
    lui     $at, 0x78FF                # $at = 78FF0000
    addiu   t5, s1, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      t6, 0x0000(s1)             # 00000000
    lhu     t7, 0x0252(s7)             # 00000252
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = 78FF0000
    sw      t9, 0x0004(s1)             # 00000004
    b       lbl_80075BE0
    lw      s1, 0x02B0(s4)             # 000002B0
lbl_80075B78:
    beql    v1, $zero, lbl_80075BB4
    lw      s1, 0x02B0(s4)             # 000002B0
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t4, s1, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      t5, 0x0000(s1)             # 00000000
    lhu     t6, 0x0252(s7)             # 00000252
    andi    t7, t6, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = FFFFFF00
    sw      t8, 0x0004(s1)             # 00000004
    b       lbl_80075BE0
    lw      s1, 0x02B0(s4)             # 000002B0
    lw      s1, 0x02B0(s4)             # 000002B0
lbl_80075BB4:
    lui     t4, 0xFA00                 # t4 = FA000000
    lui     $at, 0x6464                # $at = 64640000
    addiu   t9, s1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      t4, 0x0000(s1)             # 00000000
    lhu     t5, 0x0252(s7)             # 00000252
    ori     $at, $at, 0x6400           # $at = 64646400
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t7, t6, $at                # t7 = 64646400
    sw      t7, 0x0004(s1)             # 00000004
    lw      s1, 0x02B0(s4)             # 000002B0
lbl_80075BE0:
    lui     t9, 0xFCFF                 # t9 = FCFF0000
    lui     t4, 0xFF2D                 # t4 = FF2D0000
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s4)             # 000002B0
    ori     t4, t4, 0xFEFF             # t4 = FF2DFEFF
    ori     t9, t9, 0x97FF             # t9 = FCFF97FF
    sw      t9, 0x0000(s1)             # 00000000
    sw      t4, 0x0004(s1)             # 00000004
    sh      $zero, 0x0234(s7)          # 00000234
    lh      t5, 0x0234(s7)             # 00000234
    sh      t5, 0x0232(s7)             # 00000232
    lh      t6, 0x0034(s5)             # 8011A604
    sh      t6, 0x0236(s7)             # 00000236
    lh      v0, 0x0236(s7)             # 00000236
    slti    $at, v0, 0x2710
    beql    $at, $zero, lbl_80075C2C
    andi    t7, v0, 0x0DDD             # t7 = 00000000
    bgez    v0, lbl_80075C34
    andi    t7, v0, 0x0DDD             # t7 = 00000000
lbl_80075C2C:
    sh      t7, 0x0236(s7)             # 00000236
    lh      v0, 0x0236(s7)             # 00000236
lbl_80075C34:
    slti    $at, v0, 0x0064
    bne     $at, $zero, lbl_80075C5C
lbl_80075C3C:
    addiu   t4, v0, 0xFF9C             # t4 = FFFFFF9C
    sh      t4, 0x0236(s7)             # 00000236
    lh      v0, 0x0236(s7)             # 00000236
    lh      t8, 0x0232(s7)             # 00000232
    slti    $at, v0, 0x0064
    addiu   t9, t8, 0x0001             # t9 = 00000009
    beq     $at, $zero, lbl_80075C3C
    sh      t9, 0x0232(s7)             # 00000232
lbl_80075C5C:
    slti    $at, v0, 0x000A
    bne     $at, $zero, lbl_80075C84
lbl_80075C64:
    addiu   t7, v0, 0xFFF6             # t7 = FFFFFFF6
    sh      t7, 0x0236(s7)             # 00000236
    lh      v0, 0x0236(s7)             # 00000236
    lh      t5, 0x0234(s7)             # 00000234
    slti    $at, v0, 0x000A
    addiu   t6, t5, 0x0001             # t6 = FA000001
    beq     $at, $zero, lbl_80075C64
    sh      t6, 0x0234(s7)             # 00000234
lbl_80075C84:
    lw      t8, 0x00A0(s5)             # 8011A670
    lw      t9, 0x0010(a0)             # 800F8C90
    lbu     t5, 0x0004(a1)             # 800F8CC8
    lui     s1, 0x800F                 # s1 = 800F0000
    and     t4, t8, t9
    srav    v0, t4, t5
    sll     v0, v0,  1
    addu    s1, s1, v0
    lh      s1, 0x7618(s1)             # 800F7618
    addu    s0, s0, v0
    lh      s0, 0x7610(s0)             # 800F7610
    blez    s1, lbl_80075D40
    or      s3, $zero, $zero           # s3 = 00000000
lbl_80075CB8:
    sll     t6, s0,  1
    addu    t7, s7, t6
    lh      t8, 0x0232(t7)             # 00000228
    lw      a0, 0x02B0(s4)             # 000002B0
    lui     t4, 0x0200                 # t4 = 02000000
    sll     t9, t8,  7
    addiu   t4, t4, 0x3040             # t4 = 02003040
    addu    a1, t9, t4
    addiu   t9, $zero, 0x0400          # t9 = 00000400
    addiu   t8, $zero, 0x0400          # t8 = 00000400
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t5, $zero, 0x00CE          # t5 = 000000CE
    sw      t5, 0x0014($sp)
    sw      t6, 0x0018($sp)
    sw      t7, 0x001C($sp)
    sw      t8, 0x0020($sp)
    sw      t9, 0x0024($sp)
    sw      s2, 0x0010($sp)
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8006F5D4
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16
    sra     s3, s3, 16
    addiu   s0, s0, 0x0001             # s0 = 800F0001
    addiu   s2, s2, 0x0008             # s2 = 00000032
    sll     s2, s2, 16
    sll     s0, s0, 16
    slt     $at, s3, s1
    sra     s0, s0, 16
    sra     s2, s2, 16
    bne     $at, $zero, lbl_80075CB8
    sw      v0, 0x02B0(s4)             # 000002B0
lbl_80075D40:
    jal     func_800730EC
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_8006CA64
    or      a0, s6, $zero              # a0 = 00000000
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4600(t4)            # 8011BA00
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      v0, 0x0190(t4)             # 80120190
    beq     v0, $at, lbl_80075D78
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80075D78
    addiu   a0, s6, 0x1C90             # a0 = 00001C90
    jal     func_8001FACC
    or      a1, s6, $zero              # a1 = 00000000
lbl_80075D78:
    jal     func_8007E610
    lw      a0, 0x0000(s6)             # 00000000
    jal     func_80073AB4
    or      a0, s6, $zero              # a0 = 00000000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t6, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      t8, 0x0000(s1)             # 800F0000
    lhu     t9, 0x0248(s7)             # 00000248
    lui     t7, 0xFC11                 # t7 = FC110000
    ori     t7, t7, 0x9623             # t7 = FC119623
    andi    t4, t9, 0x00FF             # t4 = 00000000
    or      t5, t4, $at                # t5 = FFFFFF00
    sw      t5, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xFF2F                 # t8 = FF2F0000
    ori     t8, t8, 0xFFFF             # t8 = FF2FFFFF
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    sw      t8, 0x0004(s1)             # 800F0004
    sw      t7, 0x0000(s1)             # 800F0000
    lh      t9, 0x01FA(s7)             # 000001FA
    bnel    t9, $zero, lbl_80075EC0
    lui     s0, 0xFC30                 # s0 = FC300000
    lbu     t4, 0x0068(s5)             # 8011A638
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    or      a0, s6, $zero              # a0 = 00000000
    beq     t4, $at, lbl_80075EA8
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800748DC
    lw      a1, 0x0138(s7)             # 00000138
    lw      t5, 0x0260($sp)
    lw      t8, 0x0050($sp)
    lw      t6, 0x066C(t5)             # 0000066C
    sll     t7, t6,  8
    bltzl   t7, lbl_80075E60
    lui     s0, 0xFC30                 # s0 = FC300000
    lb      t9, 0x1E5C(t8)             # 00001E5C
    slti    $at, t9, 0x0002
    beql    $at, $zero, lbl_80075E60
    lui     s0, 0xFC30                 # s0 = FC300000
    lh      t4, 0x00A4(s6)             # 000000A4
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    or      a0, s6, $zero              # a0 = 00000000
    bnel    t4, $at, lbl_80075EAC
    lui     s0, 0xFC30                 # s0 = FC300000
    jal     func_8002049C
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    beq     v0, $zero, lbl_80075EA8
    lui     s0, 0xFC30                 # s0 = FC300000
lbl_80075E60:
    lui     s3, 0x552E                 # s3 = 552E0000
    ori     s3, s3, 0xFF7F             # s3 = 552EFF7F
    ori     s0, s0, 0x9661             # s0 = FC309661
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xE700                 # t6 = E7000000
    or      a0, s6, $zero              # a0 = 00000000
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t6, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      s3, 0x0004(s1)             # 800F0004
    sw      s0, 0x0000(s1)             # 800F0000
    jal     func_80074A84
    lh      a2, 0x0248(s7)             # 00000248
lbl_80075EA8:
    lui     s0, 0xFC30                 # s0 = FC300000
lbl_80075EAC:
    lui     s3, 0x552E                 # s3 = 552E0000
    ori     s3, s3, 0xFF7F             # s3 = 552EFF7F
    b       lbl_80076104
    ori     s0, s0, 0x9661             # s0 = FC309661
    lui     s0, 0xFC30                 # s0 = FC300000
lbl_80075EC0:
    lui     s3, 0x552E                 # s3 = 552E0000
    ori     s3, s3, 0xFF7F             # s3 = 552EFF7F
    ori     s0, s0, 0x9661             # s0 = FC309661
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xE700                 # t9 = E7000000
    lui     s2, 0x8012                 # s2 = 80120000
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      s3, 0x0004(s1)             # 800F0004
    sw      s0, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      t6, 0x0000(s1)             # 800F0000
    lhu     t7, 0x0248(s7)             # 00000248
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = FFFFFF00
    sw      t9, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xFD70                 # t5 = FD700000
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      t5, 0x0000(s1)             # 800F0000
    lw      t6, 0x0134(s7)             # 00000134
    addiu   t7, t6, 0x0180             # t7 = FA000180
    sw      t7, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xF570                 # t9 = F5700000
    lui     t4, 0x0700                 # t4 = 07000000
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      t4, 0x0004(s1)             # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xE600                 # t6 = E6000000
    lui     t8, 0xF300                 # t8 = F3000000
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t6, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0x070B                 # t9 = 070B0000
    ori     t9, t9, 0xF2AB             # t9 = 070BF2AB
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      t9, 0x0004(s1)             # 800F0004
    sw      t8, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xE700                 # t5 = E7000000
    lui     t9, 0xF200                 # t9 = F2000000
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t5, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0xF560                 # t7 = F5600000
    ori     t7, t7, 0x0600             # t7 = F5600600
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t7, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t4, 0x000B                 # t4 = 000B0000
    ori     t4, t4, 0xC03C             # t4 = 000BC03C
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      t4, 0x0004(s1)             # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    lbu     t5, 0x1409(s5)             # 8011B9D9
    lw      s2, -0x4600(s2)            # 8011BA00
    lui     $at, 0x42C8                # $at = 42C80000
    sll     t6, t5,  1
    addu    t7, s2, t6
    lh      t8, 0x0DA4(t7)             # F56013A4
    mtc1    $at, $f8                   # $f8 = 100.00
    lui     $at, 0x4480                # $at = 44800000
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    $at, $f16                  # $f16 = 1024.00
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    div.s   $f18, $f16, $f10
    trunc.w.s $f4, $f18
    mfc1    t4, $f4
    nop
    sh      t4, 0x0D94(s2)             # 80120D94
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0x8012                 # t6 = 80120000
    lui     $at, 0xE400                # $at = E4000000
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    lbu     t7, 0x1409(s5)             # 8011B9D9
    lw      t6, -0x4600(t6)            # 8011BA00
    sll     t8, t7,  1
    addu    v0, t6, t8
    lh      t9, 0x0DAC(v0)             # 00000DAC
    lh      t8, 0x0DA8(v0)             # 00000DA8
    addiu   t4, t9, 0x0010             # t4 = F2000010
    sll     t5, t4,  2
    andi    t7, t5, 0x0FFF             # t7 = 00000008
    addiu   t9, t8, 0x0030             # t9 = 800F0038
    sll     t4, t9,  2
    andi    t5, t4, 0x0FFF             # t5 = 00000010
    or      t6, t7, $at                # t6 = E4000008
    sll     t7, t5, 12
    or      t8, t6, t7                 # t8 = E4000008
    sw      t8, 0x0000(s1)             # 800F0000
    lbu     t4, 0x1409(s5)             # 8011B9D9
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    sll     t5, t4,  1
    addu    v0, t9, t5
    lh      t6, 0x0DAC(v0)             # 00000DAC
    lh      t4, 0x0DA8(v0)             # 00000DA8
    sll     t7, t6,  2
    sll     t9, t4,  2
    andi    t5, t9, 0x0FFF             # t5 = 00000000
    sll     t6, t5, 12
    andi    t8, t7, 0x0FFF             # t8 = 00000008
    or      t7, t8, t6                 # t7 = E4000008
    sw      t7, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xE100                 # t9 = E1000000
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xF100                 # t8 = F1000000
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      t8, 0x0000(s1)             # 800F0000
    lw      t6, -0x4600(t6)            # 8011BA00
    lh      v1, 0x0D94(t6)             # 80120D94
    andi    v1, v1, 0xFFFF             # v1 = 00000000
    sll     t7, v1, 16
    or      t4, v1, t7                 # t4 = E4000008
    sw      t4, 0x0004(s1)             # 800F0004
lbl_80076104:
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xE700                 # t5 = E7000000
    addiu   t9, s1, 0x0008             # t9 = 800F0008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t5, 0x0000(s1)             # 800F0000
    lbu     t8, 0x0069(s5)             # 8011A639
    slti    $at, t8, 0x00F0
    beql    $at, $zero, lbl_800761CC
    lw      s1, 0x02B0(s4)             # 000002B0
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    sw      t7, 0x0000(s1)             # 800F0000
    lhu     t4, 0x024A(s7)             # 0000024A
    lui     t6, 0xFC11                 # t6 = FC110000
    ori     t6, t6, 0x9623             # t6 = FC119623
    andi    t9, t4, 0x00FF             # t9 = 00000008
    or      t5, t9, $at                # t5 = FFFFFF08
    sw      t5, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0xFF2F                 # t7 = FF2F0000
    ori     t7, t7, 0xFFFF             # t7 = FF2FFFFF
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      t7, 0x0004(s1)             # 800F0004
    sw      t6, 0x0000(s1)             # 800F0000
    lw      a1, 0x0138(s7)             # 00000138
    or      a0, s6, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_800748DC
    addiu   a1, a1, 0x1000             # a1 = 00001000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xE700                 # t9 = E7000000
    or      a0, s6, $zero              # a0 = 00000000
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      s3, 0x0004(s1)             # 800F0004
    sw      s0, 0x0000(s1)             # 800F0000
    jal     func_80074A84
    lh      a2, 0x024A(s7)             # 0000024A
    lw      s1, 0x02B0(s4)             # 000002B0
lbl_800761CC:
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t6, 0x0000(s1)             # 800F0000
    lbu     t7, 0x006A(s5)             # 8011A63A
    slti    $at, t7, 0x00F0
    beql    $at, $zero, lbl_80076290
    lw      s1, 0x02B0(s4)             # 000002B0
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      t9, 0x0000(s1)             # 800F0000
    lhu     t5, 0x024C(s7)             # 0000024C
    lui     t4, 0xFC11                 # t4 = FC110000
    ori     t4, t4, 0x9623             # t4 = FC119623
    andi    t8, t5, 0x00FF             # t8 = 00000000
    or      t6, t8, $at                # t6 = FFFFFF00
    sw      t6, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xFF2F                 # t9 = FF2F0000
    ori     t9, t9, 0xFFFF             # t9 = FF2FFFFF
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      t9, 0x0004(s1)             # 800F0004
    sw      t4, 0x0000(s1)             # 800F0000
    lw      a1, 0x0138(s7)             # 00000138
    or      a0, s6, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_800748DC
    addiu   a1, a1, 0x2000             # a1 = 00002000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xE700                 # t8 = E7000000
    or      a0, s6, $zero              # a0 = 00000000
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t8, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    sw      s3, 0x0004(s1)             # 800F0004
    sw      s0, 0x0000(s1)             # 800F0000
    jal     func_80074A84
    lh      a2, 0x024C(s7)             # 0000024C
    lw      s1, 0x02B0(s4)             # 000002B0
lbl_80076290:
    lui     t4, 0xE700                 # t4 = E7000000
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t4, 0x0000(s1)             # 800F0000
    lbu     t9, 0x006B(s5)             # 8011A63B
    slti    $at, t9, 0x00F0
    beq     $at, $zero, lbl_80076350
    nop
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      t8, 0x0000(s1)             # 800F0000
    lhu     t6, 0x024E(s7)             # 0000024E
    lui     t5, 0xFC11                 # t5 = FC110000
    ori     t5, t5, 0x9623             # t5 = FC119623
    andi    t7, t6, 0x00FF             # t7 = 00000000
    or      t4, t7, $at                # t4 = FFFFFF00
    sw      t4, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xFF2F                 # t8 = FF2F0000
    ori     t8, t8, 0xFFFF             # t8 = FF2FFFFF
    addiu   t9, s1, 0x0008             # t9 = 800F0008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      t8, 0x0004(s1)             # 800F0004
    sw      t5, 0x0000(s1)             # 800F0000
    lw      a1, 0x0138(s7)             # 00000138
    or      a0, s6, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_800748DC
    addiu   a1, a1, 0x3000             # a1 = 00003000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    or      a0, s6, $zero              # a0 = 00000000
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t7, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      s3, 0x0004(s1)             # 800F0004
    sw      s0, 0x0000(s1)             # 800F0000
    jal     func_80074A84
    lh      a2, 0x024E(s7)             # 0000024E
lbl_80076350:
    jal     func_8007E890
    lw      a0, 0x0000(s6)             # 00000000
    lui     s2, 0x8012                 # s2 = 80120000
    lw      s2, -0x4600(s2)            # 8011BA00
    or      a0, s6, $zero              # a0 = 00000000
    lh      a3, 0x0AB6(s2)             # 80120AB6
    lh      a1, 0x0AB4(s2)             # 80120AB4
    addiu   t9, a3, 0x002D             # t9 = 0000002D
    sw      t9, 0x0010($sp)
    jal     func_800755C8
    addiu   a2, a1, 0x002D             # a2 = 0000002D
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xD9FF                 # t8 = D9FF0000
    ori     t8, t8, 0xF9FF             # t8 = D9FFF9FF
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t8, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0xFC11                 # t7 = FC110000
    lui     t4, 0xFF2F                 # t4 = FF2F0000
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    ori     t4, t4, 0xFFFF             # t4 = FF2FFFFF
    ori     t7, t7, 0x9623             # t7 = FC119623
    sw      t7, 0x0000(s1)             # 800F0000
    sw      t4, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xFA00                 # t5 = FA000000
    lui     s2, 0x8012                 # s2 = 80120000
    addiu   t9, s1, 0x0008             # t9 = 800F0008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      t5, 0x0000(s1)             # 800F0000
    lw      s2, -0x4600(s2)            # 8011BA00
    lh      t8, 0x0AC4(s2)             # 80120AC4
    lh      t9, 0x0AC0(s2)             # 80120AC0
    andi    t6, t8, 0x00FF             # t6 = 000000FF
    sll     t7, t6,  8
    lh      t6, 0x0AC2(s2)             # 80120AC2
    sll     t5, t9, 24
    or      t8, t7, t5                 # t8 = FE119623
    lhu     t5, 0x0246(s7)             # 00000246
    andi    t4, t6, 0x00FF             # t4 = 000000FF
    sll     t9, t4, 16
    or      t7, t8, t9                 # t7 = FE1F962B
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t4, t7, t6                 # t4 = FE1F962B
    sw      t4, 0x0004(s1)             # 800F0004
    jal     func_80074F24
    or      a0, s6, $zero              # a0 = 00000000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xE700                 # t9 = E7000000
    lui     s2, 0x8012                 # s2 = 80120000
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    lw      s2, -0x4600(s2)            # 8011BA00
    or      a0, s6, $zero              # a0 = 00000000
    lh      a3, 0x0ABC(s2)             # 80120ABC
    lh      a1, 0x0ABA(s2)             # 80120ABA
    addiu   t5, a3, 0x002D             # t5 = 0000002D
    sw      t5, 0x0010($sp)
    jal     func_800755C8
    addiu   a2, a1, 0x002D             # a2 = 0000002D
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xD9FF                 # t6 = D9FF0000
    ori     t6, t6, 0xFFFF             # t6 = D9FFFFFF
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    addiu   t4, $zero, 0x0400          # t4 = 00000400
    sw      t4, 0x0004(s1)             # 800F0004
    sw      t6, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      s3, 0x0004(s1)             # 800F0004
    sw      s0, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t9, s1, 0x0008             # t9 = 800F0008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      t5, 0x0000(s1)             # 800F0000
    lhu     t7, 0x0246(s7)             # 00000246
    lui     t5, 0x8012                 # t5 = 80120000
    andi    t6, t7, 0x00FF             # t6 = 00000008
    or      t4, t6, $at                # t4 = FFFFFF08
    sw      t4, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xFB00                 # t9 = FB000000
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    lbu     t7, 0x1409(s5)             # 8011B9D9
    lw      t5, -0x4600(t5)            # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    sll     t6, t7,  1
    addu    t4, t5, t6
    lh      t8, 0x0DB0(t4)             # 00000CB8
    mtc1    $at, $f16                  # $f16 = 10.00
    mov.s   $f14, $f12
    mtc1    t8, $f6                    # $f6 = 0.00
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f8, $f6
    div.s   $f10, $f8, $f16
    mfc1    a2, $f10
    jal     func_800AA7F4
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7800($at)          # 80108800
    lwc1    $f18, 0x01F4(s7)           # 000001F4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0
    div.s   $f12, $f18, $f4
    lui     s3, 0xDA38                 # s3 = DA380000
    ori     s3, s3, 0x0003             # s3 = DA380003
    lw      s0, 0x02B0(s4)             # 000002B0
    addiu   t9, s0, 0x0008             # t9 = FC309669
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      s3, 0x0000(s0)             # FC309661
    jal     func_800AB900
    lw      a0, 0x0000(s6)             # 00000000
    lui     s2, 0x0100                 # s2 = 01000000
    ori     s2, s2, 0x4008             # s2 = 01004008
    sw      v0, 0x0004(s0)             # FC309665
    lw      s1, 0x02B0(s4)             # 000002B0
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      s2, 0x0000(s1)             # 800F0000
    lw      t5, 0x0128(s7)             # 00000128
    addiu   t6, t5, 0x0040             # t6 = 00000040
    sw      t6, 0x0004(s1)             # 800F0004
    lh      a0, 0x01EC(s7)             # 000001EC
    slti    $at, a0, 0x0002
    bne     $at, $zero, lbl_8007659C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    a0, $at, lbl_800765B4
    lw      a1, 0x0134(s7)             # 00000134
lbl_8007659C:
    lw      a0, 0x0000(s6)             # 00000000
    jal     func_800739CC
    lw      a1, 0x0134(s7)             # 00000134
    b       lbl_800765C4
    lw      s1, 0x02B0(s4)             # 000002B0
    lw      a1, 0x0134(s7)             # 00000134
lbl_800765B4:
    lw      a0, 0x0000(s6)             # 00000000
    jal     func_800739CC
    addiu   a1, a1, 0x0180             # a1 = 00000180
    lw      s1, 0x02B0(s4)             # 000002B0
lbl_800765C4:
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t8, 0x0000(s1)             # 800F0000
    jal     func_800756A8
    or      a0, s7, $zero              # a0 = 00000000
    lw      v0, 0x0054($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lhu     t9, 0x01D4(v0)             # 000001D4
    bne     t9, $at, lbl_80076B40
    nop
    lhu     t7, 0x01E4(v0)             # 000001E4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t7, $at, lbl_80076B40
    nop
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      t6, 0x0000(s1)             # 800F0000
    lw      t4, 0x0054($sp)
    lw      t8, 0x0128(t4)             # 00000128
    sw      t8, 0x0004(s1)             # 800F0004
    jal     func_8007E890
    lw      a0, 0x0000(s6)             # 00000000
    lw      a1, 0x0054($sp)
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lw      v0, 0x02B0(s4)             # 000002B0
    lui     t7, 0xFC11                 # t7 = FC110000
    lui     t5, 0xFF2F                 # t5 = FF2F0000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s4)             # 000002B0
    ori     t5, t5, 0xFFFF             # t5 = FF2FFFFF
    ori     t7, t7, 0x9623             # t7 = FC119623
    sw      t7, 0x0000(v0)             # 00000000
    sw      t5, 0x0004(v0)             # 00000004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   t4, t4, 0xEDB0             # t4 = 800FEDB0
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    sw      t4, 0x0004(s1)             # 800F0004
    sw      s3, 0x0000(s1)             # 800F0000
    or      a0, s1, $zero              # a0 = 800F0000
    lh      t8, 0x0254(a1)             # 00000254
    lw      t9, 0x0168(a1)             # 00000168
    lui     t5, 0x8012                 # t5 = 80120000
    div     $zero, t8, a2
    mflo    t0
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0120(t9)             # 00000128
    lw      t7, 0x0168(a1)             # 00000168
    bne     a2, $zero, lbl_800766AC
    nop
    break   # 0x01C00
lbl_800766AC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a2, $at, lbl_800766C4
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_800766C4
    nop
    break   # 0x01800
lbl_800766C4:
    sh      t0, 0x0100(t7)             # FC119723
    lw      t5, -0x4600(t5)            # 8011BA00
    lw      v1, 0x0168(a1)             # 00000168
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    lh      t6, 0x0E48(t5)             # 80120E48
    lh      t8, 0x0100(v1)             # 00000100
    div     $zero, t6, a2
    mflo    t4
    addu    t0, t4, t8
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0130(v1)             # 00000130
    lw      t9, 0x0168(a1)             # 00000168
    bne     a2, $zero, lbl_80076704
    nop
    break   # 0x01C00
lbl_80076704:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a2, $at, lbl_8007671C
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_8007671C
    nop
    break   # 0x01800
lbl_8007671C:
    sh      t0, 0x0110(t9)             # 00000118
    lw      v0, 0x0054($sp)
    lui     t8, 0x8012                 # t8 = 80120000
    lh      t7, 0x0256(v0)             # 00000256
    lw      t5, 0x0168(v0)             # 00000168
    div     $zero, t7, a0
    mflo    t0
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0112(t5)             # 80120112
    lw      t6, 0x0168(v0)             # 00000168
    bne     a0, $zero, lbl_80076754
    nop
    break   # 0x01C00
lbl_80076754:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a0, $at, lbl_8007676C
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_8007676C
    nop
    break   # 0x01800
lbl_8007676C:
    sh      t0, 0x0102(t6)             # 800F010A
    lw      t8, -0x4600(t8)            # 8011BA00
    lw      v1, 0x0168(v0)             # 00000168
    lui     t6, 0x800F                 # t6 = 800F0000
    lh      t9, 0x0E48(t8)             # 80120E48
    lh      t4, 0x0102(v1)             # 00000102
    div     $zero, t9, a0
    mflo    t7
    subu    t0, t4, t7
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0132(v1)             # 00000132
    lw      t5, 0x0168(v0)             # 00000168
    bne     a0, $zero, lbl_800767AC
    nop
    break   # 0x01C00
lbl_800767AC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a0, $at, lbl_800767C4
    lui     $at, 0x8000                # $at = 80000000
    bne     t9, $at, lbl_800767C4
    nop
    break   # 0x01800
lbl_800767C4:
    sh      t0, 0x0122(t5)             # 80120122
    lhu     a1, 0x024E(v0)             # 0000024E
    lw      a2, 0x0054($sp)
    lui     t5, 0xFA00                 # t5 = FA000000
    slti    $at, a1, 0x00BF
    beq     $at, $zero, lbl_80076904
    lui     t4, 0x800F                 # t4 = 800F0000
    lw      a2, 0x0054($sp)
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    sw      t8, 0x0000(s1)             # 800F0000
    lh      t9, 0x0258(a2)             # 00000262
    andi    t4, t9, 0x00FF             # t4 = 00000008
    or      t7, t4, $at                # t7 = FFFFFF08
    sw      t7, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      s2, 0x0000(s1)             # 800F0000
    lw      t6, 0x0168(a2)             # 00000172
    addiu   t8, t6, 0x0100             # t8 = 800F0108
    sw      t8, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t4, 0xFD18                 # t4 = FD180000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t9, s1, 0x0008             # t9 = 800F0008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      t4, 0x0000(s1)             # 800F0000
    lhu     t7, 0x024E(a2)             # 00000258
    sll     t5, t7,  2
    addu    t6, t6, t5
    lw      t6, -0x72D4(t6)            # 800F8D2C
    sw      t6, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xF518                 # t9 = F5180000
    lui     t4, 0x0700                 # t4 = 07000000
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      t4, 0x0004(s1)             # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xE600                 # t5 = E6000000
    lui     t8, 0xF300                 # t8 = F3000000
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t5, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0x073F                 # t9 = 073F0000
    ori     t9, t9, 0xF080             # t9 = 073FF080
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    sw      t9, 0x0004(s1)             # 800F0004
    sw      t8, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    lui     t9, 0xF200                 # t9 = F2000000
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t7, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xF518                 # t6 = F5180000
    ori     t6, t6, 0x1000             # t6 = F5181000
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t6, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t4, 0x0007                 # t4 = 00070000
    ori     t4, t4, 0xC07C             # t4 = 0007C07C
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      t4, 0x0004(s1)             # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    b       lbl_80076B24
    lw      s1, 0x02B0(s4)             # 000002B0
lbl_80076904:
    addiu   s3, a1, 0xFF41             # s3 = FFFFFF41
    sll     s3, s3, 16
    sra     s3, s3, 16
    lw      s1, 0x02B0(s4)             # 000002B0
    sll     v0, s3,  1
    addu    t6, t6, v0
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      t5, 0x0000(s1)             # 800F0000
    lh      t6, 0x75D0(t6)             # F51885D0
    addu    t4, t4, v0
    lh      t7, 0x75C0(t4)             # 0008363C
    andi    t8, t6, 0x00FF             # t8 = 00000000
    sll     t9, t8,  8
    lui     t8, 0x800F                 # t8 = 800F0000
    addu    t8, t8, v0
    lh      t8, 0x75C8(t8)             # 800F75C8
    sll     t5, t7, 24
    or      t6, t9, t5                 # t6 = F20F0008
    lh      t5, 0x0258(a2)             # 00000262
    andi    t4, t8, 0x00FF             # t4 = 00000000
    sll     t7, t4, 16
    or      t9, t6, t7                 # t9 = F20F0008
    andi    t8, t5, 0x00FF             # t8 = 00000008
    or      t4, t9, t8                 # t4 = F20F0008
    sw      t4, 0x0004(s1)             # 800F0004
    lh      a0, 0x0258(a2)             # 00000262
    blez    a0, lbl_80076A38
    slti    $at, a0, 0x00FF
    beq     $at, $zero, lbl_80076A38
    lw      a1, 0x0054($sp)
    lw      v1, 0x0168(a1)             # 00000168
    bgez    a0, lbl_80076994
    sra     s3, a0,  3
    addiu   $at, a0, 0x0007            # $at = 00000011
    sra     s3, $at,  3
lbl_80076994:
    bgez    s3, lbl_800769A0
    addu    $at, s3, $zero
    addiu   $at, s3, 0x0001            # $at = FFFFFF42
lbl_800769A0:
    sra     s3, $at,  1
    lh      t6, 0x0100(v1)             # 00000100
    sll     s3, s3, 16
    sra     s3, s3, 16
    subu    t0, t6, s3
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0120(v1)             # 00000120
    lw      t7, 0x0168(a1)             # 00000168
    sll     v0, s3,  1
    sh      t0, 0x0100(t7)             # 800F0108
    lw      v1, 0x0168(a1)             # 00000168
    lh      t5, 0x0100(v1)             # 00000100
    addu    t0, t5, v0
    addiu   t0, t0, 0x0020             # t0 = 00000020
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0130(v1)             # 00000130
    lw      t9, 0x0168(a1)             # 00000168
    sh      t0, 0x0110(t9)             # F20F0118
    lw      v1, 0x0168(a1)             # 00000168
    lh      t8, 0x0102(v1)             # 00000102
    addu    t0, t8, s3
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0112(v1)             # 00000112
    lw      t4, 0x0168(a1)             # 00000168
    sh      t0, 0x0102(t4)             # F20F010A
    lw      v1, 0x0168(a1)             # 00000168
    lh      t6, 0x0102(v1)             # 00000102
    subu    t0, t6, v0
    addiu   t0, t0, 0xFFE0             # t0 = 00000000
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t0, 0x0132(v1)             # 00000132
    lw      t7, 0x0054($sp)
    lw      t5, 0x0168(t7)             # 800F0170
    sh      t0, 0x0122(t5)             # 800F012A
lbl_80076A38:
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xFD70                 # t5 = FD700000
    addiu   t9, s1, 0x0008             # t9 = 800F0008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      s2, 0x0000(s1)             # 800F0000
    lw      t8, 0x0054($sp)
    lw      t4, 0x0168(t8)             # 00000170
    addiu   t6, t4, 0x0100             # t6 = F20F0108
    sw      t6, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0x0809                 # t9 = 08090000
    addiu   t9, t9, 0x81C0             # t9 = 080881C0
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      t9, 0x0004(s1)             # 800F0004
    sw      t5, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t4, 0xF570                 # t4 = F5700000
    lui     t6, 0x0700                 # t6 = 07000000
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      t6, 0x0004(s1)             # 800F0004
    sw      t4, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xE600                 # t5 = E6000000
    lui     t8, 0xF300                 # t8 = F3000000
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t5, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t4, 0x071F                 # t4 = 071F0000
    ori     t4, t4, 0xF200             # t4 = 071FF200
    addiu   t9, s1, 0x0008             # t9 = 800F0008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      t4, 0x0004(s1)             # 800F0004
    sw      t8, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    lui     t4, 0xF200                 # t4 = F2000000
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t7, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xF568                 # t9 = F5680000
    ori     t9, t9, 0x0800             # t9 = F5680800
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0x0007                 # t6 = 00070000
    ori     t6, t6, 0xC07C             # t6 = 0007C07C
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      t6, 0x0004(s1)             # 800F0004
    sw      t4, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
lbl_80076B24:
    lui     t5, 0x0700                 # t5 = 07000000
    ori     t5, t5, 0x0406             # t5 = 07000406
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    addiu   t9, $zero, 0x0602          # t9 = 00000602
    sw      t9, 0x0004(s1)             # 800F0004
    sw      t5, 0x0000(s1)             # 800F0000
lbl_80076B40:
    jal     func_8007E610
    lw      a0, 0x0000(s6)             # 00000000
    lw      v0, 0x0050($sp)
    lhu     t8, 0x0934(v0)             # 00000934
    bnel    t8, $zero, lbl_80077090
    lh      t8, 0x13D2(s5)             # 8011B9A2
    lhu     t4, 0x0936(v0)             # 00000936
    bnel    t4, $zero, lbl_80077090
    lh      t8, 0x13D2(s5)             # 8011B9A2
    lhu     t6, 0x1404(s5)             # 8011B9D4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a3, 0x0400                 # a3 = 04000000
    beq     t6, $at, lbl_80076D94
    ori     a3, a3, 0x0400             # a3 = 04000400
    lhu     t7, 0x01EE(s7)             # 000001EE
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lui     t9, 0xFD18                 # t9 = FD180000
    bne     t7, $at, lbl_8007708C
    lui     a3, 0x0400                 # a3 = 04000000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0x0200                 # t8 = 02000000
    addiu   t8, t8, 0x2100             # t8 = 02002100
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      t8, 0x0004(s1)             # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xF518                 # t6 = F5180000
    lui     t7, 0x0700                 # t7 = 07000000
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      t7, 0x0004(s1)             # 800F0004
    sw      t6, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xE600                 # t9 = E6000000
    lui     t4, 0xF300                 # t4 = F3000000
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0x070F                 # t6 = 070F0000
    ori     t6, t6, 0xF100             # t6 = 070FF100
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      t6, 0x0004(s1)             # 800F0004
    sw      t4, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xE700                 # t5 = E7000000
    lui     t6, 0xF200                 # t6 = F2000000
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t5, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xF518                 # t8 = F5180000
    ori     t8, t8, 0x0800             # t8 = F5180800
    addiu   t9, s1, 0x0008             # t9 = 800F0008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t8, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0x0003                 # t7 = 00030000
    ori     t7, t7, 0xC03C             # t7 = 0003C03C
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      t7, 0x0004(s1)             # 800F0004
    sw      t6, 0x0000(s1)             # 800F0000
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x4600(t5)            # 8011BA00
    lui     a2, 0x0096                 # a2 = 00960000
    ori     a2, a2, 0xFF00             # a2 = 0096FF00
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    ori     a3, a3, 0x0400             # a3 = 04000400
    lh      t0, 0x07B0(t5)             # 801207B0
lbl_80076C6C:
    lbu     v0, 0x023A(s7)             # 0000023A
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xBA00             # t1 = 8011BA00
    beq     v0, $zero, lbl_80076C88
    slt     $at, v0, s3
    beql    $at, $zero, lbl_80076CB8
    lw      s1, 0x02B0(s4)             # 000002B0
lbl_80076C88:
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   t9, s1, 0x0008             # t9 = 800F0008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      t8, 0x0000(s1)             # 800F0000
    lhu     t4, 0x0246(s7)             # 00000246
    andi    t6, t4, 0x00FF             # t6 = 00000008
    or      t7, t6, a2                 # t7 = 0096FF08
    sw      t7, 0x0004(s1)             # 800F0004
    b       lbl_80076CDC
    nop
    lw      s1, 0x02B0(s4)             # 000002B0
lbl_80076CB8:
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      t9, 0x0000(s1)             # 800F0000
    lhu     t8, 0x0246(s7)             # 00000246
    andi    t4, t8, 0x00FF             # t4 = 00000000
    or      t6, t4, $at                # t6 = FFFFFF00
    sw      t6, 0x0004(s1)             # 800F0004
lbl_80076CDC:
    lw      s1, 0x02B0(s4)             # 000002B0
    addiu   v1, t0, 0x0010             # v1 = 00000010
    lui     $at, 0xE400                # $at = E4000000
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    lw      t5, 0x0000(t1)             # 8011BA00
    addiu   s3, s3, 0x0001             # s3 = 00000002
    sll     s3, s3, 16
    lh      t9, 0x07B2(t5)             # 800F07BA
    sll     t5, v1,  2
    sra     s3, s3, 16
    addiu   t8, t9, 0x0010             # t8 = FA000010
    sll     t4, t8,  2
    andi    t6, t4, 0x0FFF             # t6 = 00000000
    andi    t9, t5, 0x0FFF             # t9 = 00000008
    sll     t8, t9, 12
    or      t7, t6, $at                # t7 = E4000000
    or      t4, t7, t8                 # t4 = FE000010
    sw      t4, 0x0000(s1)             # 800F0000
    lw      t6, 0x0000(t1)             # 8011BA00
    sll     t8, t0,  2
    andi    t4, t8, 0x0FFF             # t4 = 00000010
    lh      t5, 0x07B2(t6)             # 000007B2
    sll     t6, t4, 12
    sll     t0, v1, 16
    sll     t9, t5,  2
    andi    t7, t9, 0x0FFF             # t7 = 00000008
    or      t5, t7, t6                 # t5 = 00000008
    sw      t5, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xE100                 # t8 = E1000000
    slti    $at, s3, 0x0007
    addiu   t9, s1, 0x0008             # t9 = 800F0008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t8, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0xF100                 # t7 = F1000000
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      a3, 0x0004(s1)             # 800F0004
    sw      t7, 0x0000(s1)             # 800F0000
    bne     $at, $zero, lbl_80076C6C
    sra     t0, t0, 16
    b       lbl_80077090
    lh      t8, 0x13D2(s5)             # 8011B9A2
lbl_80076D94:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lh      t0, 0x0DD4(t6)             # 80120DD4
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      t9, 0x0000(s1)             # 800F0000
    lhu     t8, 0x0248(s7)             # 00000248
    lui     t5, 0xFD10                 # t5 = FD100000
    andi    t4, t8, 0x00FF             # t4 = 00000000
    or      t7, t4, $at                # t7 = FFFFFF00
    sw      t7, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0x0200                 # t9 = 02000000
    addiu   t9, t9, 0x2600             # t9 = 02002600
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    sw      t9, 0x0004(s1)             # 800F0004
    sw      t5, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t4, 0xF510                 # t4 = F5100000
    lui     t7, 0x0700                 # t7 = 07000000
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      t7, 0x0004(s1)             # 800F0004
    sw      t4, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xE600                 # t5 = E6000000
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t5, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t4, 0x0717                 # t4 = 07170000
    ori     t4, t4, 0xF156             # t4 = 0717F156
    addiu   t9, s1, 0x0008             # t9 = 800F0008
    sw      t9, 0x02B0(s4)             # 000002B0
    lui     t8, 0xF300                 # t8 = F3000000
    sw      t8, 0x0000(s1)             # 800F0000
    sw      t4, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xE700                 # t6 = E7000000
    lui     t4, 0xF200                 # t4 = F2000000
    addiu   t7, s1, 0x0008             # t7 = 800F0008
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t6, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xF510                 # t9 = F5100000
    ori     t9, t9, 0x0C00             # t9 = F5100C00
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t9, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0x0005                 # t7 = 00050000
    ori     t7, t7, 0xC03C             # t7 = 0005C03C
    addiu   t8, s1, 0x0008             # t8 = 800F0008
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      t7, 0x0004(s1)             # 800F0004
    sw      t4, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0x8012                 # t5 = 80120000
    lui     $at, 0xE400                # $at = E4000000
    addiu   t6, s1, 0x0008             # t6 = 800F0008
    sw      t6, 0x02B0(s4)             # 000002B0
    lw      t5, -0x4600(t5)            # 8011BA00
    lh      t9, 0x07B2(t5)             # 801207B2
    addiu   t5, t0, 0x0034             # t5 = 00000034
    addiu   t8, t9, 0x0010             # t8 = F5100C10
    sll     t4, t8,  2
    andi    t7, t4, 0x0FFF             # t7 = 00000000
    sll     t9, t5,  2
    andi    t8, t9, 0x0FFF             # t8 = 00000C00
    sll     t4, t8, 12
    or      t6, t7, $at                # t6 = E4000000
    or      t7, t6, t4                 # t7 = F6000000
    lui     t5, 0x8012                 # t5 = 80120000
    sw      t7, 0x0000(s1)             # 800F0000
    lw      t5, -0x4600(t5)            # 8011BA00
    addiu   t4, t0, 0x001C             # t4 = 0000001C
    sll     t7, t4,  2
    lh      t9, 0x07B2(t5)             # 801207B2
    andi    t5, t7, 0x0FFF             # t5 = 00000000
    sll     t8, t9,  2
    andi    t6, t8, 0x0FFF             # t6 = 00000C00
    sll     t9, t5, 12
    or      t8, t6, t9                 # t8 = F5100C00
    sw      t8, 0x0004(s1)             # 800F0004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0xE100                 # t7 = E1000000
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t7, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xF100                 # t6 = F1000000
    lui     t7, 0xFCFF                 # t7 = FCFF0000
    addiu   t5, s1, 0x0008             # t5 = 800F0008
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      a3, 0x0004(s1)             # 800F0004
    sw      t6, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xE700                 # t8 = E7000000
    ori     t7, t7, 0x97FF             # t7 = FCFF97FF
    addiu   t9, s1, 0x0008             # t9 = 800F0008
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F0004
    sw      t8, 0x0000(s1)             # 800F0000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t5, 0xFF2D                 # t5 = FF2D0000
    ori     t5, t5, 0xFEFF             # t5 = FF2DFEFF
    addiu   t4, s1, 0x0008             # t4 = 800F0008
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      t5, 0x0004(s1)             # 800F0004
    sw      t7, 0x0000(s1)             # 800F0000
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     s1, 0x800F                 # s1 = 800F0000
    addiu   s1, s1, 0x74E8             # s1 = 800F74E8
    lh      t0, 0x0DD4(t6)             # 80120DD4
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   t0, t0, 0x0036             # t0 = 00000036
    sll     t0, t0, 16
    sra     t0, t0, 16
    sll     t9, s3,  1
lbl_80076F98:
    addu    t8, s1, t9
    lhu     v0, 0x0000(t8)             # E7000000
    lui     t7, 0x0200                 # t7 = 02000000
    addiu   t7, t7, 0x3040             # t7 = 02003040
    bne     v0, $zero, lbl_80076FC0
    sll     t4, v0,  7
    bne     s0, $zero, lbl_80076FC0
    slti    $at, s3, 0x0003
    bnel    $at, $zero, lbl_8007703C
    addiu   s3, s3, 0x0001             # s3 = 00000001
lbl_80076FC0:
    lui     s2, 0x8012                 # s2 = 80120000
    lw      s2, -0x4600(s2)            # 8011BA00
    lw      a0, 0x02B0(s4)             # 000002B0
    sw      t0, 0x0010($sp)
    lh      t5, 0x07B2(s2)             # 801207B2
    lui     t9, 0x800F                 # t9 = 800F0000
    lh      t9, 0x75E4(t9)             # 800F75E4
    addiu   t6, t5, 0xFFFE             # t6 = FF2DFEFD
    sw      t6, 0x0014($sp)
    sw      t9, 0x0018($sp)
    lh      t8, 0x0F68(s2)             # 80120F68
    addu    a1, t4, t7
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sw      t8, 0x001C($sp)
    lh      v1, 0x0F6A(s2)             # 80120F6A
    sh      t0, 0x0256($sp)
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    sll     v1, v1,  1
    andi    v1, v1, 0xFFFF             # v1 = 00000010
    sw      v1, 0x0020($sp)
    jal     func_8006F5D4
    sw      v1, 0x0024($sp)
    lh      t0, 0x0256($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    addiu   t0, t0, 0x0009             # t0 = 00000009
    sll     t0, t0, 16
    sw      v0, 0x02B0(s4)             # 000002B0
    sra     t0, t0, 16
    sra     s0, s0, 16
    addiu   s3, s3, 0x0001             # s3 = 00000002
lbl_8007703C:
    sll     s3, s3, 16
    sra     s3, s3, 16
    slti    $at, s3, 0x0004
    bnel    $at, $zero, lbl_80076F98
    sll     t9, s3,  1
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    lui     t6, 0xFC11                 # t6 = FC110000
    addiu   t4, s1, 0x0008             # t4 = 800F74F0
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F74EC
    sw      t7, 0x0000(s1)             # 800F74E8
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xFF2F                 # t9 = FF2F0000
    ori     t9, t9, 0xFFFF             # t9 = FF2FFFFF
    addiu   t5, s1, 0x0008             # t5 = 800F74F0
    sw      t5, 0x02B0(s4)             # 000002B0
    ori     t6, t6, 0x9623             # t6 = FC119623
    sw      t6, 0x0000(s1)             # 800F74E8
    sw      t9, 0x0004(s1)             # 800F74EC
lbl_8007708C:
    lh      t8, 0x13D2(s5)             # 8011B9A2
lbl_80077090:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    t8, $at, lbl_800771EC
    lw      v0, 0x0050($sp)
    jal     func_800DD464
    addiu   a0, s6, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_800771E8
    addiu   v1, $zero, 0x0028          # v1 = 00000028
    lui     $at, 0x0001                # $at = 00010000
    sw      $zero, 0x0008(s5)          # 8011A5D8
    addu    $at, $at, s6
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sb      t4, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sb      t7, 0x1E5E($at)            # 00011E5E
    lbu     v0, 0x0068(s5)             # 8011A638
    sh      $zero, 0x13D2(s5)          # 8011B9A2
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DA($at)           # 8011BF26
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    beq     v0, $at, lbl_80077128
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    beq     v0, $at, lbl_80077128
    addiu   $at, $zero, 0x003D         # $at = 0000003D
    beq     v0, $at, lbl_80077128
    addiu   $at, $zero, 0x0055         # $at = 00000055
    beq     v0, $at, lbl_80077128
    nop
    lbu     v0, 0x13E2(s5)             # 8011B9B2
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    beql    v0, $zero, lbl_80077128
    sb      t5, 0x0068(s5)             # 8011A638
    b       lbl_80077128
    sb      v0, 0x0068(s5)             # 8011A638
    sb      t5, 0x0068(s5)             # 8011A638
lbl_80077128:
    lui     t9, 0x8010                 # t9 = 80100000
    lbu     t9, -0x709F(t9)            # 800F8F61
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x74F8             # t6 = 800F74F8
    sll     v0, s3,  1
    addu    s2, v0, t6
    addu    t8, s5, t9
    lbu     t4, 0x0074(t8)             # 00000074
    lh      t7, 0x0000(s2)             # 80120000
    lui     t5, 0x800F                 # t5 = 800F0000
    addu    t5, t5, v0
    bne     t4, t7, lbl_800771D0
    lui     $at, 0x0001                # $at = 00010000
    lh      t5, 0x7620(t5)             # 800F7620
    lui     t6, 0x800F                 # t6 = 800F0000
    addu    $at, $at, s6
    addiu   t6, t6, 0x7500             # t6 = 800F7500
    addu    s1, v0, t6
    sh      t5, 0x1E1A($at)            # 00011E1A
    lh      v1, 0x0000(s1)             # 800F74E8
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    addu    t9, t9, v1
    lbu     t9, -0x70CC(t9)            # 800F8F34
    addu    t8, s5, t9
    sb      v1, 0x0074(t8)             # 00000074
    addu    v0, s5, s0
lbl_80077194:
    lbu     t4, 0x0068(v0)             # 00000068
    lh      t7, 0x0000(s2)             # 80120000
    or      a0, s6, $zero              # a0 = 00000000
    bnel    t4, t7, lbl_800771BC
    addiu   s0, s0, 0x0001             # s0 = 00000002
    lh      t5, 0x0000(s1)             # 800F74E8
    andi    a1, s0, 0xFFFF             # a1 = 00000002
    jal     func_8006FB50
    sb      t5, 0x0068(v0)             # 00000068
    addiu   s0, s0, 0x0001             # s0 = 00000003
lbl_800771BC:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0004
    bnel    $at, $zero, lbl_80077194
    addu    v0, s5, s0
lbl_800771D0:
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16
    sra     s3, s3, 16
    slti    $at, s3, 0x0003
    bne     $at, $zero, lbl_80077128
    nop
lbl_800771E8:
    lw      v0, 0x0050($sp)
lbl_800771EC:
    lhu     t6, 0x0934(v0)             # 00000934
    bnel    t6, $zero, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    lhu     t9, 0x0936(v0)             # 00000936
    bnel    t9, $zero, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    lhu     t8, 0x0A20(v0)             # 00000A20
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    addu    s0, s6, $at
    bnel    t8, $zero, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    lbu     t4, 0x6304(s0)             # 00006307
    lw      t7, 0x0260($sp)
    bnel    t4, $zero, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    lw      t5, 0x0670(t7)             # 00000670
    sll     t6, t5,  7
    bltzl   t6, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    lb      t9, 0x1E15(v0)             # 00001E15
    bnel    t9, $zero, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    lbu     t8, 0x241B(v0)             # 0000241B
    bnel    t8, $zero, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    jal     func_8009CB08
    or      a0, s6, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    lhu     t4, 0x1404(s5)             # 8011B9D4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t7, 0x0050($sp)
    beql    t4, $at, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    lb      t5, 0x1E5C(t7)             # 00001E5C
    slti    $at, t5, 0x0002
    beql    $at, $zero, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    lh      t6, 0x00A4(s6)             # 000000A4
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    or      a0, s6, $zero              # a0 = 00000000
    bnel    t6, $at, lbl_800772AC
    lh      a0, 0x13CE(s5)             # 8011B99E
    jal     func_8002049C
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    bnel    v0, $zero, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    lh      a0, 0x13CE(s5)             # 8011B99E
lbl_800772AC:
    sh      $zero, 0x0254($sp)
    addiu   t9, a0, 0xFFFF             # t9 = FFFFFFFF
    sltiu   $at, t9, 0x000F
    beql    $at, $zero, lbl_800779C0
    lh      v0, 0x13D2(s5)             # 8011B9A2
    sll     t9, t9,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t9
    lw      t9, -0x77FC($at)           # 80108804
    jr      t9
    nop
    lh      t8, 0x0030(s5)             # 8011A600
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sh      t7, 0x13CE(s5)             # 8011B99E
    sra     t4, t8,  1
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    sh      t4, 0x13D0(s5)             # 8011B9A0
    lh      a0, 0x13CE(s5)             # 8011B99E
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DE($at)           # 8011BF22
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lui     $at, 0x8012                # $at = 80120000
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
    b       lbl_80077E94
    sh      a1, -0x40E0($at)           # 8011BF20
    lui     v1, 0x8012                 # v1 = 80120000
    lh      v1, -0x40DE(v1)            # 8011BF22
    lui     $at, 0x8012                # $at = 80120000
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   v1, v1, 0xFFFF             # v1 = 8011FFFF
    sll     v1, v1, 16
    sra     v1, v1, 16
    bne     v1, $zero, lbl_80077350
    sh      v1, -0x40DE($at)           # 8011BF22
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sh      t5, 0x13CE(s5)             # 8011B99E
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    lh      a0, 0x13CE(s5)             # 8011B99E
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DE($at)           # 8011BF22
lbl_80077350:
    b       lbl_80077E94
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DE($at)           # 8011BF22
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lui     $at, 0x8012                # $at = 80120000
    sh      a1, -0x40E0($at)           # 8011BF20
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a0, $at, lbl_80077388
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    b       lbl_80077390
    sh      t6, 0x13CE(s5)             # 8011B99E
lbl_80077388:
    addiu   t9, $zero, 0x000C          # t9 = 0000000C
    sh      t9, 0x13CE(s5)             # 8011B99E
lbl_80077390:
    lh      a0, 0x13CE(s5)             # 8011B99E
    b       lbl_80077E94
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
    lui     v1, 0x8012                 # v1 = 80120000
    lh      v1, -0x40DE(v1)            # 8011BF22
    lui     $at, 0x8012                # $at = 80120000
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   v1, v1, 0xFFFF             # v1 = 8011FFFF
    sll     v1, v1, 16
    sra     v1, v1, 16
    bne     v1, $zero, lbl_800773F8
    sh      v1, -0x40DE($at)           # 8011BF22
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DE($at)           # 8011BF22
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     a0, $at, lbl_800773F0
    addiu   t4, $zero, 0x000D          # t4 = 0000000D
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    sh      t8, 0x13CE(s5)             # 8011B99E
    lui     s0, 0x8012                 # s0 = 80120000
    lh      a0, 0x13CE(s5)             # 8011B99E
    b       lbl_80077E94
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
lbl_800773F0:
    sh      t4, 0x13CE(s5)             # 8011B99E
    lh      a0, 0x13CE(s5)             # 8011B99E
lbl_800773F8:
    b       lbl_80077E94
    addiu   s0, s0, 0xBF28             # s0 = 80117E50
    lh      v0, 0x13D6(s5)             # 8011B9A6
    lui     v1, 0x8012                 # v1 = 80120000
    lh      v1, -0x40DE(v1)            # 8011BF22
    addiu   t7, v0, 0xFFE6             # t7 = FFFFFFE6
    lh      t6, 0x002E(s5)             # 8011A5FE
    div     $zero, t7, v1
    bne     v1, $zero, lbl_80077424
    nop
    break   # 0x01C00
lbl_80077424:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_8007743C
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_8007743C
    nop
    break   # 0x01800
lbl_8007743C:
    mflo    s3
    sll     s3, s3, 16
    sra     s3, s3, 16
    subu    t5, v0, s3
    slti    $at, t6, 0x00A1
    bne     $at, $zero, lbl_8007749C
    sh      t5, 0x13D6(s5)             # 8011B9A6
    lh      v0, 0x13DA(s5)             # 8011B9AA
    addiu   t9, v0, 0xFFCA             # t9 = FFFFFFCA
    div     $zero, t9, v1
    mflo    s3
    sll     s3, s3, 16
    bne     v1, $zero, lbl_80077478
    nop
    break   # 0x01C00
lbl_80077478:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_80077490
    lui     $at, 0x8000                # $at = 80000000
    bne     t9, $at, lbl_80077490
    nop
    break   # 0x01800
lbl_80077490:
    sra     s3, s3, 16
    b       lbl_800774DC
    addiu   v1, v1, 0xFFFF             # v1 = 8011FFFF
lbl_8007749C:
    lh      v0, 0x13DA(s5)             # 8011B9AA
    addiu   t8, v0, 0xFFD2             # t8 = FFFFFFD2
    div     $zero, t8, v1
    mflo    s3
    sll     s3, s3, 16
    sra     s3, s3, 16
    bne     v1, $zero, lbl_800774C0
    nop
    break   # 0x01C00
lbl_800774C0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_800774D8
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_800774D8
    nop
    break   # 0x01800
lbl_800774D8:
    addiu   v1, v1, 0xFFFF             # v1 = 8011FFFE
lbl_800774DC:
    subu    t4, v0, s3
    sll     v1, v1, 16
    sh      t4, 0x13DA(s5)             # 8011B9AA
    sra     v1, v1, 16
    lui     $at, 0x8012                # $at = 80120000
    bne     v1, $zero, lbl_80077550
    sh      v1, -0x40DE($at)           # 8011BF22
    addiu   t7, $zero, 0x001A          # t7 = 0000001A
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    sh      t7, 0x13D6(s5)             # 8011B9A6
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DE($at)           # 8011BF22
    lh      t5, 0x002E(s5)             # 8011A5FE
    addiu   t6, $zero, 0x0036          # t6 = 00000036
    addiu   t9, $zero, 0x002E          # t9 = 0000002E
    slti    $at, t5, 0x00A1
    bne     $at, $zero, lbl_8007752C
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    b       lbl_80077530
    sh      t6, 0x13DA(s5)             # 8011B9AA
lbl_8007752C:
    sh      t9, 0x13DA(s5)             # 8011B9AA
lbl_80077530:
    lh      t8, 0x13CE(s5)             # 8011B99E
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    bnel    t8, $at, lbl_80077550
    sh      t7, 0x13CE(s5)             # 8011B99E
    b       lbl_80077550
    sh      t4, 0x13CE(s5)             # 8011B99E
    sh      t7, 0x13CE(s5)             # 8011B99E
lbl_80077550:
    lh      a0, 0x13CE(s5)             # 8011B99E
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a0, $at, lbl_80077568
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    a0, $at, lbl_80077598
    slti    $at, a0, 0x0003
lbl_80077568:
    lh      t5, 0x002E(s5)             # 8011A5FE
    addiu   t6, $zero, 0x0036          # t6 = 00000036
    addiu   t9, $zero, 0x002E          # t9 = 0000002E
    slti    $at, t5, 0x00A1
    bnel    $at, $zero, lbl_80077590
    sh      t9, 0x13DA(s5)             # 8011B9AA
    sh      t6, 0x13DA(s5)             # 8011B9AA
    b       lbl_80077594
    lh      a0, 0x13CE(s5)             # 8011B99E
    sh      t9, 0x13DA(s5)             # 8011B9AA
lbl_80077590:
    lh      a0, 0x13CE(s5)             # 8011B99E
lbl_80077594:
    slti    $at, a0, 0x0003
lbl_80077598:
    bne     $at, $zero, lbl_80077724
    nop
    lw      t8, 0x6300(s0)             # 8011E150
    lui     a1, 0x8012                 # a1 = 80120000
    bne     t8, $zero, lbl_80077724
    nop
    lh      a1, -0x40E0(a1)            # 8011BF20
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, a1, 0xFFFF             # a1 = 8011FFFF
    sll     a1, a1, 16
    sra     a1, a1, 16
    bne     a1, $zero, lbl_80077724
    sh      a1, -0x40E0($at)           # 8011BF20
    lh      v0, 0x13D0(s5)             # 8011B9A0
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lui     $at, 0x8012                # $at = 80120000
    beq     v0, $zero, lbl_800775E8
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x13D0(s5)             # 8011B9A0
    lh      v0, 0x13D0(s5)             # 8011B9A0
lbl_800775E8:
    bne     v0, $zero, lbl_80077644
    sh      a1, -0x40E0($at)           # 8011BF20
    lui     s0, 0x800F                 # s0 = 800F0000
    addiu   s0, s0, 0x753C             # s0 = 800F753C
    lh      t5, 0x0000(s0)             # 800F753C
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sh      t7, 0x13CE(s5)             # 8011B99E
    beql    t5, $zero, lbl_80077634
    sh      $zero, 0x0000(s0)          # 800F753C
    sh      $zero, 0x0030(s5)          # 8011A600
    lh      t6, 0x0030(s5)             # 8011A600
    lw      t8, 0x0050($sp)
    addiu   t9, $zero, 0xFFFE          # t9 = FFFFFFFE
    subu    a1, t9, t6
    lw      t9, 0x1D58(t8)             # 00001D2A
    or      a0, s6, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    sh      $zero, 0x0000(s0)          # 800F753C
lbl_80077634:
    lui     s0, 0x8012                 # s0 = 80120000
    lh      a0, 0x13CE(s5)             # 8011B99E
    b       lbl_80077E94
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
lbl_80077644:
    slti    $at, v0, 0x003D
    bne     $at, $zero, lbl_8007769C
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
    lh      t4, 0x0008(s0)             # 8011BF30
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     s1, 0x8010                 # s1 = 80100000
    bne     t4, $at, lbl_80077724
    addiu   a3, s1, 0x43A0             # a3 = 801043A0
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    addiu   a0, $zero, 0x4804          # a0 = 00004804
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     s0, 0x8012                 # s0 = 80120000
    lh      a0, 0x13CE(s5)             # 8011B99E
    b       lbl_80077E94
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
lbl_8007769C:
    slti    $at, v0, 0x000B
    bne     $at, $zero, lbl_800776F4
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
    lh      t5, 0x0008(s0)             # 8011BF30
    lui     s1, 0x8010                 # s1 = 80100000
    addiu   a3, s1, 0x43A0             # a3 = 801043A0
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80077724
    lui     a1, 0x8010                 # a1 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)
    addiu   a0, $zero, 0x4819          # a0 = 00004819
    addiu   a1, a1, 0x4394             # a1 = 80104394
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     s0, 0x8012                 # s0 = 80120000
    lh      a0, 0x13CE(s5)             # 8011B99E
    b       lbl_80077E94
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
lbl_800776F4:
    lui     s1, 0x8010                 # s1 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, s1, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x481A          # a0 = 0000481A
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lh      a0, 0x13CE(s5)             # 8011B99E
lbl_80077724:
    lui     s0, 0x8012                 # s0 = 80120000
    b       lbl_80077E94
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
    lh      v0, 0x13D6(s5)             # 8011B9A6
    lui     v1, 0x8012                 # v1 = 80120000
    lh      v1, -0x40DE(v1)            # 8011BF22
    addiu   t4, v0, 0xFFE6             # t4 = FFFFFFE6
    lh      t5, 0x002E(s5)             # 8011A5FE
    div     $zero, t4, v1
    bne     v1, $zero, lbl_80077754
    nop
    break   # 0x01C00
lbl_80077754:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_8007776C
    lui     $at, 0x8000                # $at = 80000000
    bne     t4, $at, lbl_8007776C
    nop
    break   # 0x01800
lbl_8007776C:
    mflo    s3
    sll     s3, s3, 16
    sra     s3, s3, 16
    subu    t7, v0, s3
    slti    $at, t5, 0x00A1
    bne     $at, $zero, lbl_800777CC
    sh      t7, 0x13D6(s5)             # 8011B9A6
    lh      v0, 0x13DA(s5)             # 8011B9AA
    addiu   t6, v0, 0xFFCA             # t6 = FFFFFFCA
    div     $zero, t6, v1
    mflo    s3
    sll     s3, s3, 16
    bne     v1, $zero, lbl_800777A8
    nop
    break   # 0x01C00
lbl_800777A8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_800777C0
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_800777C0
    nop
    break   # 0x01800
lbl_800777C0:
    sra     s3, s3, 16
    b       lbl_8007780C
    addiu   v1, v1, 0xFFFF             # v1 = 8011FFFF
lbl_800777CC:
    lh      v0, 0x13DA(s5)             # 8011B9AA
    addiu   t8, v0, 0xFFD2             # t8 = FFFFFFD2
    div     $zero, t8, v1
    mflo    s3
    sll     s3, s3, 16
    sra     s3, s3, 16
    bne     v1, $zero, lbl_800777F0
    nop
    break   # 0x01C00
lbl_800777F0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_80077808
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_80077808
    nop
    break   # 0x01800
lbl_80077808:
    addiu   v1, v1, 0xFFFF             # v1 = 8011FFFE
lbl_8007780C:
    subu    t9, v0, s3
    sll     v1, v1, 16
    sh      t9, 0x13DA(s5)             # 8011B9AA
    sra     v1, v1, 16
    lui     $at, 0x8012                # $at = 80120000
    bne     v1, $zero, lbl_80077864
    sh      v1, -0x40DE($at)           # 8011BF22
    addiu   t4, $zero, 0x001A          # t4 = 0000001A
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    sh      t4, 0x13D6(s5)             # 8011B9A6
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DE($at)           # 8011BF22
    lh      t7, 0x002E(s5)             # 8011A5FE
    addiu   t5, $zero, 0x0036          # t5 = 00000036
    addiu   t6, $zero, 0x002E          # t6 = 0000002E
    slti    $at, t7, 0x00A1
    bne     $at, $zero, lbl_8007785C
    addiu   t8, $zero, 0x000E          # t8 = 0000000E
    b       lbl_80077860
    sh      t5, 0x13DA(s5)             # 8011B9AA
lbl_8007785C:
    sh      t6, 0x13DA(s5)             # 8011B9AA
lbl_80077860:
    sh      t8, 0x13CE(s5)             # 8011B99E
lbl_80077864:
    lh      a0, 0x13CE(s5)             # 8011B99E
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     a0, $at, lbl_800778A0
    lui     a1, 0x8012                 # a1 = 80120000
    lh      t9, 0x002E(s5)             # 8011A5FE
    addiu   t4, $zero, 0x0036          # t4 = 00000036
    addiu   t7, $zero, 0x002E          # t7 = 0000002E
    slti    $at, t9, 0x00A1
    bnel    $at, $zero, lbl_8007789C
    sh      t7, 0x13DA(s5)             # 8011B9AA
    sh      t4, 0x13DA(s5)             # 8011B9AA
    b       lbl_800778A0
    lh      a0, 0x13CE(s5)             # 8011B99E
    sh      t7, 0x13DA(s5)             # 8011B9AA
lbl_8007789C:
    lh      a0, 0x13CE(s5)             # 8011B99E
lbl_800778A0:
    slti    $at, a0, 0x0003
    bne     $at, $zero, lbl_80077940
    nop
    lh      a1, -0x40E0(a1)            # 8011BF20
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, a1, 0xFFFF             # a1 = 8011FFFF
    sll     a1, a1, 16
    sra     a1, a1, 16
    bne     a1, $zero, lbl_80077940
    sh      a1, -0x40E0($at)           # 8011BF20
    lh      t5, 0x13D0(s5)             # 8011B9A0
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lui     $at, 0x8012                # $at = 80120000
    addiu   t6, t5, 0x0001             # t6 = 00000037
    sh      t6, 0x13D0(s5)             # 8011B9A0
    sh      a1, -0x40E0($at)           # 8011BF20
    lh      t8, 0x13D0(s5)             # 8011B9A0
    addiu   $at, $zero, 0x0E0F         # $at = 00000E0F
    lui     s1, 0x8010                 # s1 = 80100000
    bne     t8, $at, lbl_80077918
    addiu   a3, s1, 0x43A0             # a3 = 801043A0
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    sh      t9, 0x13CE(s5)             # 8011B99E
    addiu   v1, $zero, 0x0028          # v1 = 00000028
    lh      a0, 0x13CE(s5)             # 8011B99E
    lui     $at, 0x8012                # $at = 80120000
    lui     s0, 0x8012                 # s0 = 80120000
    sh      v1, -0x40DE($at)           # 8011BF22
    b       lbl_80077E94
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
lbl_80077918:
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t4, 0x0014($sp)
    addiu   a0, $zero, 0x4819          # a0 = 00004819
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lh      a0, 0x13CE(s5)             # 8011B99E
lbl_80077940:
    lui     s0, 0x8012                 # s0 = 80120000
    b       lbl_80077E94
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
    lh      t7, 0x13D2(s5)             # 8011B9A2
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    beq     t7, $zero, lbl_800779A8
    addiu   t5, $zero, 0x008C          # t5 = 0000008C
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sh      t5, 0x13D8(s5)             # 8011B9A8
    sh      t6, 0x13DC(s5)             # 8011B9AC
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DA($at)           # 8011BF26
    lui     $at, 0x8012                # $at = 80120000
    sh      a0, -0x40DC($at)           # 8011BF24
    lh      t8, 0x13D2(s5)             # 8011B9A2
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    slti    $at, t8, 0x0007
    beql    $at, $zero, lbl_800779A0
    sh      t4, 0x13D2(s5)             # 8011B9A2
    b       lbl_800779A0
    sh      t9, 0x13D2(s5)             # 8011B9A2
    sh      t4, 0x13D2(s5)             # 8011B9A2
lbl_800779A0:
    b       lbl_800779AC
    sh      $zero, 0x13CE(s5)          # 8011B99E
lbl_800779A8:
    sh      $zero, 0x13CE(s5)          # 8011B99E
lbl_800779AC:
    lh      a0, 0x13CE(s5)             # 8011B99E
    lui     s0, 0x8012                 # s0 = 80120000
    b       lbl_80077E94
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
    lh      v0, 0x13D2(s5)             # 8011B9A2
lbl_800779C0:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x0254($sp)
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sltiu   $at, t5, 0x000A
    beq     $at, $zero, lbl_80077E8C
    sll     t5, t5,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t5
    lw      t5, -0x77C0($at)           # 80108840
    jr      t5
    nop
    addiu   t6, $zero, 0x008C          # t6 = 0000008C
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    sh      t6, 0x13D8(s5)             # 8011B9A8
    sh      t8, 0x13DC(s5)             # 8011B9AC
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DA($at)           # 8011BF26
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    lui     $at, 0x8012                # $at = 80120000
    sh      a0, -0x40DC($at)           # 8011BF24
    lh      t9, 0x13D2(s5)             # 8011B9A2
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    bne     t9, $at, lbl_80077A30
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    b       lbl_80077A34
    sh      t4, 0x13D2(s5)             # 8011B9A2
lbl_80077A30:
    sh      t7, 0x13D2(s5)             # 8011B9A2
lbl_80077A34:
    b       lbl_80077E8C
    lh      a0, 0x13CE(s5)             # 8011B99E
    lui     v1, 0x8012                 # v1 = 80120000
    lh      v1, -0x40DA(v1)            # 8011BF26
    lui     $at, 0x8012                # $at = 80120000
    addiu   v1, v1, 0xFFFF             # v1 = 8011FFFF
    sll     v1, v1, 16
    sra     v1, v1, 16
    bne     v1, $zero, lbl_80077E8C
    sh      v1, -0x40DA($at)           # 8011BF26
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DA($at)           # 8011BF26
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80077A80
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    b       lbl_80077E8C
    sh      t5, 0x13D2(s5)             # 8011B9A2
lbl_80077A80:
    b       lbl_80077E8C
    sh      t6, 0x13D2(s5)             # 8011B9A2
    lh      v0, 0x13D8(s5)             # 8011B9A8
    lui     v1, 0x8012                 # v1 = 80120000
    lh      v1, -0x40DA(v1)            # 8011BF26
    addiu   t8, v0, 0xFFE6             # t8 = FFFFFFE6
    lh      t4, 0x002E(s5)             # 8011A5FE
    div     $zero, t8, v1
    bne     v1, $zero, lbl_80077AAC
    nop
    break   # 0x01C00
lbl_80077AAC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_80077AC4
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_80077AC4
    nop
    break   # 0x01800
lbl_80077AC4:
    mflo    s3
    sll     s3, s3, 16
    sra     s3, s3, 16
    subu    t9, v0, s3
    slti    $at, t4, 0x00A1
    bne     $at, $zero, lbl_80077B24
    sh      t9, 0x13D8(s5)             # 8011B9A8
    lh      v0, 0x13DC(s5)             # 8011B9AC
    addiu   t7, v0, 0xFFCA             # t7 = FFFFFFCA
    div     $zero, t7, v1
    mflo    s3
    sll     s3, s3, 16
    bne     v1, $zero, lbl_80077B00
    nop
    break   # 0x01C00
lbl_80077B00:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_80077B18
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_80077B18
    nop
    break   # 0x01800
lbl_80077B18:
    sra     s3, s3, 16
    b       lbl_80077B64
    addiu   v1, v1, 0xFFFF             # v1 = 8011FFFF
lbl_80077B24:
    lh      v0, 0x13DC(s5)             # 8011B9AC
    addiu   t5, v0, 0xFFD2             # t5 = FFFFFFD2
    div     $zero, t5, v1
    mflo    s3
    sll     s3, s3, 16
    sra     s3, s3, 16
    bne     v1, $zero, lbl_80077B48
    nop
    break   # 0x01C00
lbl_80077B48:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_80077B60
    lui     $at, 0x8000                # $at = 80000000
    bne     t5, $at, lbl_80077B60
    nop
    break   # 0x01800
lbl_80077B60:
    addiu   v1, v1, 0xFFFF             # v1 = 8011FFFE
lbl_80077B64:
    subu    t6, v0, s3
    sll     v1, v1, 16
    sh      t6, 0x13DC(s5)             # 8011B9AC
    sra     v1, v1, 16
    lui     $at, 0x8012                # $at = 80120000
    bne     v1, $zero, lbl_80077BD8
    sh      v1, -0x40DA($at)           # 8011BF26
    addiu   t8, $zero, 0x001A          # t8 = 0000001A
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    sh      t8, 0x13D8(s5)             # 8011B9A8
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DA($at)           # 8011BF26
    lh      t9, 0x002E(s5)             # 8011A5FE
    addiu   t4, $zero, 0x0036          # t4 = 00000036
    addiu   t7, $zero, 0x002E          # t7 = 0000002E
    slti    $at, t9, 0x00A1
    bne     $at, $zero, lbl_80077BB4
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    b       lbl_80077BB8
    sh      t4, 0x13DC(s5)             # 8011B9AC
lbl_80077BB4:
    sh      t7, 0x13DC(s5)             # 8011B9AC
lbl_80077BB8:
    lh      t5, 0x13D2(s5)             # 8011B9A2
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    bnel    t5, $at, lbl_80077BD8
    sh      t8, 0x13D2(s5)             # 8011B9A2
    b       lbl_80077BD8
    sh      t6, 0x13D2(s5)             # 8011B9A2
    sh      t8, 0x13D2(s5)             # 8011B9A2
lbl_80077BD8:
    lh      v0, 0x13D2(s5)             # 8011B9A2
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80077BF4
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    v0, $at, lbl_80077C24
    slti    $at, v0, 0x0003
lbl_80077BF4:
    lh      t9, 0x002E(s5)             # 8011A5FE
    addiu   t4, $zero, 0x0036          # t4 = 00000036
    addiu   t7, $zero, 0x002E          # t7 = 0000002E
    slti    $at, t9, 0x00A1
    bnel    $at, $zero, lbl_80077C1C
    sh      t7, 0x13DC(s5)             # 8011B9AC
    sh      t4, 0x13DC(s5)             # 8011B9AC
    b       lbl_80077C20
    lh      v0, 0x13D2(s5)             # 8011B9A2
    sh      t7, 0x13DC(s5)             # 8011B9AC
lbl_80077C1C:
    lh      v0, 0x13D2(s5)             # 8011B9A2
lbl_80077C20:
    slti    $at, v0, 0x0003
lbl_80077C24:
    bne     $at, $zero, lbl_80077E60
    nop
    lh      a0, -0x40DC(a0)            # 8011BF24
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0xFFFF             # a0 = 8011FFFF
    sll     a0, a0, 16
    sra     a0, a0, 16
    bne     a0, $zero, lbl_80077E60
    sh      a0, -0x40DC($at)           # 8011BF24
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    lui     $at, 0x8012                # $at = 80120000
    sh      a0, -0x40DC($at)           # 8011BF24
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80077DDC
    lh      t4, 0x13D4(s5)             # 8011B9A4
    lh      t5, 0x13D4(s5)             # 8011B9A4
    or      a0, s6, $zero              # a0 = 00000000
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFD1
    sh      t6, 0x13D4(s5)             # 8011B9A4
    lh      v0, 0x13D4(s5)             # 8011B9A4
    bne     v0, $zero, lbl_80077D08
    slti    $at, v0, 0x003D
    jal     func_8002049C
    addiu   a1, $zero, 0x0037          # a1 = 00000037
    beq     v0, $zero, lbl_80077CB4
    addiu   v1, $zero, 0x0028          # v1 = 00000028
    lh      v0, 0x00A4(s6)             # 000000A4
    addiu   $at, $zero, 0x004F         # $at = 0000004F
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    beq     v0, $at, lbl_80077CF0
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     v0, $at, lbl_80077CF0
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_80077CF0
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     v0, $at, lbl_80077CF0
lbl_80077CB4:
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sh      t8, 0x13D2(s5)             # 8011B9A2
    sw      $zero, 0x0008(s5)          # 8011A5D8
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DA($at)           # 8011BF26
    or      a0, s6, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x71B0          # a1 = 000071B0
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    b       lbl_80077D00
    nop
lbl_80077CF0:
    addiu   v1, $zero, 0x0028          # v1 = 00000028
    sh      t9, 0x13D2(s5)             # 8011B9A2
    lui     $at, 0x8012                # $at = 80120000
    sh      v1, -0x40DA($at)           # 8011BF26
lbl_80077D00:
    b       lbl_80077E20
    lh      t7, 0x13D4(s5)             # 8011B9A4
lbl_80077D08:
    bne     $at, $zero, lbl_80077D54
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
    lh      t4, 0x0008(s0)             # 8011BF30
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     s1, 0x8010                 # s1 = 80100000
    bne     t4, $at, lbl_80077D4C
    addiu   a3, s1, 0x43A0             # a3 = 801043A0
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    addiu   a0, $zero, 0x4804          # a0 = 00004804
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
lbl_80077D4C:
    b       lbl_80077E20
    lh      t7, 0x13D4(s5)             # 8011B9A4
lbl_80077D54:
    slti    $at, v0, 0x000B
    bne     $at, $zero, lbl_80077DA4
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
    lh      t5, 0x0008(s0)             # 8011BF30
    lui     s1, 0x8010                 # s1 = 80100000
    addiu   a3, s1, 0x43A0             # a3 = 801043A0
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80077D9C
    addiu   a0, $zero, 0x4819          # a0 = 00004819
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
lbl_80077D9C:
    b       lbl_80077E20
    lh      t7, 0x13D4(s5)             # 8011B9A4
lbl_80077DA4:
    lui     s1, 0x8010                 # s1 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, s1, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x481A          # a0 = 0000481A
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_80077E20
    lh      t7, 0x13D4(s5)             # 8011B9A4
    lh      t4, 0x13D4(s5)             # 8011B9A4
lbl_80077DDC:
    lhu     t5, 0x13FC(s5)             # 8011B9CC
    addiu   t7, t4, 0x0001             # t7 = 00000001
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80077E1C
    sh      t7, 0x13D4(s5)             # 8011B9A4
    lh      t8, 0x13D4(s5)             # 8011B9A4
    addiu   $at, $zero, 0x00F0         # $at = 000000F0
    or      a0, s6, $zero              # a0 = 00000000
    bne     t8, $at, lbl_80077E1C
    addiu   a1, $zero, 0x6083          # a1 = 00006083
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lhu     t9, 0x13FC(s5)             # 8011B9CC
    sh      $zero, 0x13D2(s5)          # 8011B9A2
    andi    t4, t9, 0xFFFE             # t4 = 00000000
    sh      t4, 0x13FC(s5)             # 8011B9CC
lbl_80077E1C:
    lh      t7, 0x13D4(s5)             # 8011B9A4
lbl_80077E20:
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    lui     s1, 0x8010                 # s1 = 80100000
    div     $zero, t7, $at
    mfhi    t5
    addiu   s1, s1, 0x43A0             # s1 = 801043A0
    bne     t5, $zero, lbl_80077E60
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    addiu   a0, $zero, 0x4819          # a0 = 00004819
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a3, s1, $zero              # a3 = 801043A0
    jal     func_800C806C
    sw      s1, 0x0010($sp)
lbl_80077E60:
    b       lbl_80077E8C
    lh      a0, 0x13CE(s5)             # 8011B99E
    lui     v1, 0x8012                 # v1 = 80120000
    lh      v1, -0x40DA(v1)            # 8011BF26
    lui     $at, 0x8012                # $at = 80120000
    addiu   v1, v1, 0xFFFF             # v1 = 8011FFFF
    sll     v1, v1, 16
    sra     v1, v1, 16
    bne     v1, $zero, lbl_80077E8C
    sh      v1, -0x40DA($at)           # 8011BF26
    sh      $zero, 0x13D2(s5)          # 8011B9A2
lbl_80077E8C:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBF28             # s0 = 8011BF28
lbl_80077E94:
    beq     a0, $zero, lbl_80077EA4
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    a0, $at, lbl_80077EB4
    sh      $zero, 0x0006(s0)          # 8011BF2E
lbl_80077EA4:
    lh      t8, 0x13D2(s5)             # 8011B9A2
    beql    t8, $zero, lbl_800781BC
    lhu     t9, 0x0244(s7)             # 00000244
    sh      $zero, 0x0006(s0)          # 8011BF2E
lbl_80077EB4:
    lh      t0, 0x0006(s0)             # 8011BF2E
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sh      t9, 0x0004(s0)             # 8011BF2C
    or      s3, $zero, $zero           # s3 = 00000000
    sh      t0, 0x0002(s0)             # 8011BF2A
    beq     a0, $zero, lbl_80077EDC
    sh      t0, 0x0000(s0)             # 8011BF28
    lh      t4, 0x13D0(s5)             # 8011B9A0
    b       lbl_80077EE4
    sh      t4, 0x0008(s0)             # 8011BF30
lbl_80077EDC:
    lh      t7, 0x13D4(s5)             # 8011B9A4
    sh      t7, 0x0008(s0)             # 8011BF30
lbl_80077EE4:
    lh      v0, 0x0008(s0)             # 8011BF30
    lui     a1, 0x0200                 # a1 = 02000000
    addiu   s2, $zero, 0xFFFF          # s2 = FFFFFFFF
    slti    $at, v0, 0x003C
    bne     $at, $zero, lbl_80077F48
    addiu   a1, a1, 0x2000             # a1 = 02002000
    lh      t5, 0x0002(s0)             # 8011BF2A
lbl_80077F00:
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x0002(s0)             # 8011BF2A
    lh      v0, 0x0002(s0)             # 8011BF2A
    slti    $at, v0, 0x000A
    bnel    $at, $zero, lbl_80077F30
    lh      t7, 0x0008(s0)             # 8011BF30
    lh      t8, 0x0000(s0)             # 8011BF28
    addiu   t4, v0, 0xFFF6             # t4 = FFFFFFF6
    sh      t4, 0x0002(s0)             # 8011BF2A
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x0000(s0)             # 8011BF28
    lh      t7, 0x0008(s0)             # 8011BF30
lbl_80077F30:
    addiu   t5, t7, 0xFFC4             # t5 = FFFFFFC4
    sh      t5, 0x0008(s0)             # 8011BF30
    lh      v0, 0x0008(s0)             # 8011BF30
    slti    $at, v0, 0x003C
    beql    $at, $zero, lbl_80077F00
    lh      t5, 0x0002(s0)             # 8011BF2A
lbl_80077F48:
    slti    $at, v0, 0x000A
    bne     $at, $zero, lbl_80077F74
    addiu   a2, $zero, 0x0010          # a2 = 00000010
lbl_80077F54:
    addiu   t9, v0, 0xFFF6             # t9 = FFFFFFF6
    sh      t9, 0x0008(s0)             # 8011BF30
    lh      v0, 0x0008(s0)             # 8011BF30
    lh      t6, 0x0006(s0)             # 8011BF2E
    slti    $at, v0, 0x000A
    addiu   t8, t6, 0x0001             # t8 = 00000002
    beq     $at, $zero, lbl_80077F54
    sh      t8, 0x0006(s0)             # 8011BF2E
lbl_80077F74:
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    addiu   t4, s1, 0x0008             # t4 = 801043A8
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 801043A4
    sw      t7, 0x0000(s1)             # 801043A0
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   t5, s1, 0x0008             # t5 = 801043A8
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      s2, 0x0004(s1)             # 801043A4
    sw      t6, 0x0000(s1)             # 801043A0
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t8, s1, 0x0008             # t8 = 801043A8
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 801043A4
    sw      t9, 0x0000(s1)             # 801043A0
    lh      t4, 0x0254($sp)
    lw      a0, 0x02B0(s4)             # 000002B0
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sll     t7, t4,  1
    addu    t2, s5, t7
    lh      t0, 0x13DA(t2)             # 000013DA
    lh      t1, 0x13D6(t2)             # 000013D6
    addiu   t4, $zero, 0x0400          # t4 = 00000400
    addiu   t9, $zero, 0x0400          # t9 = 00000400
    addiu   t5, t0, 0x0002             # t5 = 00000002
    sw      t5, 0x0014($sp)
    sw      t9, 0x0020($sp)
    sw      t4, 0x0024($sp)
    sw      t2, 0x0054($sp)
    sw      t8, 0x001C($sp)
    sw      t6, 0x0018($sp)
    jal     func_8006F3A4
    sw      t1, 0x0010($sp)
    lw      t2, 0x0054($sp)
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s4)             # 000002B0
    lui     t5, 0xE700                 # t5 = E7000000
    sw      t5, 0x0000(v0)             # 00000000
    sw      $zero, 0x0004(v0)          # 00000004
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xFCFF                 # t8 = FCFF0000
    lui     t9, 0xFF2D                 # t9 = FF2D0000
    addiu   t6, s1, 0x0008             # t6 = 801043A8
    sw      t6, 0x02B0(s4)             # 000002B0
    ori     t9, t9, 0xFEFF             # t9 = FF2DFEFF
    ori     t8, t8, 0x97FF             # t8 = FCFF97FF
    sw      t8, 0x0000(s1)             # 801043A0
    sw      t9, 0x0004(s1)             # 801043A4
    lh      a0, 0x13CE(s5)             # 8011B99E
    beql    a0, $zero, lbl_800780B4
    lh      t4, 0x13D4(s5)             # 8011B9A4
    lh      t4, 0x13D0(s5)             # 8011B9A0
    slti    $at, t4, 0x000A
    beq     $at, $zero, lbl_80078090
    slti    $at, a0, 0x000B
    beq     $at, $zero, lbl_80078090
    lui     t5, 0xFA00                 # t5 = FA000000
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t6, 0xFF32                 # t6 = FF320000
    ori     t6, t6, 0x00FF             # t6 = FF3200FF
    addiu   t7, s1, 0x0008             # t7 = 801043A8
    sw      t7, 0x02B0(s4)             # 000002B0
    sw      t6, 0x0004(s1)             # 801043A4
    sw      t5, 0x0000(s1)             # 801043A0
    b       lbl_80078114
    nop
lbl_80078090:
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t8, s1, 0x0008             # t8 = 801043A8
    sw      t8, 0x02B0(s4)             # 000002B0
    sw      s2, 0x0004(s1)             # 801043A4
    sw      t9, 0x0000(s1)             # 801043A0
    b       lbl_80078114
    nop
    lh      t4, 0x13D4(s5)             # 8011B9A4
lbl_800780B4:
    slti    $at, t4, 0x000A
    beq     $at, $zero, lbl_800780F8
    lui     t4, 0xFA00                 # t4 = FA000000
    lh      t7, 0x13D2(s5)             # 8011B9A2
    lui     t6, 0xFA00                 # t6 = FA000000
    slti    $at, t7, 0x0006
    beql    $at, $zero, lbl_800780FC
    lw      s1, 0x02B0(s4)             # 000002B0
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0xFF32                 # t8 = FF320000
    ori     t8, t8, 0x00FF             # t8 = FF3200FF
    addiu   t5, s1, 0x0008             # t5 = 801043A8
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      t8, 0x0004(s1)             # 801043A4
    sw      t6, 0x0000(s1)             # 801043A0
    b       lbl_80078114
    nop
lbl_800780F8:
    lw      s1, 0x02B0(s4)             # 000002B0
lbl_800780FC:
    lui     t7, 0xFFFF                 # t7 = FFFF0000
    ori     t7, t7, 0x00FF             # t7 = FFFF00FF
    addiu   t9, s1, 0x0008             # t9 = 801043A8
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      t7, 0x0004(s1)             # 801043A4
    sw      t4, 0x0000(s1)             # 801043A0
lbl_80078114:
    lui     s1, 0x800F                 # s1 = 800F0000
    addiu   s1, s1, 0x75D8             # s1 = 800F75D8
lbl_8007811C:
    sll     v0, s3,  1
    addu    t5, s0, v0
    lh      t6, 0x0000(t5)             # 801043A8
    addu    t4, s1, v0
    lh      t7, 0x0000(t4)             # FA000000
    sll     t8, t6,  7
    lui     t6, 0x800F                 # t6 = 800F0000
    lh      t1, 0x13D6(t2)             # 000013D6
    addu    t6, t6, v0
    lh      t6, 0x75E4(t6)             # 800F75E4
    lh      t0, 0x13DA(t2)             # 000013DA
    lw      a0, 0x02B0(s4)             # 000002B0
    lui     s2, 0x8012                 # s2 = 80120000
    lw      s2, -0x4600(s2)            # 8011BA00
    lui     t9, 0x0200                 # t9 = 02000000
    addiu   t9, t9, 0x3040             # t9 = 02003040
    addu    t5, t7, t1
    sw      t5, 0x0010($sp)
    addu    a1, t8, t9
    sw      t6, 0x0018($sp)
    sw      t0, 0x0014($sp)
    lh      t8, 0x0F68(s2)             # 80120F68
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    sw      t8, 0x001C($sp)
    lh      v1, 0x0F6A(s2)             # 80120F6A
    sw      t2, 0x0054($sp)
    sll     v1, v1,  1
    andi    v1, v1, 0xFFFF             # v1 = 00000000
    sw      v1, 0x0020($sp)
    jal     func_8006F5D4
    sw      v1, 0x0024($sp)
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16
    sra     s3, s3, 16
    slti    $at, s3, 0x0005
    lw      t2, 0x0054($sp)
    bne     $at, $zero, lbl_8007811C
    sw      v0, 0x02B0(s4)             # 000002B0
    lhu     t9, 0x0244(s7)             # 00000244
lbl_800781BC:
    beql    t9, $zero, lbl_80078268
    lw      $ra, 0x004C($sp)
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t4, s1, 0x0008             # t4 = 800F75E0
    sw      t4, 0x02B0(s4)             # 000002B0
    sw      $zero, 0x0004(s1)          # 800F75DC
    sw      t7, 0x0000(s1)             # 800F75D8
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x7540             # t8 = 800F7540
    addiu   t5, s1, 0x0008             # t5 = 800F75E0
    sw      t5, 0x02B0(s4)             # 000002B0
    sw      t8, 0x0004(s1)             # 800F75DC
    sw      t6, 0x0000(s1)             # 800F75D8
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   t9, s1, 0x0008             # t9 = 800F75E0
    sw      t9, 0x02B0(s4)             # 000002B0
    sw      t4, 0x0000(s1)             # 800F75D8
    lhu     t7, 0x0244(s7)             # 00000244
    andi    t5, t7, 0x00FF             # t5 = 00000000
    sw      t5, 0x0004(s1)             # 800F75DC
    lw      s1, 0x02B0(s4)             # 000002B0
    lui     t8, 0x8010                 # t8 = 80100000
    lui     $at, 0xF600                # $at = F6000000
    addiu   t6, s1, 0x0008             # t6 = 800F75E0
    sw      t6, 0x02B0(s4)             # 000002B0
    lw      t8, -0x1B00(t8)            # 800FE500
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x1AFC(t6)            # 800FE504
    addiu   t9, t8, 0xFFFF             # t9 = 800FFFFF
    andi    t4, t9, 0x03FF             # t4 = 000003FF
    sll     t7, t4, 14
    addiu   t8, t6, 0xFFFF             # t8 = 800FFFFF
    andi    t9, t8, 0x03FF             # t9 = 000003FF
    sll     t4, t9,  2
    or      t5, t7, $at                # t5 = F7000000
    or      t7, t5, t4                 # t7 = F70003FF
    sw      t7, 0x0000(s1)             # 800F75D8
    sw      $zero, 0x0004(s1)          # 800F75DC
    lw      $ra, 0x004C($sp)
lbl_80078268:
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    lw      s2, 0x0034($sp)
    lw      s3, 0x0038($sp)
    lw      s4, 0x003C($sp)
    lw      s5, 0x0040($sp)
    lw      s6, 0x0044($sp)
    lw      s7, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0270           # $sp += 0x270


func_80078290:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0040($sp)
    lw      t6, 0x0040($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     t9, 0x0001                 # t9 = 00010000
    lw      t7, 0x1C44(t6)             # 00001C44
    addu    t8, t6, $at
    sw      t8, 0x0020($sp)
    addu    t9, t9, t6
    sw      t7, 0x0034($sp)
    lhu     t9, 0x0934(t9)             # 00010934
    bne     t9, $zero, lbl_8007835C
    lui     t3, 0x0001                 # t3 = 00010000
    addu    t3, t3, t6
    lhu     t3, 0x0936(t3)             # 00010936
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    bne     t3, $zero, lbl_8007835C
    nop
    lhu     t4, 0x1404(t0)             # 8011B9D4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t7, 0x0040($sp)
    beql    t4, $at, lbl_8007831C
    lui     v0, 0x0001                 # v0 = 00010000
    lw      v0, 0x1360(t0)             # 8011B930
    slti    $at, v0, 0x0004
    bnel    $at, $zero, lbl_8007831C
    lui     v0, 0x0001                 # v0 = 00010000
    lh      t5, 0x00A4(t6)             # 000000A4
    addiu   $at, $zero, 0x0063         # $at = 00000063
    bne     t5, $at, lbl_8007835C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_8007835C
    lui     v0, 0x0001                 # v0 = 00010000
lbl_8007831C:
    addu    v0, v0, t7
    lbu     v0, 0x03DC(v0)             # 000103DC
    lw      t9, 0x0020($sp)
    beql    v0, $zero, lbl_8007834C
    lhu     t3, 0x0A20(t9)             # 00010A20
    beq     v0, $zero, lbl_8007835C
    nop
    lh      t8, 0x00A4(t7)             # 000000A4
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    bne     t8, $at, lbl_8007835C
    nop
    lhu     t3, 0x0A20(t9)             # 00010A20
lbl_8007834C:
    bne     t3, $zero, lbl_8007835C
    nop
    jal     func_8006E340
    lw      a0, 0x0040($sp)
lbl_8007835C:
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lhu     v0, 0x13E8(t0)             # 8011B9B8
    slti    $at, v0, 0x0033
    bne     $at, $zero, lbl_80078384
    addiu   $at, $zero, 0x0034         # $at = 00000034
    beq     v0, $at, lbl_8007853C
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    b       lbl_8007855C
    lw      t6, 0x0040($sp)
lbl_80078384:
    slti    $at, v0, 0x000E
    bne     $at, $zero, lbl_800783A4
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    addiu   $at, $zero, 0x0032         # $at = 00000032
    beq     v0, $at, lbl_8007842C
    lw      a0, 0x0040($sp)
    b       lbl_8007855C
    lw      t6, 0x0040($sp)
lbl_800783A4:
    sltiu   $at, t4, 0x000D
    beq     $at, $zero, lbl_80078558
    sll     t4, t4,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t4
    lw      t4, -0x7798($at)           # 80108868
    jr      t4
    nop
    lhu     t6, 0x13EC(t0)             # 8011B9BC
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    lw      a0, 0x0040($sp)
    sll     t5, t6,  5
    subu    a1, v1, t5
    sll     a1, a1, 16
    sra     a1, a1, 16
    bgez    a1, lbl_800783EC
    nop
    or      a1, $zero, $zero           # a1 = 00000000
lbl_800783EC:
    jal     func_8006DB20
    sh      a1, 0x0032($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lhu     t7, 0x13EC(t0)             # 8011B9BC
    lh      a1, 0x0032($sp)
    addiu   t8, t7, 0x0001             # t8 = 00000001
    bne     a1, $zero, lbl_80078414
    sh      t8, 0x13EC(t0)             # 8011B9BC
    sh      $zero, 0x13E8(t0)          # 8011B9B8
lbl_80078414:
    lw      t9, 0x0040($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    t3, t9, $at
    b       lbl_8007856C
    sw      t3, 0x0024($sp)
lbl_8007842C:
    lhu     t4, 0x13EC(t0)             # 8011B9BC
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    sll     t6, t4,  5
    subu    a1, v1, t6
    sll     a1, a1, 16
    sra     a1, a1, 16
    bgezl   a1, lbl_80078454
    subu    v0, v1, a1
    or      a1, $zero, $zero           # a1 = 00000000
    subu    v0, v1, a1
lbl_80078454:
    sll     t5, v0, 16
    sra     t7, t5, 16
    sll     a2, v0, 16
    slti    $at, t7, 0x00FF
    bne     $at, $zero, lbl_80078474
    sra     a2, a2, 16
    sll     a2, v1, 16
    sra     a2, a2, 16
lbl_80078474:
    sll     a1, a2, 16
    sra     a1, a1, 16
    jal     func_8006D914
    sh      a2, 0x0030($sp)
    lw      v0, 0x0040($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v0, v0, $at
    lhu     t8, 0x0250(v0)             # 00000250
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    beq     v1, t8, lbl_800784B0
    lh      a2, 0x0030($sp)
    sh      a2, 0x0250(v0)             # 00000250
lbl_800784B0:
    lhu     t9, 0x0252(v0)             # 00000252
    beql    v1, t9, lbl_800784C4
    lw      t3, 0x0040($sp)
    sh      a2, 0x0252(v0)             # 00000252
    lw      t3, 0x0040($sp)
lbl_800784C4:
    lh      t4, 0x00A4(t3)             # 000000A4
    addiu   t6, t4, 0xFFAF             # t6 = FFFFFFAF
    sltiu   $at, t6, 0x0014
    beq     $at, $zero, lbl_80078510
    sll     t6, t6,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t6
    lw      t6, -0x7764($at)           # 8010889C
    jr      t6
    nop
    lhu     t5, 0x0254(v0)             # 00000254
    addiu   t7, $zero, 0x00AA          # t7 = 000000AA
    slti    $at, t5, 0x00AA
    beq     $at, $zero, lbl_80078508
    nop
    b       lbl_80078520
    sh      a2, 0x0254(v0)             # 00000254
lbl_80078508:
    b       lbl_80078520
    sh      t7, 0x0254(v0)             # 00000254
lbl_80078510:
    lhu     t8, 0x0254(v0)             # 00000254
    beql    v1, t8, lbl_80078524
    lhu     t9, 0x13EC(t0)             # 8011B9BC
    sh      a2, 0x0254(v0)             # 00000254
lbl_80078520:
    lhu     t9, 0x13EC(t0)             # 8011B9BC
lbl_80078524:
    addiu   t3, t9, 0x0001             # t3 = 00000001
    bne     a2, v1, lbl_80078534
    sh      t3, 0x13EC(t0)             # 8011B9BC
    sh      $zero, 0x13E8(t0)          # 8011B9B8
lbl_80078534:
    b       lbl_8007856C
    sw      v0, 0x0024($sp)
lbl_8007853C:
    sh      t4, 0x13E8(t0)             # 8011B9B8
    lw      a0, 0x0040($sp)
    jal     func_8006DB20
    or      a1, $zero, $zero           # a1 = 00000000
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    sh      $zero, 0x13E8(t0)          # 8011B9B8
lbl_80078558:
    lw      t6, 0x0040($sp)
lbl_8007855C:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    t5, t6, $at
    sw      t5, 0x0024($sp)
lbl_8007856C:
    jal     func_8006D5B4
    lw      a0, 0x0040($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lh      v1, 0x1424(t0)             # 8011B9F4
    beq     v1, $zero, lbl_800785FC
    nop
    lh      t8, 0x0030(t0)             # 8011A600
    addiu   t7, v1, 0xFFFC             # t7 = FFFFFFFC
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   t9, t8, 0x0004             # t9 = 00000004
    sh      t9, 0x0030(t0)             # 8011A600
    lh      v0, 0x0030(t0)             # 8011A600
    sh      t7, 0x1424(t0)             # 8011B9F4
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t3, v0, 0x000F             # t3 = 00000000
    slti    $at, t3, 0x0004
    beq     $at, $zero, lbl_800785E4
    addiu   a0, $zero, 0x480B          # a0 = 0000480B
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t4, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lh      v0, 0x0030(t0)             # 8011A600
lbl_800785E4:
    lh      v1, 0x002E(t0)             # 8011A5FE
    slt     $at, v0, v1
    bne     $at, $zero, lbl_800785FC
    nop
    sh      v1, 0x0030(t0)             # 8011A600
    sh      $zero, 0x1424(t0)          # 8011B9F4
lbl_800785FC:
    jal     func_80065A14
    lw      a0, 0x0040($sp)
    jal     func_80079DD0
    lw      a0, 0x0040($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0x7538             # v1 = 800F7538
    sh      v0, 0x0000(v1)             # 800F7538
    lh      t6, 0x0000(v1)             # 800F7538
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t6, $at, lbl_8007865C
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lui     t7, 0x8010                 # t7 = 80100000
    lhu     t7, -0x738C(t7)            # 800F8C74
    lhu     t5, 0x0070(t0)             # 8011A640
    lui     t9, 0x8010                 # t9 = 80100000
    lbu     t9, -0x733E(t9)            # 800F8CC2
    and     t8, t5, t7
    addiu   $at, $zero, 0x0002         # $at = 00000002
    srav    t3, t8, t9
    bne     t3, $at, lbl_800786B4
    nop
    b       lbl_800786B4
    sh      $zero, 0x0000(v1)          # 800F7538
lbl_8007865C:
    jal     func_80079DD0
    lw      a0, 0x0040($sp)
    slti    $at, v0, 0x0002
    bne     $at, $zero, lbl_800786B4
    nop
    jal     func_80079DD0
    lw      a0, 0x0040($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    slti    $at, v0, 0x0005
    beq     $at, $zero, lbl_800786B4
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lui     t6, 0x8010                 # t6 = 80100000
    lhu     t6, -0x738C(t6)            # 800F8C74
    lhu     t4, 0x0070(t0)             # 8011A640
    lui     t7, 0x8010                 # t7 = 80100000
    lbu     t7, -0x733E(t7)            # 800F8CC2
    and     t5, t4, t6
    addiu   $at, $zero, 0x0003         # $at = 00000003
    srav    t8, t5, t7
    bne     t8, $at, lbl_800786B4
    lui     $at, 0x800F                # $at = 800F0000
    sh      $zero, 0x7538($at)         # 800F7538
lbl_800786B4:
    jal     func_800648AC
    lw      a0, 0x0040($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lh      t9, 0x13CE(t0)             # 8011B99E
    lw      t1, 0x0020($sp)
    slti    $at, t9, 0x0003
    bnel    $at, $zero, lbl_80078744
    lh      v0, 0x13CC(t0)             # 8011B99C
    lhu     t3, 0x0934(t1)             # 00000934
    bnel    t3, $zero, lbl_80078744
    lh      v0, 0x13CC(t0)             # 8011B99C
    lhu     t4, 0x0936(t1)             # 00000936
    lw      t6, 0x0040($sp)
    lui     t5, 0x0001                 # t5 = 00010000
    bne     t4, $zero, lbl_80078740
    addu    t5, t5, t6
    lbu     t5, 0x03DC(t5)             # 000103DC
    lw      t7, 0x0034($sp)
    bnel    t5, $zero, lbl_80078744
    lh      v0, 0x13CC(t0)             # 8011B99C
    lw      t8, 0x0670(t7)             # 00000670
    sll     t9, t8,  7
    bltzl   t9, lbl_80078744
    lh      v0, 0x13CC(t0)             # 8011B99C
    lb      t3, 0x1E15(t1)             # 00001E15
    bnel    t3, $zero, lbl_80078744
    lh      v0, 0x13CC(t0)             # 8011B99C
    lbu     t4, 0x241B(t1)             # 0000241B
    bnel    t4, $zero, lbl_80078744
    lh      v0, 0x13CC(t0)             # 8011B99C
    jal     func_8009CB08
    or      a0, t6, $zero              # a0 = 00000000
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
lbl_80078740:
    lh      v0, 0x13CC(t0)             # 8011B99C
lbl_80078744:
    lw      t1, 0x0020($sp)
    beql    v0, $zero, lbl_800788A0
    lw      a3, 0x0024($sp)
    blez    v0, lbl_800787E4
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t5, 0x00A0(t0)             # 8011A670
    lw      t7, -0x7370(t7)            # 800F8C90
    lui     t9, 0x8010                 # t9 = 80100000
    lbu     t9, -0x7338(t9)            # 800F8CC8
    and     t8, t5, t7
    lui     a0, 0x8010                 # a0 = 80100000
    srav    t3, t8, t9
    sll     t4, t3,  1
    addu    a0, a0, t4
    lhu     a0, -0x7314(a0)            # 800F8CEC
    lh      v1, 0x0034(t0)             # 8011A604
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    slt     $at, v1, a0
    beq     $at, $zero, lbl_800787D8
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t5, v1, 0x0001             # t5 = 00000001
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    sh      t6, 0x13CC(t0)             # 8011B99C
    sh      t5, 0x0034(t0)             # 8011A604
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    addiu   a0, $zero, 0x482F          # a0 = 0000482F
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    b       lbl_8007889C
    lw      t1, 0x0020($sp)
lbl_800787D8:
    sh      a0, 0x0034(t0)             # 8011A604
    b       lbl_8007889C
    sh      $zero, 0x13CC(t0)          # 8011B99C
lbl_800787E4:
    lh      v1, 0x0034(t0)             # 8011A604
    slti    $at, v0, 0xFFCF
    beql    v1, $zero, lbl_8007889C
    sh      $zero, 0x13CC(t0)          # 8011B99C
    beq     $at, $zero, lbl_80078850
    addiu   t6, v0, 0x0001             # t6 = 00000001
    addiu   t9, v1, 0xFFF6             # t9 = FFFFFFF6
    sh      t9, 0x0034(t0)             # 8011A604
    lh      t3, 0x0034(t0)             # 8011A604
    addiu   t8, v0, 0x000A             # t8 = 0000000A
    sh      t8, 0x13CC(t0)             # 8011B99C
    bgez    t3, lbl_8007881C
    lui     a3, 0x8010                 # a3 = 80100000
    sh      $zero, 0x0034(t0)          # 8011A604
lbl_8007881C:
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t4, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x482F          # a0 = 0000482F
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     t0, 0x8012                 # t0 = 80120000
    b       lbl_80078890
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
lbl_80078850:
    lui     t7, 0x8010                 # t7 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t5, v1, 0xFFFF             # t5 = FFFFFFFF
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    addiu   a3, t7, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    sh      t6, 0x13CC(t0)             # 8011B99C
    sh      t5, 0x0034(t0)             # 8011A604
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t8, 0x0014($sp)
    addiu   a0, $zero, 0x482F          # a0 = 0000482F
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
lbl_80078890:
    b       lbl_8007889C
    lw      t1, 0x0020($sp)
    sh      $zero, 0x13CC(t0)          # 8011B99C
lbl_8007889C:
    lw      a3, 0x0024($sp)
lbl_800788A0:
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      v0, 0x01EC(a3)             # 000001EC
    lui     t9, 0x8012                 # t9 = 80120000
    beq     v0, t2, lbl_800788E0
    nop
    beq     v0, $at, lbl_80078944
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_800789D4
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80078A38
    lui     t6, 0x8012                 # t6 = 80120000
    b       lbl_80078AC4
    lwc1    $f0, 0x01F4(a3)            # 000001F4
lbl_800788E0:
    lw      t9, -0x4600(t9)            # 8011BA00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7714($at)          # 801088EC
    lh      t3, 0x0D9E(t9)             # 80120D9E
    lwc1    $f16, 0x01F4(a3)           # 000001F4
    lui     $at, 0x8011                # $at = 80110000
    mtc1    t3, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    div.s   $f10, $f4, $f8
    add.s   $f18, $f16, $f10
    swc1    $f18, 0x01F4(a3)           # 000001F4
    lwc1    $f6, -0x7710($at)          # 801088F0
    lwc1    $f0, 0x01F4(a3)            # 000001F4
    lui     $at, 0x8011                # $at = 80110000
    c.le.s  $f6, $f0
    nop
    bc1fl   lbl_80078AC8
    trunc.w.s $f18, $f0
    lwc1    $f4, -0x770C($at)          # 801088F4
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sh      t4, 0x01EC(a3)             # 000001EC
    swc1    $f4, 0x01F4(a3)            # 000001F4
    b       lbl_80078AC4
    lwc1    $f0, 0x01F4(a3)            # 000001F4
lbl_80078944:
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x7708($at)          # 801088F8
    lh      t5, 0x0D9E(t6)             # 80120D9E
    lwc1    $f6, 0x01F4(a3)            # 000001F4
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    t5, $f16                   # $f16 = 0.00
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    or      a0, a3, $zero              # a0 = 00000000
    cvt.s.w $f10, $f16
    div.s   $f18, $f8, $f10
    add.s   $f4, $f6, $f18
    swc1    $f4, 0x01F4(a3)            # 000001F4
    lwc1    $f0, 0x01F4(a3)            # 000001F4
    c.le.s  $f2, $f0
    nop
    bc1fl   lbl_80078AC8
    trunc.w.s $f18, $f0
    lhu     t7, 0x01F0(a3)             # 000001F0
    swc1    $f2, 0x01F4(a3)            # 000001F4
    sh      $zero, 0x01EC(a3)          # 000001EC
    andi    a1, t7, 0xFFFF             # a1 = 00000000
    beq     a1, $at, lbl_800789B0
    sh      t7, 0x01EE(a3)             # 000001EE
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     a1, $at, lbl_800789B4
    nop
lbl_800789B0:
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
lbl_800789B4:
    jal     func_80071D24
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t8, 0x0024($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lw      t1, 0x0020($sp)
    b       lbl_80078AC4
    lwc1    $f0, 0x01F4(t8)            # 000001F4
lbl_800789D4:
    lw      t9, -0x4600(t9)            # FFFFBA00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f16, -0x7704($at)         # 801088FC
    lh      t3, 0x0D9E(t9)             # 00000D9E
    lwc1    $f18, 0x01F4(a3)           # 000001F4
    lui     $at, 0x8011                # $at = 80110000
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    div.s   $f6, $f16, $f10
    add.s   $f4, $f18, $f6
    swc1    $f4, 0x01F4(a3)            # 000001F4
    lwc1    $f8, -0x7700($at)          # 80108900
    lwc1    $f0, 0x01F4(a3)            # 000001F4
    lui     $at, 0x8011                # $at = 80110000
    c.le.s  $f8, $f0
    nop
    bc1fl   lbl_80078AC8
    trunc.w.s $f18, $f0
    lwc1    $f16, -0x76FC($at)         # 80108904
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sh      t4, 0x01EC(a3)             # 000001EC
    swc1    $f16, 0x01F4(a3)           # 000001F4
    b       lbl_80078AC4
    lwc1    $f0, 0x01F4(a3)            # 000001F4
lbl_80078A38:
    lw      t6, -0x4600(t6)            # FFFFBA00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x76F8($at)         # 80108908
    lh      t5, 0x0D9E(t6)             # 00000D9E
    lwc1    $f8, 0x01F4(a3)            # 000001F4
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    t5, $f18                   # $f18 = 0.00
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    or      a0, a3, $zero              # a0 = 00000000
    cvt.s.w $f6, $f18
    div.s   $f4, $f10, $f6
    add.s   $f16, $f8, $f4
    swc1    $f16, 0x01F4(a3)           # 000001F4
    lwc1    $f0, 0x01F4(a3)            # 000001F4
    c.le.s  $f2, $f0
    nop
    bc1fl   lbl_80078AC8
    trunc.w.s $f18, $f0
    lhu     t7, 0x01F0(a3)             # 000001F0
    swc1    $f2, 0x01F4(a3)            # 000001F4
    sh      $zero, 0x01EC(a3)          # 000001EC
    andi    a1, t7, 0xFFFF             # a1 = 00000000
    beq     a1, $at, lbl_80078AA4
    sh      t7, 0x01EE(a3)             # 000001EE
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     a1, $at, lbl_80078AA8
    nop
lbl_80078AA4:
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
lbl_80078AA8:
    jal     func_80071D24
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t8, 0x0024($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lw      t1, 0x0020($sp)
    lwc1    $f0, 0x01F4(t8)            # 000001F4
lbl_80078AC4:
    trunc.w.s $f18, $f0
lbl_80078AC8:
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4600(t4)            # 8011BA00
    mfc1    t3, $f18
    nop
    sh      t3, 0x0DA2(t4)             # 80120DA2
    lhu     t6, 0x0934(t1)             # 00000934
    bnel    t6, $zero, lbl_80078B8C
    lh      v1, 0x13CE(t0)             # 8011B99E
    lhu     t5, 0x0936(t1)             # 00000936
    lw      t7, 0x0040($sp)
    lui     t8, 0x0001                 # t8 = 00010000
    bne     t5, $zero, lbl_80078B88
    addu    t8, t8, t7
    lbu     t8, 0x03DC(t8)             # 000103DC
    bnel    t8, $zero, lbl_80078B8C
    lh      v1, 0x13CE(t0)             # 8011B99E
    lb      t9, 0x1E15(t1)             # 00001E15
    bnel    t9, $zero, lbl_80078B8C
    lh      v1, 0x13CE(t0)             # 8011B99E
    lhu     t3, 0x0A20(t1)             # 00000A20
    bnel    t3, $zero, lbl_80078B8C
    lh      v1, 0x13CE(t0)             # 8011B99E
    lbu     t4, 0x241B(t1)             # 0000241B
    bnel    t4, $zero, lbl_80078B8C
    lh      v1, 0x13CE(t0)             # 8011B99E
    lbu     t6, 0x1D6C(t7)             # 00001D6C
    beql    t6, $zero, lbl_80078B50
    lbu     t5, 0x003A(t0)             # 8011A60A
    jal     func_8007943C
    or      a0, t7, $zero              # a0 = 00000000
    lui     t0, 0x8012                 # t0 = 80120000
    bne     v0, $zero, lbl_80078B88
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lbu     t5, 0x003A(t0)             # 8011A60A
lbl_80078B50:
    beq     t5, $zero, lbl_80078B78
    nop
    lb      t8, 0x0032(t0)             # 8011A602
    bne     t8, $zero, lbl_80078B78
    nop
    lbu     t9, 0x003C(t0)             # 8011A60C
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    sh      t4, 0x13F0(t0)             # 8011B9C0
    addiu   t3, t9, 0x0001             # t3 = 00000001
    sb      t3, 0x0032(t0)             # 8011A602
lbl_80078B78:
    jal     func_80072840
    lw      a0, 0x0040($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
lbl_80078B88:
    lh      v1, 0x13CE(t0)             # 8011B99E
lbl_80078B8C:
    lw      a3, 0x0024($sp)
    lw      t1, 0x0020($sp)
    bne     v1, $zero, lbl_80078BEC
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     v0, 0x800F                 # v0 = 800F0000
    lh      v0, 0x7538(v0)             # 800F7538
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    t2, v0, lbl_80078BC4
    lh      t6, 0x0030(t0)             # 8011A600
    beq     v0, $at, lbl_80078BC0
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80078C18
    lhu     t9, 0x1404(t0)             # 8011B9D4
lbl_80078BC0:
    lh      t6, 0x0030(t0)             # 8011A600
lbl_80078BC4:
    addiu   t5, $zero, 0x008C          # t5 = 0000008C
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    sra     t7, t6,  1
    beq     t7, $zero, lbl_80078C14
    lui     $at, 0x800F                # $at = 800F0000
    sh      t2, 0x13CE(t0)             # 8011B99E
    sh      t5, 0x13D6(t0)             # 8011B9A6
    sh      t8, 0x13DA(t0)             # 8011B9AA
    b       lbl_80078C14
    sh      t2, 0x753C($at)            # 800F753C
lbl_80078BEC:
    lui     v0, 0x800F                 # v0 = 800F0000
    lh      v0, 0x7538(v0)             # 800F7538
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $zero, lbl_80078C08
    slti    $at, v1, 0x0005
    bne     v0, $at, lbl_80078C14
    slti    $at, v1, 0x0005
lbl_80078C08:
    beql    $at, $zero, lbl_80078C18
    lhu     t9, 0x1404(t0)             # 8011B9D4
    sh      $zero, 0x13CE(t0)          # 8011B99E
lbl_80078C14:
    lhu     t9, 0x1404(t0)             # 8011B9D4
lbl_80078C18:
    lui     v1, 0x800F                 # v1 = 800F0000
    bnel    t2, t9, lbl_80078D2C
    lh      v0, 0x1422(t0)             # 8011B9F2
    lhu     t3, 0x1406(t0)             # 8011B9D6
    lhu     t4, 0x023C(a3)             # 0000023C
    lui     $at, 0x8012                # $at = 80120000
    addiu   v1, v1, 0x74E4             # v1 = 800F74E4
    addu    t6, t3, t4
    sh      t6, -0x462A($at)           # 8011B9D6
    sh      $zero, 0x023C(a3)          # 0000023C
    lh      v0, 0x0000(v1)             # 800F74E4
    bne     v0, $zero, lbl_80078C68
    nop
    lhu     t7, 0x1406(t0)             # 8011B9D6
    addiu   t5, v0, 0x0001             # t5 = 800F0001
    slti    $at, t7, 0x03E8
    bnel    $at, $zero, lbl_80078C8C
    lhu     t4, 0x1406(t0)             # 8011B9D6
    b       lbl_80078C88
    sh      t5, 0x0000(v1)             # 800F74E4
lbl_80078C68:
    bnel    t2, v0, lbl_80078C8C
    lhu     t4, 0x1406(t0)             # 8011B9D6
    lhu     t8, 0x1406(t0)             # 8011B9D6
    addiu   t9, v0, 0x0001             # t9 = 800F0001
    slti    $at, t8, 0x05DC
    bnel    $at, $zero, lbl_80078C8C
    lhu     t4, 0x1406(t0)             # 8011B9D6
    sh      t9, 0x0000(v1)             # 800F74E4
lbl_80078C88:
    lhu     t4, 0x1406(t0)             # 8011B9D6
lbl_80078C8C:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x74E8             # v0 = 800F74E8
    andi    v1, t4, 0xFFFF             # v1 = 00000000
    slti    $at, v1, 0x03E8
    sh      $zero, 0x0002(v0)          # 800F74EA
    sh      $zero, 0x0000(v0)          # 800F74E8
    sh      $zero, 0x0004(v0)          # 800F74EC
    bne     $at, $zero, lbl_80078CD0
    sh      t4, 0x0006(v0)             # 800F74EE
lbl_80078CB0:
    lhu     t6, 0x0000(v0)             # 800F74E8
    addiu   t5, v1, 0xFC18             # t5 = FFFFFC18
    andi    v1, t5, 0xFFFF             # v1 = 0000FC18
    slti    $at, v1, 0x03E8
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0000(v0)             # 800F74E8
    beq     $at, $zero, lbl_80078CB0
    sh      t5, 0x0006(v0)             # 800F74EE
lbl_80078CD0:
    slti    $at, v1, 0x0064
    bnel    $at, $zero, lbl_80078D00
    slti    $at, v1, 0x000A
lbl_80078CDC:
    lhu     t8, 0x0002(v0)             # 800F74EA
    addiu   t3, v1, 0xFF9C             # t3 = 0000FBB4
    andi    v1, t3, 0xFFFF             # v1 = 0000FBB4
    slti    $at, v1, 0x0064
    addiu   t9, t8, 0x0001             # t9 = 00000051
    sh      t9, 0x0002(v0)             # 800F74EA
    beq     $at, $zero, lbl_80078CDC
    sh      t3, 0x0006(v0)             # 800F74EE
    slti    $at, v1, 0x000A
lbl_80078D00:
    bnel    $at, $zero, lbl_80078D2C
    lh      v0, 0x1422(t0)             # 8011B9F2
lbl_80078D08:
    lhu     t4, 0x0004(v0)             # 800F74EC
    addiu   t7, v1, 0xFFF6             # t7 = 0000FBAA
    andi    v1, t7, 0xFFFF             # v1 = 0000FBAA
    slti    $at, v1, 0x000A
    addiu   t6, t4, 0x0001             # t6 = 00000001
    sh      t6, 0x0004(v0)             # 800F74EC
    beq     $at, $zero, lbl_80078D08
    sh      t7, 0x0006(v0)             # 800F74EE
    lh      v0, 0x1422(t0)             # 8011B9F2
lbl_80078D2C:
    lw      t5, 0x0040($sp)
    lui     t8, 0x0001                 # t8 = 00010000
    beq     v0, $zero, lbl_80078F64
    addu    t8, t8, t5
    lhu     t8, 0x04C8(t8)             # 000104C8
    addiu   $at, $zero, 0x0031         # $at = 00000031
    beql    t8, $at, lbl_80078D64
    lhu     t9, 0x0A26(t1)             # 00000A26
    bne     t2, v0, lbl_80078D60
    addiu   v1, $zero, 0x0004          # v1 = 00000004
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t5
    sh      v1, 0x04C6($at)            # 000104C6
lbl_80078D60:
    lhu     t9, 0x0A26(t1)             # 00000A26
lbl_80078D64:
    addiu   v1, $zero, 0x0004          # v1 = 00000004
    beql    t9, $zero, lbl_80078E64
    lbu     t8, 0x1CBF(t1)             # 00001CBF
    lh      t3, 0x1422(t0)             # 8011B9F2
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    beq     t3, $at, lbl_80078DD0
    addiu   t8, $zero, 0x0190          # t8 = 00000190
    lui     $at, 0x800F                # $at = 800F0000
    sb      $zero, 0x7634($at)         # 800F7634
    lhu     v0, 0x000C(t0)             # 8011A5DC
    slti    $at, v0, 0x4555
    bne     $at, $zero, lbl_80078DB0
    ori     $at, $zero, 0xC002         # $at = 0000C002
    slt     $at, v0, $at
    beq     $at, $zero, lbl_80078DB0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, 0x800F                # $at = 800F0000
    sb      t4, 0x7634($at)            # 800F7634
lbl_80078DB0:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x1650             # v0 = 800F1650
    lhu     t7, 0x0000(v0)             # 800F1650
    sh      t6, 0x1422(t0)             # 8011B9F2
    lui     $at, 0x800F                # $at = 800F0000
    sh      t7, 0x7638($at)            # 800F7638
    b       lbl_80078F64
    sh      t8, 0x0000(v0)             # 800F1650
lbl_80078DD0:
    lui     t5, 0x800F                 # t5 = 800F0000
    lbu     t5, 0x7634(t5)             # 800F7634
    bnel    t5, $zero, lbl_80078E28
    lhu     t4, 0x000C(t0)             # 8011A5DC
    lhu     v0, 0x000C(t0)             # 8011A5DC
    slti    $at, v0, 0x4555
    bne     $at, $zero, lbl_80078F64
    ori     $at, $zero, 0xC002         # $at = 0000C002
    slt     $at, v0, $at
    beq     $at, $zero, lbl_80078F64
    lui     v0, 0x800F                 # v0 = 800F0000
    sh      $zero, 0x1422(t0)          # 8011B9F2
    lui     t9, 0x800F                 # t9 = 800F0000
    lh      t9, 0x7638(t9)             # 800F7638
    lw      t3, 0x0040($sp)
    addiu   v0, v0, 0x1650             # v0 = 800F1650
    lui     $at, 0x0001                # $at = 00010000
    sh      t9, 0x0000(v0)             # 800F1650
    addu    $at, $at, t3
    b       lbl_80078F64
    sh      v1, 0x04C6($at)            # 000104C6
    lhu     t4, 0x000C(t0)             # 8011A5DC
lbl_80078E28:
    ori     $at, $zero, 0xC002         # $at = 0000C002
    lui     v0, 0x800F                 # v0 = 800F0000
    slt     $at, t4, $at
    bne     $at, $zero, lbl_80078F64
    addiu   v0, v0, 0x1650             # v0 = 800F1650
    sh      $zero, 0x1422(t0)          # 8011B9F2
    lui     t6, 0x800F                 # t6 = 800F0000
    lh      t6, 0x7638(t6)             # 800F7638
    lw      t7, 0x0040($sp)
    lui     $at, 0x0001                # $at = 00010000
    sh      t6, 0x0000(v0)             # 800F1650
    addu    $at, $at, t7
    b       lbl_80078F64
    sh      v1, 0x04C6($at)            # 000104C6
    lbu     t8, 0x1CBF(t1)             # 00001CBF
lbl_80078E64:
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    beql    t2, t8, lbl_80078F64
    sh      t7, 0x1422(t0)             # 8011B9F2
    lbu     t5, 0x026A(a3)             # 0000026A
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    t5, $at, lbl_80078F64
    sh      t7, 0x1422(t0)             # 8011B9F2
    lhu     v0, 0x000C(t0)             # 8011A5DC
    ori     t7, $zero, 0x8001          # t7 = 00008001
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    slti    $at, v0, 0x4555
    bne     $at, $zero, lbl_80078ED8
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    ori     $at, $zero, 0xC001         # $at = 0000C001
    slt     $at, v0, $at
    beq     $at, $zero, lbl_80078ED8
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    lw      t9, 0x0040($sp)
    lui     $at, 0x0001                # $at = 00010000
    sh      $zero, 0x1416(t0)          # 8011B9E6
    addu    $at, $at, t9
    sb      v1, 0x1E5E($at)            # 00011E5E
    lw      t6, 0x0040($sp)
    lui     $at, 0x0001                # $at = 00010000
    sb      t3, 0x141D(t0)             # 8011B9ED
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addu    $at, $at, t6
    b       lbl_80078F04
    sb      t4, 0x1DE9($at)            # 00011DE9
lbl_80078ED8:
    lw      t5, 0x0040($sp)
    lui     $at, 0x0001                # $at = 00010000
    sh      t7, 0x1416(t0)             # 8011B9E6
    addu    $at, $at, t5
    sb      t8, 0x1E5E($at)            # 00011E5E
    lw      t4, 0x0040($sp)
    lui     $at, 0x0001                # $at = 00010000
    sb      t9, 0x141D(t0)             # 8011B9ED
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addu    $at, $at, t4
    sb      t3, 0x1DE9($at)            # 00011DE9
lbl_80078F04:
    lw      t6, 0x0040($sp)
    addiu   $at, $zero, 0x005E         # $at = 0000005E
    addiu   v0, $zero, 0x000E          # v0 = 0000000E
    lh      t7, 0x00A4(t6)             # 800F00A4
    addiu   t8, $zero, 0xFFFE          # t8 = FFFFFFFE
    bne     t7, $at, lbl_80078F2C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t6
    sb      v0, 0x1E5E($at)            # 00011E5E
    sb      v0, 0x141D(t0)             # 8011B9ED
lbl_80078F2C:
    lw      t9, 0x0040($sp)
    lw      t5, 0x0000(t0)             # 8011A5D0
    lui     $at, 0x0001                # $at = 00010000
    sw      t8, 0x1364(t0)             # 8011B934
    addu    $at, $at, t9
    sh      t5, 0x1E1A($at)            # 00011E1A
    lw      t4, 0x0040($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    addu    $at, $at, t4
    sb      t3, 0x1E15($at)            # 00011E15
    b       lbl_80078F64
    sh      $zero, 0x1422(t0)          # 8011B9F2
    sh      t7, 0x1422(t0)             # 8011B9F2
lbl_80078F64:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop
    nop
    nop
    nop


func_80078F80:
# Pathway related
# A0 = Global Context
# A1 = s16 ?
# A2 = s16 ?
# V0 = ?
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    beq     a1, a2, lbl_80078FB8
    or      v1, $zero, $zero           # v1 = 00000000
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    lw      t6, 0x1E08(t6)             # 00011E08
    sll     t7, a1,  3
    b       lbl_80078FB8
    addu    v1, t6, t7
lbl_80078FB8:
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    nop


func_80078FC4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a2, 0x0028($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    sw      a3, 0x002C($sp)
    bne     a1, $zero, lbl_80078FF4
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f0                   # $f0 = -1.00
    b       lbl_800790A4
    lw      $ra, 0x0014($sp)
lbl_80078FF4:
    lw      v1, 0x0004(a1)             # 00000004
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t6, v1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t0, v1, $at
    sll     t1, a2,  2
    lui     $at, 0x8000                # $at = 80000000
    subu    t1, t1, a2
    addu    v0, t9, t0
    addu    v0, v0, $at
    sll     t1, t1,  1
    addu    v0, t1, v0
    lh      t2, 0x0000(v0)             # 00000000
    lh      t3, 0x0004(v0)             # 00000004
    lwc1    $f8, 0x0024(a0)            # 00000024
    mtc1    t2, $f4                    # $f4 = 0.00
    mtc1    t3, $f10                   # $f10 = 0.00
    lwc1    $f18, 0x002C(a0)           # 0000002C
    cvt.s.w $f6, $f4
    cvt.s.w $f16, $f10
    sub.s   $f12, $f6, $f8
    sub.s   $f14, $f16, $f18
    swc1    $f12, 0x001C($sp)
    jal     func_800CD76C
    swc1    $f14, 0x0018($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x76F0($at)          # 80108910
    lwc1    $f12, 0x001C($sp)
    lwc1    $f14, 0x0018($sp)
    mul.s   $f6, $f0, $f4
    lw      t6, 0x002C($sp)
    mul.s   $f10, $f12, $f12
    nop
    mul.s   $f16, $f14, $f14
    trunc.w.s $f8, $f6
    add.s   $f0, $f10, $f16
    mfc1    t5, $f8
    nop
    sh      t5, 0x0000(t6)             # 00000000
    lw      $ra, 0x0014($sp)
lbl_800790A4:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800790B0:
    beq     a0, $zero, lbl_8007913C
    lui     t9, 0x8012                 # t9 = 80120000
    lw      v1, 0x0004(a0)             # 00000004
    lbu     t2, 0x0000(a0)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, v1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v1, $at
    sll     t3, t2,  2
    subu    t3, t3, t2
    sll     t3, t3,  1
    lui     $at, 0x7FFF                # $at = 7FFF0000
    addu    t1, t9, t0
    addu    v0, t1, t3
    ori     $at, $at, 0xFFFA           # $at = 7FFFFFFA
    addu    v0, v0, $at
    lh      t4, 0x0000(v0)             # 00000000
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(a1)            # 00000000
    lh      t5, 0x0002(v0)             # 00000002
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(a1)           # 00000004
    lh      t6, 0x0004(v0)             # 00000004
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0008(a1)           # 00000008
lbl_8007913C:
    jr      $ra
    nop
    nop
    nop
    nop


func_80079150:
    sw      $zero, 0x0004(a0)          # 00000004
    sw      $zero, 0x0000(a0)          # 00000000
    jr      $ra
    nop


func_80079160:
    addiu   v1, $zero, 0x0010          # v1 = 00000010
    lhu     t6, 0x0000(a1)             # 00000000
    andi    t7, t6, 0x0010             # t7 = 00000000
    bnel    v1, t7, lbl_80079198
    lw      t0, 0x0000(a0)             # 00000000
    lhu     t8, 0x000C(a1)             # 0000000C
    addiu   $at, $zero, 0x0400         # $at = 00000400
    andi    t9, t8, 0x0400             # t9 = 00000000
    bnel    t9, $at, lbl_80079198
    lw      t0, 0x0000(a0)             # 00000000
    lw      v0, 0x0000(a0)             # 00000000
    sltiu   v0, v0, 0x0001
    sw      v0, 0x0000(a0)             # 00000000
    lw      t0, 0x0000(a0)             # 00000000
lbl_80079198:
    beql    t0, $zero, lbl_800791E8
    sw      $zero, 0x0004(a0)          # 00000004
    lhu     v0, 0x0000(a1)             # 00000000
    addiu   $at, $zero, 0x2000         # $at = 00002000
    andi    t1, v0, 0x2000             # t1 = 00000000
    bnel    t1, $at, lbl_800791F4
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t2, 0x000C(a1)             # 0000000C
    andi    t4, v0, 0x0010             # t4 = 00000000
    andi    t3, t2, 0x0010             # t3 = 00000000
    beql    v1, t3, lbl_800791E8
    sw      $zero, 0x0004(a0)          # 00000004
    bnel    v1, t4, lbl_800791F4
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t5, 0x0004(a0)             # 00000004
    addiu   t6, t5, 0x0001             # t6 = 00000001
    slti    $at, t6, 0x0009
    bne     $at, $zero, lbl_800791F0
    sw      t6, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(a0)          # 00000004
lbl_800791E8:
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800791F0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800791F4:
    jr      $ra
    nop
    nop
