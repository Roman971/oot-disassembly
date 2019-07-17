# "System Matrix" part of the code file
#
# Handles the system matrix/float matrix buffer.
#
# Starts at VRAM: 800AA6B0 / VROM: B20610
#

.section .text
func_800AA6B0:
# Allocates a 0x500 byte Float Matrix Stack
# 80121200 stores start address, 80121204 stores top matrix
# A0 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x0074             # a0 = 00000074
    jal     func_800A01B8
    addiu   a1, $zero, 0x0500          # a1 = 00000500
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x1204             # v1 = 80121204
    sw      v0, 0x0000(v1)             # 80121204
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, 0x1200($at)            # 80121200
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AA6EC:
# Clones the top level matrix in the Float Matrix Stack
# (Increments Append Start by 0x40)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    lw      a1, 0x1204(a1)             # 80121204
    jal     func_800ABA10
    addiu   a0, a1, 0x0040             # a0 = 80120040
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x1204             # v0 = 80121204
    lw      t6, 0x0000(v0)             # 80121204
    addiu   t7, t6, 0x0040             # t7 = 00000040
    sw      t7, 0x0000(v0)             # 80121204
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800AA724:
# Pops top level matrix in the Float Matrix Stack
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x1204             # v0 = 80121204
    lw      t6, 0x0000(v0)             # 80121204
    addiu   t7, t6, 0xFFC0             # t7 = FFFFFFC0
    sw      t7, 0x0000(v0)             # 80121204
    jr      $ra
    nop


func_800AA740:
# Copies the top level matrix in the Float Matrix Stack
# A0 = Destination
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    jal     func_800ABA10
    lw      a1, 0x1204(a1)             # 80121204
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AA764:
# Overwrites top level matrix in the Float Matrix Stack
# A0 = Source Matrix
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800ABA10
    lw      a0, 0x1204(a0)             # 80121204
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AA78C:
# Get Top Level Matrix
# V0 = Float matrix ptr
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1204(v0)             # 80121204
    jr      $ra
    nop


func_800AA79C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_800AA78C
    nop
    lbu     t6, 0x001F($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a1, 0x0018($sp)
    bne     t6, $at, lbl_800AA7D8
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_8008EDB8
    or      a2, v0, $zero              # a2 = 00000000
    beq     $zero, $zero, lbl_800AA7E8
    lw      $ra, 0x0014($sp)
lbl_800AA7D8:
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800ABA10
    lw      a0, 0x1204(a0)             # 80121204
    lw      $ra, 0x0014($sp)
lbl_800AA7E8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AA7F4:
# Create/Apply x,y,z transformation on Float Matrix Stack
# F12 = x
# F14 = y
# A2 = float z
# A3 = 0 initializes new matrix, 1 transforms stored matrix
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sdc1    $f20, 0x0010($sp)
    sw      a3, 0x002C($sp)
    mtc1    a2, $f20                   # $f20 = 0.00
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a3, $at, lbl_800AA8D4
    lw      a0, 0x1204(a0)             # 80121204
    lwc1    $f0, 0x0000(a0)            # 80120000
    lwc1    $f2, 0x0010(a0)            # 80120010
    lwc1    $f10, 0x0020(a0)           # 80120020
    mul.s   $f4, $f0, $f12
    lwc1    $f0, 0x0004(a0)            # 80120004
    mul.s   $f6, $f2, $f14
    lwc1    $f2, 0x0014(a0)            # 80120014
    mul.s   $f16, $f10, $f20
    nop
    mul.s   $f10, $f0, $f12
    lwc1    $f0, 0x0008(a0)            # 80120008
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0030(a0)            # 80120030
    add.s   $f18, $f8, $f16
    mul.s   $f8, $f2, $f14
    lwc1    $f2, 0x0018(a0)            # 80120018
    add.s   $f6, $f4, $f18
    lwc1    $f4, 0x0024(a0)            # 80120024
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f4, $f20
    swc1    $f6, 0x0030(a0)            # 80120030
    lwc1    $f10, 0x0034(a0)           # 80120034
    mul.s   $f4, $f0, $f12
    lwc1    $f0, 0x000C(a0)            # 8012000C
    add.s   $f6, $f16, $f18
    mul.s   $f16, $f2, $f14
    lwc1    $f2, 0x001C(a0)            # 8012001C
    add.s   $f8, $f10, $f6
    lwc1    $f10, 0x0028(a0)           # 80120028
    add.s   $f18, $f4, $f16
    mul.s   $f6, $f10, $f20
    swc1    $f8, 0x0034(a0)            # 80120034
    lwc1    $f4, 0x0038(a0)            # 80120038
    mul.s   $f10, $f0, $f12
    add.s   $f8, $f18, $f6
    mul.s   $f18, $f2, $f14
    add.s   $f16, $f4, $f8
    lwc1    $f4, 0x002C(a0)            # 8012002C
    add.s   $f6, $f10, $f18
    mul.s   $f8, $f4, $f20
    swc1    $f16, 0x0038(a0)           # 80120038
    lwc1    $f10, 0x003C(a0)           # 8012003C
    add.s   $f16, $f6, $f8
    add.s   $f18, $f10, $f16
    beq     $zero, $zero, lbl_800AA8E8
    swc1    $f18, 0x003C(a0)           # 8012003C
lbl_800AA8D4:
    mfc1    a1, $f12
    mfc1    a2, $f14
    mfc1    a3, $f20
    jal     func_8008F82C              # guTranslateF
    nop
lbl_800AA8E8:
    lw      $ra, 0x001C($sp)
    ldc1    $f20, 0x0010($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800AA8FC:
# Create/Apply x,y,z scalar transformation on Float Matrix Stack
# F12 = x
# F14 = y
# A2 = float z
# A3 = 0 initializes new matrix, 1 transforms stored matrix
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sdc1    $f20, 0x0010($sp)
    sw      a3, 0x002C($sp)
    mtc1    a2, $f20                   # $f20 = 0.00
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a3, $at, lbl_800AA9B8
    lw      a0, 0x1204(a0)             # 80121204
    lwc1    $f4, 0x0000(a0)            # 80120000
    lwc1    $f8, 0x0004(a0)            # 80120004
    lwc1    $f16, 0x0008(a0)           # 80120008
    mul.s   $f6, $f4, $f12
    lwc1    $f4, 0x0010(a0)            # 80120010
    mul.s   $f10, $f8, $f12
    lwc1    $f8, 0x0014(a0)            # 80120014
    mul.s   $f18, $f16, $f12
    swc1    $f6, 0x0000(a0)            # 80120000
    lwc1    $f16, 0x0018(a0)           # 80120018
    mul.s   $f6, $f4, $f14
    swc1    $f10, 0x0004(a0)           # 80120004
    lwc1    $f4, 0x0020(a0)            # 80120020
    mul.s   $f10, $f8, $f14
    swc1    $f18, 0x0008(a0)           # 80120008
    lwc1    $f8, 0x0024(a0)            # 80120024
    mul.s   $f18, $f16, $f14
    swc1    $f6, 0x0010(a0)            # 80120010
    lwc1    $f16, 0x0028(a0)           # 80120028
    mul.s   $f6, $f4, $f20
    swc1    $f10, 0x0014(a0)           # 80120014
    lwc1    $f4, 0x000C(a0)            # 8012000C
    mul.s   $f10, $f8, $f20
    swc1    $f18, 0x0018(a0)           # 80120018
    lwc1    $f8, 0x001C(a0)            # 8012001C
    mul.s   $f18, $f16, $f20
    swc1    $f6, 0x0020(a0)            # 80120020
    lwc1    $f16, 0x002C(a0)           # 8012002C
    mul.s   $f6, $f4, $f12
    swc1    $f10, 0x0024(a0)           # 80120024
    mul.s   $f10, $f8, $f14
    swc1    $f18, 0x0028(a0)           # 80120028
    mul.s   $f18, $f16, $f20
    swc1    $f6, 0x000C(a0)            # 8012000C
    swc1    $f10, 0x001C(a0)           # 8012001C
    beq     $zero, $zero, lbl_800AA9CC
    swc1    $f18, 0x002C(a0)           # 8012002C
lbl_800AA9B8:
    mfc1    a1, $f12
    mfc1    a2, $f14
    mfc1    a3, $f20
    jal     func_8008F4A8              # guScaleF
    nop
lbl_800AA9CC:
    lw      $ra, 0x001C($sp)
    ldc1    $f20, 0x0010($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800AA9E0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a1, 0x002C($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    a1, $at, lbl_800AAAE8
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     s0, 0x8012                 # s0 = 80120000
    c.eq.s  $f12, $f4
    nop
    bc1tl   lbl_800AAB84
    lw      $ra, 0x001C($sp)
    lw      s0, 0x1204(s0)             # 80121204
    jal     func_800CF470
    swc1    $f12, 0x0028($sp)
    lwc1    $f12, 0x0028($sp)
    jal     func_800D2CD0
    swc1    $f0, 0x0020($sp)
    lwc1    $f2, 0x0010(s0)            # 80120010
    lwc1    $f14, 0x0020($sp)
    lwc1    $f12, 0x0020(s0)           # 80120020
    mul.s   $f6, $f2, $f0
    nop
    mul.s   $f8, $f12, $f14
    nop
    mul.s   $f16, $f12, $f0
    lwc1    $f12, 0x0024(s0)           # 80120024
    mul.s   $f18, $f2, $f14
    lwc1    $f2, 0x0014(s0)            # 80120014
    add.s   $f10, $f6, $f8
    mul.s   $f6, $f2, $f0
    swc1    $f10, 0x0010(s0)           # 80120010
    mul.s   $f8, $f12, $f14
    sub.s   $f4, $f16, $f18
    mul.s   $f16, $f12, $f0
    lwc1    $f12, 0x0028(s0)           # 80120028
    mul.s   $f18, $f2, $f14
    lwc1    $f2, 0x0018(s0)            # 80120018
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x0020(s0)            # 80120020
    mul.s   $f6, $f2, $f0
    swc1    $f10, 0x0014(s0)           # 80120014
    mul.s   $f8, $f12, $f14
    sub.s   $f4, $f16, $f18
    mul.s   $f16, $f12, $f0
    lwc1    $f12, 0x002C(s0)           # 8012002C
    mul.s   $f18, $f2, $f14
    lwc1    $f2, 0x001C(s0)            # 8012001C
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x0024(s0)            # 80120024
    mul.s   $f6, $f2, $f0
    swc1    $f10, 0x0018(s0)           # 80120018
    mul.s   $f8, $f12, $f14
    sub.s   $f4, $f16, $f18
    mul.s   $f16, $f12, $f0
    nop
    mul.s   $f18, $f2, $f14
    swc1    $f4, 0x0028(s0)            # 80120028
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x001C(s0)           # 8012001C
    sub.s   $f4, $f16, $f18
    beq     $zero, $zero, lbl_800AAB80
    swc1    $f4, 0x002C(s0)            # 8012002C
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_800AAAE8:
    lui     s0, 0x8012                 # s0 = 80120000
    lw      s0, 0x1204(s0)             # 80121204
    c.eq.s  $f12, $f6
    lui     $at, 0x3F80                # $at = 3F800000
    bc1tl   lbl_800AAB30
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_800CF470
    swc1    $f12, 0x0028($sp)
    lwc1    $f12, 0x0028($sp)
    jal     func_800D2CD0
    swc1    $f0, 0x0020($sp)
    mov.s   $f2, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     $zero, $zero, lbl_800AAB3C
    lwc1    $f14, 0x0020($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_800AAB30:
    mtc1    $at, $f12                  # $f12 = 1.00
    mov.s   $f14, $f0
    mov.s   $f2, $f12
lbl_800AAB3C:
    neg.s   $f8, $f14
    swc1    $f0, 0x0004(s0)            # 80120004
    swc1    $f0, 0x0008(s0)            # 80120008
    swc1    $f0, 0x000C(s0)            # 8012000C
    swc1    $f0, 0x0010(s0)            # 80120010
    swc1    $f0, 0x001C(s0)            # 8012001C
    swc1    $f0, 0x0020(s0)            # 80120020
    swc1    $f0, 0x002C(s0)            # 8012002C
    swc1    $f0, 0x0030(s0)            # 80120030
    swc1    $f0, 0x0034(s0)            # 80120034
    swc1    $f0, 0x0038(s0)            # 80120038
    swc1    $f12, 0x0000(s0)           # 80120000
    swc1    $f12, 0x003C(s0)           # 8012003C
    swc1    $f2, 0x0014(s0)            # 80120014
    swc1    $f2, 0x0028(s0)            # 80120028
    swc1    $f14, 0x0018(s0)           # 80120018
    swc1    $f8, 0x0024(s0)            # 80120024
lbl_800AAB80:
    lw      $ra, 0x001C($sp)
lbl_800AAB84:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800AAB94:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a1, 0x002C($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    a1, $at, lbl_800AACA0
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     s0, 0x8012                 # s0 = 80120000
    c.eq.s  $f12, $f4
    nop
    bc1tl   lbl_800AAD3C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x1204(s0)             # 80121204
    jal     func_800CF470
    swc1    $f12, 0x0028($sp)
    lwc1    $f12, 0x0028($sp)
    jal     func_800D2CD0
    swc1    $f0, 0x0020($sp)
    lwc1    $f2, 0x0000(s0)            # 80120000
    lwc1    $f14, 0x0020($sp)
    lwc1    $f12, 0x0020(s0)           # 80120020
    mul.s   $f6, $f2, $f0
    nop
    mul.s   $f8, $f12, $f14
    nop
    mul.s   $f16, $f2, $f14
    lwc1    $f2, 0x0004(s0)            # 80120004
    mul.s   $f18, $f12, $f0
    lwc1    $f12, 0x0024(s0)           # 80120024
    sub.s   $f10, $f6, $f8
    mul.s   $f6, $f2, $f0
    nop
    mul.s   $f8, $f12, $f14
    swc1    $f10, 0x0000(s0)           # 80120000
    add.s   $f4, $f16, $f18
    mul.s   $f16, $f2, $f14
    lwc1    $f2, 0x0008(s0)            # 80120008
    mul.s   $f18, $f12, $f0
    lwc1    $f12, 0x0028(s0)           # 80120028
    sub.s   $f10, $f6, $f8
    mul.s   $f6, $f2, $f0
    swc1    $f4, 0x0020(s0)            # 80120020
    mul.s   $f8, $f12, $f14
    swc1    $f10, 0x0004(s0)           # 80120004
    add.s   $f4, $f16, $f18
    mul.s   $f16, $f2, $f14
    lwc1    $f2, 0x000C(s0)            # 8012000C
    mul.s   $f18, $f12, $f0
    lwc1    $f12, 0x002C(s0)           # 8012002C
    sub.s   $f10, $f6, $f8
    mul.s   $f6, $f2, $f0
    swc1    $f4, 0x0024(s0)            # 80120024
    mul.s   $f8, $f12, $f14
    swc1    $f10, 0x0008(s0)           # 80120008
    add.s   $f4, $f16, $f18
    mul.s   $f16, $f2, $f14
    nop
    mul.s   $f18, $f12, $f0
    swc1    $f4, 0x0028(s0)            # 80120028
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x000C(s0)           # 8012000C
    add.s   $f4, $f16, $f18
    beq     $zero, $zero, lbl_800AAD38
    swc1    $f4, 0x002C(s0)            # 8012002C
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_800AACA0:
    lui     s0, 0x8012                 # s0 = 80120000
    lw      s0, 0x1204(s0)             # 80121204
    c.eq.s  $f12, $f6
    lui     $at, 0x3F80                # $at = 3F800000
    bc1tl   lbl_800AACE8
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_800CF470
    swc1    $f12, 0x0028($sp)
    lwc1    $f12, 0x0028($sp)
    jal     func_800D2CD0
    swc1    $f0, 0x0020($sp)
    mov.s   $f2, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     $zero, $zero, lbl_800AACF4
    lwc1    $f14, 0x0020($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_800AACE8:
    mtc1    $at, $f12                  # $f12 = 1.00
    mov.s   $f14, $f0
    mov.s   $f2, $f12
lbl_800AACF4:
    neg.s   $f8, $f14
    swc1    $f0, 0x0004(s0)            # 80120004
    swc1    $f0, 0x000C(s0)            # 8012000C
    swc1    $f0, 0x0010(s0)            # 80120010
    swc1    $f0, 0x0018(s0)            # 80120018
    swc1    $f0, 0x001C(s0)            # 8012001C
    swc1    $f0, 0x0024(s0)            # 80120024
    swc1    $f0, 0x002C(s0)            # 8012002C
    swc1    $f0, 0x0030(s0)            # 80120030
    swc1    $f0, 0x0034(s0)            # 80120034
    swc1    $f0, 0x0038(s0)            # 80120038
    swc1    $f12, 0x0014(s0)           # 80120014
    swc1    $f12, 0x003C(s0)           # 8012003C
    swc1    $f2, 0x0000(s0)            # 80120000
    swc1    $f2, 0x0028(s0)            # 80120028
    swc1    $f8, 0x0008(s0)            # 80120008
    swc1    $f14, 0x0020(s0)           # 80120020
lbl_800AAD38:
    lw      $ra, 0x001C($sp)
lbl_800AAD3C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800AAD4C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a1, 0x002C($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    a1, $at, lbl_800AAE54
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     s0, 0x8012                 # s0 = 80120000
    c.eq.s  $f12, $f4
    nop
    bc1tl   lbl_800AAEF0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x1204(s0)             # 80121204
    jal     func_800CF470
    swc1    $f12, 0x0028($sp)
    lwc1    $f12, 0x0028($sp)
    jal     func_800D2CD0
    swc1    $f0, 0x0020($sp)
    lwc1    $f2, 0x0000(s0)            # 80120000
    lwc1    $f14, 0x0020($sp)
    lwc1    $f12, 0x0010(s0)           # 80120010
    mul.s   $f6, $f2, $f0
    nop
    mul.s   $f8, $f12, $f14
    nop
    mul.s   $f16, $f12, $f0
    lwc1    $f12, 0x0014(s0)           # 80120014
    mul.s   $f18, $f2, $f14
    lwc1    $f2, 0x0004(s0)            # 80120004
    add.s   $f10, $f6, $f8
    mul.s   $f6, $f2, $f0
    swc1    $f10, 0x0000(s0)           # 80120000
    mul.s   $f8, $f12, $f14
    sub.s   $f4, $f16, $f18
    mul.s   $f16, $f12, $f0
    lwc1    $f12, 0x0018(s0)           # 80120018
    mul.s   $f18, $f2, $f14
    lwc1    $f2, 0x0008(s0)            # 80120008
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x0010(s0)            # 80120010
    mul.s   $f6, $f2, $f0
    swc1    $f10, 0x0004(s0)           # 80120004
    mul.s   $f8, $f12, $f14
    sub.s   $f4, $f16, $f18
    mul.s   $f16, $f12, $f0
    lwc1    $f12, 0x001C(s0)           # 8012001C
    mul.s   $f18, $f2, $f14
    lwc1    $f2, 0x000C(s0)            # 8012000C
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x0014(s0)            # 80120014
    mul.s   $f6, $f2, $f0
    swc1    $f10, 0x0008(s0)           # 80120008
    mul.s   $f8, $f12, $f14
    sub.s   $f4, $f16, $f18
    mul.s   $f16, $f12, $f0
    nop
    mul.s   $f18, $f2, $f14
    swc1    $f4, 0x0018(s0)            # 80120018
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x000C(s0)           # 8012000C
    sub.s   $f4, $f16, $f18
    beq     $zero, $zero, lbl_800AAEEC
    swc1    $f4, 0x001C(s0)            # 8012001C
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_800AAE54:
    lui     s0, 0x8012                 # s0 = 80120000
    lw      s0, 0x1204(s0)             # 80121204
    c.eq.s  $f12, $f6
    lui     $at, 0x3F80                # $at = 3F800000
    bc1tl   lbl_800AAE9C
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_800CF470
    swc1    $f12, 0x0028($sp)
    lwc1    $f12, 0x0028($sp)
    jal     func_800D2CD0
    swc1    $f0, 0x0020($sp)
    mov.s   $f2, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     $zero, $zero, lbl_800AAEA8
    lwc1    $f14, 0x0020($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_800AAE9C:
    mtc1    $at, $f12                  # $f12 = 1.00
    mov.s   $f14, $f0
    mov.s   $f2, $f12
lbl_800AAEA8:
    neg.s   $f8, $f14
    swc1    $f0, 0x0008(s0)            # 80120008
    swc1    $f0, 0x000C(s0)            # 8012000C
    swc1    $f0, 0x0018(s0)            # 80120018
    swc1    $f0, 0x001C(s0)            # 8012001C
    swc1    $f0, 0x0020(s0)            # 80120020
    swc1    $f0, 0x0024(s0)            # 80120024
    swc1    $f0, 0x002C(s0)            # 8012002C
    swc1    $f0, 0x0030(s0)            # 80120030
    swc1    $f0, 0x0034(s0)            # 80120034
    swc1    $f0, 0x0038(s0)            # 80120038
    swc1    $f12, 0x0028(s0)           # 80120028
    swc1    $f12, 0x003C(s0)           # 8012003C
    swc1    $f2, 0x0000(s0)            # 80120000
    swc1    $f2, 0x0014(s0)            # 80120014
    swc1    $f14, 0x0004(s0)           # 80120004
    swc1    $f8, 0x0010(s0)            # 80120010
lbl_800AAEEC:
    lw      $ra, 0x001C($sp)
lbl_800AAEF0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800AAF00:
# Create/Apply x,y,z rotation transformation on Float Matrix Stack
# A0 = u16 x rotation
# A1 = u16 y rotation
# A2 = u16 z rotation
# A3 = 0 initializes new matrix, 1 transforms stored matrix
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a3, 0x0034($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a3, $at, lbl_800AB194
    lw      s0, 0x1204(s0)             # 80121204
    jal     func_800636C4              # sins?
    lh      a0, 0x0032($sp)
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x0032($sp)
    lwc1    $f2, 0x0000(s0)            # 80120000
    lwc1    $f12, 0x0010(s0)           # 80120010
    mul.s   $f4, $f2, $f0
    nop
    mul.s   $f6, $f12, $f20
    nop
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x0014(s0)           # 80120014
    mul.s   $f16, $f2, $f20
    lwc1    $f2, 0x0004(s0)            # 80120004
    add.s   $f8, $f4, $f6
    mul.s   $f4, $f2, $f0
    swc1    $f8, 0x0000(s0)            # 80120000
    mul.s   $f6, $f12, $f20
    sub.s   $f18, $f10, $f16
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x0018(s0)           # 80120018
    mul.s   $f16, $f2, $f20
    lwc1    $f2, 0x0008(s0)            # 80120008
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0010(s0)           # 80120010
    mul.s   $f4, $f2, $f0
    swc1    $f8, 0x0004(s0)            # 80120004
    mul.s   $f6, $f12, $f20
    sub.s   $f18, $f10, $f16
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x001C(s0)           # 8012001C
    mul.s   $f16, $f2, $f20
    lwc1    $f2, 0x000C(s0)            # 8012000C
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0014(s0)           # 80120014
    mul.s   $f4, $f2, $f0
    swc1    $f8, 0x0008(s0)            # 80120008
    mul.s   $f6, $f12, $f20
    sub.s   $f18, $f10, $f16
    mul.s   $f10, $f12, $f0
    nop
    mul.s   $f16, $f2, $f20
    swc1    $f18, 0x0018(s0)           # 80120018
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x000C(s0)            # 8012000C
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x001C(s0)           # 8012001C
    lh      a0, 0x002E($sp)
    beq     a0, $zero, lbl_800AB0C4
    nop
    jal     func_800636C4              # sins?
    nop
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x002E($sp)
    lwc1    $f2, 0x0000(s0)            # 80120000
    lwc1    $f12, 0x0020(s0)           # 80120020
    mul.s   $f4, $f2, $f0
    nop
    mul.s   $f6, $f12, $f20
    nop
    mul.s   $f10, $f2, $f20
    lwc1    $f2, 0x0004(s0)            # 80120004
    mul.s   $f16, $f12, $f0
    lwc1    $f12, 0x0024(s0)           # 80120024
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f2, $f0
    nop
    mul.s   $f6, $f12, $f20
    swc1    $f8, 0x0000(s0)            # 80120000
    add.s   $f18, $f10, $f16
    mul.s   $f10, $f2, $f20
    lwc1    $f2, 0x0008(s0)            # 80120008
    mul.s   $f16, $f12, $f0
    lwc1    $f12, 0x0028(s0)           # 80120028
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f2, $f0
    swc1    $f18, 0x0020(s0)           # 80120020
    mul.s   $f6, $f12, $f20
    swc1    $f8, 0x0004(s0)            # 80120004
    add.s   $f18, $f10, $f16
    mul.s   $f10, $f2, $f20
    lwc1    $f2, 0x000C(s0)            # 8012000C
    mul.s   $f16, $f12, $f0
    lwc1    $f12, 0x002C(s0)           # 8012002C
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f2, $f0
    swc1    $f18, 0x0024(s0)           # 80120024
    mul.s   $f6, $f12, $f20
    swc1    $f8, 0x0008(s0)            # 80120008
    add.s   $f18, $f10, $f16
    mul.s   $f10, $f2, $f20
    nop
    mul.s   $f16, $f12, $f0
    swc1    $f18, 0x0028(s0)           # 80120028
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x000C(s0)            # 8012000C
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x002C(s0)           # 8012002C
lbl_800AB0C4:
    lh      a0, 0x002A($sp)
    beql    a0, $zero, lbl_800AB1AC
    lw      $ra, 0x0024($sp)
    jal     func_800636C4              # sins?
    nop
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x002A($sp)
    lwc1    $f2, 0x0010(s0)            # 80120010
    lwc1    $f12, 0x0020(s0)           # 80120020
    mul.s   $f4, $f2, $f0
    nop
    mul.s   $f6, $f12, $f20
    nop
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x0024(s0)           # 80120024
    mul.s   $f16, $f2, $f20
    lwc1    $f2, 0x0014(s0)            # 80120014
    add.s   $f8, $f4, $f6
    mul.s   $f4, $f2, $f0
    swc1    $f8, 0x0010(s0)            # 80120010
    mul.s   $f6, $f12, $f20
    sub.s   $f18, $f10, $f16
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x0028(s0)           # 80120028
    mul.s   $f16, $f2, $f20
    lwc1    $f2, 0x0018(s0)            # 80120018
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0020(s0)           # 80120020
    mul.s   $f4, $f2, $f0
    swc1    $f8, 0x0014(s0)            # 80120014
    mul.s   $f6, $f12, $f20
    sub.s   $f18, $f10, $f16
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x002C(s0)           # 8012002C
    mul.s   $f16, $f2, $f20
    lwc1    $f2, 0x001C(s0)            # 8012001C
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0024(s0)           # 80120024
    mul.s   $f4, $f2, $f0
    swc1    $f8, 0x0018(s0)            # 80120018
    mul.s   $f6, $f12, $f20
    sub.s   $f18, $f10, $f16
    mul.s   $f10, $f12, $f0
    nop
    mul.s   $f16, $f2, $f20
    swc1    $f18, 0x0028(s0)           # 80120028
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x001C(s0)            # 8012001C
    sub.s   $f18, $f10, $f16
    beq     $zero, $zero, lbl_800AB1A8
    swc1    $f18, 0x002C(s0)           # 8012002C
lbl_800AB194:
    or      a0, s0, $zero              # a0 = 80120000
    lh      a1, 0x002A($sp)
    lh      a2, 0x002E($sp)
    jal     func_8008F50C
    lh      a3, 0x0032($sp)
lbl_800AB1A8:
    lw      $ra, 0x0024($sp)
lbl_800AB1AC:
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800AB1BC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x001C($sp)
    sdc1    $f20, 0x0010($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     s0, 0x8012                 # s0 = 80120000
    lh      a0, 0x0004(s1)             # 00000004
    lw      s0, 0x1204(s0)             # 80121204
    jal     func_800636C4              # sins?
    sw      a2, 0x0028($sp)
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x0004(s1)             # 00000004
    lw      a2, 0x0028($sp)
    lwc1    $f2, 0x0000(s0)            # 80120000
    lwc1    $f12, 0x0010(s0)           # 80120010
    lwc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f8, 0x0004(a2)            # 00000004
    lwc1    $f18, 0x0020(s0)           # 80120020
    mul.s   $f6, $f2, $f4
    lwc1    $f4, 0x0008(a2)            # 00000008
    mul.s   $f10, $f12, $f8
    add.s   $f16, $f6, $f10
    mul.s   $f8, $f18, $f4
    lwc1    $f10, 0x0030(s0)           # 80120030
    mul.s   $f4, $f2, $f0
    add.s   $f6, $f16, $f8
    mul.s   $f16, $f12, $f20
    add.s   $f18, $f10, $f6
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x0014(s0)           # 80120014
    add.s   $f8, $f4, $f16
    mul.s   $f6, $f2, $f20
    swc1    $f18, 0x0030(s0)           # 80120030
    lwc1    $f2, 0x0004(s0)            # 80120004
    swc1    $f8, 0x0000(s0)            # 80120000
    sub.s   $f18, $f10, $f6
    swc1    $f18, 0x0010(s0)           # 80120010
    lwc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f8, 0x0004(a2)            # 00000004
    lwc1    $f18, 0x0024(s0)           # 80120024
    mul.s   $f16, $f2, $f4
    lwc1    $f4, 0x0008(a2)            # 00000008
    mul.s   $f10, $f12, $f8
    add.s   $f6, $f16, $f10
    mul.s   $f8, $f18, $f4
    lwc1    $f10, 0x0034(s0)           # 80120034
    mul.s   $f4, $f2, $f0
    add.s   $f16, $f6, $f8
    mul.s   $f6, $f12, $f20
    add.s   $f18, $f10, $f16
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x0018(s0)           # 80120018
    add.s   $f8, $f4, $f6
    mul.s   $f16, $f2, $f20
    swc1    $f18, 0x0034(s0)           # 80120034
    lwc1    $f2, 0x0008(s0)            # 80120008
    swc1    $f8, 0x0004(s0)            # 80120004
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0014(s0)           # 80120014
    lwc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f8, 0x0004(a2)            # 00000004
    lwc1    $f18, 0x0028(s0)           # 80120028
    mul.s   $f6, $f2, $f4
    lwc1    $f4, 0x0008(a2)            # 00000008
    mul.s   $f10, $f12, $f8
    add.s   $f16, $f6, $f10
    mul.s   $f8, $f18, $f4
    lwc1    $f10, 0x0038(s0)           # 80120038
    mul.s   $f4, $f2, $f0
    add.s   $f6, $f16, $f8
    mul.s   $f16, $f12, $f20
    add.s   $f18, $f10, $f6
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x001C(s0)           # 8012001C
    add.s   $f8, $f4, $f16
    mul.s   $f6, $f2, $f20
    swc1    $f18, 0x0038(s0)           # 80120038
    lwc1    $f2, 0x000C(s0)            # 8012000C
    swc1    $f8, 0x0008(s0)            # 80120008
    sub.s   $f18, $f10, $f6
    swc1    $f18, 0x0018(s0)           # 80120018
    lwc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f8, 0x0004(a2)            # 00000004
    lwc1    $f18, 0x002C(s0)           # 8012002C
    mul.s   $f16, $f2, $f4
    lwc1    $f4, 0x0008(a2)            # 00000008
    mul.s   $f10, $f12, $f8
    add.s   $f6, $f16, $f10
    mul.s   $f8, $f18, $f4
    lwc1    $f10, 0x003C(s0)           # 8012003C
    mul.s   $f4, $f2, $f0
    add.s   $f16, $f6, $f8
    mul.s   $f6, $f12, $f20
    add.s   $f18, $f10, $f16
    mul.s   $f10, $f12, $f0
    add.s   $f8, $f4, $f6
    mul.s   $f16, $f2, $f20
    swc1    $f18, 0x003C(s0)           # 8012003C
    swc1    $f8, 0x000C(s0)            # 8012000C
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x001C(s0)           # 8012001C
    lh      a0, 0x0002(s1)             # 00000002
    beql    a0, $zero, lbl_800AB430
    lh      a0, 0x0000(s1)             # 00000000
    jal     func_800636C4              # sins?
    nop
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x0002(s1)             # 00000002
    lwc1    $f2, 0x0000(s0)            # 80120000
    lwc1    $f12, 0x0020(s0)           # 80120020
    mul.s   $f4, $f2, $f0
    nop
    mul.s   $f6, $f12, $f20
    nop
    mul.s   $f10, $f2, $f20
    lwc1    $f2, 0x0004(s0)            # 80120004
    mul.s   $f16, $f12, $f0
    lwc1    $f12, 0x0024(s0)           # 80120024
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f2, $f0
    nop
    mul.s   $f6, $f12, $f20
    swc1    $f8, 0x0000(s0)            # 80120000
    add.s   $f18, $f10, $f16
    mul.s   $f10, $f2, $f20
    lwc1    $f2, 0x0008(s0)            # 80120008
    mul.s   $f16, $f12, $f0
    lwc1    $f12, 0x0028(s0)           # 80120028
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f2, $f0
    swc1    $f18, 0x0020(s0)           # 80120020
    mul.s   $f6, $f12, $f20
    swc1    $f8, 0x0004(s0)            # 80120004
    add.s   $f18, $f10, $f16
    mul.s   $f10, $f2, $f20
    lwc1    $f2, 0x000C(s0)            # 8012000C
    mul.s   $f16, $f12, $f0
    lwc1    $f12, 0x002C(s0)           # 8012002C
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f2, $f0
    swc1    $f18, 0x0024(s0)           # 80120024
    mul.s   $f6, $f12, $f20
    swc1    $f8, 0x0008(s0)            # 80120008
    add.s   $f18, $f10, $f16
    mul.s   $f10, $f2, $f20
    nop
    mul.s   $f16, $f12, $f0
    swc1    $f18, 0x0028(s0)           # 80120028
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x000C(s0)            # 8012000C
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x002C(s0)           # 8012002C
    lh      a0, 0x0000(s1)             # 00000000
lbl_800AB430:
    beql    a0, $zero, lbl_800AB4FC
    lw      $ra, 0x0024($sp)
    jal     func_800636C4              # sins?
    nop
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x0000(s1)             # 00000000
    lwc1    $f2, 0x0010(s0)            # 80120010
    lwc1    $f12, 0x0020(s0)           # 80120020
    mul.s   $f4, $f2, $f0
    nop
    mul.s   $f6, $f12, $f20
    nop
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x0024(s0)           # 80120024
    mul.s   $f16, $f2, $f20
    lwc1    $f2, 0x0014(s0)            # 80120014
    add.s   $f8, $f4, $f6
    mul.s   $f4, $f2, $f0
    swc1    $f8, 0x0010(s0)            # 80120010
    mul.s   $f6, $f12, $f20
    sub.s   $f18, $f10, $f16
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x0028(s0)           # 80120028
    mul.s   $f16, $f2, $f20
    lwc1    $f2, 0x0018(s0)            # 80120018
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0020(s0)           # 80120020
    mul.s   $f4, $f2, $f0
    swc1    $f8, 0x0014(s0)            # 80120014
    mul.s   $f6, $f12, $f20
    sub.s   $f18, $f10, $f16
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x002C(s0)           # 8012002C
    mul.s   $f16, $f2, $f20
    lwc1    $f2, 0x001C(s0)            # 8012001C
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0024(s0)           # 80120024
    mul.s   $f4, $f2, $f0
    swc1    $f8, 0x0018(s0)            # 80120018
    mul.s   $f6, $f12, $f20
    sub.s   $f18, $f10, $f16
    mul.s   $f10, $f12, $f0
    nop
    mul.s   $f16, $f2, $f20
    swc1    $f18, 0x0028(s0)           # 80120028
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x001C(s0)            # 8012001C
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x002C(s0)           # 8012002C
    lw      $ra, 0x0024($sp)
lbl_800AB4FC:
    ldc1    $f20, 0x0010($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800AB510:
# Create x,y,z transformation and apply rotation on Float Matrix Stack
# F12 = float x
# F14 = float y
# A2 = float z
# A3 = ptr to u16 rotation
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0018($sp)
    or      s1, a3, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    swc1    $f12, 0x0038($sp)
    swc1    $f14, 0x003C($sp)
    sw      a2, 0x0040($sp)
    lui     s0, 0x8012                 # s0 = 80120000
    lw      s0, 0x1204(s0)             # 80121204
    jal     func_800636C4              # sins?
    lh      a0, 0x0002(s1)             # 00000002
    lh      a0, 0x0002(s1)             # 00000002
    jal     func_80063684              # coss?
    swc1    $f0, 0x0030($sp)
    lwc1    $f14, 0x0030($sp)
    swc1    $f0, 0x0000(s0)            # 80120000
    mtc1    $zero, $f16                # $f16 = 0.00
    neg.s   $f4, $f14
    lui     $at, 0x3F80                # $at = 3F800000
    swc1    $f4, 0x0008(s0)            # 80120008
    lwc1    $f6, 0x0038($sp)
    mtc1    $at, $f2                   # $f2 = 1.00
    mov.s   $f12, $f0
    swc1    $f6, 0x0030(s0)            # 80120030
    lwc1    $f8, 0x003C($sp)
    swc1    $f8, 0x0034(s0)            # 80120034
    lwc1    $f10, 0x0040($sp)
    swc1    $f16, 0x000C(s0)           # 8012000C
    swc1    $f16, 0x001C(s0)           # 8012001C
    swc1    $f16, 0x002C(s0)           # 8012002C
    swc1    $f2, 0x003C(s0)            # 8012003C
    swc1    $f10, 0x0038(s0)           # 80120038
    lh      a0, 0x0000(s1)             # 00000000
    beql    a0, $zero, lbl_800AB5FC
    swc1    $f0, 0x0028(s0)            # 80120028
    swc1    $f12, 0x002C($sp)
    jal     func_800636C4              # sins?
    swc1    $f14, 0x0030($sp)
    lh      a0, 0x0000(s1)             # 00000000
    jal     func_80063684              # coss?
    swc1    $f0, 0x0024($sp)
    lwc1    $f12, 0x002C($sp)
    lwc1    $f2, 0x0024($sp)
    lwc1    $f14, 0x0030($sp)
    mul.s   $f18, $f12, $f0
    neg.s   $f10, $f2
    mtc1    $zero, $f16                # $f16 = 0.00
    mul.s   $f4, $f12, $f2
    swc1    $f10, 0x0024(s0)           # 80120024
    swc1    $f0, 0x0014(s0)            # 80120014
    mul.s   $f6, $f14, $f0
    swc1    $f18, 0x0028(s0)           # 80120028
    mul.s   $f8, $f14, $f2
    swc1    $f4, 0x0018(s0)            # 80120018
    swc1    $f6, 0x0020(s0)            # 80120020
    beq     $zero, $zero, lbl_800AB610
    swc1    $f8, 0x0010(s0)            # 80120010
    swc1    $f0, 0x0028(s0)            # 80120028
lbl_800AB5FC:
    swc1    $f14, 0x0020(s0)           # 80120020
    swc1    $f16, 0x0024(s0)           # 80120024
    swc1    $f16, 0x0018(s0)           # 80120018
    swc1    $f16, 0x0010(s0)           # 80120010
    swc1    $f2, 0x0014(s0)            # 80120014
lbl_800AB610:
    lh      a0, 0x0004(s1)             # 00000004
    beql    a0, $zero, lbl_800AB6A8
    swc1    $f16, 0x0004(s0)           # 80120004
    jal     func_800636C4              # sins?
    nop
    lh      a0, 0x0004(s1)             # 00000004
    jal     func_80063684              # coss?
    swc1    $f0, 0x0024($sp)
    lwc1    $f14, 0x0000(s0)           # 80120000
    lwc1    $f2, 0x0024($sp)
    lwc1    $f12, 0x0010(s0)           # 80120010
    mul.s   $f18, $f14, $f0
    nop
    mul.s   $f4, $f12, $f2
    nop
    mul.s   $f8, $f12, $f0
    lwc1    $f12, 0x0018(s0)           # 80120018
    mul.s   $f10, $f14, $f2
    lwc1    $f14, 0x0008(s0)           # 80120008
    add.s   $f6, $f18, $f4
    mul.s   $f4, $f14, $f0
    swc1    $f6, 0x0000(s0)            # 80120000
    mul.s   $f6, $f12, $f2
    sub.s   $f18, $f8, $f10
    mul.s   $f10, $f12, $f0
    lwc1    $f12, 0x0014(s0)           # 80120014
    swc1    $f18, 0x0010(s0)           # 80120010
    mul.s   $f18, $f14, $f2
    add.s   $f8, $f4, $f6
    mul.s   $f6, $f12, $f2
    swc1    $f8, 0x0008(s0)            # 80120008
    mul.s   $f8, $f12, $f0
    sub.s   $f4, $f10, $f18
    swc1    $f6, 0x0004(s0)            # 80120004
    swc1    $f4, 0x0018(s0)            # 80120018
    beq     $zero, $zero, lbl_800AB6A8
    swc1    $f8, 0x0014(s0)            # 80120014
    swc1    $f16, 0x0004(s0)           # 80120004
lbl_800AB6A8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800AB6BC:
# guMtxF2L
# Converts a 4x4 floating point matrix into a fixed point matrix
# void guMtxF2L(float mf[4][4], Mtx *m)
# A0 = float matrix ptr
# A1 = fixed point matrix ptr
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f0                   # $f0 = 65536.00
    nop
    lwc1    $f4, 0x0000(a0)            # 00000000
    addiu   v1, a1, 0x0020             # v1 = 00000020
    or      v0, a1, $zero              # v0 = 00000000
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t8, $f8
    nop
    sra     t7, t8, 16
    sh      t7, 0x0000(a1)             # 00000000
    sh      t8, 0x0020(a1)             # 00000020
    lwc1    $f10, 0x0004(a0)           # 00000004
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sra     t0, t1, 16
    sh      t0, 0x0002(a1)             # 00000002
    sh      t1, 0x0022(a1)             # 00000022
    lwc1    $f4, 0x0008(a0)            # 00000008
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    nop
    sra     t3, t4, 16
    sh      t3, 0x0004(a1)             # 00000004
    sh      t4, 0x0024(a1)             # 00000024
    lwc1    $f10, 0x000C(a0)           # 0000000C
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    sra     t6, t7, 16
    sh      t6, 0x0006(a1)             # 00000006
    sh      t7, 0x0026(a1)             # 00000026
    lwc1    $f4, 0x0010(a0)            # 00000010
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t0, $f8
    nop
    sra     t9, t0, 16
    sh      t9, 0x0008(a1)             # 00000008
    sh      t0, 0x0028(a1)             # 00000028
    lwc1    $f10, 0x0014(a0)           # 00000014
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    sra     t2, t3, 16
    sh      t2, 0x000A(a1)             # 0000000A
    sh      t3, 0x002A(a1)             # 0000002A
    lwc1    $f4, 0x0018(a0)            # 00000018
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t6, $f8
    nop
    sra     t5, t6, 16
    sh      t5, 0x000C(a1)             # 0000000C
    sh      t6, 0x002C(a1)             # 0000002C
    lwc1    $f10, 0x001C(a0)           # 0000001C
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    nop
    sra     t8, t9, 16
    sh      t8, 0x000E(a1)             # 0000000E
    sh      t9, 0x002E(a1)             # 0000002E
    lwc1    $f4, 0x0020(a0)            # 00000020
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t2, $f8
    nop
    sra     t1, t2, 16
    sh      t1, 0x0010(a1)             # 00000010
    sh      t2, 0x0030(a1)             # 00000030
    lwc1    $f10, 0x0024(a0)           # 00000024
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    nop
    sra     t4, t5, 16
    sh      t4, 0x0012(a1)             # 00000012
    sh      t5, 0x0012(v1)             # 00000032
    lwc1    $f4, 0x0028(a0)            # 00000028
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t8, $f8
    nop
    sra     t7, t8, 16
    sh      t7, 0x0014(a1)             # 00000014
    sh      t8, 0x0014(v1)             # 00000034
    lwc1    $f10, 0x002C(a0)           # 0000002C
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sra     t0, t1, 16
    sh      t0, 0x0016(a1)             # 00000016
    sh      t1, 0x0016(v1)             # 00000036
    lwc1    $f4, 0x0030(a0)            # 00000030
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    nop
    sra     t3, t4, 16
    sh      t3, 0x0018(a1)             # 00000018
    sh      t4, 0x0018(v1)             # 00000038
    lwc1    $f10, 0x0034(a0)           # 00000034
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    sra     t6, t7, 16
    sh      t6, 0x001A(a1)             # 0000001A
    sh      t7, 0x001A(v1)             # 0000003A
    lwc1    $f4, 0x0038(a0)            # 00000038
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t0, $f8
    nop
    sra     t9, t0, 16
    sh      t9, 0x001C(a1)             # 0000001C
    sh      t0, 0x001C(v1)             # 0000003C
    lwc1    $f10, 0x003C(a0)           # 0000003C
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    sra     t2, t3, 16
    sh      t2, 0x001E(a1)             # 0000001E
    sh      t3, 0x001E(v1)             # 0000003E
    jr      $ra
    nop


func_800AB8D8:
# Converts the Top in the Float Matrix Stack to a fixed point matrix
# A0 = Destination for the Fixed Point Matrix
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800AB6BC              # guMtxF2L
    lw      a0, 0x1204(a0)             # 80121204
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AB900:
# Converts and Appends the Float Matrix Stack's top matrix to POLY_OPA_DISP end
# A0 = Graphics Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lw      a0, 0x02C4(a1)             # 000002C4
    addiu   a0, a0, 0xFFC0             # a0 = FFFFFFC0
    jal     func_800AB8D8
    sw      a0, 0x02C4(a1)             # 000002C4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AB92C:
# Converts and Appends a matrix to POLY_OPA_DISP end
# A0 = Source Float Matrix
# A1 = Graphics Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      a1, 0x02C4(a2)             # 000002C4
    addiu   a1, a1, 0xFFC0             # a1 = FFFFFFC0
    jal     func_800AB6BC              # guMtxF2L
    sw      a1, 0x02C4(a2)             # 000002C4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AB958:
# Multiply Float Matrix Stack's top matrix by float Vector3
# A0 = ptr to Vector3
# A1 = ptr to result
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1204(v0)             # 80121204
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f16, 0x0004(a0)           # 00000004
    lwc1    $f4, 0x0000(v0)            # 80120000
    lwc1    $f10, 0x0010(v0)           # 80120010
    mul.s   $f8, $f4, $f6
    lwc1    $f6, 0x0020(v0)            # 80120020
    mul.s   $f18, $f10, $f16
    lwc1    $f10, 0x0008(a0)           # 00000008
    mul.s   $f16, $f6, $f10
    add.s   $f4, $f8, $f18
    lwc1    $f18, 0x0030(v0)           # 80120030
    add.s   $f8, $f4, $f16
    add.s   $f6, $f18, $f8
    swc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f10, 0x0004(v0)           # 80120004
    lwc1    $f8, 0x0004(a0)            # 00000004
    lwc1    $f18, 0x0014(v0)           # 80120014
    mul.s   $f16, $f10, $f4
    lwc1    $f4, 0x0024(v0)            # 80120024
    mul.s   $f6, $f18, $f8
    lwc1    $f18, 0x0008(a0)           # 00000008
    mul.s   $f8, $f4, $f18
    add.s   $f10, $f16, $f6
    lwc1    $f6, 0x0034(v0)            # 80120034
    add.s   $f16, $f10, $f8
    add.s   $f4, $f6, $f16
    swc1    $f4, 0x0004(a1)            # 00000004
    lwc1    $f10, 0x0000(a0)           # 00000000
    lwc1    $f18, 0x0008(v0)           # 80120008
    lwc1    $f16, 0x0004(a0)           # 00000004
    lwc1    $f6, 0x0018(v0)            # 80120018
    mul.s   $f8, $f18, $f10
    lwc1    $f10, 0x0028(v0)           # 80120028
    mul.s   $f4, $f6, $f16
    lwc1    $f6, 0x0008(a0)            # 00000008
    mul.s   $f16, $f10, $f6
    add.s   $f18, $f8, $f4
    lwc1    $f4, 0x0038(v0)            # 80120038
    add.s   $f8, $f18, $f16
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0008(a1)           # 00000008
    jr      $ra
    nop


func_800ABA10:
# Float Matrix Copy
# A0 = Destination
# A1 = Source
    lwc1    $f4, 0x0000(a1)            # 00000000
    swc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0004(a1)            # 00000004
    swc1    $f6, 0x0004(a0)            # 00000004
    lwc1    $f8, 0x0008(a1)            # 00000008
    swc1    $f8, 0x0008(a0)            # 00000008
    lwc1    $f10, 0x000C(a1)           # 0000000C
    swc1    $f10, 0x000C(a0)           # 0000000C
    lwc1    $f16, 0x0010(a1)           # 00000010
    swc1    $f16, 0x0010(a0)           # 00000010
    lwc1    $f18, 0x0014(a1)           # 00000014
    swc1    $f18, 0x0014(a0)           # 00000014
    lwc1    $f4, 0x0018(a1)            # 00000018
    swc1    $f4, 0x0018(a0)            # 00000018
    lwc1    $f6, 0x001C(a1)            # 0000001C
    swc1    $f6, 0x001C(a0)            # 0000001C
    lwc1    $f8, 0x0000(a1)            # 00000000
    swc1    $f8, 0x0000(a0)            # 00000000
    lwc1    $f10, 0x0004(a1)           # 00000004
    swc1    $f10, 0x0004(a0)           # 00000004
    lwc1    $f16, 0x0008(a1)           # 00000008
    swc1    $f16, 0x0008(a0)           # 00000008
    lwc1    $f18, 0x000C(a1)           # 0000000C
    swc1    $f18, 0x000C(a0)           # 0000000C
    lwc1    $f4, 0x0010(a1)            # 00000010
    swc1    $f4, 0x0010(a0)            # 00000010
    lwc1    $f6, 0x0014(a1)            # 00000014
    swc1    $f6, 0x0014(a0)            # 00000014
    lwc1    $f8, 0x0018(a1)            # 00000018
    swc1    $f8, 0x0018(a0)            # 00000018
    lwc1    $f10, 0x001C(a1)           # 0000001C
    swc1    $f10, 0x001C(a0)           # 0000001C
    lwc1    $f16, 0x0020(a1)           # 00000020
    swc1    $f16, 0x0020(a0)           # 00000020
    lwc1    $f18, 0x0024(a1)           # 00000024
    swc1    $f18, 0x0024(a0)           # 00000024
    lwc1    $f4, 0x0028(a1)            # 00000028
    swc1    $f4, 0x0028(a0)            # 00000028
    lwc1    $f6, 0x002C(a1)            # 0000002C
    swc1    $f6, 0x002C(a0)            # 0000002C
    lwc1    $f8, 0x0030(a1)            # 00000030
    swc1    $f8, 0x0030(a0)            # 00000030
    lwc1    $f10, 0x0034(a1)           # 00000034
    swc1    $f10, 0x0034(a0)           # 00000034
    lwc1    $f16, 0x0038(a1)           # 00000038
    swc1    $f16, 0x0038(a0)           # 00000038
    lwc1    $f18, 0x003C(a1)           # 0000003C
    swc1    $f18, 0x003C(a0)           # 0000003C
    lwc1    $f4, 0x0020(a1)            # 00000020
    swc1    $f4, 0x0020(a0)            # 00000020
    lwc1    $f6, 0x0024(a1)            # 00000024
    swc1    $f6, 0x0024(a0)            # 00000024
    lwc1    $f8, 0x0028(a1)            # 00000028
    swc1    $f8, 0x0028(a0)            # 00000028
    lwc1    $f10, 0x002C(a1)           # 0000002C
    swc1    $f10, 0x002C(a0)           # 0000002C
    lwc1    $f16, 0x0030(a1)           # 00000030
    swc1    $f16, 0x0030(a0)           # 00000030
    lwc1    $f18, 0x0034(a1)           # 00000034
    swc1    $f18, 0x0034(a0)           # 00000034
    lwc1    $f4, 0x0038(a1)            # 00000038
    swc1    $f4, 0x0038(a0)            # 00000038
    lwc1    $f6, 0x003C(a1)            # 0000003C
    swc1    $f6, 0x003C(a0)            # 0000003C
    jr      $ra
    nop


func_800ABB18:
    lui     $at, 0x3780                # $at = 37800000
    mtc1    $at, $f0                   # $f0 = 0.00
    nop
    lhu     t7, 0x0000(a0)             # 00000000
    lhu     t6, 0x0020(a0)             # 00000020
    sll     t8, t7, 16
    or      t9, t6, t8                 # t9 = 00000000
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0000(a1)            # 00000000
    lhu     t1, 0x0002(a0)             # 00000002
    lhu     t0, 0x0022(a0)             # 00000022
    sll     t2, t1, 16
    or      t3, t0, t2                 # t3 = 00000000
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0004(a1)           # 00000004
    lhu     t5, 0x0004(a0)             # 00000004
    lhu     t4, 0x0024(a0)             # 00000024
    sll     t7, t5, 16
    or      t6, t4, t7                 # t6 = 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0008(a1)            # 00000008
    lhu     t9, 0x0006(a0)             # 00000006
    lhu     t8, 0x0026(a0)             # 00000026
    sll     t1, t9, 16
    or      t0, t8, t1                 # t0 = 00000000
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x000C(a1)           # 0000000C
    lhu     t3, 0x0008(a0)             # 00000008
    lhu     t2, 0x0028(a0)             # 00000028
    sll     t5, t3, 16
    or      t4, t2, t5                 # t4 = 00000000
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0010(a1)            # 00000010
    lhu     t6, 0x000A(a0)             # 0000000A
    lhu     t7, 0x002A(a0)             # 0000002A
    sll     t9, t6, 16
    or      t8, t7, t9                 # t8 = 00000000
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0014(a1)           # 00000014
    lhu     t0, 0x000C(a0)             # 0000000C
    lhu     t1, 0x002C(a0)             # 0000002C
    sll     t3, t0, 16
    or      t2, t1, t3                 # t2 = 00000000
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0018(a1)            # 00000018
    lhu     t4, 0x000E(a0)             # 0000000E
    lhu     t5, 0x002E(a0)             # 0000002E
    sll     t6, t4, 16
    or      t7, t5, t6                 # t7 = 00000000
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x001C(a1)           # 0000001C
    lhu     t8, 0x0010(a0)             # 00000010
    lhu     t9, 0x0030(a0)             # 00000030
    sll     t0, t8, 16
    or      t1, t9, t0                 # t1 = 00000000
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0020(a1)            # 00000020
    lhu     t2, 0x0012(a0)             # 00000012
    lhu     t3, 0x0032(a0)             # 00000032
    sll     t4, t2, 16
    or      t5, t3, t4                 # t5 = 00000000
    mtc1    t5, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0024(a1)           # 00000024
    lhu     t7, 0x0014(a0)             # 00000014
    lhu     t6, 0x0034(a0)             # 00000034
    sll     t8, t7, 16
    or      t9, t6, t8                 # t9 = 00000000
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0028(a1)            # 00000028
    lhu     t1, 0x0016(a0)             # 00000016
    lhu     t0, 0x0036(a0)             # 00000036
    sll     t2, t1, 16
    or      t3, t0, t2                 # t3 = 00000000
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x002C(a1)           # 0000002C
    lhu     t5, 0x0018(a0)             # 00000018
    lhu     t4, 0x0038(a0)             # 00000038
    sll     t7, t5, 16
    or      t6, t4, t7                 # t6 = 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0030(a1)            # 00000030
    lhu     t9, 0x001A(a0)             # 0000001A
    lhu     t8, 0x003A(a0)             # 0000003A
    sll     t1, t9, 16
    or      t0, t8, t1                 # t0 = 00000000
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0034(a1)           # 00000034
    lhu     t3, 0x001C(a0)             # 0000001C
    lhu     t2, 0x003C(a0)             # 0000003C
    sll     t5, t3, 16
    or      t4, t2, t5                 # t4 = 00000000
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0038(a1)            # 00000038
    lhu     t6, 0x001E(a0)             # 0000001E
    lhu     t7, 0x003E(a0)             # 0000003E
    sll     t9, t6, 16
    or      t8, t7, t9                 # t8 = 00000000
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x003C(a1)           # 0000003C
    jr      $ra
    nop


func_800ABD6C:
    lwc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f10, 0x0010(a2)           # 00000010
    lwc1    $f16, 0x0004(a0)           # 00000004
    mul.s   $f8, $f4, $f6
    lwc1    $f6, 0x0020(a2)            # 00000020
    mul.s   $f18, $f10, $f16
    lwc1    $f10, 0x0008(a0)           # 00000008
    mul.s   $f16, $f6, $f10
    add.s   $f4, $f8, $f18
    lwc1    $f18, 0x0030(a2)           # 00000030
    add.s   $f8, $f4, $f16
    add.s   $f6, $f18, $f8
    swc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f10, 0x0004(a2)           # 00000004
    lwc1    $f8, 0x0004(a0)            # 00000004
    lwc1    $f18, 0x0014(a2)           # 00000014
    mul.s   $f16, $f10, $f4
    lwc1    $f4, 0x0024(a2)            # 00000024
    mul.s   $f6, $f18, $f8
    lwc1    $f18, 0x0008(a0)           # 00000008
    mul.s   $f8, $f4, $f18
    add.s   $f10, $f16, $f6
    lwc1    $f6, 0x0034(a2)            # 00000034
    add.s   $f16, $f10, $f8
    add.s   $f4, $f6, $f16
    swc1    $f4, 0x0004(a1)            # 00000004
    lwc1    $f10, 0x0000(a0)           # 00000000
    lwc1    $f18, 0x0008(a2)           # 00000008
    lwc1    $f16, 0x0004(a0)           # 00000004
    lwc1    $f6, 0x0018(a2)            # 00000018
    mul.s   $f8, $f18, $f10
    lwc1    $f10, 0x0028(a2)           # 00000028
    mul.s   $f4, $f6, $f16
    lwc1    $f6, 0x0008(a0)            # 00000008
    mul.s   $f16, $f10, $f6
    add.s   $f18, $f8, $f4
    lwc1    $f4, 0x0038(a2)            # 00000038
    add.s   $f8, $f18, $f16
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0008(a1)           # 00000008
    jr      $ra
    nop


func_800ABE1C:
    lwc1    $f0, 0x0004(a0)            # 00000004
    lwc1    $f4, 0x0010(a0)            # 00000010
    lwc1    $f6, 0x0020(a0)            # 00000020
    swc1    $f0, 0x0010(a0)            # 00000010
    lwc1    $f0, 0x0008(a0)            # 00000008
    lwc1    $f8, 0x0024(a0)            # 00000024
    swc1    $f4, 0x0004(a0)            # 00000004
    swc1    $f0, 0x0020(a0)            # 00000020
    lwc1    $f0, 0x0018(a0)            # 00000018
    swc1    $f6, 0x0008(a0)            # 00000008
    swc1    $f8, 0x0018(a0)            # 00000018
    swc1    $f0, 0x0024(a0)            # 00000024
    jr      $ra
    nop


func_800ABE54:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1204(v0)             # 80121204
    lwc1    $f8, 0x0000(a0)            # 00000000
    lwc1    $f2, 0x0000(v0)            # 80120000
    lwc1    $f12, 0x0004(v0)           # 80120004
    mul.s   $f2, $f2, $f2
    nop
    mul.s   $f4, $f12, $f12
    lwc1    $f12, 0x0008(v0)           # 80120008
    mul.s   $f6, $f12, $f12
    lwc1    $f12, 0x0014(v0)           # 80120014
    add.s   $f2, $f2, $f4
    add.s   $f2, $f2, $f6
    sqrt.s  $f0, $f2
    lwc1    $f2, 0x0010(v0)            # 80120010
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x0000(v0)           # 80120000
    lwc1    $f16, 0x0004(a0)           # 00000004
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0004(v0)           # 80120004
    lwc1    $f4, 0x0008(a0)            # 00000008
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f2, $f2, $f2
    nop
    mul.s   $f8, $f12, $f12
    lwc1    $f12, 0x0018(v0)           # 80120018
    swc1    $f6, 0x0008(v0)            # 80120008
    lwc1    $f16, 0x0010(a0)           # 00000010
    mul.s   $f10, $f12, $f12
    lwc1    $f12, 0x0024(v0)           # 80120024
    add.s   $f2, $f2, $f8
    add.s   $f2, $f2, $f10
    sqrt.s  $f0, $f2
    lwc1    $f2, 0x0020(v0)            # 80120020
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0010(v0)           # 80120010
    lwc1    $f4, 0x0014(a0)            # 00000014
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x0014(v0)            # 80120014
    lwc1    $f8, 0x0018(a0)            # 00000018
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f2, $f2, $f2
    nop
    mul.s   $f16, $f12, $f12
    lwc1    $f12, 0x0028(v0)           # 80120028
    swc1    $f10, 0x0018(v0)           # 80120018
    lwc1    $f4, 0x0020(a0)            # 00000020
    mul.s   $f18, $f12, $f12
    add.s   $f2, $f2, $f16
    add.s   $f2, $f2, $f18
    sqrt.s  $f0, $f2
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x0020(v0)            # 80120020
    lwc1    $f8, 0x0024(a0)            # 00000024
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x0024(v0)           # 80120024
    lwc1    $f16, 0x0028(a0)           # 00000028
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0028(v0)           # 80120028
    jr      $ra
    nop


func_800ABF50:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a2, 0x0030($sp)
    lwc1    $f20, 0x0020(a0)           # 00000020
    lwc1    $f2, 0x0028(a0)            # 00000028
    lwc1    $f12, 0x0024(a0)           # 00000024
    mul.s   $f20, $f20, $f20
    sw      a0, 0x0028($sp)
    neg.s   $f12, $f12
    mul.s   $f4, $f2, $f2
    add.s   $f20, $f20, $f4
    jal     func_800CD76C
    sqrt.s  $f14, $f20
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x7110($at)          # 80108EF0
    lw      a0, 0x0028($sp)
    addiu   $at, $zero, 0x4000         # $at = 00004000
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    sh      t7, 0x0000(s0)             # 00000000
    lh      v0, 0x0000(s0)             # 00000000
    beq     v0, $at, lbl_800ABFC8
    addiu   $at, $zero, 0xC000         # $at = FFFFC000
    bnel    v0, $at, lbl_800ABFFC
    lwc1    $f12, 0x0020(a0)           # 00000020
lbl_800ABFC8:
    sh      $zero, 0x0004(s0)          # 00000004
    lwc1    $f12, 0x0008(a0)           # 00000008
    lwc1    $f14, 0x0000(a0)           # 00000000
    jal     func_800CD76C
    neg.s   $f12, $f12
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f18, -0x710C($at)         # 80108EF4
    mul.s   $f4, $f0, $f18
    trunc.w.s $f6, $f4
    mfc1    t9, $f6
    beq     $zero, $zero, lbl_800AC0D4
    sh      t9, 0x0002(s0)             # 00000002
    lwc1    $f12, 0x0020(a0)           # 00000020
lbl_800ABFFC:
    lwc1    $f14, 0x0028(a0)           # 00000028
    jal     func_800CD76C
    sw      a0, 0x0028($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x7108($at)          # 80108EF8
    lw      a0, 0x0028($sp)
    mul.s   $f10, $f0, $f8
    trunc.w.s $f18, $f10
    mfc1    t1, $f18
    nop
    sh      t1, 0x0002(s0)             # 00000002
    lw      t2, 0x0030($sp)
    bnel    t2, $zero, lbl_800AC060
    lwc1    $f20, 0x0000(a0)           # 00000000
    lwc1    $f12, 0x0004(a0)           # 00000004
    jal     func_800CD76C
    lwc1    $f14, 0x0014(a0)           # 00000014
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7104($at)          # 80108EFC
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    beq     $zero, $zero, lbl_800AC0D4
    sh      t4, 0x0004(s0)             # 00000004
    lwc1    $f20, 0x0000(a0)           # 00000000
lbl_800AC060:
    lwc1    $f2, 0x0008(a0)            # 00000008
    lwc1    $f16, 0x0018(a0)           # 00000018
    mul.s   $f20, $f20, $f20
    nop
    mul.s   $f10, $f2, $f2
    lwc1    $f2, 0x0004(a0)            # 00000004
    mul.s   $f18, $f2, $f2
    add.s   $f20, $f20, $f10
    add.s   $f20, $f20, $f18
    sqrt.s  $f0, $f20
    div.s   $f12, $f2, $f0
    lwc1    $f2, 0x0010(a0)            # 00000010
    mul.s   $f2, $f2, $f2
    nop
    mul.s   $f4, $f16, $f16
    lwc1    $f16, 0x0014(a0)           # 00000014
    mul.s   $f6, $f16, $f16
    add.s   $f2, $f2, $f4
    add.s   $f2, $f2, $f6
    sqrt.s  $f0, $f2
    jal     func_800CD76C
    div.s   $f14, $f16, $f0
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x7100($at)          # 80108F00
    mul.s   $f10, $f0, $f8
    trunc.w.s $f18, $f10
    mfc1    t6, $f18
    nop
    sh      t6, 0x0004(s0)             # 00000004
lbl_800AC0D4:
    lw      $ra, 0x0024($sp)
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800AC0E8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a2, 0x0030($sp)
    lwc1    $f20, 0x0000(a0)           # 00000000
    lwc1    $f2, 0x0004(a0)            # 00000004
    lwc1    $f12, 0x0008(a0)           # 00000008
    mul.s   $f20, $f20, $f20
    sw      a0, 0x0028($sp)
    neg.s   $f12, $f12
    mul.s   $f4, $f2, $f2
    add.s   $f20, $f20, $f4
    jal     func_800CD76C
    sqrt.s  $f14, $f20
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x70FC($at)          # 80108F04
    lw      a0, 0x0028($sp)
    addiu   $at, $zero, 0x4000         # $at = 00004000
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    sh      t7, 0x0002(s0)             # 00000002
    lh      v0, 0x0002(s0)             # 00000002
    beq     v0, $at, lbl_800AC160
    addiu   $at, $zero, 0xC000         # $at = FFFFC000
    bnel    v0, $at, lbl_800AC194
    lwc1    $f12, 0x0004(a0)           # 00000004
lbl_800AC160:
    sh      $zero, 0x0000(s0)          # 00000000
    lwc1    $f12, 0x0010(a0)           # 00000010
    lwc1    $f14, 0x0014(a0)           # 00000014
    jal     func_800CD76C
    neg.s   $f12, $f12
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f18, -0x70F8($at)         # 80108F08
    mul.s   $f4, $f0, $f18
    trunc.w.s $f6, $f4
    mfc1    t9, $f6
    beq     $zero, $zero, lbl_800AC26C
    sh      t9, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0004(a0)           # 00000004
lbl_800AC194:
    lwc1    $f14, 0x0000(a0)           # 00000000
    jal     func_800CD76C
    sw      a0, 0x0028($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x70F4($at)          # 80108F0C
    lw      a0, 0x0028($sp)
    mul.s   $f10, $f0, $f8
    trunc.w.s $f18, $f10
    mfc1    t1, $f18
    nop
    sh      t1, 0x0004(s0)             # 00000004
    lw      t2, 0x0030($sp)
    bnel    t2, $zero, lbl_800AC1F8
    lwc1    $f20, 0x0010(a0)           # 00000010
    lwc1    $f12, 0x0018(a0)           # 00000018
    jal     func_800CD76C
    lwc1    $f14, 0x0028(a0)           # 00000028
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x70F0($at)          # 80108F10
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    beq     $zero, $zero, lbl_800AC26C
    sh      t4, 0x0000(s0)             # 00000000
    lwc1    $f20, 0x0010(a0)           # 00000010
lbl_800AC1F8:
    lwc1    $f2, 0x0014(a0)            # 00000014
    lwc1    $f16, 0x0024(a0)           # 00000024
    mul.s   $f20, $f20, $f20
    nop
    mul.s   $f10, $f2, $f2
    lwc1    $f2, 0x0018(a0)            # 00000018
    mul.s   $f18, $f2, $f2
    add.s   $f20, $f20, $f10
    add.s   $f20, $f20, $f18
    sqrt.s  $f0, $f20
    div.s   $f12, $f2, $f0
    lwc1    $f2, 0x0020(a0)            # 00000020
    mul.s   $f2, $f2, $f2
    nop
    mul.s   $f4, $f16, $f16
    lwc1    $f16, 0x0028(a0)           # 00000028
    mul.s   $f6, $f16, $f16
    add.s   $f2, $f2, $f4
    add.s   $f2, $f2, $f6
    sqrt.s  $f0, $f2
    jal     func_800CD76C
    div.s   $f14, $f16, $f0
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x70EC($at)          # 80108F14
    mul.s   $f10, $f0, $f8
    trunc.w.s $f18, $f10
    mfc1    t6, $f18
    nop
    sh      t6, 0x0000(s0)             # 00000000
lbl_800AC26C:
    lw      $ra, 0x0024($sp)
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800AC280:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sdc1    $f20, 0x0018($sp)
    sw      a2, 0x0048($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    mov.s   $f20, $f12
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    a2, $at, lbl_800AC548
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     s0, 0x8012                 # s0 = 80120000
    c.eq.s  $f20, $f4
    nop
    bc1tl   lbl_800AC6CC
    lw      $ra, 0x003C($sp)
    lw      s0, 0x1204(s0)             # 80121204
    mov.s   $f12, $f20
    jal     func_800CF470
    sw      a1, 0x0044($sp)
    mov.s   $f26, $f0
    jal     func_800D2CD0
    mov.s   $f12, $f20
    lw      a1, 0x0044($sp)
    lwc1    $f14, 0x0000(s0)           # 80120000
    lwc1    $f2, 0x0010(s0)            # 80120010
    lwc1    $f20, 0x0000(a1)           # 00000000
    lwc1    $f22, 0x0004(a1)           # 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f8, $f20, $f14
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f12, 0x0020(s0)           # 80120020
    mul.s   $f10, $f22, $f2
    lwc1    $f24, 0x0008(a1)           # 00000008
    sub.s   $f16, $f6, $f0
    mul.s   $f6, $f24, $f12
    add.s   $f4, $f8, $f10
    add.s   $f8, $f4, $f6
    mul.s   $f18, $f8, $f16
    nop
    mul.s   $f10, $f14, $f0
    nop
    mul.s   $f4, $f20, $f18
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f2, $f24
    nop
    mul.s   $f10, $f12, $f22
    sub.s   $f4, $f8, $f10
    mul.s   $f8, $f26, $f4
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f2, $f0
    swc1    $f10, 0x0000(s0)           # 80120000
    lwc1    $f6, 0x0004(a1)            # 00000004
    mul.s   $f8, $f6, $f18
    lwc1    $f6, 0x0000(a1)            # 00000000
    add.s   $f10, $f4, $f8
    mul.s   $f4, $f12, $f6
    lwc1    $f8, 0x0008(a1)            # 00000008
    mul.s   $f6, $f14, $f8
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f26, $f8
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f12, $f0
    lwc1    $f12, 0x0024(s0)           # 80120024
    swc1    $f6, 0x0010(s0)            # 80120010
    lwc1    $f10, 0x0008(a1)           # 00000008
    mul.s   $f4, $f10, $f18
    lwc1    $f10, 0x0004(a1)           # 00000004
    add.s   $f6, $f8, $f4
    mul.s   $f8, $f14, $f10
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f14, 0x0004(s0)           # 80120004
    mul.s   $f10, $f2, $f4
    lwc1    $f2, 0x0014(s0)            # 80120014
    sub.s   $f4, $f8, $f10
    mul.s   $f8, $f26, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0020(s0)           # 80120020
    lwc1    $f20, 0x0000(a1)           # 00000000
    lwc1    $f22, 0x0004(a1)           # 00000004
    lwc1    $f24, 0x0008(a1)           # 00000008
    mul.s   $f4, $f20, $f14
    nop
    mul.s   $f6, $f22, $f2
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f24, $f12
    add.s   $f4, $f8, $f10
    mul.s   $f18, $f4, $f16
    nop
    mul.s   $f6, $f14, $f0
    nop
    mul.s   $f8, $f20, $f18
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f2, $f24
    nop
    mul.s   $f6, $f12, $f22
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f26, $f8
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f2, $f0
    swc1    $f6, 0x0004(s0)            # 80120004
    lwc1    $f10, 0x0004(a1)           # 00000004
    mul.s   $f4, $f10, $f18
    lwc1    $f10, 0x0000(a1)           # 00000000
    add.s   $f6, $f8, $f4
    mul.s   $f8, $f12, $f10
    lwc1    $f4, 0x0008(a1)            # 00000008
    mul.s   $f10, $f14, $f4
    sub.s   $f4, $f8, $f10
    mul.s   $f8, $f26, $f4
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f12, $f0
    lwc1    $f12, 0x0028(s0)           # 80120028
    swc1    $f10, 0x0014(s0)           # 80120014
    lwc1    $f6, 0x0008(a1)            # 00000008
    mul.s   $f8, $f6, $f18
    lwc1    $f6, 0x0004(a1)            # 00000004
    add.s   $f10, $f4, $f8
    mul.s   $f4, $f14, $f6
    lwc1    $f8, 0x0000(a1)            # 00000000
    lwc1    $f14, 0x0008(s0)           # 80120008
    mul.s   $f6, $f2, $f8
    lwc1    $f2, 0x0018(s0)            # 80120018
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f26, $f8
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0024(s0)            # 80120024
    lwc1    $f20, 0x0000(a1)           # 00000000
    lwc1    $f22, 0x0004(a1)           # 00000004
    lwc1    $f24, 0x0008(a1)           # 00000008
    mul.s   $f8, $f20, $f14
    nop
    mul.s   $f10, $f22, $f2
    add.s   $f4, $f8, $f10
    mul.s   $f6, $f24, $f12
    add.s   $f8, $f4, $f6
    mul.s   $f18, $f8, $f16
    nop
    mul.s   $f10, $f14, $f0
    nop
    mul.s   $f4, $f20, $f18
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f2, $f24
    nop
    mul.s   $f10, $f12, $f22
    sub.s   $f4, $f8, $f10
    mul.s   $f8, $f26, $f4
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f2, $f0
    swc1    $f10, 0x0008(s0)           # 80120008
    lwc1    $f6, 0x0004(a1)            # 00000004
    mul.s   $f8, $f6, $f18
    lwc1    $f6, 0x0000(a1)            # 00000000
    add.s   $f10, $f4, $f8
    mul.s   $f4, $f12, $f6
    lwc1    $f8, 0x0008(a1)            # 00000008
    mul.s   $f6, $f14, $f8
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f26, $f8
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f12, $f0
    swc1    $f6, 0x0018(s0)            # 80120018
    lwc1    $f10, 0x0008(a1)           # 00000008
    mul.s   $f4, $f10, $f18
    lwc1    $f10, 0x0004(a1)           # 00000004
    add.s   $f6, $f8, $f4
    mul.s   $f8, $f14, $f10
    lwc1    $f4, 0x0000(a1)            # 00000000
    mul.s   $f10, $f2, $f4
    sub.s   $f4, $f8, $f10
    mul.s   $f8, $f26, $f4
    add.s   $f10, $f6, $f8
    beq     $zero, $zero, lbl_800AC6C8
    swc1    $f10, 0x0028(s0)           # 80120028
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_800AC548:
    lui     s0, 0x8012                 # s0 = 80120000
    lw      s0, 0x1204(s0)             # 80121204
    c.eq.s  $f20, $f4
    nop
    bc1tl   lbl_800AC680
    mtc1    $zero, $f0                 # $f0 = 0.00
    mov.s   $f12, $f20
    jal     func_800CF470
    sw      a1, 0x0044($sp)
    mov.s   $f26, $f0
    jal     func_800D2CD0
    mov.s   $f12, $f20
    lw      a1, 0x0044($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lwc1    $f20, 0x0000(a1)           # 00000000
    sub.s   $f16, $f18, $f0
    mul.s   $f6, $f20, $f20
    nop
    mul.s   $f8, $f6, $f16
    add.s   $f10, $f8, $f0
    swc1    $f10, 0x0000(s0)           # 80120000
    lwc1    $f22, 0x0004(a1)           # 00000004
    mul.s   $f4, $f22, $f22
    nop
    mul.s   $f6, $f4, $f16
    add.s   $f8, $f6, $f0
    swc1    $f8, 0x0014(s0)            # 80120014
    lwc1    $f24, 0x0008(a1)           # 00000008
    mul.s   $f10, $f24, $f24
    nop
    mul.s   $f4, $f10, $f16
    add.s   $f6, $f4, $f0
    mtc1    $zero, $f0                 # $f0 = 0.00
    swc1    $f6, 0x0028(s0)            # 80120028
    lwc1    $f8, 0x0000(a1)            # 00000000
    lwc1    $f4, 0x0004(a1)            # 00000004
    lwc1    $f6, 0x0008(a1)            # 00000008
    mul.s   $f10, $f8, $f16
    nop
    mul.s   $f2, $f10, $f4
    nop
    mul.s   $f12, $f6, $f26
    add.s   $f8, $f2, $f12
    sub.s   $f10, $f2, $f12
    swc1    $f8, 0x0004(s0)            # 80120004
    swc1    $f10, 0x0010(s0)           # 80120010
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f8, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x0004(a1)           # 00000004
    mul.s   $f6, $f4, $f16
    nop
    mul.s   $f2, $f6, $f8
    nop
    mul.s   $f12, $f10, $f26
    sub.s   $f4, $f2, $f12
    add.s   $f6, $f2, $f12
    swc1    $f4, 0x0008(s0)            # 80120008
    swc1    $f6, 0x0020(s0)            # 80120020
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f6, 0x0000(a1)            # 00000000
    mul.s   $f10, $f8, $f16
    swc1    $f18, 0x003C(s0)           # 8012003C
    swc1    $f0, 0x000C(s0)            # 8012000C
    swc1    $f0, 0x001C(s0)            # 8012001C
    swc1    $f0, 0x002C(s0)            # 8012002C
    swc1    $f0, 0x0030(s0)            # 80120030
    swc1    $f0, 0x0034(s0)            # 80120034
    mul.s   $f2, $f10, $f4
    swc1    $f0, 0x0038(s0)            # 80120038
    mul.s   $f12, $f6, $f26
    add.s   $f8, $f2, $f12
    sub.s   $f10, $f2, $f12
    swc1    $f8, 0x0018(s0)            # 80120018
    beq     $zero, $zero, lbl_800AC6C8
    swc1    $f10, 0x0024(s0)           # 80120024
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_800AC680:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    swc1    $f0, 0x0004(s0)            # 80120004
    swc1    $f0, 0x0008(s0)            # 80120008
    swc1    $f0, 0x000C(s0)            # 8012000C
    swc1    $f0, 0x0010(s0)            # 80120010
    swc1    $f0, 0x0018(s0)            # 80120018
    swc1    $f0, 0x001C(s0)            # 8012001C
    swc1    $f0, 0x0020(s0)            # 80120020
    swc1    $f0, 0x0024(s0)            # 80120024
    swc1    $f0, 0x002C(s0)            # 8012002C
    swc1    $f0, 0x0030(s0)            # 80120030
    swc1    $f0, 0x0034(s0)            # 80120034
    swc1    $f0, 0x0038(s0)            # 80120038
    swc1    $f18, 0x0000(s0)           # 80120000
    swc1    $f18, 0x0014(s0)           # 80120014
    swc1    $f18, 0x0028(s0)           # 80120028
    swc1    $f18, 0x003C(s0)           # 8012003C
lbl_800AC6C8:
    lw      $ra, 0x003C($sp)
lbl_800AC6CC:
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_800AC6E8:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      a3, 0x000C($sp)
    swc1    $f12, 0x0000(a0)           # 00000000
    swc1    $f0, 0x0004(a0)            # 00000004
    swc1    $f0, 0x0008(a0)            # 00000008
    swc1    $f0, 0x000C(a0)            # 0000000C
    swc1    $f0, 0x0010(a0)            # 00000010
    swc1    $f12, 0x0014(a0)           # 00000014
    swc1    $f0, 0x0018(a0)            # 00000018
    swc1    $f0, 0x001C(a0)            # 0000001C
    swc1    $f0, 0x0020(a0)            # 00000020
    swc1    $f0, 0x0024(a0)            # 00000024
    swc1    $f12, 0x0028(a0)           # 00000028
    swc1    $f0, 0x002C(a0)            # 0000002C
    swc1    $f14, 0x0030(a0)           # 00000030
    lwc1    $f4, 0x000C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    swc1    $f4, 0x0034(a0)            # 00000034
    lwc1    $f6, 0x0010($sp)
    swc1    $f8, 0x003C(a0)            # 0000003C
    swc1    $f6, 0x0038(a0)            # 00000038
    jr      $ra
    nop


func_800AC750:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0060($sp)
    sw      a3, 0x006C($sp)
    lwc1    $f4, 0x0070($sp)
    mfc1    a1, $f12
    mfc1    a2, $f14
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFC0
    lw      a3, 0x006C($sp)
    jal     func_800AC6E8
    swc1    $f4, 0x0010($sp)
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFC0
    jal     func_800D0730
    lw      a1, 0x0060($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_800AC7A0:
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f0                   # $f0 = 65536.00
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      a3, 0x000C($sp)
    mul.s   $f4, $f12, $f0
    nop
    mul.s   $f8, $f14, $f0
    trunc.w.s $f6, $f4
    trunc.w.s $f10, $f8
    mfc1    v1, $f6
    mfc1    t1, $f10
    srl     a1, v1, 16
    sh      a1, 0x0000(a0)             # 00000000
    srl     t9, t1, 16
    sh      a1, 0x000A(a0)             # 0000000A
    sh      a1, 0x0014(a0)             # 00000014
    sh      t9, 0x0018(a0)             # 00000018
    sh      v1, 0x0020(a0)             # 00000020
    sh      v1, 0x002A(a0)             # 0000002A
    sh      v1, 0x0034(a0)             # 00000034
    sh      t1, 0x0038(a0)             # 00000038
    lwc1    $f16, 0x000C($sp)
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    mul.s   $f18, $f16, $f0
    trunc.w.s $f4, $f18
    mfc1    t5, $f4
    nop
    srl     t4, t5, 16
    sh      t4, 0x001A(a0)             # 0000001A
    sh      t5, 0x003A(a0)             # 0000003A
    lwc1    $f6, 0x0010($sp)
    sh      $zero, 0x0002(a0)          # 00000002
    sh      $zero, 0x0004(a0)          # 00000004
    mul.s   $f8, $f6, $f0
    sh      $zero, 0x0006(a0)          # 00000006
    sh      $zero, 0x0008(a0)          # 00000008
    sh      $zero, 0x000C(a0)          # 0000000C
    sh      $zero, 0x000E(a0)          # 0000000E
    sh      $zero, 0x0010(a0)          # 00000010
    sh      $zero, 0x0012(a0)          # 00000012
    trunc.w.s $f10, $f8
    sh      $zero, 0x0016(a0)          # 00000016
    sh      t1, 0x001E(a0)             # 0000001E
    sh      $zero, 0x0022(a0)          # 00000022
    mfc1    t9, $f10
    sh      $zero, 0x0024(a0)          # 00000024
    sh      $zero, 0x0026(a0)          # 00000026
    srl     t8, t9, 16
    sh      t8, 0x001C(a0)             # 0000001C
    sh      $zero, 0x0028(a0)          # 00000028
    sh      $zero, 0x002C(a0)          # 0000002C
    sh      $zero, 0x002E(a0)          # 0000002E
    sh      $zero, 0x0030(a0)          # 00000030
    sh      $zero, 0x0032(a0)          # 00000032
    sh      $zero, 0x0036(a0)          # 00000036
    sh      $zero, 0x003E(a0)          # 0000003E
    sh      t9, 0x003C(a0)             # 0000003C
    jr      $ra
    nop


func_800AC890:
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f0                   # $f0 = 65536.00
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      a3, 0x000C($sp)
    mul.s   $f4, $f12, $f0
    nop
    mul.s   $f8, $f14, $f0
    trunc.w.s $f6, $f4
    trunc.w.s $f10, $f8
    mfc1    t9, $f6
    mfc1    t4, $f10
    srl     t8, t9, 16
    sh      t8, 0x0000(a0)             # 00000000
    srl     t3, t4, 16
    sh      t3, 0x000A(a0)             # 0000000A
    sh      t9, 0x0020(a0)             # 00000020
    sh      t4, 0x002A(a0)             # 0000002A
    lwc1    $f16, 0x000C($sp)
    mul.s   $f18, $f16, $f0
    trunc.w.s $f4, $f18
    mfc1    t8, $f4
    nop
    srl     t7, t8, 16
    sh      t7, 0x0014(a0)             # 00000014
    sh      t8, 0x0034(a0)             # 00000034
    lwc1    $f6, 0x0010($sp)
    mul.s   $f8, $f6, $f0
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    srl     t2, t3, 16
    sh      t2, 0x0018(a0)             # 00000018
    sh      t3, 0x0038(a0)             # 00000038
    lwc1    $f16, 0x0014($sp)
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    mul.s   $f18, $f16, $f0
    trunc.w.s $f4, $f18
    mfc1    t7, $f4
    nop
    srl     t6, t7, 16
    sh      t6, 0x001A(a0)             # 0000001A
    sh      t7, 0x003A(a0)             # 0000003A
    lwc1    $f6, 0x0018($sp)
    sh      $zero, 0x0002(a0)          # 00000002
    sh      $zero, 0x0004(a0)          # 00000004
    mul.s   $f8, $f6, $f0
    sh      $zero, 0x0006(a0)          # 00000006
    sh      $zero, 0x0008(a0)          # 00000008
    sh      $zero, 0x000C(a0)          # 0000000C
    sh      $zero, 0x000E(a0)          # 0000000E
    sh      $zero, 0x0010(a0)          # 00000010
    sh      $zero, 0x0012(a0)          # 00000012
    trunc.w.s $f10, $f8
    sh      $zero, 0x0016(a0)          # 00000016
    sh      t3, 0x001E(a0)             # 0000001E
    sh      $zero, 0x0022(a0)          # 00000022
    mfc1    t2, $f10
    sh      $zero, 0x0024(a0)          # 00000024
    sh      $zero, 0x0026(a0)          # 00000026
    srl     t1, t2, 16
    sh      t1, 0x001C(a0)             # 0000001C
    sh      $zero, 0x0028(a0)          # 00000028
    sh      $zero, 0x002C(a0)          # 0000002C
    sh      $zero, 0x002E(a0)          # 0000002E
    sh      $zero, 0x0030(a0)          # 00000030
    sh      $zero, 0x0032(a0)          # 00000032
    sh      $zero, 0x0036(a0)          # 00000036
    sh      $zero, 0x003E(a0)          # 0000003E
    sh      t2, 0x003C(a0)             # 0000003C
    jr      $ra
    nop


func_800AC9B0:
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f0                   # $f0 = 65536.00
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      a3, 0x000C($sp)
    mul.s   $f4, $f12, $f0
    sw      $zero, 0x0004(a0)          # 00000004
    sw      $zero, 0x0024(a0)          # 00000024
    mul.s   $f8, $f14, $f0
    sw      $zero, 0x000C(a0)          # 0000000C
    sw      $zero, 0x002C(a0)          # 0000002C
    sw      $zero, 0x0010(a0)          # 00000010
    trunc.w.s $f6, $f4
    trunc.w.s $f10, $f8
    mfc1    v0, $f6
    mfc1    v1, $f10
    sw      v0, 0x0000(a0)             # 00000000
    sll     t7, v0, 16
    srl     t9, v1, 16
    andi    t1, v1, 0xFFFF             # t1 = 00000000
    sh      $zero, 0x0002(a0)          # 00000002
    sw      t7, 0x0020(a0)             # 00000020
    sw      t9, 0x0008(a0)             # 00000008
    sw      t1, 0x0028(a0)             # 00000028
    lwc1    $f16, 0x000C($sp)
    sw      $zero, 0x0030(a0)          # 00000030
    mul.s   $f18, $f16, $f0
    trunc.w.s $f4, $f18
    mfc1    a1, $f4
    nop
    sw      a1, 0x0014(a0)             # 00000014
    sll     t3, a1, 16
    sh      $zero, 0x0016(a0)          # 00000016
    sw      t3, 0x0034(a0)             # 00000034
    lwc1    $f6, 0x0010($sp)
    mul.s   $f8, $f6, $f0
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    srl     t6, t7, 16
    sh      t6, 0x0018(a0)             # 00000018
    sh      t7, 0x0038(a0)             # 00000038
    lwc1    $f16, 0x0014($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    mul.s   $f18, $f16, $f0
    trunc.w.s $f4, $f18
    mfc1    t2, $f4
    nop
    srl     t1, t2, 16
    sh      t1, 0x001A(a0)             # 0000001A
    sh      t2, 0x003A(a0)             # 0000003A
    lwc1    $f6, 0x0018($sp)
    sh      t6, 0x001E(a0)             # 0000001E
    mul.s   $f8, $f6, $f0
    trunc.w.s $f10, $f8
    mfc1    t0, $f10
    nop
    srl     t5, t0, 16
    sll     t7, t0, 16
    sh      t5, 0x001C(a0)             # 0000001C
    sw      t7, 0x003C(a0)             # 0000003C
    jr      $ra
    nop
    nop
