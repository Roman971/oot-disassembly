# "Collision Check" part of the code file
#
# Handles actor collision checks.
#
# General Documentation about collisions:
# - https://wiki.cloudmodding.com/oot/Collision
# - https://wiki.cloudmodding.com/oot/Collision_Mesh_Format
#
# Starts at VRAM: 80049E10 / VROM: ABFD70
#

.section .text
func_80049E10:
# Retrieves damage chart table pointer (table at 800EF6C0)
# Called by all actors that don't have their damage chart inside overlay
# A0 = u8 Entry ID in the table
# V0 = Damage Chart Pointer, or 0 if ID out in range (A0 > 0x16)
    bltz    a0, lbl_80049E20
    slti    $at, a0, 0x0017
    bne     $at, $zero, lbl_80049E28
    sll     t6, a0,  5
lbl_80049E20:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80049E28:
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0xF6C0             # t7 = 800EF6C0
    addu    v0, t6, t7
    jr      $ra
    nop


func_80049E3C:
    or      v1, a0, $zero              # v1 = 00000000
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80049E48:
    addiu   v0, v0, 0x0004             # v0 = 00000004
    sb      $zero, 0x0001(v1)          # 00000001
    sb      $zero, 0x0002(v1)          # 00000002
    sb      $zero, 0x0003(v1)          # 00000003
    addiu   v1, v1, 0x0004             # v1 = 00000004
    bne     v0, a0, lbl_80049E48
    sb      $zero, -0x0004(v1)         # 00000000
    jr      $ra
    nop
    nop


func_80049E70:
# Initialize CollisionBody common (0x18 bytes) (Generic)
# copy 0x18 bytes from 800EF9A0 to struct
# A0 = Global Context
# A1 = CollisionBody*
    sw      a0, 0x0000($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xF9A0             # t6 = 800EF9A0
    lw      t8, 0x0000(t6)             # 800EF9A0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t8, 0x0000(a1)             # 00000000
    lw      t7, 0x0004(t6)             # 800EF9A4
    sw      t7, 0x0004(a1)             # 00000004
    lw      t8, 0x0008(t6)             # 800EF9A8
    sw      t8, 0x0008(a1)             # 00000008
    lw      t7, 0x000C(t6)             # 800EF9AC
    sw      t7, 0x000C(a1)             # 0000000C
    lw      t8, 0x0010(t6)             # 800EF9B0
    sw      t8, 0x0010(a1)             # 00000010
    lw      t7, 0x0014(t6)             # 800EF9B4
    sw      t7, 0x0014(a1)             # 00000014
    jr      $ra
    nop


func_80049EB8:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_80049ECC:
    sw      a0, 0x0000($sp)
    lw      t6, 0x0000(a2)             # 00000000
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t6, 0x0000(a1)             # 00000000
    lbu     t7, 0x0004(a2)             # 00000004
    sb      t7, 0x0010(a1)             # 00000010
    lbu     t8, 0x0005(a2)             # 00000005
    sb      t8, 0x0011(a1)             # 00000011
    lbu     t9, 0x0006(a2)             # 00000006
    sb      t0, 0x0013(a1)             # 00000013
    sb      t9, 0x0012(a1)             # 00000012
    lbu     t1, 0x0007(a2)             # 00000007
    sb      t1, 0x0015(a1)             # 00000015
    jr      $ra
    nop


func_80049F0C:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0000(a1)             # 00000000
    lbu     t6, 0x0000(a3)             # 00000000
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      t6, 0x0014(a1)             # 00000014
    lbu     t7, 0x0001(a3)             # 00000001
    sb      t7, 0x0010(a1)             # 00000010
    lbu     t8, 0x0002(a3)             # 00000002
    sb      t8, 0x0011(a1)             # 00000011
    lbu     t9, 0x0003(a3)             # 00000003
    sb      t0, 0x0013(a1)             # 00000013
    sb      t9, 0x0012(a1)             # 00000012
    lbu     t1, 0x0004(a3)             # 00000004
    sb      t1, 0x0015(a1)             # 00000015
    jr      $ra
    nop


func_80049F50:
# Initialize CollisionBody common (0x18 bytes) (Overlay)
# A0 = Global Context
# A1 = CollisionBody*
# A2 = Actor Instance
# A3 = OverlayCollision*
    sw      a0, 0x0000($sp)
    sw      a2, 0x0000(a1)             # 00000000
    lbu     t6, 0x0000(a3)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      t6, 0x0014(a1)             # 00000014
    lbu     t7, 0x0001(a3)             # 00000001
    sb      t7, 0x0010(a1)             # 00000010
    lbu     t8, 0x0002(a3)             # 00000002
    sb      t8, 0x0011(a1)             # 00000011
    lbu     t9, 0x0003(a3)             # 00000003
    sb      t9, 0x0012(a1)             # 00000012
    lbu     t0, 0x0004(a3)             # 00000004
    sb      t0, 0x0013(a1)             # 00000013
    lbu     t1, 0x0005(a3)             # 00000005
    sb      t1, 0x0015(a1)             # 00000015
    jr      $ra
    nop


func_80049F94:
    sw      a0, 0x0000($sp)
    lbu     t6, 0x0010(a1)             # 00000010
    sw      $zero, 0x0004(a1)          # 00000004
    andi    t7, t6, 0xFFF9             # t7 = 00000000
    sb      t7, 0x0010(a1)             # 00000010
    jr      $ra
    nop


func_80049FB0:
    sw      a0, 0x0000($sp)
    lbu     t6, 0x0011(a1)             # 00000011
    sw      $zero, 0x0008(a1)          # 00000008
    andi    t7, t6, 0xFF7D             # t7 = 00000000
    sb      t7, 0x0011(a1)             # 00000011
    jr      $ra
    nop


func_80049FCC:
    sw      a0, 0x0000($sp)
    lbu     t6, 0x0012(a1)             # 00000012
    lbu     t8, 0x0013(a1)             # 00000013
    sw      $zero, 0x000C(a1)          # 0000000C
    andi    t7, t6, 0xFFFD             # t7 = 00000000
    andi    t9, t8, 0xFFFE             # t9 = 00000000
    sb      t7, 0x0012(a1)             # 00000012
    sb      t9, 0x0013(a1)             # 00000013
    jr      $ra
    nop


func_80049FF4:
# Initialize CollisionBodyInfo + 0x00 (8 bytes) (Generic)
# Initializes 0x8 bytes using 800EF9B8
# A0 = Global Context
# A1 = CollisionBodyInfo*
    sw      a0, 0x0000($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xF9B8             # t6 = 800EF9B8
    lw      t8, 0x0000(t6)             # 800EF9B8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t8, 0x0000(a1)             # 00000000
    lw      t7, 0x0004(t6)             # 800EF9BC
    sw      t7, 0x0004(a1)             # 00000004
    jr      $ra
    nop


func_8004A01C:
# Destruct CollisionBodyInfo + 0x00 (8 bytes)
# A0 = Global Context
# A1 = CollisionBodyInfo*
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_8004A030:
# Initialize CollisionBodyInfo + 0x00 (8 bytes) (Overlay)
# A0 = Global Context
# A1 = CollisionBodyInfo*
# A2 = OverlayCollision Struct + ? (special init vars ptr)
    sw      a0, 0x0000($sp)
    lw      t6, 0x0000(a2)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t6, 0x0000(a1)             # 00000000
    lbu     t7, 0x0004(a2)             # 00000004
    sb      t7, 0x0004(a1)             # 00000004
    lbu     t8, 0x0005(a2)             # 00000005
    sb      t8, 0x0005(a1)             # 00000005
    jr      $ra
    nop


func_8004A058:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_8004A068:
# Initialize CollisionBodyInfo + 0x08 (0x0C bytes) (Generic)
# copy 0xC bytes from 800EF9C0
# A0 = Global Context
# A1 = CollisionBodyInfo* + 0x08
    sw      a0, 0x0000($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xF9C0             # t6 = 800EF9C0
    lw      t8, 0x0000(t6)             # 800EF9C0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t8, 0x0000(a1)             # 00000000
    lw      t7, 0x0004(t6)             # 800EF9C4
    sw      t7, 0x0004(a1)             # 00000004
    lw      t8, 0x0008(t6)             # 800EF9C8
    sw      t8, 0x0008(a1)             # 00000008
    jr      $ra
    nop


func_8004A098:
# Destruct CollisionBodyInfo + 0x08 (0x0C bytes)
# A0 = Global Context
# A1 = CollisionBodyInfo* + 0x08
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_8004A0AC:
# Initialize CollisionBodyInfo + 0x08 (0x0C bytes) (Overlay)
# A0 = Global Context
# A1 = CollisionBodyInfo* + 0x08
# A2 = OverlayCollision* + 0x14
    sw      a0, 0x0000($sp)
    lw      t6, 0x0000(a2)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t6, 0x0000(a1)             # 00000000
    lbu     t7, 0x0004(a2)             # 00000004
    sb      t7, 0x0004(a1)             # 00000004
    lbu     t8, 0x0005(a2)             # 00000005
    sb      t8, 0x0005(a1)             # 00000005
    jr      $ra
    nop


func_8004A0D4:
# Initialize CollisionBodyInfo (Generic)
# copy 0x28 bytes from 800EF9CC
# A0 = Global Context
# A1 = Actor Collision Struct + 0x18
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xF9CC             # t6 = 800EF9CC
    addiu   t0, t6, 0x0024             # t0 = 800EF9F0
    or      t9, a2, $zero              # t9 = 00000000
lbl_8004A0F4:
    lw      t8, 0x0000(t6)             # 800EF9CC
    addiu   t6, t6, 0x000C             # t6 = 800EF9D8
    addiu   t9, t9, 0x000C             # t9 = 0000000C
    sw      t8, -0x000C(t9)            # 00000000
    lw      t7, -0x0008(t6)            # 800EF9D0
    sw      t7, -0x0008(t9)            # 00000004
    lw      t8, -0x0004(t6)            # 800EF9D4
    bne     t6, t0, lbl_8004A0F4
    sw      t8, -0x0004(t9)            # 00000008
    lw      t8, 0x0000(t6)             # 800EF9D8
    or      a1, a2, $zero              # a1 = 00000000
    sw      t8, 0x0000(t9)             # 0000000C
    sw      a2, 0x001C($sp)
    jal     func_80049FF4
    lw      a0, 0x0018($sp)
    lw      a2, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A068
    addiu   a1, a2, 0x0008             # a1 = 00000008
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004A154:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A01C
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A098
    addiu   a1, a1, 0x0008             # a1 = 00000008
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004A194:
# Initialize CollisionBodyInfo (Overlay)
# A0 = Global Context
# A1 = CollisionBodyInfo*
# A2 = OverlayCollision* + 0x08 (cylinder collision data?)
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lbu     t6, 0x0000(s0)             # 00000000
    or      a1, a3, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0004             # a2 = 00000004
    sb      t6, 0x0014(a3)             # 00000014
    sw      a3, 0x0024($sp)
    jal     func_8004A030
    lw      a0, 0x0020($sp)
    lw      a3, 0x0024($sp)
    lw      a0, 0x0020($sp)
    addiu   a2, s0, 0x000C             # a2 = 0000000C
    jal     func_8004A0AC
    addiu   a1, a3, 0x0008             # a1 = 00000008
    lw      a3, 0x0024($sp)
    lbu     t7, 0x0014(s0)             # 00000014
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      t7, 0x0015(a3)             # 00000015
    lbu     t8, 0x0015(s0)             # 00000015
    sb      t8, 0x0016(a3)             # 00000016
    lbu     t9, 0x0016(s0)             # 00000016
    sb      t9, 0x0017(a3)             # 00000017
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8004A20C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x0015(a1)             # 00000015
    sw      $zero, 0x0018(a1)          # 00000018
    sw      $zero, 0x0020(a1)          # 00000020
    andi    t8, t6, 0xFFFD             # t8 = 00000000
    sb      t8, 0x0015(a1)             # 00000015
    andi    t9, t8, 0xFFBF             # t9 = 00000000
    jal     func_8004A058
    sb      t9, 0x0015(a1)             # 00000015
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004A244:
    sw      a0, 0x0000($sp)
    lbu     t6, 0x0016(a1)             # 00000016
    sh      $zero, 0x0012(a1)          # 00000012
    lh      v0, 0x0012(a1)             # 00000012
    andi    t8, t6, 0xFFFD             # t8 = 00000000
    sb      t8, 0x0016(a1)             # 00000016
    andi    t9, t8, 0xFF7F             # t9 = 00000000
    sb      t9, 0x0016(a1)             # 00000016
    sw      $zero, 0x001C(a1)          # 0000001C
    sw      $zero, 0x0024(a1)          # 00000024
    sh      v0, 0x0010(a1)             # 00000010
    sh      v0, 0x000E(a1)             # 0000000E
    jr      $ra
    nop


func_8004A27C:
# collision? zero 0x02 bit on Collision Body + 0x18 + 0x17
# A0 = Global Context
# A1 = Collision Body Ptr + 0x18
    sw      a0, 0x0000($sp)
    lbu     t6, 0x0017(a1)             # 00000017
    andi    t7, t6, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0017(a1)             # 00000017
    jr      $ra
    nop


func_8004A294:
    sw      a0, 0x0000($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xF9F4             # t6 = 800EF9F4
    lw      t8, 0x0000(t6)             # 800EF9F4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t8, 0x0000(a1)             # 00000000
    lw      t7, 0x0004(t6)             # 800EF9F8
    sw      t7, 0x0004(a1)             # 00000004
    lw      t8, 0x0008(t6)             # 800EF9FC
    sw      t8, 0x0008(a1)             # 00000008
    lw      t7, 0x000C(t6)             # 800EFA00
    sw      t7, 0x000C(a1)             # 0000000C
    lw      t8, 0x0010(t6)             # 800EFA04
    sw      t8, 0x0010(a1)             # 00000010
    lw      t7, 0x0014(t6)             # 800EFA08
    sw      t7, 0x0014(a1)             # 00000014
    jr      $ra
    nop


func_8004A2DC:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_8004A2F0:
    sw      a0, 0x0000($sp)
    lbu     t6, 0x0000(a2)             # 00000000
    lui     $at, 0x8010                # $at = 80100000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      t6, 0x0014(a1)             # 00000014
    lwl     t8, 0x0002(a2)             # 00000002
    lwr     t8, 0x0005(a2)             # 00000005
    swl     t8, 0x0000(a1)             # 00000000
    swr     t8, 0x0003(a1)             # 00000003
    lwl     t7, 0x0006(a2)             # 00000006
    lwr     t7, 0x0009(a2)             # 00000009
    swl     t7, 0x0004(a1)             # 00000004
    swr     t7, 0x0007(a1)             # 00000007
    lh      t9, 0x000A(a2)             # 0000000A
    lwc1    $f8, 0x7280($at)           # 80107280
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0010(a1)           # 00000010
    jr      $ra
    nop


func_8004A348:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A0D4
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A294
    addiu   a1, a1, 0x0028             # a1 = 00000028
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004A388:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A154
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A2DC
    addiu   a1, a1, 0x0028             # a1 = 00000028
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004A3C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_8004A194
    lw      a2, 0x0020($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, a1, 0x0028             # a1 = 00000028
    jal     func_8004A2F0
    addiu   a2, a2, 0x0018             # a2 = 00000018
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004A418:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8004A20C
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004A43C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8004A244
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004A460:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8004A27C
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004A484:
# Initialize Collision Type 0 (Generic)
# Inititalizes CollisionBody and element array
# A0 = Global Context
# A1 = CollisionBody*
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80049E70
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      $zero, 0x0018(a1)          # 00000018
    sw      $zero, 0x001C(a1)          # 0000001C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8004A4B0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0018($sp)
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80049EB8
    or      a1, s1, $zero              # a1 = 00000000
    lw      t6, 0x0018(s1)             # 00000018
    lw      a0, 0x001C(s1)             # 0000001C
    sll     t7, t6,  6
    addu    t8, a0, t7
    sltu    $at, a0, t8
    beq     $at, $zero, lbl_8004A520
    or      s0, a0, $zero              # s0 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004A4F8:
    jal     func_8004A388
    or      a1, s0, $zero              # a1 = 00000000
    lw      t9, 0x0018(s1)             # 00000018
    lw      a0, 0x001C(s1)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sll     t0, t9,  6
    addu    t1, a0, t0
    sltu    $at, s0, t1
    bnel    $at, $zero, lbl_8004A4F8
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004A520:
    beq     a0, $zero, lbl_8004A530
    sw      $zero, 0x0018(s1)          # 00000018
    jal     func_80066C90
    nop
lbl_8004A530:
    sw      $zero, 0x001C(s1)          # 0000001C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004A550:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0018($sp)
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80049EB8
    or      a1, s1, $zero              # a1 = 00000000
    lw      t6, 0x0018(s1)             # 00000018
    lw      s0, 0x001C(s1)             # 0000001C
    sll     t7, t6,  6
    addu    t8, s0, t7
    sltu    $at, s0, t8
    beq     $at, $zero, lbl_8004A5BC
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004A594:
    jal     func_8004A388
    or      a1, s0, $zero              # a1 = 00000000
    lw      t0, 0x0018(s1)             # 00000018
    lw      t9, 0x001C(s1)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sll     t1, t0,  6
    addu    t2, t9, t1
    sltu    $at, s0, t2
    bnel    $at, $zero, lbl_8004A594
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004A5BC:
    sw      $zero, 0x0018(s1)          # 00000018
    sw      $zero, 0x001C(s1)          # 0000001C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004A5E0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a2, 0x0030($sp)
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80049ECC
    lw      a2, 0x0030($sp)
    lw      v1, 0x0030($sp)
    lw      t6, 0x0008(v1)             # 00000008
    sw      t6, 0x0018(s2)             # 00000018
    lw      a0, 0x0008(v1)             # 00000008
    jal     func_80066C10              # zelda_malloc?
    sll     a0, a0,  6
    bne     v0, $zero, lbl_8004A640
    sw      v0, 0x001C(s2)             # 0000001C
    sw      $zero, 0x0018(s2)          # 00000018
    b       lbl_8004A6A0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8004A640:
    lw      t8, 0x0018(s2)             # 00000018
    lw      s0, 0x001C(s2)             # 0000001C
    lw      t7, 0x0030($sp)
    sll     t9, t8,  6
    addu    t0, s0, t9
    sltu    $at, s0, t0
    beq     $at, $zero, lbl_8004A69C
    lw      s1, 0x000C(t7)             # 0000000C
lbl_8004A660:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8004A348
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004A3C8
    or      a2, s1, $zero              # a2 = 00000000
    lw      t2, 0x0018(s2)             # 00000018
    lw      t1, 0x001C(s2)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sll     t3, t2,  6
    addu    t4, t1, t3
    sltu    $at, s0, t4
    bne     $at, $zero, lbl_8004A660
    addiu   s1, s1, 0x0024             # s1 = 00000024
lbl_8004A69C:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004A6A0:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004A6BC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a3, 0x0034($sp)
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80049F0C
    lw      a3, 0x0034($sp)
    lw      v1, 0x0034($sp)
    lw      t6, 0x0008(v1)             # 00000008
    sw      t6, 0x0018(s2)             # 00000018
    lw      a0, 0x0008(v1)             # 00000008
    jal     func_80066C10              # zelda_malloc?
    sll     a0, a0,  6
    bne     v0, $zero, lbl_8004A71C
    sw      v0, 0x001C(s2)             # 0000001C
    sw      $zero, 0x0018(s2)          # 00000018
    b       lbl_8004A77C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8004A71C:
    lw      t8, 0x0018(s2)             # 00000018
    lw      s0, 0x001C(s2)             # 0000001C
    lw      t7, 0x0034($sp)
    sll     t9, t8,  6
    addu    t0, s0, t9
    sltu    $at, s0, t0
    beq     $at, $zero, lbl_8004A778
    lw      s1, 0x000C(t7)             # 0000000C
lbl_8004A73C:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8004A348
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004A3C8
    or      a2, s1, $zero              # a2 = 00000000
    lw      t2, 0x0018(s2)             # 00000018
    lw      t1, 0x001C(s2)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sll     t3, t2,  6
    addu    t4, t1, t3
    sltu    $at, s0, t4
    bne     $at, $zero, lbl_8004A73C
    addiu   s1, s1, 0x0024             # s1 = 00000024
lbl_8004A778:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004A77C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004A798:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a3, 0x0034($sp)
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80049F50
    lw      a3, 0x0034($sp)
    lw      v1, 0x0034($sp)
    lw      t6, 0x0008(v1)             # 00000008
    sw      t6, 0x0018(s2)             # 00000018
    lw      a0, 0x0008(v1)             # 00000008
    jal     func_80066C10              # zelda_malloc?
    sll     a0, a0,  6
    bne     v0, $zero, lbl_8004A7F8
    sw      v0, 0x001C(s2)             # 0000001C
    sw      $zero, 0x0018(s2)          # 00000018
    b       lbl_8004A858
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8004A7F8:
    lw      t8, 0x0018(s2)             # 00000018
    lw      s0, 0x001C(s2)             # 0000001C
    lw      t7, 0x0034($sp)
    sll     t9, t8,  6
    addu    t0, s0, t9
    sltu    $at, s0, t0
    beq     $at, $zero, lbl_8004A854
    lw      s1, 0x000C(t7)             # 0000000C
lbl_8004A818:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8004A348
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004A3C8
    or      a2, s1, $zero              # a2 = 00000000
    lw      t2, 0x0018(s2)             # 00000018
    lw      t1, 0x001C(s2)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sll     t3, t2,  6
    addu    t4, t1, t3
    sltu    $at, s0, t4
    bne     $at, $zero, lbl_8004A818
    addiu   s1, s1, 0x0024             # s1 = 00000024
lbl_8004A854:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004A858:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004A874:
# Initialize Collision Type 0 (Overlay)
# Cylinder Collection
# A0 = Global Context
# A1 = CollisionBody*
# A2 = Actor*
# A3 = OverlayCollision*
# SP+0x10 = Ptr to Cylinder array
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80049F50
    sw      a3, 0x0034($sp)
    lw      a3, 0x0034($sp)
    lw      s0, 0x0038($sp)
    lw      t6, 0x0008(a3)             # 00000008
    sw      s0, 0x001C(s2)             # 0000001C
    sll     t8, t6,  6
    addu    t9, s0, t8
    sltu    $at, s0, t9
    sw      t6, 0x0018(s2)             # 00000018
    beq     $at, $zero, lbl_8004A908
    lw      s1, 0x000C(a3)             # 0000000C
lbl_8004A8CC:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8004A348
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004A3C8
    or      a2, s1, $zero              # a2 = 00000000
    lw      t1, 0x0018(s2)             # 00000018
    lw      t0, 0x001C(s2)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sll     t2, t1,  6
    addu    t3, t0, t2
    sltu    $at, s0, t3
    bne     $at, $zero, lbl_8004A8CC
    addiu   s1, s1, 0x0024             # s1 = 00000024
lbl_8004A908:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004A928:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x0020($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80049F94
    sw      a1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    lw      t6, 0x0018(a1)             # 00000018
    lw      s0, 0x001C(a1)             # 0000001C
    sll     t7, t6,  6
    addu    t8, s0, t7
    sltu    $at, s0, t8
    beq     $at, $zero, lbl_8004A998
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004A970:
    jal     func_8004A418
    or      a1, s0, $zero              # a1 = 00000000
    lw      t0, 0x0018(s1)             # 00000018
    lw      t9, 0x001C(s1)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sll     t1, t0,  6
    addu    t2, t9, t1
    sltu    $at, s0, t2
    bnel    $at, $zero, lbl_8004A970
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004A998:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004A9B4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x0020($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80049FB0
    sw      a1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    lw      t6, 0x0018(a1)             # 00000018
    lw      s0, 0x001C(a1)             # 0000001C
    sll     t7, t6,  6
    addu    t8, s0, t7
    sltu    $at, s0, t8
    beq     $at, $zero, lbl_8004AA24
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004A9FC:
    jal     func_8004A43C
    or      a1, s0, $zero              # a1 = 00000000
    lw      t0, 0x0018(s1)             # 00000018
    lw      t9, 0x001C(s1)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sll     t1, t0,  6
    addu    t2, t9, t1
    sltu    $at, s0, t2
    bnel    $at, $zero, lbl_8004A9FC
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004AA24:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004AA40:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x0020($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80049FCC
    sw      a1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    lw      t6, 0x0018(a1)             # 00000018
    lw      s0, 0x001C(a1)             # 0000001C
    sll     t7, t6,  6
    addu    t8, s0, t7
    sltu    $at, s0, t8
    beq     $at, $zero, lbl_8004AAB0
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004AA88:
    jal     func_8004A460
    or      a1, s0, $zero              # a1 = 00000000
    lw      t0, 0x0018(s1)             # 00000018
    lw      t9, 0x001C(s1)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sll     t1, t0,  6
    addu    t2, t9, t1
    sltu    $at, s0, t2
    bnel    $at, $zero, lbl_8004AA88
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004AAB0:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004AACC:
# Initialize Collision Type 1 (+0x40) (Generic)
# Initializes 0xC bytes copying from 800EFA0C
# A0 = Global Context
# A1 = CollisionBody* + 0x40
    addiu   $sp, $sp, 0xFFF0           # $sp -= 0x10
    sw      a0, 0x0010($sp)
    addiu   v1, $sp, 0x0004            # v1 = FFFFFFF4
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xFA0C             # t6 = 800EFA0C
    lw      t8, 0x0000(t6)             # 800EFA0C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t8, 0x0000(v1)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 800EFA10
    lw      t0, 0x0000(v1)             # FFFFFFF4
    sw      t7, 0x0004(v1)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 800EFA14
    sw      t8, 0x0008(v1)             # FFFFFFFC
    swl     t0, 0x0000(a1)             # 00000000
    swr     t0, 0x0003(a1)             # 00000003
    lw      t9, 0x0004(v1)             # FFFFFFF8
    swl     t9, 0x0004(a1)             # 00000004
    swr     t9, 0x0007(a1)             # 00000007
    lw      t0, 0x0008(v1)             # FFFFFFFC
    swl     t0, 0x0008(a1)             # 00000008
    swr     t0, 0x000B(a1)             # 0000000B
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp += 0x10


func_8004AB28:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_8004AB3C:
# Initialize Collision Type 1 (+0x40) (Overlay)
# A0 = Global Context
# A1 = CollisionBody* + 0x40
# A2 = OverlayCollision* + 0x20
    sw      a0, 0x0000($sp)
    lwl     t7, 0x0000(a2)             # 00000000
    lwr     t7, 0x0003(a2)             # 00000003
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    swl     t7, 0x0000(a1)             # 00000000
    swr     t7, 0x0003(a1)             # 00000003
    lwl     t6, 0x0004(a2)             # 00000004
    lwr     t6, 0x0007(a2)             # 00000007
    swl     t6, 0x0004(a1)             # 00000004
    swr     t6, 0x0007(a1)             # 00000007
    lwl     t7, 0x0008(a2)             # 00000008
    lwr     t7, 0x000B(a2)             # 0000000B
    swl     t7, 0x0008(a1)             # 00000008
    swr     t7, 0x000B(a1)             # 0000000B
    jr      $ra
    nop


func_8004AB7C:
# Initialize Collision Type 1 (Generic)
# A0 = Global Context
# A1 = CollisionBody*
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80049E70
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A0D4
    addiu   a1, a1, 0x0018             # a1 = 00000018
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004AACC
    addiu   a1, a1, 0x0040             # a1 = 00000040
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004ABCC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80049EB8
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A154
    addiu   a1, a1, 0x0018             # a1 = 00000018
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004AB28
    addiu   a1, a1, 0x0040             # a1 = 00000040
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004AC1C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80049ECC
    lw      a2, 0x0020($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, a1, 0x0018             # a1 = 00000018
    jal     func_8004A194
    addiu   a2, a2, 0x0008             # a2 = 00000008
    lw      a1, 0x001C($sp)
    lw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, a1, 0x0040             # a1 = 00000040
    jal     func_8004AB3C
    addiu   a2, a2, 0x0020             # a2 = 00000020
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004AC84:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a3, 0x0024($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80049F0C
    lw      a3, 0x0024($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, a1, 0x0018             # a1 = 00000018
    jal     func_8004A194
    addiu   a2, a2, 0x0008             # a2 = 00000008
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, a1, 0x0040             # a1 = 00000040
    jal     func_8004AB3C
    addiu   a2, a2, 0x0020             # a2 = 00000020
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004ACEC:
# Initialize Collision Type 1 (Overlay)
# A0 = Global Context
# A1 = CollisionBody*
# A2 = Actor*
# A3 = OverlayCollision*
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a3, 0x0024($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80049F50
    lw      a3, 0x0024($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, a1, 0x0018             # a1 = 00000018
    jal     func_8004A194
    addiu   a2, a2, 0x0008             # a2 = 00000008
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, a1, 0x0040             # a1 = 00000040
    jal     func_8004AB3C
    addiu   a2, a2, 0x0020             # a2 = 00000020
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004AD54:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80049F94
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A20C
    addiu   a1, a1, 0x0018             # a1 = 00000018
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004AD94:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80049FB0
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A244
    addiu   a1, a1, 0x0018             # a1 = 00000018
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004ADD4:
# collision? part of 8004C130
# Collision Body + 0x15 == 1 functor (potentially Cylinder Body?)
# A0 = Global Context
# A1 = Collision Body Ptr
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80049FCC
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A27C
    addiu   a1, a1, 0x0018             # a1 = 00000018
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004AE14:
    sw      a0, 0x0000($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xFA18             # t6 = 800EFA18
    addiu   t0, t6, 0x0030             # t0 = 800EFA48
    or      t9, a1, $zero              # t9 = 00000000
lbl_8004AE28:
    lw      t8, 0x0000(t6)             # 800EFA18
    addiu   t6, t6, 0x000C             # t6 = 800EFA24
    addiu   t9, t9, 0x000C             # t9 = 0000000C
    sw      t8, -0x000C(t9)            # 00000000
    lw      t7, -0x0008(t6)            # 800EFA1C
    sw      t7, -0x0008(t9)            # 00000004
    lw      t8, -0x0004(t6)            # 800EFA20
    bne     t6, t0, lbl_8004AE28
    sw      t8, -0x0004(t9)            # 00000008
    lw      t8, 0x0000(t6)             # 800EFA24
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t8, 0x0000(t9)             # 0000000C
    jr      $ra
    nop


func_8004AE60:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_8004AE74:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0028($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0050($sp)
    sw      a2, 0x0058($sp)
    addiu   a0, s0, 0x0024             # a0 = 00000024
    sltu    $at, s0, a0
    or      v0, s0, $zero              # v0 = 00000000
    beq     $at, $zero, lbl_8004AEC8
    lw      v1, 0x0058($sp)
lbl_8004AEA0:
    lw      t7, 0x0000(v1)             # 00000000
    addiu   v0, v0, 0x000C             # v0 = 0000000C
    sltu    $at, v0, a0
    sw      t7, -0x000C(v0)            # 00000000
    lw      t6, 0x0004(v1)             # 00000004
    addiu   v1, v1, 0x000C             # v1 = 0000000C
    sw      t6, -0x0008(v0)            # 00000004
    lw      t7, -0x0004(v1)            # 00000008
    bne     $at, $zero, lbl_8004AEA0
    sw      t7, -0x0004(v0)            # 00000008
lbl_8004AEC8:
    lw      a0, 0x0058($sp)
    addiu   t9, $sp, 0x0040            # t9 = FFFFFFF0
    addiu   t0, $sp, 0x003C            # t0 = FFFFFFEC
    addiu   t1, $sp, 0x0038            # t1 = FFFFFFE8
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFF4
    addiu   a1, a0, 0x000C             # a1 = 00000030
    jal     func_800A67DC
    addiu   a2, a0, 0x0018             # a2 = 0000003C
    lwc1    $f4, 0x0044($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    swc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0040($sp)
    swc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x003C($sp)
    swc1    $f8, 0x002C(s0)            # 0000002C
    lwc1    $f10, 0x0038($sp)
    swc1    $f10, 0x0030(s0)           # 00000030
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_8004AF28:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A0D4
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004AE14
    addiu   a1, a1, 0x0028             # a1 = 00000028
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004AF68:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A154
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004AE60
    addiu   a1, a1, 0x0028             # a1 = 00000028
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004AFA8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_8004A194
    lw      a2, 0x0020($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, a1, 0x0028             # a1 = 00000028
    jal     func_8004AE74
    addiu   a2, a2, 0x0018             # a2 = 00000018
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004AFF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8004A20C
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004B01C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8004A244
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004B040:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8004A27C
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004B064:
# Initialize Collision Type 2 (Generic)
# Inititalizes CollisionBody and element array
# A0 = Global Context
# A1 = CollisionBody*
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80049E70
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      $zero, 0x0018(a1)          # 00000018
    sw      $zero, 0x001C(a1)          # 0000001C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8004B090:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s0, 0x0014($sp)
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80049EB8
    or      a1, s1, $zero              # a1 = 00000000
    lw      t6, 0x0018(s1)             # 00000018
    addiu   s3, $zero, 0x005C          # s3 = 0000005C
    lw      a0, 0x001C(s1)             # 0000001C
    multu   t6, s3
    or      s0, a0, $zero              # s0 = 00000000
    mflo    t7
    addu    t8, a0, t7
    sltu    $at, a0, t8
    beq     $at, $zero, lbl_8004B114
    nop
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004B0E8:
    jal     func_8004AF68
    or      a1, s0, $zero              # a1 = 00000000
    lw      t9, 0x0018(s1)             # 00000018
    lw      a0, 0x001C(s1)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t9, s3
    mflo    t0
    addu    t1, a0, t0
    sltu    $at, s0, t1
    bnel    $at, $zero, lbl_8004B0E8
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004B114:
    beq     a0, $zero, lbl_8004B124
    sw      $zero, 0x0018(s1)          # 00000018
    jal     func_80066C90
    nop
lbl_8004B124:
    sw      $zero, 0x001C(s1)          # 0000001C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004B148:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s0, 0x0014($sp)
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80049EB8
    or      a1, s1, $zero              # a1 = 00000000
    lw      t6, 0x0018(s1)             # 00000018
    addiu   s3, $zero, 0x005C          # s3 = 0000005C
    lw      s0, 0x001C(s1)             # 0000001C
    multu   t6, s3
    mflo    t7
    addu    t8, s0, t7
    sltu    $at, s0, t8
    beq     $at, $zero, lbl_8004B1C4
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004B198:
    jal     func_8004AF68
    or      a1, s0, $zero              # a1 = 00000000
    lw      t0, 0x0018(s1)             # 00000018
    lw      t9, 0x001C(s1)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t0, s3
    mflo    t1
    addu    t2, t9, t1
    sltu    $at, s0, t2
    bnel    $at, $zero, lbl_8004B198
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004B1C4:
    sw      $zero, 0x0018(s1)          # 00000018
    sw      $zero, 0x001C(s1)          # 0000001C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004B1EC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a3, 0x003C($sp)
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80049F0C
    lw      a3, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lw      t7, 0x0008(t6)             # 00000008
    sll     a0, t7,  2
    subu    a0, a0, t7
    sll     a0, a0,  3
    subu    a0, a0, t7
    sll     a0, a0,  2
    jal     func_80066C10              # zelda_malloc?
    sw      t7, 0x0018(s2)             # 00000018
    bne     v0, $zero, lbl_8004B25C
    sw      v0, 0x001C(s2)             # 0000001C
    sw      $zero, 0x0018(s2)          # 00000018
    b       lbl_8004B2CC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8004B25C:
    lw      t9, 0x0018(s2)             # 00000018
    addiu   s4, $zero, 0x005C          # s4 = 0000005C
    lw      s0, 0x001C(s2)             # 0000001C
    multu   t9, s4
    lw      t8, 0x003C($sp)
    lw      s1, 0x000C(t8)             # 0000000C
    mflo    t0
    addu    t1, s0, t0
    sltu    $at, s0, t1
    beq     $at, $zero, lbl_8004B2C8
    or      a0, s3, $zero              # a0 = 00000000
lbl_8004B288:
    jal     func_8004AF28
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004AFA8
    or      a2, s1, $zero              # a2 = 00000000
    lw      t3, 0x0018(s2)             # 00000018
    lw      t2, 0x001C(s2)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t3, s4
    addiu   s1, s1, 0x003C             # s1 = 0000003C
    mflo    t4
    addu    t5, t2, t4
    sltu    $at, s0, t5
    bnel    $at, $zero, lbl_8004B288
    or      a0, s3, $zero              # a0 = 00000000
lbl_8004B2C8:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004B2CC:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8004B2EC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a3, 0x003C($sp)
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80049F50
    lw      a3, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lw      t7, 0x0008(t6)             # 00000008
    sll     a0, t7,  2
    subu    a0, a0, t7
    sll     a0, a0,  3
    subu    a0, a0, t7
    sll     a0, a0,  2
    jal     func_80066C10              # zelda_malloc?
    sw      t7, 0x0018(s2)             # 00000018
    bne     v0, $zero, lbl_8004B35C
    sw      v0, 0x001C(s2)             # 0000001C
    sw      $zero, 0x0018(s2)          # 00000018
    b       lbl_8004B3CC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8004B35C:
    lw      t9, 0x0018(s2)             # 00000018
    addiu   s4, $zero, 0x005C          # s4 = 0000005C
    lw      s0, 0x001C(s2)             # 0000001C
    multu   t9, s4
    lw      t8, 0x003C($sp)
    lw      s1, 0x000C(t8)             # 0000000C
    mflo    t0
    addu    t1, s0, t0
    sltu    $at, s0, t1
    beq     $at, $zero, lbl_8004B3C8
    or      a0, s3, $zero              # a0 = 00000000
lbl_8004B388:
    jal     func_8004AF28
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004AFA8
    or      a2, s1, $zero              # a2 = 00000000
    lw      t3, 0x0018(s2)             # 00000018
    lw      t2, 0x001C(s2)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t3, s4
    addiu   s1, s1, 0x003C             # s1 = 0000003C
    mflo    t4
    addu    t5, t2, t4
    sltu    $at, s0, t5
    bnel    $at, $zero, lbl_8004B388
    or      a0, s3, $zero              # a0 = 00000000
lbl_8004B3C8:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004B3CC:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8004B3EC:
# Initialize Collision Type 2 (Overlay)
# A0 = Global Context
# A1 = CollisionBody*
# A2 = Actor*
# A3 = OverlayCollision*
# SP+0x10 = Ptr to triangle array
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80049F50
    sw      a3, 0x003C($sp)
    lw      a3, 0x003C($sp)
    addiu   s4, $zero, 0x005C          # s4 = 0000005C
    lw      s0, 0x0040($sp)
    lw      t6, 0x0008(a3)             # 00000008
    sw      s0, 0x001C(s2)             # 0000001C
    multu   t6, s4
    sw      t6, 0x0018(s2)             # 00000018
    lw      s1, 0x000C(a3)             # 0000000C
    mflo    t8
    addu    t9, s0, t8
    sltu    $at, s0, t9
    beq     $at, $zero, lbl_8004B494
    or      a0, s3, $zero              # a0 = 00000000
lbl_8004B454:
    jal     func_8004AF28
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004AFA8
    or      a2, s1, $zero              # a2 = 00000000
    lw      t1, 0x0018(s2)             # 00000018
    lw      t0, 0x001C(s2)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t1, s4
    addiu   s1, s1, 0x003C             # s1 = 0000003C
    mflo    t2
    addu    t3, t0, t2
    sltu    $at, s0, t3
    bnel    $at, $zero, lbl_8004B454
    or      a0, s3, $zero              # a0 = 00000000
lbl_8004B494:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8004B4B8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x001C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80049F94
    sw      a1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    addiu   s3, $zero, 0x005C          # s3 = 0000005C
    lw      t6, 0x0018(a1)             # 00000018
    lw      s0, 0x001C(a1)             # 0000001C
    multu   t6, s3
    mflo    t7
    addu    t8, s0, t7
    sltu    $at, s0, t8
    beq     $at, $zero, lbl_8004B538
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004B50C:
    jal     func_8004AFF8
    or      a1, s0, $zero              # a1 = 00000000
    lw      t0, 0x0018(s1)             # 00000018
    lw      t9, 0x001C(s1)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t0, s3
    mflo    t1
    addu    t2, t9, t1
    sltu    $at, s0, t2
    bnel    $at, $zero, lbl_8004B50C
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004B538:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004B558:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x001C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80049FB0
    sw      a1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    addiu   s3, $zero, 0x005C          # s3 = 0000005C
    lw      t6, 0x0018(a1)             # 00000018
    lw      s0, 0x001C(a1)             # 0000001C
    multu   t6, s3
    mflo    t7
    addu    t8, s0, t7
    sltu    $at, s0, t8
    beq     $at, $zero, lbl_8004B5D8
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004B5AC:
    jal     func_8004B01C
    or      a1, s0, $zero              # a1 = 00000000
    lw      t0, 0x0018(s1)             # 00000018
    lw      t9, 0x001C(s1)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t0, s3
    mflo    t1
    addu    t2, t9, t1
    sltu    $at, s0, t2
    bnel    $at, $zero, lbl_8004B5AC
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004B5D8:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004B5F8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x001C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80049FCC
    sw      a1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    addiu   s3, $zero, 0x005C          # s3 = 0000005C
    lw      t6, 0x0018(a1)             # 00000018
    lw      s0, 0x001C(a1)             # 0000001C
    multu   t6, s3
    mflo    t7
    addu    t8, s0, t7
    sltu    $at, s0, t8
    beq     $at, $zero, lbl_8004B678
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004B64C:
    jal     func_8004B040
    or      a1, s0, $zero              # a1 = 00000000
    lw      t0, 0x0018(s1)             # 00000018
    lw      t9, 0x001C(s1)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t0, s3
    mflo    t1
    addu    t2, t9, t1
    sltu    $at, s0, t2
    bnel    $at, $zero, lbl_8004B64C
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004B678:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004B698:
# Initialize Collision Type 3 Quad (Generic)
# A0 = Global Context
# A1 = CollisionBody* + 0x40
    sw      a0, 0x0000($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xFA4C             # t6 = 800EFA4C
    addiu   t0, t6, 0x003C             # t0 = 800EFA88
    or      t9, a1, $zero              # t9 = 00000000
lbl_8004B6AC:
    lw      t8, 0x0000(t6)             # 800EFA4C
    addiu   t6, t6, 0x000C             # t6 = 800EFA58
    addiu   t9, t9, 0x000C             # t9 = 0000000C
    sw      t8, -0x000C(t9)            # 00000000
    lw      t7, -0x0008(t6)            # 800EFA50
    sw      t7, -0x0008(t9)            # 00000004
    lw      t8, -0x0004(t6)            # 800EFA54
    bne     t6, t0, lbl_8004B6AC
    sw      t8, -0x0004(t9)            # 00000008
    lw      t8, 0x0000(t6)             # 800EFA58
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t8, 0x0000(t9)             # 0000000C
    jr      $ra
    nop


func_8004B6E4:
# Destruct Collision Type 3 Quad
# just pushes args on the stack
# A0 = Global Context
# A1 = CollisionBody* + 0x40
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_8004B6F8:
    sw      a0, 0x0000($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x7284($at)           # 80107284
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    swc1    $f4, 0x003C(a1)            # 0000003C
    jr      $ra
    nop


func_8004B714:
# CollisionBody Type 3 Update Bounding Box
# Updates Type 3's bounding box based on stored points
# A0 = CollisionBody_ShapeType3*
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    nop
    lwc1    $f4, 0x0018(a0)            # 00000018
    lwc1    $f6, 0x0024(a0)            # 00000024
    lwc1    $f18, 0x001C(a0)           # 0000001C
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0028(a0)            # 00000028
    mul.s   $f10, $f8, $f0
    add.s   $f6, $f18, $f4
    lwc1    $f18, 0x002C(a0)           # 0000002C
    mul.s   $f8, $f6, $f0
    trunc.w.s $f16, $f10
    trunc.w.s $f10, $f8
    mfc1    t7, $f16
    lwc1    $f16, 0x0020(a0)           # 00000020
    mfc1    t9, $f10
    add.s   $f4, $f16, $f18
    lwc1    $f16, 0x000C(a0)           # 0000000C
    lwc1    $f10, 0x0000(a0)           # 00000000
    sh      t7, 0x0030(a0)             # 00000030
    mul.s   $f6, $f4, $f0
    add.s   $f18, $f10, $f16
    lwc1    $f10, 0x0010(a0)           # 00000010
    sh      t9, 0x0032(a0)             # 00000032
    mul.s   $f4, $f18, $f0
    trunc.w.s $f8, $f6
    trunc.w.s $f6, $f4
    mfc1    t1, $f8
    lwc1    $f8, 0x0004(a0)            # 00000004
    mfc1    t3, $f6
    add.s   $f16, $f8, $f10
    lwc1    $f8, 0x0014(a0)            # 00000014
    lwc1    $f6, 0x0008(a0)            # 00000008
    sh      t1, 0x0034(a0)             # 00000034
    mul.s   $f18, $f16, $f0
    add.s   $f10, $f6, $f8
    sh      t3, 0x0036(a0)             # 00000036
    mul.s   $f16, $f10, $f0
    trunc.w.s $f4, $f18
    trunc.w.s $f18, $f16
    mfc1    t5, $f4
    mfc1    t7, $f18
    sh      t5, 0x0038(a0)             # 00000038
    sh      t7, 0x003A(a0)             # 0000003A
    jr      $ra
    nop


func_8004B7D0:
# Initialize Collision Type 3 Quad (Overlay)
# A0 = Global Context
# A1 = CollisionBody* + 0x40 # CollisionBody_ShapeType3*
# A2 = OverlayCollision* + ?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t7, 0x0000(a2)             # 00000000
    or      a0, a1, $zero              # a0 = 00000000
    sw      t7, 0x0000(a1)             # 00000000
    lw      t6, 0x0004(a2)             # 00000004
    sw      t6, 0x0004(a1)             # 00000004
    lw      t7, 0x0008(a2)             # 00000008
    sw      t7, 0x0008(a1)             # 00000008
    lw      t9, 0x000C(a2)             # 0000000C
    sw      t9, 0x000C(a1)             # 0000000C
    lw      t8, 0x0010(a2)             # 00000010
    sw      t8, 0x0010(a1)             # 00000010
    lw      t9, 0x0014(a2)             # 00000014
    sw      t9, 0x0014(a1)             # 00000014
    lw      t1, 0x0018(a2)             # 00000018
    sw      t1, 0x0018(a1)             # 00000018
    lw      t0, 0x001C(a2)             # 0000001C
    sw      t0, 0x001C(a1)             # 0000001C
    lw      t1, 0x0020(a2)             # 00000020
    sw      t1, 0x0020(a1)             # 00000020
    lw      t3, 0x0024(a2)             # 00000024
    sw      t3, 0x0024(a1)             # 00000024
    lw      t2, 0x0028(a2)             # 00000028
    sw      t2, 0x0028(a1)             # 00000028
    lw      t3, 0x002C(a2)             # 0000002C
    jal     func_8004B714
    sw      t3, 0x002C(a1)             # 0000002C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004B858:
# Initialize Collision Type 3 (Generic)
# A0 = Global Context
# A1 = CollisionBody*
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80049E70
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A0D4
    addiu   a1, a1, 0x0018             # a1 = 00000018
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004B698
    addiu   a1, a1, 0x0040             # a1 = 00000040
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004B8A8:
# Destruct Collision Type 3
# A0 = Global Context
# A1 = CollisionBody*
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80049EB8
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A154
    addiu   a1, a1, 0x0018             # a1 = 00000018
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004B6E4
    addiu   a1, a1, 0x0040             # a1 = 00000040
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004B8F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a3, 0x0024($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80049F0C
    lw      a3, 0x0024($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, a1, 0x0018             # a1 = 00000018
    jal     func_8004A194
    addiu   a2, a2, 0x0008             # a2 = 00000008
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, a1, 0x0040             # a1 = 00000040
    jal     func_8004B7D0
    addiu   a2, a2, 0x0020             # a2 = 00000020
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004B960:
# Initialize Collision Type 3 (Overlay)
# A0 = Global Context
# A1 = CollisionBody*
# A2 = Actor*
# A3 = OverlayCollision*
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a3, 0x0024($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80049F50
    lw      a3, 0x0024($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, a1, 0x0018             # a1 = 00000018
    jal     func_8004A194
    addiu   a2, a2, 0x0008             # a2 = 00000008
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, a1, 0x0040             # a1 = 00000040
    jal     func_8004B7D0
    addiu   a2, a2, 0x0020             # a2 = 00000020
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004B9C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80049F94
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A20C
    addiu   a1, a1, 0x0018             # a1 = 00000018
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004B6F8
    addiu   a1, a1, 0x0040             # a1 = 00000040
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004BA18:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80049FB0
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A244
    addiu   a1, a1, 0x0018             # a1 = 00000018
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004BA58:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80049FCC
    lw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8004A27C
    addiu   a1, a1, 0x0018             # a1 = 00000018
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004BA98:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lbu     t6, 0x002D(a3)             # 0000002D
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFF0
    addiu   a1, a3, 0x0070             # a1 = 00000070
    andi    t7, t6, 0x0004             # t7 = 00000000
    bne     t7, $zero, lbl_8004BACC
    nop
    b       lbl_8004BB38
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004BACC:
    jal     func_80063CCC              # Vec3f_CopyVec3s
    sw      a3, 0x0034($sp)
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFF0
    jal     func_800A5538
    lw      a1, 0x0038($sp)
    lw      a3, 0x0034($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f4, 0x007C(a3)            # 0000007C
    c.lt.s  $f0, $f4
    nop
    bc1f    lbl_8004BB38
    nop
    lw      a1, 0x0030(a3)             # 00000030
    swc1    $f0, 0x007C(a3)            # 0000007C
    lw      a0, 0x0030($sp)
    beql    a1, $zero, lbl_8004BB20
    lw      a1, 0x0038(a3)             # 00000038
    jal     func_80049FB0
    sw      a3, 0x0034($sp)
    lw      a3, 0x0034($sp)
    lw      a1, 0x0038(a3)             # 00000038
lbl_8004BB20:
    beq     a1, $zero, lbl_8004BB30
    nop
    jal     func_8004A244
    lw      a0, 0x0030($sp)
lbl_8004BB30:
    b       lbl_8004BB38
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004BB38:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8004BB48:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a1, 0x002C($sp)
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xFA8C             # t6 = 800EFA8C
    lw      t8, 0x0000(t6)             # 800EFA8C
    sw      t8, 0x0000(a1)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 800EFA90
    sw      t7, 0x0004(a1)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 800EFA94
    sw      t8, 0x0008(a1)             # FFFFFFFC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a0, 0x002C($sp)
    lw      a0, 0x002C($sp)
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, a0, 0x000C             # a0 = 0000000C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8004BBA8:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_8004BBBC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a3, 0x0024($sp)
    lw      a0, 0x001C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, a2, $zero              # a1 = 00000000
    lw      a0, 0x001C($sp)
    lw      a1, 0x0024($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, a0, 0x000C             # a0 = 0000000C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004BC00:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lhu     t6, 0x0018(a2)             # 00000018
    addiu   a3, a2, 0x000C             # a3 = 0000000C
    jal     func_8004BBBC
    sh      t6, 0x0018(a1)             # 00000018
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004BC2C:
    sw      a0, 0x0000($sp)
    lhu     t6, 0x0018(a1)             # 00000018
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t7, t6, 0xFFFE             # t7 = 00000000
    sh      t7, 0x0018(a1)             # 00000018
    jr      $ra
    nop


func_8004BC48:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8004BC78
    sh      $zero, 0x0002(a1)          # 00000002
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004BC68:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_8004BC78:
    sw      a0, 0x0000($sp)
    lhu     t6, 0x0002(a1)             # 00000002
    addiu   v0, a1, 0x0004             # v0 = 00000004
    addiu   a0, a1, 0x00CC             # a0 = 000000CC
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_8004BD18
    sltu    $at, v0, a0
    sh      $zero, 0x0000(a1)          # 00000000
    sw      $zero, 0x00CC(a1)          # 000000CC
    sw      $zero, 0x01C0(a1)          # 000001C0
    beq     $at, $zero, lbl_8004BCB8
    sw      $zero, 0x028C(a1)          # 0000028C
lbl_8004BCA8:
    addiu   v0, v0, 0x0004             # v0 = 00000008
    sltu    $at, v0, a0
    bne     $at, $zero, lbl_8004BCA8
    sw      $zero, -0x0004(v0)         # 00000004
lbl_8004BCB8:
    addiu   v0, a1, 0x00D0             # v0 = 000000D0
    addiu   a0, a1, 0x01C0             # a0 = 000001C0
    sltu    $at, v0, a0
    beq     $at, $zero, lbl_8004BCD8
lbl_8004BCC8:
    addiu   v0, v0, 0x0004             # v0 = 000000D4
    sltu    $at, v0, a0
    bne     $at, $zero, lbl_8004BCC8
    sw      $zero, -0x0004(v0)         # 000000D0
lbl_8004BCD8:
    addiu   v0, a1, 0x01C4             # v0 = 000001C4
    addiu   a0, a1, 0x028C             # a0 = 0000028C
    sltu    $at, v0, a0
    beq     $at, $zero, lbl_8004BCF8
lbl_8004BCE8:
    addiu   v0, v0, 0x0004             # v0 = 000001C8
    sltu    $at, v0, a0
    bne     $at, $zero, lbl_8004BCE8
    sw      $zero, -0x0004(v0)         # 000001C4
lbl_8004BCF8:
    addiu   v0, a1, 0x0290             # v0 = 00000290
    addiu   a0, a1, 0x029C             # a0 = 0000029C
    sltu    $at, v0, a0
    beq     $at, $zero, lbl_8004BD18
lbl_8004BD08:
    addiu   v0, v0, 0x0004             # v0 = 00000294
    sltu    $at, v0, a0
    bne     $at, $zero, lbl_8004BD08
    sw      $zero, -0x0004(v0)         # 00000290
lbl_8004BD18:
    jr      $ra
    nop


func_8004BD20:
    sw      a0, 0x0000($sp)
    lhu     t6, 0x0002(a1)             # 00000002
    ori     t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0002(a1)             # 00000002
    jr      $ra
    nop


func_8004BD38:
    sw      a0, 0x0000($sp)
    lhu     t6, 0x0002(a1)             # 00000002
    andi    t7, t6, 0xFFFE             # t7 = 00000000
    sh      t7, 0x0002(a1)             # 00000002
    jr      $ra
    nop


func_8004BD50:
# CollisionCheck_setAT
# Subscribe to collision pool 1, non-complex poly types
# Called directly by actors
# A0 = Global Context
# A1 = 801DA300 (collision body groups)
# A2 = Collision Body Ptr
# V0 = 0 or -1 based on 801DA302 lowest bit?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      a0, 0x0018($sp)
    jal     func_8009DB54
    sw      a3, 0x001C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a1, 0x0020($sp)
    bne     v0, $at, lbl_8004BD88
    lw      a3, 0x001C($sp)
    b       lbl_8004BE20
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004BD88:
    sw      a3, 0x001C($sp)
    lbu     t6, 0x0015(a1)             # 00000015
    lui     t9, 0x800F                 # t9 = 800F0000
    lw      a0, 0x0018($sp)
    sll     t7, t6,  2
    addu    t9, t9, t7
    lw      t9, -0x0568(t9)            # 800EFA98
    jalr    $ra, t9
    nop
    lw      a1, 0x0020($sp)
    lw      a3, 0x001C($sp)
    lw      v1, 0x0000(a1)             # 00000000
    beql    v1, $zero, lbl_8004BDD8
    lh      v1, 0x0000(a3)             # 00000000
    lw      t8, 0x0130(v1)             # 00000130
    bnel    t8, $zero, lbl_8004BDD8
    lh      v1, 0x0000(a3)             # 00000000
    b       lbl_8004BE20
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lh      v1, 0x0000(a3)             # 00000000
lbl_8004BDD8:
    slti    $at, v1, 0x0032
    bnel    $at, $zero, lbl_8004BDF0
    lhu     t0, 0x0002(a3)             # 00000002
    b       lbl_8004BE20
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lhu     t0, 0x0002(a3)             # 00000002
lbl_8004BDF0:
    sll     t2, v1,  2
    addu    t3, a3, t2
    andi    t1, t0, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_8004BE10
    sw      a1, 0x0004(t3)             # 00000004
    b       lbl_8004BE20
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    sw      a1, 0x0004(t3)             # 00000004
lbl_8004BE10:
    lh      t4, 0x0000(a3)             # 00000000
    or      v0, v1, $zero              # v0 = 00000000
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x0000(a3)             # 00000000
lbl_8004BE20:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004BE30:
# CollisionCheck_setAT
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    sw      a2, 0x0028($sp)
    jal     func_8009DB54
    sw      a3, 0x002C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a2, 0x0028($sp)
    bne     v0, $at, lbl_8004BE6C
    lw      a3, 0x002C($sp)
    b       lbl_8004BF2C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004BE6C:
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lbu     t6, 0x0015(a2)             # 00000015
    lui     t9, 0x800F                 # t9 = 800F0000
    lw      a0, 0x0020($sp)
    sll     t7, t6,  2
    addu    t9, t9, t7
    lw      t9, -0x0568(t9)            # 800EFA98
    or      a1, a2, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lw      a2, 0x0028($sp)
    lw      a3, 0x002C($sp)
    lw      v1, 0x0000(a2)             # 00000000
    beql    v1, $zero, lbl_8004BEC4
    lhu     t0, 0x0002(s0)             # 00000002
    lw      t8, 0x0130(v1)             # 00000130
    bnel    t8, $zero, lbl_8004BEC4
    lhu     t0, 0x0002(s0)             # 00000002
    b       lbl_8004BF2C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lhu     t0, 0x0002(s0)             # 00000002
lbl_8004BEC4:
    andi    t1, t0, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_8004BEFC
    lh      v0, 0x0000(s0)             # 00000000
    lh      t2, 0x0000(s0)             # 00000000
    sll     t3, a3,  2
    addu    t4, s0, t3
    slt     $at, a3, t2
    bne     $at, $zero, lbl_8004BEF0
    nop
    b       lbl_8004BF2C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004BEF0:
    b       lbl_8004BF28
    sw      a2, 0x0004(t4)             # 00000004
    lh      v0, 0x0000(s0)             # 00000000
lbl_8004BEFC:
    slti    $at, v0, 0x0032
    bne     $at, $zero, lbl_8004BF10
    sll     t5, v0,  2
    b       lbl_8004BF2C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004BF10:
    addu    t6, s0, t5
    sw      a2, 0x0004(t6)             # 00000004
    lh      t7, 0x0000(s0)             # 00000000
    or      a3, v0, $zero              # a3 = FFFFFFFF
    addiu   t9, t7, 0x0001             # t9 = 00000001
    sh      t9, 0x0000(s0)             # 00000000
lbl_8004BF28:
    or      v0, a3, $zero              # v0 = FFFFFFFF
lbl_8004BF2C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8004BF40:
# CollisionCheck_setAC
# Subscribe to collision pool 2, non-complex poly types
# Called directly by actors
# A0 = Global Context
# A1 = 801DA300 (collision body groups)
# A2 = Collision Body Ptr
# V0 = 0 or -1 based on 801DA302 lowest bit?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      a0, 0x0018($sp)
    jal     func_8009DB54
    sw      a3, 0x001C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a1, 0x0020($sp)
    bne     v0, $at, lbl_8004BF78
    lw      a3, 0x001C($sp)
    b       lbl_8004C010
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004BF78:
    sw      a3, 0x001C($sp)
    lbu     t6, 0x0015(a1)             # 00000015
    lui     t9, 0x800F                 # t9 = 800F0000
    lw      a0, 0x0018($sp)
    sll     t7, t6,  2
    addu    t9, t9, t7
    lw      t9, -0x0558(t9)            # 800EFAA8
    jalr    $ra, t9
    nop
    lw      a1, 0x0020($sp)
    lw      a3, 0x001C($sp)
    lw      v1, 0x0000(a1)             # 00000000
    beql    v1, $zero, lbl_8004BFC8
    lw      v1, 0x00CC(a3)             # 000000CC
    lw      t8, 0x0130(v1)             # 00000130
    bnel    t8, $zero, lbl_8004BFC8
    lw      v1, 0x00CC(a3)             # 000000CC
    b       lbl_8004C010
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lw      v1, 0x00CC(a3)             # 000000CC
lbl_8004BFC8:
    slti    $at, v1, 0x003C
    bnel    $at, $zero, lbl_8004BFE0
    lhu     t0, 0x0002(a3)             # 00000002
    b       lbl_8004C010
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lhu     t0, 0x0002(a3)             # 00000002
lbl_8004BFE0:
    sll     t2, v1,  2
    addu    t3, a3, t2
    andi    t1, t0, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_8004C000
    sw      a1, 0x00D0(t3)             # 000000D0
    b       lbl_8004C010
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    sw      a1, 0x00D0(t3)             # 000000D0
lbl_8004C000:
    lw      t4, 0x00CC(a3)             # 000000CC
    or      v0, v1, $zero              # v0 = 00000000
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sw      t5, 0x00CC(a3)             # 000000CC
lbl_8004C010:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004C020:
# CollisionCheck_setAC
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    sw      a2, 0x0028($sp)
    jal     func_8009DB54
    sw      a3, 0x002C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a2, 0x0028($sp)
    bne     v0, $at, lbl_8004C05C
    lw      a3, 0x002C($sp)
    b       lbl_8004C11C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004C05C:
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lbu     t6, 0x0015(a2)             # 00000015
    lui     t9, 0x800F                 # t9 = 800F0000
    lw      a0, 0x0020($sp)
    sll     t7, t6,  2
    addu    t9, t9, t7
    lw      t9, -0x0558(t9)            # 800EFAA8
    or      a1, a2, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lw      a2, 0x0028($sp)
    lw      a3, 0x002C($sp)
    lw      v1, 0x0000(a2)             # 00000000
    beql    v1, $zero, lbl_8004C0B4
    lhu     t0, 0x0002(s0)             # 00000002
    lw      t8, 0x0130(v1)             # 00000130
    bnel    t8, $zero, lbl_8004C0B4
    lhu     t0, 0x0002(s0)             # 00000002
    b       lbl_8004C11C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lhu     t0, 0x0002(s0)             # 00000002
lbl_8004C0B4:
    andi    t1, t0, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_8004C0EC
    lw      v0, 0x00CC(s0)             # 000000CC
    lw      t2, 0x00CC(s0)             # 000000CC
    sll     t3, a3,  2
    addu    t4, s0, t3
    slt     $at, a3, t2
    bne     $at, $zero, lbl_8004C0E0
    nop
    b       lbl_8004C11C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004C0E0:
    b       lbl_8004C118
    sw      a2, 0x00D0(t4)             # 000000D0
    lw      v0, 0x00CC(s0)             # 000000CC
lbl_8004C0EC:
    slti    $at, v0, 0x003C
    bne     $at, $zero, lbl_8004C100
    sll     t5, v0,  2
    b       lbl_8004C11C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004C100:
    addu    t6, s0, t5
    sw      a2, 0x00D0(t6)             # 000000D0
    lw      t7, 0x00CC(s0)             # 000000CC
    or      a3, v0, $zero              # a3 = FFFFFFFF
    addiu   t9, t7, 0x0001             # t9 = 00000001
    sw      t9, 0x00CC(s0)             # 000000CC
lbl_8004C118:
    or      v0, a3, $zero              # v0 = FFFFFFFF
lbl_8004C11C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8004C130:
# CollisionCheck_setOT
# Subscribe to collision pool 3, non-complex poly types
# A0 = Global Context
# A1 = 801DA300 (collision body groups)
# A2 = Collision Body Ptr
# V0 = 0 or -1 based on 801DA302 lowest bit?
# Called directly by actors
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      a0, 0x0018($sp)
    jal     func_8009DB54
    sw      a3, 0x001C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a1, 0x0020($sp)
    bne     v0, $at, lbl_8004C168
    lw      a3, 0x001C($sp)
    b       lbl_8004C200
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004C168:
    sw      a3, 0x001C($sp)
    lbu     t6, 0x0015(a1)             # 00000015
    lui     t9, 0x800F                 # t9 = 800F0000
    lw      a0, 0x0018($sp)
    sll     t7, t6,  2
    addu    t9, t9, t7
    lw      t9, -0x0548(t9)            # 800EFAB8
    jalr    $ra, t9
    nop
    lw      a1, 0x0020($sp)
    lw      a3, 0x001C($sp)
    lw      v1, 0x0000(a1)             # 00000000
    beql    v1, $zero, lbl_8004C1B8
    lw      v1, 0x01C0(a3)             # 000001C0
    lw      t8, 0x0130(v1)             # 00000130
    bnel    t8, $zero, lbl_8004C1B8
    lw      v1, 0x01C0(a3)             # 000001C0
    b       lbl_8004C200
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lw      v1, 0x01C0(a3)             # 000001C0
lbl_8004C1B8:
    slti    $at, v1, 0x0032
    bnel    $at, $zero, lbl_8004C1D0
    lhu     t0, 0x0002(a3)             # 00000002
    b       lbl_8004C200
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lhu     t0, 0x0002(a3)             # 00000002
lbl_8004C1D0:
    sll     t2, v1,  2
    addu    t3, a3, t2
    andi    t1, t0, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_8004C1F0
    sw      a1, 0x01C4(t3)             # 000001C4
    b       lbl_8004C200
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    sw      a1, 0x01C4(t3)             # 000001C4
lbl_8004C1F0:
    lw      t4, 0x01C0(a3)             # 000001C0
    or      v0, v1, $zero              # v0 = 00000000
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sw      t5, 0x01C0(a3)             # 000001C0
lbl_8004C200:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004C210:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    sw      a2, 0x0028($sp)
    jal     func_8009DB54
    sw      a3, 0x002C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a2, 0x0028($sp)
    bne     v0, $at, lbl_8004C24C
    lw      a3, 0x002C($sp)
    b       lbl_8004C30C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004C24C:
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lbu     t6, 0x0015(a2)             # 00000015
    lui     t9, 0x800F                 # t9 = 800F0000
    lw      a0, 0x0020($sp)
    sll     t7, t6,  2
    addu    t9, t9, t7
    lw      t9, -0x0548(t9)            # 800EFAB8
    or      a1, a2, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lw      a2, 0x0028($sp)
    lw      a3, 0x002C($sp)
    lw      v1, 0x0000(a2)             # 00000000
    beql    v1, $zero, lbl_8004C2A4
    lhu     t0, 0x0002(s0)             # 00000002
    lw      t8, 0x0130(v1)             # 00000130
    bnel    t8, $zero, lbl_8004C2A4
    lhu     t0, 0x0002(s0)             # 00000002
    b       lbl_8004C30C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lhu     t0, 0x0002(s0)             # 00000002
lbl_8004C2A4:
    andi    t1, t0, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_8004C2DC
    lw      v0, 0x01C0(s0)             # 000001C0
    lw      t2, 0x01C0(s0)             # 000001C0
    sll     t3, a3,  2
    addu    t4, s0, t3
    slt     $at, a3, t2
    bne     $at, $zero, lbl_8004C2D0
    nop
    b       lbl_8004C30C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004C2D0:
    b       lbl_8004C308
    sw      a2, 0x0004(t4)             # 00000004
    lw      v0, 0x01C0(s0)             # 000001C0
lbl_8004C2DC:
    slti    $at, v0, 0x0032
    bne     $at, $zero, lbl_8004C2F0
    sll     t5, v0,  2
    b       lbl_8004C30C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004C2F0:
    addu    t6, s0, t5
    sw      a2, 0x01C4(t6)             # 000001C4
    lw      t7, 0x01C0(s0)             # 000001C0
    or      a3, v0, $zero              # a3 = FFFFFFFF
    addiu   t9, t7, 0x0001             # t9 = 00000001
    sw      t9, 0x01C0(s0)             # 000001C0
lbl_8004C308:
    or      v0, a3, $zero              # v0 = FFFFFFFF
lbl_8004C30C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8004C320:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      a0, 0x0018($sp)
    jal     func_8009DB54
    sw      a3, 0x001C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8004C354
    lw      a3, 0x001C($sp)
    b       lbl_8004C39C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004C354:
    lw      a0, 0x0018($sp)
    lw      a1, 0x0020($sp)
    jal     func_8004BC2C
    sw      a3, 0x001C($sp)
    lw      a3, 0x001C($sp)
    lw      t6, 0x0020($sp)
    lw      v1, 0x028C(a3)             # 0000028C
    slti    $at, v1, 0x0003
    bne     $at, $zero, lbl_8004C384
    sll     t7, v1,  2
    b       lbl_8004C39C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8004C384:
    addu    t8, a3, t7
    sw      t6, 0x0290(t8)             # 00000290
    lw      t9, 0x028C(a3)             # 0000028C
    or      v0, v1, $zero              # v0 = 00000000
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sw      t0, 0x028C(a3)             # 0000028C
lbl_8004C39C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004C3AC:
# Checks collision toucher attribute
# A0 = CollisionBodyInfo* toucher
# V0 = 1 if (CollisionBodyInfo)+0x15 & 0x01 == 0, else 0
    lbu     t6, 0x0015(a0)             # 00000015
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_8004C3C8
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004C3C8:
    jr      $ra
    nop


func_8004C3D0:
# Checks collision bumper attribute
# A0 = CollisionBodyInfo* bumper
# V0 = 1 if (CollisionBodyInfo)+0x16 & 0x01 == 0, else 0
    lbu     t6, 0x0016(a0)             # 00000016
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_8004C3EC
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004C3EC:
    jr      $ra
    nop


func_8004C3F4:
# ?, seems to be used to check if Link should collide into enemies
# A0 = Ptr to CollisionBodyShape (colAT, attack)
# A1 = Ptr to CollisionBodyShape (colAC, collidable)
# V0 = 1 if true, else 0
    lw      t6, 0x0000(a0)             # 00000000
    lw      t7, 0x0008(a1)             # 00000008
    or      v0, $zero, $zero           # v0 = 00000000
    and     t8, t6, t7
    bne     t8, $zero, lbl_8004C414
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004C414:
    jr      $ra
    nop


func_8004C41C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    jr      $ra
    nop


func_8004C430:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x9C20             # v0 = 80119C20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addiu   t0, $zero, 0x0080          # t0 = 00000080
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    lw      t6, 0x0030($sp)
    lui     $at, 0x8012                # $at = 80120000
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    lwc1    $f4, 0x0000(t6)            # 00000000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    trunc.w.s $f6, $f4
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    t8, $f6
    nop
    sh      t8, -0x63E0($at)           # 80119C20
    lwc1    $f8, 0x0004(t6)            # 00000004
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    trunc.w.s $f10, $f8
    mfc1    t4, $f10
    nop
    sh      t4, -0x63DE($at)           # 80119C22
    lwc1    $f16, 0x0008(t6)           # 00000008
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    trunc.w.s $f18, $f16
    sw      v0, 0x0014($sp)
    sw      t5, 0x0010($sp)
    mfc1    t7, $f18
    nop
    sh      t7, -0x63DC($at)           # 80119C24
    lui     $at, 0x8012                # $at = 80120000
    sw      t8, -0x5F4C($at)           # 8011A0B4
    lui     $at, 0x8012                # $at = 80120000
    sw      t9, -0x5F48($at)           # 8011A0B8
    sb      t1, 0x049C(v0)             # 8011A0BC
    sb      t1, 0x049D(v0)             # 8011A0BD
    sb      t4, 0x049E(v0)             # 8011A0BE
    sb      v1, 0x049F(v0)             # 8011A0BF
    sb      $zero, 0x04A0(v0)          # 8011A0C0
    sb      $zero, 0x04A1(v0)          # 8011A0C1
    sb      t0, 0x04A2(v0)             # 8011A0C2
    sb      v1, 0x04A3(v0)             # 8011A0C3
    sb      $zero, 0x04A4(v0)          # 8011A0C4
    sb      $zero, 0x04A5(v0)          # 8011A0C5
    sb      t0, 0x04A6(v0)             # 8011A0C6
    sb      v1, 0x04A7(v0)             # 8011A0C7
    sb      $zero, 0x04A8(v0)          # 8011A0C8
    sb      $zero, 0x04A9(v0)          # 8011A0C9
    sb      t0, 0x04AA(v0)             # 8011A0CA
    sb      v1, 0x04AB(v0)             # 8011A0CB
    sb      $zero, 0x04AC(v0)          # 8011A0CC
    sb      $zero, 0x04AD(v0)          # 8011A0CD
    sb      t2, 0x04AE(v0)             # 8011A0CE
    sb      $zero, 0x04AF(v0)          # 8011A0CF
    sb      $zero, 0x04B0(v0)          # 8011A0D0
    sb      $zero, 0x04B1(v0)          # 8011A0D1
    sb      t2, 0x04B2(v0)             # 8011A0D2
    sb      $zero, 0x04B3(v0)          # 8011A0D3
    sb      $zero, 0x04B4(v0)          # 8011A0D4
    sb      $zero, 0x04B5(v0)          # 8011A0D5
    sb      t3, 0x04B6(v0)             # 8011A0D6
    sb      $zero, 0x04B7(v0)          # 8011A0D7
    sb      $zero, 0x04B8(v0)          # 8011A0D8
    sb      $zero, 0x04B9(v0)          # 8011A0D9
    sb      t3, 0x04BA(v0)             # 8011A0DA
    sb      $zero, 0x04BB(v0)          # 8011A0DB
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x5F24($at)        # 8011A0DC
    lui     $at, 0x8012                # $at = 80120000
    sw      t6, -0x5F20($at)           # 8011A0E0
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f4, -0x5F54($at)          # 8011A0AC
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    lui     $at, 0x8012                # $at = 80120000
    jal     func_8001AA5C
    swc1    $f6, -0x5F50($at)          # 8011A0B0
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8004C59C:
# Collision?
# A0 = Global Context
# A1 = colAT hitbox pointer
# A2 = ?
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA0E8             # v0 = 8011A0E8
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addiu   t0, $zero, 0x0080          # t0 = 00000080
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    lw      t6, 0x0030($sp)
    lui     $at, 0x8012                # $at = 80120000
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    lwc1    $f4, 0x0000(t6)            # 00000000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    trunc.w.s $f6, $f4
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    t8, $f6
    nop
    sh      t8, -0x5F18($at)           # 8011A0E8
    lwc1    $f8, 0x0004(t6)            # 00000004
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    trunc.w.s $f10, $f8
    mfc1    t4, $f10
    nop
    sh      t4, -0x5F16($at)           # 8011A0EA
    lwc1    $f16, 0x0008(t6)           # 00000008
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    trunc.w.s $f18, $f16
    sw      v0, 0x0014($sp)
    sw      t5, 0x0010($sp)
    mfc1    t7, $f18
    nop
    sh      t7, -0x5F14($at)           # 8011A0EC
    lui     $at, 0x8012                # $at = 80120000
    sw      t8, -0x5A84($at)           # 8011A57C
    lui     $at, 0x8012                # $at = 80120000
    sw      t9, -0x5A80($at)           # 8011A580
    sb      t1, 0x049C(v0)             # 8011A584
    sb      t4, 0x049D(v0)             # 8011A585
    sb      t1, 0x049E(v0)             # 8011A586
    sb      v1, 0x049F(v0)             # 8011A587
    sb      $zero, 0x04A0(v0)          # 8011A588
    sb      t0, 0x04A1(v0)             # 8011A589
    sb      $zero, 0x04A2(v0)          # 8011A58A
    sb      v1, 0x04A3(v0)             # 8011A58B
    sb      $zero, 0x04A4(v0)          # 8011A58C
    sb      t0, 0x04A5(v0)             # 8011A58D
    sb      $zero, 0x04A6(v0)          # 8011A58E
    sb      v1, 0x04A7(v0)             # 8011A58F
    sb      $zero, 0x04A8(v0)          # 8011A590
    sb      t0, 0x04A9(v0)             # 8011A591
    sb      $zero, 0x04AA(v0)          # 8011A592
    sb      v1, 0x04AB(v0)             # 8011A593
    sb      $zero, 0x04AC(v0)          # 8011A594
    sb      t2, 0x04AD(v0)             # 8011A595
    sb      $zero, 0x04AE(v0)          # 8011A596
    sb      $zero, 0x04AF(v0)          # 8011A597
    sb      $zero, 0x04B0(v0)          # 8011A598
    sb      t2, 0x04B1(v0)             # 8011A599
    sb      $zero, 0x04B2(v0)          # 8011A59A
    sb      $zero, 0x04B3(v0)          # 8011A59B
    sb      $zero, 0x04B4(v0)          # 8011A59C
    sb      t3, 0x04B5(v0)             # 8011A59D
    sb      $zero, 0x04B6(v0)          # 8011A59E
    sb      $zero, 0x04B7(v0)          # 8011A59F
    sb      $zero, 0x04B8(v0)          # 8011A5A0
    sb      t3, 0x04B9(v0)             # 8011A5A1
    sb      $zero, 0x04BA(v0)          # 8011A5A2
    sb      $zero, 0x04BB(v0)          # 8011A5A3
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x5A5C($at)        # 8011A5A4
    lui     $at, 0x8012                # $at = 80120000
    sw      t6, -0x5A58($at)           # 8011A5A8
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f4, -0x5A8C($at)          # 8011A574
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    lui     $at, 0x8012                # $at = 80120000
    jal     func_8001AA5C
    swc1    $f6, -0x5A88($at)          # 8011A578
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8004C708:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    jal     func_8001D4A8
    lw      a1, 0x0020($sp)
    lw      a0, 0x0018($sp)
    jal     func_80050FC8
    lw      a1, 0x0020($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004C744:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_80050E68
    or      a1, a2, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004C768:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_80050E68
    or      a1, a2, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004C78C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    lbu     v0, 0x0015(a1)             # 00000015
    lw      t6, 0x0028($sp)
    andi    v0, v0, 0x0018             # v0 = 00000000
    bne     v0, $zero, lbl_8004C838
    nop
    lbu     t7, 0x0014(t6)             # 00000014
    addiu   $at, $zero, 0x0009         # $at = 00000009
    or      a1, $zero, $zero           # a1 = 00000000
    beq     t7, $at, lbl_8004C838
    nop
    jal     func_8001D7A8
    or      a2, a3, $zero              # a2 = 00000000
    lw      t8, 0x0028($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lw      v0, 0x0000(t8)             # 00000000
    addiu   a0, $zero, 0x1806          # a0 = 00001806
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bne     v0, $zero, lbl_8004C81C
    addiu   a1, v0, 0x00E4             # a1 = 000000E4
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1806          # a0 = 00001806
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_8004C990
    lw      $ra, 0x001C($sp)
lbl_8004C81C:
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    sw      t0, 0x0014($sp)
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    b       lbl_8004C990
    lw      $ra, 0x001C($sp)
lbl_8004C838:
    bne     v0, $zero, lbl_8004C890
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    or      a2, a3, $zero              # a2 = 00000000
    sw      a0, 0x0020($sp)
    jal     func_8001D7A8
    sw      a3, 0x002C($sp)
    lw      t1, 0x0028($sp)
    lw      a3, 0x002C($sp)
    lw      a0, 0x0020($sp)
    lw      v0, 0x0000(t1)             # 00000000
    or      a1, a3, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_8004C880
    nop
    jal     func_800511B8
    or      a1, a3, $zero              # a1 = 00000000
    b       lbl_8004C990
    lw      $ra, 0x001C($sp)
lbl_8004C880:
    jal     func_80051204
    addiu   a2, v0, 0x00E4             # a2 = 000000E4
    b       lbl_8004C990
    lw      $ra, 0x001C($sp)
lbl_8004C890:
    bne     v0, $at, lbl_8004C910
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8001D7A8
    or      a2, a3, $zero              # a2 = 00000000
    lw      t2, 0x0028($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lw      v0, 0x0000(t2)             # 00000000
    addiu   a0, $zero, 0x1806          # a0 = 00001806
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bne     v0, $zero, lbl_8004C8F4
    addiu   a1, v0, 0x00E4             # a1 = 000000E4
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t3, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1806          # a0 = 00001806
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_8004C990
    lw      $ra, 0x001C($sp)
lbl_8004C8F4:
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    sw      t4, 0x0014($sp)
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    b       lbl_8004C990
    lw      $ra, 0x001C($sp)
lbl_8004C910:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     v0, $at, lbl_8004C98C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_8001D7A8
    or      a2, a3, $zero              # a2 = 00000000
    lw      t5, 0x0028($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lw      v0, 0x0000(t5)             # 00000000
    addiu   a0, $zero, 0x1837          # a0 = 00001837
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bne     v0, $zero, lbl_8004C978
    addiu   a1, v0, 0x00E4             # a1 = 000000E4
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1837          # a0 = 00001837
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_8004C990
    lw      $ra, 0x001C($sp)
lbl_8004C978:
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)
    jal     func_800C806C
    sw      a3, 0x0010($sp)
lbl_8004C98C:
    lw      $ra, 0x001C($sp)
lbl_8004C990:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8004C99C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lw      v1, 0x0000(a0)             # 00000000
    beql    v1, $zero, lbl_8004CA98
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lbu     t6, 0x0002(v1)             # 00000002
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    bnel    a0, t6, lbl_8004CA98
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lbu     v0, 0x0014(a1)             # 00000014
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     v0, $zero, lbl_8004C9FC
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)
    addiu   a0, $zero, 0x1811          # a0 = 00001811
    addiu   a1, v1, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    b       lbl_8004CA98
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004C9FC:
    bne     v0, $at, lbl_8004CA30
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1824          # a0 = 00001824
    addiu   a1, v1, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_8004CA98
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004CA30:
    bne     a0, v0, lbl_8004CA68
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    sw      t9, 0x0014($sp)
    sw      a3, 0x0010($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a1, v1, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_8004CA98
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004CA68:
    bne     v0, $at, lbl_8004CA94
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    sw      t0, 0x0014($sp)
    sw      a3, 0x0010($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a1, v1, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_8004CA94:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004CA98:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8004CAA8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lw      t6, 0x0030($sp)
    lw      t9, 0x0028($sp)
    lbu     t7, 0x0016(t6)             # 00000016
    andi    t8, t7, 0x0040             # t8 = 00000000
    bnel    t8, $zero, lbl_8004CC9C
    lw      $ra, 0x001C($sp)
    lbu     v0, 0x0015(t9)             # 00000015
    lw      t2, 0x002C($sp)
    andi    t0, v0, 0x0020             # t0 = 00000000
    bne     t0, $zero, lbl_8004CAF0
    andi    t1, v0, 0x0040             # t1 = 00000000
    bnel    t1, $zero, lbl_8004CC9C
    lw      $ra, 0x001C($sp)
lbl_8004CAF0:
    lw      v0, 0x0000(t2)             # 00000000
    beq     v0, $zero, lbl_8004CB40
    nop
    sw      a0, 0x0020($sp)
    lbu     t3, 0x0014(t2)             # 00000014
    lui     t5, 0x800F                 # t5 = 800F0000
    lui     t9, 0x800F                 # t9 = 800F0000
    sll     t4, t3,  1
    addu    t5, t5, t4
    lbu     t5, -0x0520(t5)            # 800EFAE0
    lw      a2, 0x0034($sp)
    or      a1, t2, $zero              # a1 = 00000000
    sll     t6, t5,  2
    addu    t9, t9, t6
    lw      t9, -0x0538(t9)            # 800EFAC8
    jalr    $ra, t9
    nop
    lw      t7, 0x002C($sp)
    lw      a0, 0x0020($sp)
    lw      v0, 0x0000(t7)             # 00000000
lbl_8004CB40:
    beq     v0, $zero, lbl_8004CC24
    lw      a3, 0x0034($sp)
    lw      t8, 0x002C($sp)
    lui     a1, 0x800F                 # a1 = 800F0000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lbu     t0, 0x0014(t8)             # 00000014
    or      a2, t8, $zero              # a2 = 00000000
    sll     t1, t0,  1
    addu    a1, a1, t1
    lbu     a1, -0x051F(a1)            # 800EFAE1
    bnel    a1, $at, lbl_8004CB84
    addiu   $at, $zero, 0x0004         # $at = 00000004
    jal     func_8004C78C
    lw      a1, 0x0028($sp)
    b       lbl_8004CC9C
    lw      $ra, 0x001C($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_8004CB84:
    bne     a1, $at, lbl_8004CBE8
    lw      t2, 0x0024($sp)
    lw      v0, 0x0000(t2)             # 00000000
    or      a1, a3, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_8004CBD8
    nop
    jal     func_80051124
    or      a1, a3, $zero              # a1 = 00000000
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t3, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1837          # a0 = 00001837
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_8004CC9C
    lw      $ra, 0x001C($sp)
lbl_8004CBD8:
    jal     func_80051270
    addiu   a2, v0, 0x00E4             # a2 = 000000E4
    b       lbl_8004CC9C
    lw      $ra, 0x001C($sp)
lbl_8004CBE8:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beql    a1, $at, lbl_8004CC9C
    lw      $ra, 0x001C($sp)
    jal     func_8001D7A8
    or      a2, a3, $zero              # a2 = 00000000
    lw      t4, 0x0030($sp)
    lw      a0, 0x0024($sp)
    lbu     t5, 0x0016(t4)             # 00000016
    andi    t6, t5, 0x0020             # t6 = 00000000
    bnel    t6, $zero, lbl_8004CC9C
    lw      $ra, 0x001C($sp)
    jal     func_8004C99C
    or      a1, t4, $zero              # a1 = 00000000
    b       lbl_8004CC9C
    lw      $ra, 0x001C($sp)
lbl_8004CC24:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8001D7A8
    or      a2, a3, $zero              # a2 = 00000000
    lw      t9, 0x002C($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lw      v0, 0x0000(t9)             # 00000000
    addiu   a0, $zero, 0x1806          # a0 = 00001806
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bne     v0, $zero, lbl_8004CC84
    addiu   a1, v0, 0x00E4             # a1 = 000000E4
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1806          # a0 = 00001806
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_8004CC9C
    lw      $ra, 0x001C($sp)
lbl_8004CC84:
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    sw      t0, 0x0014($sp)
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lw      $ra, 0x001C($sp)
lbl_8004CC9C:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8004CCA8:
    lbu     t6, 0x0010(a0)             # 00000010
    ori     t7, t6, 0x0004             # t7 = 00000004
    sb      t7, 0x0010(a0)             # 00000010
    lbu     t8, 0x0011(a1)             # 00000011
    ori     t9, t8, 0x0080             # t9 = 00000080
    sb      t9, 0x0011(a1)             # 00000011
    jr      $ra
    nop


func_8004CCC8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    sw      a3, 0x0034($sp)
    lw      a3, 0x0038($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lbu     t6, 0x0011(a3)             # 00000011
    andi    t7, t6, 0x0004             # t7 = 00000000
    beql    t7, $zero, lbl_8004CD28
    lw      v0, 0x003C($sp)
    lw      t8, 0x0000(s0)             # 00000000
    beql    t8, $zero, lbl_8004CD28
    lw      v0, 0x003C($sp)
    lw      t9, 0x0000(a3)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    beql    t9, $zero, lbl_8004CD28
    lw      v0, 0x003C($sp)
    jal     func_8004CCA8
    sw      a2, 0x0030($sp)
    lw      a2, 0x0030($sp)
    lw      a3, 0x0038($sp)
    lw      v0, 0x003C($sp)
lbl_8004CD28:
    or      a1, s0, $zero              # a1 = 00000000
    lbu     t1, 0x0016(v0)             # 00000016
    andi    t2, t1, 0x0008             # t2 = 00000000
    bnel    t2, $zero, lbl_8004CD7C
    lbu     t9, 0x0011(a3)             # 00000011
    lbu     t3, 0x0010(s0)             # 00000010
    ori     t4, t3, 0x0002             # t4 = 00000002
    sb      t4, 0x0010(s0)             # 00000010
    lw      t5, 0x0000(a3)             # 00000000
    sw      t5, 0x0004(s0)             # 00000004
    lbu     t6, 0x0015(a2)             # 00000015
    sw      a3, 0x0018(a2)             # 00000018
    sw      v0, 0x0020(a2)             # 00000020
    ori     t7, t6, 0x0002             # t7 = 00000002
    sb      t7, 0x0015(a2)             # 00000015
    lw      v1, 0x0000(s0)             # 00000000
    beql    v1, $zero, lbl_8004CD7C
    lbu     t9, 0x0011(a3)             # 00000011
    lbu     t8, 0x000C(v0)             # 0000000C
    sb      t8, 0x00B2(v1)             # 000000B2
    lbu     t9, 0x0011(a3)             # 00000011
lbl_8004CD7C:
    ori     t1, t9, 0x0002             # t1 = 00000002
    sb      t1, 0x0011(a3)             # 00000011
    lw      t2, 0x0000(s0)             # 00000000
    sw      t2, 0x0008(a3)             # 00000008
    lbu     t3, 0x0016(v0)             # 00000016
    sw      s0, 0x001C(v0)             # 0000001C
    sw      a2, 0x0024(v0)             # 00000024
    ori     t4, t3, 0x0002             # t4 = 00000002
    sb      t4, 0x0016(v0)             # 00000016
    lw      v1, 0x0000(a3)             # 00000000
    beql    v1, $zero, lbl_8004CDB8
    lw      t0, 0x0044($sp)
    lbu     t5, 0x0004(a2)             # 00000004
    sb      t5, 0x00B3(v1)             # 000000B3
    lw      t0, 0x0044($sp)
lbl_8004CDB8:
    lwc1    $f4, 0x0000(t0)            # 00000000
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x000E(v0)             # 0000000E
    lwc1    $f8, 0x0004(t0)            # 00000004
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x0010(v0)             # 00000010
    lwc1    $f16, 0x0008(t0)           # 00000008
    trunc.w.s $f18, $f16
    mfc1    t2, $f18
    nop
    sh      t2, 0x0012(v0)             # 00000012
    lbu     t3, 0x0015(a2)             # 00000015
    lw      a0, 0x0028($sp)
    andi    t4, t3, 0x0020             # t4 = 00000000
    bnel    t4, $zero, lbl_8004CE3C
    sw      v0, 0x0010($sp)
    lbu     v1, 0x0014(a3)             # 00000014
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v1, $at, lbl_8004CE38
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     v1, $at, lbl_8004CE38
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beql    v1, $at, lbl_8004CE3C
    sw      v0, 0x0010($sp)
    lbu     t5, 0x0016(v0)             # 00000016
    ori     t6, t5, 0x0080             # t6 = 00000080
    b       lbl_8004CE58
    sb      t6, 0x0016(v0)             # 00000016
lbl_8004CE38:
    sw      v0, 0x0010($sp)
lbl_8004CE3C:
    sw      t0, 0x0014($sp)
    jal     func_8004CAA8
    sw      a2, 0x0030($sp)
    lw      a2, 0x0030($sp)
    lbu     t7, 0x0015(a2)             # 00000015
    ori     t8, t7, 0x0040             # t8 = 00000040
    sb      t8, 0x0015(a2)             # 00000015
lbl_8004CE58:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8004CE70:
# Attack colAT type 0 into colAC type 0 collision
# A0 = Global Context
# A1 = colAT ptr
# A2 = CollisionBody* colAT_Element
# A3 = CollisionBody* colAC_Element
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      s5, 0x0044($sp)
    or      s5, a3, $zero              # s5 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a0, 0x00A0($sp)
    sw      a1, 0x00A4($sp)
    sw      a2, 0x009C($sp)
    lw      v1, 0x0018(a2)             # 00000018
    or      s6, s5, $zero              # s6 = 00000000
    blezl   v1, lbl_8004D0EC
    lw      $ra, 0x0054($sp)
    lw      v0, 0x001C(a2)             # 0000001C
    beql    v0, $zero, lbl_8004D0EC
    lw      $ra, 0x0054($sp)
    lw      t6, 0x0018(s5)             # 00000018
    blezl   t6, lbl_8004D0EC
    lw      $ra, 0x0054($sp)
    lw      t7, 0x001C(s5)             # 0000001C
    sll     t8, v1,  6
    addu    t9, v0, t8
    beq     t7, $zero, lbl_8004D0E8
    sltu    $at, v0, t9
    beq     $at, $zero, lbl_8004D0E8
    or      s1, v0, $zero              # s1 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f20, 0x7288($at)          # 80107288
    sw      a2, 0x00A8($sp)
    addiu   s8, $sp, 0x0088            # s8 = FFFFFFE8
    addiu   s7, $sp, 0x008C            # s7 = FFFFFFEC
    addiu   s4, $sp, 0x0078            # s4 = FFFFFFD8
    addiu   s3, $sp, 0x006C            # s3 = FFFFFFCC
    addiu   s2, $zero, 0x0001          # s2 = 00000001
lbl_8004CF14:
    jal     func_8004C3AC
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, s2, lbl_8004D0C8
    lw      v0, 0x009C($sp)
    lw      t0, 0x0018(s5)             # 00000018
    lw      s0, 0x001C(s5)             # 0000001C
    sll     t1, t0,  6
    addu    t2, s0, t1
    sltu    $at, s0, t2
    beql    $at, $zero, lbl_8004D0C8
    lw      v0, 0x009C($sp)
lbl_8004CF40:
    jal     func_8004C3D0
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s2, lbl_8004D0A4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C3F4
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, s2, lbl_8004D0A4
    addiu   a0, s1, 0x0030             # a0 = 00000030
    addiu   a1, s0, 0x0030             # a1 = 00000030
    or      a2, s7, $zero              # a2 = FFFFFFEC
    jal     func_800A9B48
    or      a3, s8, $zero              # a3 = FFFFFFE8
    bnel    v0, s2, lbl_8004D0A8
    lw      t4, 0x0018(s6)             # 00000018
    lh      t3, 0x0030(s1)             # 00000030
    or      a0, s4, $zero              # a0 = FFFFFFD8
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x006C($sp)
    lh      t4, 0x0032(s1)             # 00000032
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0070($sp)
    lh      t5, 0x0034(s1)             # 00000034
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0074($sp)
    lh      t6, 0x0030(s0)             # 00000030
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    lwc1    $f4, 0x0088($sp)
    abs.s   $f0, $f4
    swc1    $f6, 0x0060($sp)
    lh      t7, 0x0032(s0)             # 00000032
    c.lt.s  $f0, $f20
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0064($sp)
    lh      t8, 0x0034(s0)             # 00000034
    lwc1    $f10, 0x006C($sp)
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    lwc1    $f16, 0x0060($sp)
    bc1t    lbl_8004D064
    swc1    $f18, 0x0068($sp)
    lh      t9, 0x0036(s0)             # 00000036
    sub.s   $f18, $f10, $f16
    lwc1    $f10, 0x0064($sp)
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    div.s   $f0, $f8, $f4
    lwc1    $f4, 0x0070($sp)
    mul.s   $f6, $f18, $f0
    sub.s   $f18, $f4, $f10
    lwc1    $f4, 0x0068($sp)
    add.s   $f8, $f6, $f16
    mul.s   $f6, $f18, $f0
    swc1    $f8, 0x0078($sp)
    lwc1    $f8, 0x0074($sp)
    sub.s   $f18, $f8, $f4
    add.s   $f16, $f6, $f10
    mul.s   $f6, $f18, $f0
    swc1    $f16, 0x007C($sp)
    add.s   $f10, $f6, $f4
    b       lbl_8004D06C
    swc1    $f10, 0x0080($sp)
lbl_8004D064:
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, s3, $zero              # a1 = FFFFFFCC
lbl_8004D06C:
    addiu   t0, $sp, 0x0060            # t0 = FFFFFFC0
    sw      t0, 0x0018($sp)
    lw      a0, 0x00A0($sp)
    lw      a1, 0x00A8($sp)
    or      a2, s1, $zero              # a2 = 00000000
    or      a3, s3, $zero              # a3 = FFFFFFCC
    sw      s5, 0x0010($sp)
    sw      s0, 0x0014($sp)
    jal     func_8004CCC8
    sw      s4, 0x001C($sp)
    lbu     t1, 0x0013(s5)             # 00000013
    andi    t2, t1, 0x0040             # t2 = 00000000
    beql    t2, $zero, lbl_8004D0EC
    lw      $ra, 0x0054($sp)
lbl_8004D0A4:
    lw      t4, 0x0018(s6)             # 00000018
lbl_8004D0A8:
    lw      t3, 0x001C(s6)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sll     t5, t4,  6
    addu    t6, t3, t5
    sltu    $at, s0, t6
    bne     $at, $zero, lbl_8004CF40
    nop
    lw      v0, 0x009C($sp)
lbl_8004D0C8:
    addiu   s1, s1, 0x0040             # s1 = 00000040
    lw      t8, 0x0018(v0)             # 00000018
    lw      t7, 0x001C(v0)             # 0000001C
    sll     t9, t8,  6
    addu    t0, t7, t9
    sltu    $at, s1, t0
    bne     $at, $zero, lbl_8004CF14
    nop
lbl_8004D0E8:
    lw      $ra, 0x0054($sp)
lbl_8004D0EC:
    ldc1    $f20, 0x0028($sp)
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
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_8004D11C:
# Attack colAT type 0 into colAC type 1 collision
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s2, 0x0030($sp)
    or      s2, a3, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0090($sp)
    sw      a1, 0x0094($sp)
    lw      t6, 0x0018(a2)             # 00000018
    or      s3, a2, $zero              # s3 = 00000000
    blezl   t6, lbl_8004D344
    lw      $ra, 0x0044($sp)
    lw      t7, 0x001C(a2)             # 0000001C
    beql    t7, $zero, lbl_8004D344
    lw      $ra, 0x0044($sp)
    lh      t8, 0x0040(s2)             # 00000040
    blezl   t8, lbl_8004D344
    lw      $ra, 0x0044($sp)
    lh      t9, 0x0042(s2)             # 00000042
    addiu   s6, s2, 0x0018             # s6 = 00000018
    or      a0, s6, $zero              # a0 = 00000018
    blezl   t9, lbl_8004D344
    lw      $ra, 0x0044($sp)
    jal     func_8004C3D0
    sw      a2, 0x0098($sp)
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    beq     v0, s1, lbl_8004D340
    lw      v1, 0x0098($sp)
    lw      t0, 0x0018(v1)             # 00000018
    lw      s0, 0x001C(v1)             # 0000001C
    addiu   s5, $sp, 0x007C            # s5 = FFFFFFEC
    sll     t1, t0,  6
    addu    t2, s0, t1
    sltu    $at, s0, t2
    beq     $at, $zero, lbl_8004D340
    addiu   s4, $sp, 0x0080            # s4 = FFFFFFF0
lbl_8004D1BC:
    jal     func_8004C3AC
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s1, lbl_8004D320
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004C3F4
    or      a1, s6, $zero              # a1 = 00000018
    beq     v0, s1, lbl_8004D320
    addiu   a0, s0, 0x0030             # a0 = 00000030
    addiu   a1, s2, 0x0040             # a1 = 00000040
    or      a2, s4, $zero              # a2 = FFFFFFF0
    jal     func_800A9C40
    or      a3, s5, $zero              # a3 = FFFFFFEC
    beql    v0, $zero, lbl_8004D324
    lw      t3, 0x0018(s3)             # 00000018
    lh      t3, 0x0030(s0)             # 00000030
    lui     $at, 0x8010                # $at = 80100000
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFE0
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0064($sp)
    lh      t4, 0x0032(s0)             # 00000032
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0068($sp)
    lh      t5, 0x0034(s0)             # 00000034
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x006C($sp)
    lh      t6, 0x0046(s2)             # 00000046
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    lwc1    $f4, 0x007C($sp)
    abs.s   $f0, $f4
    swc1    $f6, 0x0058($sp)
    lh      t7, 0x0048(s2)             # 00000048
    lwc1    $f6, 0x728C($at)           # 8010728C
    mtc1    t7, $f8                    # $f8 = 0.00
    c.lt.s  $f0, $f6
    cvt.s.w $f10, $f8
    swc1    $f10, 0x005C($sp)
    lh      t8, 0x004A(s2)             # 0000004A
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    lwc1    $f16, 0x0064($sp)
    bc1t    lbl_8004D2E4
    swc1    $f18, 0x0060($sp)
    lh      t9, 0x0040(s2)             # 00000040
    lwc1    $f18, 0x0058($sp)
    mtc1    t9, $f8                    # $f8 = 0.00
    sub.s   $f6, $f16, $f18
    lwc1    $f16, 0x005C($sp)
    cvt.s.w $f10, $f8
    div.s   $f0, $f10, $f4
    lwc1    $f4, 0x0068($sp)
    mul.s   $f8, $f6, $f0
    sub.s   $f6, $f4, $f16
    lwc1    $f4, 0x0060($sp)
    add.s   $f10, $f8, $f18
    mul.s   $f8, $f6, $f0
    swc1    $f10, 0x0070($sp)
    lwc1    $f10, 0x006C($sp)
    sub.s   $f6, $f10, $f4
    add.s   $f18, $f8, $f16
    mul.s   $f8, $f6, $f0
    swc1    $f18, 0x0074($sp)
    add.s   $f16, $f8, $f4
    swc1    $f16, 0x0078($sp)
    b       lbl_8004D2F0
    addiu   t0, $sp, 0x0058            # t0 = FFFFFFC8
lbl_8004D2E4:
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFD4
    addiu   t0, $sp, 0x0058            # t0 = FFFFFFC8
lbl_8004D2F0:
    addiu   t1, $sp, 0x0070            # t1 = FFFFFFE0
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    lw      a0, 0x0090($sp)
    lw      a1, 0x0098($sp)
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $sp, 0x0064            # a3 = FFFFFFD4
    sw      s2, 0x0010($sp)
    jal     func_8004CCC8
    sw      s6, 0x0014($sp)
    b       lbl_8004D344
    lw      $ra, 0x0044($sp)
lbl_8004D320:
    lw      t3, 0x0018(s3)             # 00000018
lbl_8004D324:
    lw      t2, 0x001C(s3)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sll     t4, t3,  6
    addu    t5, t2, t4
    sltu    $at, s0, t5
    bne     $at, $zero, lbl_8004D1BC
    nop
lbl_8004D340:
    lw      $ra, 0x0044($sp)
lbl_8004D344:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_8004D368:
# Attack colAT type 1 into colAC type 0 collision
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      s5, 0x0044($sp)
    sw      s1, 0x0034($sp)
    or      s1, a2, $zero              # s1 = 00000000
    or      s5, a3, $zero              # s5 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a0, 0x00A0($sp)
    sw      a1, 0x00A4($sp)
    lw      t6, 0x0018(s5)             # 00000018
    or      s7, s5, $zero              # s7 = 00000000
    blezl   t6, lbl_8004D5AC
    lw      $ra, 0x0054($sp)
    lw      t7, 0x001C(s5)             # 0000001C
    beql    t7, $zero, lbl_8004D5AC
    lw      $ra, 0x0054($sp)
    lh      t8, 0x0040(s1)             # 00000040
    blezl   t8, lbl_8004D5AC
    lw      $ra, 0x0054($sp)
    lh      t9, 0x0042(s1)             # 00000042
    addiu   s4, s1, 0x0018             # s4 = 00000018
    blezl   t9, lbl_8004D5AC
    lw      $ra, 0x0054($sp)
    jal     func_8004C3AC
    or      a0, s4, $zero              # a0 = 00000018
    addiu   s6, $zero, 0x0001          # s6 = 00000001
    beql    v0, s6, lbl_8004D5AC
    lw      $ra, 0x0054($sp)
    lw      t0, 0x0018(s5)             # 00000018
    lw      s0, 0x001C(s5)             # 0000001C
    addiu   s8, $sp, 0x0094            # s8 = FFFFFFF4
    sll     t1, t0,  6
    addu    t2, s0, t1
    sltu    $at, s0, t2
    beq     $at, $zero, lbl_8004D5A8
    addiu   s3, $sp, 0x0080            # s3 = FFFFFFE0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f20, 0x7290($at)          # 80107290
    addiu   s2, $sp, 0x0074            # s2 = FFFFFFD4
lbl_8004D420:
    jal     func_8004C3D0
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s6, lbl_8004D588
    or      a0, s4, $zero              # a0 = 00000018
    jal     func_8004C3F4
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, s6, lbl_8004D588
    addiu   a0, s0, 0x0030             # a0 = 00000030
    addiu   a1, s1, 0x0040             # a1 = 00000040
    or      a2, s8, $zero              # a2 = FFFFFFF4
    jal     func_800A9C40
    addiu   a3, $sp, 0x0090            # a3 = FFFFFFF0
    beql    v0, $zero, lbl_8004D58C
    lw      t4, 0x0018(s7)             # 00000018
    lh      t3, 0x0046(s1)             # 00000046
    or      a0, s3, $zero              # a0 = FFFFFFE0
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0074($sp)
    lh      t4, 0x0048(s1)             # 00000048
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0078($sp)
    lh      t5, 0x004A(s1)             # 0000004A
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x007C($sp)
    lh      t6, 0x0030(s0)             # 00000030
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    lwc1    $f4, 0x0090($sp)
    abs.s   $f0, $f4
    swc1    $f6, 0x0068($sp)
    lh      t7, 0x0032(s0)             # 00000032
    c.lt.s  $f0, $f20
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x006C($sp)
    lh      t8, 0x0034(s0)             # 00000034
    lwc1    $f10, 0x0074($sp)
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    lwc1    $f16, 0x0068($sp)
    bc1t    lbl_8004D548
    swc1    $f18, 0x0070($sp)
    lh      t9, 0x0036(s0)             # 00000036
    sub.s   $f18, $f10, $f16
    lwc1    $f10, 0x006C($sp)
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    div.s   $f0, $f8, $f4
    lwc1    $f4, 0x0078($sp)
    mul.s   $f6, $f18, $f0
    sub.s   $f18, $f4, $f10
    lwc1    $f4, 0x0070($sp)
    add.s   $f8, $f6, $f16
    mul.s   $f6, $f18, $f0
    swc1    $f8, 0x0080($sp)
    lwc1    $f8, 0x007C($sp)
    sub.s   $f18, $f8, $f4
    add.s   $f16, $f6, $f10
    mul.s   $f6, $f18, $f0
    swc1    $f16, 0x0084($sp)
    add.s   $f10, $f6, $f4
    swc1    $f10, 0x0088($sp)
    b       lbl_8004D554
    addiu   t0, $sp, 0x0068            # t0 = FFFFFFC8
lbl_8004D548:
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, s2, $zero              # a1 = FFFFFFD4
    addiu   t0, $sp, 0x0068            # t0 = FFFFFFC8
lbl_8004D554:
    sw      t0, 0x0018($sp)
    lw      a0, 0x00A0($sp)
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s4, $zero              # a2 = 00000018
    or      a3, s2, $zero              # a3 = FFFFFFD4
    sw      s5, 0x0010($sp)
    sw      s0, 0x0014($sp)
    jal     func_8004CCC8
    sw      s3, 0x001C($sp)
    lbu     t1, 0x0013(s5)             # 00000013
    andi    t2, t1, 0x0040             # t2 = 00000000
    beql    t2, $zero, lbl_8004D5AC
    lw      $ra, 0x0054($sp)
lbl_8004D588:
    lw      t4, 0x0018(s7)             # 00000018
lbl_8004D58C:
    lw      t3, 0x001C(s7)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sll     t5, t4,  6
    addu    t6, t3, t5
    sltu    $at, s0, t6
    bne     $at, $zero, lbl_8004D420
    nop
lbl_8004D5A8:
    lw      $ra, 0x0054($sp)
lbl_8004D5AC:
    ldc1    $f20, 0x0028($sp)
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
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_8004D5DC:
# Attack colAT type 0 into colAC type 2 collision
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s6, 0x003C($sp)
    or      s6, a3, $zero              # s6 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s7, 0x0040($sp)
    sw      s5, 0x0038($sp)
    sw      s4, 0x0034($sp)
    sw      s3, 0x0030($sp)
    sw      s2, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    sw      a0, 0x0088($sp)
    sw      a1, 0x008C($sp)
    lw      v1, 0x0018(a2)             # 00000018
    or      s7, a2, $zero              # s7 = 00000000
    or      s3, s6, $zero              # s3 = 00000000
    blezl   v1, lbl_8004D7D4
    lw      $ra, 0x0044($sp)
    lw      v0, 0x001C(a2)             # 0000001C
    beql    v0, $zero, lbl_8004D7D4
    lw      $ra, 0x0044($sp)
    lw      t6, 0x0018(s6)             # 00000018
    blezl   t6, lbl_8004D7D4
    lw      $ra, 0x0044($sp)
    lw      t7, 0x001C(s6)             # 0000001C
    sll     t8, v1,  6
    addu    t9, v0, t8
    beq     t7, $zero, lbl_8004D7D0
    sltu    $at, v0, t9
    beq     $at, $zero, lbl_8004D7D0
    or      s2, v0, $zero              # s2 = 00000000
    sw      a2, 0x0090($sp)
    addiu   s5, $sp, 0x006C            # s5 = FFFFFFE4
    addiu   s4, $zero, 0x005C          # s4 = 0000005C
    addiu   s1, $zero, 0x0001          # s1 = 00000001
lbl_8004D668:
    jal     func_8004C3AC
    or      a0, s2, $zero              # a0 = 00000000
    beql    v0, s1, lbl_8004D7B4
    lw      t2, 0x0018(s7)             # 00000018
    lw      t0, 0x0018(s6)             # 00000018
    lw      s0, 0x001C(s6)             # 0000001C
    multu   t0, s4
    mflo    t1
    addu    t2, s0, t1
    sltu    $at, s0, t2
    beql    $at, $zero, lbl_8004D7B4
    lw      t2, 0x0018(s7)             # 00000018
lbl_8004D698:
    jal     func_8004C3D0
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s1, lbl_8004D78C
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8004C3F4
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, s1, lbl_8004D78C
    addiu   a0, s2, 0x0030             # a0 = 00000030
    addiu   a1, s0, 0x0028             # a1 = 00000028
    jal     func_800A87C4
    or      a2, s5, $zero              # a2 = FFFFFFE4
    bne     v0, s1, lbl_8004D78C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x7294($at)           # 80107294
    lh      t3, 0x0030(s2)             # 00000030
    addiu   t6, $sp, 0x0054            # t6 = FFFFFFCC
    lw      a0, 0x0088($sp)
    mtc1    t3, $f4                    # $f4 = 0.00
    lw      a1, 0x0090($sp)
    or      a2, s2, $zero              # a2 = 00000000
    cvt.s.w $f6, $f4
    addiu   a3, $sp, 0x0060            # a3 = FFFFFFD8
    swc1    $f6, 0x0060($sp)
    lh      t4, 0x0032(s2)             # 00000032
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0064($sp)
    lh      t5, 0x0034(s2)             # 00000034
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0068($sp)
    lwc1    $f6, 0x0034(s0)            # 00000034
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x0040(s0)           # 00000040
    add.s   $f8, $f4, $f6
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0054($sp)
    lwc1    $f6, 0x0038(s0)            # 00000038
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x0044(s0)            # 00000044
    add.s   $f10, $f4, $f6
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0058($sp)
    lwc1    $f6, 0x003C(s0)            # 0000003C
    lwc1    $f4, 0x0030(s0)            # 00000030
    lwc1    $f10, 0x0048(s0)           # 00000048
    sw      s5, 0x001C($sp)
    add.s   $f8, $f4, $f6
    sw      t6, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      s6, 0x0010($sp)
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f0
    jal     func_8004CCC8
    swc1    $f18, 0x005C($sp)
    b       lbl_8004D7D4
    lw      $ra, 0x0044($sp)
lbl_8004D78C:
    lw      t8, 0x0018(s3)             # 00000018
    lw      t7, 0x001C(s3)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t8, s4
    mflo    t9
    addu    t0, t7, t9
    sltu    $at, s0, t0
    bne     $at, $zero, lbl_8004D698
    nop
    lw      t2, 0x0018(s7)             # 00000018
lbl_8004D7B4:
    lw      t1, 0x001C(s7)             # 0000001C
    addiu   s2, s2, 0x0040             # s2 = 00000040
    sll     t3, t2,  6
    addu    t4, t1, t3
    sltu    $at, s2, t4
    bne     $at, $zero, lbl_8004D668
    nop
lbl_8004D7D0:
    lw      $ra, 0x0044($sp)
lbl_8004D7D4:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    lw      s4, 0x0034($sp)
    lw      s5, 0x0038($sp)
    lw      s6, 0x003C($sp)
    lw      s7, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_8004D7FC:
# Attack colAT type 2 into colAC type 0 collision
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s6, 0x0048($sp)
    or      s6, a3, $zero              # s6 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s7, 0x004C($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a0, 0x0098($sp)
    sw      a1, 0x009C($sp)
    sw      s6, 0x008C($sp)
    lw      v1, 0x0018(s6)             # 00000018
    or      s7, a2, $zero              # s7 = 00000000
    blezl   v1, lbl_8004D9E0
    lw      $ra, 0x0054($sp)
    lw      v0, 0x001C(s6)             # 0000001C
    beql    v0, $zero, lbl_8004D9E0
    lw      $ra, 0x0054($sp)
    lw      t6, 0x0018(a2)             # 00000018
    blezl   t6, lbl_8004D9E0
    lw      $ra, 0x0054($sp)
    lw      t7, 0x001C(a2)             # 0000001C
    sll     t8, v1,  6
    addu    t9, v0, t8
    beq     t7, $zero, lbl_8004D9DC
    sltu    $at, v0, t9
    beq     $at, $zero, lbl_8004D9DC
    or      s2, v0, $zero              # s2 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f20, 0x7298($at)          # 80107298
    sw      a2, 0x00A0($sp)
    addiu   s8, $zero, 0x005C          # s8 = 0000005C
    addiu   s5, $sp, 0x0064            # s5 = FFFFFFCC
    addiu   s4, $sp, 0x007C            # s4 = FFFFFFE4
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_8004D89C:
    jal     func_8004C3D0
    or      a0, s2, $zero              # a0 = 00000000
    beq     v0, s3, lbl_8004D9B8
    lw      t0, 0x00A0($sp)
    lw      t1, 0x0018(t0)             # 00000018
    lw      s0, 0x001C(t0)             # 0000001C
    multu   t1, s8
    mflo    t2
    addu    t3, s0, t2
    sltu    $at, s0, t3
    beql    $at, $zero, lbl_8004D9BC
    lw      v0, 0x008C($sp)
lbl_8004D8CC:
    jal     func_8004C3AC
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s3, lbl_8004D994
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004C3F4
    or      a1, s2, $zero              # a1 = 00000000
    beq     v0, s3, lbl_8004D994
    addiu   s1, s2, 0x0030             # s1 = 00000030
    or      a0, s1, $zero              # a0 = 00000030
    addiu   a1, s0, 0x0028             # a1 = 00000028
    jal     func_800A87C4
    or      a2, s4, $zero              # a2 = FFFFFFE4
    bne     v0, s3, lbl_8004D994
    or      a0, s5, $zero              # a0 = FFFFFFCC
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s1, $zero              # a1 = 00000030
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x0034(s0)            # 00000034
    lwc1    $f10, 0x0040(s0)           # 00000040
    lw      a0, 0x0098($sp)
    add.s   $f8, $f4, $f6
    lw      a1, 0x00A0($sp)
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFD8
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f20
    swc1    $f18, 0x0070($sp)
    lwc1    $f6, 0x0038(s0)            # 00000038
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x0044(s0)            # 00000044
    add.s   $f10, $f4, $f6
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f20
    swc1    $f18, 0x0074($sp)
    lwc1    $f6, 0x003C(s0)            # 0000003C
    lwc1    $f4, 0x0030(s0)            # 00000030
    lwc1    $f10, 0x0048(s0)           # 00000048
    sw      s4, 0x001C($sp)
    add.s   $f8, $f4, $f6
    sw      s5, 0x0018($sp)
    sw      s2, 0x0014($sp)
    sw      s6, 0x0010($sp)
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f20
    jal     func_8004CCC8
    swc1    $f18, 0x0078($sp)
    lbu     t4, 0x0013(s6)             # 00000013
    andi    t5, t4, 0x0040             # t5 = 00000000
    beql    t5, $zero, lbl_8004D9E0
    lw      $ra, 0x0054($sp)
lbl_8004D994:
    lw      t7, 0x0018(s7)             # 00000018
    lw      t6, 0x001C(s7)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t7, s8
    mflo    t8
    addu    t9, t6, t8
    sltu    $at, s0, t9
    bne     $at, $zero, lbl_8004D8CC
    nop
lbl_8004D9B8:
    lw      v0, 0x008C($sp)
lbl_8004D9BC:
    addiu   s2, s2, 0x0040             # s2 = 00000040
    lw      t1, 0x0018(v0)             # 00000018
    lw      t0, 0x001C(v0)             # 0000001C
    sll     t2, t1,  6
    addu    t3, t0, t2
    sltu    $at, s2, t3
    bne     $at, $zero, lbl_8004D89C
    nop
lbl_8004D9DC:
    lw      $ra, 0x0054($sp)
lbl_8004D9E0:
    ldc1    $f20, 0x0028($sp)
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
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_8004DA10:
# Attack colAT type 0 into colAC type 3 collision
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s3, 0x0034($sp)
    or      s3, a3, $zero              # s3 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s8, 0x0048($sp)
    sw      s7, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0090($sp)
    sw      a1, 0x0094($sp)
    lw      t6, 0x0018(a2)             # 00000018
    or      s5, a2, $zero              # s5 = 00000000
    blezl   t6, lbl_8004DC04
    lw      $ra, 0x004C($sp)
    lw      t7, 0x001C(a2)             # 0000001C
    addiu   s6, s3, 0x0018             # s6 = 00000018
    or      a0, s6, $zero              # a0 = 00000018
    beql    t7, $zero, lbl_8004DC04
    lw      $ra, 0x004C($sp)
    jal     func_8004C3D0
    sw      a2, 0x0098($sp)
    addiu   s2, $zero, 0x0001          # s2 = 00000001
    beq     v0, s2, lbl_8004DC00
    lui     s7, 0x8012                 # s7 = 80120000
    addiu   s7, s7, 0x8E90             # s7 = 80118E90
    addiu   s1, s3, 0x0058             # s1 = 00000058
    addiu   s0, s3, 0x004C             # s0 = 0000004C
    or      a3, s0, $zero              # a3 = 0000004C
    or      a1, s1, $zero              # a1 = 00000058
    or      a0, s7, $zero              # a0 = 80118E90
    jal     func_800A8234
    addiu   a2, s3, 0x0064             # a2 = 00000064
    lui     s8, 0x8012                 # s8 = 80120000
    addiu   s8, s8, 0x8EC8             # s8 = 80118EC8
    or      a0, s8, $zero              # a0 = 80118EC8
    or      a1, s0, $zero              # a1 = 0000004C
    addiu   a2, s3, 0x0040             # a2 = 00000040
    jal     func_800A8234
    or      a3, s1, $zero              # a3 = 00000058
    lw      v1, 0x0098($sp)
    addiu   s4, $sp, 0x007C            # s4 = FFFFFFEC
    lw      t8, 0x0018(v1)             # 00000018
    lw      s0, 0x001C(v1)             # 0000001C
    sll     t9, t8,  6
    addu    t0, s0, t9
    sltu    $at, s0, t0
    beql    $at, $zero, lbl_8004DC04
    lw      $ra, 0x004C($sp)
lbl_8004DAE0:
    jal     func_8004C3AC
    or      a0, s0, $zero              # a0 = 0000004C
    beq     v0, s2, lbl_8004DBE0
    or      a0, s0, $zero              # a0 = 0000004C
    jal     func_8004C3F4
    or      a1, s6, $zero              # a1 = 00000018
    beq     v0, s2, lbl_8004DBE0
    addiu   s1, s0, 0x0030             # s1 = 0000007C
    or      a0, s1, $zero              # a0 = 0000007C
    or      a1, s7, $zero              # a1 = 80118E90
    jal     func_800A87C4
    or      a2, s4, $zero              # a2 = FFFFFFEC
    beq     v0, s2, lbl_8004DB2C
    or      a0, s1, $zero              # a0 = 0000007C
    or      a1, s8, $zero              # a1 = 80118EC8
    jal     func_800A87C4
    or      a2, s4, $zero              # a2 = FFFFFFEC
    bnel    v0, s2, lbl_8004DBE4
    lw      t3, 0x0018(s5)             # 00000018
lbl_8004DB2C:
    addiu   s2, $sp, 0x006C            # s2 = FFFFFFDC
    or      a0, s2, $zero              # a0 = FFFFFFDC
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s1, $zero              # a1 = 0000007C
    lwc1    $f4, 0x0058(s3)            # 00000058
    lwc1    $f6, 0x0064(s3)            # 00000064
    lwc1    $f10, 0x004C(s3)           # 0000004C
    lwc1    $f18, 0x0040(s3)           # 00000040
    add.s   $f8, $f4, $f6
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f0                   # $f0 = 0.25
    addiu   t1, $sp, 0x0060            # t1 = FFFFFFD0
    add.s   $f16, $f8, $f10
    lw      a0, 0x0090($sp)
    lw      a1, 0x0098($sp)
    or      a2, s0, $zero              # a2 = 0000004C
    add.s   $f4, $f16, $f18
    or      a3, s2, $zero              # a3 = FFFFFFDC
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x0060($sp)
    lwc1    $f10, 0x0068(s3)           # 00000068
    lwc1    $f8, 0x005C(s3)            # 0000005C
    lwc1    $f18, 0x0050(s3)           # 00000050
    lwc1    $f6, 0x0044(s3)            # 00000044
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x0064($sp)
    lwc1    $f18, 0x006C(s3)           # 0000006C
    lwc1    $f16, 0x0060(s3)           # 00000060
    lwc1    $f6, 0x0054(s3)            # 00000054
    lwc1    $f10, 0x0048(s3)           # 00000048
    add.s   $f4, $f16, $f18
    sw      s4, 0x001C($sp)
    sw      t1, 0x0018($sp)
    sw      s6, 0x0014($sp)
    add.s   $f8, $f4, $f6
    sw      s3, 0x0010($sp)
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    jal     func_8004CCC8
    swc1    $f18, 0x0068($sp)
    b       lbl_8004DC04
    lw      $ra, 0x004C($sp)
lbl_8004DBE0:
    lw      t3, 0x0018(s5)             # 00000018
lbl_8004DBE4:
    lw      t2, 0x001C(s5)             # 0000001C
    addiu   s0, s0, 0x0040             # s0 = 0000008C
    sll     t4, t3,  6
    addu    t5, t2, t4
    sltu    $at, s0, t5
    bne     $at, $zero, lbl_8004DAE0
    nop
lbl_8004DC00:
    lw      $ra, 0x004C($sp)
lbl_8004DC04:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    lw      s7, 0x0044($sp)
    lw      s8, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_8004DC30:
# Attack colAT type 3 into colAC type 0 collision
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s8, 0x0050($sp)
    sw      s6, 0x0048($sp)
    sw      s0, 0x0030($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s6, a3, $zero              # s6 = 00000000
    or      s8, a0, $zero              # s8 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s7, 0x004C($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a1, 0x009C($sp)
    lw      t6, 0x0018(s6)             # 00000018
    or      s7, s6, $zero              # s7 = 00000000
    blezl   t6, lbl_8004DE64
    lw      $ra, 0x0054($sp)
    lw      t7, 0x001C(s6)             # 0000001C
    addiu   s5, s0, 0x0018             # s5 = 00000018
    beql    t7, $zero, lbl_8004DE64
    lw      $ra, 0x0054($sp)
    jal     func_8004C3AC
    or      a0, s5, $zero              # a0 = 00000018
    addiu   s4, $zero, 0x0001          # s4 = 00000001
    beq     v0, s4, lbl_8004DE60
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   s1, s0, 0x0058             # s1 = 00000058
    addiu   s2, s0, 0x004C             # s2 = 0000004C
    or      a3, s2, $zero              # a3 = 0000004C
    or      a1, s1, $zero              # a1 = 00000058
    addiu   a0, a0, 0x8F00             # a0 = 80118F00
    jal     func_800A8234
    addiu   a2, s0, 0x0064             # a2 = 00000064
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x8F38             # a0 = 80118F38
    or      a1, s1, $zero              # a1 = 00000058
    or      a2, s2, $zero              # a2 = 0000004C
    jal     func_800A8234
    addiu   a3, s0, 0x0040             # a3 = 00000040
    lw      t8, 0x0018(s6)             # 00000018
    lw      s1, 0x001C(s6)             # 0000001C
    sll     t9, t8,  6
    addu    t0, s1, t9
    sltu    $at, s1, t0
    beq     $at, $zero, lbl_8004DE60
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f20                  # $f20 = 0.25
    addiu   s3, $sp, 0x0088            # s3 = FFFFFFF0
lbl_8004DCFC:
    jal     func_8004C3D0
    or      a0, s1, $zero              # a0 = 00000058
    beq     v0, s4, lbl_8004DE40
    or      a0, s5, $zero              # a0 = 00000018
    jal     func_8004C3F4
    or      a1, s1, $zero              # a1 = 00000058
    beq     v0, s4, lbl_8004DE40
    addiu   s2, s1, 0x0030             # s2 = 00000088
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x8F00             # a1 = 80118F00
    or      a0, s2, $zero              # a0 = 00000088
    jal     func_800A87C4
    or      a2, s3, $zero              # a2 = FFFFFFF0
    beq     v0, s4, lbl_8004DD4C
    or      a0, s2, $zero              # a0 = 00000088
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x8F38             # a1 = 80118F38
    jal     func_800A87C4
    or      a2, s3, $zero              # a2 = FFFFFFF0
    bne     v0, s4, lbl_8004DE40
lbl_8004DD4C:
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004BA98
    or      a2, s3, $zero              # a2 = FFFFFFF0
    beql    v0, $zero, lbl_8004DE44
    lw      t8, 0x0018(s7)             # 00000018
    lh      t1, 0x0030(s1)             # 00000088
    addiu   t4, $sp, 0x0068            # t4 = FFFFFFD0
    or      a0, s8, $zero              # a0 = 00000000
    mtc1    t1, $f4                    # $f4 = 0.00
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s5, $zero              # a2 = 00000018
    cvt.s.w $f6, $f4
    addiu   a3, $sp, 0x0074            # a3 = FFFFFFDC
    swc1    $f6, 0x0068($sp)
    lh      t2, 0x0032(s1)             # 0000008A
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x006C($sp)
    lh      t3, 0x0034(s1)             # 0000008C
    mtc1    t3, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0070($sp)
    lwc1    $f6, 0x0064(s0)            # 00000064
    lwc1    $f4, 0x0058(s0)            # 00000058
    lwc1    $f10, 0x004C(s0)           # 0000004C
    lwc1    $f18, 0x0040(s0)           # 00000040
    add.s   $f8, $f4, $f6
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    mul.s   $f6, $f4, $f20
    swc1    $f6, 0x0074($sp)
    lwc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f8, 0x005C(s0)            # 0000005C
    lwc1    $f18, 0x0050(s0)           # 00000050
    lwc1    $f6, 0x0044(s0)            # 00000044
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f20
    swc1    $f10, 0x0078($sp)
    lwc1    $f18, 0x006C(s0)           # 0000006C
    lwc1    $f16, 0x0060(s0)           # 00000060
    lwc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f10, 0x0048(s0)           # 00000048
    add.s   $f4, $f16, $f18
    sw      s3, 0x001C($sp)
    sw      t4, 0x0018($sp)
    sw      s1, 0x0014($sp)
    add.s   $f8, $f4, $f6
    sw      s6, 0x0010($sp)
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f20
    jal     func_8004CCC8
    swc1    $f18, 0x007C($sp)
    lbu     t5, 0x0013(s6)             # 00000013
    andi    t6, t5, 0x0040             # t6 = 00000000
    beql    t6, $zero, lbl_8004DE64
    lw      $ra, 0x0054($sp)
lbl_8004DE40:
    lw      t8, 0x0018(s7)             # 00000018
lbl_8004DE44:
    lw      t7, 0x001C(s7)             # 0000001C
    addiu   s1, s1, 0x0040             # s1 = 00000098
    sll     t9, t8,  6
    addu    t0, t7, t9
    sltu    $at, s1, t0
    bne     $at, $zero, lbl_8004DCFC
    nop
lbl_8004DE60:
    lw      $ra, 0x0054($sp)
lbl_8004DE64:
    ldc1    $f20, 0x0028($sp)
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
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_8004DE94:
# Attack colAT type 1 into colAC type 1 collision
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a3, $zero              # s0 = 00000000
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0078($sp)
    sw      a1, 0x007C($sp)
    lh      t6, 0x0040(s1)             # 00000040
    blezl   t6, lbl_8004E058
    lw      $ra, 0x002C($sp)
    lh      t7, 0x0042(s1)             # 00000042
    blezl   t7, lbl_8004E058
    lw      $ra, 0x002C($sp)
    lh      t8, 0x0040(s0)             # 00000040
    blezl   t8, lbl_8004E058
    lw      $ra, 0x002C($sp)
    lh      t9, 0x0042(s0)             # 00000042
    addiu   a0, s0, 0x0018             # a0 = 00000018
    blezl   t9, lbl_8004E058
    lw      $ra, 0x002C($sp)
    jal     func_8004C3D0
    sw      a0, 0x0034($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8004E054
    addiu   a0, s1, 0x0018             # a0 = 00000018
    jal     func_8004C3AC
    sw      a0, 0x0038($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8004E054
    lw      a0, 0x0038($sp)
    jal     func_8004C3F4
    lw      a1, 0x0034($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8004E054
    addiu   a0, s1, 0x0040             # a0 = 00000040
    addiu   a1, s0, 0x0040             # a1 = 00000040
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFF4
    jal     func_800A9DD0
    addiu   a3, $sp, 0x0068            # a3 = FFFFFFF0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8004E054
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFD8
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   a1, s1, 0x0046             # a1 = 00000046
    addiu   a1, s0, 0x0046             # a1 = 00000046
    sw      a1, 0x003C($sp)
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFCC
    lwc1    $f4, 0x0068($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x729C($at)           # 8010729C
    abs.s   $f0, $f4
    lw      a1, 0x003C($sp)
    c.lt.s  $f0, $f6
    nop
    bc1t    lbl_8004E01C
    nop
    lh      t0, 0x0040(s0)             # 00000040
    lh      t1, 0x0048(s0)             # 00000048
    lh      t2, 0x0044(s0)             # 00000044
    mtc1    t0, $f8                    # $f8 = 0.00
    lh      t3, 0x0042(s0)             # 00000042
    mtc1    t1, $f16                   # $f16 = 0.00
    cvt.s.w $f10, $f8
    mtc1    t2, $f6                    # $f6 = 0.00
    lui     $at, 0x3F00                # $at = 3F000000
    cvt.s.w $f18, $f16
    div.s   $f0, $f10, $f4
    mtc1    t3, $f4                    # $f4 = 0.00
    cvt.s.w $f8, $f6
    mtc1    $at, $f6                   # $f6 = 0.50
    cvt.s.w $f16, $f4
    add.s   $f10, $f18, $f8
    mul.s   $f18, $f16, $f6
    add.s   $f8, $f10, $f18
    swc1    $f8, 0x0060($sp)
    lh      t5, 0x0046(s1)             # 00000046
    lh      t4, 0x0046(s0)             # 00000046
    mtc1    t5, $f16                   # $f16 = 0.00
    mtc1    t4, $f4                    # $f4 = 0.00
    cvt.s.w $f6, $f16
    cvt.s.w $f2, $f4
    sub.s   $f10, $f6, $f2
    mul.s   $f18, $f10, $f0
    add.s   $f8, $f18, $f2
    swc1    $f8, 0x005C($sp)
    lh      t7, 0x004A(s1)             # 0000004A
    lh      t6, 0x004A(s0)             # 0000004A
    mtc1    t7, $f16                   # $f16 = 0.00
    mtc1    t6, $f4                    # $f4 = 0.00
    cvt.s.w $f6, $f16
    cvt.s.w $f12, $f4
    sub.s   $f10, $f6, $f12
    mul.s   $f18, $f10, $f0
    add.s   $f8, $f18, $f12
    b       lbl_8004E024
    swc1    $f8, 0x0064($sp)
lbl_8004E01C:
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFE4
lbl_8004E024:
    lw      t8, 0x0034($sp)
    addiu   t9, $sp, 0x0044            # t9 = FFFFFFCC
    addiu   t0, $sp, 0x005C            # t0 = FFFFFFE4
    sw      t0, 0x001C($sp)
    sw      t9, 0x0018($sp)
    lw      a0, 0x0078($sp)
    or      a1, s1, $zero              # a1 = 00000000
    lw      a2, 0x0038($sp)
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFD8
    sw      s0, 0x0010($sp)
    jal     func_8004CCC8
    sw      t8, 0x0014($sp)
lbl_8004E054:
    lw      $ra, 0x002C($sp)
lbl_8004E058:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_8004E068:
# Attack colAT type 1 into colAC type 2 collision
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s2, 0x0030($sp)
    or      s2, a2, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0080($sp)
    sw      a1, 0x0084($sp)
    lh      t6, 0x0040(s2)             # 00000040
    or      s3, a3, $zero              # s3 = 00000000
    blezl   t6, lbl_8004E208
    lw      $ra, 0x0044($sp)
    lh      t7, 0x0042(s2)             # 00000042
    blezl   t7, lbl_8004E208
    lw      $ra, 0x0044($sp)
    lw      t8, 0x0018(a3)             # 00000018
    blezl   t8, lbl_8004E208
    lw      $ra, 0x0044($sp)
    lw      t9, 0x001C(a3)             # 0000001C
    addiu   s5, s2, 0x0018             # s5 = 00000018
    or      a0, s5, $zero              # a0 = 00000018
    beql    t9, $zero, lbl_8004E208
    lw      $ra, 0x0044($sp)
    jal     func_8004C3AC
    sw      a3, 0x008C($sp)
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    beq     v0, s1, lbl_8004E204
    lw      v1, 0x008C($sp)
    lw      t0, 0x0018(v1)             # 00000018
    addiu   s6, $zero, 0x005C          # s6 = 0000005C
    lw      s0, 0x001C(v1)             # 0000001C
    multu   t0, s6
    addiu   s4, $sp, 0x0068            # s4 = FFFFFFE8
    mflo    t1
    addu    t2, s0, t1
    sltu    $at, s0, t2
    beql    $at, $zero, lbl_8004E208
    lw      $ra, 0x0044($sp)
lbl_8004E110:
    jal     func_8004C3D0
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s1, lbl_8004E1E0
    or      a0, s5, $zero              # a0 = 00000018
    jal     func_8004C3F4
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, s1, lbl_8004E1E0
    addiu   a0, s2, 0x0040             # a0 = 00000040
    addiu   a1, s0, 0x0028             # a1 = 00000028
    jal     func_800A9668
    or      a2, s4, $zero              # a2 = FFFFFFE8
    bne     v0, s1, lbl_8004E1E0
    addiu   a1, s2, 0x0046             # a1 = 00000046
    addiu   s1, $sp, 0x005C            # s1 = FFFFFFDC
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a0, s1, $zero              # a0 = FFFFFFDC
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x0034(s0)            # 00000034
    lwc1    $f10, 0x0040(s0)           # 00000040
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f8, $f4, $f6
    lwc1    $f0, 0x72A0($at)           # 801072A0
    lw      t3, 0x008C($sp)
    addiu   t4, $sp, 0x0050            # t4 = FFFFFFD0
    add.s   $f16, $f10, $f8
    lw      a0, 0x0080($sp)
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s5, $zero              # a2 = 00000018
    mul.s   $f18, $f16, $f0
    or      a3, s1, $zero              # a3 = FFFFFFDC
    swc1    $f18, 0x0050($sp)
    lwc1    $f6, 0x0038(s0)            # 00000038
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x0044(s0)            # 00000044
    add.s   $f10, $f4, $f6
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0054($sp)
    lwc1    $f6, 0x003C(s0)            # 0000003C
    lwc1    $f4, 0x0030(s0)            # 00000030
    lwc1    $f10, 0x0048(s0)           # 00000048
    sw      s4, 0x001C($sp)
    add.s   $f8, $f4, $f6
    sw      t4, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      t3, 0x0010($sp)
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f0
    jal     func_8004CCC8
    swc1    $f18, 0x0058($sp)
    b       lbl_8004E208
    lw      $ra, 0x0044($sp)
lbl_8004E1E0:
    lw      t6, 0x0018(s3)             # 00000018
    lw      t5, 0x001C(s3)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t6, s6
    mflo    t7
    addu    t8, t5, t7
    sltu    $at, s0, t8
    bne     $at, $zero, lbl_8004E110
    nop
lbl_8004E204:
    lw      $ra, 0x0044($sp)
lbl_8004E208:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_8004E22C:
# Attack colAT type 2 into colAC type 1 collision
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s2, 0x0030($sp)
    or      s2, a3, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0078($sp)
    sw      a1, 0x007C($sp)
    lh      t6, 0x0040(s2)             # 00000040
    or      s3, a2, $zero              # s3 = 00000000
    blezl   t6, lbl_8004E3C8
    lw      $ra, 0x0044($sp)
    lh      t7, 0x0042(s2)             # 00000042
    blezl   t7, lbl_8004E3C8
    lw      $ra, 0x0044($sp)
    lw      t8, 0x0018(a2)             # 00000018
    blezl   t8, lbl_8004E3C8
    lw      $ra, 0x0044($sp)
    lw      t9, 0x001C(a2)             # 0000001C
    addiu   s5, s2, 0x0018             # s5 = 00000018
    or      a0, s5, $zero              # a0 = 00000018
    beql    t9, $zero, lbl_8004E3C8
    lw      $ra, 0x0044($sp)
    jal     func_8004C3D0
    sw      a2, 0x0080($sp)
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    beq     v0, s1, lbl_8004E3C4
    lw      v1, 0x0080($sp)
    lw      t0, 0x0018(v1)             # 00000018
    addiu   s6, $zero, 0x005C          # s6 = 0000005C
    lw      s0, 0x001C(v1)             # 0000001C
    multu   t0, s6
    lui     s4, 0x8012                 # s4 = 80120000
    addiu   s4, s4, 0x9458             # s4 = 80119458
    mflo    t1
    addu    t2, s0, t1
    sltu    $at, s0, t2
    beql    $at, $zero, lbl_8004E3C8
    lw      $ra, 0x0044($sp)
lbl_8004E2D8:
    jal     func_8004C3AC
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s1, lbl_8004E3A0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004C3F4
    or      a1, s5, $zero              # a1 = 00000018
    beq     v0, s1, lbl_8004E3A0
    addiu   a0, s2, 0x0040             # a0 = 00000040
    addiu   a1, s0, 0x0028             # a1 = 00000028
    jal     func_800A9668
    or      a2, s4, $zero              # a2 = 80119458
    bne     v0, s1, lbl_8004E3A0
    lui     $at, 0x8010                # $at = 80100000
    addiu   s1, $sp, 0x0054            # s1 = FFFFFFDC
    lwc1    $f0, 0x72A4($at)           # 801072A4
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x0034(s0)            # 00000034
    lwc1    $f10, 0x0040(s0)           # 00000040
    or      a0, s1, $zero              # a0 = FFFFFFDC
    add.s   $f8, $f4, $f6
    addiu   a1, s2, 0x0046             # a1 = 00000046
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0060($sp)
    lwc1    $f6, 0x0038(s0)            # 00000038
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x0044(s0)            # 00000044
    add.s   $f10, $f4, $f6
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0064($sp)
    lwc1    $f6, 0x003C(s0)            # 0000003C
    lwc1    $f4, 0x0030(s0)            # 00000030
    lwc1    $f10, 0x0048(s0)           # 00000048
    add.s   $f8, $f4, $f6
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f0
    jal     func_80063CCC              # Vec3f_CopyVec3s
    swc1    $f18, 0x0068($sp)
    lw      a0, 0x0078($sp)
    lw      a1, 0x0080($sp)
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $sp, 0x0060            # a3 = FFFFFFE8
    sw      s2, 0x0010($sp)
    sw      s5, 0x0014($sp)
    sw      s1, 0x0018($sp)
    jal     func_8004CCC8
    sw      s4, 0x001C($sp)
    b       lbl_8004E3C8
    lw      $ra, 0x0044($sp)
lbl_8004E3A0:
    lw      t4, 0x0018(s3)             # 00000018
    lw      t3, 0x001C(s3)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t4, s6
    mflo    t5
    addu    t6, t3, t5
    sltu    $at, s0, t6
    bne     $at, $zero, lbl_8004E2D8
    nop
lbl_8004E3C4:
    lw      $ra, 0x0044($sp)
lbl_8004E3C8:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_8004E3EC:
# Attack colAT type 1 into colAC type 3 collision
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a3, $zero              # s0 = 00000000
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0078($sp)
    sw      a1, 0x007C($sp)
    lh      t6, 0x0042(s1)             # 00000042
    blezl   t6, lbl_8004E650
    lw      $ra, 0x002C($sp)
    lh      t7, 0x0040(s1)             # 00000040
    addiu   a0, s1, 0x0018             # a0 = 00000018
    blezl   t7, lbl_8004E650
    lw      $ra, 0x002C($sp)
    jal     func_8004C3AC
    sw      a0, 0x003C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8004E64C
    addiu   a0, s0, 0x0018             # a0 = 00000018
    jal     func_8004C3D0
    sw      a0, 0x0038($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8004E64C
    lw      a0, 0x003C($sp)
    jal     func_8004C3F4
    lw      a1, 0x0038($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8004E64C
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a1, s0, 0x0058             # a1 = 00000058
    addiu   a3, s0, 0x004C             # a3 = 0000004C
    sw      a3, 0x0034($sp)
    sw      a1, 0x0030($sp)
    addiu   a0, a0, 0x9930             # a0 = 80119930
    jal     func_800A8234
    addiu   a2, s0, 0x0064             # a2 = 00000064
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x9968             # a0 = 80119968
    lw      a1, 0x0034($sp)
    addiu   a2, s0, 0x0040             # a2 = 00000040
    jal     func_800A8234
    lw      a3, 0x0030($sp)
    addiu   a0, s1, 0x0040             # a0 = 00000040
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x99A0             # a2 = 801199A0
    addiu   a1, a1, 0x9930             # a1 = 80119930
    jal     func_800A9668
    sw      a0, 0x0034($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8004E57C
    lw      a0, 0x0034($sp)
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFEC
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   a1, s1, 0x0046             # a1 = 00000046
    lwc1    $f4, 0x0058(s0)            # 00000058
    lwc1    $f6, 0x0064(s0)            # 00000064
    lwc1    $f10, 0x004C(s0)           # 0000004C
    lwc1    $f18, 0x0040(s0)           # 00000040
    add.s   $f8, $f4, $f6
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f0                   # $f0 = 0.25
    lw      t8, 0x0038($sp)
    add.s   $f16, $f8, $f10
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0x99A0             # t0 = 801199A0
    addiu   t9, $sp, 0x0058            # t9 = FFFFFFE0
    add.s   $f4, $f16, $f18
    lw      a0, 0x0078($sp)
    or      a1, s1, $zero              # a1 = 00000000
    lw      a2, 0x003C($sp)
    mul.s   $f6, $f4, $f0
    addiu   a3, $sp, 0x0064            # a3 = FFFFFFEC
    swc1    $f6, 0x0058($sp)
    lwc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f8, 0x005C(s0)            # 0000005C
    lwc1    $f18, 0x0050(s0)           # 00000050
    lwc1    $f6, 0x0044(s0)            # 00000044
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x005C($sp)
    lwc1    $f18, 0x006C(s0)           # 0000006C
    lwc1    $f16, 0x0060(s0)           # 00000060
    lwc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f10, 0x0048(s0)           # 00000048
    add.s   $f4, $f16, $f18
    sw      t0, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      s0, 0x0010($sp)
    add.s   $f8, $f4, $f6
    sw      t8, 0x0014($sp)
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    jal     func_8004CCC8
    swc1    $f18, 0x0060($sp)
    b       lbl_8004E650
    lw      $ra, 0x002C($sp)
lbl_8004E57C:
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x99A0             # a2 = 801199A0
    jal     func_800A9668
    addiu   a1, a1, 0x9968             # a1 = 80119968
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8004E64C
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFD4
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   a1, s1, 0x0046             # a1 = 00000046
    lwc1    $f4, 0x0058(s0)            # 00000058
    lwc1    $f6, 0x0064(s0)            # 00000064
    lwc1    $f10, 0x004C(s0)           # 0000004C
    lwc1    $f18, 0x0040(s0)           # 00000040
    add.s   $f8, $f4, $f6
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f0                   # $f0 = 0.25
    lw      t1, 0x0038($sp)
    add.s   $f16, $f8, $f10
    lui     t3, 0x8012                 # t3 = 80120000
    addiu   t3, t3, 0x99A0             # t3 = 801199A0
    addiu   t2, $sp, 0x0040            # t2 = FFFFFFC8
    add.s   $f4, $f16, $f18
    lw      a0, 0x0078($sp)
    or      a1, s1, $zero              # a1 = 00000000
    lw      a2, 0x003C($sp)
    mul.s   $f6, $f4, $f0
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFD4
    swc1    $f6, 0x0040($sp)
    lwc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f8, 0x005C(s0)            # 0000005C
    lwc1    $f18, 0x0050(s0)           # 00000050
    lwc1    $f6, 0x0044(s0)            # 00000044
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x0044($sp)
    lwc1    $f18, 0x006C(s0)           # 0000006C
    lwc1    $f16, 0x0060(s0)           # 00000060
    lwc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f10, 0x0048(s0)           # 00000048
    add.s   $f4, $f16, $f18
    sw      t3, 0x001C($sp)
    sw      t2, 0x0018($sp)
    sw      s0, 0x0010($sp)
    add.s   $f8, $f4, $f6
    sw      t1, 0x0014($sp)
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    jal     func_8004CCC8
    swc1    $f18, 0x0048($sp)
lbl_8004E64C:
    lw      $ra, 0x002C($sp)
lbl_8004E650:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_8004E660:
# Attack colAT type 3 into colAC type 1 collision
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s1, a3, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0078($sp)
    sw      a1, 0x007C($sp)
    lh      t6, 0x0042(s1)             # 00000042
    blezl   t6, lbl_8004E8FC
    lw      $ra, 0x002C($sp)
    lh      t7, 0x0040(s1)             # 00000040
    addiu   a0, s1, 0x0018             # a0 = 00000018
    blezl   t7, lbl_8004E8FC
    lw      $ra, 0x002C($sp)
    jal     func_8004C3D0
    sw      a0, 0x0038($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8004E8F8
    addiu   a0, s0, 0x0018             # a0 = 00000018
    jal     func_8004C3AC
    sw      a0, 0x003C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8004E8F8
    lw      a0, 0x003C($sp)
    jal     func_8004C3F4
    lw      a1, 0x0038($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8004E8F8
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a1, s0, 0x0058             # a1 = 00000058
    addiu   a3, s0, 0x004C             # a3 = 0000004C
    sw      a3, 0x0030($sp)
    sw      a1, 0x0034($sp)
    addiu   a0, a0, 0x99B0             # a0 = 801199B0
    jal     func_800A8234
    addiu   a2, s0, 0x0064             # a2 = 00000064
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a1, 0x0034($sp)
    addiu   a0, a0, 0x99E8             # a0 = 801199E8
    lw      a2, 0x0030($sp)
    jal     func_800A8234
    addiu   a3, s0, 0x0040             # a3 = 00000040
    addiu   a0, s1, 0x0040             # a0 = 00000040
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x9A20             # a2 = 80119A20
    addiu   a1, a1, 0x99B0             # a1 = 801199B0
    jal     func_800A9668
    sw      a0, 0x0034($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8004E808
    lw      a0, 0x0078($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x9A20             # a2 = 80119A20
    jal     func_8004BA98
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_8004E808
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f0                   # $f0 = 0.25
    nop
    lwc1    $f4, 0x0058(s0)            # 00000058
    lwc1    $f6, 0x0064(s0)            # 00000064
    lwc1    $f10, 0x004C(s0)           # 0000004C
    lwc1    $f18, 0x0040(s0)           # 00000040
    add.s   $f8, $f4, $f6
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFE0
    addiu   a1, s1, 0x0046             # a1 = 00000046
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x0064($sp)
    lwc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f8, 0x005C(s0)            # 0000005C
    lwc1    $f18, 0x0050(s0)           # 00000050
    lwc1    $f6, 0x0044(s0)            # 00000044
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x0068($sp)
    lwc1    $f18, 0x006C(s0)           # 0000006C
    lwc1    $f16, 0x0060(s0)           # 00000060
    lwc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f10, 0x0048(s0)           # 00000048
    add.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    jal     func_80063CCC              # Vec3f_CopyVec3s
    swc1    $f18, 0x006C($sp)
    lw      t8, 0x0038($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0x9A20             # t0 = 80119A20
    addiu   t9, $sp, 0x0058            # t9 = FFFFFFE0
    sw      t9, 0x0018($sp)
    sw      t0, 0x001C($sp)
    lw      a0, 0x0078($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lw      a2, 0x003C($sp)
    addiu   a3, $sp, 0x0064            # a3 = FFFFFFEC
    sw      s1, 0x0010($sp)
    jal     func_8004CCC8
    sw      t8, 0x0014($sp)
    b       lbl_8004E8FC
    lw      $ra, 0x002C($sp)
lbl_8004E808:
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x9A20             # a2 = 80119A20
    addiu   a1, a1, 0x99E8             # a1 = 801199E8
    jal     func_800A9668
    lw      a0, 0x0034($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8004E8F8
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x9A20             # a2 = 80119A20
    lw      a0, 0x0078($sp)
    jal     func_8004BA98
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_8004E8F8
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f0                   # $f0 = 0.25
    nop
    lwc1    $f4, 0x0058(s0)            # 00000058
    lwc1    $f6, 0x0064(s0)            # 00000064
    lwc1    $f10, 0x004C(s0)           # 0000004C
    lwc1    $f18, 0x0040(s0)           # 00000040
    add.s   $f8, $f4, $f6
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFC8
    addiu   a1, s1, 0x0046             # a1 = 00000046
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x004C($sp)
    lwc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f8, 0x005C(s0)            # 0000005C
    lwc1    $f18, 0x0050(s0)           # 00000050
    lwc1    $f6, 0x0044(s0)            # 00000044
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x0050($sp)
    lwc1    $f18, 0x006C(s0)           # 0000006C
    lwc1    $f16, 0x0060(s0)           # 00000060
    lwc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f10, 0x0048(s0)           # 00000048
    add.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    jal     func_80063CCC              # Vec3f_CopyVec3s
    swc1    $f18, 0x0054($sp)
    lw      t1, 0x0038($sp)
    lui     t3, 0x8012                 # t3 = 80120000
    addiu   t3, t3, 0x9A20             # t3 = 80119A20
    addiu   t2, $sp, 0x0040            # t2 = FFFFFFC8
    sw      t2, 0x0018($sp)
    sw      t3, 0x001C($sp)
    lw      a0, 0x0078($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lw      a2, 0x003C($sp)
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFD4
    sw      s1, 0x0010($sp)
    jal     func_8004CCC8
    sw      t1, 0x0014($sp)
lbl_8004E8F8:
    lw      $ra, 0x002C($sp)
lbl_8004E8FC:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_8004E90C:
# Attack colAT type 2 into colAC type 2 collision
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s6, 0x003C($sp)
    or      s6, a2, $zero              # s6 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s7, 0x0040($sp)
    sw      s5, 0x0038($sp)
    sw      s4, 0x0034($sp)
    sw      s3, 0x0030($sp)
    sw      s2, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    sw      a0, 0x0078($sp)
    sw      a1, 0x007C($sp)
    lw      v1, 0x0018(a3)             # 00000018
    or      s3, s6, $zero              # s3 = 00000000
    or      s7, a3, $zero              # s7 = 00000000
    blezl   v1, lbl_8004EB38
    lw      $ra, 0x0044($sp)
    lw      v0, 0x001C(a3)             # 0000001C
    beql    v0, $zero, lbl_8004EB38
    lw      $ra, 0x0044($sp)
    lw      t6, 0x0018(s6)             # 00000018
    blezl   t6, lbl_8004EB38
    lw      $ra, 0x0044($sp)
    lw      t7, 0x001C(s6)             # 0000001C
    addiu   s4, $zero, 0x005C          # s4 = 0000005C
    beql    t7, $zero, lbl_8004EB38
    lw      $ra, 0x0044($sp)
    multu   v1, s4
    lui     s5, 0x8012                 # s5 = 80120000
    addiu   s5, s5, 0x9A30             # s5 = 80119A30
    or      s2, v0, $zero              # s2 = 00000000
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    mflo    t8
    addu    t9, v0, t8
    sltu    $at, v0, t9
    beql    $at, $zero, lbl_8004EB38
    lw      $ra, 0x0044($sp)
    sw      a3, 0x0084($sp)
lbl_8004E9A8:
    jal     func_8004C3D0
    or      a0, s2, $zero              # a0 = 00000000
    beql    v0, s1, lbl_8004EB14
    lw      t0, 0x0018(s7)             # 00000018
    lw      t0, 0x0018(s6)             # 00000018
    lw      s0, 0x001C(s6)             # 0000001C
    multu   t0, s4
    mflo    t1
    addu    t2, s0, t1
    sltu    $at, s0, t2
    beql    $at, $zero, lbl_8004EB14
    lw      t0, 0x0018(s7)             # 00000018
lbl_8004E9D8:
    jal     func_8004C3AC
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s1, lbl_8004EAEC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004C3F4
    or      a1, s2, $zero              # a1 = 00000000
    beq     v0, s1, lbl_8004EAEC
    addiu   a0, s0, 0x0028             # a0 = 00000028
    addiu   a1, s2, 0x0028             # a1 = 00000028
    jal     func_800A9FA0
    or      a2, s5, $zero              # a2 = 80119A30
    bne     v0, s1, lbl_8004EAEC
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x72A8($at)           # 801072A8
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x0034(s0)            # 00000034
    lwc1    $f10, 0x0040(s0)           # 00000040
    lw      t3, 0x0084($sp)
    add.s   $f8, $f4, $f6
    addiu   t4, $sp, 0x0050            # t4 = FFFFFFD8
    lw      a0, 0x0078($sp)
    or      a1, s6, $zero              # a1 = 00000000
    add.s   $f16, $f10, $f8
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFE4
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x005C($sp)
    lwc1    $f6, 0x0038(s0)            # 00000038
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x0044(s0)            # 00000044
    add.s   $f10, $f4, $f6
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0060($sp)
    lwc1    $f6, 0x003C(s0)            # 0000003C
    lwc1    $f4, 0x0030(s0)            # 00000030
    lwc1    $f10, 0x0048(s0)           # 00000048
    add.s   $f8, $f4, $f6
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0064($sp)
    lwc1    $f6, 0x0034(s2)            # 00000034
    lwc1    $f4, 0x0028(s2)            # 00000028
    lwc1    $f8, 0x0040(s2)            # 00000040
    add.s   $f10, $f4, $f6
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0050($sp)
    lwc1    $f6, 0x0038(s2)            # 00000038
    lwc1    $f4, 0x002C(s2)            # 0000002C
    lwc1    $f10, 0x0044(s2)           # 00000044
    add.s   $f8, $f4, $f6
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0054($sp)
    lwc1    $f6, 0x003C(s2)            # 0000003C
    lwc1    $f4, 0x0030(s2)            # 00000030
    lwc1    $f8, 0x0048(s2)            # 00000048
    sw      s5, 0x001C($sp)
    add.s   $f10, $f4, $f6
    sw      t4, 0x0018($sp)
    sw      s2, 0x0014($sp)
    sw      t3, 0x0010($sp)
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    jal     func_8004CCC8
    swc1    $f18, 0x0058($sp)
    b       lbl_8004EB38
    lw      $ra, 0x0044($sp)
lbl_8004EAEC:
    lw      t6, 0x0018(s3)             # 00000018
    lw      t5, 0x001C(s3)             # 0000001C
    addiu   s0, s0, 0x005C             # s0 = 0000005C
    multu   t6, s4
    mflo    t7
    addu    t8, t5, t7
    sltu    $at, s0, t8
    bne     $at, $zero, lbl_8004E9D8
    nop
    lw      t0, 0x0018(s7)             # 00000018
lbl_8004EB14:
    lw      t9, 0x001C(s7)             # 0000001C
    addiu   s2, s2, 0x005C             # s2 = 0000005C
    multu   t0, s4
    mflo    t1
    addu    t2, t9, t1
    sltu    $at, s2, t2
    bne     $at, $zero, lbl_8004E9A8
    nop
    lw      $ra, 0x0044($sp)
lbl_8004EB38:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    lw      s4, 0x0034($sp)
    lw      s5, 0x0038($sp)
    lw      s6, 0x003C($sp)
    lw      s7, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_8004EB60:
# Attack colAT type 2 into colAC type 3 collision
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s3, 0x0034($sp)
    or      s3, a3, $zero              # s3 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s8, 0x0048($sp)
    sw      s7, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0080($sp)
    sw      a1, 0x0084($sp)
    lw      t6, 0x0018(a2)             # 00000018
    or      s5, a2, $zero              # s5 = 00000000
    blezl   t6, lbl_8004EDC4
    lw      $ra, 0x004C($sp)
    lw      t7, 0x001C(a2)             # 0000001C
    addiu   s6, s3, 0x0018             # s6 = 00000018
    or      a0, s6, $zero              # a0 = 00000018
    beql    t7, $zero, lbl_8004EDC4
    lw      $ra, 0x004C($sp)
    jal     func_8004C3D0
    sw      a2, 0x0088($sp)
    addiu   s2, $zero, 0x0001          # s2 = 00000001
    beq     v0, s2, lbl_8004EDC0
    lui     s7, 0x8012                 # s7 = 80120000
    addiu   s7, s7, 0x9A50             # s7 = 80119A50
    addiu   s1, s3, 0x0058             # s1 = 00000058
    addiu   s0, s3, 0x004C             # s0 = 0000004C
    or      a3, s0, $zero              # a3 = 0000004C
    or      a1, s1, $zero              # a1 = 00000058
    or      a0, s7, $zero              # a0 = 80119A50
    jal     func_800A8234
    addiu   a2, s3, 0x0064             # a2 = 00000064
    lui     s8, 0x8012                 # s8 = 80120000
    addiu   s8, s8, 0x9A88             # s8 = 80119A88
    or      a0, s8, $zero              # a0 = 80119A88
    or      a1, s0, $zero              # a1 = 0000004C
    addiu   a2, s3, 0x0040             # a2 = 00000040
    jal     func_800A8234
    or      a3, s1, $zero              # a3 = 00000058
    lw      v1, 0x0088($sp)
    lui     s4, 0x8012                 # s4 = 80120000
    addiu   s4, s4, 0x9A40             # s4 = 80119A40
    lw      t8, 0x0018(v1)             # 00000018
    lw      s1, 0x001C(v1)             # 0000001C
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  3
    subu    t9, t9, t8
    sll     t9, t9,  2
    addu    t0, s1, t9
    sltu    $at, s1, t0
    beql    $at, $zero, lbl_8004EDC4
    lw      $ra, 0x004C($sp)
lbl_8004EC44:
    jal     func_8004C3AC
    or      a0, s1, $zero              # a0 = 00000058
    beq     v0, s2, lbl_8004ED90
    or      a0, s1, $zero              # a0 = 00000058
    jal     func_8004C3F4
    or      a1, s6, $zero              # a1 = 00000018
    beq     v0, s2, lbl_8004ED90
    or      a0, s7, $zero              # a0 = 80119A50
    addiu   s0, s1, 0x0028             # s0 = 00000080
    or      a1, s0, $zero              # a1 = 00000080
    jal     func_800A9FA0
    or      a2, s4, $zero              # a2 = 80119A40
    beq     v0, s2, lbl_8004EC8C
    or      a0, s8, $zero              # a0 = 80119A88
    or      a1, s0, $zero              # a1 = 00000080
    jal     func_800A9FA0
    or      a2, s4, $zero              # a2 = 80119A40
    bne     v0, s2, lbl_8004ED90
lbl_8004EC8C:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x72AC($at)           # 801072AC
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f2                   # $f2 = 0.25
    nop
    lwc1    $f4, 0x0028(s1)            # 00000080
    lwc1    $f6, 0x0034(s1)            # 0000008C
    lwc1    $f10, 0x0040(s1)           # 00000098
    addiu   t1, $sp, 0x005C            # t1 = FFFFFFDC
    add.s   $f8, $f4, $f6
    lw      a0, 0x0080($sp)
    lw      a1, 0x0088($sp)
    or      a2, s1, $zero              # a2 = 00000058
    add.s   $f16, $f10, $f8
    addiu   a3, $sp, 0x0068            # a3 = FFFFFFE8
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0068($sp)
    lwc1    $f6, 0x0038(s1)            # 00000090
    lwc1    $f4, 0x002C(s1)            # 00000084
    lwc1    $f8, 0x0044(s1)            # 0000009C
    add.s   $f10, $f4, $f6
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x006C($sp)
    lwc1    $f6, 0x003C(s1)            # 00000094
    lwc1    $f4, 0x0030(s1)            # 00000088
    lwc1    $f10, 0x0048(s1)           # 000000A0
    add.s   $f8, $f4, $f6
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0070($sp)
    lwc1    $f6, 0x0064(s3)            # 00000064
    lwc1    $f4, 0x0058(s3)            # 00000058
    lwc1    $f8, 0x004C(s3)            # 0000004C
    lwc1    $f18, 0x0040(s3)           # 00000040
    add.s   $f10, $f4, $f6
    add.s   $f16, $f10, $f8
    add.s   $f4, $f16, $f18
    mul.s   $f6, $f4, $f2
    swc1    $f6, 0x005C($sp)
    lwc1    $f8, 0x0068(s3)            # 00000068
    lwc1    $f10, 0x005C(s3)           # 0000005C
    lwc1    $f18, 0x0050(s3)           # 00000050
    lwc1    $f6, 0x0044(s3)            # 00000044
    add.s   $f16, $f10, $f8
    add.s   $f4, $f16, $f18
    add.s   $f10, $f4, $f6
    mul.s   $f8, $f10, $f2
    swc1    $f8, 0x0060($sp)
    lwc1    $f18, 0x006C(s3)           # 0000006C
    lwc1    $f16, 0x0060(s3)           # 00000060
    lwc1    $f6, 0x0054(s3)            # 00000054
    lwc1    $f8, 0x0048(s3)            # 00000048
    add.s   $f4, $f16, $f18
    sw      s4, 0x001C($sp)
    sw      t1, 0x0018($sp)
    sw      s6, 0x0014($sp)
    add.s   $f10, $f4, $f6
    sw      s3, 0x0010($sp)
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f2
    jal     func_8004CCC8
    swc1    $f18, 0x0064($sp)
    b       lbl_8004EDC4
    lw      $ra, 0x004C($sp)
lbl_8004ED90:
    lw      t3, 0x0018(s5)             # 00000018
    lw      t2, 0x001C(s5)             # 0000001C
    addiu   s1, s1, 0x005C             # s1 = 000000B4
    sll     t4, t3,  2
    subu    t4, t4, t3
    sll     t4, t4,  3
    subu    t4, t4, t3
    sll     t4, t4,  2
    addu    t5, t2, t4
    sltu    $at, s1, t5
    bne     $at, $zero, lbl_8004EC44
    nop
lbl_8004EDC0:
    lw      $ra, 0x004C($sp)
lbl_8004EDC4:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    lw      s7, 0x0044($sp)
    lw      s8, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_8004EDF0:
# Attack colAT type 3 into colAC type 2 collision
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s4, 0x0038($sp)
    or      s4, a2, $zero              # s4 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s8, 0x0048($sp)
    sw      s7, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s3, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0080($sp)
    sw      a1, 0x0084($sp)
    lw      t6, 0x0018(a3)             # 00000018
    or      s5, a3, $zero              # s5 = 00000000
    blezl   t6, lbl_8004F05C
    lw      $ra, 0x004C($sp)
    lw      t7, 0x001C(a3)             # 0000001C
    addiu   s7, s4, 0x0018             # s7 = 00000018
    or      a0, s7, $zero              # a0 = 00000018
    beql    t7, $zero, lbl_8004F05C
    lw      $ra, 0x004C($sp)
    jal     func_8004C3AC
    sw      a3, 0x008C($sp)
    addiu   s2, $zero, 0x0001          # s2 = 00000001
    beq     v0, s2, lbl_8004F058
    lui     s8, 0x8012                 # s8 = 80120000
    addiu   s8, s8, 0x9AD0             # s8 = 80119AD0
    addiu   s1, s4, 0x0058             # s1 = 00000058
    addiu   s0, s4, 0x004C             # s0 = 0000004C
    or      a3, s0, $zero              # a3 = 0000004C
    or      a1, s1, $zero              # a1 = 00000058
    or      a0, s8, $zero              # a0 = 80119AD0
    jal     func_800A8234
    addiu   a2, s4, 0x0064             # a2 = 00000064
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x9B08             # a0 = 80119B08
    or      a1, s0, $zero              # a1 = 0000004C
    addiu   a2, s4, 0x0040             # a2 = 00000040
    jal     func_800A8234
    or      a3, s1, $zero              # a3 = 00000058
    lw      v1, 0x008C($sp)
    addiu   s6, $zero, 0x005C          # s6 = 0000005C
    lui     s3, 0x8012                 # s3 = 80120000
    lw      t8, 0x0018(v1)             # 00000018
    lw      s1, 0x001C(v1)             # 0000001C
    addiu   s3, s3, 0x9AC0             # s3 = 80119AC0
    multu   t8, s6
    mflo    t9
    addu    t0, s1, t9
    sltu    $at, s1, t0
    beql    $at, $zero, lbl_8004F05C
    lw      $ra, 0x004C($sp)
lbl_8004EEC8:
    jal     func_8004C3D0
    or      a0, s1, $zero              # a0 = 00000058
    beq     v0, s2, lbl_8004F034
    or      a0, s7, $zero              # a0 = 00000018
    jal     func_8004C3F4
    or      a1, s1, $zero              # a1 = 00000058
    beq     v0, s2, lbl_8004F034
    or      a0, s8, $zero              # a0 = 80119AD0
    addiu   s0, s1, 0x0028             # s0 = 00000080
    or      a1, s0, $zero              # a1 = 00000080
    jal     func_800A9FA0
    or      a2, s3, $zero              # a2 = 80119AC0
    beq     v0, s2, lbl_8004EF18
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x9B08             # a0 = 80119B08
    or      a1, s0, $zero              # a1 = 00000080
    jal     func_800A9FA0
    or      a2, s3, $zero              # a2 = 80119AC0
    bnel    v0, s2, lbl_8004F038
    lw      t4, 0x0018(s5)             # 00000018
lbl_8004EF18:
    lw      a0, 0x0080($sp)
    or      a1, s4, $zero              # a1 = 00000000
    jal     func_8004BA98
    or      a2, s3, $zero              # a2 = 80119AC0
    beq     v0, $zero, lbl_8004F034
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x72B0($at)           # 801072B0
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f2                   # $f2 = 0.25
    nop
    lwc1    $f4, 0x0028(s1)            # 00000080
    lwc1    $f6, 0x0034(s1)            # 0000008C
    lwc1    $f10, 0x0040(s1)           # 00000098
    lw      t1, 0x008C($sp)
    add.s   $f8, $f4, $f6
    addiu   t2, $sp, 0x005C            # t2 = FFFFFFDC
    lw      a0, 0x0080($sp)
    or      a1, s4, $zero              # a1 = 00000000
    add.s   $f16, $f10, $f8
    or      a2, s7, $zero              # a2 = 00000018
    addiu   a3, $sp, 0x0068            # a3 = FFFFFFE8
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x005C($sp)
    lwc1    $f6, 0x0038(s1)            # 00000090
    lwc1    $f4, 0x002C(s1)            # 00000084
    lwc1    $f8, 0x0044(s1)            # 0000009C
    add.s   $f10, $f4, $f6
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0060($sp)
    lwc1    $f6, 0x003C(s1)            # 00000094
    lwc1    $f4, 0x0030(s1)            # 00000088
    lwc1    $f10, 0x0048(s1)           # 000000A0
    add.s   $f8, $f4, $f6
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0064($sp)
    lwc1    $f6, 0x0064(s4)            # 00000064
    lwc1    $f4, 0x0058(s4)            # 00000058
    lwc1    $f8, 0x004C(s4)            # 0000004C
    lwc1    $f18, 0x0040(s4)           # 00000040
    add.s   $f10, $f4, $f6
    add.s   $f16, $f10, $f8
    add.s   $f4, $f16, $f18
    mul.s   $f6, $f4, $f2
    swc1    $f6, 0x0068($sp)
    lwc1    $f8, 0x0068(s4)            # 00000068
    lwc1    $f10, 0x005C(s4)           # 0000005C
    lwc1    $f18, 0x0050(s4)           # 00000050
    lwc1    $f6, 0x0044(s4)            # 00000044
    add.s   $f16, $f10, $f8
    add.s   $f4, $f16, $f18
    add.s   $f10, $f4, $f6
    mul.s   $f8, $f10, $f2
    swc1    $f8, 0x006C($sp)
    lwc1    $f18, 0x006C(s4)           # 0000006C
    lwc1    $f16, 0x0060(s4)           # 00000060
    lwc1    $f6, 0x0054(s4)            # 00000054
    lwc1    $f8, 0x0048(s4)            # 00000048
    add.s   $f4, $f16, $f18
    sw      s3, 0x001C($sp)
    sw      t2, 0x0018($sp)
    sw      s1, 0x0014($sp)
    add.s   $f10, $f4, $f6
    sw      t1, 0x0010($sp)
    add.s   $f16, $f10, $f8
    mul.s   $f18, $f16, $f2
    jal     func_8004CCC8
    swc1    $f18, 0x0070($sp)
    b       lbl_8004F05C
    lw      $ra, 0x004C($sp)
lbl_8004F034:
    lw      t4, 0x0018(s5)             # 00000018
lbl_8004F038:
    lw      t3, 0x001C(s5)             # 0000001C
    addiu   s1, s1, 0x005C             # s1 = 000000B4
    multu   t4, s6
    mflo    t5
    addu    t6, t3, t5
    sltu    $at, s1, t6
    bne     $at, $zero, lbl_8004EEC8
    nop
lbl_8004F058:
    lw      $ra, 0x004C($sp)
lbl_8004F05C:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    lw      s7, 0x0044($sp)
    lw      s8, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_8004F088:
# Attack colAT type 3 into colAC type 3 collision
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s7, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s4, 0x0038($sp)
    or      s4, a2, $zero              # s4 = 00000000
    or      s6, a0, $zero              # s6 = 00000000
    or      s7, a3, $zero              # s7 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s8, 0x0048($sp)
    sw      s5, 0x003C($sp)
    sw      s3, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a1, 0x008C($sp)
    addiu   a0, s4, 0x0018             # a0 = 00000018
    jal     func_8004C3AC
    sw      a0, 0x005C($sp)
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    beq     v0, s5, lbl_8004F2E8
    addiu   a0, s7, 0x0018             # a0 = 00000018
    jal     func_8004C3D0
    sw      a0, 0x0050($sp)
    beq     v0, s5, lbl_8004F2E8
    lw      a0, 0x005C($sp)
    jal     func_8004C3F4
    lw      a1, 0x0050($sp)
    beq     v0, s5, lbl_8004F2E8
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   s0, s4, 0x0058             # s0 = 00000058
    addiu   s1, s4, 0x004C             # s1 = 0000004C
    or      a3, s1, $zero              # a3 = 0000004C
    or      a1, s0, $zero              # a1 = 00000058
    addiu   a0, a0, 0x9BB8             # a0 = 80119BB8
    jal     func_800A8234
    addiu   a2, s4, 0x0064             # a2 = 00000064
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x9BEC             # a0 = 80119BEC
    or      a1, s0, $zero              # a1 = 00000058
    or      a2, s1, $zero              # a2 = 0000004C
    jal     func_800A8234
    addiu   a3, s4, 0x0040             # a3 = 00000040
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   s0, s7, 0x0058             # s0 = 00000058
    addiu   s1, s7, 0x004C             # s1 = 0000004C
    or      a3, s1, $zero              # a3 = 0000004C
    or      a1, s0, $zero              # a1 = 00000058
    addiu   a0, a0, 0x9B40             # a0 = 80119B40
    jal     func_800A8234
    addiu   a2, s7, 0x0064             # a2 = 00000064
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x9B74             # a0 = 80119B74
    or      a1, s0, $zero              # a1 = 00000058
    or      a2, s1, $zero              # a2 = 0000004C
    jal     func_800A8234
    addiu   a3, s7, 0x0040             # a3 = 00000040
    lui     s2, 0x8012                 # s2 = 80120000
    lui     s8, 0x8012                 # s8 = 80120000
    lui     s3, 0x8012                 # s3 = 80120000
    lui     s1, 0x8012                 # s1 = 80120000
    addiu   s1, s1, 0x9BA8             # s1 = 80119BA8
    addiu   s3, s3, 0x9C20             # s3 = 80119C20
    addiu   s8, s8, 0x9BA8             # s8 = 80119BA8
    addiu   s2, s2, 0x9B40             # s2 = 80119B40
lbl_8004F188:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0x9BB8             # s0 = 80119BB8
    or      a0, s0, $zero              # a0 = 80119BB8
lbl_8004F194:
    or      a1, s2, $zero              # a1 = 80119B40
    jal     func_800A9FA0
    or      a2, s1, $zero              # a2 = 80119BA8
    bne     v0, s5, lbl_8004F2D0
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    jal     func_8004BA98
    or      a2, s1, $zero              # a2 = 80119BA8
    beq     v0, $zero, lbl_8004F2D0
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f0                   # $f0 = 0.25
    nop
    lwc1    $f4, 0x0058(s4)            # 00000058
    lwc1    $f6, 0x0064(s4)            # 00000064
    lwc1    $f10, 0x004C(s4)           # 0000004C
    lwc1    $f18, 0x0040(s4)           # 00000040
    add.s   $f8, $f4, $f6
    lw      t6, 0x0050($sp)
    addiu   t7, $sp, 0x0060            # t7 = FFFFFFD8
    or      a0, s6, $zero              # a0 = 00000000
    add.s   $f16, $f8, $f10
    or      a1, s4, $zero              # a1 = 00000000
    lw      a2, 0x005C($sp)
    addiu   a3, $sp, 0x006C            # a3 = FFFFFFE4
    add.s   $f4, $f16, $f18
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x006C($sp)
    lwc1    $f10, 0x0068(s4)           # 00000068
    lwc1    $f8, 0x005C(s4)            # 0000005C
    lwc1    $f18, 0x0050(s4)           # 00000050
    lwc1    $f6, 0x0044(s4)            # 00000044
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x0070($sp)
    lwc1    $f18, 0x006C(s4)           # 0000006C
    lwc1    $f16, 0x0060(s4)           # 00000060
    lwc1    $f6, 0x0054(s4)            # 00000054
    lwc1    $f10, 0x0048(s4)           # 00000048
    add.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0074($sp)
    lwc1    $f6, 0x0064(s7)            # 00000064
    lwc1    $f4, 0x0058(s7)            # 00000058
    lwc1    $f10, 0x004C(s7)           # 0000004C
    lwc1    $f18, 0x0040(s7)           # 00000040
    add.s   $f8, $f4, $f6
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x0060($sp)
    lwc1    $f10, 0x0068(s7)           # 00000068
    lwc1    $f8, 0x005C(s7)            # 0000005C
    lwc1    $f18, 0x0050(s7)           # 00000050
    lwc1    $f6, 0x0044(s7)            # 00000044
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x0064($sp)
    lwc1    $f18, 0x006C(s7)           # 0000006C
    lwc1    $f16, 0x0060(s7)           # 00000060
    lwc1    $f6, 0x0054(s7)            # 00000054
    lwc1    $f10, 0x0048(s7)           # 00000048
    add.s   $f4, $f16, $f18
    sw      s1, 0x001C($sp)
    sw      t7, 0x0018($sp)
    sw      s7, 0x0010($sp)
    add.s   $f8, $f4, $f6
    sw      t6, 0x0014($sp)
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    jal     func_8004CCC8
    swc1    $f18, 0x0068($sp)
    b       lbl_8004F2EC
    lw      $ra, 0x004C($sp)
lbl_8004F2D0:
    addiu   s0, s0, 0x0034             # s0 = 80119BEC
    bnel    s0, s3, lbl_8004F194
    or      a0, s0, $zero              # a0 = 80119BEC
    addiu   s2, s2, 0x0034             # s2 = 80119B74
    bne     s2, s8, lbl_8004F188
    nop
lbl_8004F2E8:
    lw      $ra, 0x004C($sp)
lbl_8004F2EC:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    lw      s7, 0x0044($sp)
    lw      s8, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_8004F318:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lw      t6, 0x0018(a3)             # 00000018
    lw      v0, 0x001C(a3)             # 0000001C
    or      a1, a3, $zero              # a1 = 00000000
    sll     t7, t6,  6
    addu    t8, v0, t7
    sltu    $at, v0, t8
    beql    $at, $zero, lbl_8004F3EC
    lw      $ra, 0x001C($sp)
    lbu     t9, 0x0016(v0)             # 00000016
lbl_8004F350:
    andi    t0, t9, 0x0080             # t0 = 00000000
    beql    t0, $zero, lbl_8004F3CC
    lw      t7, 0x0018(a1)             # 00000018
    lw      v1, 0x0024(v0)             # 00000024
    beql    v1, $zero, lbl_8004F3CC
    lw      t7, 0x0018(a1)             # 00000018
    lbu     t1, 0x0015(v1)             # 00000015
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFEC
    andi    t2, t1, 0x0040             # t2 = 00000000
    bnel    t2, $zero, lbl_8004F3CC
    lw      t7, 0x0018(a1)             # 00000018
    addiu   a1, v0, 0x000E             # a1 = 0000000E
    sw      v0, 0x0030($sp)
    jal     func_80063CCC              # Vec3f_CopyVec3s
    sw      a3, 0x0040($sp)
    lw      v0, 0x0030($sp)
    addiu   t3, $sp, 0x0024            # t3 = FFFFFFEC
    lw      a3, 0x0040($sp)
    lw      a1, 0x001C(v0)             # 0000001C
    lw      a2, 0x0024(v0)             # 00000024
    sw      t3, 0x0014($sp)
    lw      a0, 0x0038($sp)
    jal     func_8004CAA8
    sw      v0, 0x0010($sp)
    lw      v0, 0x0030($sp)
    lw      v1, 0x0024(v0)             # 00000024
    lbu     t4, 0x0015(v1)             # 00000015
    ori     t5, t4, 0x0040             # t5 = 00000040
    b       lbl_8004F3E8
    sb      t5, 0x0015(v1)             # 00000015
    lw      t7, 0x0018(a1)             # 00000018
lbl_8004F3CC:
    lw      t6, 0x001C(a1)             # 0000001C
    addiu   v0, v0, 0x0040             # v0 = 00000040
    sll     t8, t7,  6
    addu    t9, t6, t8
    sltu    $at, v0, t9
    bnel    $at, $zero, lbl_8004F350
    lbu     t9, 0x0016(v0)             # 00000056
lbl_8004F3E8:
    lw      $ra, 0x001C($sp)
lbl_8004F3EC:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8004F3F8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lbu     t6, 0x002E(a3)             # 0000002E
    andi    t7, t6, 0x0080             # t7 = 00000000
    beql    t7, $zero, lbl_8004F484
    lw      $ra, 0x001C($sp)
    lw      v0, 0x003C(a3)             # 0000003C
    beql    v0, $zero, lbl_8004F484
    lw      $ra, 0x001C($sp)
    lbu     t8, 0x0015(v0)             # 00000015
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    addiu   a1, a3, 0x0026             # a1 = 00000026
    andi    t9, t8, 0x0040             # t9 = 00000000
    bnel    t9, $zero, lbl_8004F484
    lw      $ra, 0x001C($sp)
    jal     func_80063CCC              # Vec3f_CopyVec3s
    sw      a3, 0x0040($sp)
    lw      a3, 0x0040($sp)
    addiu   t1, $sp, 0x0028            # t1 = FFFFFFF0
    lw      a0, 0x0038($sp)
    lw      a1, 0x0034(a3)             # 00000034
    lw      a2, 0x003C(a3)             # 0000003C
    addiu   t0, a3, 0x0018             # t0 = 00000018
    sw      t0, 0x0010($sp)
    jal     func_8004CAA8
    sw      t1, 0x0014($sp)
    lw      a3, 0x0040($sp)
    lw      v0, 0x003C(a3)             # 0000003C
    lbu     t2, 0x0015(v0)             # 00000015
    ori     t3, t2, 0x0040             # t3 = 00000040
    sb      t3, 0x0015(v0)             # 00000015
    lw      $ra, 0x001C($sp)
lbl_8004F484:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8004F490:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    addiu   a3, $zero, 0x005C          # a3 = 0000005C
    lw      t6, 0x0018(a2)             # 00000018
    lw      v0, 0x001C(a2)             # 0000001C
    or      a1, a2, $zero              # a1 = 00000000
    multu   t6, a3
    mflo    t7
    addu    t8, v0, t7
    sltu    $at, v0, t8
    beql    $at, $zero, lbl_8004F56C
    lw      $ra, 0x001C($sp)
    lbu     t9, 0x0016(v0)             # 00000016
lbl_8004F4CC:
    andi    t0, t9, 0x0080             # t0 = 00000000
    beql    t0, $zero, lbl_8004F548
    lw      t7, 0x0018(a1)             # 00000018
    lw      v1, 0x0024(v0)             # 00000024
    beql    v1, $zero, lbl_8004F548
    lw      t7, 0x0018(a1)             # 00000018
    lbu     t1, 0x0015(v1)             # 00000015
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFEC
    andi    t2, t1, 0x0040             # t2 = 00000000
    bnel    t2, $zero, lbl_8004F548
    lw      t7, 0x0018(a1)             # 00000018
    addiu   a1, v0, 0x000E             # a1 = 0000000E
    sw      v0, 0x0030($sp)
    jal     func_80063CCC              # Vec3f_CopyVec3s
    sw      a2, 0x0040($sp)
    lw      v0, 0x0030($sp)
    addiu   t3, $sp, 0x0024            # t3 = FFFFFFEC
    lw      a0, 0x0038($sp)
    lw      a1, 0x001C(v0)             # 0000001C
    lw      a2, 0x0024(v0)             # 00000024
    sw      t3, 0x0014($sp)
    lw      a3, 0x0040($sp)
    jal     func_8004CAA8
    sw      v0, 0x0010($sp)
    lw      v0, 0x0030($sp)
    lw      v1, 0x0024(v0)             # 00000024
    lbu     t4, 0x0015(v1)             # 00000015
    ori     t5, t4, 0x0040             # t5 = 00000040
    b       lbl_8004F568
    sb      t5, 0x0015(v1)             # 00000015
    lw      t7, 0x0018(a1)             # 00000018
lbl_8004F548:
    lw      t6, 0x001C(a1)             # 0000001C
    addiu   v0, v0, 0x005C             # v0 = 0000005C
    multu   t7, a3
    mflo    t8
    addu    t9, t6, t8
    sltu    $at, v0, t9
    bnel    $at, $zero, lbl_8004F4CC
    lbu     t9, 0x0016(v0)             # 00000072
lbl_8004F568:
    lw      $ra, 0x001C($sp)
lbl_8004F56C:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8004F578:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lbu     t6, 0x002E(a3)             # 0000002E
    andi    t7, t6, 0x0080             # t7 = 00000000
    beql    t7, $zero, lbl_8004F604
    lw      $ra, 0x001C($sp)
    lw      v0, 0x003C(a3)             # 0000003C
    beql    v0, $zero, lbl_8004F604
    lw      $ra, 0x001C($sp)
    lbu     t8, 0x0015(v0)             # 00000015
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    addiu   a1, a3, 0x0026             # a1 = 00000026
    andi    t9, t8, 0x0040             # t9 = 00000000
    bnel    t9, $zero, lbl_8004F604
    lw      $ra, 0x001C($sp)
    jal     func_80063CCC              # Vec3f_CopyVec3s
    sw      a3, 0x0040($sp)
    lw      a3, 0x0040($sp)
    addiu   t1, $sp, 0x0028            # t1 = FFFFFFF0
    lw      a0, 0x0038($sp)
    lw      a1, 0x0034(a3)             # 00000034
    lw      a2, 0x003C(a3)             # 0000003C
    addiu   t0, a3, 0x0018             # t0 = 00000018
    sw      t0, 0x0010($sp)
    jal     func_8004CAA8
    sw      t1, 0x0014($sp)
    lw      a3, 0x0040($sp)
    lw      v0, 0x003C(a3)             # 0000003C
    lbu     t2, 0x0015(v0)             # 00000015
    ori     t3, t2, 0x0040             # t3 = 00000040
    sb      t3, 0x0015(v0)             # 00000015
    lw      $ra, 0x001C($sp)
lbl_8004F604:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8004F610:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s3, 0x0020($sp)
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s2, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lw      t6, 0x00CC(s1)             # 000000CC
    addiu   s0, s1, 0x00D0             # s0 = 000000D0
    lui     s2, 0x800F                 # s2 = 800F0000
    sll     t7, t6,  2
    addu    v1, s1, t7
    addiu   v1, v1, 0x00D0             # v1 = 000000D0
    sltu    $at, s0, v1
    beq     $at, $zero, lbl_8004F6C8
    addiu   s2, s2, 0xFAFC             # s2 = 800EFAFC
    lw      a2, 0x0000(s0)             # 000000D0
lbl_8004F658:
    beql    a2, $zero, lbl_8004F6BC
    addiu   s0, s0, 0x0004             # s0 = 000000D4
    lbu     t8, 0x0011(a2)             # 00000011
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_8004F6BC
    addiu   s0, s0, 0x0004             # s0 = 000000D8
    lw      v0, 0x0000(a2)             # 00000000
    beql    v0, $zero, lbl_8004F68C
    lbu     t1, 0x0015(a2)             # 00000015
    lw      t0, 0x0130(v0)             # 00000130
    beql    t0, $zero, lbl_8004F6BC
    addiu   s0, s0, 0x0004             # s0 = 000000DC
    lbu     t1, 0x0015(a2)             # 00000015
lbl_8004F68C:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sll     t2, t1,  2
    addu    t3, s2, t2
    lw      t9, 0x0000(t3)             # 00000000
    jalr    $ra, t9
    nop
    lw      t4, 0x00CC(s1)             # 000000CC
    sll     t5, t4,  2
    addu    v1, s1, t5
    addiu   v1, v1, 0x00D0             # v1 = 000000D0
    addiu   s0, s0, 0x0004             # s0 = 000000E0
lbl_8004F6BC:
    sltu    $at, s0, v1
    bnel    $at, $zero, lbl_8004F658
    lw      a2, 0x0000(s0)             # 000000E0
lbl_8004F6C8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004F6E4:
# A0 = Global Context
# A1 = colAT ptr
# A2 = CollisionBody* colAT_Element
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s1, 0x001C($sp)
    lw      t6, 0x00CC(s2)             # 000000CC
    addiu   s1, s2, 0x00D0             # s1 = 000000D0
    lui     s4, 0x800F                 # s4 = 800F0000
    sll     t7, t6,  2
    addu    t0, s2, t7
    addiu   t0, t0, 0x00D0             # t0 = 000000D0
    sltu    $at, s1, t0
    beq     $at, $zero, lbl_8004F7EC
    addiu   s4, s4, 0xFB0C             # s4 = 800EFB0C
    lw      a3, 0x0000(s1)             # 000000D0
lbl_8004F734:
    beql    a3, $zero, lbl_8004F7E0
    addiu   s1, s1, 0x0004             # s1 = 000000D4
    lbu     v0, 0x0011(a3)             # 00000011
    andi    t8, v0, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_8004F7E0
    addiu   s1, s1, 0x0004             # s1 = 000000D8
    lw      a0, 0x0000(a3)             # 00000000
    beql    a0, $zero, lbl_8004F768
    lbu     v1, 0x0010(s0)             # 00000010
    lw      t9, 0x0130(a0)             # 00000130
    beql    t9, $zero, lbl_8004F7E0
    addiu   s1, s1, 0x0004             # s1 = 000000DC
    lbu     v1, 0x0010(s0)             # 00000010
lbl_8004F768:
    and     t1, v0, v1
    andi    t2, t1, 0x0038             # t2 = 00000000
    beql    t2, $zero, lbl_8004F7E0
    addiu   s1, s1, 0x0004             # s1 = 000000E0
    beq     s0, a3, lbl_8004F7DC
    andi    t3, v1, 0x0040             # t3 = 00000000
    bnel    t3, $zero, lbl_8004F7A0
    lbu     t4, 0x0015(s0)             # 00000015
    lw      v0, 0x0000(s0)             # 00000000
    beql    v0, $zero, lbl_8004F7A0
    lbu     t4, 0x0015(s0)             # 00000015
    beql    v0, a0, lbl_8004F7E0
    addiu   s1, s1, 0x0004             # s1 = 000000E4
    lbu     t4, 0x0015(s0)             # 00000015
lbl_8004F7A0:
    lbu     t7, 0x0015(a3)             # 00000015
    or      a0, s3, $zero              # a0 = 00000000
    sll     t5, t4,  4
    addu    t6, s4, t5
    sll     t8, t7,  2
    addu    t9, t6, t8
    lw      t9, 0x0000(t9)             # 00000000
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s0, $zero              # a2 = 00000000
    jalr    $ra, t9
    nop
    lw      t1, 0x00CC(s2)             # 000000CC
    sll     t2, t1,  2
    addu    t0, s2, t2
    addiu   t0, t0, 0x00D0             # t0 = 000000D0
lbl_8004F7DC:
    addiu   s1, s1, 0x0004             # s1 = 000000E8
lbl_8004F7E0:
    sltu    $at, s1, t0
    bnel    $at, $zero, lbl_8004F734
    lw      a3, 0x0000(s1)             # 000000E8
lbl_8004F7EC:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8004F80C:
# Update Attack Collisions
# A0 = Global Context
# A1 = colAt ptr
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0018($sp)
    lh      a2, 0x0000(s1)             # 00000000
    beql    a2, $zero, lbl_8004F8C8
    lw      $ra, 0x0024($sp)
    lw      t6, 0x00CC(s1)             # 000000CC
    sll     t7, a2,  2
    addu    v1, s1, t7
    beq     t6, $zero, lbl_8004F8C4
    addiu   s0, s1, 0x0004             # s0 = 00000004
    addiu   v1, v1, 0x0004             # v1 = 00000004
    sltu    $at, s0, v1
    beql    $at, $zero, lbl_8004F8BC
    or      a0, s2, $zero              # a0 = 00000000
    lw      a2, 0x0000(s0)             # 00000004
lbl_8004F85C:
    beql    a2, $zero, lbl_8004F8AC
    addiu   s0, s0, 0x0004             # s0 = 00000008
    lbu     t8, 0x0010(a2)             # 00000010
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_8004F8AC
    addiu   s0, s0, 0x0004             # s0 = 0000000C
    lw      v0, 0x0000(a2)             # 00000000
    or      a0, s2, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8004F890
    nop
    lw      t0, 0x0130(v0)             # 00000130
    beql    t0, $zero, lbl_8004F8AC
    addiu   s0, s0, 0x0004             # s0 = 00000010
lbl_8004F890:
    jal     func_8004F6E4
    or      a1, s1, $zero              # a1 = 00000000
    lh      t1, 0x0000(s1)             # 00000000
    sll     t2, t1,  2
    addu    v1, s1, t2
    addiu   v1, v1, 0x0004             # v1 = 00000004
    addiu   s0, s0, 0x0004             # s0 = 00000014
lbl_8004F8AC:
    sltu    $at, s0, v1
    bnel    $at, $zero, lbl_8004F85C
    lw      a2, 0x0000(s0)             # 00000014
    or      a0, s2, $zero              # a0 = 00000000
lbl_8004F8BC:
    jal     func_8004F610
    or      a1, s1, $zero              # a1 = 00000000
lbl_8004F8C4:
    lw      $ra, 0x0024($sp)
lbl_8004F8C8:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8004F8DC:
# Get Mass Type
# A0 = Actor Mass
# V0 = 0 if mass == 0xFF, 1 if mass == 0xFE, or 2
    sw      a0, 0x0000($sp)
    andi    a0, a0, 0x00FF             # a0 = 00000000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     a0, $at, lbl_8004F8F8
    or      v0, a0, $zero              # v0 = 00000000
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8004F8F8:
    addiu   $at, $zero, 0x00FE         # $at = 000000FE
    bnel    v0, $at, lbl_8004F910
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004F90C:
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_8004F910:
    jr      $ra
    nop


func_8004F918:
# Handles Body Pushback
# A0 = CollisionBody* left
# A1 = CollisionBodyInfo* leftInfo
# A2 = vector3_f32* leftxyz (integers)
# A3 = CollisionBody* right
# SP+0x10 = CollisionBodyInfo* rightInfo
# SP+0x14 = vector3_f32* rightxyz (integers)
# SP+0x18 = f32 displacement
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0058($sp)
    lbu     t6, 0x0012(a0)             # 00000012
    lw      t1, 0x0000(a3)             # 00000000
    lw      t0, 0x0000(a0)             # 00000000
    ori     t7, t6, 0x0002             # t7 = 00000002
    sb      t7, 0x0012(a0)             # 00000012
    sw      t1, 0x000C(a0)             # 0000000C
    lbu     t8, 0x0017(a1)             # 00000017
    ori     t9, t8, 0x0002             # t9 = 00000002
    sb      t9, 0x0017(a1)             # 00000017
    lbu     t2, 0x0013(a3)             # 00000013
    andi    t3, t2, 0x0008             # t3 = 00000000
    beql    t3, $zero, lbl_8004F968
    lbu     t6, 0x0012(a3)             # 00000012
    lbu     t4, 0x0013(a0)             # 00000013
    ori     t5, t4, 0x0001             # t5 = 00000001
    sb      t5, 0x0013(a0)             # 00000013
    lbu     t6, 0x0012(a3)             # 00000012
lbl_8004F968:
    lw      v0, 0x0060($sp)
    sw      t0, 0x000C(a3)             # 0000000C
    ori     t7, t6, 0x0002             # t7 = 00000002
    sb      t7, 0x0012(a3)             # 00000012
    lbu     t8, 0x0017(v0)             # 00000017
    ori     t9, t8, 0x0002             # t9 = 00000002
    sb      t9, 0x0017(v0)             # 00000017
    lbu     t2, 0x0013(a0)             # 00000013
    andi    t3, t2, 0x0008             # t3 = 00000000
    beq     t3, $zero, lbl_8004F9A0
    nop
    lbu     t4, 0x0013(a3)             # 00000013
    ori     t5, t4, 0x0001             # t5 = 00000001
    sb      t5, 0x0013(a3)             # 00000013
lbl_8004F9A0:
    beql    t0, $zero, lbl_8004FC3C
    lw      $ra, 0x0014($sp)
    beql    t1, $zero, lbl_8004FC3C
    lw      $ra, 0x0014($sp)
    lbu     t6, 0x0012(a0)             # 00000012
    andi    t7, t6, 0x0004             # t7 = 00000000
    bnel    t7, $zero, lbl_8004FC3C
    lw      $ra, 0x0014($sp)
    lbu     t8, 0x0012(a3)             # 00000012
    andi    t9, t8, 0x0004             # t9 = 00000000
    bnel    t9, $zero, lbl_8004FC3C
    lw      $ra, 0x0014($sp)
    lbu     a0, 0x00AE(t0)             # 000000AE
    sw      t1, 0x0020($sp)
    jal     func_8004F8DC
    sw      t0, 0x0024($sp)
    lw      t1, 0x0020($sp)
    lbu     a0, 0x00AE(t1)             # 000000AE
    jal     func_8004F8DC
    sw      v0, 0x0018($sp)
    lw      t0, 0x0024($sp)
    lw      v1, 0x0018($sp)
    lw      t1, 0x0020($sp)
    lbu     t2, 0x00AE(t0)             # 000000AE
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t2, $f4                    # $f4 = 0.00
    bgez    t2, lbl_8004FA1C
    cvt.s.w $f18, $f4
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f18, $f18, $f6
lbl_8004FA1C:
    lbu     t3, 0x00AE(t1)             # 000000AE
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t3, $f8                    # $f8 = 0.00
    bgez    t3, lbl_8004FA3C
    cvt.s.w $f10, $f8
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f10, $f10, $f4
lbl_8004FA3C:
    swc1    $f10, 0x0038($sp)
    lwc1    $f6, 0x0038($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x72B4($at)           # 801072B4
    add.s   $f2, $f18, $f6
    lui     $at, 0x3F80                # $at = 3F800000
    abs.s   $f0, $f2
    swc1    $f2, 0x0034($sp)
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_8004FA84
    lw      a0, 0x0064($sp)
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    swc1    $f18, 0x0038($sp)
    swc1    $f4, 0x0034($sp)
    lw      a0, 0x0064($sp)
lbl_8004FA84:
    lw      a1, 0x0058($sp)
    lwc1    $f10, 0x0000(a0)           # 00000000
    lwc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f8, 0x0008(a0)            # 00000008
    lwc1    $f4, 0x0008(a1)            # 00000008
    sub.s   $f14, $f10, $f6
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    sub.s   $f16, $f8, $f4
    mul.s   $f10, $f14, $f14
    nop
    mul.s   $f6, $f16, $f16
    add.s   $f0, $f10, $f6
    sqrt.s  $f0, $f0
    bne     v1, $zero, lbl_8004FAD8
    swc1    $f0, 0x0040($sp)
    beq     v0, $zero, lbl_8004FC38
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f12                  # $f12 = 1.00
    b       lbl_8004FB60
    lwc1    $f6, 0x0040($sp)
lbl_8004FAD8:
    bne     v1, a0, lbl_8004FB20
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $zero, lbl_8004FAF8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f12                # $f12 = 0.00
    b       lbl_8004FB60
    lwc1    $f6, 0x0040($sp)
lbl_8004FAF8:
    bne     v0, a0, lbl_8004FB10
    lui     $at, 0x3F80                # $at = 3F800000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    b       lbl_8004FB5C
    mov.s   $f2, $f12
lbl_8004FB10:
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f12                  # $f12 = 0.50
    b       lbl_8004FB60
    lwc1    $f6, 0x0040($sp)
lbl_8004FB20:
    bne     v0, $at, lbl_8004FB4C
    lwc1    $f4, 0x0034($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lwc1    $f10, 0x0038($sp)
    div.s   $f0, $f8, $f4
    mul.s   $f2, $f10, $f0
    nop
    mul.s   $f12, $f18, $f0
    b       lbl_8004FB5C
    nop
lbl_8004FB4C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f12                # $f12 = 0.00
    nop
lbl_8004FB5C:
    lwc1    $f6, 0x0040($sp)
lbl_8004FB60:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x72B8($at)           # 801072B8
    abs.s   $f0, $f6
    lwc1    $f18, 0x0068($sp)
    c.lt.s  $f0, $f8
    nop
    bc1tl   lbl_8004FBE4
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f18, 0x0068($sp)
    lwc1    $f4, 0x009C(t0)            # 0000009C
    div.s   $f0, $f18, $f6
    mul.s   $f14, $f14, $f0
    neg.s   $f10, $f14
    mul.s   $f16, $f16, $f0
    nop
    mul.s   $f8, $f10, $f2
    lwc1    $f10, 0x00A4(t0)           # 000000A4
    add.s   $f6, $f4, $f8
    neg.s   $f4, $f16
    swc1    $f6, 0x009C(t0)            # 0000009C
    mul.s   $f8, $f4, $f2
    add.s   $f6, $f10, $f8
    mul.s   $f10, $f14, $f12
    swc1    $f6, 0x00A4(t0)            # 000000A4
    lwc1    $f4, 0x009C(t1)            # 0000009C
    lwc1    $f6, 0x00A4(t1)            # 000000A4
    add.s   $f8, $f4, $f10
    mul.s   $f4, $f16, $f12
    swc1    $f8, 0x009C(t1)            # 0000009C
    add.s   $f10, $f6, $f4
    b       lbl_8004FC38
    swc1    $f10, 0x00A4(t1)           # 000000A4
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_8004FBE4:
    nop
    c.eq.s  $f18, $f8
    nop
    bc1tl   lbl_8004FC24
    lwc1    $f8, 0x009C(t0)            # 0000009C
    neg.s   $f4, $f18
    lwc1    $f6, 0x009C(t0)            # 0000009C
    mul.s   $f10, $f4, $f2
    add.s   $f8, $f6, $f10
    mul.s   $f6, $f18, $f12
    swc1    $f8, 0x009C(t0)            # 0000009C
    lwc1    $f4, 0x009C(t1)            # 0000009C
    add.s   $f10, $f4, $f6
    b       lbl_8004FC38
    swc1    $f10, 0x009C(t1)           # 0000009C
    lwc1    $f8, 0x009C(t0)            # 0000009C
lbl_8004FC24:
    sub.s   $f4, $f8, $f2
    swc1    $f4, 0x009C(t0)            # 0000009C
    lwc1    $f6, 0x009C(t1)            # 0000009C
    add.s   $f10, $f6, $f12
    swc1    $f10, 0x009C(t1)           # 0000009C
lbl_8004FC38:
    lw      $ra, 0x0014($sp)
lbl_8004FC3C:
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_8004FC48:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      $ra, 0x004C($sp)
    sw      s8, 0x0048($sp)
    sw      s7, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0088($sp)
    sw      a1, 0x008C($sp)
    sw      a2, 0x0090($sp)
    sw      a3, 0x0094($sp)
    lw      t6, 0x0090($sp)
    lw      t7, 0x0094($sp)
    sw      t6, 0x0084($sp)
    lw      v1, 0x0018(t6)             # 00000018
    or      s3, t7, $zero              # s3 = 00000000
    blezl   v1, lbl_8004FDEC
    lw      $ra, 0x004C($sp)
    lw      v0, 0x001C(t6)             # 0000001C
    beql    v0, $zero, lbl_8004FDEC
    lw      $ra, 0x004C($sp)
    lw      t8, 0x0018(t7)             # 00000018
    blezl   t8, lbl_8004FDEC
    lw      $ra, 0x004C($sp)
    lw      t9, 0x001C(t7)             # 0000001C
    sll     t0, v1,  6
    addu    t1, v0, t0
    beq     t9, $zero, lbl_8004FDE8
    sltu    $at, v0, t1
    beq     $at, $zero, lbl_8004FDE8
    or      s4, v0, $zero              # s4 = 00000000
    addiu   s8, $zero, 0x0001          # s8 = 00000001
    addiu   s7, $sp, 0x0074            # s7 = FFFFFFEC
    addiu   s6, $sp, 0x005C            # s6 = FFFFFFD4
    addiu   s5, $sp, 0x0068            # s5 = FFFFFFE0
    lbu     t2, 0x0017(s4)             # 00000017
lbl_8004FCE8:
    lw      t4, 0x0084($sp)
    lw      t7, 0x0094($sp)
    andi    t3, t2, 0x0001             # t3 = 00000000
    bnel    t3, $zero, lbl_8004FD14
    lw      t9, 0x0018(t7)             # 00000018
    lw      t6, 0x0018(t4)             # 00000018
    lw      t5, 0x001C(t4)             # 0000001C
    sll     t8, t6,  6
    b       lbl_8004FDD8
    addu    v0, t5, t8
    lw      t9, 0x0018(t7)             # 00000018
lbl_8004FD14:
    lw      s0, 0x001C(t7)             # 0000001C
    sll     t0, t9,  6
    addu    t1, s0, t0
    sltu    $at, s0, t1
    beql    $at, $zero, lbl_8004FDC8
    lw      t0, 0x0084($sp)
    lbu     t2, 0x0017(s0)             # 00000017
lbl_8004FD30:
    addiu   s1, s4, 0x0030             # s1 = 00000030
    or      a0, s1, $zero              # a0 = 00000030
    andi    t3, t2, 0x0001             # t3 = 00000000
    bne     t3, $zero, lbl_8004FD58
    addiu   s2, s0, 0x0030             # s2 = 00000030
    lw      t6, 0x0018(s3)             # 00000018
    lw      t4, 0x001C(s3)             # 0000001C
    sll     t5, t6,  6
    b       lbl_8004FDB4
    addu    v0, t4, t5
lbl_8004FD58:
    or      a1, s2, $zero              # a1 = 00000030
    jal     func_800A9B28
    or      a2, s7, $zero              # a2 = FFFFFFEC
    bne     v0, s8, lbl_8004FDA4
    or      a0, s5, $zero              # a0 = FFFFFFE0
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s1, $zero              # a1 = 00000030
    or      a0, s6, $zero              # a0 = FFFFFFD4
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s2, $zero              # a1 = 00000030
    lwc1    $f4, 0x0074($sp)
    lw      a0, 0x0090($sp)
    or      a1, s4, $zero              # a1 = 00000000
    or      a2, s5, $zero              # a2 = FFFFFFE0
    lw      a3, 0x0094($sp)
    sw      s0, 0x0010($sp)
    sw      s6, 0x0014($sp)
    jal     func_8004F918
    swc1    $f4, 0x0018($sp)
lbl_8004FDA4:
    lw      t7, 0x0018(s3)             # 00000018
    lw      t8, 0x001C(s3)             # 0000001C
    sll     t9, t7,  6
    addu    v0, t8, t9
lbl_8004FDB4:
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sltu    $at, s0, v0
    bnel    $at, $zero, lbl_8004FD30
    lbu     t2, 0x0017(s0)             # 00000057
    lw      t0, 0x0084($sp)
lbl_8004FDC8:
    lw      t2, 0x0018(t0)             # 00000018
    lw      t1, 0x001C(t0)             # 0000001C
    sll     t3, t2,  6
    addu    v0, t1, t3
lbl_8004FDD8:
    addiu   s4, s4, 0x0040             # s4 = 00000040
    sltu    $at, s4, v0
    bnel    $at, $zero, lbl_8004FCE8
    lbu     t2, 0x0017(s4)             # 00000057
lbl_8004FDE8:
    lw      $ra, 0x004C($sp)
lbl_8004FDEC:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    lw      s7, 0x0044($sp)
    lw      s8, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_8004FE18:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s8, 0x0048($sp)
    sw      s2, 0x0030($sp)
    or      s2, a3, $zero              # s2 = 00000000
    or      s8, a2, $zero              # s8 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s7, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0088($sp)
    sw      a1, 0x008C($sp)
    lw      v1, 0x0018(s8)             # 00000018
    or      s5, s8, $zero              # s5 = 00000000
    blezl   v1, lbl_8004FF4C
    lw      $ra, 0x004C($sp)
    lw      v0, 0x001C(s8)             # 0000001C
    beql    v0, $zero, lbl_8004FF4C
    lw      $ra, 0x004C($sp)
    lbu     t6, 0x0012(s2)             # 00000012
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_8004FF4C
    lw      $ra, 0x004C($sp)
    lbu     t8, 0x002F(s2)             # 0000002F
    sll     t0, v1,  6
    addu    t1, v0, t0
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_8004FF48
    sltu    $at, v0, t1
    beq     $at, $zero, lbl_8004FF48
    or      s0, v0, $zero              # s0 = 00000000
    addiu   s7, $sp, 0x0060            # s7 = FFFFFFD8
    addiu   s6, $sp, 0x006C            # s6 = FFFFFFE4
    lbu     t2, 0x0017(s0)             # 00000017
lbl_8004FEAC:
    addiu   s1, s0, 0x0030             # s1 = 00000030
    or      a0, s1, $zero              # a0 = 00000030
    andi    t3, t2, 0x0001             # t3 = 00000000
    bne     t3, $zero, lbl_8004FED4
    addiu   a1, s2, 0x0040             # a1 = 00000040
    lw      t5, 0x0018(s5)             # 00000018
    lw      t4, 0x001C(s5)             # 0000001C
    sll     t6, t5,  6
    b       lbl_8004FF38
    addu    v0, t4, t6
lbl_8004FED4:
    jal     func_800A9C20
    addiu   a2, $sp, 0x0078            # a2 = FFFFFFF0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8004FF28
    or      a0, s6, $zero              # a0 = FFFFFFE4
    or      a1, s1, $zero              # a1 = 00000030
    addiu   s3, s2, 0x0018             # s3 = 00000018
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   s4, s2, 0x0046             # s4 = 00000046
    or      a0, s7, $zero              # a0 = FFFFFFD8
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s4, $zero              # a1 = 00000046
    lwc1    $f4, 0x0078($sp)
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s6, $zero              # a2 = FFFFFFE4
    or      a3, s2, $zero              # a3 = 00000000
    sw      s3, 0x0010($sp)
    sw      s7, 0x0014($sp)
    jal     func_8004F918
    swc1    $f4, 0x0018($sp)
lbl_8004FF28:
    lw      t8, 0x0018(s5)             # 00000018
    lw      t7, 0x001C(s5)             # 0000001C
    sll     t9, t8,  6
    addu    v0, t7, t9
lbl_8004FF38:
    addiu   s0, s0, 0x0040             # s0 = 00000040
    sltu    $at, s0, v0
    bnel    $at, $zero, lbl_8004FEAC
    lbu     t2, 0x0017(s0)             # 00000057
lbl_8004FF48:
    lw      $ra, 0x004C($sp)
lbl_8004FF4C:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    lw      s7, 0x0044($sp)
    lw      s8, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_8004FF78:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a3, 0x0024($sp)
    or      a3, a2, $zero              # a3 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    jal     func_8004FE18
    lw      a2, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004FFA4:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s1, a3, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    lbu     t6, 0x0012(s0)             # 00000012
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80050064
    lw      $ra, 0x002C($sp)
    lbu     t8, 0x0012(s1)             # 00000012
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_80050064
    lw      $ra, 0x002C($sp)
    lbu     t0, 0x002F(s0)             # 0000002F
    andi    t1, t0, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_80050064
    lw      $ra, 0x002C($sp)
    lbu     t2, 0x002F(s1)             # 0000002F
    addiu   a0, s0, 0x0040             # a0 = 00000040
    addiu   a1, s1, 0x0040             # a1 = 00000040
    andi    t3, t2, 0x0001             # t3 = 00000000
    beql    t3, $zero, lbl_80050064
    lw      $ra, 0x002C($sp)
    jal     func_800A9DB0
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFF4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80050060
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFE8
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   a1, s0, 0x0046             # a1 = 00000046
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFDC
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   a1, s1, 0x0046             # a1 = 00000046
    lwc1    $f4, 0x004C($sp)
    addiu   t4, s1, 0x0018             # t4 = 00000018
    addiu   t5, $sp, 0x0034            # t5 = FFFFFFDC
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0018             # a1 = 00000018
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFE8
    or      a3, s1, $zero              # a3 = 00000000
    jal     func_8004F918
    swc1    $f4, 0x0018($sp)
lbl_80050060:
    lw      $ra, 0x002C($sp)
lbl_80050064:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_80050074:
    lbu     t6, 0x0012(a0)             # 00000012
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_80050090
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80050090:
    jr      $ra
    nop


func_80050098:
    lbu     v0, 0x0013(a1)             # 00000013
    lbu     t6, 0x0012(a0)             # 00000012
    and     t7, t6, v0
    andi    t8, t7, 0x0038             # t8 = 00000000
    beq     t8, $zero, lbl_800500EC
    nop
    lbu     v1, 0x0013(a0)             # 00000013
    lbu     t9, 0x0012(a1)             # 00000012
    andi    t2, v1, 0x0002             # t2 = 00000000
    and     t0, v1, t9
    andi    t1, t0, 0x0038             # t1 = 00000000
    beq     t1, $zero, lbl_800500EC
    nop
    beq     t2, $zero, lbl_800500D8
    andi    t3, v0, 0x0004             # t3 = 00000000
    bne     t3, $zero, lbl_800500EC
lbl_800500D8:
    andi    t4, v0, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_800500F4
    andi    t5, v1, 0x0004             # t5 = 00000000
    beql    t5, $zero, lbl_800500F8
    lw      t6, 0x0000(a1)             # 00000000
lbl_800500EC:
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800500F4:
    lw      t6, 0x0000(a1)             # 00000000
lbl_800500F8:
    lw      t7, 0x0000(a0)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, t7, lbl_80050110
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80050110:
    jr      $ra
    nop


func_80050118:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s4, 0x0028($sp)
    sw      s1, 0x001C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    lw      t6, 0x01C0(s1)             # 000001C0
    addiu   s2, s1, 0x01C4             # s2 = 000001C4
    lui     s5, 0x800F                 # s5 = 800F0000
    sll     t7, t6,  2
    addu    v0, s1, t7
    addiu   v0, v0, 0x01C4             # v0 = 000001C4
    sltu    $at, s2, v0
    beq     $at, $zero, lbl_80050280
    addiu   s5, s5, 0xFB4C             # s5 = 800EFB4C
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_8005016C:
    lw      a2, 0x0000(s2)             # 000001C4
    beq     a2, $zero, lbl_80050198
    nop
    jal     func_80050074
    or      a0, a2, $zero              # a0 = 00000000
    bnel    v0, s3, lbl_800501A4
    lw      t0, 0x01C0(s1)             # 000001C0
    lw      t8, 0x01C0(s1)             # 000001C0
    sll     t9, t8,  2
    addu    v0, s1, t9
    addiu   v0, v0, 0x01C4             # v0 = 000001C4
lbl_80050198:
    b       lbl_80050274
    addiu   s6, s2, 0x0004             # s6 = 000001C8
    lw      t0, 0x01C0(s1)             # 000001C0
lbl_800501A4:
    addiu   s6, s2, 0x0004             # s6 = 000001C8
    or      s0, s6, $zero              # s0 = 000001C8
    sll     t1, t0,  2
    addu    v0, s1, t1
    addiu   v0, v0, 0x01C4             # v0 = 00000388
    sltu    $at, s6, v0
    beql    $at, $zero, lbl_80050278
    sltu    $at, s6, v0
    lw      a3, 0x0000(s0)             # 000001C8
lbl_800501C8:
    beql    a3, $zero, lbl_800501F8
    lw      t2, 0x01C0(s1)             # 000001C0
    jal     func_80050074
    or      a0, a3, $zero              # a0 = 00000000
    beql    v0, s3, lbl_800501F8
    lw      t2, 0x01C0(s1)             # 000001C0
    lw      a0, 0x0000(s2)             # 000001C4
    jal     func_80050098
    lw      a1, 0x0000(s0)             # 000001C8
    bnel    v0, s3, lbl_8005020C
    lw      a2, 0x0000(s2)             # 000001C4
    lw      t2, 0x01C0(s1)             # 000001C0
lbl_800501F8:
    sll     t3, t2,  2
    addu    v0, s1, t3
    b       lbl_80050264
    addiu   v0, v0, 0x01C4             # v0 = 000001C4
    lw      a2, 0x0000(s2)             # 000001C4
lbl_8005020C:
    lw      a3, 0x0000(s0)             # 000001C8
    or      a0, s4, $zero              # a0 = 00000000
    lbu     t4, 0x0015(a2)             # 00000015
    lbu     t7, 0x0015(a3)             # 00000015
    sll     t5, t4,  4
    addu    t6, s5, t5
    sll     t8, t7,  2
    addu    t9, t6, t8
    lw      v0, 0x0000(t9)             # 00000000
    bne     v0, $zero, lbl_8005024C
    nop
    lw      t0, 0x01C0(s1)             # 000001C0
    sll     t1, t0,  2
    addu    v0, s1, t1
    b       lbl_80050264
    addiu   v0, v0, 0x01C4             # v0 = 00000388
lbl_8005024C:
    jalr    $ra, v0
    or      a1, s1, $zero              # a1 = 00000000
    lw      t2, 0x01C0(s1)             # 000001C0
    sll     t3, t2,  2
    addu    v0, s1, t3
    addiu   v0, v0, 0x01C4             # v0 = 000001C4
lbl_80050264:
    addiu   s0, s0, 0x0004             # s0 = 000001CC
    sltu    $at, s0, v0
    bnel    $at, $zero, lbl_800501C8
    lw      a3, 0x0000(s0)             # 000001CC
lbl_80050274:
    sltu    $at, s6, v0
lbl_80050278:
    bne     $at, $zero, lbl_8005016C
    or      s2, s6, $zero              # s2 = 000001C8
lbl_80050280:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800502A8:
# initializes "damage chart" part of actor
# Actor 0000, 0018, most enemies?
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xFB8C             # t6 = 800EFB8C
    lw      t8, 0x0000(t6)             # 800EFB8C
    sw      t8, 0x0000(a0)             # 00000000
    lw      t7, 0x0004(t6)             # 800EFB90
    sw      t7, 0x0004(a0)             # 00000004
    lw      t8, 0x0008(t6)             # 800EFB94
    sw      t8, 0x0008(a0)             # 00000008
    lw      t7, 0x000C(t6)             # 800EFB98
    sw      t7, 0x000C(a0)             # 0000000C
    lw      t8, 0x0010(t6)             # 800EFB9C
    sw      t8, 0x0010(a0)             # 00000010
    lw      t7, 0x0014(t6)             # 800EFBA0
    sw      t7, 0x0014(a0)             # 00000014
    lw      t8, 0x0018(t6)             # 800EFBA4
    sw      t8, 0x0018(a0)             # 00000018
    jr      $ra
    nop


func_800502F0:
# CollisionCheck, zeroes CollisionCheck portion of common Actor struct
# Zeroes variables related to enemies with damage chart collision data.
# Actor 0125
# A0 = ptr to Actor Instance + 0x98
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    sb      $zero, 0x0018(a0)          # 00000018
    sb      $zero, 0x0019(a0)          # 00000019
    sb      $zero, 0x001A(a0)          # 0000001A
    sb      $zero, 0x001B(a0)          # 0000001B
    swc1    $f0, 0x000C(a0)            # 0000000C
    swc1    $f0, 0x0008(a0)            # 00000008
    swc1    $f0, 0x0004(a0)            # 00000004
    jr      $ra
    nop


func_8005031C:
# initializes "damage chart" part of actor
# Actor 0095
    lbu     t6, 0x0000(a1)             # 00000000
    sb      t6, 0x0017(a0)             # 00000017
    lh      t7, 0x0002(a1)             # 00000002
    sh      t7, 0x0010(a0)             # 00000010
    lh      t8, 0x0004(a1)             # 00000004
    sh      t8, 0x0012(a0)             # 00000012
    lbu     t9, 0x0006(a1)             # 00000006
    sb      t9, 0x0016(a0)             # 00000016
    jr      $ra
    nop


func_80050344:
# initializes "damage chart" part of actor
# Actor 0095
    lbu     t6, 0x0000(a2)             # 00000000
    sw      a1, 0x0000(a0)             # 00000000
    sb      t6, 0x0017(a0)             # 00000017
    lh      t7, 0x0002(a2)             # 00000002
    sh      t7, 0x0010(a0)             # 00000010
    lh      t8, 0x0004(a2)             # 00000004
    sh      t8, 0x0012(a0)             # 00000012
    lbu     t9, 0x0006(a2)             # 00000006
    sb      t9, 0x0016(a0)             # 00000016
    jr      $ra
    nop


func_80050370:
# initializes "damage chart" part of actor
# Actor 0095
    lbu     t6, 0x0000(a2)             # 00000000
    sw      a1, 0x0000(a0)             # 00000000
    sb      t6, 0x0017(a0)             # 00000017
    lh      t7, 0x0002(a2)             # 00000002
    sh      t7, 0x0010(a0)             # 00000010
    lh      t8, 0x0004(a2)             # 00000004
    sh      t8, 0x0012(a0)             # 00000012
    lh      t9, 0x0006(a2)             # 00000006
    sh      t9, 0x0014(a0)             # 00000014
    lbu     t0, 0x0008(a2)             # 00000008
    sb      t0, 0x0016(a0)             # 00000016
    jr      $ra
    nop


func_800503A4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    jal     func_80049E10
    or      a0, a1, $zero              # a0 = 00000000
    lw      a0, 0x0018($sp)
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80050370
    lw      a2, 0x0020($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800503DC:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lw      v0, 0x0000(a2)             # 00000000
    beq     v0, $zero, lbl_80050594
    nop
    lbu     v1, 0x0011(a2)             # 00000011
    andi    t6, v1, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80050594
    nop
    lbu     a0, 0x0016(a3)             # 00000016
    andi    t7, a0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80050594
    andi    t8, a0, 0x0010             # t8 = 00000000
    bne     t8, $zero, lbl_80050594
    nop
    lw      a0, 0x0098(v0)             # 00000098
    or      a1, $zero, $zero           # a1 = 00000000
    bnel    a0, $zero, lbl_80050490
    lw      t3, 0x0024(a3)             # 00000024
    lw      t9, 0x0024(a3)             # 00000024
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    lbu     t1, 0x0005(t9)             # 00000005
    mtc1    t1, $f4                    # $f4 = 0.00
    bgez    t1, lbl_80050450
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80050450:
    lbu     t2, 0x000D(a3)             # 0000000D
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t2, $f10                   # $f10 = 0.00
    bgez    t2, lbl_80050470
    cvt.s.w $f16, $f10
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18
lbl_80050470:
    sub.s   $f0, $f6, $f16
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_800504D8
    andi    t8, v1, 0x0004             # t8 = 00000000
    b       lbl_800504D4
    mov.s   $f0, $f2
    lw      t3, 0x0024(a3)             # 00000024
lbl_80050490:
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   t0, $zero, 0x0020          # t0 = 00000020
    lw      v1, 0x0000(t3)             # 00000000
lbl_8005049C:
    beql    v1, a3, lbl_800504B4
    addu    t4, a0, a1
    addiu   a1, a1, 0x0001             # a1 = 00000001
    bne     a1, t0, lbl_8005049C
    srl     v1, v1,  1
    addu    t4, a0, a1
lbl_800504B4:
    lbu     a3, 0x0000(t4)             # 00000000
    andi    t5, a3, 0x000F             # t5 = 00000001
    mtc1    t5, $f4                    # $f4 = 0.00
    sra     t6, a3,  4
    andi    t7, t6, 0x000F             # t7 = 00000000
    sb      t7, 0x00B1(v0)             # 000000B1
    cvt.s.w $f0, $f4
    lbu     v1, 0x0011(a2)             # 00000011
lbl_800504D4:
    andi    t8, v1, 0x0004             # t8 = 00000000
lbl_800504D8:
    bne     t8, $zero, lbl_80050594
    nop
    lw      v0, 0x0000(a2)             # 00000000
    lui     $at, 0x4F80                # $at = 4F800000
    lbu     t9, 0x00B0(v0)             # 000000B0
    mtc1    t9, $f8                    # $f8 = 0.00
    bgez    t9, lbl_80050504
    cvt.s.w $f10, $f8
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f10, $f10, $f18
lbl_80050504:
    add.s   $f6, $f10, $f0
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t1, $f31
    ctc1    t2, $f31
    nop
    cvt.w.s $f16, $f6
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_8005057C
    mfc1    t2, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f16, $f6, $f16
    ctc1    t2, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80050570
    nop
    mfc1    t2, $f16
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80050588
    or      t2, t2, $at                # t2 = 80000000
lbl_80050570:
    b       lbl_80050588
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f16
lbl_8005057C:
    nop
    bltz    t2, lbl_80050570
    nop
lbl_80050588:
    ctc1    t1, $f31
    sb      t2, 0x00B0(v0)             # 000000B0
    nop
lbl_80050594:
    jr      $ra
    nop


func_8005059C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s2, 0x001C($sp)
    or      s2, a2, $zero              # s2 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s3, 0x0020($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lw      v0, 0x0018(s2)             # 00000018
    or      s3, s2, $zero              # s3 = 00000000
    blezl   v0, lbl_80050624
    lw      $ra, 0x002C($sp)
    lw      t6, 0x001C(s2)             # 0000001C
    beql    t6, $zero, lbl_80050624
    lw      $ra, 0x002C($sp)
    blez    v0, lbl_80050620
    or      s0, $zero, $zero           # s0 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    lw      t7, 0x001C(s2)             # 0000001C
lbl_800505F4:
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_800503DC
    addu    a3, t7, s1
    lw      t8, 0x0018(s3)             # 00000018
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   s1, s1, 0x0040             # s1 = 00000040
    slt     $at, s0, t8
    bnel    $at, $zero, lbl_800505F4
    lw      t7, 0x001C(s2)             # 0000001C
lbl_80050620:
    lw      $ra, 0x002C($sp)
lbl_80050624:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80050644:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800503DC
    addiu   a3, a2, 0x0018             # a3 = 00000018
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80050664:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s2, 0x001C($sp)
    or      s2, a2, $zero              # s2 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s3, 0x0020($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lw      t6, 0x0018(s2)             # 00000018
    or      s3, s2, $zero              # s3 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    blez    t6, lbl_800506D4
    or      s1, $zero, $zero           # s1 = 00000000
    lw      t7, 0x001C(s2)             # 0000001C
lbl_800506A8:
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_800503DC
    addu    a3, t7, s1
    lw      t8, 0x0018(s3)             # 00000018
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   s1, s1, 0x005C             # s1 = 0000005C
    slt     $at, s0, t8
    bnel    $at, $zero, lbl_800506A8
    lw      t7, 0x001C(s2)             # 0000001C
lbl_800506D4:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800506F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800503DC
    addiu   a3, a2, 0x0018             # a3 = 00000018
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80050718:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x001C($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s1, 0x0018($sp)
    lw      v1, 0x00CC(s0)             # 000000CC
    lui     s3, 0x800F                 # s3 = 800F0000
    addiu   s3, s3, 0xFBA8             # s3 = 800EFBA8
    blez    v1, lbl_800507BC
    or      s1, s0, $zero              # s1 = 00000000
    lw      a2, 0x00D0(s1)             # 000000D0
lbl_80050750:
    sll     t6, v1,  2
    bnel    a2, $zero, lbl_80050768
    lbu     t7, 0x0011(a2)             # 00000011
    b       lbl_800507AC
    addu    v0, t6, s0
    lbu     t7, 0x0011(a2)             # 00000011
lbl_80050768:
    sll     t9, v1,  2
    andi    t8, t7, 0x0040             # t8 = 00000000
    beql    t8, $zero, lbl_80050784
    lbu     t0, 0x0015(a2)             # 00000015
    b       lbl_800507AC
    addu    v0, t9, s0
    lbu     t0, 0x0015(a2)             # 00000015
lbl_80050784:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sll     t1, t0,  2
    addu    t2, s3, t1
    lw      t9, 0x0000(t2)             # 00000000
    jalr    $ra, t9
    nop
    lw      v1, 0x00CC(s0)             # 000000CC
    sll     t3, v1,  2
    addu    v0, t3, s0
lbl_800507AC:
    addiu   s1, s1, 0x0004             # s1 = 00000004
    sltu    $at, s1, v0
    bnel    $at, $zero, lbl_80050750
    lw      a2, 0x00D0(s1)             # 000000D4
lbl_800507BC:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800507D8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s4, 0x0024($sp)
    sw      s3, 0x0020($sp)
    or      s3, a2, $zero              # s3 = 00000000
    or      s4, a3, $zero              # s4 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s7, 0x0030($sp)
    sw      s6, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0018(s3)             # 00000018
    or      s1, s3, $zero              # s1 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    blez    t6, lbl_800508C0
    addiu   s7, $zero, 0x0001          # s7 = 00000001
    lui     s6, 0x8012                 # s6 = 80120000
    lui     s2, 0x8012                 # s2 = 80120000
    addiu   s2, s2, 0xA5B0             # s2 = 8011A5B0
    addiu   s6, s6, 0xA5BC             # s6 = 8011A5BC
    lw      s5, 0x0048($sp)
    lw      t7, 0x001C(s3)             # 0000001C
lbl_8005083C:
    addu    v0, t7, s0
    lbu     t8, 0x0017(v0)             # 00000017
    andi    t9, t8, 0x0001             # t9 = 00000000
    bnel    t9, $zero, lbl_80050860
    lw      t1, 0x0000(s4)             # 00000000
    lw      v0, 0x0018(s1)             # 00000018
    b       lbl_800508B0
    sll     v1, v0,  6
    lw      t1, 0x0000(s4)             # 00000000
lbl_80050860:
    addiu   a0, v0, 0x0030             # a0 = 00000030
    or      a1, s2, $zero              # a1 = 8011A5B0
    sw      t1, 0x0000(s2)             # 8011A5B0
    lw      t0, 0x0004(s4)             # 00000004
    sw      t0, 0x0004(s2)             # 8011A5B4
    lw      t1, 0x0008(s4)             # 00000008
    sw      t1, 0x0008(s2)             # 8011A5B8
    lw      t3, 0x0000(s5)             # 00000000
    sw      t3, 0x0000(s6)             # 8011A5BC
    lw      t2, 0x0004(s5)             # 00000004
    sw      t2, 0x0004(s6)             # 8011A5C0
    lw      t3, 0x0008(s5)             # 00000008
    jal     func_800A847C
    sw      t3, 0x0008(s6)             # 8011A5C4
    bnel    v0, s7, lbl_800508AC
    lw      v0, 0x0018(s1)             # 00000018
    b       lbl_800508C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      v0, 0x0018(s1)             # 00000018
lbl_800508AC:
    sll     v1, v0,  6
lbl_800508B0:
    addiu   s0, s0, 0x0040             # s0 = 00000040
    slt     $at, s0, v1
    bnel    $at, $zero, lbl_8005083C
    lw      t7, 0x001C(s3)             # 0000001C
lbl_800508C0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800508C4:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    lw      s6, 0x002C($sp)
    lw      s7, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800508F0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a1, 0x0024($sp)
    or      a1, a3, $zero              # a1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a2, 0x0028($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0028($sp)
    lui     a3, 0x8012                 # a3 = 80120000
    lbu     t7, 0x002F(t6)             # 0000002F
    addiu   a3, a3, 0x8E70             # a3 = 80118E70
    lw      a2, 0x0030($sp)
    andi    t8, t7, 0x0001             # t8 = 00000000
    bne     t8, $zero, lbl_80050934
    addiu   a0, a0, 0x0040             # a0 = 00000040
    b       lbl_80050958
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80050934:
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t9, t9, 0x8E80             # t9 = 80118E80
    jal     func_800A8CA0
    sw      t9, 0x0010($sp)
    beql    v0, $zero, lbl_80050958
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80050958
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80050958:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80050968:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s2, 0x0028($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s7, a0, $zero              # s7 = 00000000
    or      s8, a2, $zero              # s8 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a3, 0x0054($sp)
    lw      t6, 0x01C0(s2)             # 000001C0
    addiu   s1, s2, 0x01C4             # s1 = 000001C4
    or      s4, $zero, $zero           # s4 = 00000000
    sll     t7, t6,  2
    addu    t8, s2, t7
    addiu   t9, t8, 0x01C4             # t9 = 000001C4
    sltu    $at, s1, t9
    beq     $at, $zero, lbl_80050A7C
    lui     s6, 0x800F                 # s6 = 800F0000
    addiu   s6, s6, 0xFBB8             # s6 = 800EFBB8
    lw      s5, 0x0058($sp)
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    lw      s0, 0x005C($sp)
lbl_800509D8:
    jal     func_80050074
    lw      a0, 0x0000(s1)             # 000001C4
    beq     v0, s3, lbl_80050A5C
    or      a1, $zero, $zero           # a1 = 00000000
    blez    s0, lbl_80050A1C
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t0, 0x0000(s1)             # 000001C4
    or      v1, s5, $zero              # v1 = 00000000
    lw      a0, 0x0000(t0)             # 00000000
lbl_800509FC:
    lw      t1, 0x0000(v1)             # 00000000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bne     a0, t1, lbl_80050A14
    nop
    b       lbl_80050A1C
    or      a1, s3, $zero              # a1 = 00000001
lbl_80050A14:
    bne     v0, s0, lbl_800509FC
    addiu   v1, v1, 0x0004             # v1 = 00000004
lbl_80050A1C:
    beql    a1, s3, lbl_80050A60
    lw      t6, 0x01C0(s2)             # 000001C0
    lw      a2, 0x0000(s1)             # 000001C4
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    lbu     t2, 0x0015(a2)             # 00000015
    lw      t5, 0x0054($sp)
    sll     t3, t2,  2
    addu    t4, s6, t3
    lw      v0, 0x0000(t4)             # 00000000
    beq     v0, $zero, lbl_80050A5C
    or      a3, s8, $zero              # a3 = 00000000
    jalr    $ra, v0
    sw      t5, 0x0010($sp)
    bne     v0, $zero, lbl_80050A7C
    or      s4, v0, $zero              # s4 = 00000000
lbl_80050A5C:
    lw      t6, 0x01C0(s2)             # 000001C0
lbl_80050A60:
    addiu   s1, s1, 0x0004             # s1 = 000001C8
    sll     t7, t6,  2
    addu    t8, s2, t7
    addiu   t9, t8, 0x01C4             # t9 = 000001C4
    sltu    $at, s1, t9
    bne     $at, $zero, lbl_800509D8
    nop
lbl_80050A7C:
    or      v0, s4, $zero              # v0 = 00000000
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    lw      s7, 0x003C($sp)
    lw      s8, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80050AB0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80050968
    sw      $zero, 0x0014($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80050AD4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lw      t6, 0x0030($sp)
    lw      t7, 0x0034($sp)
    sw      t6, 0x0010($sp)
    jal     func_80050968
    sw      t7, 0x0014($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80050B00:
# Set Cylinder Coords to Actor Coords (Collision Type 1)
# Coordinates saved at Struct + 0x46
# A0 = Actor*
# A1 = CollisionBody*
    lwc1    $f4, 0x0024(a0)            # 00000024
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x0046(a1)             # 00000046
    lwc1    $f8, 0x0028(a0)            # 00000028
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x0048(a1)             # 00000048
    lwc1    $f16, 0x002C(a0)           # 0000002C
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sh      t1, 0x004A(a1)             # 0000004A
    jr      $ra
    nop


func_80050B44:
    lh      t6, 0x0000(a1)             # 00000000
    sh      t6, 0x0046(a0)             # 00000046
    lh      t7, 0x0002(a1)             # 00000002
    sh      t7, 0x0048(a0)             # 00000048
    lh      t8, 0x0004(a1)             # 00000004
    sh      t8, 0x004A(a0)             # 0000004A
    jr      $ra
    nop


func_80050B64:
# Update CollisionBody Type 3 Quad
# A0 = CollisionBody* (type 3 body)
# A1 = vector3_f32* pointA
# A2 = vector3_f32* pointB
# A3 = vector3_f32* pointC
# SP+0x10 vector3_f32* pointD
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    lw      a0, 0x0020($sp)
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, a0, 0x0058             # a0 = 00000058
    lw      a0, 0x0020($sp)
    lw      a1, 0x0030($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, a0, 0x0064             # a0 = 00000064
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    addiu   a0, a0, 0x0040             # a0 = 00000040
    jal     func_80063CAC              # Vec3f_Copy
    sw      a0, 0x001C($sp)
    lw      a0, 0x0020($sp)
    lw      a1, 0x0028($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, a0, 0x004C             # a0 = 0000004C
    jal     func_8004B714
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80050BD4:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    lw      t8, 0x004C($sp)
    lw      t6, 0x0048($sp)
    lw      a1, 0x0050($sp)
    sll     t9, t8,  2
    subu    t9, t9, t8
    lw      t7, 0x001C(t6)             # 0000001C
    sll     t9, t9,  3
    subu    t9, t9, t8
    sll     t9, t9,  2
    addu    s0, t7, t9
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, s0, 0x0028             # a0 = 00000028
    addiu   a0, s0, 0x0034             # a0 = 00000034
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0054($sp)
    addiu   a0, s0, 0x0040             # a0 = 00000040
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0058($sp)
    addiu   t0, $sp, 0x003C            # t0 = FFFFFFF4
    addiu   t1, $sp, 0x0038            # t1 = FFFFFFF0
    addiu   t2, $sp, 0x0034            # t2 = FFFFFFEC
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    lw      a0, 0x0050($sp)
    lw      a1, 0x0054($sp)
    lw      a2, 0x0058($sp)
    jal     func_800A67DC
    addiu   a3, $sp, 0x0040            # a3 = FFFFFFF8
    lwc1    $f4, 0x0040($sp)
    swc1    $f4, 0x004C(s0)            # 0000004C
    lwc1    $f6, 0x003C($sp)
    swc1    $f6, 0x0050(s0)            # 00000050
    lwc1    $f8, 0x0038($sp)
    swc1    $f8, 0x0054(s0)            # 00000054
    lwc1    $f10, 0x0034($sp)
    swc1    $f10, 0x0058(s0)           # 00000058
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80050C94:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      t8, 0x0020($sp)
    lw      t6, 0x001C($sp)
    or      a2, a3, $zero              # a2 = 00000000
    sll     t9, t8,  2
    subu    t9, t9, t8
    lw      t7, 0x001C(t6)             # 0000001C
    sll     t9, t9,  3
    subu    t9, t9, t8
    sll     t9, t9,  2
    addu    v0, t7, t9
    jal     func_8004AE74
    addiu   a1, v0, 0x0028             # a1 = 00000028
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80050CE4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s6, 0x0030($sp)
    sw      s2, 0x0020($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s6, a0, $zero              # s6 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lw      v0, 0x0018(s2)             # 00000018
    or      s3, $zero, $zero           # s3 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    blez    v0, lbl_80050E40
    lui     s5, 0x8012                 # s5 = 80120000
    lui     s4, 0x8012                 # s4 = 80120000
    addiu   s4, s4, 0x8F70             # s4 = 80118F70
    addiu   s5, s5, 0x8F80             # s5 = 80118F80
lbl_80050D30:
    lw      t6, 0x001C(s2)             # 0000001C
    addu    s1, t6, s0
    lbu     t7, 0x003C(s1)             # 0000003C
    bnel    s6, t7, lbl_80050E34
    addiu   s3, s3, 0x0001             # s3 = 00000001
    lh      t8, 0x0028(s1)             # 00000028
    lui     $at, 0x8012                # $at = 80120000
    or      a0, s4, $zero              # a0 = 80118F70
    mtc1    t8, $f4                    # $f4 = 0.00
    or      a1, s5, $zero              # a1 = 80118F80
    cvt.s.w $f6, $f4
    swc1    $f6, -0x7090($at)          # 80118F70
    lw      t9, 0x001C(s2)             # 0000001C
    addu    t0, t9, s0
    lh      t1, 0x002A(t0)             # 0000002A
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, -0x708C($at)         # 80118F74
    lw      t2, 0x001C(s2)             # 0000001C
    lui     $at, 0x8012                # $at = 80120000
    addu    t3, t2, s0
    lh      t4, 0x002C(t3)             # 0000002C
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jal     func_800AB958
    swc1    $f18, -0x7088($at)         # 80118F78
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, -0x7080($at)          # 80118F80
    lw      t7, 0x001C(s2)             # 0000001C
    trunc.w.s $f6, $f4
    addu    t8, t7, s0
    mfc1    t6, $f6
    nop
    sh      t6, 0x0030(t8)             # 00000030
    lwc1    $f8, -0x707C($at)          # 80118F84
    lw      t1, 0x001C(s2)             # 0000001C
    lui     $at, 0x8012                # $at = 80120000
    trunc.w.s $f10, $f8
    addu    t2, t1, s0
    mfc1    t0, $f10
    nop
    sh      t0, 0x0032(t2)             # 00000032
    lwc1    $f16, -0x7078($at)         # 80118F88
    lw      t5, 0x001C(s2)             # 0000001C
    trunc.w.s $f18, $f16
    addu    t7, t5, s0
    mfc1    t4, $f18
    nop
    sh      t4, 0x0034(t7)             # 00000034
    lw      t6, 0x001C(s2)             # 0000001C
    addu    s1, t6, s0
    lh      t8, 0x002E(s1)             # 0000002E
    lwc1    $f4, 0x0038(s1)            # 00000038
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f10, $f4, $f8
    trunc.w.s $f16, $f10
    mfc1    t1, $f16
    nop
    sh      t1, 0x0036(s1)             # 00000036
    lw      v0, 0x0018(s2)             # 00000018
    addiu   s3, s3, 0x0001             # s3 = 00000002
lbl_80050E34:
    slt     $at, s3, v0
    bne     $at, $zero, lbl_80050D30
    addiu   s0, s0, 0x0040             # s0 = 00000040
lbl_80050E40:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80050E68:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x8F90             # v0 = 80118F90
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   v1, $zero, 0x0080          # v1 = 00000080
    addiu   t0, $zero, 0x0040          # t0 = 00000040
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    lw      t6, 0x002C($sp)
    lui     $at, 0x8012                # $at = 80120000
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    lwc1    $f4, 0x0000(t6)            # 00000000
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    trunc.w.s $f6, $f4
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    t8, $f6
    nop
    sh      t8, -0x7070($at)           # 80118F90
    lwc1    $f8, 0x0004(t6)            # 00000004
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    sh      t3, -0x706E($at)           # 80118F92
    lwc1    $f16, 0x0008(t6)           # 00000008
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0010($sp)
    trunc.w.s $f18, $f16
    sw      v0, 0x0014($sp)
    mfc1    t5, $f18
    nop
    sh      t5, -0x706C($at)           # 80118F94
    lui     $at, 0x8012                # $at = 80120000
    sw      t7, -0x6BDC($at)           # 80119424
    lui     $at, 0x8012                # $at = 80120000
    sw      t8, -0x6BD8($at)           # 80119428
    sb      v1, 0x049C(v0)             # 8011942C
    sb      $zero, 0x049D(v0)          # 8011942D
    sb      t0, 0x049E(v0)             # 8011942E
    sb      t1, 0x049F(v0)             # 8011942F
    sb      v1, 0x04A0(v0)             # 80119430
    sb      $zero, 0x04A1(v0)          # 80119431
    sb      t0, 0x04A2(v0)             # 80119432
    sb      t1, 0x04A3(v0)             # 80119433
    sb      t1, 0x04A4(v0)             # 80119434
    sb      v1, 0x04A5(v0)             # 80119435
    sb      $zero, 0x04A6(v0)          # 80119436
    sb      t1, 0x04A7(v0)             # 80119437
    sb      t1, 0x04A8(v0)             # 80119438
    sb      v1, 0x04A9(v0)             # 80119439
    sb      $zero, 0x04AA(v0)          # 8011943A
    sb      t1, 0x04AB(v0)             # 8011943B
    sb      t0, 0x04AC(v0)             # 8011943C
    sb      $zero, 0x04AD(v0)          # 8011943D
    sb      t2, 0x04AE(v0)             # 8011943E
    sb      $zero, 0x04AF(v0)          # 8011943F
    sb      t0, 0x04B0(v0)             # 80119440
    sb      $zero, 0x04B1(v0)          # 80119441
    sb      t2, 0x04B2(v0)             # 80119442
    sb      $zero, 0x04B3(v0)          # 80119443
    sb      v1, 0x04B4(v0)             # 80119444
    sb      $zero, 0x04B5(v0)          # 80119445
    sb      t0, 0x04B6(v0)             # 80119446
    sb      $zero, 0x04B7(v0)          # 80119447
    sb      v1, 0x04B8(v0)             # 80119448
    sb      $zero, 0x04B9(v0)          # 80119449
    sb      t0, 0x04BA(v0)             # 8011944A
    sb      $zero, 0x04BB(v0)          # 8011944B
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x6BB4($at)        # 8011944C
    lui     $at, 0x8012                # $at = 80120000
    sw      t9, -0x6BB0($at)           # 80119450
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f4, -0x6BE4($at)          # 8011941C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    lui     $at, 0x8012                # $at = 80120000
    jal     func_8001AA5C
    swc1    $f6, -0x6BE0($at)          # 80119420
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80050FC8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x9468             # v0 = 80119468
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   v1, $zero, 0x0064          # v1 = 00000064
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    lw      t6, 0x002C($sp)
    lui     $at, 0x8012                # $at = 80120000
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    lwc1    $f4, 0x0000(t6)            # 00000000
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    trunc.w.s $f6, $f4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    t8, $f6
    nop
    sh      t8, -0x6B98($at)           # 80119468
    lwc1    $f8, 0x0004(t6)            # 00000004
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    trunc.w.s $f10, $f8
    mfc1    t2, $f10
    nop
    sh      t2, -0x6B96($at)           # 8011946A
    lwc1    $f16, 0x0008(t6)           # 00000008
    sw      v0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    trunc.w.s $f18, $f16
    mfc1    t4, $f18
    nop
    sh      t4, -0x6B94($at)           # 8011946C
    lui     $at, 0x8012                # $at = 80120000
    sw      t5, -0x6704($at)           # 801198FC
    lui     $at, 0x8012                # $at = 80120000
    sw      t7, -0x6700($at)           # 80119900
    sb      t1, 0x049C(v0)             # 80119904
    sb      t1, 0x049D(v0)             # 80119905
    sb      t1, 0x049E(v0)             # 80119906
    sb      t1, 0x049F(v0)             # 80119907
    sb      v1, 0x04A0(v0)             # 80119908
    sb      v1, 0x04A1(v0)             # 80119909
    sb      v1, 0x04A2(v0)             # 8011990A
    sb      v1, 0x04A3(v0)             # 8011990B
    sb      v1, 0x04A4(v0)             # 8011990C
    sb      v1, 0x04A5(v0)             # 8011990D
    sb      v1, 0x04A6(v0)             # 8011990E
    sb      v1, 0x04A7(v0)             # 8011990F
    sb      v1, 0x04A8(v0)             # 80119910
    sb      v1, 0x04A9(v0)             # 80119911
    sb      v1, 0x04AA(v0)             # 80119912
    sb      v1, 0x04AB(v0)             # 80119913
    sb      t0, 0x04AC(v0)             # 80119914
    sb      t0, 0x04AD(v0)             # 80119915
    sb      t0, 0x04AE(v0)             # 80119916
    sb      t0, 0x04AF(v0)             # 80119917
    sb      t0, 0x04B0(v0)             # 80119918
    sb      t0, 0x04B1(v0)             # 80119919
    sb      t0, 0x04B2(v0)             # 8011991A
    sb      t0, 0x04B3(v0)             # 8011991B
    sb      t0, 0x04B4(v0)             # 8011991C
    sb      t0, 0x04B5(v0)             # 8011991D
    sb      t0, 0x04B6(v0)             # 8011991E
    sb      t0, 0x04B7(v0)             # 8011991F
    sb      $zero, 0x04B8(v0)          # 80119920
    sb      $zero, 0x04B9(v0)          # 80119921
    sb      $zero, 0x04BA(v0)          # 80119922
    sb      $zero, 0x04BB(v0)          # 80119923
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x66DC($at)        # 80119924
    lui     $at, 0x8012                # $at = 80120000
    sw      t8, -0x66D8($at)           # 80119928
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f4, -0x670C($at)          # 801198F4
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    lui     $at, 0x8012                # $at = 80120000
    jal     func_8001AA5C
    swc1    $f6, -0x6708($at)          # 801198F8
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80051124:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lui     $at, 0x800F                # $at = 800F0000
    lui     t8, 0x800F                 # t8 = 800F0000
    lwc1    $f4, 0x0000(t6)            # 00000000
    addiu   t8, t8, 0xFBC8             # t8 = 800EFBC8
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    trunc.w.s $f6, $f4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    t4, $f6
    nop
    sh      t4, -0x0436($at)           # 800EFBCA
    lwc1    $f8, 0x0004(t6)            # 00000004
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    sh      t7, -0x0434($at)           # 800EFBCC
    lwc1    $f16, 0x0008(t6)           # 00000008
    sw      t8, 0x0014($sp)
    sw      t1, 0x0010($sp)
    trunc.w.s $f18, $f16
    mfc1    t6, $f18
    nop
    sh      t6, -0x0432($at)           # 800EFBCE
    lui     $at, 0x800F                # $at = 800F0000
    sh      t4, -0x040A($at)           # 800EFBF6
    sh      t7, -0x0408($at)           # 800EFBF8
    jal     func_8001AA5C
    sh      t6, -0x0406($at)           # 800EFBFA
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800511B8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    jal     func_80051124
    nop
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1808          # a0 = 00001808
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80051204:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    jal     func_80051124
    nop
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1808          # a0 = 00001808
    lw      a1, 0x0028($sp)
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80051250:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800511B8
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80051270:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    lw      t6, 0x002C($sp)
    lui     $at, 0x800F                # $at = 800F0000
    lui     t8, 0x800F                 # t8 = 800F0000
    lwc1    $f4, 0x0000(t6)            # 00000000
    addiu   t8, t8, 0xFC08             # t8 = 800EFC08
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    trunc.w.s $f6, $f4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    t4, $f6
    nop
    sh      t4, -0x03F6($at)           # 800EFC0A
    lwc1    $f8, 0x0004(t6)            # 00000004
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    sh      t7, -0x03F4($at)           # 800EFC0C
    lwc1    $f16, 0x0008(t6)           # 00000008
    sw      t8, 0x0014($sp)
    sw      t1, 0x0010($sp)
    trunc.w.s $f18, $f16
    mfc1    t6, $f18
    nop
    sh      t6, -0x03F2($at)           # 800EFC0E
    lui     $at, 0x800F                # $at = 800F0000
    sh      t4, -0x03CA($at)           # 800EFC36
    sh      t7, -0x03C8($at)           # 800EFC38
    jal     func_8001AA5C
    sh      t6, -0x03C6($at)           # 800EFC3A
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    sw      t3, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1837          # a0 = 00001837
    lw      a1, 0x0030($sp)
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80051330:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    swc1    $f12, 0x0078($sp)
    swc1    $f14, 0x007C($sp)
    sw      a2, 0x0080($sp)
    lw      a0, 0x0088($sp)
    lw      a1, 0x008C($sp)
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0000(a3)            # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x006C($sp)
    lwc1    $f4, 0x0004(a3)            # 00000004
    lwc1    $f10, 0x0004(a0)           # 00000004
    lwc1    $f8, 0x0080($sp)
    sub.s   $f6, $f10, $f4
    sub.s   $f14, $f6, $f8
    swc1    $f14, 0x0070($sp)
    lwc1    $f6, 0x0008(a3)            # 00000008
    lwc1    $f4, 0x0008(a0)            # 00000008
    sub.s   $f4, $f4, $f6
    swc1    $f4, 0x0074($sp)
    lwc1    $f4, 0x0000(a3)            # 00000000
    lwc1    $f6, 0x0000(a1)            # 00000000
    sub.s   $f6, $f6, $f4
    swc1    $f6, 0x0060($sp)
    lwc1    $f6, 0x0004(a3)            # 00000004
    lwc1    $f4, 0x0004(a1)            # 00000004
    sub.s   $f4, $f4, $f6
    sub.s   $f6, $f4, $f8
    swc1    $f6, 0x0064($sp)
    lwc1    $f8, 0x0008(a3)            # 00000008
    lwc1    $f4, 0x0008(a1)            # 00000008
    sub.s   $f4, $f4, $f8
    lwc1    $f8, 0x0060($sp)
    swc1    $f4, 0x0068($sp)
    lwc1    $f4, 0x006C($sp)
    sub.s   $f16, $f8, $f4
    sub.s   $f8, $f6, $f14
    lwc1    $f6, 0x0068($sp)
    swc1    $f16, 0x0054($sp)
    swc1    $f8, 0x0018($sp)
    swc1    $f8, 0x0058($sp)
    lwc1    $f8, 0x0074($sp)
    sub.s   $f18, $f6, $f8
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f8, 0x007C($sp)
    c.lt.s  $f6, $f14
    swc1    $f18, 0x005C($sp)
    bc1f    lbl_800513FC
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800513FC:
    beql    v0, $zero, lbl_8005144C
    mtc1    $zero, $f8                 # $f8 = 0.00
    c.lt.s  $f14, $f8
    lwc1    $f8, 0x0074($sp)
    lwc1    $f6, 0x0074($sp)
    bc1fl   lbl_8005144C
    mtc1    $zero, $f8                 # $f8 = 0.00
    mul.s   $f10, $f4, $f4
    nop
    mul.s   $f4, $f6, $f8
    lwc1    $f6, 0x0078($sp)
    add.s   $f0, $f10, $f4
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_80051448
    nop
    b       lbl_80051A2C
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_80051448:
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_8005144C:
    lwc1    $f10, 0x0064($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    lwc1    $f4, 0x007C($sp)
    c.lt.s  $f8, $f10
    nop
    bc1f    lbl_8005146C
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8005146C:
    beql    v1, $zero, lbl_800514B8
    lwc1    $f6, 0x0074($sp)
    c.lt.s  $f10, $f4
    lwc1    $f2, 0x0060($sp)
    lwc1    $f12, 0x0068($sp)
    bc1fl   lbl_800514B8
    lwc1    $f6, 0x0074($sp)
    mul.s   $f6, $f2, $f2
    lwc1    $f10, 0x0078($sp)
    mul.s   $f8, $f12, $f12
    add.s   $f0, $f6, $f8
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_800514B8
    lwc1    $f6, 0x0074($sp)
    b       lbl_80051A2C
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    lwc1    $f6, 0x0074($sp)
lbl_800514B8:
    lwc1    $f4, 0x006C($sp)
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f8, $f6, $f6
    nop
    mul.s   $f10, $f4, $f4
    add.s   $f10, $f10, $f8
    lwc1    $f8, 0x0078($sp)
    mul.s   $f8, $f8, $f8
    sub.s   $f12, $f10, $f8
    mul.s   $f10, $f16, $f16
    nop
    mul.s   $f8, $f18, $f18
    swc1    $f12, 0x0038($sp)
    add.s   $f2, $f10, $f8
    lwc1    $f10, 0x72BC($at)          # 801072BC
    abs.s   $f0, $f2
    c.lt.s  $f0, $f10
    nop
    bc1t    lbl_800515B4
    nop
    add.s   $f8, $f16, $f16
    lui     $at, 0x4080                # $at = 40800000
    mul.s   $f10, $f8, $f4
    add.s   $f8, $f18, $f18
    mul.s   $f4, $f8, $f6
    mtc1    $at, $f8                   # $f8 = 4.00
    add.s   $f14, $f10, $f4
    lwc1    $f10, 0x0038($sp)
    mul.s   $f0, $f14, $f14
    nop
    mul.s   $f6, $f8, $f2
    nop
    mul.s   $f12, $f6, $f10
    c.lt.s  $f0, $f12
    nop
    bc1f    lbl_80051554
    nop
    b       lbl_80051A2C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80051554:
    sub.s   $f16, $f0, $f12
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    add.s   $f8, $f2, $f2
    c.lt.s  $f18, $f16
    sqrt.s  $f0, $f16
    bc1f    lbl_8005157C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    b       lbl_80051580
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8005157C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80051580:
    sub.s   $f4, $f0, $f14
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    div.s   $f16, $f4, $f8
    swc1    $f16, 0x0050($sp)
    bne     v0, t0, lbl_800515AC
    lwc1    $f16, 0x0050($sp)
    neg.s   $f6, $f14
    add.s   $f4, $f2, $f2
    sub.s   $f10, $f6, $f0
    div.s   $f12, $f10, $f4
    swc1    $f12, 0x004C($sp)
lbl_800515AC:
    b       lbl_8005172C
    lwc1    $f12, 0x004C($sp)
lbl_800515B4:
    add.s   $f8, $f16, $f16
    lwc1    $f6, 0x006C($sp)
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f4, $f18, $f18
    mul.s   $f10, $f8, $f6
    lwc1    $f8, 0x0074($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    mul.s   $f6, $f4, $f8
    lwc1    $f4, 0x72C0($at)           # 801072C0
    add.s   $f14, $f10, $f6
    abs.s   $f0, $f14
    c.lt.s  $f0, $f4
    nop
    bc1tl   lbl_80051610
    mtc1    $zero, $f10                # $f10 = 0.00
    neg.s   $f8, $f12
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
    div.s   $f16, $f8, $f14
    b       lbl_8005172C
    lwc1    $f12, 0x004C($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_80051610:
    nop
    c.le.s  $f12, $f10
    nop
    bc1f    lbl_80051724
    nop
    beq     v0, $zero, lbl_8005164C
    or      a0, v0, $zero              # a0 = 00000000
    lwc1    $f6, 0x0070($sp)
    lwc1    $f4, 0x007C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    c.lt.s  $f6, $f4
    nop
    bc1fl   lbl_80051650
    or      a1, a0, $zero              # a1 = 00000000
    addiu   a0, $zero, 0x0001          # a0 = 00000001
lbl_8005164C:
    or      a1, a0, $zero              # a1 = 00000001
lbl_80051650:
    beq     v1, $zero, lbl_80051678
    or      a0, v1, $zero              # a0 = 00000001
    lwc1    $f8, 0x0064($sp)
    lwc1    $f10, 0x007C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    c.lt.s  $f8, $f10
    nop
    bc1f    lbl_80051678
    nop
    addiu   a0, $zero, 0x0001          # a0 = 00000001
lbl_80051678:
    beq     a1, $zero, lbl_800516CC
    nop
    beq     a0, $zero, lbl_800516CC
    lw      v1, 0x0090($sp)
    addiu   t6, $sp, 0x006C            # t6 = FFFFFFF4
    lw      t8, 0x0000(t6)             # FFFFFFF4
    lw      a0, 0x0094($sp)
    addiu   t9, $sp, 0x0060            # t9 = FFFFFFE8
    sw      t8, 0x0000(v1)             # 00000001
    lw      t7, 0x0004(t6)             # FFFFFFF8
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t7, 0x0004(v1)             # 00000005
    lw      t8, 0x0008(t6)             # FFFFFFFC
    sw      t8, 0x0008(v1)             # 00000009
    lw      t2, 0x0000(t9)             # FFFFFFE8
    sw      t2, 0x0000(a0)             # 00000001
    lw      t1, 0x0004(t9)             # FFFFFFEC
    sw      t1, 0x0004(a0)             # 00000005
    lw      t2, 0x0008(t9)             # FFFFFFF0
    b       lbl_80051A2C
    sw      t2, 0x0008(a0)             # 00000009
lbl_800516CC:
    beq     a1, $zero, lbl_800516F8
    lw      v1, 0x0090($sp)
    addiu   t3, $sp, 0x006C            # t3 = FFFFFFF4
    lw      t5, 0x0000(t3)             # FFFFFFF4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t5, 0x0000(v1)             # 00000001
    lw      t4, 0x0004(t3)             # FFFFFFF8
    sw      t4, 0x0004(v1)             # 00000005
    lw      t5, 0x0008(t3)             # FFFFFFFC
    b       lbl_80051A2C
    sw      t5, 0x0008(v1)             # 00000009
lbl_800516F8:
    beq     a0, $zero, lbl_80051724
    lw      v1, 0x0090($sp)
    addiu   t6, $sp, 0x0060            # t6 = FFFFFFE8
    lw      t8, 0x0000(t6)             # FFFFFFE8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t8, 0x0000(v1)             # 00000001
    lw      t7, 0x0004(t6)             # FFFFFFEC
    sw      t7, 0x0004(v1)             # 00000005
    lw      t8, 0x0008(t6)             # FFFFFFF0
    b       lbl_80051A2C
    sw      t8, 0x0008(v1)             # 00000009
lbl_80051724:
    b       lbl_80051A2C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8005172C:
    bnel    v0, $zero, lbl_80051768
    c.lt.s  $f16, $f18
    c.lt.s  $f16, $f18
    lui     $at, 0x3F80                # $at = 3F800000
    bc1t    lbl_8005175C
    nop
    mtc1    $at, $f6                   # $f6 = 1.00
    nop
    c.lt.s  $f6, $f16
    nop
    bc1f    lbl_80051810
    nop
lbl_8005175C:
    b       lbl_80051A2C
    or      v0, $zero, $zero           # v0 = 00000000
    c.lt.s  $f16, $f18
lbl_80051768:
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    bc1f    lbl_8005177C
    nop
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_8005177C:
    bne     a1, $zero, lbl_800517A0
    or      a0, a1, $zero              # a0 = 00000001
    mtc1    $at, $f4                   # $f4 = 1.00
    or      a0, $zero, $zero           # a0 = 00000000
    c.lt.s  $f4, $f16
    nop
    bc1fl   lbl_800517A4
    c.lt.s  $f12, $f18
    addiu   a0, $zero, 0x0001          # a0 = 00000001
lbl_800517A0:
    c.lt.s  $f12, $f18
lbl_800517A4:
    or      a1, a0, $zero              # a1 = 00000001
    or      a2, $zero, $zero           # a2 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    bc1f    lbl_800517BC
    nop
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_800517BC:
    bne     a2, $zero, lbl_800517E0
    or      a0, a2, $zero              # a0 = 00000001
    mtc1    $at, $f8                   # $f8 = 1.00
    or      a0, $zero, $zero           # a0 = 00000000
    c.lt.s  $f8, $f12
    nop
    bc1f    lbl_800517E0
    nop
    addiu   a0, $zero, 0x0001          # a0 = 00000001
lbl_800517E0:
    beq     a1, $zero, lbl_800517F8
    nop
    beq     a0, $zero, lbl_800517F8
    nop
    b       lbl_80051A2C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800517F8:
    beq     a1, $zero, lbl_80051804
    nop
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80051804:
    beq     a0, $zero, lbl_80051810
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80051810:
    bne     v1, t0, lbl_80051850
    lwc1    $f10, 0x0018($sp)
    mul.s   $f6, $f16, $f10
    lwc1    $f4, 0x0070($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f10, 0x007C($sp)
    add.s   $f0, $f6, $f4
    c.lt.s  $f0, $f8
    nop
    bc1tl   lbl_80051850
    or      v1, $zero, $zero           # v1 = 00000000
    c.lt.s  $f10, $f0
    nop
    bc1f    lbl_80051850
    nop
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80051850:
    bne     v0, t0, lbl_80051890
    lwc1    $f6, 0x0018($sp)
    mul.s   $f4, $f12, $f6
    lwc1    $f8, 0x0070($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f6, 0x007C($sp)
    add.s   $f0, $f4, $f8
    c.lt.s  $f0, $f10
    nop
    bc1tl   lbl_80051890
    or      v0, $zero, $zero           # v0 = 00000000
    c.lt.s  $f6, $f0
    nop
    bc1f    lbl_80051890
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80051890:
    bne     v1, $zero, lbl_800518A8
    nop
    bne     v0, $zero, lbl_800518A8
    nop
    b       lbl_80051A2C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800518A8:
    bne     v1, t0, lbl_80051960
    nop
    bne     v0, t0, lbl_80051960
    lwc1    $f0, 0x0054($sp)
    mul.s   $f4, $f16, $f0
    lwc1    $f8, 0x006C($sp)
    lwc1    $f6, 0x0000(a3)            # 00000000
    lwc1    $f2, 0x0058($sp)
    lw      v1, 0x0090($sp)
    lw      a0, 0x0094($sp)
    lwc1    $f14, 0x005C($sp)
    add.s   $f10, $f4, $f8
    mul.s   $f8, $f16, $f2
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    add.s   $f4, $f10, $f6
    swc1    $f4, 0x0000(v1)            # 00000000
    lwc1    $f10, 0x0070($sp)
    lwc1    $f4, 0x0004(a3)            # 00000004
    add.s   $f6, $f8, $f10
    mul.s   $f10, $f16, $f14
    add.s   $f8, $f6, $f4
    swc1    $f8, 0x0004(v1)            # 00000004
    lwc1    $f6, 0x0074($sp)
    lwc1    $f8, 0x0008(a3)            # 00000008
    add.s   $f4, $f10, $f6
    mul.s   $f6, $f12, $f0
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0008(v1)           # 00000008
    lwc1    $f4, 0x006C($sp)
    lwc1    $f10, 0x0000(a3)           # 00000000
    add.s   $f8, $f6, $f4
    mul.s   $f4, $f12, $f2
    add.s   $f6, $f8, $f10
    swc1    $f6, 0x0000(a0)            # 00000001
    lwc1    $f8, 0x0070($sp)
    lwc1    $f6, 0x0004(a3)            # 00000004
    add.s   $f10, $f4, $f8
    mul.s   $f8, $f12, $f14
    add.s   $f4, $f10, $f6
    swc1    $f4, 0x0004(a0)            # 00000005
    lwc1    $f10, 0x0074($sp)
    lwc1    $f4, 0x0008(a3)            # 00000008
    add.s   $f6, $f8, $f10
    add.s   $f8, $f6, $f4
    b       lbl_80051A2C
    swc1    $f8, 0x0008(a0)            # 00000009
lbl_80051960:
    bne     v1, t0, lbl_800519C4
    lwc1    $f10, 0x0054($sp)
    mul.s   $f6, $f16, $f10
    lwc1    $f4, 0x006C($sp)
    lwc1    $f10, 0x0000(a3)           # 00000000
    lw      v1, 0x0090($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    add.s   $f8, $f6, $f4
    add.s   $f6, $f8, $f10
    swc1    $f6, 0x0000(v1)            # 00000000
    lwc1    $f4, 0x0058($sp)
    lwc1    $f10, 0x0070($sp)
    mul.s   $f8, $f16, $f4
    lwc1    $f4, 0x0004(a3)            # 00000004
    add.s   $f6, $f8, $f10
    add.s   $f8, $f6, $f4
    swc1    $f8, 0x0004(v1)            # 00000004
    lwc1    $f10, 0x005C($sp)
    lwc1    $f4, 0x0074($sp)
    mul.s   $f6, $f16, $f10
    lwc1    $f10, 0x0008(a3)           # 00000008
    add.s   $f8, $f6, $f4
    add.s   $f6, $f8, $f10
    b       lbl_80051A2C
    swc1    $f6, 0x0008(v1)            # 00000008
lbl_800519C4:
    bne     v0, t0, lbl_80051A28
    lwc1    $f4, 0x0054($sp)
    mul.s   $f8, $f12, $f4
    lwc1    $f10, 0x006C($sp)
    lwc1    $f4, 0x0000(a3)            # 00000000
    lw      v1, 0x0090($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    add.s   $f6, $f8, $f10
    add.s   $f8, $f6, $f4
    swc1    $f8, 0x0000(v1)            # 00000000
    lwc1    $f10, 0x0058($sp)
    lwc1    $f4, 0x0070($sp)
    mul.s   $f6, $f12, $f10
    lwc1    $f10, 0x0004(a3)           # 00000004
    add.s   $f8, $f6, $f4
    add.s   $f6, $f8, $f10
    swc1    $f6, 0x0004(v1)            # 00000004
    lwc1    $f4, 0x005C($sp)
    lwc1    $f10, 0x0074($sp)
    mul.s   $f8, $f12, $f4
    lwc1    $f4, 0x0008(a3)            # 00000008
    add.s   $f6, $f8, $f10
    add.s   $f8, $f6, $f4
    b       lbl_80051A2C
    swc1    $f8, 0x0008(v1)            # 00000008
lbl_80051A28:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80051A2C:
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_80051A34:
    lui     $at, 0x0040                # $at = 00400000
    ori     $at, $at, 0x0100           # $at = 00400100
    and     t6, a0, $at
    beq     t6, $zero, lbl_80051A50
    or      v1, $zero, $zero           # v1 = 00000000
    b       lbl_80051A90
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80051A50:
    lui     $at, 0x0300                # $at = 03000000
    ori     $at, $at, 0x0242           # $at = 03000242
    and     t7, a0, $at
    beq     t7, $zero, lbl_80051A6C
    lui     $at, 0x4880                # $at = 48800000
    b       lbl_80051A90
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_80051A6C:
    ori     $at, $at, 0x0400           # $at = 48800400
    and     t8, a0, $at
    beq     t8, $zero, lbl_80051A84
    sll     t9, a0,  5
    b       lbl_80051A90
    addiu   v1, $zero, 0x0004          # v1 = 00000004
lbl_80051A84:
    bgezl   t9, lbl_80051A94
    or      v0, v1, $zero              # v0 = 00000004
    addiu   v1, $zero, 0x0008          # v1 = 00000008
lbl_80051A90:
    or      v0, v1, $zero              # v0 = 00000008
lbl_80051A94:
    jr      $ra
    nop
    nop


func_80051AA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x1428          # a1 = 00001428
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x4608($at)        # 8011B9F8
    lui     a0, 0x8012                 # a0 = 80120000
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    sw      $zero, -0x4604($at)        # 8011B9FC
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    ori     t6, $zero, 0xFFEF          # t6 = 0000FFEF
    ori     t7, $zero, 0xFFFF          # t7 = 0000FFFF
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    sb      v0, 0x13E0(a0)             # 8011B9B0
    sb      v0, 0x13E1(a0)             # 8011B9B1
    sh      $zero, 0x140E(a0)          # 8011B9DE
    sh      t6, 0x1412(a0)             # 8011B9E2
    sb      $zero, 0x1414(a0)          # 8011B9E4
    sb      $zero, 0x1415(a0)          # 8011B9E5
    sh      t7, 0x1416(a0)             # 8011B9E6
    sh      $zero, 0x141A(a0)          # 8011B9EA
    sb      a1, 0x141C(a0)             # 8011B9EC
    sb      v0, 0x141D(a0)             # 8011B9ED
    sh      t8, 0x13EE(a0)             # 8011B9BE
    lui     v1, 0x8000                 # v1 = 80000000
    lw      v1, 0x6280(v1)             # 80006280
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v1, $at, lbl_80051B2C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sb      $zero, 0x1409(a0)          # 8011B9D9
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80051B2C:
    bnel    v1, $at, lbl_80051B3C
    lw      $ra, 0x0014($sp)
    sb      a1, 0x1409(a0)             # 8011B9D9
    lw      $ra, 0x0014($sp)
lbl_80051B3C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
