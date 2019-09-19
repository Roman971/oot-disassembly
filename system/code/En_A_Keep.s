# Actor File: En_A_Obj ("Gameplay_keep Items", ID=0039)
#
# This actor is a part of "code" for some reason but seems to work the same as any other actor.
#
# External Documentation about this actor:
# - https://wiki.cloudmodding.com/oot/Actor_List_(Variables)#En_A_Obj
#
# Starts at VRAM: 800110A0 / VROM: A87000
#

.section .text
func_800110A0:
# Set new update routine function for this actor
# A0 = Actor Instance
# A1 = Pointer to function
    sw      a1, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_800110AC:
# Init function
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    sw      $zero, 0x0034($sp)
    swc1    $f4, 0x0028($sp)
    lh      a2, 0x001C(s0)             # 0000001C
    andi    t8, a2, 0x00FF             # t8 = 00000000
    andi    t9, t8, 0xFFFF             # t9 = 00000000
    sra     t6, a2,  8
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sltiu   $at, t9, 0x0007
    sh      t7, 0x015C(s0)             # 0000015C
    beq     $at, $zero, lbl_8001116C
    sh      t8, 0x001C(s0)             # 0000001C
    sll     t9, t9,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t9
    lw      t9, 0x5D60($at)            # 80105D60
    jr      t9
    nop
lbl_8001110C: # 00: Small Grey Stone Block
    lui     a1, 0x3CCC                 # a1 = 3CCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3CCCCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80011180
    lh      t0, 0x001C(s0)             # 0000001C
lbl_80011124: # 01: Large Grey Stone Block
    lui     a1, 0x3D4C                 # a1 = 3D4C0000
    ori     a1, a1, 0xCCCD             # a1 = 3D4CCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80011180
    lh      t0, 0x001C(s0)             # 0000001C
lbl_8001113C: # 02, 05 & 06: Huge Grey Stone Block & Small Grey Stone Cube & ?
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80011180
    lh      t0, 0x001C(s0)             # 0000001C
lbl_80011154: # 03: Small Grey Stone Block (with rotation when you stand on it)
    lui     a1, 0x3BA3                 # a1 = 3BA30000
    ori     a1, a1, 0xD70A             # a1 = 3BA3D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80011180
    lh      t0, 0x001C(s0)             # 0000001C
lbl_8001116C: # 04 & 07+: All other types
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lh      t0, 0x001C(s0)             # 0000001C
lbl_80011180:
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    slti    $at, t0, 0x0009
    bne     $at, $zero, lbl_800111A4
    lui     a2, 0x8002                 # a2 = 80020000
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f6                   # $f6 = 12.00
    nop
    swc1    $f6, 0x0028($sp)
lbl_800111A4:
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    jal     func_8001EC20
    lw      a3, 0x0028($sp)
    lw      t2, 0x0024(s0)             # 00000024
    lui     $at, 0x4496                # $at = 44960000
    mtc1    $at, $f8                   # $f8 = 1200.00
    lh      a2, 0x001C(s0)             # 0000001C
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    sw      t2, 0x0038(s0)             # 00000038
    lw      t2, 0x002C(s0)             # 0000002C
    lw      t1, 0x0028(s0)             # 00000028
    addiu   t4, a2, 0xFFFF             # t4 = FFFFFFFF
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    sltiu   $at, t4, 0x000B
    sw      t3, 0x013C(s0)             # 0000013C
    sb      $zero, 0x0150(s0)          # 00000150
    sw      $zero, 0x014C(s0)          # 0000014C
    swc1    $f8, 0x00FC(s0)            # 000000FC
    swc1    $f10, 0x00F8(s0)           # 000000F8
    sw      t2, 0x0040(s0)             # 00000040
    beq     $at, $zero, lbl_8001136C
    sw      t1, 0x003C(s0)             # 0000003C
    sll     t4, t4,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t4
    lw      t4, 0x5D7C($at)            # 80105D7C
    jr      t4
    nop
lbl_80011218: # 01 & 02: Large & Huge Grey Stone Block
    lw      a0, 0x003C($sp)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x013C(s0)             # 0000013C
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800265D4
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8001180C
    lh      a1, 0x001C(s0)             # 0000001C
    b       lbl_8001138C
    lh      t7, 0x001C(s0)             # 0000001C
lbl_80011248: # 03 & 04: Small & Large Grey Stone Block (with rotation when you stand on it)
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t6, 0x013C(s0)             # 0000013C
    lw      a0, 0x003C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800265D4
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80011554
    lh      a1, 0x001C(s0)             # 0000001C
    b       lbl_8001138C
    lh      t7, 0x001C(s0)             # 0000001C
lbl_80011278: # 06: ?
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    lw      t8, 0x0004(s0)             # 00000004
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f18                  # $f18 = -2.00
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    ori     t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0004(s0)             # 00000004
    sw      t0, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    swc1    $f16, 0x0168(s0)           # 00000168
    jal     func_80011478
    swc1    $f18, 0x006C(s0)           # 0000006C
    b       lbl_8001138C
    lh      t7, 0x001C(s0)             # 0000001C
lbl_800112B8: # 07/08: Grass Clump & Small Tree Stump
    sw      $zero, 0x013C(s0)          # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80011478
    lh      a1, 0x001C(s0)             # 0000001C
    b       lbl_8001138C
    lh      t7, 0x001C(s0)             # 0000001C
lbl_800112D0: # 09/0A: Square & Directional Signposts
    lh      t1, 0x015C(s0)             # 0000015C
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    lw      t4, 0x0004(s0)             # 00000004
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f6                   # $f6 = 45.00
    andi    t2, t1, 0x00FF             # t2 = 00000000
    ori     t3, t2, 0x0300             # t3 = 00000300
    ori     t5, t4, 0x0009             # t5 = 00000009
    sh      t3, 0x010E(s0)             # 0000010E
    sw      t5, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    swc1    $f4, 0x004C(s0)            # 0000004C
    jal     func_80011478
    swc1    $f6, 0x0168(s0)            # 00000168
    addiu   a1, s0, 0x016C             # a1 = 0000016C
    sw      a1, 0x0024($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    lui     a3, 0x800E                 # a3 = 800E0000
    lw      a1, 0x0024($sp)
    addiu   a3, a3, 0x76D0             # a3 = 800E76D0
    lw      a0, 0x003C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sb      t6, 0x00AE(s0)             # 000000AE
    b       lbl_80011388
    sb      $zero, 0x001F(s0)          # 0000001F
lbl_80011348: # 0B: ?
    lui     $at, 0xBFC0                # $at = BFC00000
    mtc1    $at, $f8                   # $f8 = -1.50
    sll     a1, a2, 16
    sra     a1, a1, 16
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800116C4
    swc1    $f8, 0x006C(s0)            # 0000006C
    b       lbl_8001138C
    lh      t7, 0x001C(s0)             # 0000001C
lbl_8001136C: # 00 & 05 && 0C+: Small Grey Stone Block & Cube & All other types
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f10                  # $f10 = -2.00
    sll     a1, a2, 16
    sra     a1, a1, 16
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80011478
    swc1    $f10, 0x006C(s0)           # 0000006C
lbl_80011388:
    lh      t7, 0x001C(s0)             # 0000001C
lbl_8001138C:
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    lui     a0, 0x800E                 # a0 = 800E0000
    slti    $at, t7, 0x0005
    beq     $at, $zero, lbl_800113A4
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFFC
    sb      t8, 0x00AE(s0)             # 000000AE
lbl_800113A4:
    lw      v0, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     v0, $at, lbl_800113D8
    sll     t9, v0,  2
    addu    a0, a0, t9
    jal     func_80033EF4
    lw      a0, 0x76FC(a0)             # 800E76FC
    lw      a0, 0x003C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0034($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
lbl_800113D8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_800113EC:
# Destruct function
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x001C($sp)
    lw      a2, 0x013C(a3)             # 0000013C
    sw      a3, 0x0018($sp)
    jal     func_80031638              # DynaPolyInfo_delReserve
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      a3, 0x0018($sp)
    addiu   $at, $zero, 0x0009         # $at = 00000009
    lw      a0, 0x001C($sp)
    lh      v0, 0x001C(a3)             # 0000001C
    beq     v0, $at, lbl_80011430
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    v0, $at, lbl_8001143C
    lw      $ra, 0x0014($sp)
lbl_80011430:
    jal     func_8004ABCC
    addiu   a1, a3, 0x016C             # a1 = 0000016C
    lw      $ra, 0x0014($sp)
lbl_8001143C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80011448:
# Update routine to idle while dialog state is 2
# Checks dialog state with 80022AD0 and calls 80011478 if it returns true (which sets update routine to 800114A0)
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80022AD0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80011468
    lw      a0, 0x0018($sp)
    jal     func_80011478
    lh      a1, 0x001C(a0)             # 0000001C
lbl_80011468:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80011478:
# Initilization for most types: 00, 05-0A & 0C+
# Sets update routine to 800114A0
# A0 = Actor Instance
# A1 = Actor Variable
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     a1, 0x8001                 # a1 = 80010000
    jal     func_800110A0
    addiu   a1, a1, 0x14A0             # a1 = 800114A0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800114A0:
# Update routine for most types: 00, 05-0A & 0C+
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lhu     t6, 0x010E(a0)             # 0000010E
    beql    t6, $zero, lbl_80011548
    lw      $ra, 0x0014($sp)
    lh      t7, 0x008A(a0)             # 0000008A
    lh      t8, 0x00B6(a0)             # 000000B6
    lw      a1, 0x001C($sp)
    subu    v0, t7, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_800114E0
    subu    v1, $zero, v0
    b       lbl_800114E0
    or      v1, v0, $zero              # v1 = 00000000
lbl_800114E0:
    slti    $at, v1, 0x2800
    bne     $at, $zero, lbl_80011518
    nop
    lh      t9, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    t9, $at, lbl_80011548
    lw      $ra, 0x0014($sp)
    bltz    v0, lbl_8001150C
    subu    v1, $zero, v0
    b       lbl_8001150C
    or      v1, v0, $zero              # v1 = 00000000
lbl_8001150C:
    slti    $at, v1, 0x5801
    bnel    $at, $zero, lbl_80011548
    lw      $ra, 0x0014($sp)
lbl_80011518:
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_8001153C
    lw      a0, 0x0018($sp)
    lui     a1, 0x8001                 # a1 = 80010000
    jal     func_800110A0
    addiu   a1, a1, 0x1448             # a1 = 80011448
    b       lbl_80011548
    lw      $ra, 0x0014($sp)
lbl_8001153C:
    jal     func_80022A90
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_80011548:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80011554:
# Initiliation for types 03 & 04 (Small & Large Grey Stone Block, with rotation when you stand on it)
# Sets update routine to 800115A4 and some initial data in the actor instance
# A0 = Actor Instance
# A1 = Actor Variable
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sh      $zero, 0x0032(a0)          # 00000032
    lwl     t8, 0x0030(a0)             # 00000030
    lwr     t8, 0x0033(a0)             # 00000033
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    lui     a1, 0x8001                 # a1 = 80010000
    swl     t8, 0x00B4(a0)             # 000000B4
    swr     t8, 0x00B7(a0)             # 000000B7
    lhu     t8, 0x0034(a0)             # 00000034
    sh      $zero, 0x015E(a0)          # 0000015E
    sw      t6, 0x0158(a0)             # 00000158
    addiu   a1, a1, 0x15A4             # a1 = 800115A4
    jal     func_800110A0
    sh      t8, 0x00B8(a0)             # 000000B8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800115A4:
# Update routine for types 03 & 04 (Small & Large Grey Stone Block, with rotation when you stand on it)
# A0 = Actor Instance
# A1 = Global Context
    sw      a1, 0x0004($sp)
    lh      v0, 0x015E(a0)             # 0000015E
    bnel    v0, $zero, lbl_80011624
    lw      v0, 0x0158(a0)             # 00000158
    lbu     t6, 0x0150(a0)             # 00000150
    addiu   t7, v0, 0x0001             # t7 = 00000001
    beq     t6, $zero, lbl_800116BC
    nop
    lh      t9, 0x008A(a0)             # 0000008A
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sh      t7, 0x015E(a0)             # 0000015E
    addiu   t0, t9, 0x4000             # t0 = 00004000
    sll     t1, t0, 16
    sra     t2, t1, 16
    bgez    t2, lbl_800115F0
    sh      t8, 0x0160(a0)             # 00000160
    addiu   t3, $zero, 0xFC18          # t3 = FFFFFC18
    b       lbl_800115F8
    sh      t3, 0x0164(a0)             # 00000164
lbl_800115F0:
    addiu   t4, $zero, 0x03E8          # t4 = 000003E8
    sh      t4, 0x0164(a0)             # 00000164
lbl_800115F8:
    lh      t5, 0x008A(a0)             # 0000008A
    bgezl   t5, lbl_80011618
    lh      t8, 0x0164(a0)             # 00000164
    lh      t6, 0x0164(a0)             # 00000164
    subu    t7, $zero, t6
    jr      $ra
    sh      t7, 0x0162(a0)             # 00000162
lbl_80011614:
    lh      t8, 0x0164(a0)             # 00000164
lbl_80011618:
    jr      $ra
    sh      t8, 0x0162(a0)             # 00000162
lbl_80011620:
    lw      v0, 0x0158(a0)             # 00000158
lbl_80011624:
    lui     $at, 0xBF80                # $at = BF800000
    beq     v0, $zero, lbl_80011638
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    jr      $ra
    sw      t9, 0x0158(a0)             # 00000158
lbl_80011638:
    lh      t6, 0x0160(a0)             # 00000160
    lh      t0, 0x00B6(a0)             # 000000B6
    lh      t1, 0x0162(a0)             # 00000162
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    lh      t3, 0x00B4(a0)             # 000000B4
    lh      t4, 0x0164(a0)             # 00000164
    sh      t7, 0x0160(a0)             # 00000160
    lh      t8, 0x0160(a0)             # 00000160
    mtc1    $at, $f4                   # $f4 = -1.00
    addu    t2, t0, t1
    addu    t5, t3, t4
    sh      t2, 0x00B6(a0)             # 000000B6
    sh      t5, 0x00B4(a0)             # 000000B4
    bne     t8, $zero, lbl_800116BC
    swc1    $f4, 0x006C(a0)            # 0000006C
    lwl     t3, 0x0030(a0)             # 00000030
    lwr     t3, 0x0033(a0)             # 00000033
    lw      t0, 0x0008(a0)             # 00000008
    mtc1    $zero, $f0                 # $f0 = 0.00
    swl     t3, 0x00B4(a0)             # 000000B4
    swr     t3, 0x00B7(a0)             # 000000B7
    sw      t0, 0x0024(a0)             # 00000024
    lw      t0, 0x0010(a0)             # 00000010
    lw      t9, 0x000C(a0)             # 0000000C
    lhu     t3, 0x0034(a0)             # 00000034
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sh      $zero, 0x015E(a0)          # 0000015E
    sw      t1, 0x0158(a0)             # 00000158
    swc1    $f0, 0x0060(a0)            # 00000060
    swc1    $f0, 0x006C(a0)            # 0000006C
    sw      t0, 0x002C(a0)             # 0000002C
    sw      t9, 0x0028(a0)             # 00000028
    sh      t3, 0x00B8(a0)             # 000000B8
lbl_800116BC:
    jr      $ra
    nop


func_800116C4:
# Initlization for type 0B (?)
# Sets update routine to 800116EC
# A0 = Actor Instance
# A1 = Actor Variable
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     a1, 0x8001                 # a1 = 80010000
    jal     func_800110A0
    addiu   a1, a1, 0x16EC             # a1 = 800116EC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800116EC:
# Update routine for type 0B (?)
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s0, 0x0020($sp)
    mtc1    $at, $f0                   # $f0 = 1.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    mfc1    a1, $f0
    mfc1    a2, $f0
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f8, 0x0068(s0)            # 00000068
    lh      t7, 0x0030(s0)             # 00000030
    lh      t1, 0x0034(s0)             # 00000034
    c.eq.s  $f6, $f8
    lh      t6, 0x00B4(s0)             # 000000B4
    lh      t0, 0x00B8(s0)             # 000000B8
    sra     t8, t7,  1
    sra     t2, t1,  1
    addu    t9, t6, t8
    addu    t3, t0, t2
    sh      t9, 0x00B4(s0)             # 000000B4
    bc1t    lbl_80011794
    sh      t3, 0x00B8(s0)             # 000000B8
    lhu     t4, 0x0088(s0)             # 00000088
    andi    t5, t4, 0x0008             # t5 = 00000000
    beql    t5, $zero, lbl_80011798
    lhu     v0, 0x0088(s0)             # 00000088
    lh      v0, 0x007E(s0)             # 0000007E
    lh      t7, 0x0032(s0)             # 00000032
    lhu     t1, 0x0088(s0)             # 00000088
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    subu    t6, v0, t7
    addu    t8, t6, v0
    addu    t9, t8, $at
    andi    t0, t1, 0xFFF7             # t0 = 00000000
    sh      t9, 0x0032(s0)             # 00000032
    sh      t0, 0x0088(s0)             # 00000088
lbl_80011794:
    lhu     v0, 0x0088(s0)             # 00000088
lbl_80011798:
    lui     $at, 0xC100                # $at = C1000000
    andi    t2, v0, 0x0002             # t2 = 00000000
    beql    t2, $zero, lbl_800117FC
    lw      $ra, 0x0024($sp)
    lwc1    $f0, 0x0060(s0)            # 00000060
    mtc1    $at, $f10                  # $f10 = -8.00
    lui     $at, 0x8010                # $at = 80100000
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_800117F0
    nop
    lwc1    $f16, 0x5DA8($at)          # 80105DA8
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x0068(s0)            # 00000068
    mul.s   $f18, $f0, $f16
    andi    t3, v0, 0xFFFC             # t3 = 00000000
    swc1    $f18, 0x0060(s0)           # 00000060
    lwc1    $f6, 0x5DAC($at)           # 80105DAC
    sh      t3, 0x0088(s0)             # 00000088
    mul.s   $f8, $f4, $f6
    b       lbl_800117F8
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_800117F0:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_800117F8:
    lw      $ra, 0x0024($sp)
lbl_800117FC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8001180C:
# Initlization for types 01 & 02 (Large & Huge Grey Stone Block)
# Sets update routine to 8001184C and some float data to Actor + 0xF8 and Actor + 0xFC
# A0 = Actor Instance
# A1 = Actor Variable
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, 0x4496                # $at = 44960000
    mtc1    $at, $f4                   # $f4 = 1200.00
    lui     $at, 0x4434                # $at = 44340000
    mtc1    $at, $f6                   # $f6 = 720.00
    lui     a1, 0x8001                 # a1 = 80010000
    addiu   a1, a1, 0x184C             # a1 = 8001184C
    swc1    $f4, 0x00FC(a0)            # 000000FC
    jal     func_800110A0
    swc1    $f6, 0x00F8(a0)            # 000000F8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8001184C:
# Update routine for types 01 & 02 (Large & Huge Grey Stone Block)
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     $at, 0xC020                # $at = C0200000
    sw      s0, 0x0020($sp)
    mtc1    $at, $f2                   # $f2 = -2.50
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lwc1    $f4, 0x0068(s0)            # 00000068
    lwc1    $f6, 0x0140(s0)            # 00000140
    lh      t6, 0x0148(s0)             # 00000148
    lui     $at, 0x4020                # $at = 40200000
    add.s   $f8, $f4, $f6
    sh      t6, 0x0032(s0)             # 00000032
    swc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_800118A4
    mtc1    $at, $f12                  # $f12 = 2.50
    b       lbl_800118C8
    swc1    $f2, 0x0068(s0)            # 00000068
    mtc1    $at, $f12                  # $f12 = 2.50
lbl_800118A4:
    nop
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_800118C4
    mov.s   $f2, $f0
    b       lbl_800118C4
    mov.s   $f2, $f12
    mov.s   $f2, $f0
lbl_800118C4:
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_800118C8:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    mfc1    a2, $f2
    mfc1    a3, $f2
    mfc1    a1, $f0
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f0, $f10
    nop
    bc1tl   lbl_8001191C
    swc1    $f0, 0x0144(s0)            # 00000144
    jal     func_80022FD0
    addiu   a1, $zero, 0x200A          # a1 = 0000200A
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x0144(s0)            # 00000144
lbl_8001191C:
    swc1    $f0, 0x0140(s0)            # 00000140
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80011934:
# Main Update function
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t9, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f4, 0x006C(s0)            # 0000006C
    c.eq.s  $f0, $f4
    nop
    bc1tl   lbl_800119D8
    lw      t0, 0x0028(s0)             # 00000028
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    or      a0, s1, $zero              # a0 = 00000000
    beq     t6, $at, lbl_800119BC
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t7, $zero, 0x001D          # t7 = 0000001D
    sw      t7, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40A0                 # a2 = 40A00000
    lui     a3, 0x4220                 # a3 = 42200000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    b       lbl_800119D8
    lw      t0, 0x0028(s0)             # 00000028
lbl_800119BC:
    addiu   t8, $zero, 0x001D          # t8 = 0000001D
    sw      t8, 0x0014($sp)
    lui     a2, 0x40A0                 # a2 = 40A00000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      t0, 0x0028(s0)             # 00000028
lbl_800119D8:
    lw      t1, 0x0024(s0)             # 00000024
    lwc1    $f18, 0x0168(s0)           # 00000168
    lh      v0, 0x001C(s0)             # 0000001C
    sw      t0, 0x003C(s0)             # 0000003C
    lwc1    $f16, 0x003C(s0)           # 0000003C
    sw      t1, 0x0038(s0)             # 00000038
    lw      t1, 0x002C(s0)             # 0000002C
    add.s   $f18, $f16, $f18
    addiu   $at, $zero, 0x0009         # $at = 00000009
    sw      t1, 0x0040(s0)             # 00000040
    beq     v0, $at, lbl_80011A10
    swc1    $f18, 0x003C(s0)           # 0000003C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v0, $at, lbl_80011A3C
lbl_80011A10:
    addiu   a2, s0, 0x016C             # a2 = 0000016C
    or      a1, a2, $zero              # a1 = 0000016C
    sw      a2, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)
    addu    a1, s1, $at
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
lbl_80011A3C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80011A50:
# Main Draw function
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0030($sp)
    lw      t7, 0x0034($sp)
    lh      a3, 0x001C(t6)             # 0000001C
    lw      a0, 0x0000(t7)             # 00000000
    sw      a3, 0x002C($sp)
    jal     func_8007E298
    sw      a0, 0x0028($sp)
    lw      a3, 0x002C($sp)
    lw      a2, 0x0028($sp)
    lw      t8, 0x0030($sp)
    slti    $at, a3, 0x000C
    bne     $at, $zero, lbl_80011A98
    lui     t1, 0xFA00                 # t1 = FA000000
    addiu   a3, $zero, 0x000B          # a3 = 0000000B
lbl_80011A98:
    lh      t9, 0x001C(t8)             # 0000001C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    ori     t1, t1, 0x0001             # t1 = FA000001
    bnel    t9, $at, lbl_80011ACC
    lw      v1, 0x02C0(a2)             # 000002C0
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t2, 0x3C3C                 # t2 = 3C3C0000
    ori     t2, t2, 0x3C32             # t2 = 3C3C3C32
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(a2)             # 000002C0
lbl_80011ACC:
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x0034($sp)
    lw      a0, 0x0000(t5)             # 00000000
    sw      a3, 0x002C($sp)
    sw      a2, 0x0028($sp)
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0028($sp)
    lw      a3, 0x002C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sll     t8, a3,  2
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    lui     t9, 0x800E                 # t9 = 800E0000
    addu    t9, t9, t8
    sw      t7, 0x0000(v1)             # 00000000
    lw      t9, 0x7714(t9)             # 800E7714
    sw      t9, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    nop

# All data for this actor can be found in code/data.s (VRAM: 800E76B0-800E7750, VROM: D6610-D66B0)
