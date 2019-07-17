.section .text
func_80B528F0:
    sw      a1, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80B528FC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    sw      $zero, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x1C40             # a0 = 06001C40
    jal     func_80033EF4
    addiu   a1, $sp, 0x0020            # a1 = FFFFFFF0
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0020($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t7, 0x0024(s0)             # 00000024
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    sw      t7, 0x015C(s0)             # 0000015C
    lw      t7, 0x002C(s0)             # 0000002C
    lw      t6, 0x0028(s0)             # 00000028
    lui     a1, %hi(func_80B529CC)     # a1 = 80B50000
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a1, a1, %lo(func_80B529CC) # a1 = 80B529CC
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0050(s0)            # 00000050
    swc1    $f0, 0x0054(s0)            # 00000054
    swc1    $f0, 0x0058(s0)            # 00000058
    sw      t7, 0x0164(s0)             # 00000164
    jal     func_80B528F0
    sw      t6, 0x0160(s0)             # 00000160
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B52998:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B529CC:
    lw      v0, 0x1C54(a1)             # 00001C54
    sb      $zero, 0x0158(a0)          # 00000158
    addiu   v1, $zero, 0x014B          # v1 = 0000014B
    beq     v0, $zero, lbl_80B52A50
    lui     t0, 0x8012                 # t0 = 80120000
    lh      t6, 0x0000(v0)             # 00000000
lbl_80B529E4:
    bnel    v1, t6, lbl_80B52A48
    lw      v0, 0x0124(v0)             # 00000124
    lbu     t7, 0x0248(v0)             # 00000248
    beql    t7, $zero, lbl_80B52A54
    lbu     t9, 0x0158(a0)             # 00000158
    lwc1    $f0, 0x00E0(a1)            # 000000E0
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f4                   # $f4 = -20.00
    abs.s   $f0, $f0
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80B52A54
    lbu     t9, 0x0158(a0)             # 00000158
    lwc1    $f0, 0x00E4(a1)            # 000000E4
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f6                   # $f6 = 110.00
    abs.s   $f0, $f0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_80B52A54
    lbu     t9, 0x0158(a0)             # 00000158
    beq     $zero, $zero, lbl_80B52A50
    sb      t8, 0x0158(a0)             # 00000158
    lw      v0, 0x0124(v0)             # 00000124
lbl_80B52A48:
    bnel    v0, $zero, lbl_80B529E4
    lh      t6, 0x0000(v0)             # 00000000
lbl_80B52A50:
    lbu     t9, 0x0158(a0)             # 00000158
lbl_80B52A54:
    bnel    t9, $zero, lbl_80B52A88
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t0, -0x4600(t0)            # 8011BA00
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f16                  # $f16 = -200.00
    lh      t1, 0x0C94(t0)             # 80120C94
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f18, $f10, $f16
    jr      $ra
    swc1    $f18, 0x0028(a0)           # 00000028
lbl_80B52A84:
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80B52A88:
    nop
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra
    nop


func_80B52A98:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop

.section .data

var_80B52AC0: .word 0x01A50600, 0x00000010, 0x01780000, 0x00000168
.word func_80B528FC
.word func_80B52998
.word func_80B52A98
.word 0x00000000

.section .rodata


