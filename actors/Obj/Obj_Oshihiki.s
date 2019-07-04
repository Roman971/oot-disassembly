.section .text
func_80A4EFC0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
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
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A4F018:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    nop
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f8, 0x0000(a1)            # 00000000
    mul.s   $f6, $f4, $f12
    nop
    mul.s   $f10, $f8, $f14
    add.s   $f16, $f6, $f10
    swc1    $f16, 0x0000(a0)           # 00000000
    lwc1    $f18, 0x0004(a1)           # 00000004
    swc1    $f18, 0x0004(a0)           # 00000004
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f6, 0x0000(a1)            # 00000000
    mul.s   $f8, $f4, $f14
    nop
    mul.s   $f10, $f6, $f12
    sub.s   $f16, $f8, $f10
    swc1    $f16, 0x0008(a0)           # 00000008
    jr      $ra
    nop


func_80A4F06C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x01AE(a0)             # 000001AE
    beq     t6, $zero, lbl_80A4F088
    nop
    beq     $zero, $zero, lbl_80A4F0E0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A4F088:
    jal     func_80079AF8
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    or      v1, v0, $zero              # v1 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t7, 0x001C(a0)             # 0000001C
    andi    t8, t7, 0x000F             # t8 = 00000000
    sltiu   $at, t8, 0x0008
    beq     $at, $zero, lbl_80A4F0E0
    sll     t8, t8,  2
    lui     $at, %hi(var_80A507F0)     # $at = 80A50000
    addu    $at, $at, t8
    lw      t8, %lo(var_80A507F0)($at)
    jr      t8
    nop
var_80A4F0C4:
    beq     $zero, $zero, lbl_80A4F0E0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
var_80A4F0CC:
    beq     $zero, $zero, lbl_80A4F0E0
    slt     v0, $zero, v1
var_80A4F0D4:
    slti    v0, v1, 0x0002
    beq     $zero, $zero, lbl_80A4F0E0
    xori    v0, v0, 0x0001             # v0 = 00000000
lbl_80A4F0E0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A4F0F0:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    sll     t6, v0,  2
    sw      a1, 0x0170(a0)             # 00000170
    addu    v1, a0, t6
    sw      a1, 0x0174(v1)             # 00000174
    sw      a1, 0x0178(v1)             # 00000178
    sw      a1, 0x017C(v1)             # 0000017C
    sw      a1, 0x0170(v1)             # 00000170
    jr      $ra
    nop


func_80A4F11C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x01AC(a0)             # 000001AC
    addiu   $at, $zero, 0x0032         # $at = 00000032
    sll     t7, t6,  2
    addu    t8, a0, t7
    lw      a2, 0x0170(t8)             # 00000170
    beql    a2, $at, lbl_80A4F19C
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f4, 0x0080(a0)            # 00000080
    lwc1    $f6, 0x0028(a0)            # 00000028
    lui     $at, %hi(var_80A50810)     # $at = 80A50000
    lwc1    $f8, %lo(var_80A50810)($at)
    sub.s   $f0, $f4, $f6
    addiu   a0, a3, 0x07C0             # a0 = 000007C0
    abs.s   $f0, $f0
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_80A4F19C
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_80031464
    or      a1, a2, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80A4F19C
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t9, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    t9, $at, lbl_80A4F19C
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_80A4F1A0
    lw      $ra, 0x0014($sp)
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A4F19C:
    lw      $ra, 0x0014($sp)
lbl_80A4F1A0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A4F1AC:
    lwc1    $f0, 0x0008(a0)            # 00000008
    lwc1    $f2, 0x0024(a0)            # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80A4F214
    sub.s   $f10, $f0, $f2
    sub.s   $f4, $f2, $f0
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    nop
    c.le.s  $f12, $f4
    nop
    bc1fl   lbl_80A4F250
    lwc1    $f0, 0x0010(a0)            # 00000010
    add.s   $f6, $f0, $f12
lbl_80A4F1EC:
    swc1    $f6, 0x0008(a0)            # 00000008
    lwc1    $f0, 0x0008(a0)            # 00000008
    sub.s   $f8, $f2, $f0
    c.le.s  $f12, $f8
    nop
    bc1tl   lbl_80A4F1EC
    add.s   $f6, $f0, $f12
    beq     $zero, $zero, lbl_80A4F250
    lwc1    $f0, 0x0010(a0)            # 00000010
    sub.s   $f10, $f0, $f2
lbl_80A4F214:
    mtc1    $at, $f12                  # $f12 = 20.00
    nop
    c.le.s  $f12, $f10
    nop
    bc1fl   lbl_80A4F250
    lwc1    $f0, 0x0010(a0)            # 00000010
    sub.s   $f16, $f0, $f12
lbl_80A4F230:
    swc1    $f16, 0x0008(a0)           # 00000008
    lwc1    $f0, 0x0008(a0)            # 00000008
    sub.s   $f18, $f0, $f2
    c.le.s  $f12, $f18
    nop
    bc1tl   lbl_80A4F230
    sub.s   $f16, $f0, $f12
    lwc1    $f0, 0x0010(a0)            # 00000010
lbl_80A4F250:
    lwc1    $f2, 0x002C(a0)            # 0000002C
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80A4F2A4
    sub.s   $f10, $f0, $f2
    sub.s   $f4, $f2, $f0
    c.le.s  $f12, $f4
    nop
    bc1f    lbl_80A4F2D4
    nop
    add.s   $f6, $f0, $f12
lbl_80A4F27C:
    swc1    $f6, 0x0010(a0)            # 00000010
    lwc1    $f0, 0x0010(a0)            # 00000010
    sub.s   $f8, $f2, $f0
    c.le.s  $f12, $f8
    nop
    bc1tl   lbl_80A4F27C
    add.s   $f6, $f0, $f12
    jr      $ra
    nop
lbl_80A4F2A0:
    sub.s   $f10, $f0, $f2
lbl_80A4F2A4:
    c.le.s  $f12, $f10
    nop
    bc1f    lbl_80A4F2D4
    nop
    sub.s   $f16, $f0, $f12
lbl_80A4F2B8:
    swc1    $f16, 0x0010(a0)           # 00000010
    lwc1    $f0, 0x0010(a0)            # 00000010
    sub.s   $f18, $f0, $f2
    c.le.s  $f12, $f18
    nop
    bc1tl   lbl_80A4F2B8
    sub.s   $f16, $f0, $f12
lbl_80A4F2D4:
    jr      $ra
    nop


func_80A4F2DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    bnel    a3, $zero, lbl_80A4F2FC
    lh      t6, 0x0000(a3)             # 00000000
    beq     $zero, $zero, lbl_80A4F398
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t6, 0x0000(a3)             # 00000000
lbl_80A4F2FC:
    addiu   $at, $zero, 0x012A         # $at = 0000012A
    bnel    t6, $at, lbl_80A4F398
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      v0, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x0020         # $at = 00000020
    sra     a1, v0,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    sll     a1, a1, 16
    andi    v1, v0, 0x0033             # v1 = 00000001
    beq     v1, $at, lbl_80A4F33C
    sra     a1, a1, 16
    addiu   $at, $zero, 0x0030         # $at = 00000030
    beql    v1, $at, lbl_80A4F36C
    lh      t0, 0x001C(a0)             # 0000001C
    beq     $zero, $zero, lbl_80A4F398
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A4F33C:
    lh      t7, 0x001C(a0)             # 0000001C
    sra     t8, t7,  8
    andi    t9, t8, 0x003F             # t9 = 00000000
    bnel    a1, t9, lbl_80A4F398
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jal     func_8002049C
    or      a0, a2, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80A4F398
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80A4F398
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t0, 0x001C(a0)             # 0000001C
lbl_80A4F36C:
    sra     t1, t0,  8
    andi    t2, t1, 0x003F             # t2 = 00000000
    bnel    a1, t2, lbl_80A4F398
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jal     func_8002049C
    or      a0, a2, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_80A4F398
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80A4F398
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A4F398:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A4F3A8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    andi    t7, t6, 0x000F             # t7 = 00000000
    sltiu   $at, t7, 0x0008
    beq     $at, $zero, lbl_80A4F3E8
    sll     t7, t7,  2
    lui     $at, %hi(var_80A50814)     # $at = 80A50000
    addu    $at, $at, t7
    lw      t7, %lo(var_80A50814)($at)
    jr      t7
    nop
var_80A4F3D8:
    lui     a2, 0x0500                 # a2 = 05000000
    addiu   a2, a2, 0x4E98             # a2 = 05004E98
    jal     func_80A4EFC0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80A4F3E8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A4F3F8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    lui     a1, %hi(var_80A506C0)      # a1 = 80A50000
    andi    t7, t6, 0x000F             # t7 = 00000000
    sll     t8, t7,  2
    addu    a1, a1, t8
    jal     func_80020F88
    lw      a1, %lo(var_80A506C0)(a1)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A4F430:
    sw      a1, 0x0004($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    andi    t7, t6, 0x000F             # t7 = 00000000
    sltiu   $at, t7, 0x0008
    beq     $at, $zero, lbl_80A4F488
    sll     t7, t7,  2
    lui     $at, %hi(var_80A50834)     # $at = 80A50000
    addu    $at, $at, t7
    lw      t7, %lo(var_80A50834)($at)
    jr      t7
    nop
var_80A4F45C:
    lui     t8, 0x0500                 # t8 = 05000000
    addiu   t8, t8, 0x3350             # t8 = 05003350
    jr      $ra
    sw      t8, 0x01BC(a0)             # 000001BC


func_80A4F46C:
    lui     t9, 0x0500                 # t9 = 05000000
    addiu   t9, t9, 0x3B50             # t9 = 05003B50
    jr      $ra
    sw      t9, 0x01BC(a0)             # 000001BC


func_80A4F47C:
    lui     t0, 0x0500                 # t0 = 05000000
    addiu   t0, t0, 0x4350             # t0 = 05004350
    sw      t0, 0x01BC(a0)             # 000001BC
lbl_80A4F488:
    jr      $ra
    nop


func_80A4F490:
    lh      v0, 0x001C(a0)             # 0000001C
    lui     v1, %hi(var_80A5074C)      # v1 = 80A50000
    addiu   v1, v1, %lo(var_80A5074C)  # v1 = 80A5074C
    sra     v0, v0,  6
    andi    v0, v0, 0x0003             # v0 = 00000000
    sll     v0, v0, 16
    sra     v0, v0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    lh      a3, 0x00A4(a1)             # 000000A4
    addiu   t0, $zero, 0x0009          # t0 = 00000009
lbl_80A4F4B8:
    lh      t6, 0x0000(v1)             # 80A5074C
    beql    a3, t6, lbl_80A4F4D4
    slti    $at, a2, 0x0009
    addiu   a2, a2, 0x0001             # a2 = 00000001
    bne     a2, t0, lbl_80A4F4B8
    addiu   v1, v1, 0x0002             # v1 = 80A5074E
    slti    $at, a2, 0x0009
lbl_80A4F4D4:
    bne     $at, $zero, lbl_80A4F4F4
    sll     t8, a2,  2
    addiu   v1, a0, 0x01C0             # v1 = 000001C0
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    sb      v0, 0x0002(v1)             # 000001C2
    sb      v0, 0x0001(v1)             # 000001C1
    jr      $ra
    sb      v0, 0x0000(v1)             # 000001C0
lbl_80A4F4F4:
    subu    t8, t8, a2
    sll     t9, v0,  2
    subu    t9, t9, v0
    sll     t8, t8,  2
    lui     t2, %hi(var_80A506E0)      # t2 = 80A50000
    addiu   t2, t2, %lo(var_80A506E0)  # t2 = 80A506E0
    addu    t1, t8, t9
    addu    a1, t1, t2
    lbu     t3, 0x0000(a1)             # 00000000
    addiu   v1, a0, 0x01C0             # v1 = 000001C0
    sb      t3, 0x0000(v1)             # 000001C0
    lbu     t4, 0x0001(a1)             # 00000001
    sb      t4, 0x0001(v1)             # 000001C1
    lbu     t5, 0x0002(a1)             # 00000002
    sb      t5, 0x0002(v1)             # 000001C2
    jr      $ra
    nop


func_80A4F538:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A4F3A8
    lw      a1, 0x0024($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    sra     v0, v0,  8
    andi    v1, v0, 0x00FF             # v1 = 00000000
    bltz    v1, lbl_80A4F5FC
    slti    $at, v1, 0x0040
    beq     $at, $zero, lbl_80A4F5FC
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    andi    a1, v0, 0x003F             # a1 = 00000000
    beql    v0, $zero, lbl_80A4F5C4
    lh      v0, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    v0, v0, 0x000F             # v0 = 00000000
    beq     v0, $zero, lbl_80A4F5B0
    nop
    beq     v0, $at, lbl_80A4F5B0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A4F5B0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v0, $at, lbl_80A4F600
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A4F5B0:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A4F650
    lw      $ra, 0x001C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80A4F5C4:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    andi    v0, v0, 0x000F             # v0 = 00000000
    beq     v0, $at, lbl_80A4F5EC
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80A4F5EC
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_80A4F5EC
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    v0, $at, lbl_80A4F600
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A4F5EC:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A4F650
    lw      $ra, 0x001C($sp)
lbl_80A4F5FC:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A4F600:
    jal     func_80A4F3F8
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A4F430
    lw      a1, 0x0024($sp)
    lui     a1, %hi(var_80A50760)      # a1 = 80A50000
    addiu   a1, a1, %lo(var_80A50760)  # a1 = 80A50760
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sb      t6, 0x00AE(s0)             # 000000AE
    lw      a1, 0x0024($sp)
    jal     func_80A4F490
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A4F0F0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A4FEDC
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
lbl_80A4F650:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A4F660:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A4F694:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lui     $at, 0x4120                # $at = 41200000
    lui     s1, %hi(var_80A5076C)      # s1 = 80A50000
    lui     s8, %hi(var_80A507A8)      # s8 = 80A50000
    mtc1    $at, $f20                  # $f20 = 10.00
    mtc1    $zero, $f22                # $f22 = 0.00
    addiu   s8, s8, %lo(var_80A507A8)  # s8 = 80A507A8
    addiu   s1, s1, %lo(var_80A5076C)  # s1 = 80A5076C
    addiu   s6, a1, 0x07C0             # s6 = 000007C0
    or      s2, s0, $zero              # s2 = 00000000
    addiu   s3, s0, 0x0184             # s3 = 00000184
    addiu   s4, s0, 0x0170             # s4 = 00000170
    addiu   s7, $sp, 0x0074            # s7 = FFFFFFE4
    addiu   s5, $sp, 0x0080            # s5 = FFFFFFF0
lbl_80A4F700:
    lwc1    $f6, 0x0050(s0)            # 00000050
    lwc1    $f4, 0x0000(s1)            # 80A5076C
    lwc1    $f16, 0x0004(s1)           # 80A50770
    mul.s   $f8, $f6, $f20
    or      a0, s5, $zero              # a0 = FFFFFFF0
    or      a1, s7, $zero              # a1 = FFFFFFE4
    mul.s   $f10, $f4, $f8
    lwc1    $f8, 0x0008(s1)            # 80A50774
    swc1    $f10, 0x0074($sp)
    lwc1    $f18, 0x0054(s0)           # 00000054
    mul.s   $f6, $f18, $f20
    nop
    mul.s   $f4, $f16, $f6
    swc1    $f4, 0x0078($sp)
    lwc1    $f10, 0x0058(s0)           # 00000058
    mul.s   $f18, $f10, $f20
    nop
    mul.s   $f16, $f8, $f18
    swc1    $f16, 0x007C($sp)
    lw      a3, 0x0160(s0)             # 00000160
    jal     func_80A4F018
    lw      a2, 0x015C(s0)             # 0000015C
    lwc1    $f6, 0x0080($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0084($sp)
    or      a0, s6, $zero              # a0 = 000007C0
    add.s   $f10, $f6, $f4
    lwc1    $f6, 0x0088($sp)
    or      a1, s3, $zero              # a1 = 00000184
    or      a2, s4, $zero              # a2 = 00000170
    swc1    $f10, 0x0080($sp)
    lwc1    $f18, 0x0104(s0)           # 00000104
    or      a3, s0, $zero              # a3 = 00000000
    add.s   $f16, $f8, $f18
    swc1    $f16, 0x0084($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    swc1    $f22, 0x0014($sp)
    sw      s5, 0x0010($sp)
    add.s   $f10, $f6, $f4
    jal     func_8002F578
    swc1    $f10, 0x0088($sp)
    addiu   s1, s1, 0x000C             # s1 = 80A50778
    addiu   s2, s2, 0x0004             # s2 = 00000004
    addiu   s3, s3, 0x0004             # s3 = 00000188
    addiu   s4, s4, 0x0004             # s4 = 00000174
    bne     s1, s8, lbl_80A4F700
    swc1    $f0, 0x0194(s2)            # 00000198
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    lw      s5, 0x0044($sp)
    lw      s6, 0x0048($sp)
    lw      s7, 0x004C($sp)
    lw      s8, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_80A4F7F4:
    addiu   v0, a0, 0x0004             # v0 = 00000004
    lwc1    $f0, 0x0198(v0)            # 0000019C
    lwc1    $f2, 0x0198(a0)            # 00000198
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80A4F824
    lw      t6, 0x0170(v0)             # 00000174
    beq     $zero, $zero, lbl_80A4F850
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lw      t6, 0x0170(v0)             # 00000174
lbl_80A4F824:
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    lui     $at, %hi(var_80A50854)     # $at = 80A50000
    bnel    a1, t6, lbl_80A4F854
    sll     t7, v1,  2
    sub.s   $f4, $f0, $f2
    lwc1    $f12, %lo(var_80A50854)($at)
    c.lt.s  $f12, $f4
    nop
    bc1fl   lbl_80A4F854
    sll     t7, v1,  2
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80A4F850:
    sll     t7, v1,  2
lbl_80A4F854:
    addu    t8, a0, t7
    lwc1    $f0, 0x0198(t8)            # 00000198
    lwc1    $f2, 0x019C(v0)            # 000001A0
    lui     $at, %hi(var_80A50858)     # $at = 80A50000
    lwc1    $f12, %lo(var_80A50858)($at)
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80A4F888
    lw      t9, 0x0174(v0)             # 00000178
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    beq     $zero, $zero, lbl_80A4F8AC
    lwc1    $f0, 0x01A0(a0)            # 000001A0
    lw      t9, 0x0174(v0)             # 00000178
lbl_80A4F888:
    bnel    a1, t9, lbl_80A4F8B0
    lwc1    $f2, 0x01A0(v0)            # 000001A4
    sub.s   $f6, $f2, $f0
    c.lt.s  $f12, $f6
    nop
    bc1fl   lbl_80A4F8B0
    lwc1    $f2, 0x01A0(v0)            # 000001A4
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    lwc1    $f0, 0x01A0(a0)            # 000001A0
lbl_80A4F8AC:
    lwc1    $f2, 0x01A0(v0)            # 000001A4
lbl_80A4F8B0:
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80A4F8D0
    lw      t0, 0x0178(v0)             # 0000017C
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    beq     $zero, $zero, lbl_80A4F8F4
    lwc1    $f0, 0x01A4(a0)            # 000001A4
    lw      t0, 0x0178(v0)             # 0000017C
lbl_80A4F8D0:
    bnel    a1, t0, lbl_80A4F8F8
    lwc1    $f2, 0x01A4(v0)            # 000001A8
    sub.s   $f8, $f2, $f0
    c.lt.s  $f12, $f8
    nop
    bc1fl   lbl_80A4F8F8
    lwc1    $f2, 0x01A4(v0)            # 000001A8
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    lwc1    $f0, 0x01A4(a0)            # 000001A4
lbl_80A4F8F4:
    lwc1    $f2, 0x01A4(v0)            # 000001A8
lbl_80A4F8F8:
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80A4F914
    lw      t1, 0x017C(v0)             # 00000180
    beq     $zero, $zero, lbl_80A4F934
    addiu   v1, $zero, 0x0004          # v1 = 00000004
    lw      t1, 0x017C(v0)             # 00000180
lbl_80A4F914:
    bnel    a1, t1, lbl_80A4F938
    or      v0, v1, $zero              # v0 = 00000004
    sub.s   $f10, $f2, $f0
    c.lt.s  $f12, $f10
    nop
    bc1fl   lbl_80A4F938
    or      v0, v1, $zero              # v0 = 00000004
    addiu   v1, $zero, 0x0004          # v1 = 00000004
lbl_80A4F934:
    or      v0, v1, $zero              # v0 = 00000004
lbl_80A4F938:
    jr      $ra
    nop


func_80A4F940:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_80A4F0F0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A4F694
    lw      a1, 0x0024($sp)
    jal     func_80A4F7F4
    or      a0, s0, $zero              # a0 = 00000000
    sh      v0, 0x01AC(s0)             # 000001AC
    lh      t6, 0x01AC(s0)             # 000001AC
    sll     t7, t6,  2
    addu    t8, s0, t7
    lwc1    $f4, 0x0198(t8)            # 00000198
    swc1    $f4, 0x0080(s0)            # 00000080
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A4F998:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80A4F940
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80A5085C)     # $at = 80A50000
    lwc1    $f8, %lo(var_80A5085C)($at)
    lwc1    $f0, 0x0080(a0)            # 00000080
    lwc1    $f4, 0x0028(a0)            # 00000028
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f6, $f0, $f4
    c.le.s  $f8, $f6
    nop
    bc1f    lbl_80A4F9E0
    nop
    swc1    $f0, 0x0028(a0)            # 00000028
    beq     $zero, $zero, lbl_80A4F9E0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A4F9E0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A4F9F0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, %hi(var_80A50860)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A50860)($at)
    lwc1    $f0, 0x0028(a0)            # 00000028
    c.le.s  $f0, $f4
    nop
    bc1fl   lbl_80A4FA2C
    lwc1    $f2, 0x0080(a0)            # 00000080
    jal     func_80020EB4
    nop
    beq     $zero, $zero, lbl_80A4FA58
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f2, 0x0080(a0)            # 00000080
lbl_80A4FA2C:
    lui     $at, %hi(var_80A50864)     # $at = 80A50000
    lwc1    $f8, %lo(var_80A50864)($at)
    sub.s   $f6, $f2, $f0
    or      v0, $zero, $zero           # v0 = 00000000
    c.le.s  $f8, $f6
    nop
    bc1f    lbl_80A4FA58
    nop
    swc1    $f2, 0x0028(a0)            # 00000028
    beq     $zero, $zero, lbl_80A4FA58
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A4FA58:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A4FA68:
    addiu   $sp, $sp, 0xFF10           # $sp = FFFFFF10
    sw      s0, 0x0068($sp)
    sdc1    $f28, 0x0058($sp)
    sll     s0, a1, 16
    sw      s3, 0x0074($sp)
    sw      s2, 0x0070($sp)
    mtc1    $zero, $f28                # $f28 = 0.00
    mtc1    a2, $f12                   # $f12 = 0.00
    or      s2, a3, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sra     s0, s0, 16
    sw      $ra, 0x008C($sp)
    sw      s8, 0x0088($sp)
    sw      s7, 0x0084($sp)
    sw      s6, 0x0080($sp)
    sw      s5, 0x007C($sp)
    sw      s4, 0x0078($sp)
    sw      s1, 0x006C($sp)
    sdc1    $f30, 0x0060($sp)
    sdc1    $f26, 0x0050($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    sw      a1, 0x00F4($sp)
    c.le.s  $f28, $f12
    lui     $at, 0xBF80                # $at = BF800000
    bc1fl   lbl_80A4FAEC
    mtc1    $at, $f0                   # $f0 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    beq     $zero, $zero, lbl_80A4FAF4
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f0                   # $f0 = 300.00
lbl_80A4FAEC:
    nop
    lui     $at, 0x4396                # $at = 43960000
lbl_80A4FAF4:
    mtc1    $at, $f4                   # $f4 = 300.00
    lwc1    $f6, 0x0050(s2)            # 00000050
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    mul.s   $f8, $f4, $f6
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f16, $f8, $f10
    sub.s   $f4, $f16, $f18
    mul.s   $f20, $f0, $f4
    jal     func_800636C4              # sins?
    nop
    sll     a0, s0, 16
    mov.s   $f30, $f0
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    mul.s   $f24, $f20, $f30
    lui     $at, 0x4120                # $at = 41200000
    lui     s1, %hi(var_80A507C8)      # s1 = 80A50000
    mul.s   $f26, $f20, $f0
    lui     s0, %hi(var_80A507A8)      # s0 = 80A50000
    addiu   s4, s3, 0x07C0             # s4 = 000007C0
    mtc1    $at, $f20                  # $f20 = 10.00
    mov.s   $f22, $f0
    addiu   s3, $sp, 0x00D4            # s3 = FFFFFFE4
    addiu   s0, s0, %lo(var_80A507A8)  # s0 = 80A507A8
    addiu   s1, s1, %lo(var_80A507C8)  # s1 = 80A507C8
    addiu   s8, $sp, 0x00A8            # s8 = FFFFFFB8
    addiu   s7, $sp, 0x00BC            # s7 = FFFFFFCC
    addiu   s6, $sp, 0x00C8            # s6 = FFFFFFD8
    addiu   s5, $sp, 0x00B0            # s5 = FFFFFFC0
lbl_80A4FB78:
    lwc1    $f6, 0x0000(s0)            # 80A507A8
    lwc1    $f8, 0x0050(s2)            # 00000050
    lwc1    $f18, 0x0000(s1)           # 80A507C8
    mfc1    a2, $f30
    mul.s   $f10, $f6, $f8
    lwc1    $f6, 0x0004(s0)            # 80A507AC
    mfc1    a3, $f22
    or      a0, s3, $zero              # a0 = FFFFFFE4
    or      a1, s5, $zero              # a1 = FFFFFFC0
    mul.s   $f16, $f10, $f20
    add.s   $f4, $f18, $f16
    lwc1    $f16, 0x0004(s1)           # 80A507CC
    swc1    $f4, 0x00B0($sp)
    lwc1    $f8, 0x0054(s2)            # 00000054
    swc1    $f28, 0x00B8($sp)
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f18, $f10, $f20
    add.s   $f4, $f16, $f18
    jal     func_80A4F018
    swc1    $f4, 0x00B4($sp)
    lwc1    $f6, 0x00D4($sp)
    lwc1    $f8, 0x0024(s2)            # 00000024
    lwc1    $f16, 0x00D8($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    add.s   $f10, $f6, $f8
    lwc1    $f6, 0x00DC($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $sp, 0x00AC            # t8 = FFFFFFBC
    swc1    $f10, 0x00D4($sp)
    lwc1    $f18, 0x0028(s2)           # 00000028
    or      a0, s4, $zero              # a0 = 000007C0
    or      a1, s3, $zero              # a1 = FFFFFFE4
    add.s   $f4, $f16, $f18
    or      a2, s6, $zero              # a2 = FFFFFFD8
    or      a3, s7, $zero              # a3 = FFFFFFCC
    add.s   $f18, $f24, $f10
    swc1    $f4, 0x00D8($sp)
    lwc1    $f8, 0x002C(s2)            # 0000002C
    swc1    $f4, 0x00CC($sp)
    swc1    $f18, 0x00C8($sp)
    add.s   $f16, $f6, $f8
    swc1    $f28, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      t8, 0x0024($sp)
    add.s   $f6, $f26, $f16
    swc1    $f16, 0x00DC($sp)
    sw      t7, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    swc1    $f6, 0x00D0($sp)
    sw      $zero, 0x0018($sp)
    sw      t6, 0x0014($sp)
    jal     func_800309D0
    sw      s8, 0x0010($sp)
    beq     v0, $zero, lbl_80A4FC60
    addiu   s0, s0, 0x0008             # s0 = 80A507B0
    beq     $zero, $zero, lbl_80A4FC74
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A4FC60:
    lui     t9, %hi(var_80A507C8)      # t9 = 80A50000
    addiu   t9, t9, %lo(var_80A507C8)  # t9 = 80A507C8
    bne     s0, t9, lbl_80A4FB78
    addiu   s1, s1, 0x0008             # s1 = 80A507D0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A4FC74:
    lw      $ra, 0x008C($sp)
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
    ldc1    $f24, 0x0048($sp)
    ldc1    $f26, 0x0050($sp)
    ldc1    $f28, 0x0058($sp)
    ldc1    $f30, 0x0060($sp)
    lw      s0, 0x0068($sp)
    lw      s1, 0x006C($sp)
    lw      s2, 0x0070($sp)
    lw      s3, 0x0074($sp)
    lw      s4, 0x0078($sp)
    lw      s5, 0x007C($sp)
    lw      s6, 0x0080($sp)
    lw      s7, 0x0084($sp)
    lw      s8, 0x0088($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00F0           # $sp = 00000000


func_80A4FCBC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_80A4F11C
    sw      a3, 0x0020($sp)
    beq     v0, $zero, lbl_80A4FD1C
    lw      a3, 0x0020($sp)
    lhu     t6, 0x0158(v0)             # 00000158
    lw      a0, 0x0024($sp)
    andi    t7, t6, 0x0020             # t7 = 00000000
    beql    t7, $zero, lbl_80A4FD20
    lhu     t8, 0x0158(a3)             # 00000158
    lh      a1, 0x0148(v0)             # 00000148
    lw      a2, 0x016C(v0)             # 0000016C
    sw      a3, 0x0020($sp)
    jal     func_80A4FA68
    sw      v0, 0x0018($sp)
    lw      v1, 0x0018($sp)
    bne     v0, $zero, lbl_80A4FD1C
    lw      a3, 0x0020($sp)
    sw      v1, 0x01B0(a3)             # 000001B0
lbl_80A4FD1C:
    lhu     t8, 0x0158(a3)             # 00000158
lbl_80A4FD20:
    andi    t9, t8, 0x0100             # t9 = 00000000
    beql    t9, $zero, lbl_80A4FDA8
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v0, 0x01B0(a3)             # 000001B0
    beql    v0, $zero, lbl_80A4FDA8
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     v1, 0x0158(v0)             # 00000158
    andi    t0, v1, 0x0010             # t0 = 00000000
    beq     t0, $zero, lbl_80A4FD98
    andi    t1, v1, 0x0020             # t1 = 00000000
    lwc1    $f4, 0x0024(v0)            # 00000024
    lwc1    $f6, 0x0100(v0)            # 00000100
    or      a0, a3, $zero              # a0 = 00000000
    sub.s   $f8, $f4, $f6
    lwc1    $f4, 0x0024(a3)            # 00000024
    swc1    $f8, 0x01B4(a3)            # 000001B4
    lwc1    $f16, 0x0108(v0)           # 00000108
    lwc1    $f10, 0x002C(v0)           # 0000002C
    lwc1    $f6, 0x01B4(a3)            # 000001B4
    sub.s   $f18, $f10, $f16
    lwc1    $f10, 0x002C(a3)           # 0000002C
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x01B8(a3)           # 000001B8
    lwc1    $f16, 0x01B8(a3)           # 000001B8
    swc1    $f8, 0x0024(a3)            # 00000024
    add.s   $f18, $f10, $f16
    jal     func_80A4F1AC
    swc1    $f18, 0x002C(a3)           # 0000002C
    beq     $zero, $zero, lbl_80A4FDA8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A4FD98:
    bnel    t1, $zero, lbl_80A4FDA8
    or      v0, $zero, $zero           # v0 = 00000000
    sw      $zero, 0x01B0(a3)          # 000001B0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A4FDA8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A4FDB8:
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      a1, 0x0004($sp)
    lhu     t6, 0x0158(a0)             # 00000158
    lui     t8, %hi(func_80A4FDF0)     # t8 = 80A50000
    addiu   t8, t8, %lo(func_80A4FDF0) # t8 = 80A4FDF0
    ori     t7, t6, 0x0002             # t7 = 00000002
    sh      t7, 0x0158(a0)             # 00000158
    swc1    $f0, 0x006C(a0)            # 0000006C
    swc1    $f0, 0x0064(a0)            # 00000064
    swc1    $f0, 0x0060(a0)            # 00000060
    swc1    $f0, 0x005C(a0)            # 0000005C
    sw      t8, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80A4FDF0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0024($sp)
    lhu     t7, 0x0158(a3)             # 00000158
    lh      t9, 0x015A(a3)             # 0000015A
    lw      v1, 0x1C44(t6)             # 00001C44
    ori     t8, t7, 0x0001             # t8 = 00000001
    bgtz    t9, lbl_80A4FEB4
    sh      t8, 0x0158(a3)             # 00000158
    lwc1    $f0, 0x0140(a3)            # 00000140
    lui     $at, %hi(var_80A50868)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A50868)($at)
    abs.s   $f0, $f0
    or      a0, a3, $zero              # a0 = 00000000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80A4FEB8
    lw      t2, 0x0670(v1)             # 00000670
    sw      v1, 0x0018($sp)
    jal     func_80A4F06C
    sw      a3, 0x0020($sp)
    lw      v1, 0x0018($sp)
    beq     v0, $zero, lbl_80A4FE98
    lw      a3, 0x0020($sp)
    lh      a1, 0x0148(a3)             # 00000148
    lw      a2, 0x0140(a3)             # 00000140
    sw      a3, 0x0020($sp)
    sw      v1, 0x0018($sp)
    jal     func_80A4FA68
    lw      a0, 0x0024($sp)
    lw      v1, 0x0018($sp)
    bne     v0, $zero, lbl_80A4FE98
    lw      a3, 0x0020($sp)
    lwc1    $f6, 0x0140(a3)            # 00000140
    or      a0, a3, $zero              # a0 = 00000000
    swc1    $f6, 0x016C(a3)            # 0000016C
    jal     func_80A50114
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_80A4FED0
    lw      $ra, 0x0014($sp)
lbl_80A4FE98:
    lw      t0, 0x0670(v1)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    mtc1    $zero, $f8                 # $f8 = 0.00
    and     t1, t0, $at
    sw      t1, 0x0670(v1)             # 00000670
    beq     $zero, $zero, lbl_80A4FECC
    swc1    $f8, 0x0140(a3)            # 00000140
lbl_80A4FEB4:
    lw      t2, 0x0670(v1)             # 00000670
lbl_80A4FEB8:
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t3, t2, $at
    sw      t3, 0x0670(v1)             # 00000670
    swc1    $f10, 0x0140(a3)           # 00000140
lbl_80A4FECC:
    lw      $ra, 0x0014($sp)
lbl_80A4FED0:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A4FEDC:
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      a1, 0x0004($sp)
    lhu     t6, 0x0158(a0)             # 00000158
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    lui     t8, %hi(func_80A4FF1C)     # t8 = 80A50000
    addiu   t8, t8, %lo(func_80A4FF1C) # t8 = 80A4FF1C
    ori     t7, t6, 0x0008             # t7 = 00000008
    sh      t7, 0x0158(a0)             # 00000158
    swc1    $f0, 0x0064(a0)            # 00000064
    swc1    $f0, 0x0060(a0)            # 00000060
    swc1    $f0, 0x005C(a0)            # 0000005C
    sw      t8, 0x0154(a0)             # 00000154
    swc1    $f4, 0x006C(a0)            # 0000006C
    jr      $ra
    nop


func_80A4FF1C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x1C44(s1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    sw      t6, 0x0028($sp)
    lhu     t7, 0x0158(s0)             # 00000158
    ori     t8, t7, 0x0004             # t8 = 00000004
    jal     func_8002121C
    sh      t8, 0x0158(s0)             # 00000158
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A4F998
    or      a1, s1, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80A5008C
    lh      t7, 0x01AC(s0)             # 000001AC
    lh      t9, 0x01AC(s0)             # 000001AC
    addiu   $at, $zero, 0x0032         # $at = 00000032
    or      a0, s0, $zero              # a0 = 00000000
    sll     t0, t9,  2
    addu    t1, s0, t0
    lw      a1, 0x0170(t1)             # 00000170
    bne     a1, $at, lbl_80A4FF94
    nop
    jal     func_80A4FDB8
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A50104
    lw      $ra, 0x001C($sp)
lbl_80A4FF94:
    jal     func_80031464
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    beq     v0, $zero, lbl_80A50074
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80035290
    sw      v0, 0x0024($sp)
    jal     func_8003532C
    lw      a0, 0x0024($sp)
    lh      t2, 0x015A(s0)             # 0000015A
    lw      v0, 0x0028($sp)
    bgtzl   t2, lbl_80A5005C
    lw      t5, 0x0670(v0)             # 00000670
    lwc1    $f0, 0x0140(s0)            # 00000140
    lui     $at, %hi(var_80A5086C)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A5086C)($at)
    abs.s   $f0, $f0
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80A5005C
    lw      t5, 0x0670(v0)             # 00000670
    jal     func_80A4F06C
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A50038
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_80A4F2DC
    or      a2, s1, $zero              # a2 = 00000000
    beq     v0, $zero, lbl_80A50038
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x0148(s0)             # 00000148
    lw      a2, 0x0140(s0)             # 00000140
    jal     func_80A4FA68
    or      a3, s0, $zero              # a3 = 00000000
    bne     v0, $zero, lbl_80A50038
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f6, 0x0140(s0)            # 00000140
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A50114
    swc1    $f6, 0x016C(s0)            # 0000016C
    beq     $zero, $zero, lbl_80A50100
    nop
lbl_80A50038:
    lw      v0, 0x0028($sp)
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    mtc1    $zero, $f8                 # $f8 = 0.00
    lw      t3, 0x0670(v0)             # 00000670
    and     t4, t3, $at
    sw      t4, 0x0670(v0)             # 00000670
    beq     $zero, $zero, lbl_80A50100
    swc1    $f8, 0x0140(s0)            # 00000140
    lw      t5, 0x0670(v0)             # 00000670
lbl_80A5005C:
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    mtc1    $zero, $f10                # $f10 = 0.00
    and     t6, t5, $at
    sw      t6, 0x0670(v0)             # 00000670
    beq     $zero, $zero, lbl_80A50100
    swc1    $f10, 0x0140(s0)           # 00000140
lbl_80A50074:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A4FDB8
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A50104
    lw      $ra, 0x001C($sp)
    lh      t7, 0x01AC(s0)             # 000001AC
lbl_80A5008C:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    or      a0, s0, $zero              # a0 = 00000000
    sll     t8, t7,  2
    addu    t9, s0, t8
    lw      a1, 0x0170(t9)             # 00000170
    bne     a1, $at, lbl_80A500B8
    nop
    jal     func_80A5035C
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A50104
    lw      $ra, 0x001C($sp)
lbl_80A500B8:
    jal     func_80031464
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    beq     v0, $zero, lbl_80A500F4
    or      a0, v0, $zero              # a0 = 00000000
    lw      t0, 0x014C(v0)             # 0000014C
    andi    t1, t0, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_80A500F8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035290
    sw      v0, 0x0024($sp)
    jal     func_8003532C
    lw      a0, 0x0024($sp)
    lwc1    $f16, 0x0080(s0)           # 00000080
    beq     $zero, $zero, lbl_80A50100
    swc1    $f16, 0x0028(s0)           # 00000028
lbl_80A500F4:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A500F8:
    jal     func_80A5035C
    or      a1, s1, $zero              # a1 = 00000000
lbl_80A50100:
    lw      $ra, 0x001C($sp)
lbl_80A50104:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A50114:
    sw      a1, 0x0004($sp)
    lhu     t6, 0x0158(a0)             # 00000158
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t8, %hi(func_80A50140)     # t8 = 80A50000
    addiu   t8, t8, %lo(func_80A50140) # t8 = 80A50140
    ori     t7, t6, 0x0020             # t7 = 00000020
    sh      t7, 0x0158(a0)             # 00000158
    sw      t8, 0x0154(a0)             # 00000154
    swc1    $f4, 0x006C(a0)            # 0000006C
    jr      $ra
    nop


func_80A50140:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    lui     $at, 0x4000                # $at = 40000000
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    mtc1    $at, $f2                   # $f2 = 2.00
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0164(s0)            # 00000164
    lw      v1, 0x1C44(s1)             # 00001C44
    lhu     t6, 0x0158(s0)             # 00000158
    add.s   $f8, $f4, $f6
    addiu   a0, s0, 0x0168             # a0 = 00000168
    ori     t7, t6, 0x0010             # t7 = 00000010
    sh      t7, 0x0158(s0)             # 00000158
    swc1    $f8, 0x0164(s0)            # 00000164
    lwc1    $f0, 0x0164(s0)            # 00000164
    lui     a1, 0x41A0                 # a1 = 41A00000
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80A501AC
    swc1    $f0, 0x0164(s0)            # 00000164
    beq     $zero, $zero, lbl_80A501AC
    swc1    $f2, 0x0164(s0)            # 00000164
    swc1    $f0, 0x0164(s0)            # 00000164
lbl_80A501AC:
    lw      a2, 0x0164(s0)             # 00000164
    jal     func_8006385C
    sw      v1, 0x0028($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    lwc1    $f10, 0x016C(s0)           # 0000016C
    lw      v1, 0x0028($sp)
    or      a2, v0, $zero              # a2 = 00000000
    c.le.s  $f12, $f10
    lui     $at, 0xBF80                # $at = BF800000
    bc1fl   lbl_80A501EC
    mtc1    $at, $f2                   # $f2 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    beq     $zero, $zero, lbl_80A501F4
    lwc1    $f16, 0x0168(s0)           # 00000168
    mtc1    $at, $f2                   # $f2 = 1.00
lbl_80A501EC:
    nop
    lwc1    $f16, 0x0168(s0)           # 00000168
lbl_80A501F4:
    lwc1    $f4, 0x015C(s0)            # 0000015C
    lwc1    $f18, 0x0008(s0)           # 00000008
    mul.s   $f0, $f2, $f16
    lwc1    $f16, 0x0160(s0)           # 00000160
    lwc1    $f10, 0x0010(s0)           # 00000010
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    mul.s   $f6, $f0, $f4
    nop
    mul.s   $f4, $f0, $f16
    add.s   $f8, $f18, $f6
    add.s   $f18, $f10, $f4
    swc1    $f8, 0x0024(s0)            # 00000024
    swc1    $f18, 0x002C(s0)           # 0000002C
    sw      a2, 0x0020($sp)
    jal     func_80A4F998
    sw      v1, 0x0028($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    lw      v1, 0x0028($sp)
    bne     v0, $zero, lbl_80A50288
    lw      a2, 0x0020($sp)
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x002C(s0)            # 0000002C
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    swc1    $f6, 0x0008(s0)            # 00000008
    swc1    $f8, 0x0010(s0)            # 00000010
    lw      t8, 0x0670(v1)             # 00000670
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    and     t9, t8, $at
    sw      t9, 0x0670(v1)             # 00000670
    swc1    $f12, 0x0140(s0)           # 00000140
    swc1    $f12, 0x0168(s0)           # 00000168
    jal     func_80A5035C
    swc1    $f12, 0x0164(s0)           # 00000164
    beq     $zero, $zero, lbl_80A50340
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A50288:
    beq     a2, $zero, lbl_80A5033C
    or      a0, s1, $zero              # a0 = 00000000
    lw      v1, 0x1C44(s1)             # 00001C44
    lh      a1, 0x0148(s0)             # 00000148
    lw      a2, 0x0140(s0)             # 00000140
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_80A4FA68
    sw      v1, 0x0028($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    beq     v0, $zero, lbl_80A502CC
    lw      v1, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    jal     func_80022FD0
    sw      v1, 0x0028($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    lw      v1, 0x0028($sp)
lbl_80A502CC:
    lwc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f10, 0x002C(s0)           # 0000002C
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    swc1    $f16, 0x0008(s0)           # 00000008
    swc1    $f10, 0x0010(s0)           # 00000010
    lw      t0, 0x0670(v1)             # 00000670
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    or      a1, s1, $zero              # a1 = 00000000
    and     t1, t0, $at
    sw      t1, 0x0670(v1)             # 00000670
    lh      t3, 0x01AC(s0)             # 000001AC
    swc1    $f12, 0x0140(s0)           # 00000140
    swc1    $f12, 0x0168(s0)           # 00000168
    sll     t4, t3,  2
    swc1    $f12, 0x0164(s0)           # 00000164
    sh      t2, 0x015A(s0)             # 0000015A
    addu    t5, s0, t4
    lw      t6, 0x0170(t5)             # 00000170
    addiu   $at, $zero, 0x0032         # $at = 00000032
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $at, lbl_80A50334
    nop
    jal     func_80A4FDB8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A50340
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A50334:
    jal     func_80A4FEDC
    or      a1, s1, $zero              # a1 = 00000000
lbl_80A5033C:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A50340:
    jal     func_80022FD0
    addiu   a1, $zero, 0x200A          # a1 = 0000200A
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A5035C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)
    lhu     t6, 0x0158(a0)             # 00000158
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    ori     t7, t6, 0x0080             # t7 = 00000080
    sh      t7, 0x0158(a0)             # 00000158
    swc1    $f0, 0x0064(a0)            # 00000064
    swc1    $f0, 0x0060(a0)            # 00000060
    swc1    $f0, 0x005C(a0)            # 0000005C
    swc1    $f4, 0x006C(a0)            # 0000006C
    jal     func_80A4F940
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t8, %hi(func_80A503B4)     # t8 = 80A50000
    addiu   t8, t8, %lo(func_80A503B4) # t8 = 80A503B4
    sw      t8, 0x0154(a0)             # 00000154
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A503B4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lhu     t6, 0x0158(s0)             # 00000158
    lwc1    $f0, 0x0140(s0)            # 00000140
    lw      v0, 0x1C44(s1)             # 00001C44
    ori     t7, t6, 0x0040             # t7 = 00000040
    sh      t7, 0x0158(s0)             # 00000158
    lui     $at, %hi(var_80A50870)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A50870)($at)
    abs.s   $f0, $f0
    c.lt.s  $f4, $f0
    nop
    bc1f    lbl_80A50414
    nop
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    swc1    $f6, 0x0140(s0)            # 00000140
    lw      t8, 0x0670(v0)             # 00000670
    and     t9, t8, $at
    sw      t9, 0x0670(v0)             # 00000670
lbl_80A50414:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A4F9F0
    or      a1, s1, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80A504A8
    lw      $ra, 0x001C($sp)
    lh      t0, 0x01AC(s0)             # 000001AC
    addiu   $at, $zero, 0x0032         # $at = 00000032
    or      a1, s1, $zero              # a1 = 00000000
    sll     t1, t0,  2
    addu    t2, s0, t1
    lw      t3, 0x0170(t2)             # 00000170
    or      a0, s0, $zero              # a0 = 00000000
    bne     t3, $at, lbl_80A50464
    nop
    jal     func_80A4FDB8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A50470
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A50464:
    jal     func_80A4FEDC
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A50470:
    jal     func_80022FD0
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    lh      t4, 0x01AC(s0)             # 000001AC
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    sll     t5, t4,  2
    addu    v0, s0, t5
    lw      a1, 0x0184(v0)             # 00000184
    jal     func_800345DC
    lw      a2, 0x0170(v0)             # 00000170
    addiu   a1, v0, 0x0800             # a1 = 00000800
    andi    a1, a1, 0xFFFF             # a1 = 00000800
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80A504A8:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A504B8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lhu     t6, 0x0158(a2)             # 00000158
    lh      v0, 0x015A(a2)             # 0000015A
    andi    t8, t6, 0xFF00             # t8 = 00000000
    sh      t8, 0x0158(a2)             # 00000158
    ori     t9, t8, 0x0100             # t9 = 00000100
    blez    v0, lbl_80A504EC
    sh      t9, 0x0158(a2)             # 00000158
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x015A(a2)             # 0000015A
lbl_80A504EC:
    lh      t1, 0x0148(a2)             # 00000148
    sh      t1, 0x0032(a2)             # 00000032
    lh      a0, 0x0032(a2)             # 00000032
    jal     func_800636C4              # sins?
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    swc1    $f0, 0x015C(a2)            # 0000015C
    jal     func_80063684              # coss?
    lh      a0, 0x0032(a2)             # 00000032
    lw      a2, 0x0018($sp)
    lw      v0, 0x0154(a2)             # 00000154
    swc1    $f0, 0x0160(a2)            # 00000160
    or      a0, a2, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80A50534
    lw      $ra, 0x0014($sp)
    jalr    $ra, v0
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_80A50534:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A50540:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    lw      s1, 0x0000(a1)             # 00000000
    sw      a1, 0x003C($sp)
    jal     func_80A4FCBC
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A50594
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lwc1    $f4, 0x01B4(s0)            # 000001B4
    lwc1    $f6, 0x01B8(s0)            # 000001B8
    mtc1    $zero, $f14                # $f14 = 0.00
    mul.s   $f12, $f4, $f0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f8, $f6, $f0
    mfc1    a2, $f8
    jal     func_800AA7F4
    nop
lbl_80A50594:
    lhu     t6, 0x0158(s0)             # 00000158
    andi    t7, t6, 0xFEFF             # t7 = 00000000
    sh      t7, 0x0158(s0)             # 00000158
    lw      t8, 0x003C($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t8)             # 00000000
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t0, 0xDB06                 # t0 = DB060000
    ori     t0, t0, 0x0020             # t0 = DB060020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      a1, 0x01BC(s0)             # 000001BC
    lui     t4, 0x8012                 # t4 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t1, a1,  4
    srl     t2, t1, 28
    sll     t3, t2,  2
    addu    t4, t4, t3
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t5, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t4, t5
    addu    t7, t6, $at
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t0, 0x003C($sp)
    lw      a0, 0x0000(t0)             # DB060020
    jal     func_800AB900
    sw      v1, 0x0020($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t2, 0xFB00                 # t2 = FB000000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lbu     t7, 0x01C1(s0)             # 000001C1
    lbu     t4, 0x01C0(s0)             # 000001C0
    lbu     t1, 0x01C2(s0)             # 000001C2
    sll     t8, t7, 16
    sll     t5, t4, 24
    or      t9, t5, t8                 # t9 = 00000000
    sll     t2, t1,  8
    or      t3, t9, t2                 # t3 = FB000000
    ori     t4, t3, 0x00FF             # t4 = FB0000FF
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t5, 0x0500                 # t5 = 05000000
    addiu   t5, t5, 0x4CD0             # t5 = 05004CD0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t5, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    nop

.section .data

var_80A506A0: .word 0x00FF0600, 0x00000010, 0x00030000, 0x000001C4
.word func_80A4F538
.word func_80A4F660
.word func_80A504B8
.word func_80A50540
var_80A506C0: .word \
0x3DCCCCCD, 0x3E2AAAAB, 0x3E4CCCCD, 0x3EAAAAAB, \
0x3DCCCCCD, 0x3E2AAAAB, 0x3E4CCCCD, 0x3EAAAAAB
var_80A506E0: .word \
0x6E56286E, 0x56286E56, 0x286E5628, 0x6A786E68, \
0x50140000, 0x00000000, 0x8E635648, 0x76600000, \
0x00000000, 0xD29650D2, 0xAA500000, 0x00000000, \
0x6690B6B0, 0xA76464A7, 0x64756160, 0xE8D2B0E8, \
0xD2B0E8D2, 0xB0E8D2B0, 0x877D5F87, 0x7D5F877D, \
0x5F877D5F, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xE8D2B0E8, 0xD2B0E8D2, 0xB0E8D2B0
var_80A5074C: .word \
0x00000001, 0x00030004, 0x00050006, 0x0007000A, \
0x000B0000
var_80A50760: .word 0xB0F40708, 0xB0F801F4, 0x30FC05DC
var_80A5076C: .word \
0x41EFEB85, 0x3F8147AE, 0xC1EFEB85, 0xC1EFEB85, \
0x3F8147AE, 0xC1EFEB85, 0xC1EFEB85, 0x3F8147AE, \
0x41EFEB85, 0x41EFEB85, 0x3F8147AE, 0x41EFEB85, \
0x00000000, 0x3F8147AE, 0x00000000
var_80A507A8: .word \
0xC1F00000, 0x00000000, 0x41F00000, 0x00000000, \
0xC1F00000, 0x42700000, 0x41F00000, 0x42700000
var_80A507C8: .word \
0x3F800000, 0x3F800000, 0xBF800000, 0x3F800000, \
0x3F800000, 0xBF800000, 0xBF800000, 0xBF800000, \
0x00000000, 0x00000000

.section .rodata

var_80A507F0: .word var_80A4F0C4
.word var_80A4F0C4
.word var_80A4F0CC
.word var_80A4F0D4
.word var_80A4F0C4
.word var_80A4F0C4
.word var_80A4F0CC
.word var_80A4F0D4
var_80A50810: .word 0x3A83126F
var_80A50814: .word var_80A4F3D8
.word var_80A4F3D8
.word var_80A4F3D8
.word var_80A4F3D8
.word var_80A4F3D8
.word var_80A4F3D8
.word var_80A4F3D8
.word var_80A4F3D8
var_80A50834: .word var_80A4F45C
.word var_80A4F45C
.word func_80A4F46C
.word func_80A4F47C
.word var_80A4F45C
.word var_80A4F45C
.word func_80A4F46C
.word func_80A4F47C
var_80A50854: .word 0xBA83126F
var_80A50858: .word 0xBA83126F
var_80A5085C: .word 0xBA83126F
var_80A50860: .word 0xC6F9EC00
var_80A50864: .word 0xBA83126F
var_80A50868: .word 0x3A83126F
var_80A5086C: .word 0x3A83126F
var_80A50870: .word 0x3A83126F, 0x00000000, 0x00000000, 0x00000000

