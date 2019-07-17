.section .text
func_80AECA40:
    sw      a1, 0x0140(a0)             # 00000140
    jr      $ra
    nop


func_80AECA4C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    or      a0, a1, $zero              # a0 = 00000000
    sw      $ra, 0x0014($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at
    sb      $zero, 0x0B16(v0)          # 00000B16
    lui     t6, 0x800F                 # t6 = 800F0000
    lbu     t6, 0x1640(t6)             # 800F1640
    bnel    t6, $zero, lbl_80AECAA4
    lui     $at, 0x0001                # $at = 00010000
    lbu     t7, 0x0B01(v0)             # 00000B01
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    bne     t7, $at, lbl_80AECAA0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t8, 0x0B01($at)            # 00010B01
    jal     func_800634D4
    sw      a0, 0x001C($sp)
    lw      a0, 0x001C($sp)
lbl_80AECAA0:
    lui     $at, 0x0001                # $at = 00010000
lbl_80AECAA4:
    addu    $at, $at, a0
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sb      t9, 0x0B03($at)            # 00010B03
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AECAC0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1
    lbu     t6, 0x0B13(t6)             # 00010B13
    beq     t6, $zero, lbl_80AECAE8
    nop
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
lbl_80AECAE8:
    lui     a1, %hi(func_80AECB08)     # a1 = 80AF0000
    addiu   a1, a1, %lo(func_80AECB08) # a1 = 80AECB08
    jal     func_80AECA40
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AECB08:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addiu   t6, $zero, 0x0190          # t6 = 00000190
    addu    v0, a1, $at
    sh      t6, 0x013C(a2)             # 0000013C
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x0B16(v0)             # 00000B16
    addu    $at, $at, a1
    sb      v1, 0x0B01($at)            # 00010B01
    lui     t8, 0x800F                 # t8 = 800F0000
    lbu     t8, 0x1640(t8)             # 800F1640
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    bne     t8, $zero, lbl_80AECB5C
    or      a0, a1, $zero              # a0 = 00000000
    lbu     t9, 0x0A3B(v0)             # 00000A3B
    beql    t9, $zero, lbl_80AECB64
    lui     $at, 0x0001                # $at = 00010000
lbl_80AECB5C:
    sb      v1, 0x0B02($at)            # 00010B02
    lui     $at, 0x0001                # $at = 00010000
lbl_80AECB64:
    addu    $at, $at, a1
    sb      v1, 0x0B03($at)            # 00010B03
    jal     func_80063474
    sw      a2, 0x0018($sp)
    lui     a1, %hi(func_80AECB94)     # a1 = 80AF0000
    lw      a0, 0x0018($sp)
    jal     func_80AECA40
    addiu   a1, a1, %lo(func_80AECB94) # a1 = 80AECB94
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AECB94:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800598AC
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, s0, $at
    lhu     t6, 0x0934(v1)             # 00000934
    bnel    t6, $zero, lbl_80AECC14
    lw      a2, 0x0028($sp)
    lhu     t7, 0x0A20(v1)             # 00000A20
    bnel    t7, $zero, lbl_80AECC14
    lw      a2, 0x0028($sp)
    lw      t8, 0x03D8(v1)             # 000003D8
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t8, $zero, lbl_80AECC14
    lw      a2, 0x0028($sp)
    jal     func_8009DB54
    sw      v1, 0x0024($sp)
    bne     v0, $zero, lbl_80AECC10
    lw      v1, 0x0024($sp)
    lbu     t9, 0x241B(v1)             # 0000241B
    lui     t0, 0x8012                 # t0 = 80120000
    beql    t9, $zero, lbl_80AECC28
    lbu     t2, 0x0A42(v1)             # 00000A42
    lw      t0, -0x46D4(t0)            # 8011B92C
    bnel    t0, $zero, lbl_80AECC28
    lbu     t2, 0x0A42(v1)             # 00000A42
lbl_80AECC10:
    lw      a2, 0x0028($sp)
lbl_80AECC14:
    lhu     t1, 0x013C(a2)             # 0000013C
    slti    $at, t1, 0x00FA
    bne     $at, $zero, lbl_80AECC6C
    nop
    lbu     t2, 0x0A42(v1)             # 00000A42
lbl_80AECC28:
    lw      a2, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    bne     t2, $zero, lbl_80AECC44
    lhu     v0, 0x013C(a2)             # 0000013C
    lbu     t3, 0x0A43(v1)             # 00000A43
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t3, $at, lbl_80AECC50
lbl_80AECC44:
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x013C(a2)             # 0000013C
    andi    v0, t4, 0xFFFF             # v0 = 0000FFFF
lbl_80AECC50:
    addiu   $at, $zero, 0x0134         # $at = 00000134
    bne     v0, $at, lbl_80AECC6C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    jal     func_80059840
    sw      v1, 0x0024($sp)
    lw      v1, 0x0024($sp)
    lw      a2, 0x0028($sp)
lbl_80AECC6C:
    lui     t5, 0x800F                 # t5 = 800F0000
    lbu     t5, 0x1648(t5)             # 800F1648
    beql    t5, $zero, lbl_80AECC84
    lhu     t6, 0x013C(a2)             # 0000013C
    sh      $zero, 0x013C(a2)          # 0000013C
    lhu     t6, 0x013C(a2)             # 0000013C
lbl_80AECC84:
    bnel    t6, $zero, lbl_80AECD54
    lw      $ra, 0x001C($sp)
    sb      $zero, 0x0B16(v1)          # 00000B16
    lbu     t7, 0x1D6C(s0)             # 00001D6C
    or      a0, $zero, $zero           # a0 = 00000000
    bne     t7, $zero, lbl_80AECCB4
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800634D4
    sw      v1, 0x0024($sp)
    beq     $zero, $zero, lbl_80AECCF0
    lw      v1, 0x0024($sp)
lbl_80AECCB4:
    jal     func_800CAB18
    sw      v1, 0x0024($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80AECCF0
    lw      v1, 0x0024($sp)
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800C7A78
    sw      v1, 0x0024($sp)
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800C7A78
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x0024($sp)
lbl_80AECCF0:
    lui     t8, 0x800F                 # t8 = 800F0000
    lbu     t8, 0x1640(t8)             # 800F1640
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    bnel    t8, $zero, lbl_80AECD28
    lui     $at, 0x0001                # $at = 00010000
    lbu     t9, 0x0B01(v1)             # 00000B01
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    bne     t9, $at, lbl_80AECD24
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     $zero, $zero, lbl_80AECD3C
    sb      t0, 0x0B01($at)            # 00010B01
lbl_80AECD24:
    lui     $at, 0x0001                # $at = 00010000
lbl_80AECD28:
    addu    $at, $at, s0
    sb      $zero, 0x0B01($at)         # 00010B01
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x0B02($at)         # 00010B02
lbl_80AECD3C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t1, 0x0B03($at)            # 00010B03
    jal     func_80020EB4
    lw      a0, 0x0028($sp)
    lw      $ra, 0x001C($sp)
lbl_80AECD54:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AECD64:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0140(a0)             # 00000140
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop

.section .data

var_80AECD90: .word 0x01700700, 0x02000010, 0x00010000, 0x00000144
.word func_80AECAC0
.word func_80AECA4C
.word func_80AECD64
.word 0x00000000

.section .rodata


