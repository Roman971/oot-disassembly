.section .text
func_80A85850:
    sw      a1, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80A8585C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      $zero, 0x0018($sp)
    lw      a0, 0x0020($sp)
    jal     func_80035260
    or      a1, a3, $zero              # a1 = 00000000
    lw      a0, 0x0028($sp)
    jal     func_80033EF4
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF8
    lw      a0, 0x0024($sp)
    lw      a2, 0x0020($sp)
    lw      a3, 0x0018($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0020($sp)
    sw      v0, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80A858B4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x0360             # a2 = 06000360
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A8585C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A85B7C)      # a1 = 80A80000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    sll     t8, t7,  2
    addu    a1, a1, t8
    jal     func_80020F88
    lw      a1, %lo(var_80A85B7C)(a1)
    lui     a1, %hi(var_80A85B70)      # a1 = 80A80000
    addiu   a1, a1, %lo(var_80A85B70)  # a1 = 80A85B70
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    sra     t0, t9,  8
    andi    t1, t0, 0x000F             # t1 = 00000000
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f0, $f4
    add.s   $f6, $f0, $f0
    jal     func_80A85978
    swc1    $f6, 0x015C(s0)            # 0000015C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A85944:
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


func_80A85978:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a1, %hi(func_80A8599C)     # a1 = 80A80000
    jal     func_80A85850
    addiu   a1, a1, %lo(func_80A8599C) # a1 = 80A8599C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A8599C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     t6, 0x0150(a0)             # 00000150
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80A85A30
    lw      $ra, 0x0014($sp)
    lbu     t8, 0x0160(a0)             # 00000160
    andi    t9, t8, 0x0002             # t9 = 00000000
    bnel    t9, $zero, lbl_80A85A30
    lw      $ra, 0x0014($sp)
    lwc1    $f12, 0x000C(a0)           # 0000000C
    lwc1    $f4, 0x0028(a0)            # 00000028
    lui     $at, %hi(var_80A85B90)     # $at = 80A80000
    lwc1    $f6, %lo(var_80A85B90)($at)
    sub.s   $f2, $f4, $f12
    abs.s   $f0, $f2
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_80A85A24
    swc1    $f12, 0x0158(a0)           # 00000158
    lh      t0, 0x001C(a0)             # 0000001C
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f16                  # $f16 = 80.00
    sra     t1, t0, 12
    andi    t2, t1, 0x000F             # t2 = 00000000
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f18, $f10, $f16
    add.s   $f4, $f12, $f18
    beq     $zero, $zero, lbl_80A85A24
    swc1    $f4, 0x0158(a0)            # 00000158
    swc1    $f12, 0x0158(a0)           # 00000158
lbl_80A85A24:
    jal     func_80A85A3C
    nop
    lw      $ra, 0x0014($sp)
lbl_80A85A30:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A85A3C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a1, %hi(func_80A85A60)     # a1 = 80A80000
    jal     func_80A85850
    addiu   a1, a1, %lo(func_80A85A60) # a1 = 80A85A60
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A85A60:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      a1, 0x0158(s0)             # 00000158
    lw      a3, 0x015C(s0)             # 0000015C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lui     $at, %hi(var_80A85B94)     # $at = 80A80000
    lwc1    $f6, %lo(var_80A85B94)($at)
    abs.s   $f0, $f0
    addiu   a1, $zero, 0x2815          # a1 = 00002815
    c.lt.s  $f0, $f6
    or      a0, s0, $zero              # a0 = 00000000
    bc1f    lbl_80A85AC8
    nop
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A85978
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A85AD4
    lw      $ra, 0x0024($sp)
lbl_80A85AC8:
    jal     func_80022FD0
    addiu   a1, $zero, 0x201E          # a1 = 0000201E
    lw      $ra, 0x0024($sp)
lbl_80A85AD4:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A85AE4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0154(a0)             # 00000154
    beql    v0, $zero, lbl_80A85B08
    lbu     t6, 0x0150(a0)             # 00000150
    jalr    $ra, v0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lbu     t6, 0x0150(a0)             # 00000150
lbl_80A85B08:
    sb      t6, 0x0160(a0)             # 00000160
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80A85B18:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0180             # a1 = 06000180
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop

.section .data

var_80A85B50: .word 0x012B0100, 0x00000000, 0x011B0000, 0x00000164
.word func_80A858B4
.word func_80A85944
.word func_80A85AE4
.word func_80A85B18
var_80A85B70: .word 0xB0F407D0, 0xB0F80258, 0x30FC07D0
var_80A85B7C: .word \
0x3DCCCCCD, 0x3D4CCCCD, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_80A85B90: .word 0x3DCCCCCD
var_80A85B94: .word 0x3A83126F, 0x00000000, 0x00000000

