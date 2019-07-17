.section .text
func_80A703D0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lui     a1, %hi(var_80A7068C)      # a1 = 80A70000
    addiu   a1, a1, %lo(var_80A7068C)  # a1 = 80A7068C
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0020($sp)
    jal     func_8004AB7C
    lw      a0, 0x002C($sp)
    lui     a3, %hi(var_80A70660)      # a3 = 80A70000
    lw      a1, 0x0020($sp)
    addiu   a3, a3, %lo(var_80A70660)  # a3 = 80A70660
    lw      a0, 0x002C($sp)
    jal     func_8004AC84
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41A0                 # a3 = 41A00000
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     a1, 0x3C23                 # a1 = 3C230000
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A70468:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A70494:
    lbu     t6, 0x0194(a0)             # 00000194
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80A704BC
    nop
    lbu     t8, 0x0195(a0)             # 00000195
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t9, t8, 0xFFFD             # t9 = 00000000
    jr      $ra
    sb      t9, 0x0195(a0)             # 00000195
lbl_80A704BC:
    jr      $ra
    nop


func_80A704C4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lh      t6, 0x01D0(s0)             # 000001D0
    lh      v0, 0x01D2(s0)             # 000001D2
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     v0, $zero, lbl_80A704F8
    sh      t7, 0x01D0(s0)             # 000001D0
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x01D2(s0)             # 000001D2
lbl_80A704F8:
    jal     func_80A70494
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80A7051C
    nop
    lh      t9, 0x01D2(s0)             # 000001D2
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3C23                 # a1 = 3C230000
    bne     t9, $zero, lbl_80A7052C
    nop
lbl_80A7051C:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A705A4
    lw      $ra, 0x0024($sp)
lbl_80A7052C:
    jal     func_80020F88
    ori     a1, a1, 0xD70A             # a1 = 0000D70A
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0028($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    sw      a1, 0x002C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0028($sp)
    lw      a1, 0x002C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0028($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    addiu   t0, $zero, 0x0007          # t0 = 00000007
    sw      t0, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      $ra, 0x0024($sp)
lbl_80A705A4:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80A705B4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x0EB0             # t2 = 06000EB0
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop

.section .data

var_80A70640: .word 0x01160500, 0x00000205, 0x010A0000, 0x000001D8
.word func_80A703D0
.word func_80A70468
.word func_80A704C4
.word func_80A705B4
var_80A70660: .word \
0x01110900, 0x01000000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x000A0004, 0xFFFE0000, 0x00000000
var_80A7068C: .word \
0x801F0002, 0x304C001E, 0x00000000, 0x00000000, \
0x00000000

.section .rodata


