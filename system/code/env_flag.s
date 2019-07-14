# "Environment Flags" part of the code file
#
# Provides functions to lookup and manipulate environment flags in Global Context.
#
# These flags are set by proximity effects like the Song of Storms effect.
#
# Starts at VRAM: 80059810 / VROM: ACF770
#

.section .text
func_80059810:
# Sets All Global Context + 0x120FC Flags to 0 (called every scene load?)
# A0 = Global Context
    or      v0, $zero, $zero           # v0 = 00000000
    lui     v1, 0x0001                 # v1 = 00010000
lbl_80059818:
    sll     t6, v0,  1
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0x00FF             # v0 = 00000001
    addu    t7, a0, t6
    slti    $at, v0, 0x0014
    addu    t8, t7, v1
    bne     $at, $zero, lbl_80059818
    sh      $zero, 0x20FC(t8)          # 000020FC
    jr      $ra
    nop


func_80059840:
# Sets Global Context + 0x120FC Flag to 1
# A0 = Global Context
# A1 = s16 Flag Id
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    bgez    a1, lbl_8005985C
    sra     t6, a1,  4
    addiu   $at, a1, 0x000F            # $at = 0000000F
    sra     t6, $at,  4
lbl_8005985C:
    sll     t7, t6, 16
    sra     t8, t7, 16
    sll     t9, t8,  1
    addu    v0, a0, t9
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, v0, $at
    lhu     t0, 0x20FC(v0)             # 000020FC
    bgez    a1, lbl_8005988C
    andi    t1, a1, 0x000F             # t1 = 00000000
    beq     t1, $zero, lbl_8005988C
    nop
    addiu   t1, t1, 0xFFF0             # t1 = FFFFFFF0
lbl_8005988C:
    sll     t2, t1, 16
    sra     t3, t2, 16
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sllv    t7, t4, t3
    or      t8, t0, t7                 # t8 = 00000000
    sh      t8, 0x20FC(v0)             # 000020FC
    jr      $ra
    nop


func_800598AC:
# Sets Global Context + 0x120FC Flag to 0
# A0 = Global Context
# A1 = s16 Flag Id
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    bgez    a1, lbl_800598C8
    sra     t6, a1,  4
    addiu   $at, a1, 0x000F            # $at = 0000000F
    sra     t6, $at,  4
lbl_800598C8:
    sll     t7, t6, 16
    sra     t8, t7, 16
    sll     t9, t8,  1
    addu    v0, a0, t9
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, v0, $at
    lhu     t0, 0x20FC(v0)             # 000020FC
    bgez    a1, lbl_800598F8
    andi    t1, a1, 0x000F             # t1 = 00000000
    beq     t1, $zero, lbl_800598F8
    nop
    addiu   t1, t1, 0xFFF0             # t1 = FFFFFFF0
lbl_800598F8:
    sll     t2, t1, 16
    sra     t3, t2, 16
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sllv    t5, t4, t3
    xori    t8, t5, 0xFFFF             # t8 = FFFFFFFF
    and     t9, t0, t8
    sh      t9, 0x20FC(v0)             # 000020FC
    jr      $ra
    nop


func_8005991C:
# Tests if Global Context + 0x120FC Flag is set
# A0 = Global Context
# A1 = s16 Flag Id
# V0 = 0 if not set, non-zero if set
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    bgez    a1, lbl_80059938
    sra     t6, a1,  4
    addiu   $at, a1, 0x000F            # $at = 0000000F
    sra     t6, $at,  4
lbl_80059938:
    sll     t7, t6, 16
    sra     t8, t7, 16
    sll     t9, t8,  1
    addu    t0, a0, t9
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, t0
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lhu     t1, 0x20FC(t1)             # 000120FC
    bgez    a1, lbl_8005996C
    andi    t2, a1, 0x000F             # t2 = 00000000
    beq     t2, $zero, lbl_8005996C
    nop
    addiu   t2, t2, 0xFFF0             # t2 = FFFFFFF0
lbl_8005996C:
    sll     t3, t2, 16
    sra     t4, t3, 16
    sllv    t6, t5, t4
    sll     t7, t6, 16
    sra     t8, t7, 16
    and     v0, t1, t8
    jr      $ra
    nop
    nop
