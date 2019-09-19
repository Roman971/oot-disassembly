# Actor File: En_Item00 ("Collectibles", ID=0015)
#
# This actor is a part of "code" for some reason but seems to work the same as any other actor.
#
# External Documentation about this actor:
# - https://wiki.cloudmodding.com/oot/Actor_List_(Variables)#En_Item00
# - https://wiki.cloudmodding.com/oot/En_Item00
#
# Starts at VRAM: 80011B40 / VROM: A87AA0
#

.section .text
func_80011B40:
# Set new update routine function for this actor
# A0 = Actor Instance
# A1 = Pointer to function
    sw      a1, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80011B4C:
# Init function
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0044($sp)
    lui     $at, 0x4475                # $at = 44750000
    mtc1    $at, $f2                   # $f2 = 980.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    sw      $zero, 0x002C($sp)
    swc1    $f4, 0x0030($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    andi    t6, v0, 0x8000             # t6 = 00000000
    andi    t7, v0, 0x3F00             # t7 = 00000000
    sh      t6, 0x002A($sp)
    sra     t8, t7,  8
    sh      t8, 0x0140(s0)             # 00000140
    andi    t9, v0, 0x00FF             # t9 = 00000000
    sh      t9, 0x001C(s0)             # 0000001C
    lh      a1, 0x0140(s0)             # 00000140
    lw      a0, 0x0044($sp)
    jal     func_800206E8
    swc1    $f2, 0x0034($sp)
    beq     v0, $zero, lbl_80011BC0
    lwc1    $f2, 0x0034($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_800121A4
    lw      $ra, 0x001C($sp)
lbl_80011BC0:
    lui     a1, 0x800E                 # a1 = 800E0000
    addiu   a1, a1, 0x779C             # a1 = 800E779C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80063F7C
    swc1    $f2, 0x0034($sp)
    addiu   a1, s0, 0x0150             # a1 = 00000150
    sw      a1, 0x0020($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, 0x800E                 # a3 = 800E0000
    lw      a1, 0x0020($sp)
    addiu   a3, a3, 0x7770             # a3 = 800E7770
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lhu     t1, 0x001C(s0)             # 0000001C
    lwc1    $f2, 0x0034($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sltiu   $at, t1, 0x001A
    beq     $at, $zero, lbl_80011F68
    sh      t0, 0x0148(s0)             # 00000148
    sll     t1, t1,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t1
    lw      t1, 0x5DB0($at)            # 80105DB0
    jr      t1
    nop
lbl_80011C2C: # 00-02: Green/Blue/Red Rupee
    lui     a1, 0x3C75                 # a1 = 3C750000
    ori     a1, a1, 0xC28F             # a1 = 3C75C28F
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x5E18($at)           # 80105E18
    lui     $at, 0x8010                # $at = 80100000
    swc1    $f6, 0x014C(s0)            # 0000014C
    b       lbl_80011F68
    lwc1    $f2, 0x5E1C($at)           # 80105E1C
lbl_80011C54: # 11: Small Key
    lui     a1, 0x3CF5                 # a1 = 3CF50000
    sh      $zero, 0x0148(s0)          # 00000148
    ori     a1, a1, 0xC28F             # a1 = 3CF5C28F
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x5E20($at)           # 80105E20
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f2                   # $f2 = 350.00
    b       lbl_80011F68
    swc1    $f8, 0x014C(s0)            # 0000014C
lbl_80011C80: # 06: Piece of Heart
    sh      $zero, 0x0148(s0)          # 00000148
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f2, 0x5E24($at)           # 80105E24
    lui     a1, 0x3CA3                 # a1 = 3CA30000
    ori     a1, a1, 0xD70A             # a1 = 3CA3D70A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    swc1    $f2, 0x0034($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x5E28($at)          # 80105E28
    lwc1    $f2, 0x0034($sp)
    b       lbl_80011F68
    swc1    $f10, 0x014C(s0)           # 0000014C
lbl_80011CB4: # 03: Recovery Heart
    lui     $at, 0x8010                # $at = 80100000
    jal     func_80026D90
    lwc1    $f12, 0x5E2C($at)          # 80105E2C
    trunc.w.s $f16, $f0
    lui     $at, 0x43D7                # $at = 43D70000
    mtc1    $at, $f2                   # $f2 = 430.00
    lui     a1, 0x3CA3                 # a1 = 3CA30000
    mfc1    t3, $f16
    ori     a1, a1, 0xD70A             # a1 = 3CA3D70A
    or      a0, s0, $zero              # a0 = 00000000
    sh      t3, 0x0018(s0)             # 00000018
    jal     func_80020F88
    swc1    $f2, 0x0034($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x5E30($at)          # 80105E30
    lwc1    $f2, 0x0034($sp)
    b       lbl_80011F68
    swc1    $f18, 0x014C(s0)           # 0000014C
lbl_80011CFC: # 07: Heart Container
    lui     $at, 0x43D7                # $at = 43D70000
    mtc1    $at, $f2                   # $f2 = 430.00
    sh      $zero, 0x0148(s0)          # 00000148
    lui     a1, 0x3CA3                 # a1 = 3CA30000
    ori     a1, a1, 0xD70A             # a1 = 3CA3D70A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    swc1    $f2, 0x0034($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x5E34($at)           # 80105E34
    lwc1    $f2, 0x0034($sp)
    b       lbl_80011F68
    swc1    $f4, 0x014C(s0)            # 0000014C
lbl_80011D30: # 05: Arrow (1)
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f2                   # $f2 = 400.00
    lui     a1, 0x3CA3                 # a1 = 3CA30000
    ori     a1, a1, 0xD70A             # a1 = 3CA3D70A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    swc1    $f2, 0x0034($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x5E38($at)           # 80105E38
    lwc1    $f2, 0x0034($sp)
    b       lbl_80011F68
    swc1    $f6, 0x014C(s0)            # 0000014C
lbl_80011D60: # 08-0A: Normal Deku Seeds or Arrows
    lui     a1, 0x3D0F                 # a1 = 3D0F0000
    ori     a1, a1, 0x5C29             # a1 = 3D0F5C29
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x5E3C($at)           # 80105E3C
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f2                   # $f2 = 250.00
    b       lbl_80011F68
    swc1    $f8, 0x014C(s0)            # 0000014C
lbl_80011D88: # 04 & 0B-0D & 0F & 19: Bomb, Nut, Stick, Small Magic Jar, Small Deku Seeds or Arrows
    lui     a1, 0x3CF5                 # a1 = 3CF50000
    ori     a1, a1, 0xC28F             # a1 = 3CF5C28F
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x5E40($at)          # 80105E40
    lui     $at, 0x43A0                # $at = 43A00000
    mtc1    $at, $f2                   # $f2 = 320.00
    b       lbl_80011F68
    swc1    $f10, 0x014C(s0)           # 0000014C
lbl_80011DB0: # 0E: Large Magic Jar
    lui     a1, 0x3D38                 # a1 = 3D380000
    ori     a1, a1, 0x51EB             # a1 = 3D3851EB
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x5E44($at)          # 80105E44
    lui     $at, 0x43A0                # $at = 43A00000
    mtc1    $at, $f2                   # $f2 = 320.00
    b       lbl_80011F68
    swc1    $f16, 0x014C(s0)           # 0000014C
lbl_80011DD8: # 13: Orange Rupee
    lui     a1, 0x3D38                 # a1 = 3D380000
    ori     a1, a1, 0x51EB             # a1 = 3D3851EB
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x5E48($at)          # 80105E48
    lui     $at, 0x8010                # $at = 80100000
    swc1    $f18, 0x014C(s0)           # 0000014C
    b       lbl_80011F68
    lwc1    $f2, 0x5E4C($at)           # 80105E4C
lbl_80011E00: # 14: Purple Rupee
    lui     a1, 0x3CF5                 # a1 = 3CF50000
    ori     a1, a1, 0xC28F             # a1 = 3CF5C28F
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x5E50($at)           # 80105E50
    lui     $at, 0x8010                # $at = 80100000
    swc1    $f4, 0x014C(s0)            # 0000014C
    b       lbl_80011F68
    lwc1    $f2, 0x5E54($at)           # 80105E54
lbl_80011E28: # 12: Flexible Drop
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f2                   # $f2 = 500.00
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    swc1    $f2, 0x0034($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x5E58($at)           # 80105E58
    lwc1    $f2, 0x0034($sp)
    b       lbl_80011F68
    swc1    $f6, 0x014C(s0)            # 0000014C
lbl_80011E58: # 15: Deku Shield
    lw      a0, 0x0044($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x00CB          # a1 = 000000CB
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    sb      v0, 0x001E(s0)             # 0000001E
    lw      a0, 0x0044($sp)
    jal     func_80020FA4
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lui     a1, 0x3F00                 # a1 = 3F000000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f8, 0x014C(s0)            # 0000014C
    lwc1    $f10, 0x5E5C($at)          # 80105E5C
    addiu   t4, $zero, 0x4000          # t4 = 00004000
    swc1    $f10, 0x0030($sp)
    b       lbl_80011F68
    sh      t4, 0x0030(s0)             # 00000030
lbl_80011EB4: # 16: Hylian Shield
    lw      a0, 0x0044($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x00DC          # a1 = 000000DC
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    sb      v0, 0x001E(s0)             # 0000001E
    lw      a0, 0x0044($sp)
    jal     func_80020FA4
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lui     a1, 0x3F00                 # a1 = 3F000000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f16, 0x014C(s0)           # 0000014C
    lwc1    $f18, 0x5E60($at)          # 80105E60
    addiu   t5, $zero, 0x4000          # t5 = 00004000
    swc1    $f18, 0x0030($sp)
    b       lbl_80011F68
    sh      t5, 0x0030(s0)             # 00000030
lbl_80011F10: # 17 & 18: Goron/Zora Tunic
    lw      a0, 0x0044($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x00F2          # a1 = 000000F2
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    sb      v0, 0x001E(s0)             # 0000001E
    lw      a0, 0x0044($sp)
    jal     func_80020FA4
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lui     a1, 0x3F00                 # a1 = 3F000000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    addiu   t6, $zero, 0x4000          # t6 = 00004000
    swc1    $f4, 0x014C(s0)            # 0000014C
    lwc1    $f6, 0x5E64($at)           # 80105E64
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f6, 0x0030($sp)
    sh      t6, 0x0030(s0)             # 00000030
lbl_80011F68:
    sh      $zero, 0x0146(s0)          # 00000146
    mfc1    a1, $f2
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    lw      a3, 0x0030($sp)
    jal     func_8001EC20
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lw      t9, 0x0024(s0)             # 00000024
    lw      t8, 0x0028(s0)             # 00000028
    addiu   t7, $zero, 0x00B4          # t7 = 000000B4
    sw      t9, 0x0038(s0)             # 00000038
    lw      t9, 0x002C(s0)             # 0000002C
    sb      t7, 0x00C8(s0)             # 000000C8
    sh      $zero, 0x0142(s0)          # 00000142
    sw      t8, 0x003C(s0)             # 0000003C
    sw      t9, 0x0040(s0)             # 00000040
    lh      t0, 0x002A($sp)
    addiu   t2, $zero, 0x000F          # t2 = 0000000F
    addiu   t3, $zero, 0x0023          # t3 = 00000023
    bnel    t0, $zero, lbl_80011FDC
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x8001                 # a1 = 80010000
    addiu   a1, a1, 0x21E0             # a1 = 800121E0
    jal     func_80011B40
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    b       lbl_800121A0
    sh      t1, 0x014A(s0)             # 0000014A
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80011FDC:
    lhu     t4, 0x001C(s0)             # 0000001C
    sh      t2, 0x014A(s0)             # 0000014A
    sh      t3, 0x0144(s0)             # 00000144
    sltiu   $at, t4, 0x001A
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0060(s0)            # 00000060
    beq     $at, $zero, lbl_80012150
    swc1    $f0, 0x006C(s0)            # 0000006C
    sll     t4, t4,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t4
    lw      t4, 0x5E68($at)            # 80105E68
    jr      t4
    nop
lbl_80012014: # 00: Green Rupee
    lw      a0, 0x0044($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0084          # a1 = 00000084
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_80012028: # 01: Blue Rupee
    lw      a0, 0x0044($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0085          # a1 = 00000085
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_8001203C: # 02: Red Rupee
    lw      a0, 0x0044($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0086          # a1 = 00000086
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_80012050: # 14: Purple Rupee
    lw      a0, 0x0044($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0087          # a1 = 00000087
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_80012064: # 13: Orange Rupee
    lw      a0, 0x0044($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0088          # a1 = 00000088
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_80012078: # 03: Recovery Heart
    lw      a0, 0x0044($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0083          # a1 = 00000083
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_8001208C: # 12: Flexible Drop
    lw      a0, 0x0044($sp)
    jal     func_800720BC
    addiu   a1, $zero, 0x0070          # a1 = 00000070
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_800120A0: # 04 & 0B: Bombs
    lw      a0, 0x0044($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x008E          # a1 = 0000008E
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_800120B4: # 05: Arrow (1)
    lw      a0, 0x0044($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_800120C8: # 08: Deku Seeds or Arrows (5)
    lw      a0, 0x0044($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0092          # a1 = 00000092
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_800120DC: # 09: Deku Seeds or Arrows (10)
    lw      a0, 0x0044($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0093          # a1 = 00000093
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_800120F0: # 0A: Deku Seeds or Arrows (30)
    lw      a0, 0x0044($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0094          # a1 = 00000094
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_80012104: # 0E: Large Magic Jar
    addiu   t5, $zero, 0x0043          # t5 = 00000043
    b       lbl_80012150
    sw      t5, 0x002C($sp)
lbl_80012110: # 0F: Small Magic Jar
    addiu   t6, $zero, 0x0044          # t6 = 00000044
    b       lbl_80012150
    sw      t6, 0x002C($sp)
lbl_8001211C: # 11: Small Key
    lw      a0, 0x0044($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0077          # a1 = 00000077
    b       lbl_80012154
    lw      t0, 0x002C($sp)
lbl_80012130: # 10: Small Deku Seeds or Arrows (5)
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    b       lbl_80012150
    sw      t7, 0x002C($sp)
lbl_8001213C: # 0C: Deku Nut
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    b       lbl_80012150
    sw      t8, 0x002C($sp)
lbl_80012148: # 0D: Deku Stick
    addiu   t9, $zero, 0x0007          # t9 = 00000007
    sw      t9, 0x002C($sp)
lbl_80012150: # 06 & 07 & 15+: Piece of Heart, Heart Container, Shields, Tunics, Special Bomb Drop
    lw      t0, 0x002C($sp)
lbl_80012154:
    or      a0, s0, $zero              # a0 = 00000000
    beq     t0, $zero, lbl_8001217C
    nop
    jal     func_80022BB0
    lw      a1, 0x0044($sp)
    bne     v0, $zero, lbl_8001217C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jal     func_80022CF4
    lw      a2, 0x002C($sp)
lbl_8001217C:
    lui     a1, 0x8001                 # a1 = 80010000
    addiu   a1, a1, 0x27E0             # a1 = 800127E0
    jal     func_80011B40
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jalr    $ra, t9
    nop
lbl_800121A0:
    lw      $ra, 0x001C($sp)
lbl_800121A4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_800121B4:
# Destruct function
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0150             # a1 = 00000150
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800121E0:
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      v1, 0x001C(s0)             # 0000001C
    slti    $at, v1, 0x0003
    bne     $at, $zero, lbl_80012220
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v1, $at, lbl_80012218
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lh      t6, 0x014A(s0)             # 0000014A
    bltz    t6, lbl_80012220
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_80012218:
    bnel    v1, $at, lbl_80012238
    slti    $at, v1, 0x0015
lbl_80012220:
    lh      t7, 0x00B6(s0)             # 000000B6
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   t8, t7, 0x03C0             # t8 = 000003C0
    b       lbl_800122E4
    sh      t8, 0x00B6(s0)             # 000000B6
    slti    $at, v1, 0x0015
lbl_80012238:
    bne     $at, $zero, lbl_800122E4
    addiu   $at, $zero, 0x0019         # $at = 00000019
    beql    v1, $at, lbl_800122E8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lh      t9, 0x014A(s0)             # 0000014A
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    bne     t9, $at, lbl_80012294
    addiu   t3, $zero, 0xC000          # t3 = FFFFC000
    lh      a1, 0x0030(s0)             # 00000030
    addiu   t0, $zero, 0x05DC          # t0 = 000005DC
    sw      t0, 0x0010($sp)
    addiu   a1, a1, 0xC000             # a1 = FFFFC000
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    bne     v0, $zero, lbl_800122C4
    addiu   t1, $zero, 0xFFFE          # t1 = FFFFFFFE
    b       lbl_800122C4
    sh      t1, 0x014A(s0)             # 0000014A
lbl_80012294:
    lh      t2, 0x0030(s0)             # 00000030
    addiu   t4, $zero, 0x05DC          # t4 = 000005DC
    sw      t4, 0x0010($sp)
    subu    a1, t3, t2
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    bne     v0, $zero, lbl_800122C4
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    sh      t5, 0x014A(s0)             # 0000014A
lbl_800122C4:
    addiu   t6, $zero, 0x01F4          # t6 = 000001F4
    sw      t6, 0x0010($sp)
    addiu   a0, s0, 0x0030             # a0 = 00000030
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508
    addiu   a3, $zero, 0x09C4          # a3 = 000009C4
    lh      v1, 0x001C(s0)             # 0000001C
lbl_800122E4:
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_800122E8:
    bnel    v1, $at, lbl_80012318
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f4                   # $f4 = 150.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x5ED0($at)           # 80105ED0
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x00BC(s0)           # 000000BC
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80012318:
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f0
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lh      t7, 0x0144(s0)             # 00000144
    bnel    t7, $zero, lbl_80012364
    lh      t9, 0x014A(s0)             # 0000014A
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     v1, $at, lbl_80012360
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v1, $at, lbl_80012360
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v1, $at, lbl_80012360
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sh      t8, 0x0144(s0)             # 00000144
lbl_80012360:
    lh      t9, 0x014A(s0)             # 0000014A
lbl_80012364:
    bnel    t9, $zero, lbl_80012398
    mtc1    $zero, $f16                # $f16 = 0.00
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     v1, $at, lbl_80012394
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v1, $at, lbl_80012394
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beql    v1, $at, lbl_80012398
    mtc1    $zero, $f16                # $f16 = 0.00
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80012394:
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_80012398:
    lwc1    $f18, 0x006C(s0)           # 0000006C
    c.eq.s  $f16, $f18
    nop
    bc1tl   lbl_800123D0
    lw      $ra, 0x0024($sp)
    lhu     t0, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x8001                 # a1 = 80010000
    andi    t1, t0, 0x0001             # t1 = 00000000
    bnel    t1, $zero, lbl_800123D0
    lw      $ra, 0x0024($sp)
    jal     func_80011B40
    addiu   a1, a1, 0x23E0             # a1 = 800123E0
    lw      $ra, 0x0024($sp)
lbl_800123D0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800123E0:
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    slti    $at, t6, 0x0003
    beql    $at, $zero, lbl_80012414
    lw      t9, 0x0044($sp)
    lh      t7, 0x00B6(s0)             # 000000B6
    addiu   t8, t7, 0x03C0             # t8 = 000003C0
    sh      t8, 0x00B6(s0)             # 000000B6
    lw      t9, 0x0044($sp)
lbl_80012414:
    lui     t0, 0x0001                 # t0 = 00010000
    lui     $at, 0x4120                # $at = 41200000
    addu    t0, t0, t9
    lw      t0, 0x1DE4(t0)             # 00011DE4
    andi    t1, t0, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_800124B0
    lhu     v0, 0x0088(s0)             # 00000088
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D90
    nop
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x0030($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0034($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lui     t2, 0x800E                 # t2 = 800E0000
    lui     t3, 0x800E                 # t3 = 800E0000
    add.s   $f18, $f0, $f16
    addiu   t3, t3, 0x77A4             # t3 = 800E77A4
    addiu   t2, t2, 0x77A0             # t2 = 800E77A0
    lui     a2, 0x800E                 # a2 = 800E0000
    lui     a3, 0x800E                 # a3 = 800E0000
    swc1    $f18, 0x0038($sp)
    addiu   a3, a3, 0x77B4             # a3 = 800E77B4
    addiu   a2, a2, 0x77A8             # a2 = 800E77A8
    sw      t2, 0x0010($sp)
    sw      t3, 0x0014($sp)
    lw      a0, 0x0044($sp)
    jal     func_8001C66C
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    lhu     v0, 0x0088(s0)             # 00000088
lbl_800124B0:
    lui     $at, 0xC000                # $at = C0000000
    andi    t4, v0, 0x0003             # t4 = 00000000
    beql    t4, $zero, lbl_8001250C
    lw      $ra, 0x0024($sp)
    lwc1    $f0, 0x0060(s0)            # 00000060
    mtc1    $at, $f4                   # $f4 = -2.00
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x8001                 # a1 = 80010000
    c.lt.s  $f4, $f0
    lui     $at, 0x8010                # $at = 80100000
    bc1f    lbl_800124F4
    nop
    jal     func_80011B40
    addiu   a1, a1, 0x21E0             # a1 = 800121E0
    mtc1    $zero, $f6                 # $f6 = 0.00
    b       lbl_80012508
    swc1    $f6, 0x0060(s0)            # 00000060
lbl_800124F4:
    lwc1    $f8, 0x5ED4($at)           # 00005ED4
    andi    t5, v0, 0xFFFE             # t5 = 00000000
    sh      t5, 0x0088(s0)             # 00000088
    mul.s   $f10, $f0, $f8
    swc1    $f10, 0x0060(s0)           # 00000060
lbl_80012508:
    lw      $ra, 0x0024($sp)
lbl_8001250C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8001251C:
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0054($sp)
    lh      t6, 0x014A(s0)             # 0000014A
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   t7, t6, 0x0001             # t7 = 00000001
    bne     v0, $at, lbl_80012630
    sh      t7, 0x014A(s0)             # 0000014A
    lwc1    $f0, 0x0060(s0)            # 00000060
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0xBFC0                # $at = BFC00000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80012634
    slti    $at, v0, 0x0003
    mtc1    $at, $f2                   # $f2 = -1.50
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    c.lt.s  $f0, $f2
    swc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f8, 0x5ED8($at)           # 80105ED8
    lui     $at, 0x4040                # $at = 40400000
    bc1f    lbl_80012590
    swc1    $f8, 0x006C(s0)            # 0000006C
    swc1    $f2, 0x0060(s0)            # 00000060
    lwc1    $f0, 0x0060(s0)            # 00000060
lbl_80012590:
    mtc1    $at, $f10                  # $f10 = 3.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f18                  # $f18 = 1000.00
    add.s   $f16, $f0, $f10
    lh      t2, 0x0018(s0)             # 00000018
    mul.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t1, $f6
    nop
    addu    t3, t2, t1
    sh      t3, 0x0018(s0)             # 00000018
    jal     func_80063684              # coss?
    lh      a0, 0x0018(s0)             # 00000018
    swc1    $f0, 0x0034($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x008A(s0)             # 0000008A
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f8                   # $f8 = -3.00
    lwc1    $f10, 0x0034($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lh      a0, 0x0018(s0)             # 00000018
    mul.s   $f16, $f8, $f10
    nop
    mul.s   $f18, $f0, $f16
    add.s   $f6, $f4, $f18
    jal     func_80063684              # coss?
    swc1    $f6, 0x0024(s0)            # 00000024
    swc1    $f0, 0x0034($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x008A(s0)             # 0000008A
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f8                   # $f8 = -3.00
    lwc1    $f10, 0x0034($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    lh      v0, 0x001C(s0)             # 0000001C
    mul.s   $f16, $f8, $f10
    nop
    mul.s   $f4, $f0, $f16
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x002C(s0)            # 0000002C
lbl_80012630:
    slti    $at, v0, 0x0003
lbl_80012634:
    beql    $at, $zero, lbl_80012650
    slti    $at, v0, 0x0015
    lh      t4, 0x00B6(s0)             # 000000B6
    addiu   t5, t4, 0x03C0             # t5 = 000003C0
    b       lbl_80012684
    sh      t5, 0x00B6(s0)             # 000000B6
    slti    $at, v0, 0x0015
lbl_80012650:
    bne     $at, $zero, lbl_80012684
    addiu   $at, $zero, 0x0019         # $at = 00000019
    beql    v0, $at, lbl_80012688
    lui     $at, 0x4000                # $at = 40000000
    lh      t6, 0x0030(s0)             # 00000030
    lh      t8, 0x00B6(s0)             # 000000B6
    addiu   t7, t6, 0xFD44             # t7 = FFFFFD44
    sh      t7, 0x0030(s0)             # 00000030
    lh      t0, 0x0030(s0)             # 00000030
    addiu   t9, t8, 0x0190             # t9 = 00000190
    sh      t9, 0x00B6(s0)             # 000000B6
    addiu   t2, t0, 0xC000             # t2 = FFFFC000
    sh      t2, 0x00B4(s0)             # 000000B4
lbl_80012684:
    lui     $at, 0x4000                # $at = 40000000
lbl_80012688:
    mtc1    $at, $f8                   # $f8 = 2.00
    lwc1    $f10, 0x0060(s0)           # 00000060
    c.le.s  $f10, $f8
    nop
    bc1fl   lbl_800126D0
    lw      t4, 0x0054($sp)
    lh      v1, 0x00B8(s0)             # 000000B8
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    andi    v0, v1, 0xFFFF             # v0 = 00000000
    addiu   v0, v0, 0x2710             # v0 = 00002710
    slt     $at, v0, $at
    beq     $at, $zero, lbl_800126C8
    addiu   t1, v1, 0x2710             # t1 = 00002710
    b       lbl_800126CC
    sh      t1, 0x00B8(s0)             # 000000B8
lbl_800126C8:
    sh      t3, 0x00B8(s0)             # 000000B8
lbl_800126CC:
    lw      t4, 0x0054($sp)
lbl_800126D0:
    lui     t5, 0x0001                 # t5 = 00010000
    addu    t5, t5, t4
    lw      t5, 0x1DE4(t5)             # 00011DE4
    andi    t6, t5, 0x0001             # t6 = 00000000
    bnel    t6, $zero, lbl_8001279C
    lhu     t9, 0x0088(s0)             # 00000088
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    sub.s   $f18, $f0, $f16
    lwc1    $f8, 0x0024(s0)            # 00000024
    mul.s   $f6, $f18, $f4
    add.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0040($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    sub.s   $f18, $f0, $f16
    lwc1    $f8, 0x0028(s0)            # 00000028
    mul.s   $f6, $f18, $f4
    add.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0044($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    sub.s   $f18, $f0, $f16
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     t7, 0x800E                 # t7 = 800E0000
    lui     t8, 0x800E                 # t8 = 800E0000
    mul.s   $f6, $f18, $f4
    addiu   t8, t8, 0x77A4             # t8 = 800E77A4
    addiu   t7, t7, 0x77A0             # t7 = 800E77A0
    lui     a2, 0x800E                 # a2 = 800E0000
    lui     a3, 0x800E                 # a3 = 800E0000
    addiu   a3, a3, 0x77B4             # a3 = 800E77B4
    addiu   a2, a2, 0x77A8             # a2 = 800E77A8
    add.s   $f10, $f6, $f8
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    lw      a0, 0x0054($sp)
    swc1    $f10, 0x0048($sp)
    jal     func_8001C66C
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFF0
    lhu     t9, 0x0088(s0)             # 00000088
lbl_8001279C:
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x8001                 # a1 = 80010000
    andi    t0, t9, 0x0003             # t0 = 00000000
    beql    t0, $zero, lbl_800127D0
    lw      $ra, 0x0024($sp)
    jal     func_80011B40
    addiu   a1, a1, 0x21E0             # a1 = 800121E0
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $zero, $f18                # $f18 = 0.00
    sh      $zero, 0x00B8(s0)          # 000000B8
    swc1    $f16, 0x0060(s0)           # 00000060
    swc1    $f18, 0x0068(s0)           # 00000068
    lw      $ra, 0x0024($sp)
lbl_800127D0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_800127E0:
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    sw      t6, 0x002C($sp)
    lh      t7, 0x0142(s0)             # 00000142
    beql    t7, $zero, lbl_8001284C
    lh      t0, 0x014A(s0)             # 0000014A
    jal     func_80022BB0
    sw      a1, 0x0034($sp)
    bne     v0, $zero, lbl_80012844
    lw      a1, 0x0034($sp)
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lh      a2, 0x0142(s0)             # 00000142
    or      a0, s0, $zero              # a0 = 00000000
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lh      t8, 0x014A(s0)             # 0000014A
    addiu   t9, t8, 0x0001             # t9 = 00000001
    b       lbl_80012848
    sh      t9, 0x014A(s0)             # 0000014A
lbl_80012844:
    sh      $zero, 0x0142(s0)          # 00000142
lbl_80012848:
    lh      t0, 0x014A(s0)             # 0000014A
lbl_8001284C:
    lw      t1, 0x002C($sp)
    bnel    t0, $zero, lbl_8001286C
    lw      t3, 0x0024(t1)             # 00000024
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80012928
    lw      $ra, 0x0024($sp)
    lw      t3, 0x0024(t1)             # 00000024
lbl_8001286C:
    lh      v0, 0x001C(s0)             # 0000001C
    sw      t3, 0x0024(s0)             # 00000024
    lw      t2, 0x0028(t1)             # 00000028
    slti    $at, v0, 0x0003
    sw      t2, 0x0028(s0)             # 00000028
    lw      t3, 0x002C(t1)             # 0000002C
    beq     $at, $zero, lbl_8001289C
    sw      t3, 0x002C(s0)             # 0000002C
    lh      t4, 0x00B6(s0)             # 000000B6
    addiu   t5, t4, 0x03C0             # t5 = 000003C0
    b       lbl_800128AC
    sh      t5, 0x00B6(s0)             # 000000B6
lbl_8001289C:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v0, $at, lbl_800128B0
    lh      a0, 0x014A(s0)             # 0000014A
    sh      $zero, 0x00B6(s0)          # 000000B6
lbl_800128AC:
    lh      a0, 0x014A(s0)             # 0000014A
lbl_800128B0:
    addiu   $at, $zero, 0x3A98         # $at = 00003A98
    multu   a0, $at
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      t6, 0x014A(s0)             # 0000014A
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x5EDC($at)          # 80105EDC
    mtc1    t6, $f6                    # $f6 = 0.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    cvt.s.w $f8, $f6
    lui     t7, 0x8012                 # t7 = 80120000
    lui     $at, 0x41A0                # $at = 41A00000
    mul.s   $f16, $f8, $f10
    lwc1    $f8, 0x0028(s0)            # 00000028
    mul.s   $f18, $f0, $f16
    add.s   $f6, $f4, $f18
    add.s   $f10, $f8, $f6
    swc1    $f10, 0x0028(s0)           # 00000028
    lw      t7, -0x5A2C(t7)            # 8011A5D4
    bnel    t7, $zero, lbl_80012928
    lw      $ra, 0x0024($sp)
    lwc1    $f16, 0x0028(s0)           # 00000028
    mtc1    $at, $f4                   # $f4 = 20.00
    nop
    add.s   $f18, $f16, $f4
    swc1    $f18, 0x0028(s0)           # 00000028
    lw      $ra, 0x0024($sp)
lbl_80012928:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80012938:
# Main Update function
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      $zero, 0x003C($sp)
    sh      $zero, 0x003A($sp)
    lh      v0, 0x014A(s0)             # 0000014A
    blez    v0, lbl_8001296C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x014A(s0)             # 0000014A
    lh      v0, 0x014A(s0)             # 0000014A
lbl_8001296C:
    blez    v0, lbl_8001298C
    slti    $at, v0, 0x0029
    beql    $at, $zero, lbl_80012990
    lw      t9, 0x013C(s0)             # 0000013C
    lh      t7, 0x0144(s0)             # 00000144
    bgtzl   t7, lbl_80012990
    lw      t9, 0x013C(s0)             # 0000013C
    sh      v0, 0x0146(s0)             # 00000146
lbl_8001298C:
    lw      t9, 0x013C(s0)             # 0000013C
lbl_80012990:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f2, 0x5EE0($at)           # 80105EE0
    lwc1    $f0, 0x014C(s0)            # 0000014C
    mtc1    $zero, $f6                 # $f6 = 0.00
    mfc1    a2, $f2
    mul.s   $f4, $f0, $f2
    mfc1    a1, $f0
    addiu   a0, s0, 0x0050             # a0 = 00000050
    swc1    $f6, 0x0010($sp)
    mfc1    a3, $f4
    jal     func_80064178
    nop
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f10, 0x006C(s0)           # 0000006C
    lwc1    $f2, 0x0050(s0)            # 00000050
    c.eq.s  $f8, $f10
    swc1    $f2, 0x0058(s0)            # 00000058
    swc1    $f2, 0x0054(s0)            # 00000054
    bc1tl   lbl_80012B74
    addiu   a2, s0, 0x0150             # a2 = 00000150
    lhu     t8, 0x0088(s0)             # 00000088
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s1
    andi    t0, t8, 0x0003             # t0 = 00000000
    beq     t0, $zero, lbl_80012AF0
    lui     t1, 0x8011                 # t1 = 80110000
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      t1, 0x4DD0(t1)             # 80114DD0
    lui     a1, 0x8011                 # a1 = 80110000
    addiu   a1, a1, 0x4DD4             # a1 = 80114DD4
    beq     v0, t1, lbl_80012AE4
    lui     $at, 0x8011                # $at = 80110000
    sw      v0, 0x4DD0($at)            # 80114DD0
    sh      $zero, 0x0000(a1)          # 80114DD4
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    sll     t2, v1,  1
lbl_80012A34:
    addu    t3, s1, t2
    lhu     t4, 0x1B9C(t3)             # 00001B9C
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_80012AD0
    addiu   v1, v1, 0x0001             # v1 = 00000001
    multu   v1, a0
    mflo    t6
    addu    t7, s1, t6
    lw      v0, 0x0814(t7)             # 00000814
    beql    v0, $zero, lbl_80012AD0
    addiu   v1, v1, 0x0001             # v1 = 00000002
    lw      t9, 0x0130(v0)             # 00010130
    beql    t9, $zero, lbl_80012AD0
    addiu   v1, v1, 0x0001             # v1 = 00000003
    lwc1    $f16, 0x0100(v0)           # 00010100
    lwc1    $f18, 0x0024(v0)           # 00010024
    c.eq.s  $f16, $f18
    nop
    bc1fl   lbl_80012AB8
    lh      t8, 0x0000(a1)             # 80114DD4
    lwc1    $f4, 0x0104(v0)            # 00010104
    lwc1    $f6, 0x0028(v0)            # 00010028
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80012AB8
    lh      t8, 0x0000(a1)             # 80114DD4
    lwc1    $f8, 0x0108(v0)            # 00010108
    lwc1    $f10, 0x002C(v0)           # 0001002C
    c.eq.s  $f8, $f10
    nop
    bc1tl   lbl_80012AD0
    addiu   v1, v1, 0x0001             # v1 = 00000004
    lh      t8, 0x0000(a1)             # 80114DD4
lbl_80012AB8:
    addiu   t0, t8, 0x0001             # t0 = 00000001
    sh      t0, 0x0000(a1)             # 80114DD4
    lui     a1, 0x8011                 # a1 = 80110000
    b       lbl_80012B08
    addiu   a1, a1, 0x4DD4             # a1 = 80114DD4
    addiu   v1, v1, 0x0001             # v1 = 00000005
lbl_80012AD0:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0032
    bnel    $at, $zero, lbl_80012A34
    sll     t2, v1,  1
lbl_80012AE4:
    lui     a1, 0x8011                 # a1 = 80110000
    b       lbl_80012B08
    addiu   a1, a1, 0x4DD4             # a1 = 80114DD4
lbl_80012AF0:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      t1, 0x003A($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x8011                 # a1 = 80110000
    addiu   a1, a1, 0x4DD4             # a1 = 80114DD4
lbl_80012B08:
    lh      t2, 0x003A($sp)
    lui     $at, 0x4170                # $at = 41700000
    or      a0, s1, $zero              # a0 = 00000000
    bne     t2, $zero, lbl_80012B28
    lui     a2, 0x4120                 # a2 = 41200000
    lh      t3, 0x0000(a1)             # 80114DD4
    beql    t3, $zero, lbl_80012B74
    addiu   a2, s0, 0x0150             # a2 = 00000150
lbl_80012B28:
    mtc1    $at, $f0                   # $f0 = 15.00
    addiu   t4, $zero, 0x001D          # t4 = 0000001D
    sw      t4, 0x0014($sp)
    mfc1    a3, $f0
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x5EE4($at)          # 80105EE4
    lwc1    $f18, 0x0080(s0)           # 00000080
    c.le.s  $f18, $f16
    nop
    bc1fl   lbl_80012B74
    addiu   a2, s0, 0x0150             # a2 = 00000150
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80012FA8
    lw      $ra, 0x0024($sp)
    addiu   a2, s0, 0x0150             # a2 = 00000150
lbl_80012B74:
    or      a1, a2, $zero              # a1 = 00000150
    sw      a2, 0x0028($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0028($sp)
    addu    a1, s1, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a0, s1, $zero              # a0 = 00000000
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0015         # $at = 00000015
    beq     v1, $at, lbl_80012BC4
    addiu   $at, $zero, 0x0016         # $at = 00000016
    beq     v1, $at, lbl_80012BC4
    addiu   $at, $zero, 0x0017         # $at = 00000017
    beq     v1, $at, lbl_80012BC4
    addiu   $at, $zero, 0x0018         # $at = 00000018
    bnel    v1, $at, lbl_80012C08
    lh      t5, 0x0144(s0)             # 00000144
lbl_80012BC4:
    jal     func_80063684              # coss?
    lh      a0, 0x00B4(s0)             # 000000B4
    lui     $at, 0x4214                # $at = 42140000
    mtc1    $at, $f4                   # $f4 = 37.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    mul.s   $f2, $f0, $f4
    c.le.s  $f6, $f2
    swc1    $f2, 0x00BC(s0)            # 000000BC
    bc1fl   lbl_80012BFC
    lwc1    $f10, 0x00BC(s0)           # 000000BC
    lwc1    $f8, 0x00BC(s0)            # 000000BC
    b       lbl_80012C04
    swc1    $f8, 0x00BC(s0)            # 000000BC
    lwc1    $f10, 0x00BC(s0)           # 000000BC
lbl_80012BFC:
    neg.s   $f16, $f10
    swc1    $f16, 0x00BC(s0)           # 000000BC
lbl_80012C04:
    lh      t5, 0x0144(s0)             # 00000144
lbl_80012C08:
    lui     $at, 0x41F0                # $at = 41F00000
    bgtzl   t5, lbl_80012FA8
    lw      $ra, 0x0024($sp)
    mtc1    $at, $f18                  # $f18 = 30.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lui     $at, 0xC248                # $at = C2480000
    c.le.s  $f4, $f18
    nop
    bc1fl   lbl_80012C68
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f0, 0x0094(s0)            # 00000094
    mtc1    $at, $f6                   # $f6 = -50.00
    lui     $at, 0x4248                # $at = 42480000
    c.le.s  $f6, $f0
    nop
    bc1fl   lbl_80012C68
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f8                   # $f8 = 50.00
    nop
    c.le.s  $f0, $f8
    nop
    bc1tl   lbl_80012C78
    lui     t6, 0x0001                 # t6 = 00010000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80012C68:
    jal     func_80022BB0
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80012FA4
    lui     t6, 0x0001                 # t6 = 00010000
lbl_80012C78:
    addu    t6, t6, s1
    lhu     t6, 0x0A20(t6)             # 00010A20
    bnel    t6, $zero, lbl_80012FA8
    lw      $ra, 0x0024($sp)
    lhu     t7, 0x001C(s0)             # 0000001C
    sltiu   $at, t7, 0x001A
    beq     $at, $zero, lbl_80012E28
    sll     t7, t7,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t7
    lw      t7, 0x5EE8($at)            # 80105EE8
    jr      t7
    nop
lbl_80012CAC: # 00: Green Rupee
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0084          # a1 = 00000084
    b       lbl_80012E2C
    lw      t0, 0x003C($sp)
lbl_80012CC0: # 01: Blue Rupee
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0085          # a1 = 00000085
    b       lbl_80012E2C
    lw      t0, 0x003C($sp)
lbl_80012CD4: # 02: Red Rupee
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0086          # a1 = 00000086
    b       lbl_80012E2C
    lw      t0, 0x003C($sp)
lbl_80012CE8: # 14: Purple Rupee
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0087          # a1 = 00000087
    b       lbl_80012E2C
    lw      t0, 0x003C($sp)
lbl_80012CFC: # 13: Orange Rupee
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0088          # a1 = 00000088
    b       lbl_80012E2C
    lw      t0, 0x003C($sp)
lbl_80012D10: # 0D: Deku Stick
    addiu   t9, $zero, 0x0007          # t9 = 00000007
    b       lbl_80012E28
    sw      t9, 0x003C($sp)
lbl_80012D1C: # 0C: Deku Nut
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    b       lbl_80012E28
    sw      t8, 0x003C($sp)
lbl_80012D28: # 03: Recovery Heart
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0083          # a1 = 00000083
    b       lbl_80012E2C
    lw      t0, 0x003C($sp)
lbl_80012D3C: # 12: Flexible Drop
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800720BC
    addiu   a1, $zero, 0x0070          # a1 = 00000070
    b       lbl_80012E2C
    lw      t0, 0x003C($sp)
lbl_80012D50: # 04 & 0B: Bombs
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x008E          # a1 = 0000008E
    b       lbl_80012E2C
    lw      t0, 0x003C($sp)
lbl_80012D64: # 05: Arrow (1)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    b       lbl_80012E2C
    lw      t0, 0x003C($sp)
lbl_80012D78: # 08: Deku Seeds or Arrows (5)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0092          # a1 = 00000092
    b       lbl_80012E2C
    lw      t0, 0x003C($sp)
lbl_80012D8C: # 09: Deku Seeds or Arrows (10)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0093          # a1 = 00000093
    b       lbl_80012E2C
    lw      t0, 0x003C($sp)
lbl_80012DA0: # 0A: Deku Seeds or Arrows (30)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0094          # a1 = 00000094
    b       lbl_80012E2C
    lw      t0, 0x003C($sp)
lbl_80012DB4: # 10: Small Deku Seeds or Arrows (5)
    addiu   t0, $zero, 0x003C          # t0 = 0000003C
    b       lbl_80012E28
    sw      t0, 0x003C($sp)
lbl_80012DC0: # 11: Small Key
    addiu   t1, $zero, 0x0042          # t1 = 00000042
    b       lbl_80012E28
    sw      t1, 0x003C($sp)
lbl_80012DCC: # 06: Piece of Heart
    addiu   t2, $zero, 0x003E          # t2 = 0000003E
    b       lbl_80012E28
    sw      t2, 0x003C($sp)
lbl_80012DD8: # 07: Heart Container
    addiu   t3, $zero, 0x003D          # t3 = 0000003D
    b       lbl_80012E28
    sw      t3, 0x003C($sp)
lbl_80012DE4: # 0E: Large Magic Jar
    addiu   t4, $zero, 0x0044          # t4 = 00000044
    b       lbl_80012E28
    sw      t4, 0x003C($sp)
lbl_80012DF0: # 0F: Small Magic Jar
    addiu   t5, $zero, 0x0043          # t5 = 00000043
    b       lbl_80012E28
    sw      t5, 0x003C($sp)
lbl_80012DFC: # 15: Deku Shield
    addiu   t6, $zero, 0x0029          # t6 = 00000029
    b       lbl_80012E28
    sw      t6, 0x003C($sp)
lbl_80012E08: # 16: Hylian Shield
    addiu   t7, $zero, 0x002A          # t7 = 0000002A
    b       lbl_80012E28
    sw      t7, 0x003C($sp)
lbl_80012E14: # 17: Zora Tunic
    addiu   t9, $zero, 0x002D          # t9 = 0000002D
    b       lbl_80012E28
    sw      t9, 0x003C($sp)
lbl_80012E20: # 18: Goron Tunic
    addiu   t8, $zero, 0x002C          # t8 = 0000002C
    sw      t8, 0x003C($sp)
lbl_80012E28:
    lw      t0, 0x003C($sp)
lbl_80012E2C:
    beql    t0, $zero, lbl_80012E58
    lh      v0, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    or      a1, s1, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80012E54
    lw      a2, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022CF4
    or      a1, s1, $zero              # a1 = 00000000
lbl_80012E54:
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80012E58:
    addiu   t1, v0, 0xFFFA             # t1 = FFFFFFFA
    sltiu   $at, t1, 0x0013
    beq     $at, $zero, lbl_80012EA8
    sll     t1, t1,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t1
    lw      t1, 0x5F50($at)            # 80105F50
    jr      t1
    nop
lbl_80012E7C: # "Get Item" Collectibles
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80012FA4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002071C
    lh      a1, 0x0140(s0)             # 00000140
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80012FA8
    lw      $ra, 0x0024($sp)
lbl_80012EA8: # Collectible Drops
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_80012EC0
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   $at, $zero, 0x0013         # $at = 00000013
    bne     v0, $at, lbl_80012EF0
    lw      t3, 0x003C($sp)
lbl_80012EC0:
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t2, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4803          # a0 = 00004803
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_80012F50
    or      a0, s1, $zero              # a0 = 00000000
lbl_80012EF0:
    beq     t3, $zero, lbl_80012F24
    lui     a3, 0x8010                 # a3 = 80100000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80012FA4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002071C
    lh      a1, 0x0140(s0)             # 00000140
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80012FA8
    lw      $ra, 0x0024($sp)
lbl_80012F24:
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 000043A0
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t4, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4824          # a0 = 00004824
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a0, s1, $zero              # a0 = 00000000
lbl_80012F50:
    jal     func_8002071C
    lh      a1, 0x0140(s0)             # 00000140
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    addiu   t6, $zero, 0x0023          # t6 = 00000023
    sh      t5, 0x014A(s0)             # 0000014A
    sh      t6, 0x0144(s0)             # 00000144
    sh      $zero, 0x00B8(s0)          # 000000B8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x014C(s0)             # 0000014C
    swc1    $f10, 0x0068(s0)           # 00000068
    swc1    $f16, 0x0060(s0)           # 00000060
    jal     func_80020F88
    swc1    $f18, 0x006C(s0)           # 0000006C
    lui     a1, 0x8001                 # a1 = 80010000
    sh      $zero, 0x0142(s0)          # 00000142
    addiu   a1, a1, 0x27E0             # a1 = 800127E0
    jal     func_80011B40
    or      a0, s0, $zero              # a0 = 00000000
lbl_80012FA4:
    lw      $ra, 0x0024($sp)
lbl_80012FA8:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80012FB8:
# Main Draw function
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x0146(a2)             # 00000146
    lh      t7, 0x0148(a2)             # 00000148
    and     t8, t6, t7
    bnel    t8, $zero, lbl_80013144
    lw      $ra, 0x0014($sp)
    lhu     t9, 0x001C(a2)             # 0000001C
    sltiu   $at, t9, 0x001A
    beq     $at, $zero, lbl_80013140
    sll     t9, t9,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t9
    lw      t9, 0x5F9C($at)            # 80105F9C
    jr      t9
    nop
lbl_80013000: # 00-02 & 13-14: Rupees
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80013150
    lw      a1, 0x002C($sp)
    b       lbl_80013144
    lw      $ra, 0x0014($sp)
lbl_80013014: # 06: Piece of Heart
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80013498
    lw      a1, 0x002C($sp)
    b       lbl_80013144
    lw      $ra, 0x0014($sp)
lbl_80013028: # 07: Heart Container
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800133A0
    lw      a1, 0x002C($sp)
    b       lbl_80013144
    lw      $ra, 0x0014($sp)
lbl_8001303C: # 03: Recovery Heart
    lh      v0, 0x014A(a2)             # 0000014A
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bgezl   v0, lbl_800130E8
    or      a0, a2, $zero              # a0 = 00000000
    bne     v0, $at, lbl_800130B8
    lw      a0, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    sw      a0, 0x0018($sp)
    addiu   a1, $zero, 0x00B7          # a1 = 000000B7
    jal     func_80081628              # ObjectIndex
    sw      a2, 0x0028($sp)
    sll     a1, v0, 24
    lw      a0, 0x0018($sp)
    sb      v0, 0x001F($sp)
    jal     func_80081688
    sra     a1, a1, 24
    beq     v0, $zero, lbl_80013140
    lw      a2, 0x0028($sp)
    lb      t0, 0x001F($sp)
    or      a1, a2, $zero              # a1 = 00000000
    sb      t0, 0x001E(a2)             # 0000001E
    sw      a2, 0x0028($sp)
    jal     func_80020FA4
    lw      a0, 0x002C($sp)
    lw      a2, 0x0028($sp)
    addiu   t1, $zero, 0xFFFE          # t1 = FFFFFFFE
    sh      t1, 0x014A(a2)             # 0000014A
    b       lbl_80013144
    lw      $ra, 0x0014($sp)
lbl_800130B8:
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f12                  # $f12 = 16.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      a0, 0x002C($sp)
    jal     func_800570C0
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    b       lbl_80013144
    lw      $ra, 0x0014($sp)
lbl_800130E4: # 04-05 & 08-11 & 19: Small Key & All non Rupee drops
    or      a0, a2, $zero              # a0 = 00000000
lbl_800130E8:
    jal     func_80013268
    lw      a1, 0x002C($sp)
    b       lbl_80013144
    lw      $ra, 0x0014($sp)
lbl_800130F8: # 15: Deku Shield
    lw      a0, 0x002C($sp)
    jal     func_800570C0
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    b       lbl_80013144
    lw      $ra, 0x0014($sp)
lbl_8001310C: # 16: Hylian Shield
    lw      a0, 0x002C($sp)
    jal     func_800570C0
    addiu   a1, $zero, 0x002B          # a1 = 0000002B
    b       lbl_80013144
    lw      $ra, 0x0014($sp)
lbl_80013120: # 17: Zora Tunic
    lw      a0, 0x002C($sp)
    jal     func_800570C0
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    b       lbl_80013144
    lw      $ra, 0x0014($sp)
lbl_80013134: # 18: Goron Tunic
    lw      a0, 0x002C($sp)
    jal     func_800570C0
    addiu   a1, $zero, 0x003B          # a1 = 0000003B
lbl_80013140:
    lw      $ra, 0x0014($sp)
lbl_80013144:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop

# Functions below this point are related to En_Item00 but are often called from outside

func_80013150:
# Draw Collectible Rupee (Green/Blue/Red/Orange/Purple)
# gameplay_keep d. list: 45150
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      a0, 0x0038($sp)
    lw      a1, 0x003C($sp)
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t7, 0x0038($sp)
    lh      v0, 0x001C(t7)             # 0000001C
    slti    $at, v0, 0x0003
    beq     $at, $zero, lbl_800131A0
    addiu   a3, v0, 0xFFF0             # a3 = FFFFFFF0
    b       lbl_800131A0
    or      a3, v0, $zero              # a3 = 00000000
lbl_800131A0:
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t1, 0x003C($sp)
    lw      a0, 0x0000(t1)             # 00000000
    sw      a3, 0x0030($sp)
    jal     func_800AB900
    sw      v1, 0x0024($sp)
    lw      t0, 0x0024($sp)
    lw      a3, 0x0030($sp)
    lui     t3, 0xDB06                 # t3 = DB060000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t3, t3, 0x0020             # t3 = DB060020
    sll     t4, a3,  2
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    lui     a1, 0x800E                 # a1 = 800E0000
    addu    a1, a1, t4
    sw      t3, 0x0000(v1)             # 00000000
    lw      a1, 0x77C0(a1)             # 800E77C0
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, a1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t5, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t5, t9
    addu    t2, t1, $at
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0x0404                 # t6 = 04040000
    addiu   t6, t6, 0x5150             # t6 = 04045150
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t4, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80013268:
# Draw Small Key & non-Rupee Drops (Bomb, Arrow, Stick, Nut, Magic Jar...)
# gameplay_keep d. list: 41D80
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0038($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0038($sp)
    lh      a2, 0x001C(t6)             # 0000001C
    addiu   a2, a2, 0xFFFD             # a2 = FFFFFFFD
    lw      s0, 0x0000(a3)             # 00000000
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x02C0(s0)             # 000002C0
    sw      a3, 0x003C($sp)
    jal     func_8009A574
    sw      a2, 0x0034($sp)
    lw      a2, 0x0034($sp)
    sw      v0, 0x02C0(s0)             # 000002C0
    lw      t7, 0x0038($sp)
    addiu   $at, $zero, 0x0019         # $at = 00000019
    lh      v1, 0x001C(t7)             # 0000001C
    bnel    v1, $at, lbl_800132C8
    slti    $at, v1, 0x0008
    b       lbl_800132D4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    slti    $at, v1, 0x0008
lbl_800132C8:
    bnel    $at, $zero, lbl_800132D8
    lw      a0, 0x02C0(s0)             # 000002C0
    addiu   a2, a2, 0xFFFD             # a2 = FFFFFFFE
lbl_800132D4:
    lw      a0, 0x02C0(s0)             # 000002C0
lbl_800132D8:
    jal     func_8007E6E0
    sw      a2, 0x0034($sp)
    lw      a2, 0x0034($sp)
    addiu   t8, v0, 0x0008             # t8 = 00000008
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    sw      t8, 0x02C0(s0)             # 000002C0
    sll     t0, a2,  2
    lui     a1, 0x800E                 # a1 = 800E0000
    addu    a1, a1, t0
    sw      t9, 0x0000(v0)             # 00000000
    lw      a1, 0x77D4(a1)             # 800E77D4
    lui     t5, 0x8012                 # t5 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t2, a1,  4
    srl     t3, t2, 28
    sll     t4, t3,  2
    addu    t5, t5, t4
    lw      t5, 0x0C38(t5)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t1, t5
    addu    t7, t6, $at
    sw      t7, 0x0004(v0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t0, 0x003C($sp)
    lw      a0, 0x0000(t0)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0024($sp)
    lw      a3, 0x0024($sp)
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0x0404                 # t4 = 04040000
    addiu   t4, t4, 0x1D80             # t4 = 04041D80
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_800133A0:
# Draw Heart Container (Early collectible version)
# gameplay_keep d. list: Piece of Heart - Exterior & Heart Container - Interior [?]
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0038($sp)
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      a0, 0x0038($sp)
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t0, 0x0404                 # t0 = 04040000
    addiu   t0, t0, 0xC3D0             # t0 = 0403C3D0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    jal     func_8007E2C0
    lw      a0, 0x0000(s1)             # 00000000
    lw      a0, 0x0038($sp)
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80022554
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0020($sp)
    lw      a1, 0x0020($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0x0404                 # t5 = 04040000
    addiu   t5, t5, 0xC508             # t5 = 0403C508
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80013498:
# Draw Piece of Heart
# gameplay_keep d. list: Piece of Heart - Interior
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      a0, 0x0030($sp)
    lw      a1, 0x0034($sp)
    jal     func_80022554
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0034($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0020($sp)
    lw      a1, 0x0020($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0x0404                 # t2 = 04040000
    addiu   t2, t2, 0xB860             # t2 = 0403B860
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80013530:
# Convert collectibles to different items based on Link's Age and other factors like having a Bomb Bag
# A0 = Collectible Id
# V0 = New Collectible Id, or -1 to cancel the drop
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sra     a0, a0, 16
    lw      t6, 0x0004(v0)             # 8011A5D4
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     t6, $zero, lbl_80013580
    addiu   a1, a1, 0x8F34             # a1 = 800F8F34
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bnel    a0, $at, lbl_80013570
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    b       lbl_8001359C
    addiu   a0, $zero, 0x0008          # a0 = 00000008
    addiu   $at, $zero, 0x000D         # $at = 0000000D
lbl_80013570:
    bnel    a0, $at, lbl_800135A0
    addiu   $at, $zero, 0x0004         # $at = 00000004
    b       lbl_8001359C
    or      a0, $zero, $zero           # a0 = 00000000
lbl_80013580:
    beq     a0, $at, lbl_80013598
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     a0, $at, lbl_80013598
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    a0, $at, lbl_800135A0
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80013598:
    addiu   a0, $zero, 0x0010          # a0 = 00000010
lbl_8001359C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_800135A0:
    beq     a0, $at, lbl_800135B8
    addiu   $at, $zero, 0x0019         # $at = 00000019
    beq     a0, $at, lbl_800135B8
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     a0, $at, lbl_800135CC
    nop
lbl_800135B8:
    lbu     t7, 0x0002(a1)             # 800F8F36
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addu    t8, v0, t7
    lbu     t9, 0x0074(t8)             # 00000074
    beq     v1, t9, lbl_80013640
lbl_800135CC:
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   a1, a1, 0x8F34             # a1 = 800F8F34
    beq     a0, $at, lbl_800135F4
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     a0, $at, lbl_800135F4
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    a0, $at, lbl_80013608
    addiu   $at, $zero, 0x000E         # $at = 0000000E
lbl_800135F4:
    lbu     t0, 0x0003(a1)             # 800F8F37
    addu    t1, v0, t0
    lbu     t2, 0x0074(t1)             # 00000074
    beq     v1, t2, lbl_80013640
    addiu   $at, $zero, 0x000E         # $at = 0000000E
lbl_80013608:
    beq     a0, $at, lbl_80013618
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    a0, $at, lbl_80013624
    addiu   $at, $zero, 0x0010         # $at = 00000010
lbl_80013618:
    lb      t3, 0x0032(v0)             # 8011A602
    beq     t3, $zero, lbl_80013640
    addiu   $at, $zero, 0x0010         # $at = 00000010
lbl_80013624:
    bnel    a0, $at, lbl_8001364C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lbu     t4, 0x0006(a1)             # 800F8F3A
    addu    t5, v0, t4
    lbu     t6, 0x0074(t5)             # 00000074
    bnel    v1, t6, lbl_8001364C
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80013640:
    jr      $ra
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80013648:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_8001364C:
    bnel    a0, $at, lbl_80013670
    or      v0, a0, $zero              # v0 = 00000010
    lh      t7, 0x0030(v0)             # 00000040
    lh      t8, 0x002E(v0)             # 0000003E
    bnel    t7, t8, lbl_80013670
    or      v0, a0, $zero              # v0 = 00000010
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8001366C:
    or      v0, a0, $zero              # v0 = 00000010
lbl_80013670:
    jr      $ra
    nop


func_80013678:
# Spawn En_Item00 Actor (Actor 0015)
# A0 = Global Context
# A1 = vector3_f32* spawn position
# A2 = Actor Variable (& 0x8000 and & 0x4000 have special meaning)
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0030($sp)
    sll     s0, a2, 16
    sw      s1, 0x0034($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sra     s0, s0, 16
    sw      $ra, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      a0, 0x0058($sp)
    sw      a2, 0x0060($sp)
    andi    t0, s0, 0x4000             # t0 = 00000000
    andi    v1, s0, 0x8000             # v1 = 00000000
    andi    t1, s0, 0x3F00             # t1 = 00000000
    andi    s0, s0, 0x3FFF             # s0 = 00000000
    sll     s0, s0, 16
    sra     s0, s0, 16
    sll     t0, t0, 16
    sll     v1, v1, 16
    sll     t1, t1, 16
    andi    v0, s0, 0x00FF             # v0 = 00000000
    addiu   $at, $zero, 0x0012         # $at = 00000012
    or      s2, $zero, $zero           # s2 = 00000000
    sra     t0, t0, 16
    sra     v1, v1, 16
    bne     v0, $at, lbl_80013758
    sra     t1, t1, 16
    bne     t0, $zero, lbl_80013758
    lui     $at, 0x4220                # $at = 42200000
    lwc1    $f4, 0x0004(s1)            # 00000004
    mtc1    $at, $f6                   # $f6 = 40.00
    lw      a3, 0x0000(s1)             # 00000000
    lw      a1, 0x0058($sp)
    add.s   $f8, $f4, $f6
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0008(s1)           # 00000008
    sw      t7, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    or      s2, v0, $zero              # s2 = 00000000
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x0058($sp)
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x28E7          # a2 = 000028E7
    jal     func_8001E510
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    b       lbl_80013898
    or      v0, s2, $zero              # v0 = 00000000
lbl_80013758:
    bne     v1, $zero, lbl_80013788
    sll     a0, v0, 16
    sra     a0, a0, 16
    sh      v1, 0x0048($sp)
    sh      t0, 0x004A($sp)
    jal     func_80013530
    sh      t1, 0x0046($sp)
    sll     s0, v0, 16
    sra     s0, s0, 16
    lh      v1, 0x0048($sp)
    lh      t0, 0x004A($sp)
    lh      t1, 0x0046($sp)
lbl_80013788:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     s0, $at, lbl_80013894
    lw      a1, 0x0058($sp)
    lwc1    $f16, 0x0004(s1)           # 00000004
    lw      a3, 0x0000(s1)             # 00000000
    or      t3, s0, v1                 # t3 = 00000000
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x0008(s1)           # 00000008
    or      t4, t3, t1                 # t4 = 00000000
    sw      t4, 0x0024($sp)
    sh      t0, 0x004A($sp)
    sh      v1, 0x0048($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   a2, $zero, 0x0015          # a2 = 00000015
    jal     func_80025110              # ActorSpawn
    swc1    $f18, 0x0014($sp)
    lh      v1, 0x0048($sp)
    lh      t0, 0x004A($sp)
    beq     v0, $zero, lbl_80013894
    or      s2, v0, $zero              # s2 = 00000000
    bnel    v1, $zero, lbl_80013898
    or      v0, s2, $zero              # v0 = 00000000
    bne     t0, $zero, lbl_80013804
    lui     $at, 0xC000                # $at = C0000000
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    b       lbl_80013810
    swc1    $f4, 0x0060(v0)            # 00000060
lbl_80013804:
    mtc1    $at, $f6                   # $f6 = 8.00
    nop
    swc1    $f6, 0x0060(v0)            # 00000060
lbl_80013810:
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    lui     $at, 0x8010                # $at = 80100000
    swc1    $f8, 0x0068(s2)            # 00000068
    lwc1    $f10, 0x6004($at)          # 80106004
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f12                  # $f12 = 65536.00
    jal     func_80026D90
    swc1    $f10, 0x006C(s2)           # 0000006C
    trunc.w.s $f16, $f0
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    mfc1    t6, $f16
    jal     func_80020F88
    sh      t6, 0x0032(s2)             # 00000032
    lui     a1, 0x8001                 # a1 = 80010000
    addiu   a1, a1, 0x251C             # a1 = 8001251C
    jal     func_80011B40
    or      a0, s2, $zero              # a0 = 00000000
    lh      v0, 0x001C(s2)             # 0000001C
    addiu   t7, $zero, 0x00DC          # t7 = 000000DC
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     v0, $at, lbl_80013888
    sh      t7, 0x014A(s2)             # 0000014A
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_80013888
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_80013888
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sb      t8, 0x0003(s2)             # 00000003
lbl_80013888:
    lw      t9, 0x0004(s2)             # 00000004
    ori     t2, t9, 0x0010             # t2 = 00000010
    sw      t2, 0x0004(s2)             # 00000004
lbl_80013894:
    or      v0, s2, $zero              # v0 = 00000000
lbl_80013898:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_800138B0:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0030($sp)
    sll     s0, a2, 16
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sra     s0, s0, 16
    sw      $ra, 0x003C($sp)
    sw      a2, 0x0058($sp)
    andi    t0, s0, 0x4000             # t0 = 00000000
    andi    t6, s0, 0x8000             # t6 = 00000000
    andi    t1, s0, 0x3F00             # t1 = 00000000
    sll     s0, s0, 16
    sra     s0, s0, 16
    sll     t0, t0, 16
    sll     t1, t1, 16
    andi    v0, s0, 0x00FF             # v0 = 00000000
    addiu   $at, $zero, 0x0012         # $at = 00000012
    or      v1, $zero, $zero           # v1 = 00000000
    sra     t0, t0, 16
    sh      t6, 0x0044($sp)
    bne     v0, $at, lbl_80013988
    sra     t1, t1, 16
    bne     t0, $zero, lbl_80013988
    lui     $at, 0x4220                # $at = 42200000
    lwc1    $f4, 0x0004(s1)            # 00000004
    mtc1    $at, $f6                   # $f6 = 40.00
    lw      a3, 0x0000(s1)             # 00000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    add.s   $f8, $f4, $f6
    addiu   a0, s2, 0x1C24             # a0 = 00001C24
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0008(s1)           # 00000008
    sw      t7, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x28E7          # a2 = 000028E7
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_8001E510
    sw      v0, 0x004C($sp)
    b       lbl_80013A68
    lw      v1, 0x004C($sp)
lbl_80013988:
    sll     a0, v0, 16
    sra     a0, a0, 16
    sw      v1, 0x004C($sp)
    sh      t0, 0x0046($sp)
    jal     func_80013530
    sh      t1, 0x0042($sp)
    sll     s0, v0, 16
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    sra     s0, s0, 16
    lw      v1, 0x004C($sp)
    lh      t0, 0x0046($sp)
    beq     v0, $at, lbl_80013A68
    lh      t1, 0x0042($sp)
    lwc1    $f16, 0x0004(s1)           # 00000004
    lw      a3, 0x0000(s1)             # 00000000
    lh      t2, 0x0044($sp)
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x0008(s1)           # 00000008
    or      t3, s0, t2                 # t3 = 00000000
    or      t4, t3, t1                 # t4 = 00000000
    sw      t4, 0x0024($sp)
    sh      t0, 0x0046($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    addiu   a0, s2, 0x1C24             # a0 = 00001C24
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0015          # a2 = 00000015
    jal     func_80025110              # ActorSpawn
    swc1    $f18, 0x0014($sp)
    lh      t0, 0x0046($sp)
    beq     v0, $zero, lbl_80013A68
    or      v1, v0, $zero              # v1 = 00000000
    lh      t5, 0x0044($sp)
    bnel    t5, $zero, lbl_80013A6C
    or      v0, v1, $zero              # v0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    swc1    $f0, 0x0060(v0)            # 00000060
    beq     t0, $zero, lbl_80013A34
    swc1    $f0, 0x0068(v0)            # 00000068
    b       lbl_80013A3C
    swc1    $f0, 0x006C(v0)            # 0000006C
lbl_80013A34:
    lwc1    $f4, 0x6008($at)           # 80106008
    swc1    $f4, 0x006C(v0)            # 0000006C
lbl_80013A3C:
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f12                  # $f12 = 65536.00
    jal     func_80026D90
    sw      v1, 0x004C($sp)
    trunc.w.s $f6, $f0
    lw      v1, 0x004C($sp)
    lw      t8, 0x0004(v1)             # 00000004
    mfc1    t7, $f6
    ori     t9, t8, 0x0010             # t9 = 00000010
    sw      t9, 0x0004(v1)             # 00000004
    sh      t7, 0x0032(v1)             # 00000032
lbl_80013A68:
    or      v0, v1, $zero              # v0 = 00000000
lbl_80013A6C:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80013A84:
# Spawn Randomized Item Drop
# A0 = Global Context
# A1 = Actor* (if null, standard item drop)
# A2 = vector3_f32* spawn position
# A3 = Drop Table Offset
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s6, 0x0044($sp)
    sll     s6, a3, 16
    sw      s7, 0x0048($sp)
    sw      s5, 0x0040($sp)
    sw      s0, 0x002C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s5, a2, $zero              # s5 = 00000000
    or      s7, a0, $zero              # s7 = 00000000
    sra     s6, s6, 16
    sw      $ra, 0x004C($sp)
    sw      s4, 0x003C($sp)
    sw      s3, 0x0038($sp)
    sw      s2, 0x0034($sp)
    sw      s1, 0x0030($sp)
    sw      a3, 0x006C($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f4                   # $f4 = 16.00
    andi    t7, s6, 0x8000             # t7 = 00000000
    andi    s6, s6, 0x7FFF             # s6 = 00000000
    mul.s   $f6, $f0, $f4
    sll     s6, s6, 16
    sh      t7, 0x0054($sp)
    sra     s6, s6, 16
    lui     s3, 0x800E                 # s3 = 800E0000
    addiu   $at, $zero, 0x0012         # $at = 00000012
    addiu   s4, $zero, 0x00FF          # s4 = 000000FF
    trunc.w.s $f8, $f6
    mfc1    v0, $f8
    nop
    sll     v1, v0, 16
    beq     s0, $zero, lbl_80013BCC
    sra     v1, v1, 16
    lbu     a0, 0x0116(s0)             # 00000116
    lui     s3, 0x800E                 # s3 = 800E0000
    beq     a0, $zero, lbl_80013BB0
    andi    t5, a0, 0x0020             # t5 = 00000000
    andi    t8, a0, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80013B38
    or      v0, a0, $zero              # v0 = 00000000
    addiu   s6, $zero, 0x0010          # s6 = 00000010
    b       lbl_80013BB0
    addiu   v1, $zero, 0x000B          # v1 = 0000000B
lbl_80013B38:
    andi    t9, v0, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_80013B50
    andi    t0, v0, 0x0004             # t0 = 00000000
    addiu   s6, $zero, 0x0010          # s6 = 00000010
    b       lbl_80013BB0
    addiu   v1, $zero, 0x0006          # v1 = 00000006
lbl_80013B50:
    beq     t0, $zero, lbl_80013B64
    andi    t1, v0, 0x0008             # t1 = 00000000
    addiu   s6, $zero, 0x0060          # s6 = 00000060
    b       lbl_80013BB0
    addiu   v1, $zero, 0x0009          # v1 = 00000009
lbl_80013B64:
    beq     t1, $zero, lbl_80013B78
    andi    t2, v0, 0x0010             # t2 = 00000000
    addiu   s6, $zero, 0x0030          # s6 = 00000030
    b       lbl_80013BB0
    addiu   v1, $zero, 0x000B          # v1 = 0000000B
lbl_80013B78:
    beq     t2, $zero, lbl_80013B8C
    andi    t3, v0, 0x0020             # t3 = 00000000
    addiu   s6, $zero, 0x0060          # s6 = 00000060
    b       lbl_80013BB0
    addiu   v1, $zero, 0x000C          # v1 = 0000000C
lbl_80013B8C:
    beq     t3, $zero, lbl_80013BA0
    andi    t4, v0, 0x0040             # t4 = 00000000
    or      s6, $zero, $zero           # s6 = 00000000
    b       lbl_80013BB0
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80013BA0:
    beq     t4, $zero, lbl_80013BB0
    nop
    or      s6, $zero, $zero           # s6 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80013BB0:
    beq     t5, $zero, lbl_80013BC0
    addu    t6, s6, v1
    b       lbl_80013BE0
    addiu   s3, $zero, 0x0014          # s3 = 00000014
lbl_80013BC0:
    addu    s3, s3, t6
    b       lbl_80013BE0
    lbu     s3, 0x7804(s3)             # 00007818
lbl_80013BCC:
    sll     t7, v0, 16
    sra     t8, t7, 16
    addu    t9, s6, t8
    addu    s3, s3, t9
    lbu     s3, 0x7804(s3)             # 00007818
lbl_80013BE0:
    bne     s3, $at, lbl_80013DB8
    or      s1, s3, $zero              # s1 = 00000014
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lh      v0, 0x0030(v1)             # 8011A600
    slti    $at, v0, 0x0011
    beq     $at, $zero, lbl_80013C6C
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    lwc1    $f10, 0x0004(s5)           # 00000004
    lw      a3, 0x0000(s5)             # 00000000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    add.s   $f18, $f10, $f16
    addiu   a0, s7, 0x1C24             # a0 = 00001C24
    or      a1, s7, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x0008(s5)            # 00000008
    sw      t0, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f4, 0x0014($sp)
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x28E7          # a2 = 000028E7
    jal     func_8001E510
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    b       lbl_80013F04
    lw      $ra, 0x004C($sp)
lbl_80013C6C:
    slti    $at, v0, 0x0031
    beq     $at, $zero, lbl_80013C88
    addiu   s6, $zero, 0x00B0          # s6 = 000000B0
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   s3, $zero, 0x0003          # s3 = 00000003
    b       lbl_80013DB8
    addiu   s1, $zero, 0x0003          # s1 = 00000003
lbl_80013C88:
    slti    $at, v0, 0x0051
    beq     $at, $zero, lbl_80013CA4
    addiu   s6, $zero, 0x00A0          # s6 = 000000A0
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   s3, $zero, 0x0003          # s3 = 00000003
    b       lbl_80013DB8
    addiu   s1, $zero, 0x0003          # s1 = 00000003
lbl_80013CA4:
    lb      v0, 0x0032(v1)             # 00000032
    beq     v0, $zero, lbl_80013CCC
    nop
    lb      t3, 0x0033(v1)             # 00000033
    addiu   s6, $zero, 0x00A0          # s6 = 000000A0
    addiu   s3, $zero, 0x000E          # s3 = 0000000E
    bne     t3, $zero, lbl_80013CCC
    addiu   s1, $zero, 0x000E          # s1 = 0000000E
    b       lbl_80013DB8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80013CCC:
    beql    v0, $zero, lbl_80013CFC
    lw      v0, 0x0004(v1)             # 00000004
    lb      t5, 0x0033(v1)             # 00000033
    sra     t4, v0,  1
    addiu   s6, $zero, 0x00A0          # s6 = 000000A0
    slt     $at, t4, t5
    bne     $at, $zero, lbl_80013CF8
    addiu   s3, $zero, 0x000F          # s3 = 0000000F
    or      v1, $zero, $zero           # v1 = 00000000
    b       lbl_80013DB8
    addiu   s1, $zero, 0x000F          # s1 = 0000000F
lbl_80013CF8:
    lw      v0, 0x0004(v1)             # 00000004
lbl_80013CFC:
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x8F34             # a0 = 800F8F34
    beq     v0, $zero, lbl_80013D38
    nop
    lbu     t6, 0x0006(a0)             # 800F8F3A
    addiu   s6, $zero, 0x00A0          # s6 = 000000A0
    addiu   s3, $zero, 0x0010          # s3 = 00000010
    addu    t7, v1, t6
    lb      t8, 0x008C(t7)             # 0000008C
    addiu   s1, $zero, 0x0010          # s1 = 00000010
    slti    $at, t8, 0x0006
    beq     $at, $zero, lbl_80013D38
    nop
    b       lbl_80013DB8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80013D38:
    lui     a0, 0x8010                 # a0 = 80100000
    bne     v0, $zero, lbl_80013D70
    addiu   a0, a0, 0x8F34             # a0 = 800F8F34
    lbu     t9, 0x0003(a0)             # 800F8F37
    addiu   s6, $zero, 0x00A0          # s6 = 000000A0
    addiu   s3, $zero, 0x0009          # s3 = 00000009
    addu    t0, v1, t9
    lb      t1, 0x008C(t0)             # 0000008C
    addiu   s1, $zero, 0x0009          # s1 = 00000009
    slti    $at, t1, 0x0006
    beql    $at, $zero, lbl_80013D74
    lbu     t2, 0x0002(a0)             # 800F8F36
    b       lbl_80013DB8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80013D70:
    lbu     t2, 0x0002(a0)             # 800F8F36
lbl_80013D74:
    addiu   s6, $zero, 0x00D0          # s6 = 000000D0
    addiu   s3, $zero, 0x0004          # s3 = 00000004
    addu    t3, v1, t2
    lb      t4, 0x008C(t3)             # 0000008C
    addiu   s1, $zero, 0x0004          # s1 = 00000004
    slti    $at, t4, 0x0006
    beql    $at, $zero, lbl_80013DA0
    lh      t5, 0x0034(v1)             # 00000034
    b       lbl_80013DB8
    or      v1, $zero, $zero           # v1 = 00000000
    lh      t5, 0x0034(v1)             # 00000034
lbl_80013DA0:
    addiu   s6, $zero, 0x00A0          # s6 = 000000A0
    or      v1, $zero, $zero           # v1 = 00000000
    slti    $at, t5, 0x000B
    beq     $at, $zero, lbl_80013F00
    addiu   s3, $zero, 0x0002          # s3 = 00000002
    addiu   s1, $zero, 0x0002          # s1 = 00000002
lbl_80013DB8:
    beq     s4, s1, lbl_80013F00
    addu    t6, s6, v1
    lui     s2, 0x800E                 # s2 = 800E0000
    addu    s2, s2, t6
    lbu     s2, 0x78F4(s2)             # 800E78F4
    blezl   s2, lbl_80013F04
    lw      $ra, 0x004C($sp)
    lh      t7, 0x0054($sp)
lbl_80013DD8:
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 00000000
    bne     t7, $zero, lbl_80013EE0
    ori     a2, s6, 0x8000             # a2 = 000080A0
    sll     a0, s3, 16
    jal     func_80013530
    sra     a0, a0, 16
    andi    t8, v0, 0x00FF             # t8 = 00000000
    beq     s4, t8, lbl_80013EEC
    andi    s3, v0, 0x00FF             # s3 = 00000000
    lwc1    $f6, 0x0004(s5)            # 00000004
    lw      a3, 0x0000(s5)             # 00000000
    addiu   a0, s7, 0x1C24             # a0 = 00001C24
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x0008(s5)            # 00000008
    sw      s3, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    or      a1, s7, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0015          # a2 = 00000015
    or      s1, s3, $zero              # s1 = 00000000
    jal     func_80025110              # ActorSpawn
    swc1    $f8, 0x0014($sp)
    beq     v0, $zero, lbl_80013EEC
    or      s0, v0, $zero              # s0 = 00000000
    beq     s4, s1, lbl_80013EEC
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f10                  # $f10 = 8.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    lui     $at, 0x8010                # $at = 80100000
    swc1    $f10, 0x0060(v0)           # 00000060
    swc1    $f16, 0x0068(v0)           # 00000068
    lwc1    $f18, 0x600C($at)          # 8010600C
    lui     s1, 0x8001                 # s1 = 80010000
    addiu   s1, s1, 0x251C             # s1 = 8001251C
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x006C(v0)           # 0000006C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6010($at)           # 80106010
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t0, $f8
    jal     func_80020F88
    sh      t0, 0x0032(s0)             # 00000032
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80011B40
    or      a1, s1, $zero              # a1 = 8001251C
    lw      t1, 0x0004(s0)             # 00000004
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0011         # $at = 00000011
    ori     t2, t1, 0x0010             # t2 = 00000010
    beq     v0, $at, lbl_80013ED4
    sw      t2, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_80013ED4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_80013ED4
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    sb      t3, 0x0003(s0)             # 00000003
lbl_80013ED4:
    addiu   t4, $zero, 0x00DC          # t4 = 000000DC
    b       lbl_80013EEC
    sh      t4, 0x014A(s0)             # 0000014A
lbl_80013EE0:
    sll     a2, a2, 16
    jal     func_80013678
    sra     a2, a2, 16
lbl_80013EEC:
    addiu   s2, s2, 0xFFFF             # s2 = 800DFFFF
    sll     s2, s2, 16
    sra     s2, s2, 16
    bgtzl   s2, lbl_80013DD8
    lh      t7, 0x0054($sp)
lbl_80013F00:
    lw      $ra, 0x004C($sp)
lbl_80013F04:
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    lw      s2, 0x0034($sp)
    lw      s3, 0x0038($sp)
    lw      s4, 0x003C($sp)
    lw      s5, 0x0040($sp)
    lw      s6, 0x0044($sp)
    lw      s7, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    nop

# All data for this actor can be found in code/data.s (VRAM: 800E7750-800E79F0, VROM: D66B0-D6950)
