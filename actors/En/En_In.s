.section .text
func_809C05A0:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a0, 0x0000($sp)
    lhu     t6, 0x0ED6(v0)             # 8011B4A6
    andi    t7, t6, 0x0010             # t7 = 00000000
    beql    t7, $zero, lbl_809C05E0
    lhu     t0, 0x0F0A(v0)             # 8011B4DA
    lhu     t8, 0x0F0A(v0)             # 8011B4DA
    andi    t9, t8, 0x0080             # t9 = 00000000
    beq     t9, $zero, lbl_809C05D4
    nop
    jr      $ra
    addiu   v0, $zero, 0x2046          # v0 = 00002046
lbl_809C05D4:
    jr      $ra
    addiu   v0, $zero, 0x2045          # v0 = 00002045
lbl_809C05DC:
    lhu     t0, 0x0F0A(v0)             # 00002F4F
lbl_809C05E0:
    addiu   v0, $zero, 0x203F          # v0 = 0000203F
    andi    t1, t0, 0x0010             # t1 = 00000000
    beq     t1, $zero, lbl_809C05F8
    nop
    jr      $ra
    addiu   v0, $zero, 0x2040          # v0 = 00002040
lbl_809C05F8:
    jr      $ra
    nop


func_809C0600:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lw      t6, 0x1C44(a0)             # 00001C44
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    jal     func_800597C0
    sw      t6, 0x001C($sp)
    beq     v0, $zero, lbl_809C0628
    andi    v1, v0, 0xFFFF             # v1 = 00000000
    beq     $zero, $zero, lbl_809C0748
    or      v0, v1, $zero              # v0 = 00000000
lbl_809C0628:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     a0, 0x0ED6(v1)             # 8011B4A6
    andi    t7, a0, 0x0100             # t7 = 00000000
    beql    t7, $zero, lbl_809C0660
    lw      t9, 0x0010(v1)             # 8011A5E0
    lw      t8, 0x0010(v1)             # 8011A5E0
    bne     t8, $zero, lbl_809C0654
    nop
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x205F          # v0 = 0000205F
lbl_809C0654:
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x2057          # v0 = 00002057
    lw      t9, 0x0010(v1)             # 8011A5E0
lbl_809C0660:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t9, $at, lbl_809C0678
    lhu     v0, 0x13FA(v1)             # 8011B9CA
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x204E          # v0 = 0000204E
    lhu     v0, 0x13FA(v1)             # 8011B9CA
lbl_809C0678:
    andi    t0, v0, 0x000F             # t0 = 0000000E
    addiu   t1, t0, 0xFFFF             # t1 = 0000000D
    sltiu   $at, t1, 0x0007
    beq     $at, $zero, lbl_809C072C
    sll     t1, t1,  2
    lui     $at, %hi(var_809C2F30)     # $at = 809C0000
    addu    $at, $at, t1
    lw      t1, %lo(var_809C2F30)($at)
    jr      t1
    nop
var_809C06A0:
    lw      t2, 0x001C($sp)
    andi    t5, a0, 0x0800             # t5 = 00000000
    lw      t3, 0x066C(t2)             # 0000066C
    sll     t4, t3,  8
    bltz    t4, lbl_809C06C0
    nop
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x2036          # v0 = 00002036
lbl_809C06C0:
    beq     t5, $zero, lbl_809C06E8
    nop
    lhu     t6, 0x0F0C(v1)             # 8011B4DC
    andi    t7, t6, 0x0004             # t7 = 00000000
    beq     t7, $zero, lbl_809C06E0
    nop
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x2036          # v0 = 00002036
lbl_809C06E0:
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x2038          # v0 = 00002038
lbl_809C06E8:
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x2037          # v0 = 00002037
var_809C06F0:
    andi    t8, v0, 0x0040             # t8 = 00000000
    bne     t8, $zero, lbl_809C0704
    andi    t9, v0, 0x0020             # t9 = 00000020
    beq     t9, $zero, lbl_809C070C
    nop
lbl_809C0704:
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x203E          # v0 = 0000203E
lbl_809C070C:
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x203D          # v0 = 0000203D
var_809C0714:
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x203A          # v0 = 0000203A
var_809C071C:
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x203C          # v0 = 0000203C
var_809C0724:
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x205B          # v0 = 0000205B
lbl_809C072C:
    lhu     t0, 0x0F0A(v1)             # 8011B4DA
    addiu   v0, $zero, 0x2030          # v0 = 00002030
    andi    t1, t0, 0x0400             # t1 = 00000000
    beq     t1, $zero, lbl_809C0748
    nop
    beq     $zero, $zero, lbl_809C0748
    addiu   v0, $zero, 0x2031          # v0 = 00002031
lbl_809C0748:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809C0758:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    jal     func_800597C0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_809C0784
    andi    v1, v0, 0xFFFF             # v1 = 00000000
    beq     $zero, $zero, lbl_809C07AC
    or      v0, v1, $zero              # v0 = 00000000
lbl_809C0784:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    beq     t6, $zero, lbl_809C07A4
    nop
    jal     func_809C05A0
    nop
    beq     $zero, $zero, lbl_809C07B0
    lw      $ra, 0x0014($sp)
lbl_809C07A4:
    jal     func_809C0600
    nop
lbl_809C07AC:
    lw      $ra, 0x0014($sp)
lbl_809C07B0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C07BC:
    sw      a0, 0x0000($sp)
    lhu     v0, 0x010E(a1)             # 0000010E
    addiu   $at, $zero, 0x203E         # $at = 0000203E
    or      v1, $zero, $zero           # v1 = 00000000
    beq     v0, $at, lbl_809C07F8
    addiu   $at, $zero, 0x203F         # $at = 0000203F
    beq     v0, $at, lbl_809C0800
    addiu   $at, $zero, 0x2045         # $at = 00002045
    bne     v0, $at, lbl_809C0820
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0F0A(v0)             # 8011B4DA
    ori     t7, t6, 0x0080             # t7 = 00000080
    beq     $zero, $zero, lbl_809C0820
    sh      t7, 0x0F0A(v0)             # 8011B4DA
lbl_809C07F8:
    beq     $zero, $zero, lbl_809C0820
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_809C0800:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0ED6(v0)             # 8011B4A6
    lhu     t0, 0x0F0A(v0)             # 8011B4DA
    ori     t9, t8, 0x0002             # t9 = 00000002
    ori     t1, t0, 0x0010             # t1 = 00000010
    sh      t9, 0x0ED6(v0)             # 8011B4A6
    sh      t1, 0x0F0A(v0)             # 8011B4DA
lbl_809C0820:
    sll     v0, v1, 16
    sra     v0, v0, 16
    jr      $ra
    nop


func_809C0830:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    lhu     v0, 0x010E(a2)             # 0000010E
    slti    $at, v0, 0x2039
    bne     $at, $zero, lbl_809C086C
    addiu   t7, v0, 0xDFD0             # t7 = FFFFDFD0
    addiu   $at, $zero, 0x205B         # $at = 0000205B
    beql    v0, $at, lbl_809C09F0
    lui     t7, 0x0001                 # t7 = 00010000
    beq     $zero, $zero, lbl_809C0A70
    lh      v0, 0x001A($sp)
lbl_809C086C:
    sltiu   $at, t7, 0x0009
    beq     $at, $zero, lbl_809C0A6C
    sll     t7, t7,  2
    lui     $at, %hi(var_809C2F4C)     # $at = 809C0000
    addu    $at, $at, t7
    lw      t7, %lo(var_809C2F4C)($at)
    jr      t7
    nop
var_809C088C:
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, a3
    lbu     t8, 0x04BD(t8)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t8, $at, lbl_809C08B4
    or      a0, a3, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x2032          # t9 = 00002032
    beq     $zero, $zero, lbl_809C08DC
    sh      t9, 0x010E(a2)             # 0000010E
lbl_809C08B4:
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lh      t0, 0x0034(v0)             # 8011A604
    addiu   t1, $zero, 0x2033          # t1 = 00002033
    addiu   t2, $zero, 0x2034          # t2 = 00002034
    slti    $at, t0, 0x000A
    beql    $at, $zero, lbl_809C08DC
    sh      t2, 0x010E(a2)             # 0000010E
    beq     $zero, $zero, lbl_809C08DC
    sh      t1, 0x010E(a2)             # 0000010E
    sh      t2, 0x010E(a2)             # 0000010E
lbl_809C08DC:
    jal     func_800DCE80
    lhu     a1, 0x010E(a2)             # 0000010E
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t3, 0x0F0A(v0)             # 8011B4DA
    ori     t4, t3, 0x0400             # t4 = 00000400
    beq     $zero, $zero, lbl_809C0A6C
    sh      t4, 0x0F0A(v0)             # 8011B4DA
var_809C08FC:
    lui     t5, 0x0001                 # t5 = 00010000
    addu    t5, t5, a3
    lbu     t5, 0x04BD(t5)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t5, $at, lbl_809C0934
    addiu   a0, $zero, 0xFFF6          # a0 = FFFFFFF6
    sw      a2, 0x0024($sp)
    jal     func_800721CC
    sw      a3, 0x0020($sp)
    lw      a2, 0x0024($sp)
    lw      a3, 0x0020($sp)
    addiu   t6, $zero, 0x205C          # t6 = 0000205C
    beq     $zero, $zero, lbl_809C093C
    sh      t6, 0x010E(a2)             # 0000010E
lbl_809C0934:
    addiu   t7, $zero, 0x2035          # t7 = 00002035
    sh      t7, 0x010E(a2)             # 0000010E
lbl_809C093C:
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800DCE80
    lhu     a1, 0x010E(a2)             # 0000010E
    beq     $zero, $zero, lbl_809C0A70
    lh      v0, 0x001A($sp)
var_809C0950:
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, a3
    lbu     t8, 0x04BD(t8)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t0, $zero, 0x201F          # t0 = 0000201F
    bne     t8, $at, lbl_809C0978
    or      a0, a3, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    beq     $zero, $zero, lbl_809C0A6C
    sw      t9, 0x0018($sp)
lbl_809C0978:
    sh      t0, 0x010E(a2)             # 0000010E
    jal     func_800DCE80
    andi    a1, t0, 0xFFFF             # a1 = 0000201F
    beq     $zero, $zero, lbl_809C0A70
    lh      v0, 0x001A($sp)
var_809C098C:
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, a3
    lbu     t1, 0x04BD(t1)             # 000104BD
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    bne     t1, $zero, lbl_809C09C4
    addiu   t4, $zero, 0x2039          # t4 = 00002039
    lh      t2, 0x0034(v0)             # 8011A604
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    slti    $at, t2, 0x0032
    bnel    $at, $zero, lbl_809C09C8
    sh      t4, 0x010E(a2)             # 0000010E
    beq     $zero, $zero, lbl_809C0A6C
    sw      t3, 0x0018($sp)
lbl_809C09C4:
    sh      t4, 0x010E(a2)             # 0000010E
lbl_809C09C8:
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800DCE80
    andi    a1, t4, 0xFFFF             # a1 = 00002039
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t5, 0x0F0C(v0)             # 8011B4DC
    ori     t6, t5, 0x0004             # t6 = 00000004
    beq     $zero, $zero, lbl_809C0A6C
    sh      t6, 0x0F0C(v0)             # 8011B4DC
    lui     t7, 0x0001                 # t7 = 00010000
lbl_809C09F0:
    addu    t7, t7, a3
    lbu     t7, 0x04BD(t7)             # 000104BD
    bne     t7, $zero, lbl_809C0A20
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lh      t8, 0x0034(v0)             # 8011A604
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    slti    $at, t8, 0x0032
    bnel    $at, $zero, lbl_809C0A24
    addiu   t0, $zero, 0x2039          # t0 = 00002039
    beq     $zero, $zero, lbl_809C0A6C
    sw      t9, 0x0018($sp)
lbl_809C0A20:
    addiu   t0, $zero, 0x2039          # t0 = 00002039
lbl_809C0A24:
    sh      t0, 0x010E(a2)             # 0000010E
    sw      a2, 0x0024($sp)
    andi    a1, t0, 0xFFFF             # a1 = 00002039
    jal     func_800DCE80
    or      a0, a3, $zero              # a0 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t1, 0x13FA(v0)             # 8011B9CA
    lw      a2, 0x0024($sp)
    lui     t7, %hi(func_809C1AC8)     # t7 = 809C0000
    andi    t3, t1, 0xFFF0             # t3 = 00000000
    andi    t5, t3, 0xFFDF             # t5 = 00000000
    sh      t3, 0x13FA(v0)             # 8011B9CA
    sh      t5, 0x13FA(v0)             # 8011B9CA
    andi    t6, t5, 0xFFBF             # t6 = 00000000
    sh      t6, 0x13FA(v0)             # 8011B9CA
    addiu   t7, t7, %lo(func_809C1AC8) # t7 = 809C1AC8
    sw      t7, 0x0180(a2)             # 00000180
lbl_809C0A6C:
    lh      v0, 0x001A($sp)
lbl_809C0A70:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809C0A80:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lhu     t6, 0x010E(a2)             # 0000010E
    addiu   $at, $zero, 0x2035         # $at = 00002035
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bne     t6, $at, lbl_809C0AD0
    addiu   a0, $zero, 0xFFF6          # a0 = FFFFFFF6
    sw      v1, 0x001C($sp)
    jal     func_800721CC
    sw      a2, 0x0024($sp)
    lw      a2, 0x0024($sp)
    addiu   t7, $zero, 0x205C          # t7 = 0000205C
    andi    a1, t7, 0xFFFF             # a1 = 0000205C
    sh      t7, 0x010E(a2)             # 0000010E
    jal     func_800DCE80
    lw      a0, 0x0020($sp)
    beq     $zero, $zero, lbl_809C0AD4
    lw      v1, 0x001C($sp)
lbl_809C0AD0:
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_809C0AD4:
    sll     v0, v1, 16
    sra     v0, v0, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809C0AEC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0020($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sh      v1, 0x001E($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    sltiu   $at, v0, 0x000A
    beq     $at, $zero, lbl_809C0BA0
    lh      v1, 0x001E($sp)
    sll     t6, v0,  2
    lui     $at, %hi(var_809C2F70)     # $at = 809C0000
    addu    $at, $at, t6
    lw      t6, %lo(var_809C2F70)($at)
    jr      t6
    nop
var_809C0B34:
    lw      a0, 0x0020($sp)
    jal     func_809C07BC
    lw      a1, 0x0024($sp)
    sll     v1, v0, 16
    beq     $zero, $zero, lbl_809C0BA0
    sra     v1, v1, 16
var_809C0B4C:
    lw      a0, 0x0020($sp)
    jal     func_800D6110
    sh      v1, 0x001E($sp)
    beq     v0, $zero, lbl_809C0BA0
    lh      v1, 0x001E($sp)
    lw      a0, 0x0020($sp)
    jal     func_809C0830
    lw      a1, 0x0024($sp)
    sll     v1, v0, 16
    beq     $zero, $zero, lbl_809C0BA0
    sra     v1, v1, 16
var_809C0B78:
    lw      a0, 0x0020($sp)
    jal     func_800D6110
    sh      v1, 0x001E($sp)
    beq     v0, $zero, lbl_809C0BA0
    lh      v1, 0x001E($sp)
    lw      a0, 0x0020($sp)
    jal     func_809C0A80
    lw      a1, 0x0024($sp)
    sll     v1, v0, 16
    sra     v1, v1, 16
lbl_809C0BA0:
    or      v0, v1, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809C0BB4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0144(a0)             # 00000144
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x03B4             # t6 = 060003B4
    beq     t6, v0, lbl_809C0BEC
    lw      v1, 0x1C44(a1)             # 00001C44
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x1BE0             # t7 = 06001BE0
    beq     t7, v0, lbl_809C0BEC
    lui     t8, 0x0601                 # t8 = 06010000
    addiu   t8, t8, 0x3D60             # t8 = 06013D60
    bne     t8, v0, lbl_809C0BF4
    or      a3, $zero, $zero           # a3 = 00000000
lbl_809C0BEC:
    beq     $zero, $zero, lbl_809C0BF4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_809C0BF4:
    lw      v0, 0x0180(a0)             # 00000180
    lui     t9, %hi(func_809C1B6C)     # t9 = 809C0000
    addiu   t9, t9, %lo(func_809C1B6C) # t9 = 809C1B6C
    bne     t9, v0, lbl_809C0C0C
    lui     t0, %hi(func_809C2634)     # t0 = 809C0000
    addiu   a3, $zero, 0x0004          # a3 = 00000004
lbl_809C0C0C:
    addiu   t0, t0, %lo(func_809C2634) # t0 = 809C2634
    bne     t0, v0, lbl_809C0C40
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t2, 0x00E0(a1)             # 000000E0
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    sw      t2, 0x0310(a0)             # 00000310
    lw      t1, 0x00E4(a1)             # 000000E4
    sw      t1, 0x0314(a0)             # 00000314
    lw      t2, 0x00E8(a1)             # 000000E8
    swc1    $f4, 0x030C(a0)            # 0000030C
    beq     $zero, $zero, lbl_809C0C64
    sw      t2, 0x0318(a0)             # 00000318
lbl_809C0C40:
    lw      t4, 0x0024(v1)             # 00000024
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f6                   # $f6 = 16.00
    sw      t4, 0x0310(a0)             # 00000310
    lw      t3, 0x0028(v1)             # 00000028
    sw      t3, 0x0314(a0)             # 00000314
    lw      t4, 0x002C(v1)             # 0000002C
    swc1    $f6, 0x030C(a0)            # 0000030C
    sw      t4, 0x0318(a0)             # 00000318
lbl_809C0C64:
    jal     func_80027854
    addiu   a1, a0, 0x02F8             # a1 = 000002F8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C0C7C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    lw      t7, 0x0020(s0)             # 00000020
    lh      t6, 0x0040(s0)             # 00000040
    lh      t8, 0x0002(t7)             # 00000002
    slt     $at, t6, t8
    beql    $at, $zero, lbl_809C0CC8
    lw      $ra, 0x001C($sp)
    lbu     t9, 0x0035(s0)             # 00000035
    or      a2, s0, $zero              # a2 = 00000000
    lui     a3, 0x3F80                 # a3 = 3F800000
    ori     t0, t9, 0x0003             # t0 = 00000003
    sb      t0, 0x0035(s0)             # 00000035
    jal     func_8008B778
    lw      a0, 0x0028($sp)
    lw      $ra, 0x001C($sp)
lbl_809C0CC8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809C0CD8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    lui     t7, %hi(var_809C2DD8)      # t7 = 809C0000
    addiu   t7, t7, %lo(var_809C2DD8)  # t7 = 809C2DD8
    sll     t6, a1,  4
    addu    v1, t6, t7
    lw      a0, 0x0000(v1)             # 00000000
    jal     func_8008A194
    sw      v1, 0x0028($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0028($sp)
    lw      a0, 0x0030($sp)
    cvt.s.w $f6, $f4
    lbu     t8, 0x0008(v1)             # 00000008
    lwc1    $f8, 0x000C(v1)            # 0000000C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    lw      a1, 0x0000(v1)             # 00000000
    swc1    $f6, 0x0010($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    sw      t8, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809C0D48:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t6, 0x001C(s0)             # 0000001C
    bne     v0, t6, lbl_809C0D88
    nop
    lh      t7, 0x00B8(s0)             # 000000B8
    lui     t8, 0x8012                 # t8 = 80120000
    bne     v0, t7, lbl_809C0D88
    nop
    lw      t8, -0x5A2C(t8)            # 8011A5D4
    beql    t8, $zero, lbl_809C0D94
    sh      v0, 0x01D6(s0)             # 000001D6
lbl_809C0D88:
    beq     $zero, $zero, lbl_809C0E08
    or      v0, $zero, $zero           # v0 = 00000000
    sh      v0, 0x01D6(s0)             # 000001D6
lbl_809C0D94:
    lbu     t9, 0x0196(s0)             # 00000196
    lh      t1, 0x01D6(s0)             # 000001D6
    lui     a0, %hi(var_809C2E78)      # a0 = 809C0000
    andi    t0, t9, 0xFFFE             # t0 = 00000000
    sll     t2, t1,  2
    sb      t0, 0x0196(s0)             # 00000196
    addu    a0, a0, t2
    jal     func_8008A194
    lw      a0, %lo(var_809C2E78)(a0)
    mtc1    v0, $f4                    # $f4 = 0.00
    lh      t3, 0x01D6(s0)             # 000001D6
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f6, $f4
    lui     a1, %hi(var_809C2E78)      # a1 = 809C0000
    sll     t4, t3,  2
    addu    a1, a1, t4
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    mfc1    a3, $f0
    sw      t5, 0x0014($sp)
    lw      a1, %lo(var_809C2E78)(a1)
    swc1    $f6, 0x0010($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lui     t6, %hi(func_809C1900)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809C1900) # t6 = 809C1900
    sw      t6, 0x0180(s0)             # 00000180
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809C0E08:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809C0E1C:
    addiu   a2, $zero, 0x0063          # a2 = 00000063
    lh      v0, 0x00A4(a1)             # 000000A4
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    bne     a2, v0, lbl_809C0E74
    addiu   v1, $zero, 0x0036          # v1 = 00000036
    lw      t6, 0x0004(a3)             # 8011A5D4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bne     a1, t6, lbl_809C0E74
    nop
    lw      t7, 0x0010(a3)             # 8011A5E0
    bne     t7, $zero, lbl_809C0E74
    nop
    lh      t8, 0x00B8(a0)             # 000000B8
    bne     a1, t8, lbl_809C0E74
    nop
    lhu     t9, 0x0ED6(a3)             # 8011B4A6
    andi    t0, t9, 0x0010             # t0 = 00000000
    bne     t0, $zero, lbl_809C0E74
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809C0E74:
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    bne     v1, v0, lbl_809C0EC4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      t1, 0x0004(a3)             # 8011A5D4
    bne     a1, t1, lbl_809C0EC4
    nop
    lw      t2, 0x0010(a3)             # 8011A5E0
    bne     t2, $zero, lbl_809C0EC4
    nop
    lh      t3, 0x00B8(a0)             # 000000B8
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t3, $at, lbl_809C0EC4
    nop
    lhu     t4, 0x0ED6(a3)             # 8011B4A6
    andi    t5, t4, 0x0010             # t5 = 00000000
    beq     t5, $zero, lbl_809C0EC4
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809C0EC4:
    bne     v1, v0, lbl_809C0F30
    nop
    lw      t6, 0x0004(a3)             # 8011A5D4
    bne     a1, t6, lbl_809C0F30
    nop
    lw      t7, 0x0010(a3)             # 8011A5E0
    bne     a1, t7, lbl_809C0F30
    nop
    lh      v1, 0x00B8(a0)             # 000000B8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v1, $at, lbl_809C0F10
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lhu     t8, 0x0ED6(a3)             # 8011B4A6
    andi    t9, t8, 0x0010             # t9 = 00000000
    bnel    t9, $zero, lbl_809C0F10
    addiu   $at, $zero, 0x0004         # $at = 00000004
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809C0F0C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_809C0F10:
    bne     v1, $at, lbl_809C0F30
    nop
    lhu     t0, 0x0ED6(a3)             # 8011B4A6
    andi    t1, t0, 0x0010             # t1 = 00000000
    beq     t1, $zero, lbl_809C0F30
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809C0F30:
    bnel    a2, v0, lbl_809C0FA0
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    lw      t2, 0x0004(a3)             # 8011A5D4
    bnel    t2, $zero, lbl_809C0FA0
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    lw      t3, 0x0010(a3)             # 8011A5E0
    bnel    t3, $zero, lbl_809C0FA0
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    lh      v1, 0x00B8(a0)             # 000000B8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v1, $at, lbl_809C0F7C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lhu     t4, 0x0ED6(a3)             # 8011B4A6
    andi    t5, t4, 0x0100             # t5 = 00000000
    bnel    t5, $zero, lbl_809C0F7C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    jr      $ra
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_809C0F78:
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_809C0F7C:
    bnel    v1, $at, lbl_809C0FA0
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    lhu     t6, 0x0ED6(a3)             # 8011B4A6
    andi    t7, t6, 0x0100             # t7 = 00000000
    beql    t7, $zero, lbl_809C0FA0
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    jr      $ra
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_809C0F9C:
    addiu   $at, $zero, 0x004C         # $at = 0000004C
lbl_809C0FA0:
    bnel    v0, $at, lbl_809C1010
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t8, 0x0004(a3)             # 8011A5D4
    bnel    t8, $zero, lbl_809C1010
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t9, 0x0010(a3)             # 8011A5E0
    bnel    a1, t9, lbl_809C1010
    or      v0, $zero, $zero           # v0 = 00000000
    lh      v1, 0x00B8(a0)             # 000000B8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v1, $at, lbl_809C0FEC
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lhu     t0, 0x0ED6(a3)             # 8011B4A6
    andi    t1, t0, 0x0100             # t1 = 00000000
    bnel    t1, $zero, lbl_809C0FEC
    addiu   $at, $zero, 0x0008         # $at = 00000008
    jr      $ra
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_809C0FE8:
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_809C0FEC:
    bnel    v1, $at, lbl_809C1010
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t2, 0x0ED6(a3)             # 8011B4A6
    andi    t3, t2, 0x0100             # t3 = 00000000
    beql    t3, $zero, lbl_809C1010
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_809C100C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809C1010:
    jr      $ra
    nop


func_809C1018:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x01DE(a2)             # 000001DE
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    t6, $at, lbl_809C1094
    lw      $ra, 0x0014($sp)
    lh      v0, 0x01DA(a2)             # 000001DA
    bne     v0, $zero, lbl_809C1048
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_809C1050
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809C1048:
    sh      t7, 0x01DA(a2)             # 000001DA
    lh      v1, 0x01DA(a2)             # 000001DA
lbl_809C1050:
    bnel    v1, $zero, lbl_809C1094
    lw      $ra, 0x0014($sp)
    lh      t8, 0x01DE(a2)             # 000001DE
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x01DE(a2)             # 000001DE
    lh      t0, 0x01DE(a2)             # 000001DE
    slti    $at, t0, 0x0003
    bnel    $at, $zero, lbl_809C1094
    lw      $ra, 0x0014($sp)
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sh      v0, 0x01DA(a2)             # 000001DA
    sh      $zero, 0x01DE(a2)          # 000001DE
    lw      $ra, 0x0014($sp)
lbl_809C1094:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C10A0:
    lw      t7, 0x0144(a0)             # 00000144
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x4CA8             # t6 = 06014CA8
    beq     t6, t7, lbl_809C10C0
    or      v0, $zero, $zero           # v0 = 00000000
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a1
    lw      v0, 0x1DE4(v0)             # 00011DE4
lbl_809C10C0:
    or      a1, a0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0814          # a2 = 00000814
    addiu   a3, $zero, 0x0940          # a3 = 00000940
    addiu   t0, $zero, 0x0846          # t0 = 00000846
    addiu   t1, $zero, 0x0972          # t1 = 00000972
    addiu   t2, $zero, 0x0878          # t2 = 00000878
    addiu   t3, $zero, 0x09A4          # t3 = 000009A4
    addiu   t4, $zero, 0x08AA          # t4 = 000008AA
    addiu   t5, $zero, 0x09D6          # t5 = 000009D6
    addiu   v1, $zero, 0x0DBE          # v1 = 00000DBE
lbl_809C10E8:
    multu   a2, v0
    addiu   a2, a2, 0x00C8             # a2 = 000008DC
    addiu   a1, a1, 0x0018             # a1 = 00000018
    mflo    t8
    sh      t8, 0x030A(a1)             # 00000322
    nop
    multu   a3, v0
    addiu   a3, a3, 0x00C8             # a3 = 00000A08
    mflo    t9
    sh      t9, 0x030C(a1)             # 00000324
    nop
    multu   t0, v0
    addiu   t0, t0, 0x00C8             # t0 = 0000090E
    mflo    t6
    sh      t6, 0x0310(a1)             # 00000328
    nop
    multu   t1, v0
    addiu   t1, t1, 0x00C8             # t1 = 00000A3A
    mflo    t7
    sh      t7, 0x0312(a1)             # 0000032A
    nop
    multu   t2, v0
    addiu   t2, t2, 0x00C8             # t2 = 00000940
    mflo    t8
    sh      t8, 0x0316(a1)             # 0000032E
    nop
    multu   t3, v0
    addiu   t3, t3, 0x00C8             # t3 = 00000A6C
    mflo    t9
    sh      t9, 0x0318(a1)             # 00000330
    nop
    multu   t4, v0
    addiu   t4, t4, 0x00C8             # t4 = 00000972
    mflo    t6
    sh      t6, 0x031C(a1)             # 00000334
    nop
    multu   t5, v0
    addiu   t5, t5, 0x00C8             # t5 = 00000A9E
    mflo    t7
    sh      t7, 0x031E(a1)             # 00000336
    bne     t5, v1, lbl_809C10E8
    nop
    jr      $ra
    nop


func_809C1198:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    addiu   v1, $sp, 0x0020            # v1 = FFFFFFF8
    lui     t6, %hi(var_809C2EE8)      # t6 = 809C0000
    addiu   t6, t6, %lo(var_809C2EE8)  # t6 = 809C2EE8
    lw      t8, 0x0000(t6)             # 809C2EE8
    sll     t9, a2,  1
    addu    v0, v1, t9
    sw      t8, 0x0000(v1)             # FFFFFFF8
    lhu     t8, 0x0004(t6)             # 809C2EEC
    lui     $at, 0x0001                # $at = 00010000
    ori     t2, $zero, 0xFFF0          # t2 = 0000FFF0
    sh      t8, 0x0004(v1)             # FFFFFFFC
    lw      t1, 0x002C($sp)
    lh      t0, 0x0000(v0)             # 00000000
    addu    $at, $at, t1
    sh      t0, 0x1E1A($at)            # 00011E1A
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a2, $at, lbl_809C11F4
    lui     $at, 0x8012                # $at = 80120000
    sh      t2, -0x461E($at)           # 8011B9E2
lbl_809C11F4:
    lw      t3, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    addu    $at, $at, t3
    sb      a3, 0x1E5E($at)            # 00011E5E
    lw      t5, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addu    $at, $at, t5
    sb      t4, 0x1E15($at)            # 00011E15
    sw      v0, 0x001C($sp)
    lw      a1, 0x0028($sp)
    jal     func_800218EC
    lw      a0, 0x002C($sp)
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      v0, 0x001C($sp)
    addiu   t6, $sp, 0x0020            # t6 = FFFFFFF8
    lui     t7, 0x8012                 # t7 = 80120000
    bne     v0, t6, lbl_809C1250
    lui     $at, 0x8012                # $at = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    sh      $zero, 0x0E60(t7)          # 80120E60
lbl_809C1250:
    sh      $zero, -0x4662($at)        # 8011B99E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809C1264:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    lui     t7, %hi(var_809C2EF0)      # t7 = 809C0000
    addiu   t7, t7, %lo(var_809C2EF0)  # t7 = 809C2EF0
    lw      t9, 0x0000(t7)             # 809C2EF0
    lw      s1, 0x1C44(s2)             # 00001C44
    addiu   t6, $sp, 0x0034            # t6 = FFFFFFDC
    sw      t9, 0x0000(t6)             # FFFFFFDC
    lhu     t9, 0x0004(t7)             # 809C2EF4
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D0F0
    sh      t9, 0x0004(t6)             # FFFFFFE0
    sh      v0, 0x01E0(s0)             # 000001E0
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s2, $zero              # a0 = 00000000
    lh      a1, 0x01E0(s0)             # 000001E0
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    swc1    $f4, 0x0048($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, 0x41B0                # $at = 41B00000
    lwc1    $f18, 0x0048($sp)
    add.s   $f10, $f6, $f8
    mtc1    $at, $f6                   # $f6 = 22.00
    lui     $at, 0x4220                # $at = 42200000
    or      a0, s2, $zero              # a0 = 00000000
    swc1    $f10, 0x004C($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lwc1    $f4, 0x004C($sp)
    swc1    $f18, 0x003C($sp)
    swc1    $f16, 0x0050($sp)
    lwc1    $f10, 0x0050($sp)
    mtc1    $at, $f16                  # $f16 = 40.00
    sub.s   $f8, $f4, $f6
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFF0
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFE4
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x0040($sp)
    swc1    $f18, 0x0044($sp)
    jal     func_8009D328
    lh      a1, 0x01E0(s0)             # 000001E0
    addiu   a0, s0, 0x0024             # a0 = 00000024
    sw      a0, 0x002C($sp)
    jal     func_80063F00
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFE4
    addiu   v1, $sp, 0x0034            # v1 = FFFFFFDC
    sh      v0, 0x00B6(s0)             # 000000B6
    lw      t1, 0x0000(v1)             # FFFFFFDC
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2025          # a1 = 00002025
    swl     t1, 0x0300(s0)             # 00000300
    swr     t1, 0x0303(s0)             # 00000303
    lhu     t1, 0x0004(v1)             # FFFFFFE0
    or      a2, $zero, $zero           # a2 = 00000000
    sh      t1, 0x0304(s0)             # 00000304
    lw      t3, 0x0000(v1)             # FFFFFFDC
    swl     t3, 0x0306(s0)             # 00000306
    swr     t3, 0x0309(s0)             # 00000309
    lhu     t3, 0x0004(v1)             # FFFFFFE0
    jal     func_800DCE14
    sh      t3, 0x030A(s0)             # 0000030A
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sh      t4, 0x02F8(s0)             # 000002F8
    lw      t5, 0x002C($sp)
    addiu   s2, s1, 0x0024             # s2 = 00000024
    lw      t7, 0x0000(t5)             # 00000000
    sw      t7, 0x0000(s2)             # 00000024
    lw      t6, 0x0004(t5)             # 00000004
    sw      t6, 0x0004(s2)             # 00000028
    lw      t7, 0x0008(t5)             # 00000008
    sw      t7, 0x0008(s2)             # 0000002C
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0024(s1)            # 00000024
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0024(s1)           # 00000024
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    lwc1    $f16, 0x002C(s1)           # 0000002C
    lw      v0, 0x0430(s1)             # 00000430
    mul.s   $f6, $f18, $f0
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    add.s   $f4, $f16, $f6
    beq     v0, $zero, lbl_809C141C
    swc1    $f4, 0x002C(s1)            # 0000002C
    lw      t9, 0x0000(s2)             # 00000024
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sw      t9, 0x0024(v0)             # 00000024
    lw      t8, 0x0004(s2)             # 00000028
    sw      t8, 0x0028(v0)             # 00000028
    lw      t9, 0x0008(s2)             # 0000002C
    sw      t9, 0x002C(v0)             # 0000002C
    lw      t1, 0x0430(s1)             # 00000430
    sh      t0, 0x0110(t1)             # 00000110
lbl_809C141C:
    sh      t2, 0x0110(s1)             # 00000110
    lw      t3, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    and     t4, t3, $at
    jal     func_80099620
    sw      t4, 0x0004(s0)             # 00000004
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_809C1458:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a3, $at
    addiu   a1, $zero, 0x00C0          # a1 = 000000C0
    jal     func_80081628              # ObjectIndex
    sw      a2, 0x0030($sp)
    lw      a2, 0x0030($sp)
    lui     t9, 0x8012                 # t9 = 80120000
    lui     t4, %hi(func_809C15A8)     # t4 = 809C0000
    sb      v0, 0x01D4(a2)             # 000001D4
    lb      t6, 0x01D4(a2)             # 000001D4
    lui     v0, %hi(var_809C2EF8)      # v0 = 809C0000
    addiu   t9, t9, 0xB938             # t9 = 8011B938
    bgez    t6, lbl_809C14C4
    addiu   t4, t4, %lo(func_809C15A8) # t4 = 809C15A8
    lh      t7, 0x001C(a2)             # 0000001C
    or      a0, a2, $zero              # a0 = 00000000
    blezl   t7, lbl_809C14C8
    lw      t1, 0x0000(t9)             # 8011B938
    jal     func_80020EB4
    sw      $zero, 0x0180(a2)          # 00000180
    beq     $zero, $zero, lbl_809C1558
    lw      $ra, 0x0014($sp)
lbl_809C14C4:
    lw      t1, 0x0000(t9)             # 00000000
lbl_809C14C8:
    addiu   t8, $sp, 0x001C            # t8 = FFFFFFEC
    lw      t0, 0x0004(t9)             # 00000004
    sw      t1, 0x0000(t8)             # FFFFFFEC
    lw      t1, 0x0008(t9)             # 00000008
    addiu   v0, v0, %lo(var_809C2EF8)  # v0 = 00002EF8
    sw      t0, 0x0004(t8)             # FFFFFFF0
    sw      t1, 0x0008(t8)             # FFFFFFF4
    lw      t2, 0x0000(v0)             # 00002EF8
    lwc1    $f4, 0x001C($sp)
    lui     $at, %hi(var_809C2F98)     # $at = 809C0000
    bnel    t2, $zero, lbl_809C1554
    sw      t4, 0x0180(a2)             # 00000180
    lwc1    $f6, %lo(var_809C2F98)($at)
    lwc1    $f8, 0x0020($sp)
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_809C1554
    sw      t4, 0x0180(a2)             # 00000180
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f16, 0x0024($sp)
    lui     $at, %hi(var_809C2F9C)     # $at = 809C0000
    c.eq.s  $f8, $f10
    nop
    bc1fl   lbl_809C1554
    sw      t4, 0x0180(a2)             # 00000180
    lwc1    $f18, %lo(var_809C2F9C)($at)
    lui     $at, 0x8012                # $at = 80120000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    c.eq.s  $f16, $f18
    nop
    bc1fl   lbl_809C1554
    sw      t4, 0x0180(a2)             # 00000180
    sh      $zero, -0x4636($at)        # 8011B9CA
    sw      t3, 0x0000(v0)             # 00002EF8
    sw      t4, 0x0180(a2)             # 00000180
lbl_809C1554:
    lw      $ra, 0x0014($sp)
lbl_809C1558:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809C1564:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x0180(a2)             # 00000180
    lui     t6, %hi(func_809C15A8)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809C15A8) # t6 = 809C15A8
    beql    v0, $zero, lbl_809C159C
    lw      $ra, 0x0014($sp)
    beq     t6, v0, lbl_809C1598
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0184             # a1 = 00000184
lbl_809C1598:
    lw      $ra, 0x0014($sp)
lbl_809C159C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C15A8:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      a0, 0x0044($sp)
    lui     $at, 0x0001                # $at = 00010000
    sw      $zero, 0x003C($sp)
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lb      a1, 0x01D4(s0)             # 000001D4
    jal     func_80081688
    addu    a0, a0, $at
    bne     v0, $zero, lbl_809C15E8
    nop
    lh      t6, 0x001C(s0)             # 0000001C
    bgtz    t6, lbl_809C18EC
lbl_809C15E8:
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4210                 # a3 = 42100000
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   t7, s0, 0x01EE             # t7 = 000001EE
    addiu   t8, s0, 0x0266             # t8 = 00000266
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    addiu   a2, a2, 0x3B88             # a2 = 06013B88
    lw      a0, 0x0044($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_809C2DA0)      # a3 = 809C0000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_809C2DA0)  # a3 = 809C2DA0
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_809C2DCC)      # a2 = 809C0000
    addiu   a2, a2, %lo(var_809C2DCC)  # a2 = 809C2DCC
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C0D48
    lw      a1, 0x0044($sp)
    beq     v0, $zero, lbl_809C169C
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lhu     t0, 0x13FA(a2)             # 8011B9CA
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    and     t1, t0, $at
    beq     $zero, $zero, lbl_809C18EC
    sh      t1, 0x13FA(a2)             # 8011B9CA
lbl_809C169C:
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     v0, %hi(func_809C1AB8)     # v0 = 809C0000
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    addiu   v0, v0, %lo(func_809C1AB8) # v0 = 809C1AB8
    sb      t2, 0x001F(s0)             # 0000001F
    sh      $zero, 0x02F8(s0)          # 000002F8
    sw      v0, 0x0180(s0)             # 00000180
    sw      v0, 0x0034($sp)
    lw      a1, 0x0044($sp)
    jal     func_809C0E1C
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_809C1790
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     v0, a1, lbl_809C1724
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    beq     v0, v1, lbl_809C173C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    beq     v0, a0, lbl_809C1770
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lhu     v0, 0x13FA(a2)             # 8011B9CA
    andi    v0, v0, 0x000F             # v0 = 00000000
    sltiu   $at, v0, 0x0008
    beq     $at, $zero, lbl_809C17DC
    sll     t3, v0,  2
    lui     $at, %hi(var_809C2FA0)     # $at = 809C0000
    addu    $at, $at, t3
    lw      t3, %lo(var_809C2FA0)($at)
    jr      t3
    nop
lbl_809C1724:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C0CD8
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lw      t4, 0x0034($sp)
    beq     $zero, $zero, lbl_809C18EC
    sw      t4, 0x0180(s0)             # 00000180
lbl_809C173C:
    jal     func_809C0CD8
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    lw      t5, 0x0034($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    sw      t5, 0x0180(s0)             # 00000180
    lhu     t6, 0x0ED6(a2)             # 8011B4A6
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    andi    t7, t6, 0x0100             # t7 = 00000000
    bnel    t7, $zero, lbl_809C18F0
    lw      $ra, 0x002C($sp)
    beq     $zero, $zero, lbl_809C18EC
    sh      t8, 0x001C(s0)             # 0000001C
lbl_809C1770:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C0CD8
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    sh      v1, 0x01DE(s0)             # 000001DE
    lw      t9, 0x0034($sp)
    beq     $zero, $zero, lbl_809C18EC
    sw      t9, 0x0180(s0)             # 00000180
lbl_809C1790:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809C18F0
    lw      $ra, 0x002C($sp)
var_809C17A0:
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t0, $at, lbl_809C17E0
    lw      t3, 0x003C($sp)
    beq     $zero, $zero, lbl_809C17DC
    sw      a1, 0x003C($sp)
var_809C17B8:
    lh      t1, 0x001C(s0)             # 0000001C
    bnel    v1, t1, lbl_809C17E0
    lw      t3, 0x003C($sp)
    beq     $zero, $zero, lbl_809C17DC
    sw      a1, 0x003C($sp)
var_809C17CC:
    lh      t2, 0x001C(s0)             # 0000001C
    bnel    a0, t2, lbl_809C17E0
    lw      t3, 0x003C($sp)
    sw      a1, 0x003C($sp)
lbl_809C17DC:
    lw      t3, 0x003C($sp)
lbl_809C17E0:
    sltiu   $at, v0, 0x0008
    beq     t3, a1, lbl_809C17FC
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809C18F0
    lw      $ra, 0x002C($sp)
lbl_809C17FC:
    beq     $at, $zero, lbl_809C18EC
    sll     t4, v0,  2
    lui     $at, %hi(var_809C2FC0)     # $at = 809C0000
    addu    $at, $at, t4
    lw      t4, %lo(var_809C2FC0)($at)
    jr      t4
    nop
var_809C1818:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C0CD8
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     t5, %hi(func_809C1AC8)     # t5 = 809C0000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   t5, t5, %lo(func_809C1AC8) # t5 = 809C1AC8
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    sw      t5, 0x0180(s0)             # 00000180
    beq     $zero, $zero, lbl_809C18EC
    sh      $zero, 0x13FA(a2)          # 8011B9CA
var_809C1840:
    sb      v1, 0x001F(s0)             # 0000001F
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C0CD8
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     t6, %hi(func_809C1B6C)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809C1B6C) # t6 = 809C1B6C
    sw      t6, 0x0180(s0)             # 00000180
    jal     func_8007397C
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    beq     $zero, $zero, lbl_809C18F0
    lw      $ra, 0x002C($sp)
var_809C186C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C0CD8
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lui     t7, %hi(func_809C1D74)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809C1D74) # t7 = 809C1D74
    beq     $zero, $zero, lbl_809C18EC
    sw      t7, 0x0180(s0)             # 00000180
var_809C1888:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C0CD8
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    lui     t9, %hi(func_809C1F44)     # t9 = 809C0000
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    addiu   t9, t9, %lo(func_809C1F44) # t9 = 809C1F44
    sh      t8, 0x01DC(s0)             # 000001DC
    beq     $zero, $zero, lbl_809C18EC
    sw      t9, 0x0180(s0)             # 00000180
var_809C18AC:
    sb      v1, 0x001F(s0)             # 0000001F
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C0CD8
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    lui     t1, %hi(func_809C2044)     # t1 = 809C0000
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    addiu   t1, t1, %lo(func_809C2044) # t1 = 809C2044
    sh      t0, 0x01DC(s0)             # 000001DC
    beq     $zero, $zero, lbl_809C18EC
    sw      t1, 0x0180(s0)             # 00000180
var_809C18D4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C0CD8
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     t2, %hi(func_809C1E4C)     # t2 = 809C0000
    addiu   t2, t2, %lo(func_809C1E4C) # t2 = 809C1E4C
    sw      t2, 0x0180(s0)             # 00000180
lbl_809C18EC:
    lw      $ra, 0x002C($sp)
lbl_809C18F0:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_809C1900:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      v0, 0x0144(s0)             # 00000144
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x5814             # t6 = 06015814
    beq     t6, v0, lbl_809C1930
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0x646C             # t7 = 0601646C
    bne     t7, v0, lbl_809C1960
lbl_809C1930:
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lwc1    $f6, 0x0154(s0)            # 00000154
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    addiu   a1, $zero, 0x6856          # a1 = 00006856
    c.eq.s  $f4, $f6
    nop
    bc1f    lbl_809C1960
    nop
    jal     func_800C4F20
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      v0, 0x0144(s0)             # 00000144
lbl_809C1960:
    lui     t8, 0x0602                 # t8 = 06020000
    addiu   t8, t8, 0x8C38             # t8 = 06018C38
    bne     t8, v0, lbl_809C1994
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lwc1    $f10, 0x0154(s0)           # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f8, $f10
    nop
    bc1fl   lbl_809C1998
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80022FD0
    addiu   a1, $zero, 0x6854          # a1 = 00006854
lbl_809C1994:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_809C1998:
    jal     func_8008C9C0
    sw      a0, 0x0034($sp)
    beql    v0, $zero, lbl_809C1AA8
    lw      $ra, 0x002C($sp)
    lh      t9, 0x01D6(s0)             # 000001D6
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     a3, 0x8010                 # a3 = 80100000
    bgez    t9, lbl_809C19C8
    andi    t0, t9, 0x0007             # t0 = 00000000
    beq     t0, $zero, lbl_809C19C8
    nop
    addiu   t0, t0, 0xFFF8             # t0 = FFFFFFF8
lbl_809C19C8:
    sh      t0, 0x01D6(s0)             # 000001D6
    lh      v0, 0x01D6(s0)             # 000001D6
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   a0, $zero, 0x181E          # a0 = 0000181E
    beq     v0, $at, lbl_809C19E8
    sh      v0, 0x01D8(s0)             # 000001D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_809C1A48
lbl_809C19E8:
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    sw      a1, 0x0038($sp)
    sw      t1, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_809C2FE0)     # $at = 809C0000
    lwc1    $f16, %lo(var_809C2FE0)($at)
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    c.lt.s  $f0, $f16
    addiu   a0, $zero, 0x1844          # a0 = 00001844
    lw      a1, 0x0038($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bc1f    lbl_809C1A48
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    sw      t2, 0x0014($sp)
    jal     func_800C806C
    sw      a3, 0x0010($sp)
lbl_809C1A48:
    lh      t3, 0x01D6(s0)             # 000001D6
    lui     a0, %hi(var_809C2E78)      # a0 = 809C0000
    sll     t4, t3,  2
    addu    a0, a0, t4
    jal     func_8008A194
    lw      a0, %lo(var_809C2E78)(a0)
    mtc1    v0, $f18                   # $f18 = 0.00
    lh      t5, 0x01D6(s0)             # 000001D6
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f4, $f18
    mtc1    $at, $f6                   # $f6 = -10.00
    lui     a1, %hi(var_809C2E78)      # a1 = 809C0000
    sll     t6, t5,  2
    addu    a1, a1, t6
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)
    lw      a1, %lo(var_809C2E78)(a1)
    swc1    $f4, 0x0010($sp)
    lw      a0, 0x0034($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    lw      $ra, 0x002C($sp)
lbl_809C1AA8:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_809C1AB8:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_809C1AC8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x02F8(a0)             # 000002F8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a1, 0x001C($sp)
    bne     t6, $at, lbl_809C1B5C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    jal     func_809C1198
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x13FA(v0)             # 8011B9CA
    lhu     t3, 0x0F0C(v0)             # 8011B4DC
    lui     $at, 0xFFFF                # $at = FFFF0000
    andi    t8, t7, 0xFFF0             # t8 = 00000000
    ori     t0, t8, 0x0001             # t0 = 00000001
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    and     t1, t0, $at
    sh      t0, 0x13FA(v0)             # 8011B9CA
    ori     t2, t1, 0x8000             # t2 = 00008000
    andi    t4, t3, 0xFFFB             # t4 = 00000000
    sh      t2, 0x13FA(v0)             # 8011B9CA
    sh      t4, 0x0F0C(v0)             # 8011B4DC
    jal     func_80063434
    addiu   a0, $zero, 0x0040          # a0 = 00000040
    lw      v0, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t5, $zero, 0x0036          # t5 = 00000036
    addu    $at, $at, v0
    sb      $zero, 0x04BF($at)         # 000104BF
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, v0
    sb      t5, 0x03DC($at)            # 000103DC
    lw      t6, 0x0018($sp)
    sh      $zero, 0x02F8(t6)          # 000002F8
lbl_809C1B5C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C1B6C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lhu     t6, 0x0ED6(v0)             # 8011B4A6
    lui     a3, 0x8010                 # a3 = 80100000
    lw      v1, 0x1C44(s0)             # 00001C44
    andi    t7, t6, 0x0800             # t7 = 00000000
    bne     t7, $zero, lbl_809C1BC0
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lw      t8, 0x066C(v1)             # 0000066C
    sll     t9, t8,  8
    bgezl   t9, lbl_809C1BC4
    lh      t2, 0x13CE(v0)             # 8011B99E
    lhu     t0, 0x0F0C(v0)             # 8011B4DC
    ori     t1, t0, 0x0800             # t1 = 00000800
    sh      t1, 0x0F0C(v0)             # 8011B4DC
lbl_809C1BC0:
    lh      t2, 0x13CE(v0)             # 8011B99E
lbl_809C1BC4:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    addiu   a0, $zero, 0x482C          # a0 = 0000482C
    bne     t2, $at, lbl_809C1C18
    lui     a1, 0x8010                 # a1 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    sw      t3, 0x0014($sp)
    addiu   a1, a1, 0x4394             # a1 = 80104394
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809C1264
    or      a1, s0, $zero              # a1 = 00000000
    lui     t4, %hi(func_809C2634)     # t4 = 809C0000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   t4, t4, %lo(func_809C2634) # t4 = 809C2634
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      t4, 0x0180(s1)             # 00000180
    beq     $zero, $zero, lbl_809C1D60
    sh      $zero, 0x13CE(v0)          # 8011B99E
lbl_809C1C18:
    lh      t5, 0x02F8(s1)             # 000002F8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t6, 0x0001                 # t6 = 00010000
    bne     t5, $at, lbl_809C1D60
    addu    t6, t6, s0
    lbu     t6, 0x04BD(t6)             # 000104BD
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t6, $zero, lbl_809C1CAC
    addiu   a0, $zero, 0x482C          # a0 = 0000482C
    lh      t7, 0x0034(v0)             # 8011A604
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    addiu   t9, $zero, 0x0036          # t9 = 00000036
    slti    $at, t7, 0x0032
    beq     $at, $zero, lbl_809C1C74
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t8, 0x04BF($at)            # 000104BF
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t9, 0x03DC($at)            # 000103DC
    beq     $zero, $zero, lbl_809C1D60
    sh      $zero, 0x02F8(s1)          # 000002F8
lbl_809C1C74:
    lw      t0, 0x1C44(s0)             # 00001C44
    lhu     t4, 0x13FA(v0)             # 8011B9CA
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      t1, 0x0430(t0)             # 00000430
    andi    t5, t4, 0xFFEF             # t5 = 00002624
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lw      t2, 0x0148(t1)             # 00000148
    sll     t3, t2,  4
    or      t7, t3, t5                 # t7 = 00002624
    andi    t8, t7, 0xFFF0             # t8 = 00002620
    sh      t7, 0x13FA(v0)             # 8011B9CA
    ori     t9, t8, 0x0002             # t9 = 00002622
    beq     $zero, $zero, lbl_809C1D14
    sh      t9, 0x13FA(v0)             # 8011B9CA
lbl_809C1CAC:
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t0, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     v1, 0x0ED6(v0)             # 8011B4A6
    andi    t1, v1, 0x0800             # t1 = 00000000
    bnel    t1, $zero, lbl_809C1D04
    lhu     t5, 0x13FA(v0)             # 8011B9CA
    lhu     a0, 0x0F0C(v0)             # 8011B4DC
    ori     t4, v1, 0x0800             # t4 = 00000800
    andi    t2, a0, 0x0800             # t2 = 00000000
    beq     t2, $zero, lbl_809C1D00
    ori     t3, a0, 0x0800             # t3 = 00000800
    sh      t4, 0x0ED6(v0)             # 8011B4A6
    sh      t3, 0x0F0C(v0)             # 8011B4DC
lbl_809C1D00:
    lhu     t5, 0x13FA(v0)             # 8011B9CA
lbl_809C1D04:
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    andi    t6, t5, 0xFFF0             # t6 = 00000000
    sh      t6, 0x13FA(v0)             # 8011B9CA
lbl_809C1D14:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809C1198
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    lui     v0, 0x8012                 # v0 = 80120000
    addu    $at, $at, s0
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sb      $zero, 0x04BF($at)         # 000104BF
    lhu     t7, 0x13FA(v0)             # 8011B9CA
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    and     t8, t7, $at
    ori     t9, t8, 0x8000             # t9 = 00008000
    lui     $at, 0x0001                # $at = 00010000
    sh      t9, 0x13FA(v0)             # 8011B9CA
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0036          # t0 = 00000036
    sb      t0, 0x03DC($at)            # 000103DC
    sh      $zero, 0x02F8(s1)          # 000002F8
lbl_809C1D60:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_809C1D74:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x02F8(a2)             # 000002F8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $zero, lbl_809C1DA8
    nop
    lw      t6, 0x0004(a2)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    or      t7, t6, $at                # t7 = 00010000
    beq     $zero, $zero, lbl_809C1E3C
    sw      t7, 0x0004(a2)             # 00000004
lbl_809C1DA8:
    bne     v0, $at, lbl_809C1E3C
    addiu   a0, $zero, 0xFFCE          # a0 = FFFFFFCE
    jal     func_800721CC
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    lw      t8, 0x0004(a0)             # 00000004
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    and     t9, t8, $at
    jal     func_809C0CD8
    sw      t9, 0x0004(a0)             # 00000004
    lw      a2, 0x0018($sp)
    lui     t0, %hi(func_809C1E4C)     # t0 = 809C0000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   t0, t0, %lo(func_809C1E4C) # t0 = 809C1E4C
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      t0, 0x0180(a2)             # 00000180
    lhu     t1, 0x13FA(v0)             # 8011B9CA
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    andi    t2, t1, 0xFFF0             # t2 = 00000000
    ori     t3, t2, 0x0007             # t3 = 00000007
    sh      t3, 0x13FA(v0)             # 8011B9CA
    sh      $zero, 0x02F8(a2)          # 000002F8
    lhu     t5, 0x13FA(v0)             # 8011B9CA
    ori     t7, t5, 0x0020             # t7 = 00000020
    andi    t8, t7, 0x0040             # t8 = 00000000
    bne     t8, $zero, lbl_809C1E3C
    sh      t7, 0x13FA(v0)             # 8011B9CA
    lw      v0, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t0, $zero, 0x0036          # t0 = 00000036
    addu    $at, $at, v0
    sb      t9, 0x04BF($at)            # 000104BF
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, v0
    sb      t0, 0x03DC($at)            # 000103DC
lbl_809C1E3C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C1E4C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x02F8(a0)             # 000002F8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     v1, 0x0001                 # v1 = 00010000
    bne     t6, $at, lbl_809C1F34
    addu    v1, v1, a1
    lbu     v1, 0x04BD(v1)             # 000104BD
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    bne     v1, $zero, lbl_809C1E8C
    nop
    lh      t7, 0x0034(v0)             # 8011A604
    slti    $at, t7, 0x0032
    bnel    $at, $zero, lbl_809C1EA0
    lhu     t8, 0x13FA(v0)             # 8011B9CA
lbl_809C1E8C:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_809C1EB8
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x13FA(v0)             # 8011B9CA
lbl_809C1EA0:
    lui     t0, %hi(func_809C1AC8)     # t0 = 809C0000
    addiu   t0, t0, %lo(func_809C1AC8) # t0 = 809C1AC8
    andi    t9, t8, 0xFFF0             # t9 = 00000000
    sh      t9, 0x13FA(v0)             # 8011B9CA
    beq     $zero, $zero, lbl_809C1F1C
    sw      t0, 0x0180(a0)             # 00000180
lbl_809C1EB8:
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0026          # a3 = 00000026
    sw      a0, 0x0018($sp)
    jal     func_809C1198
    sw      a1, 0x001C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t1, 0x13FA(v0)             # 8011B9CA
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    andi    t2, t1, 0xFFF0             # t2 = 00000000
    ori     t4, t2, 0x0002             # t4 = 00000002
    lw      a1, 0x001C($sp)
    and     t5, t4, $at
    sh      t4, 0x13FA(v0)             # 8011B9CA
    ori     t6, t5, 0x8000             # t6 = 00008000
    lui     $at, 0x0001                # $at = 00010000
    lw      a0, 0x0018($sp)
    sh      t6, 0x13FA(v0)             # 8011B9CA
    addu    $at, $at, a1
    sb      $zero, 0x04BF($at)         # 000104BF
    lui     $at, 0x0001                # $at = 00010000
    addiu   t7, $zero, 0x0036          # t7 = 00000036
    addu    $at, $at, a1
    sb      t7, 0x03DC($at)            # 000103DC
lbl_809C1F1C:
    sh      $zero, 0x02F8(a0)          # 000002F8
    lhu     t8, 0x13FA(v0)             # 8011B9CA
    andi    t0, t8, 0xFFDF             # t0 = 00000000
    sh      t0, 0x13FA(v0)             # 8011B9CA
    andi    t1, t0, 0xFFBF             # t1 = 00000000
    sh      t1, 0x13FA(v0)             # 8011B9CA
lbl_809C1F34:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C1F44:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x02F8(a0)             # 000002F8
    bnel    t6, $zero, lbl_809C1F74
    lh      v0, 0x01DC(a0)             # 000001DC
    lw      t7, 0x0004(a0)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    or      t8, t7, $at                # t8 = 00010000
    beq     $zero, $zero, lbl_809C2034
    sw      t8, 0x0004(a0)             # 00000004
    lh      v0, 0x01DC(a0)             # 000001DC
lbl_809C1F74:
    beq     v0, $zero, lbl_809C1F9C
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x01DC(a0)             # 000001DC
    lh      t0, 0x01DC(a0)             # 000001DC
    addiu   a1, $zero, 0x6855          # a1 = 00006855
    bnel    t0, $zero, lbl_809C1FA0
    lh      t1, 0x02F8(a0)             # 000002F8
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
lbl_809C1F9C:
    lh      t1, 0x02F8(a0)             # 000002F8
lbl_809C1FA0:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    bne     t1, $at, lbl_809C2034
    addiu   a3, $zero, 0x0026          # a3 = 00000026
    lw      t2, 0x0004(a0)             # 00000004
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    and     t3, t2, $at
    sw      t3, 0x0004(a0)             # 00000004
    sw      a0, 0x0018($sp)
    jal     func_809C1198
    lw      a1, 0x001C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x13FA(v0)             # 8011B9CA
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    andi    t5, t4, 0xFFF0             # t5 = 00000000
    ori     t7, t5, 0x0002             # t7 = 00000002
    lw      t0, 0x001C($sp)
    and     t8, t7, $at
    sh      t7, 0x13FA(v0)             # 8011B9CA
    ori     t9, t8, 0x8000             # t9 = 00008000
    lui     $at, 0x0001                # $at = 00010000
    lw      a0, 0x0018($sp)
    sh      t9, 0x13FA(v0)             # 8011B9CA
    addu    $at, $at, t0
    sb      $zero, 0x04BF($at)         # 000104BF
    lw      t2, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t1, $zero, 0x0036          # t1 = 00000036
    addu    $at, $at, t2
    sb      t1, 0x03DC($at)            # 000103DC
    sh      $zero, 0x02F8(a0)          # 000002F8
    lhu     t4, 0x13FA(v0)             # 8011B9CA
    ori     t5, t4, 0x0040             # t5 = 00000040
    sh      t5, 0x13FA(v0)             # 8011B9CA
lbl_809C2034:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C2044:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t7, %hi(var_809C2EFC)      # t7 = 809C0000
    addiu   t7, t7, %lo(var_809C2EFC)  # t7 = 809C2EFC
    lw      t9, 0x0000(t7)             # 809C2EFC
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 809C2F00
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 809C2F04
    or      a0, s1, $zero              # a0 = 00000000
    sw      t8, 0x0004(t6)             # FFFFFFF8
    jal     func_8009D0F0
    sw      t9, 0x0008(t6)             # FFFFFFFC
    sh      v0, 0x01E0(s0)             # 000001E0
    lh      t0, 0x07A0(s1)             # 000007A0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sh      t0, 0x01E2(s0)             # 000001E2
    jal     func_8009D1AC
    lh      a1, 0x01E2(s0)             # 000001E2
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x01E0(s0)             # 000001E0
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f2                   # $f2 = 50.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   v1, s0, 0x0024             # v1 = 00000024
    swc1    $f2, 0x02E4(s0)            # 000002E4
    swc1    $f2, 0x02F0(s0)            # 000002F0
    swc1    $f2, 0x02F4(s0)            # 000002F4
    swc1    $f0, 0x02E0(s0)            # 000002E0
    swc1    $f0, 0x02E8(s0)            # 000002E8
    swc1    $f0, 0x02EC(s0)            # 000002EC
    lw      t2, 0x0000(v1)             # 00000024
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFE8
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFDC
    sw      t2, 0x0000(a2)             # FFFFFFE8
    lw      t1, 0x0004(v1)             # 00000028
    or      a0, s1, $zero              # a0 = 00000000
    sw      t1, 0x0004(a2)             # FFFFFFEC
    lw      t2, 0x0008(v1)             # 0000002C
    sw      t2, 0x0008(a2)             # FFFFFFF0
    lw      t4, 0x0000(v1)             # 00000024
    sw      t4, 0x0000(a3)             # FFFFFFDC
    lw      t3, 0x0004(v1)             # 00000028
    sw      t3, 0x0004(a3)             # FFFFFFE0
    lw      t4, 0x0008(v1)             # 0000002C
    sw      t4, 0x0008(a3)             # FFFFFFE4
    lwc1    $f4, 0x0030($sp)
    lwc1    $f6, 0x02E0(s0)            # 000002E0
    lwc1    $f10, 0x0034($sp)
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0038($sp)
    swc1    $f8, 0x0030($sp)
    lwc1    $f16, 0x02E4(s0)           # 000002E4
    add.s   $f18, $f10, $f16
    lwc1    $f10, 0x0024($sp)
    swc1    $f18, 0x0034($sp)
    lwc1    $f6, 0x02E8(s0)            # 000002E8
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0028($sp)
    swc1    $f8, 0x0038($sp)
    lwc1    $f16, 0x02EC(s0)           # 000002EC
    add.s   $f18, $f10, $f16
    lwc1    $f10, 0x002C($sp)
    swc1    $f18, 0x0024($sp)
    lwc1    $f6, 0x02F0(s0)            # 000002F0
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0028($sp)
    lwc1    $f16, 0x02F4(s0)           # 000002F4
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x002C($sp)
    jal     func_8009D328
    lh      a1, 0x01E0(s0)             # 000001E0
    addiu   t5, $zero, 0x203B          # t5 = 0000203B
    sh      t5, 0x010E(s0)             # 0000010E
    andi    a1, t5, 0xFFFF             # a1 = 0000203B
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x02F8(s0)             # 000002F8
    sh      $zero, 0x01EC(s0)          # 000001EC
    sh      $zero, 0x1D74(s1)          # 00001D74
    jal     func_80099620
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    lui     t7, %hi(func_809C21D8)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809C21D8) # t7 = 809C21D8
    sw      t7, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_809C21D8:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x005C($sp)
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    lw      v0, 0x1C44(t6)             # 00001C44
    lw      v1, 0x0430(v0)             # 00000430
    beql    v1, $zero, lbl_809C2214
    sh      t8, 0x0110(v0)             # 00000110
    sh      t7, 0x0110(v1)             # 00000110
    sh      t8, 0x0110(v0)             # 00000110
lbl_809C2214:
    lhu     t9, 0x010E(s0)             # 0000010E
    addiu   $at, $zero, 0x203B         # $at = 0000203B
    bnel    t9, $at, lbl_809C2250
    lh      v0, 0x02F8(s0)             # 000002F8
    lh      v0, 0x01DC(s0)             # 000001DC
    beq     v0, $zero, lbl_809C224C
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x01DC(s0)             # 000001DC
    lh      t1, 0x01DC(s0)             # 000001DC
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t1, $zero, lbl_809C2250
    lh      v0, 0x02F8(s0)             # 000002F8
    jal     func_80022FD0
    addiu   a1, $zero, 0x6855          # a1 = 00006855
lbl_809C224C:
    lh      v0, 0x02F8(s0)             # 000002F8
lbl_809C2250:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t7, 0x005C($sp)
    beql    v0, $zero, lbl_809C22C8
    lhu     v0, 0x1D74(t7)             # 00001D74
    bnel    v0, $at, lbl_809C247C
    lw      $ra, 0x002C($sp)
    lhu     t2, 0x010E(s0)             # 0000010E
    addiu   $at, $zero, 0x203B         # $at = 0000203B
    addiu   t3, $zero, 0x203C          # t3 = 0000203C
    bne     t2, $at, lbl_809C22AC
    lw      t6, 0x005C($sp)
    sh      t3, 0x010E(s0)             # 0000010E
    lw      a0, 0x005C($sp)
    andi    a1, t3, 0xFFFF             # a1 = 0000203C
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sh      t4, 0x02F8(s0)             # 000002F8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C0CD8
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beq     $zero, $zero, lbl_809C247C
    lw      $ra, 0x002C($sp)
lbl_809C22AC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t6
    addiu   t5, $zero, 0x0036          # t5 = 00000036
    sb      t5, 0x03DC($at)            # 000103DC
    beq     $zero, $zero, lbl_809C2478
    sh      $zero, 0x02F8(s0)          # 000002F8
    lhu     v0, 0x1D74(t7)             # 00001D74
lbl_809C22C8:
    lui     t9, %hi(func_809C248C)     # t9 = 809C0000
    addiu   t9, t9, %lo(func_809C248C) # t9 = 809C248C
    slti    v1, v0, 0x0032
    xori    v1, v1, 0x0001             # v1 = 00000001
    addiu   t8, v0, 0x0001             # t8 = 00000001
    beq     v1, $zero, lbl_809C22EC
    sh      t8, 0x1D74(t7)             # 00001D74
    beq     $zero, $zero, lbl_809C2478
    sw      t9, 0x0180(s0)             # 00000180
lbl_809C22EC:
    lw      t0, 0x005C($sp)
    addiu   $at, $zero, 0x002C         # $at = 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t1, 0x1D74(t0)             # 00001D74
    bnel    t1, $at, lbl_809C2310
    mtc1    $zero, $f20                # $f20 = 0.00
    jal     func_80022FD0
    addiu   a1, $zero, 0x28E6          # a1 = 000028E6
    mtc1    $zero, $f20                # $f20 = 0.00
lbl_809C2310:
    lui     a2, 0x3D75                 # a2 = 3D750000
    lui     a3, 0x461C                 # a3 = 461C0000
    mfc1    a1, $f20
    ori     a3, a3, 0x4000             # a3 = 461C4000
    ori     a2, a2, 0xC28F             # a2 = 3D75C28F
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    jal     func_80064178
    swc1    $f20, 0x0010($sp)
    lui     a2, 0x3D75                 # a2 = 3D750000
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    ori     a2, a2, 0xC28F             # a2 = 3D75C28F
    addiu   a0, s0, 0x02E4             # a0 = 000002E4
    lui     a1, 0x4248                 # a1 = 42480000
    jal     func_80064178
    swc1    $f20, 0x0010($sp)
    mfc1    a1, $f20
    lui     a2, 0x3D75                 # a2 = 3D750000
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    ori     a2, a2, 0xC28F             # a2 = 3D75C28F
    addiu   a0, s0, 0x02E8             # a0 = 000002E8
    jal     func_80064178
    swc1    $f20, 0x0010($sp)
    mfc1    a1, $f20
    lui     a2, 0x3D75                 # a2 = 3D750000
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    ori     a2, a2, 0xC28F             # a2 = 3D75C28F
    addiu   a0, s0, 0x02EC             # a0 = 000002EC
    jal     func_80064178
    swc1    $f20, 0x0010($sp)
    lui     a2, 0x3D75                 # a2 = 3D750000
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    ori     a2, a2, 0xC28F             # a2 = 3D75C28F
    addiu   a0, s0, 0x02F0             # a0 = 000002F0
    lui     a1, 0x4316                 # a1 = 43160000
    jal     func_80064178
    swc1    $f20, 0x0010($sp)
    lui     a2, 0x3D75                 # a2 = 3D750000
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    ori     a2, a2, 0xC28F             # a2 = 3D75C28F
    addiu   a0, s0, 0x02F4             # a0 = 000002F4
    lui     a1, 0x4396                 # a1 = 43960000
    jal     func_80064178
    swc1    $f20, 0x0010($sp)
    addiu   v0, s0, 0x0024             # v0 = 00000024
    lw      t3, 0x0000(v0)             # 00000024
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFF0
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFE4
    sw      t3, 0x0000(a2)             # FFFFFFF0
    lw      t2, 0x0004(v0)             # 00000028
    sw      t2, 0x0004(a2)             # FFFFFFF4
    lw      t3, 0x0008(v0)             # 0000002C
    sw      t3, 0x0008(a2)             # FFFFFFF8
    lw      t5, 0x0000(v0)             # 00000024
    sw      t5, 0x0000(a3)             # FFFFFFE4
    lw      t4, 0x0004(v0)             # 00000028
    sw      t4, 0x0004(a3)             # FFFFFFE8
    lw      t5, 0x0008(v0)             # 0000002C
    sw      t5, 0x0008(a3)             # FFFFFFEC
    lwc1    $f4, 0x0048($sp)
    lwc1    $f6, 0x02E0(s0)            # 000002E0
    lwc1    $f10, 0x004C($sp)
    lw      a0, 0x005C($sp)
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0050($sp)
    swc1    $f8, 0x0048($sp)
    lwc1    $f16, 0x02E4(s0)           # 000002E4
    add.s   $f18, $f10, $f16
    lwc1    $f10, 0x003C($sp)
    swc1    $f18, 0x004C($sp)
    lwc1    $f6, 0x02E8(s0)            # 000002E8
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0040($sp)
    swc1    $f8, 0x0050($sp)
    lwc1    $f16, 0x02EC(s0)           # 000002EC
    add.s   $f18, $f10, $f16
    lwc1    $f10, 0x0044($sp)
    swc1    $f18, 0x003C($sp)
    lwc1    $f6, 0x02F0(s0)            # 000002F0
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0040($sp)
    lwc1    $f16, 0x02F4(s0)           # 000002F4
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0044($sp)
    jal     func_8009D328
    lh      a1, 0x01E0(s0)             # 000001E0
lbl_809C2478:
    lw      $ra, 0x002C($sp)
lbl_809C247C:
    ldc1    $f20, 0x0020($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_809C248C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      a0, 0x001C($sp)
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_8009D1AC
    lh      a1, 0x01E2(t6)             # 000001E2
    lw      t7, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8009D21C
    lh      a1, 0x01E0(t7)             # 000001E0
    lw      a0, 0x001C($sp)
    lw      a1, 0x0018($sp)
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0032          # a0 = 00000032
    lw      t9, 0x0018($sp)
    lui     t8, %hi(func_809C24F8)     # t8 = 809C0000
    addiu   t8, t8, %lo(func_809C24F8) # t8 = 809C24F8
    sw      t8, 0x0180(t9)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C24F8:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x1C44(a2)             # 00001C44
    addiu   t7, $sp, 0x002C            # t7 = FFFFFFEC
    sw      t6, 0x003C($sp)
    lw      t9, 0x0024(s0)             # 00000024
    sw      t9, 0x0000(t7)             # FFFFFFEC
    lw      t8, 0x0028(s0)             # 00000028
    sw      t8, 0x0004(t7)             # FFFFFFF0
    lw      t9, 0x002C(s0)             # 0000002C
    sw      t9, 0x0008(t7)             # FFFFFFF4
    lh      a0, 0x00B6(s0)             # 000000B6
    jal     func_800636C4              # sins?
    sw      a2, 0x0044($sp)
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f6                   # $f6 = 90.00
    lwc1    $f4, 0x002C($sp)
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x002C($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f18                  # $f18 = 90.00
    lwc1    $f16, 0x0034($sp)
    lw      a1, 0x003C($sp)
    mul.s   $f6, $f18, $f0
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFEC
    addiu   a1, a1, 0x0024             # a1 = 00000024
    add.s   $f4, $f16, $f6
    jal     func_80063F00
    swc1    $f4, 0x0034($sp)
    bltz    v0, lbl_809C2594
    lw      a2, 0x0044($sp)
    beq     $zero, $zero, lbl_809C2598
    or      v1, v0, $zero              # v1 = 00000000
lbl_809C2594:
    subu    v1, $zero, v0
lbl_809C2598:
    slti    $at, v1, 0x4001
    bne     $at, $zero, lbl_809C25E0
    addiu   t0, $zero, 0x0476          # t0 = 00000476
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    sh      t0, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    lui     t3, %hi(func_809C2624)     # t3 = 809C0000
    sb      t2, 0x1E5E($at)            # 00011E5E
    addiu   t3, t3, %lo(func_809C2624) # t3 = 809C2624
    beq     $zero, $zero, lbl_809C2610
    sw      t3, 0x0180(s0)             # 00000180
lbl_809C25E0:
    lh      t4, 0x02F8(s0)             # 000002F8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    bne     t4, $at, lbl_809C2610
    addiu   t6, $zero, 0x0036          # t6 = 00000036
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    sb      t5, 0x04BF($at)            # 000104BF
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    sb      t6, 0x03DC($at)            # 000103DC
    sh      $zero, 0x02F8(s0)          # 000002F8
lbl_809C2610:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_809C2624:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_809C2634:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      v0, 0x1C44(a1)             # 00001C44
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    lw      v1, 0x0430(v0)             # 00000430
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0026          # a3 = 00000026
    beql    v1, $zero, lbl_809C2668
    sh      t7, 0x0110(v0)             # 00000110
    sh      t6, 0x0110(v1)             # 00000110
    sh      t7, 0x0110(v0)             # 00000110
lbl_809C2668:
    lw      t8, 0x0018($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     v0, 0x8012                 # v0 = 80120000
    lh      t9, 0x02F8(t8)             # 000002F8
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    bnel    t9, $at, lbl_809C2714
    lw      $ra, 0x0014($sp)
    lhu     v1, 0x0ED6(v0)             # 8011B4A6
    andi    t0, v1, 0x0800             # t0 = 00000000
    bnel    t0, $zero, lbl_809C26B4
    lw      a0, 0x0018($sp)
    lhu     a0, 0x0F0C(v0)             # 8011B4DC
    ori     t2, v1, 0x0800             # t2 = 00000800
    andi    t1, a0, 0x0800             # t1 = 00000000
    beq     t1, $zero, lbl_809C26B0
    ori     t3, a0, 0x0800             # t3 = 00000800
    sh      t2, 0x0ED6(v0)             # 8011B4A6
    sh      t3, 0x0F0C(v0)             # 8011B4DC
lbl_809C26B0:
    lw      a0, 0x0018($sp)
lbl_809C26B4:
    jal     func_809C1198
    sw      a1, 0x001C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x13FA(v0)             # 8011B9CA
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    andi    t6, t4, 0xFFF0             # t6 = 00000000
    lw      a1, 0x001C($sp)
    and     t7, t6, $at
    sh      t6, 0x13FA(v0)             # 8011B9CA
    ori     t8, t7, 0x8000             # t8 = 00008000
    lui     $at, 0x0001                # $at = 00010000
    sh      t8, 0x13FA(v0)             # 8011B9CA
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    addu    $at, $at, a1
    sb      t9, 0x04BF($at)            # 000104BF
    lui     $at, 0x0001                # $at = 00010000
    addiu   t0, $zero, 0x0036          # t0 = 00000036
    addu    $at, $at, a1
    sb      t0, 0x03DC($at)            # 000103DC
    lw      t1, 0x0018($sp)
    sh      $zero, 0x02F8(t1)          # 000002F8
    lw      $ra, 0x0014($sp)
lbl_809C2714:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C2720:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lw      v0, 0x0180(s0)             # 00000180
    lui     t6, %hi(func_809C15A8)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809C15A8) # t6 = 809C15A8
    bne     t6, v0, lbl_809C2760
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, v0
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809C28D8
    lw      $ra, 0x0024($sp)
lbl_809C2760:
    addiu   a2, s0, 0x0184             # a2 = 00000184
    or      a1, a2, $zero              # a1 = 00000184
    jal     func_80050B00
    sw      a2, 0x0030($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0030($sp)
    addu    a1, s1, $at
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    lui     t7, %hi(func_809C1900)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809C1900) # t7 = 809C1900
    sw      t7, 0x0030($sp)
    lw      t8, 0x0180(s0)             # 00000180
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     t7, t8, lbl_809C2808
    nop
    jal     func_8008C9C0
    sw      a0, 0x002C($sp)
    lw      t0, 0x0144(s0)             # 00000144
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x1BE0             # t9 = 06001BE0
    bne     t9, t0, lbl_809C27E4
    lw      a0, 0x002C($sp)
    lui     t1, 0x8012                 # t1 = 80120000
    lhu     t1, -0x4636(t1)            # 8011B9CA
    addiu   $at, $zero, 0x0006         # $at = 00000006
    or      a1, s0, $zero              # a1 = 00000000
    andi    t2, t1, 0x000F             # t2 = 00000000
    beql    t2, $at, lbl_809C27E8
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_809C0C7C
    or      a2, s1, $zero              # a2 = 00000000
lbl_809C27E4:
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_809C27E8:
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    sw      t3, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
lbl_809C2808:
    jal     func_809C1018
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lw      t4, 0x0030($sp)
    lw      t5, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    beql    t4, t5, lbl_809C28D8
    lw      $ra, 0x0024($sp)
    jal     func_809C10A0
    or      a1, s1, $zero              # a1 = 00000000
    lb      t6, 0x001F(s0)             # 0000001F
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     t6, $at, lbl_809C285C
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f0                   # $f0 = 80.00
    beq     $zero, $zero, lbl_809C286C
    lh      t7, 0x01C4(s0)             # 000001C4
lbl_809C285C:
    lui     $at, 0x43A0                # $at = 43A00000
    mtc1    $at, $f0                   # $f0 = 320.00
    nop
    lh      t7, 0x01C4(s0)             # 000001C4
lbl_809C286C:
    lui     t8, %hi(func_809C0758)     # t8 = 809C0000
    lui     t0, %hi(func_809C0AEC)     # t0 = 809C0000
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   t0, t0, %lo(func_809C0AEC) # t0 = 809C0AEC
    addiu   t8, t8, %lo(func_809C0758) # t8 = 809C0758
    cvt.s.w $f6, $f4
    sw      t8, 0x0010($sp)
    sw      t0, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x02F8             # a2 = 000002F8
    add.s   $f8, $f0, $f6
    mfc1    a3, $f8
    jal     func_800271FC
    nop
    lh      t1, 0x02F8(s0)             # 000002F8
    beql    t1, $zero, lbl_809C28CC
    or      a0, s0, $zero              # a0 = 00000000
    lh      t2, 0x01E8(s0)             # 000001E8
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sh      t2, 0x01EA(s0)             # 000001EA
    sh      v0, 0x01E8(s0)             # 000001E8
    or      a0, s0, $zero              # a0 = 00000000
lbl_809C28CC:
    jal     func_809C0BB4
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x0024($sp)
lbl_809C28D8:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_809C28E8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a3, 0x0044($sp)
    lw      t6, 0x004C($sp)
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lh      t7, 0x001C(t6)             # 0000001C
    blezl   t7, lbl_809C2938
    addiu   $at, $zero, 0x0010         # $at = 00000010
    beq     s0, $at, lbl_809C2934
    sll     t8, s0,  2
    lui     v0, %hi(var_809C2E98)      # v0 = 809C0000
    addu    v0, v0, t8
    lw      v0, %lo(var_809C2E98)(v0)
    beql    v0, $zero, lbl_809C2938
    addiu   $at, $zero, 0x0010         # $at = 00000010
    sw      v0, 0x0000(a2)             # 00000000
lbl_809C2934:
    addiu   $at, $zero, 0x0010         # $at = 00000010
lbl_809C2938:
    bnel    s0, $at, lbl_809C29F4
    addiu   $at, $zero, 0x0009         # $at = 00000009
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, %hi(var_809C2FE4)     # $at = 809C0000
    lwc1    $f12, %lo(var_809C2FE4)($at)
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t0, 0x004C($sp)
    addiu   t9, $sp, 0x002C            # t9 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    lwl     t2, 0x0300(t0)             # 00000300
    lwr     t2, 0x0303(t0)             # 00000303
    mtc1    $at, $f8                   # $f8 = 32768.00
    lui     $at, %hi(var_809C2FE8)     # $at = 809C0000
    sw      t2, 0x0000(t9)             # FFFFFFF4
    lhu     t2, 0x0304(t0)             # 00000304
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      t2, 0x0004(t9)             # FFFFFFF8
    lh      t3, 0x002C($sp)
    lwc1    $f16, %lo(var_809C2FE8)($at)
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AAD4C
    nop
    lh      t4, 0x002E($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t4, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_809C2FEC)     # $at = 809C0000
    lwc1    $f10, %lo(var_809C2FEC)($at)
    cvt.s.w $f4, $f18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AA9E0
    nop
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, %hi(var_809C2FF0)     # $at = 809C0000
    lwc1    $f12, %lo(var_809C2FF0)($at)
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   $at, $zero, 0x0009         # $at = 00000009
lbl_809C29F4:
    bne     s0, $at, lbl_809C2A78
    lw      t6, 0x004C($sp)
    lwl     t8, 0x0306(t6)             # 00000306
    lwr     t8, 0x0309(t6)             # 00000309
    addiu   t5, $sp, 0x002C            # t5 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    sw      t8, 0x0000(t5)             # FFFFFFF4
    lhu     t8, 0x030A(t6)             # 0000030A
    mtc1    $at, $f4                   # $f4 = 32768.00
    lui     $at, %hi(var_809C2FF4)     # $at = 809C0000
    sh      t8, 0x0004(t5)             # FFFFFFF8
    lh      t9, 0x002C($sp)
    lwc1    $f8, %lo(var_809C2FF4)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    div.s   $f6, $f18, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AA9E0
    nop
    lh      t0, 0x002E($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t0, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_809C2FF8)     # $at = 809C0000
    lwc1    $f6, %lo(var_809C2FF8)($at)
    cvt.s.w $f16, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AAB94
    nop
lbl_809C2A78:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     s0, $at, lbl_809C2A94
    lw      t1, 0x004C($sp)
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     s0, $at, lbl_809C2A94
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     s0, $at, lbl_809C2B24
lbl_809C2A94:
    sll     t2, s0,  2
    subu    t2, t2, s0
    sll     t2, t2,  1
    addu    v1, t1, t2
    lh      a0, 0x0322(v1)             # 00000322
    jal     func_800636C4              # sins?
    sw      v1, 0x0024($sp)
    lw      v0, 0x0048($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lh      t3, 0x0002(v0)             # 00000002
    lw      v1, 0x0024($sp)
    mul.s   $f18, $f0, $f16
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f4, $f10, $f18
    trunc.w.s $f6, $f4
    mfc1    t5, $f6
    nop
    sh      t5, 0x0002(v0)             # 00000002
    jal     func_80063684              # coss?
    lh      a0, 0x0324(v1)             # 00000324
    lw      v0, 0x0048($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lh      t6, 0x0004(v0)             # 00000004
    mul.s   $f18, $f0, $f10
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    sh      t8, 0x0004(v0)             # 00000004
lbl_809C2B24:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_809C2B3C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lui     t7, %hi(var_809C2F08)      # t7 = 809C0000
    addiu   t7, t7, %lo(var_809C2F08)  # t7 = 809C2F08
    lw      t9, 0x0000(t7)             # 809C2F08
    addiu   t6, $sp, 0x0028            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 809C2F0C
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 809C2F10
    sw      t8, 0x0004(t6)             # FFFFFFF4
    addiu   $at, $zero, 0x0010         # $at = 00000010
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      t0, 0x003C($sp)
    bne     t0, $at, lbl_809C2BB8
    lw      a2, 0x0000(a0)             # 00000000
    lw      a3, 0x0048($sp)
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    sw      a2, 0x0024($sp)
    jal     func_800AB958
    addiu   a1, a3, 0x0038             # a1 = 00000038
    lw      a3, 0x0048($sp)
    lw      a2, 0x0024($sp)
    lwl     t2, 0x0030(a3)             # 00000030
    lwr     t2, 0x0033(a3)             # 00000033
    swl     t2, 0x0044(a3)             # 00000044
    swr     t2, 0x0047(a3)             # 00000047
    lhu     t2, 0x0034(a3)             # 00000034
    sh      t2, 0x0048(a3)             # 00000048
lbl_809C2BB8:
    lw      t3, 0x003C($sp)
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    lw      a3, 0x0048($sp)
    bnel    t3, $at, lbl_809C2C00
    lw      t9, 0x003C($sp)
    lw      t5, 0x0144(a3)             # 00000144
    lui     t4, 0x0601                 # t4 = 06010000
    addiu   t4, t4, 0x4CA8             # t4 = 06014CA8
    bne     t4, t5, lbl_809C2BFC
    lui     t7, 0xDE00                 # t7 = DE000000
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x7A20             # t8 = 06007A20
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
lbl_809C2BFC:
    lw      t9, 0x003C($sp)
lbl_809C2C00:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    t9, $at, lbl_809C2C40
    lw      $ra, 0x0014($sp)
    lw      t1, 0x0144(a3)             # 00000144
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0x4CA8             # t0 = 06014CA8
    bne     t0, t1, lbl_809C2C3C
    lui     t3, 0xDE00                 # t3 = DE000000
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x7BF8             # t4 = 06007BF8
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(a2)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
lbl_809C2C3C:
    lw      $ra, 0x0014($sp)
lbl_809C2C40:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_809C2C4C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lw      t8, 0x0180(s0)             # 00000180
    lw      t6, 0x003C($sp)
    lui     t7, %hi(func_809C15A8)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809C15A8) # t7 = 809C15A8
    beq     t7, t8, lbl_809C2D60
    lw      a2, 0x0000(t6)             # 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8007E298
    sw      a2, 0x0030($sp)
    lui     t4, 0x00FF                 # t4 = 00FF0000
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0C38             # t5 = 80120C38
    ori     t4, t4, 0xFFFF             # t4 = 00FFFFFF
    lw      t3, 0x0030($sp)
    lui     $ra, 0x8000                # $ra = 80000000
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t3)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lh      t7, 0x01DE(s0)             # 000001DE
    lui     t2, %hi(var_809C2F14)      # t2 = 809C0000
    lui     t1, 0x0600                 # t1 = 06000000
    sll     t8, t7,  2
    addu    t2, t2, t8
    lw      t2, %lo(var_809C2F14)(t2)
    addiu   t1, t1, 0x34D0             # t1 = 060034D0
    sll     t6, t2,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t6, t5, t8
    lw      t7, 0x0000(t6)             # DB060020
    and     t9, t2, t4
    addu    t8, t9, t7
    addu    t6, t8, $ra
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    sll     t8, t1,  4
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t3)             # 000002C0
    srl     t6, t8, 28
    ori     t7, t7, 0x0024             # t7 = DB060024
    sll     t9, t6,  2
    sw      t7, 0x0000(v0)             # 00000000
    addu    t7, t5, t9
    lw      t8, 0x0000(t7)             # DB060024
    and     t6, t1, t4
    addu    t9, t8, t6
    addu    t7, t9, $ra
    sw      t7, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t8, %hi(func_809C28E8)     # t8 = 809C0000
    lui     t6, %hi(func_809C2B3C)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809C2B3C) # t6 = 809C2B3C
    addiu   t8, t8, %lo(func_809C28E8) # t8 = 809C28E8
    sw      t8, 0x0010($sp)
    sw      t6, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x003C($sp)
lbl_809C2D60:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_809C2D80: .word 0x00CB0400, 0x00000019, 0x00C00000, 0x00000398
.word func_809C1458
.word func_809C1564
.word func_809C2720
.word func_809C2C4C
var_809C2DA0: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0012002E, 0x00000000, 0x00000000
var_809C2DCC: .word 0x00000000, 0x00000000, 0xFF000000
var_809C2DD8: .word \
0x06001CC0, 0x3F800000, 0x00000000, 0x00000000, \
0x06001CC0, 0x3F800000, 0x00000000, 0xC1200000, \
0x06013C6C, 0x3F800000, 0x00000000, 0x00000000, \
0x06013C6C, 0x3F800000, 0x00000000, 0xC1200000, \
0x06000CB0, 0x3F800000, 0x00000000, 0x00000000, \
0x060003B4, 0x3F800000, 0x00000000, 0xC1200000, \
0x06001BE0, 0x3F800000, 0x00000000, 0x00000000, \
0x06013D60, 0x3F800000, 0x00000000, 0x00000000, \
0x0601431C, 0x3F800000, 0x00000000, 0x00000000, \
0x06014CA8, 0x3F800000, 0x00000000, 0x00000000
var_809C2E78: .word \
0x060151C8, 0x06015DF0, 0x06016B3C, 0x06015814, \
0x0601646C, 0x060175D0, 0x06017B58, 0x06018C38
var_809C2E98: .word \
0x00000000, 0x00000000, 0x06013688, 0x060137C0, \
0x06013910, 0x060132B8, 0x060133F0, 0x06013540, \
0x06013100, 0x06011758, 0x06012AC0, 0x06012BF0, \
0x06012D20, 0x06012480, 0x060125B0, 0x060126E0, \
0x06011AD8, 0x06012350, 0x06012220, 0x06012120
var_809C2EE8: .word 0x055804CA, 0x01570000
var_809C2EF0: .word 0x00000000, 0x00000000
var_809C2EF8: .word 0x00000000
var_809C2EFC: .word 0x00000000, 0x00000000, 0x00000000
var_809C2F08: .word 0x44C80000, 0x00000000, 0x00000000
var_809C2F14: .word \
0x06003590, 0x060047D0, 0x06004BD0, 0x06004390, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_809C2F30: .word var_809C06A0
.word lbl_809C072C
.word var_809C06F0
.word var_809C0714
.word var_809C071C
.word var_809C071C
.word var_809C0724
var_809C2F4C: .word var_809C088C
.word var_809C088C
.word lbl_809C0A6C
.word lbl_809C0A6C
.word var_809C08FC
.word lbl_809C0A6C
.word var_809C0950
.word var_809C0950
.word var_809C098C
var_809C2F70: .word lbl_809C0BA0
.word lbl_809C0BA0
.word var_809C0B34
.word lbl_809C0BA0
.word var_809C0B4C
.word var_809C0B78
.word lbl_809C0BA0
.word lbl_809C0BA0
.word lbl_809C0BA0
.word lbl_809C0BA0
var_809C2F98: .word 0x448A6000
var_809C2F9C: .word 0xC569C000
var_809C2FA0: .word var_809C17A0
.word var_809C17B8
.word var_809C17A0
.word var_809C17A0
.word var_809C17A0
.word var_809C17CC
.word var_809C17CC
.word var_809C17A0
var_809C2FC0: .word var_809C1818
.word var_809C1840
.word var_809C1818
.word var_809C186C
.word var_809C1888
.word var_809C18AC
.word var_809C18AC
.word var_809C18D4
var_809C2FE0: .word 0x3E99999A
var_809C2FE4: .word 0x44BB8000
var_809C2FE8: .word 0x40490FDB
var_809C2FEC: .word 0x40490FDB
var_809C2FF0: .word 0xC4BB8000
var_809C2FF4: .word 0x40490FDB
var_809C2FF8: .word 0x40490FDB, 0x00000000

