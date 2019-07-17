.section .text
func_808B6C50:
    sw      a1, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_808B6C5C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(var_808B6EE0)      # a1 = 808B0000
    sw      $zero, 0x0024($sp)
    addiu   a1, a1, %lo(var_808B6EE0)  # a1 = 808B6EE0
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0350             # a0 = 06000350
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, %hi(func_808B6D28)     # a1 = 808B0000
    addiu   a1, a1, %lo(func_808B6D28) # a1 = 808B6D28
    jal     func_808B6C50
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808B6CF4:
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


func_808B6D28:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f2                   # $f2 = -1.00
    lui     $at, %hi(var_808B6EF0)     # $at = 808B0000
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    lwc1    $f14, %lo(var_808B6EF0)($at)
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lwc1    $f6, 0x0140(s0)            # 00000140
    lwc1    $f4, 0x0068(s0)            # 00000068
    mfc1    a2, $f14
    mul.s   $f8, $f6, $f14
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   a0, s0, 0x0068             # a0 = 00000068
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808B6D8C
    mtc1    $at, $f12                  # $f12 = 1.00
    beq     $zero, $zero, lbl_808B6DB0
    swc1    $f2, 0x0068(s0)            # 00000068
    mtc1    $at, $f12                  # $f12 = 1.00
lbl_808B6D8C:
    nop
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_808B6DAC
    mov.s   $f2, $f0
    beq     $zero, $zero, lbl_808B6DAC
    mov.s   $f2, $f12
    mov.s   $f2, $f0
lbl_808B6DAC:
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_808B6DB0:
    jal     func_8006385C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lh      t6, 0x0148(s0)             # 00000148
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002121C
    sh      t6, 0x0032(s0)             # 00000032
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    addiu   t7, $zero, 0x001D          # t7 = 0000001D
    sw      t7, 0x0014($sp)
    mfc1    a3, $f0
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41A0                 # a2 = 41A00000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808B6E04:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    jal     func_80021928
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B6E34:
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
    addiu   t2, t2, 0x0000             # t2 = 06000000
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

var_808B6EC0: .word 0x002C0100, 0x00000000, 0x00030000, 0x00000158
.word func_808B6C5C
.word func_808B6CF4
.word func_808B6E04
.word func_808B6E34
var_808B6EE0: .word 0x386CF830, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_808B6EF0: .word 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000

