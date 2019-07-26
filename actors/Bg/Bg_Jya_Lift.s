.section .text
func_80AC50C0:
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


func_80AC5118:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sb      $zero, 0x015A(s0)          # 0000015A
    lui     t6, %hi(var_80AC5530)      # t6 = 80AC0000
    lh      t6, %lo(var_80AC5530)(t6)
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    beq     t6, $zero, lbl_80AC5158
    lui     a2, 0x0601                 # a2 = 06010000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AC51C4
    lw      $ra, 0x001C($sp)
lbl_80AC5158:
    addiu   a2, a2, 0xD7E8             # a2 = FFFFD7E8
    jal     func_80AC50C0
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_80AC5554)      # a1 = 80AC0000
    addiu   a1, a1, %lo(var_80AC5554)  # a1 = 80AC5554
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80AC519C
    nop
    jal     func_80AC53F8
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AC51A8
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
lbl_80AC519C:
    jal     func_80AC5218
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
lbl_80AC51A8:
    sb      t7, 0x0003(s0)             # 00000003
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, %hi(var_80AC5530)     # $at = 80AC0000
    sh      t8, %lo(var_80AC5530)($at)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x015A(s0)             # 0000015A
    lw      $ra, 0x001C($sp)
lbl_80AC51C4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AC51D4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lbu     t6, 0x015A(a3)             # 0000015A
    lui     $at, %hi(var_80AC5530)     # $at = 80AC0000
    beql    t6, $zero, lbl_80AC520C
    lw      $ra, 0x0014($sp)
    lw      a0, 0x001C($sp)
    sh      $zero, %lo(var_80AC5530)($at)
    lw      a2, 0x013C(a3)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      $ra, 0x0014($sp)
lbl_80AC520C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AC5218:
    lui     t6, %hi(func_80AC523C)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC523C) # t6 = 80AC523C
    sw      t6, 0x0154(a0)             # 00000154
    lui     $at, %hi(var_80AC5570)     # $at = 80AC0000
    lwc1    $f4, %lo(var_80AC5570)($at)
    sh      $zero, 0x0158(a0)          # 00000158
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra
    nop


func_80AC523C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      a1, 0x001C(a3)             # 0000001C
    sw      a3, 0x0020($sp)
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    bne     v0, $zero, lbl_80AC5274
    lw      a3, 0x0020($sp)
    lh      t6, 0x0158(a3)             # 00000158
    blezl   t6, lbl_80AC52B4
    lw      $ra, 0x001C($sp)
lbl_80AC5274:
    lh      t7, 0x0158(a3)             # 00000158
    addiu   a1, $zero, 0x0D66          # a1 = 00000D66
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0158(a3)             # 00000158
    lh      t9, 0x0158(a3)             # 00000158
    lw      a0, 0x0024($sp)
    slti    $at, t9, 0x0014
    bnel    $at, $zero, lbl_80AC52B4
    lw      $ra, 0x001C($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8006B6FC
    sw      a3, 0x0020($sp)
    jal     func_80AC52C0
    lw      a0, 0x0020($sp)
    lw      $ra, 0x001C($sp)
lbl_80AC52B4:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AC52C0:
    lui     t6, %hi(func_80AC52D4)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC52D4) # t6 = 80AC52D4
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80AC52D4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a1, 0x4080                 # a1 = 40800000
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lui     $at, %hi(var_80AC5574)     # $at = 80AC0000
    lwc1    $f12, %lo(var_80AC5574)($at)
    lwc1    $f2, 0x0060(s0)            # 00000060
    lui     a1, 0x4473                 # a1 = 44730000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    c.lt.s  $f2, $f12
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0x4000             # a1 = 44734000
    addiu   a0, s0, 0x0028             # a0 = 00000028
    bc1fl   lbl_80AC5340
    mov.s   $f0, $f2
    b       lbl_80AC5340
    mov.s   $f0, $f12
    mov.s   $f0, $f2
lbl_80AC5340:
    mfc1    a3, $f0
    jal     func_80064178
    swc1    $f12, 0x0010($sp)
    lui     $at, 0x44B4                # $at = 44B40000
    mtc1    $at, $f12                  # $f12 = 1440.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    mov.s   $f2, $f0
    c.lt.s  $f6, $f12
    nop
    bc1f    lbl_80AC53A0
    nop
    lwc1    $f8, 0x0104(s0)            # 00000104
    lw      v0, 0x0034($sp)
    c.le.s  $f12, $f8
    nop
    bc1f    lbl_80AC53A0
    nop
    lh      t6, 0x07A0(v0)             # 000007A0
    sll     t7, t6,  2
    addu    t8, v0, t7
    lw      a0, 0x0790(t8)             # 00000790
    jal     func_80049DB4
    swc1    $f2, 0x002C($sp)
    lwc1    $f2, 0x002C($sp)
lbl_80AC53A0:
    lui     $at, %hi(var_80AC5578)     # $at = 80AC0000
    lwc1    $f10, %lo(var_80AC5578)($at)
    abs.s   $f0, $f2
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_80AC53DC
    nop
    jal     func_80AC53F8
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x287A          # a1 = 0000287A
    b       lbl_80AC53E8
    lw      $ra, 0x0024($sp)
lbl_80AC53DC:
    jal     func_8002313C
    addiu   a1, $zero, 0x200C          # a1 = 0000200C
    lw      $ra, 0x0024($sp)
lbl_80AC53E8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AC53F8:
    sw      $zero, 0x0154(a0)          # 00000154
    lui     $at, %hi(var_80AC557C)     # $at = 80AC0000
    lwc1    $f4, %lo(var_80AC557C)($at)
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra
    nop


func_80AC5410:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      v0, 0x0154(a2)             # 00000154
    or      a0, a2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80AC5448
    lbu     v0, 0x0150(a2)             # 00000150
    jalr    $ra, v0
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lbu     v0, 0x0150(a2)             # 00000150
lbl_80AC5448:
    andi    v1, v0, 0x0004             # v1 = 00000000
    beq     v1, $zero, lbl_80AC5480
    nop
    lbu     t6, 0x015B(a2)             # 0000015B
    addiu   a1, $zero, 0x003F          # a1 = 0000003F
    andi    t7, t6, 0x0004             # t7 = 00000000
    bne     t7, $zero, lbl_80AC5480
    nop
    lw      a0, 0x0790(s0)             # 00000790
    jal     func_800495BC
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    b       lbl_80AC54C0
    lbu     v0, 0x0150(a2)             # 00000150
lbl_80AC5480:
    bnel    v1, $zero, lbl_80AC54C4
    lui     v1, 0x0001                 # v1 = 00010000
    lbu     t8, 0x015B(a2)             # 0000015B
    andi    t9, t8, 0x0004             # t9 = 00000000
    beql    t9, $zero, lbl_80AC54C4
    lui     v1, 0x0001                 # v1 = 00010000
    lw      a0, 0x0790(s0)             # 00000790
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lh      t0, 0x0142(a0)             # 00000142
    bnel    t0, $at, lbl_80AC54C4
    lui     v1, 0x0001                 # v1 = 00010000
    jal     func_800495BC
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lbu     v0, 0x0150(a2)             # 00000150
lbl_80AC54C0:
    lui     v1, 0x0001                 # v1 = 00010000
lbl_80AC54C4:
    sb      v0, 0x015B(a2)             # 0000015B
    addu    v1, v1, s0
    lb      v1, 0x1CBC(v1)             # 00011CBC
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v1, $at, lbl_80AC54EC
    addiu   $at, $zero, 0x0019         # $at = 00000019
    beql    v1, $at, lbl_80AC54F0
    lw      $ra, 0x001C($sp)
    jal     func_80020EB4
    or      a0, a2, $zero              # a0 = 00000000
lbl_80AC54EC:
    lw      $ra, 0x001C($sp)
lbl_80AC54F0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AC5500:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xCCE0             # a1 = 0600CCE0
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop

.section .data

var_80AC5530: .word 0x00000000
var_80AC5534: .word 0x01570100, 0x00000010, 0x00F10000, 0x0000015C
.word func_80AC5118
.word func_80AC51D4
.word func_80AC5410
.word func_80AC5500
var_80AC5554: .word \
0xC8500064, 0xB0F40578, 0xB0F80708, 0x30FC09C4, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80AC5570: .word 0x44C9A000
var_80AC5574: .word 0x3E4CCCCD
var_80AC5578: .word 0x3A83126F
var_80AC557C: .word 0x44734000

