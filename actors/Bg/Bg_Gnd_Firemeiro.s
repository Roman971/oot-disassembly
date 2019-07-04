.section .text
func_80B66A00:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    mfc1    a1, $f0
    mfc1    a3, $f0
    sw      $zero, 0x0024($sp)
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_8001EC20
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x0024(s0)             # 00000024
    lh      t8, 0x001C(s0)             # 0000001C
    lw      t6, 0x0028(s0)             # 00000028
    sw      t7, 0x0154(s0)             # 00000154
    lw      t7, 0x002C(s0)             # 0000002C
    sw      t6, 0x0158(s0)             # 00000158
    bne     t8, $zero, lbl_80B66AA0
    sw      t7, 0x015C(s0)             # 0000015C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xECD8             # a0 = 0600ECD8
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     t9, %hi(func_80B66D54)     # t9 = 80B60000
    addiu   t9, t9, %lo(func_80B66D54) # t9 = 80B66D54
    sw      v0, 0x013C(s0)             # 0000013C
    sw      t9, 0x0164(s0)             # 00000164
lbl_80B66AA0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80B66AB4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    lw      t8, 0x0018($sp)
    lh      t7, 0x001C(t6)             # 0000001C
    bne     t7, $zero, lbl_80B66AE4
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t8)             # 0000013C
lbl_80B66AE4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B66AF4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    lwc1    $f4, 0x0158(a0)            # 00000158
    sw      a0, 0x0020($sp)
    sub.s   $f2, $f4, $f6
    jal     func_80035364
    swc1    $f2, 0x001C($sp)
    lw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80B66B30
    lwc1    $f2, 0x001C($sp)
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sh      t6, 0x0160(a0)             # 00000160
lbl_80B66B30:
    lwc1    $f0, 0x0028(a0)            # 00000028
    lui     $at, 0x3F00                # $at = 3F000000
    addiu   a1, $zero, 0x2082          # a1 = 00002082
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80B66B84
    lhu     v0, 0x0160(a0)             # 00000160
    mtc1    $at, $f8                   # $f8 = 0.50
    nop
    sub.s   $f10, $f0, $f8
    swc1    $f10, 0x0028(a0)           # 00000028
    lwc1    $f16, 0x0028(a0)           # 00000028
    c.lt.s  $f16, $f2
    nop
    bc1f    lbl_80B66B74
    nop
    swc1    $f2, 0x0028(a0)            # 00000028
lbl_80B66B74:
    jal     func_80023108
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    lhu     v0, 0x0160(a0)             # 00000160
lbl_80B66B84:
    lui     t8, %hi(func_80B66D54)     # t8 = 80B60000
    addiu   t8, t8, %lo(func_80B66D54) # t8 = 80B66D54
    blez    v0, lbl_80B66B9C
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_80B66BA0
    sh      t7, 0x0160(a0)             # 00000160
lbl_80B66B9C:
    sw      t8, 0x0164(a0)             # 00000164
lbl_80B66BA0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B66BB0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    jal     func_80035364
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B66D20
    lui     t9, %hi(func_80B66D54)     # t9 = 80B60000
    lhu     v0, 0x0160(s0)             # 00000160
    lui     t6, %hi(func_80B66AF4)     # t6 = 80B60000
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    blez    v0, lbl_80B66CFC
    addiu   t6, t6, %lo(func_80B66AF4) # t6 = 80B66AF4
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    andi    t8, t7, 0x0001             # t8 = 00000001
    beq     t8, $zero, lbl_80B66C08
    sh      t7, 0x0160(s0)             # 00000160
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f2                   # $f2 = 2.00
    beq     $zero, $zero, lbl_80B66C18
    lhu     a0, 0x0160(s0)             # 00000160
lbl_80B66C08:
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f2                   # $f2 = -2.00
    nop
    lhu     a0, 0x0160(s0)             # 00000160
lbl_80B66C18:
    lw      t0, 0x0154(s0)             # 00000154
    lw      t9, 0x0158(s0)             # 00000158
    addu    $at, a0, $zero
    sll     a0, a0,  2
    sw      t0, 0x0024(s0)             # 00000024
    lw      t0, 0x015C(s0)             # 0000015C
    subu    a0, a0, $at
    sll     a0, a0, 12
    subu    a0, a0, $at
    sll     a0, a0, 16
    sw      t9, 0x0028(s0)             # 00000028
    sw      t0, 0x002C(s0)             # 0000002C
    swc1    $f2, 0x0020($sp)
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lwc1    $f2, 0x0020($sp)
    lhu     a0, 0x0160(s0)             # 00000160
    lwc1    $f4, 0x0024(s0)            # 00000024
    mul.s   $f6, $f2, $f0
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0, 12
    subu    a0, a0, $at
    sll     a0, a0, 16
    add.s   $f8, $f4, $f6
    sra     a0, a0, 16
    jal     func_80063684              # coss?
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f2, 0x0020($sp)
    lhu     a0, 0x0160(s0)             # 00000160
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mul.s   $f16, $f2, $f0
    addu    $at, a0, $zero
    sll     a0, a0, 15
    subu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    add.s   $f18, $f10, $f16
    jal     func_80063684              # coss?
    swc1    $f18, 0x002C(s0)           # 0000002C
    lwc1    $f4, 0x0028(s0)            # 00000028
    lhu     t1, 0x0160(s0)             # 00000160
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f6, $f4, $f0
    swc1    $f6, 0x0028(s0)            # 00000028
    bgez    t1, lbl_80B66CE4
    andi    t2, t1, 0x0003             # t2 = 00000000
    beq     t2, $zero, lbl_80B66CE4
    nop
    addiu   t2, t2, 0xFFFC             # t2 = FFFFFFFC
lbl_80B66CE4:
    bnel    t2, $zero, lbl_80B66D44
    lw      $ra, 0x001C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2838          # a1 = 00002838
    beq     $zero, $zero, lbl_80B66D44
    lw      $ra, 0x001C($sp)
lbl_80B66CFC:
    lw      t5, 0x0154(s0)             # 00000154
    lw      t4, 0x0158(s0)             # 00000158
    sh      t3, 0x0160(s0)             # 00000160
    sw      t5, 0x0024(s0)             # 00000024
    lw      t5, 0x015C(s0)             # 0000015C
    sw      t6, 0x0164(s0)             # 00000164
    sw      t4, 0x0028(s0)             # 00000028
    beq     $zero, $zero, lbl_80B66D40
    sw      t5, 0x002C(s0)             # 0000002C
lbl_80B66D20:
    lw      t8, 0x0154(s0)             # 00000154
    lw      t7, 0x0158(s0)             # 00000158
    addiu   t9, t9, %lo(func_80B66D54) # t9 = 00006D54
    sw      t8, 0x0024(s0)             # 00000024
    lw      t8, 0x015C(s0)             # 0000015C
    sw      t9, 0x0164(s0)             # 00000164
    sw      t7, 0x0028(s0)             # 00000028
    sw      t8, 0x002C(s0)             # 0000002C
lbl_80B66D40:
    lw      $ra, 0x001C($sp)
lbl_80B66D44:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B66D54:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      v0, 0x1C44(a1)             # 00001C44
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lb      t6, 0x013F(v0)             # 0000013F
    beql    t6, $at, lbl_80B66DC4
    lwc1    $f2, 0x0028(a0)            # 00000028
    jal     func_80035364
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B66DC0
    lw      a0, 0x0018($sp)
    lwc1    $f4, 0x0028(a0)            # 00000028
    lwc1    $f6, 0x0158(a0)            # 00000158
    lui     t7, %hi(func_80B66AF4)     # t7 = 80B60000
    lui     t9, %hi(func_80B66BB0)     # t9 = 80B60000
    c.lt.s  $f4, $f6
    addiu   t7, t7, %lo(func_80B66AF4) # t7 = 80B66AF4
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t9, t9, %lo(func_80B66BB0) # t9 = 80B66BB0
    bc1f    lbl_80B66DB4
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sw      t7, 0x0164(a0)             # 00000164
    beq     $zero, $zero, lbl_80B66E04
    sh      t8, 0x0160(a0)             # 00000160
lbl_80B66DB4:
    sw      t9, 0x0164(a0)             # 00000164
    beq     $zero, $zero, lbl_80B66E04
    sh      t0, 0x0160(a0)             # 00000160
lbl_80B66DC0:
    lwc1    $f2, 0x0028(a0)            # 00000028
lbl_80B66DC4:
    lwc1    $f8, 0x0158(a0)            # 00000158
    lui     $at, 0x4000                # $at = 40000000
    c.lt.s  $f2, $f8
    nop
    bc1fl   lbl_80B66E08
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f10                  # $f10 = 2.00
    lwc1    $f0, 0x0158(a0)            # 00000158
    add.s   $f16, $f2, $f10
    swc1    $f16, 0x0028(a0)           # 00000028
    lwc1    $f18, 0x0028(a0)           # 00000028
    c.lt.s  $f0, $f18
    nop
    bc1fl   lbl_80B66E08
    lw      $ra, 0x0014($sp)
    swc1    $f0, 0x0028(a0)            # 00000028
lbl_80B66E04:
    lw      $ra, 0x0014($sp)
lbl_80B66E08:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B66E14:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0164(a0)             # 00000164
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B66E38:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E56C
    sw      a0, 0x0024($sp)
    lw      a2, 0x0024($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t2, 0x0601                 # t2 = 06010000
    addiu   t2, t2, 0xE210             # t2 = 0600E210
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop

.section .data

var_80B66EC0: .word 0x01B30600, 0x00000030, 0x01790000, 0x00000168
.word func_80B66A00
.word func_80B66AB4
.word func_80B66E14
.word func_80B66E38

.section .rodata


