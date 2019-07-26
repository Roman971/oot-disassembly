# "Background Check" part of the code file
#
# Handles the constuction, destruction, allocation and monitoring of Background Collisions.
#
# General Documentation about collisions:
# - https://wiki.cloudmodding.com/oot/Collision
# - https://wiki.cloudmodding.com/oot/Collision_Mesh_Format
#
# Starts at VRAM: 8002B360 / VROM: AA12C0
#

.section .text
func_8002B360:
# Set GC + 0x7C0 + 0x48 table record
# A0 = Ptr to record (4 byte record)
# A1 = struct (contains s16 record to something?)
# A2 = Polygon
    sw      a2, 0x0008($sp)
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    lh      t6, 0x0000(a1)             # 00000000
    sh      a2, 0x0002(a0)             # 00000002
    sh      t6, 0x0000(a0)             # 00000000
    jr      $ra
    nop


func_8002B37C:
    ori     t6, $zero, 0xFFFF          # t6 = 0000FFFF
    sh      t6, 0x0000(a0)             # 00000000
    jr      $ra
    nop


func_8002B38C:
# Add record to Global Context + 0x7C0 + 0x48 table
# A0 = Global Context + 0x804
# A1 = Collision Hashtable Record (GC + 0x7C0 + 0x40 table)
# A2 = ptr (struct on stack?)
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    jal     func_80030E58
    lw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    sh      v0, 0x001E($sp)
    lw      t9, 0x0024($sp)
    lw      t7, 0x0004(t6)             # 00000004
    sll     t8, v0,  2
    lw      a1, 0x0028($sp)
    lhu     a2, 0x0000(t9)             # 00000000
    jal     func_8002B360
    addu    a0, t7, t8
    lhu     t0, 0x001E($sp)
    lw      t1, 0x0024($sp)
    sh      t0, 0x0000(t1)             # 00000000
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8002B3E4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    jal     func_8002B4AC
    lw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    sh      v0, 0x001E($sp)
    lw      t9, 0x0024($sp)
    lw      t7, 0x0000(t6)             # 00000000
    sll     t8, v0,  2
    lw      a1, 0x0028($sp)
    lhu     a2, 0x0000(t9)             # 00000000
    jal     func_8002B360
    addu    a0, t7, t8
    lhu     t0, 0x001E($sp)
    lw      t1, 0x0024($sp)
    sh      t0, 0x0000(t1)             # 00000000
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8002B43C:
    sw      a0, 0x0000($sp)
    sw      $zero, 0x0000(a1)          # 00000000
    sw      $zero, 0x0004(a1)          # 00000004
    jr      $ra
    nop


func_8002B450:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      a0, 0x0018($sp)
    lw      a1, 0x0020($sp)
    addiu   a2, $zero, 0xFFFE          # a2 = FFFFFFFE
    sw      a3, 0x001C($sp)
    addiu   a0, a0, 0x0074             # a0 = 00000074
    jal     func_800A01D8
    sll     a1, a1,  2
    lw      a3, 0x001C($sp)
    sw      v0, 0x0000(a3)             # 00000000
    lw      t6, 0x0020($sp)
    sw      $zero, 0x0004(a3)          # 00000004
    sw      t6, 0x0008(a3)             # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8002B4A0:
    sw      $zero, 0x0004(a0)          # 00000004
    jr      $ra
    nop


func_8002B4AC:
    lw      v0, 0x0004(a0)             # 00000004
    lw      t7, 0x0008(a0)             # 00000008
    andi    v1, v0, 0xFFFF             # v1 = 00000000
    addiu   t6, v0, 0x0001             # t6 = 00000001
    slt     $at, v1, t7
    bne     $at, $zero, lbl_8002B4D0
    sw      t6, 0x0004(a0)             # 00000004
    jr      $ra
    ori     v0, $zero, 0xFFFF          # v0 = 0000FFFF
lbl_8002B4D0:
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    nop


func_8002B4DC:
# Convert s16 vector3 to f32 vector3
# identical to 80063CCC, but with args swapped
# A0 = vector3_s16* input xyz
# A1 = out vector3_f32* return value
    lh      t6, 0x0000(a0)             # 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(a1)            # 00000000
    lh      t7, 0x0002(a0)             # 00000002
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(a1)           # 00000004
    lh      t8, 0x0004(a0)             # 00000004
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0008(a1)           # 00000008
    jr      $ra
    nop


func_8002B520:
# Convert f32 vector3 to s16 vector3
# A0 = out vector3_s16* return value
# A1 = vector3_f32* input xyz
    lwc1    $f4, 0x0000(a1)            # 00000000
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x0000(a0)             # 00000000
    lwc1    $f8, 0x0004(a1)            # 00000004
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x0002(a0)             # 00000002
    lwc1    $f16, 0x0008(a1)           # 00000008
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sh      t1, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_8002B564:
# Get CollisionPoly Minimum Y
# A0 = CollisionPoly* poly
# A1 = VertexArray* vertices
    lh      v0, 0x000A(a0)             # 0000000A
    addiu   $at, $zero, 0x7FFF         # $at = 00007FFF
    beq     v0, $at, lbl_8002B57C
    addiu   $at, $zero, 0x8001         # $at = FFFF8001
    bne     v0, $at, lbl_8002B59C
    addiu   t1, $zero, 0x0006          # t1 = 00000006
lbl_8002B57C:
    lhu     t6, 0x0002(a0)             # 00000002
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    andi    t7, t6, 0x1FFF             # t7 = 00000000
    multu   t7, t1
    mflo    t8
    addu    t9, a1, t8
    jr      $ra
    lh      v0, 0x0002(t9)             # 00000002
lbl_8002B59C:
    lhu     v0, 0x0002(a0)             # 00000002
    lhu     v1, 0x0004(a0)             # 00000004
    lhu     a2, 0x0006(a0)             # 00000006
    andi    v0, v0, 0x1FFF             # v0 = 00000000
    multu   v0, t1
    andi    v1, v1, 0x1FFF             # v1 = 00000000
    mflo    t2
    addu    t3, a1, t2
    lh      a3, 0x0002(t3)             # 00000002
    multu   v1, t1
    mflo    t4
    addu    t5, a1, t4
    lh      t0, 0x0002(t5)             # 00000002
    slt     $at, t0, a3
    beq     $at, $zero, lbl_8002B5E4
    nop
    sll     a3, t0, 16
    sra     a3, a3, 16
lbl_8002B5E4:
    multu   a2, t1
    mflo    t6
    addu    t7, a1, t6
    lh      v1, 0x0002(t7)             # 00000002
    slt     $at, a3, v1
    beq     $at, $zero, lbl_8002B608
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    or      v0, a3, $zero              # v0 = 00000000
lbl_8002B608:
    jr      $ra
    nop


func_8002B610:
# Get CollisionPoly Normal
# A0 = CollisionPoly* poly
# A1 = out f32* normalX
# A2 = out f32* normalY
# A3 = out f32* normalZ
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6A70($at)           # 80106A70
    lh      t6, 0x0008(a0)             # 00000008
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0000(a1)            # 00000000
    lh      t7, 0x000A(a0)             # 0000000A
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0000(a2)           # 00000000
    lh      t8, 0x000C(a0)             # 0000000C
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0000(a3)            # 00000000
    jr      $ra
    nop


func_8002B668:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0044($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    beq     a0, $zero, lbl_8002B7AC
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFFC
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFF8
    jal     func_8002B610
    addiu   a3, $sp, 0x0034            # a3 = FFFFFFF4
    lwc1    $f18, 0x003C($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6A74($at)          # 80106A74
    mul.s   $f4, $f18, $f18
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lw      v0, 0x0050($sp)
    sub.s   $f0, $f16, $f4
    sqrt.s  $f2, $f0
    abs.s   $f0, $f2
    c.lt.s  $f0, $f12
    nop
    bc1tl   lbl_8002B6F0
    lwc1    $f2, 0x0038($sp)
    div.s   $f0, $f16, $f2
    lwc1    $f6, 0x0038($sp)
    lwc1    $f8, 0x0034($sp)
    mul.s   $f14, $f6, $f0
    nop
    mul.s   $f12, $f8, $f0
    mtc1    $zero, $f0                 # $f0 = 0.00
    b       lbl_8002B740
    neg.s   $f12, $f12
    lwc1    $f2, 0x0038($sp)
lbl_8002B6F0:
    mul.s   $f10, $f2, $f2
    sub.s   $f0, $f16, $f10
    sqrt.s  $f14, $f0
    abs.s   $f0, $f14
    c.lt.s  $f0, $f12
    nop
    bc1tl   lbl_8002B734
    mtc1    $zero, $f0                 # $f0 = 0.00
    div.s   $f0, $f16, $f14
    lwc1    $f4, 0x0034($sp)
    mul.s   $f12, $f18, $f0
    nop
    mul.s   $f2, $f4, $f0
    mtc1    $zero, $f0                 # $f0 = 0.00
    b       lbl_8002B740
    neg.s   $f2, $f2
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_8002B734:
    nop
    mov.s   $f12, $f0
    mov.s   $f2, $f0
lbl_8002B740:
    swc1    $f2, 0x0000(v0)            # 00000000
    lwc1    $f6, 0x003C($sp)
    neg.s   $f8, $f6
    mul.s   $f10, $f8, $f14
    swc1    $f10, 0x0004(v0)           # 00000004
    lwc1    $f4, 0x003C($sp)
    mul.s   $f6, $f4, $f12
    swc1    $f6, 0x0008(v0)            # 00000008
    lwc1    $f8, 0x003C($sp)
    swc1    $f8, 0x0010(v0)            # 00000010
    lwc1    $f10, 0x0038($sp)
    swc1    $f10, 0x0014(v0)           # 00000014
    lwc1    $f4, 0x0034($sp)
    swc1    $f12, 0x0024(v0)           # 00000024
    swc1    $f14, 0x0028(v0)           # 00000028
    swc1    $f0, 0x000C(v0)            # 0000000C
    swc1    $f0, 0x001C(v0)            # 0000001C
    swc1    $f0, 0x0020(v0)            # 00000020
    swc1    $f0, 0x002C(v0)            # 0000002C
    swc1    $f4, 0x0018(v0)            # 00000018
    lwc1    $f6, 0x0044($sp)
    swc1    $f6, 0x0030(v0)            # 00000030
    lwc1    $f8, 0x0048($sp)
    swc1    $f8, 0x0034(v0)            # 00000034
    lwc1    $f10, 0x004C($sp)
    swc1    $f16, 0x003C(v0)           # 0000003C
    swc1    $f10, 0x0038(v0)           # 00000038
lbl_8002B7AC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8002B7BC:
    lh      t6, 0x0008(a0)             # 00000008
    lh      t7, 0x000A(a0)             # 0000000A
    lwc1    $f8, 0x0000(a1)            # 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f16                   # $f16 = 0.00
    lh      t8, 0x000C(a0)             # 0000000C
    cvt.s.w $f6, $f4
    lwc1    $f4, 0x0004(a1)            # 00000004
    lh      t9, 0x000E(a0)             # 0000000E
    lui     $at, 0x8010                # $at = 80100000
    cvt.s.w $f18, $f16
    mul.s   $f10, $f6, $f8
    mtc1    t8, $f16                   # $f16 = 0.00
    mul.s   $f6, $f18, $f4
    lwc1    $f4, 0x0008(a1)            # 00000008
    cvt.s.w $f18, $f16
    lwc1    $f16, 0x6A78($at)          # 80106A78
    add.s   $f8, $f10, $f6
    mul.s   $f10, $f18, $f4
    mtc1    t9, $f4                    # $f4 = 0.00
    add.s   $f6, $f8, $f10
    cvt.s.w $f8, $f4
    mul.s   $f18, $f6, $f16
    add.s   $f0, $f18, $f8
    jr      $ra
    nop


func_8002B824:
# Get CollisionPoly Vertices
# A0 = CollisionPoly* poly
# A1 = vector3_s16* vertexArray
# A2 = out vector3_f32* vertices (3 verts)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      t6, 0x0018($sp)
    lw      t0, 0x001C($sp)
    lw      a1, 0x0020($sp)
    lhu     t7, 0x0002(t6)             # 00000002
    andi    t8, t7, 0x1FFF             # t8 = 00000000
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  1
    jal     func_8002B4DC
    addu    a0, t9, t0
    lw      t1, 0x0018($sp)
    lw      t5, 0x001C($sp)
    lw      a1, 0x0020($sp)
    lhu     t2, 0x0004(t1)             # 00000004
    addiu   a1, a1, 0x000C             # a1 = 0000000C
    andi    t3, t2, 0x1FFF             # t3 = 00000000
    sll     t4, t3,  2
    subu    t4, t4, t3
    sll     t4, t4,  1
    jal     func_8002B4DC
    addu    a0, t4, t5
    lw      t6, 0x0018($sp)
    lw      t9, 0x001C($sp)
    lw      a1, 0x0020($sp)
    lhu     t7, 0x0006(t6)             # 00000006
    addiu   a1, a1, 0x0018             # a1 = 00000018
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  1
    jal     func_8002B4DC
    addu    a0, t8, t9
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8002B8C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    beq     a0, $zero, lbl_8002B8E4
    slti    $at, a1, 0x0033
    beq     $at, $zero, lbl_8002B8E4
    nop
    bne     a3, $zero, lbl_8002B914
    addiu   $at, $zero, 0x0032         # $at = 00000032
lbl_8002B8E4:
    beql    a3, $zero, lbl_8002B938
    lw      $ra, 0x0014($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x0020(a3)            # 00000020
    swc1    $f0, 0x0014(a3)            # 00000014
    swc1    $f0, 0x0010(a3)            # 00000010
    swc1    $f0, 0x000C(a3)            # 0000000C
    swc1    $f0, 0x0008(a3)            # 00000008
    swc1    $f0, 0x0004(a3)            # 00000004
    b       lbl_8002B934
    swc1    $f0, 0x0000(a3)            # 00000000
lbl_8002B914:
    bnel    a1, $at, lbl_8002B92C
    lw      a1, 0x1444(a2)             # 00001444
    lw      t6, 0x0000(a2)             # 00000000
    b       lbl_8002B92C
    lw      a1, 0x0010(t6)             # 00000010
    lw      a1, 0x1444(a2)             # 00001444
lbl_8002B92C:
    jal     func_8002B824
    or      a2, a3, $zero              # a2 = 00000000
lbl_8002B934:
    lw      $ra, 0x0014($sp)
lbl_8002B938:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8002B944:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0044($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    lhu     t6, 0x0002(s0)             # 00000002
    lw      t9, 0x0044($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    andi    t7, t6, 0x1FFF             # t7 = 00000000
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  1
    addiu   a0, a0, 0x8D60             # a0 = 80118D60
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addu    a1, t8, t9
    lhu     t0, 0x0004(s0)             # 00000004
    lw      t3, 0x0044($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    andi    t1, t0, 0x1FFF             # t1 = 00000000
    sll     t2, t1,  2
    subu    t2, t2, t1
    sll     t2, t2,  1
    addiu   a0, a0, 0x8D6C             # a0 = 80118D6C
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addu    a1, t2, t3
    lhu     t4, 0x0006(s0)             # 00000006
    lw      t6, 0x0044($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    sll     t5, t4,  2
    subu    t5, t5, t4
    sll     t5, t5,  1
    addiu   a0, a0, 0x8D78             # a0 = 80118D78
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addu    a1, t5, t6
    lh      t7, 0x0008(s0)             # 00000008
    lh      t8, 0x000A(s0)             # 0000000A
    lh      t9, 0x000C(s0)             # 0000000C
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t8, $f8                    # $f8 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    cvt.s.w $f6, $f4
    lwc1    $f14, 0x6A7C($at)          # 80106A7C
    mtc1    t9, $f16                   # $f16 = 0.00
    lw      t1, 0x0050($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    cvt.s.w $f10, $f8
    mul.s   $f0, $f6, $f14
    lwc1    $f8, 0x004C($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8D78             # a2 = 80118D78
    mul.s   $f2, $f10, $f14
    lwc1    $f10, 0x0048($sp)
    mfc1    a3, $f0
    addiu   a1, a1, 0x8D6C             # a1 = 80118D6C
    addiu   a0, a0, 0x8D60             # a0 = 80118D60
    cvt.s.w $f18, $f16
    swc1    $f2, 0x0010($sp)
    lwc1    $f16, 0x0054($sp)
    mul.s   $f12, $f18, $f14
    swc1    $f12, 0x0014($sp)
    lh      t0, 0x000E(s0)             # 0000000E
    sw      t1, 0x0024($sp)
    swc1    $f8, 0x001C($sp)
    mtc1    t0, $f4                    # $f4 = 0.00
    swc1    $f10, 0x0020($sp)
    swc1    $f16, 0x0028($sp)
    cvt.s.w $f6, $f4
    jal     func_800A6DDC
    swc1    $f6, 0x0018($sp)
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8002BA78:
# A0 = CollisionPoly* poly
# A1 = vector3_s16* vertexArray
# A2 = f32 checkCoords x
# A3 = f32 checkCoords z
# SP+0x10 = ptr SP+0x78
# SP+0x14 = F22/Arg SP+0x18
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8C70             # a2 = 80118C70
    jal     func_8002B824
    lw      a0, 0x0048($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFFC
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFF8
    jal     func_8002B610
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFF4
    lwc1    $f4, 0x0040($sp)
    lwc1    $f6, 0x003C($sp)
    lw      t6, 0x0048($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    lh      t7, 0x000E(t6)             # 0000000E
    lwc1    $f4, 0x005C($sp)
    lwc1    $f16, 0x0054($sp)
    mtc1    t7, $f8                    # $f8 = 0.00
    lwc1    $f18, 0x0050($sp)
    lw      t8, 0x0058($sp)
    cvt.s.w $f10, $f8
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8C88             # a2 = 80118C88
    addiu   a1, a1, 0x8C7C             # a1 = 80118C7C
    addiu   a0, a0, 0x8C70             # a0 = 80118C70
    swc1    $f10, 0x0018($sp)
    lw      a3, 0x0044($sp)
    swc1    $f4, 0x0028($sp)
    swc1    $f16, 0x001C($sp)
    swc1    $f18, 0x0020($sp)
    jal     func_800A6E8C
    sw      t8, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_8002BB24:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    sw      $ra, 0x001C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t6, 0x0030($sp)
    mfc1    a2, $f12
    mfc1    a3, $f14
    sw      t6, 0x0010($sp)
    jal     func_8002B944
    swc1    $f4, 0x0014($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8002BB64:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0040($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8C98             # a2 = 80118C98
    jal     func_8002B824
    lw      a0, 0x0040($sp)
    lw      a0, 0x0040($sp)
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFFC
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFF8
    jal     func_8002B610
    addiu   a3, $sp, 0x0034            # a3 = FFFFFFF4
    lwc1    $f4, 0x0038($sp)
    lwc1    $f6, 0x0034($sp)
    lw      t6, 0x0040($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    lh      t7, 0x000E(t6)             # 0000000E
    lwc1    $f16, 0x0048($sp)
    lwc1    $f18, 0x004C($sp)
    mtc1    t7, $f8                    # $f8 = 0.00
    lw      t8, 0x0050($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    cvt.s.w $f10, $f8
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8CB0             # a2 = 80118CB0
    addiu   a1, a1, 0x8CA4             # a1 = 80118CA4
    addiu   a0, a0, 0x8C98             # a0 = 80118C98
    swc1    $f10, 0x0018($sp)
    lw      a3, 0x003C($sp)
    swc1    $f16, 0x001C($sp)
    swc1    $f18, 0x0020($sp)
    jal     func_800A7500
    sw      t8, 0x0024($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8002BC08:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0040($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8CC0             # a2 = 80118CC0
    jal     func_8002B824
    lw      a0, 0x0040($sp)
    lw      a0, 0x0040($sp)
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFFC
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFF8
    jal     func_8002B610
    addiu   a3, $sp, 0x0034            # a3 = FFFFFFF4
    lwc1    $f4, 0x0038($sp)
    lwc1    $f6, 0x0034($sp)
    lw      t6, 0x0040($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    lh      t7, 0x000E(t6)             # 0000000E
    lwc1    $f16, 0x0048($sp)
    lwc1    $f18, 0x004C($sp)
    mtc1    t7, $f8                    # $f8 = 0.00
    lw      t8, 0x0050($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    cvt.s.w $f10, $f8
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8CD8             # a2 = 80118CD8
    addiu   a1, a1, 0x8CCC             # a1 = 80118CCC
    addiu   a0, a0, 0x8CC0             # a0 = 80118CC0
    swc1    $f10, 0x0018($sp)
    lw      a3, 0x003C($sp)
    swc1    $f16, 0x001C($sp)
    swc1    $f18, 0x0020($sp)
    jal     func_800A7BBC
    sw      t8, 0x0024($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8002BCAC:
# Check collision with polygon
# A0 = CollisionPoly* poly
# A1 = Vertex* vertexArray
# A2 = vector3_f32* prevCoords
# A3 = vector3_f32* nextCoords
# SP+0x10 = out ptr ? (intercept point?)
# SP+0x14 = s32 Collision Type (0x08 bit)
# SP+0x18 = f32 ?
# V0 = 1 if collision detected, else 0
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    mtc1    $zero, $f14                # $f14 = 0.00
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lh      t6, 0x000E(a0)             # 0000000E
    lui     $at, 0x8012                # $at = 80120000
    lw      t0, 0x0040($sp)
    mtc1    t6, $f4                    # $f4 = 0.00
    lw      t1, 0x0044($sp)
    cvt.s.w $f6, $f4
    swc1    $f6, -0x72E4($at)          # 80118D1C
    lh      t7, 0x0008(a0)             # 00000008
    lh      t8, 0x000A(a0)             # 0000000A
    lh      t9, 0x000C(a0)             # 0000000C
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    t8, $f10                   # $f10 = 0.00
    lwc1    $f6, 0x0000(t0)            # 00000000
    cvt.s.w $f0, $f8
    mtc1    t9, $f4                    # $f4 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    cvt.s.w $f2, $f10
    mul.s   $f8, $f0, $f6
    lwc1    $f10, 0x0004(t0)           # 00000004
    cvt.s.w $f12, $f4
    mul.s   $f4, $f2, $f10
    lwc1    $f10, 0x0008(t0)           # 00000008
    add.s   $f6, $f8, $f4
    mul.s   $f8, $f12, $f10
    lwc1    $f10, 0x6A80($at)          # 80106A80
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f4, $f6, $f8
    lwc1    $f8, -0x72E4($at)          # 80118D1C
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f6, $f4, $f10
    lwc1    $f4, 0x0000(t1)            # 00000000
    mul.s   $f10, $f0, $f4
    add.s   $f18, $f6, $f8
    lwc1    $f6, 0x0004(t1)            # 00000004
    mul.s   $f4, $f2, $f6
    c.le.s  $f14, $f18
    add.s   $f6, $f10, $f4
    lwc1    $f10, 0x0008(t1)           # 00000008
    mul.s   $f4, $f12, $f10
    add.s   $f10, $f6, $f4
    lwc1    $f6, 0x6A84($at)           # 80106A84
    mul.s   $f4, $f10, $f6
    bc1f    lbl_8002BD84
    add.s   $f16, $f4, $f8
    c.le.s  $f14, $f16
    nop
    bc1t    lbl_8002BDFC
    nop
lbl_8002BD84:
    c.lt.s  $f18, $f14
    lw      t2, 0x004C($sp)
    bc1f    lbl_8002BDA4
    nop
    c.lt.s  $f16, $f14
    nop
    bc1t    lbl_8002BDFC
    nop
lbl_8002BDA4:
    beql    t2, $zero, lbl_8002BDD0
    sub.s   $f2, $f18, $f16
    c.lt.s  $f18, $f14
    nop
    bc1fl   lbl_8002BDD0
    sub.s   $f2, $f18, $f16
    c.lt.s  $f14, $f16
    nop
    bc1t    lbl_8002BDFC
    nop
    sub.s   $f2, $f18, $f16
lbl_8002BDD0:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6A88($at)          # 80106A88
    lui     a1, 0x8012                 # a1 = 80120000
    abs.s   $f0, $f2
    lui     a2, 0x8012                 # a2 = 80120000
    c.lt.s  $f0, $f10
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0x8D18             # a3 = 80118D18
    addiu   a2, a2, 0x8D14             # a2 = 80118D14
    bc1f    lbl_8002BE04
    addiu   a1, a1, 0x8D10             # a1 = 80118D10
lbl_8002BDFC:
    b       lbl_8002BF7C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002BE04:
    sw      a0, 0x0038($sp)
    swc1    $f2, 0x0028($sp)
    jal     func_8002B610
    swc1    $f18, 0x0034($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    lw      a0, 0x0038($sp)
    addiu   a2, a2, 0x8CE8             # a2 = 80118CE8
    jal     func_8002B824
    lw      a1, 0x003C($sp)
    lwc1    $f2, 0x0028($sp)
    lwc1    $f18, 0x0034($sp)
    lw      a0, 0x0040($sp)
    lw      a1, 0x0044($sp)
    div.s   $f6, $f18, $f2
    lw      a3, 0x0048($sp)
    mfc1    a2, $f6
    jal     func_800A4E70
    nop
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f0, -0x72F0($at)          # 80118D10
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    abs.s   $f0, $f0
    lui     a0, 0x8012                 # a0 = 80120000
    c.lt.s  $f4, $f0
    lui     a1, 0x8012                 # a1 = 80120000
    lw      v1, 0x0048($sp)
    addiu   a1, a1, 0x8CF4             # a1 = 80118CF4
    bc1f    lbl_8002BEB0
    addiu   a0, a0, 0x8CE8             # a0 = 80118CE8
    lwc1    $f8, 0x0004(v1)            # 00000004
    lwc1    $f6, 0x0050($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0008(v1)           # 00000008
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0x8D10             # a3 = 80118D10
    addiu   a2, a2, 0x8D00             # a2 = 80118D00
    swc1    $f6, 0x0018($sp)
    jal     func_800A77B8
    swc1    $f10, 0x0014($sp)
    bne     v0, $zero, lbl_8002BF70
    lw      v1, 0x0048($sp)
lbl_8002BEB0:
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f0, -0x72EC($at)          # 80118D14
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    abs.s   $f0, $f0
    lui     a0, 0x8012                 # a0 = 80120000
    c.lt.s  $f4, $f0
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x8CF4             # a1 = 80118CF4
    addiu   a0, a0, 0x8CE8             # a0 = 80118CE8
    bc1f    lbl_8002BF10
    lui     a2, 0x8012                 # a2 = 80120000
    lwc1    $f8, 0x0008(v1)            # 00000008
    lwc1    $f6, 0x0050($sp)
    lui     a3, 0x8012                 # a3 = 80120000
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0000(v1)           # 00000000
    addiu   a3, a3, 0x8D10             # a3 = 80118D10
    addiu   a2, a2, 0x8D00             # a2 = 80118D00
    swc1    $f6, 0x0018($sp)
    jal     func_800A7128
    swc1    $f10, 0x0014($sp)
    bne     v0, $zero, lbl_8002BF70
    lw      v1, 0x0048($sp)
lbl_8002BF10:
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f0, -0x72E8($at)          # 80118D18
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    abs.s   $f0, $f0
    lui     a0, 0x8012                 # a0 = 80120000
    c.lt.s  $f4, $f0
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x8CF4             # a1 = 80118CF4
    addiu   a0, a0, 0x8CE8             # a0 = 80118CE8
    bc1f    lbl_8002BF78
    lui     a2, 0x8012                 # a2 = 80120000
    lwc1    $f8, 0x0000(v1)            # 00000000
    lwc1    $f6, 0x0050($sp)
    lui     a3, 0x8012                 # a3 = 80120000
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0004(v1)           # 00000004
    addiu   a3, a3, 0x8D10             # a3 = 80118D10
    addiu   a2, a2, 0x8D00             # a2 = 80118D00
    swc1    $f6, 0x0018($sp)
    jal     func_800A7E78
    swc1    $f10, 0x0014($sp)
    beql    v0, $zero, lbl_8002BF7C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002BF70:
    b       lbl_8002BF7C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002BF78:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002BF7C:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8002BF8C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8D28             # a2 = 80118D28
    jal     func_8002B824
    lw      a0, 0x0028($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0x8D54             # a3 = 80118D54
    addiu   a2, a2, 0x8D50             # a2 = 80118D50
    addiu   a1, a1, 0x8D4C             # a1 = 80118D4C
    jal     func_8002B610
    lw      a0, 0x0028($sp)
    lw      t6, 0x0028($sp)
    lw      v0, 0x0030($sp)
    lui     $at, 0x8012                # $at = 80120000
    lh      t7, 0x000E(t6)             # 0000000E
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   a1, a1, 0x8D28             # a1 = 80118D28
    addiu   a0, a0, 0x8D20             # a0 = 80118D20
    cvt.s.w $f6, $f4
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    swc1    $f6, -0x72A8($at)          # 80118D58
    lwc1    $f8, 0x0000(v0)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    trunc.w.s $f10, $f8
    lwc1    $f8, 0x0034($sp)
    mfc1    t9, $f10
    trunc.w.s $f10, $f8
    sh      t9, -0x72E0($at)           # 80118D20
    lwc1    $f16, 0x0004(v0)           # 00000004
    mfc1    t5, $f10
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sh      t1, -0x72DE($at)           # 80118D22
    lwc1    $f4, 0x0008(v0)            # 00000008
    sh      t5, -0x72DA($at)           # 80118D26
    trunc.w.s $f6, $f4
    mfc1    t3, $f6
    jal     func_800A87C4
    sh      t3, -0x72DC($at)           # 80118D24
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8002C05C:
# Add Polygon reference to collision lookup table
# A0 = Global Context + 0x7C0
# A1 = Lookup Record ptr
# A2 = Polygon Array ptr (Collision Mesh)
# A3 = Vertex Array ptr (Collision Mesh)
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    ori     t4, $zero, 0xFFFF          # t4 = 0000FFFF
    lw      t6, 0x002C($sp)
    lh      t8, 0x003A($sp)
    addiu   a2, $sp, 0x003A            # a2 = 00000012
    lhu     t7, 0x0000(t6)             # 00000000
    sll     t9, t8,  4
    addu    a0, t9, s0
    bne     t4, t7, lbl_8002C0B0
    or      a1, a3, $zero              # a1 = 00000000
    addiu   a0, s1, 0x0044             # a0 = 00000044
    jal     func_8002B38C
    or      a1, t6, $zero              # a1 = 00000000
    b       lbl_8002C26C
    lw      $ra, 0x001C($sp)
lbl_8002C0B0:
    jal     func_8002B564
    sw      a3, 0x0034($sp)
    lw      t5, 0x002C($sp)
    lw      t2, 0x0048(s1)             # 00000048
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    lhu     t7, 0x0000(t5)             # 00000000
    lw      a3, 0x0034($sp)
    ori     t4, $zero, 0xFFFF          # t4 = 0000FFFF
    sll     t6, t7,  2
    addu    t1, t2, t6
    lh      a2, 0x0000(t1)             # 00000000
    sll     t8, a2,  4
    addu    a1, s0, t8
    lhu     t9, 0x0002(a1)             # 00000002
    andi    t7, t9, 0x1FFF             # t7 = 00000000
    multu   t7, t0
    mflo    t6
    addu    t8, a3, t6
    lh      t9, 0x0002(t8)             # 00000002
    slt     $at, v0, t9
    beql    $at, $zero, lbl_8002C16C
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    lhu     t7, 0x0004(a1)             # 00000004
    andi    t6, t7, 0x1FFF             # t6 = 00000000
    multu   t6, t0
    mflo    t8
    addu    t9, a3, t8
    lh      t7, 0x0002(t9)             # 00000002
    slt     $at, v0, t7
    beql    $at, $zero, lbl_8002C16C
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    lhu     t6, 0x0006(a1)             # 00000006
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    or      a1, t5, $zero              # a1 = 00000000
    multu   t6, t3
    addiu   a0, s1, 0x0044             # a0 = 00000044
    mflo    t8
    addu    t9, a3, t8
    lh      t7, 0x0002(t9)             # 00000002
    slt     $at, v0, t7
    beql    $at, $zero, lbl_8002C16C
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    jal     func_8002B38C
    addiu   a2, $sp, 0x003A            # a2 = 00000012
    b       lbl_8002C26C
    lw      $ra, 0x001C($sp)
    addiu   t3, $zero, 0x0006          # t3 = 00000006
lbl_8002C16C:
    lhu     v1, 0x0002(t1)             # 00000002
    addiu   a0, s1, 0x0044             # a0 = 00000044
    bnel    t4, v1, lbl_8002C1B0
    sll     t9, v1,  2
    jal     func_80030E58
    sw      t1, 0x0024($sp)
    lw      t6, 0x0048(s1)             # 00000048
    sll     t8, v0,  2
    andi    s0, v0, 0xFFFF             # s0 = 00000000
    addiu   a1, $sp, 0x003A            # a1 = 00000012
    ori     a2, $zero, 0xFFFF          # a2 = 0000FFFF
    jal     func_8002B360
    addu    a0, t6, t8
    lw      t1, 0x0024($sp)
    b       lbl_8002C268
    sh      s0, 0x0002(t1)             # 00000002
    sll     t9, v1,  2
lbl_8002C1B0:
    addu    a0, t2, t9
    lh      a2, 0x0000(a0)             # 00000000
    sll     t7, a2,  4
    addu    a1, s0, t7
    lhu     t5, 0x0002(a1)             # 00000002
    andi    t6, t5, 0x1FFF             # t6 = 00000000
    multu   t6, t0
    mflo    t8
    addu    t9, a3, t8
    lh      t7, 0x0002(t9)             # 00000002
    slt     $at, v0, t7
    beq     $at, $zero, lbl_8002C260
    nop
    lhu     t5, 0x0004(a1)             # 00000004
    andi    t6, t5, 0x1FFF             # t6 = 00000000
    multu   t6, t0
    mflo    t8
    addu    t9, a3, t8
    lh      t7, 0x0002(t9)             # 00000002
    slt     $at, v0, t7
    beq     $at, $zero, lbl_8002C260
    nop
    lhu     t5, 0x0006(a1)             # 00000006
    multu   t5, t3
    mflo    t6
    addu    t8, a3, t6
    lh      t9, 0x0002(t8)             # 00000002
    slt     $at, v0, t9
    beq     $at, $zero, lbl_8002C260
    nop
    addiu   a0, s1, 0x0044             # a0 = 00000044
    jal     func_80030E58
    sw      t1, 0x0024($sp)
    lw      t1, 0x0024($sp)
    lw      t7, 0x0048(s1)             # 00000048
    sll     t5, v0,  2
    andi    s0, v0, 0xFFFF             # s0 = 00000000
    addiu   a1, $sp, 0x003A            # a1 = 00000012
    lhu     a2, 0x0002(t1)             # 00000002
    jal     func_8002B360
    addu    a0, t7, t5
    lw      t1, 0x0024($sp)
    b       lbl_8002C268
    sh      s0, 0x0002(t1)             # 00000002
lbl_8002C260:
    b       lbl_8002C16C
    or      t1, a0, $zero              # t1 = 00000000
lbl_8002C268:
    lw      $ra, 0x001C($sp)
lbl_8002C26C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8002C27C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x0032($sp)
    lw      a0, 0x0024($sp)
    lw      a1, 0x0020($sp)
    sll     t7, t6,  4
    addu    t8, a2, t7
    lh      v0, 0x000A(t8)             # 0000000A
    slti    $at, v0, 0x4000
    bnel    $at, $zero, lbl_8002C2C4
    slti    $at, v0, 0x999B
    jal     func_8002C05C
    sw      t6, 0x0010($sp)
    b       lbl_8002C304
    lw      $ra, 0x001C($sp)
    slti    $at, v0, 0x999B
lbl_8002C2C4:
    beq     $at, $zero, lbl_8002C2EC
    lw      a1, 0x0020($sp)
    lw      a1, 0x0020($sp)
    lh      t9, 0x0032($sp)
    lw      a0, 0x0024($sp)
    addiu   a1, a1, 0x0004             # a1 = 00000004
    jal     func_8002C05C
    sw      t9, 0x0010($sp)
    b       lbl_8002C304
    lw      $ra, 0x001C($sp)
lbl_8002C2EC:
    lh      t0, 0x0032($sp)
    lw      a0, 0x0024($sp)
    addiu   a1, a1, 0x0002             # a1 = 00000002
    jal     func_8002C05C
    sw      t0, 0x0010($sp)
    lw      $ra, 0x001C($sp)
lbl_8002C304:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8002C310:
# Detects Floors
# A0 = Global Context + 0x7C0
# A1 = u16 PolyIgnore flags
# A2 = Collision Sector Record ptr
# A3 = s32* ? (deref)
# SP+0x10 = vector3_f32* checkCoords
# SP+0x14 = f32 min
# SP+0x18 = f32 ?
# SP+0x1C = s32 ? (Poly Inclusion?)
# F0 = ?
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s5, 0x0044($sp)
    sw      s3, 0x003C($sp)
    sw      s0, 0x0030($sp)
    andi    s0, a1, 0xFFFF             # s0 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    ori     s5, $zero, 0xFFFF          # s5 = 0000FFFF
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s4, 0x0040($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x008C($sp)
    sw      a3, 0x0094($sp)
    lwc1    $f12, 0x009C($sp)
    lhu     v0, 0x0000(a2)             # 00000000
    mov.s   $f20, $f12
    andi    t1, s0, 0x0007             # t1 = 00000000
    bne     s5, v0, lbl_8002C378
    sll     t6, v0,  2
    b       lbl_8002C514
    mov.s   $f0, $f12
lbl_8002C378:
    lw      a1, 0x0048(s3)             # 00000048
    lw      a2, 0x0000(s3)             # 00000000
    sll     t1, t1, 13
    lwc1    $f22, 0x00A0($sp)
    addiu   s8, $sp, 0x0078            # s8 = FFFFFFF0
    addiu   s7, $zero, 0x0006          # s7 = 00000006
    lw      s6, 0x00A4($sp)
    addiu   s4, $zero, 0x0006          # s4 = 00000006
    lw      s2, 0x0098($sp)
    addu    s1, a1, t6
    lw      t0, 0x0018(a2)             # 00000018
lbl_8002C3A4:
    lh      v0, 0x0000(s1)             # 00000000
    andi    t8, s6, 0x0001             # t8 = 00000000
    sll     s0, v0,  4
    addu    v1, t0, s0
    lhu     a0, 0x0002(v1)             # 00000002
    and     t7, a0, t1
    bnel    t7, $zero, lbl_8002C3DC
    lhu     v0, 0x0002(s1)             # 00000002
    beq     t8, $zero, lbl_8002C3EC
    andi    t3, a0, 0x1FFF             # t3 = 00000000
    lh      t9, 0x000A(v1)             # 0000000A
    bgez    t9, lbl_8002C3EC
    nop
    lhu     v0, 0x0002(s1)             # 00000002
lbl_8002C3DC:
    beq     s5, v0, lbl_8002C510
    sll     t2, v0,  2
    b       lbl_8002C3A4
    addu    s1, a1, t2
lbl_8002C3EC:
    multu   t3, s4
    lw      a1, 0x0010(a2)             # 00000010
    lwc1    $f0, 0x0004(s2)            # 00000004
    addu    a0, t0, s0
    mflo    t4
    addu    t5, a1, t4
    lh      t6, 0x0002(t5)             # 00000002
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_8002C48C
    lw      a2, 0x0000(s2)             # 00000000
    lhu     t7, 0x0004(v1)             # 00000004
    andi    t8, t7, 0x1FFF             # t8 = 00000000
    multu   t8, s4
    mflo    t9
    addu    t2, a1, t9
    lh      t3, 0x0002(t2)             # 00000002
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_8002C48C
    lw      a2, 0x0000(s2)             # 00000000
    lhu     t4, 0x0006(v1)             # 00000006
    multu   t4, s7
    mflo    t5
    addu    t6, a1, t5
    lh      t7, 0x0002(t6)             # 00000002
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    c.lt.s  $f0, $f18
    nop
    bc1tl   lbl_8002C514
    mov.s   $f0, $f20
    lw      a2, 0x0000(s2)             # 00000000
lbl_8002C48C:
    lw      a3, 0x0008(s2)             # 00000008
    sw      t1, 0x005C($sp)
    swc1    $f22, 0x0014($sp)
    jal     func_8002BA78
    sw      s8, 0x0010($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8002C4EC
    lw      t1, 0x005C($sp)
    lwc1    $f4, 0x0078($sp)
    lwc1    $f6, 0x0004(s2)            # 00000004
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_8002C4F0
    lhu     v0, 0x0002(s1)             # 00000002
    c.lt.s  $f20, $f4
    nop
    bc1fl   lbl_8002C4F0
    lhu     v0, 0x0002(s1)             # 00000002
    lw      t8, 0x0000(s3)             # 00000000
    lw      t3, 0x0094($sp)
    mov.s   $f20, $f4
    lw      t9, 0x0018(t8)             # 00000018
    addu    t2, t9, s0
    sw      t2, 0x0000(t3)             # 00000000
lbl_8002C4EC:
    lhu     v0, 0x0002(s1)             # 00000002
lbl_8002C4F0:
    beql    s5, v0, lbl_8002C514
    mov.s   $f0, $f20
    lw      a2, 0x0000(s3)             # 00000000
    lw      a1, 0x0048(s3)             # 00000048
    sll     t4, v0,  2
    lw      t0, 0x0018(a2)             # 00000018
    b       lbl_8002C3A4
    addu    s1, a1, t4
lbl_8002C510:
    mov.s   $f0, $f20
lbl_8002C514:
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
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_8002C54C:
# A0 = Collision Sector Record ptr
# A1 = Global Context + 0x7C0
# A2 = u16 ?
# A3 = s32* ?
# SP+0x10 = vector3_f32* checkCoords
# SP+0x14 = s32 ? (bit flag)
# SP+0x18 = f32 ?
# SP+0x1C = f32 ?
# F0 = ?
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    lw      s0, 0x0044($sp)
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lwc1    $f12, 0x004C($sp)
    andi    t6, s0, 0x0004             # t6 = 00000000
    beq     t6, $zero, lbl_8002C5AC
    mov.s   $f2, $f12
    lw      t7, 0x0040($sp)
    lwc1    $f4, 0x0048($sp)
    lw      a0, 0x0034($sp)
    lhu     a1, 0x003A($sp)
    lw      a2, 0x0030($sp)
    lw      a3, 0x003C($sp)
    swc1    $f12, 0x0014($sp)
    sw      $zero, 0x001C($sp)
    sw      t7, 0x0010($sp)
    jal     func_8002C310
    swc1    $f4, 0x0018($sp)
    mov.s   $f2, $f0
lbl_8002C5AC:
    andi    t8, s0, 0x0002             # t8 = 00000000
    bne     t8, $zero, lbl_8002C5BC
    andi    t9, s0, 0x0008             # t9 = 00000000
    beq     t9, $zero, lbl_8002C600
lbl_8002C5BC:
    andi    t0, s0, 0x0010             # t0 = 00000000
    beq     t0, $zero, lbl_8002C5CC
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002C5CC:
    lw      a2, 0x0030($sp)
    lw      t1, 0x0040($sp)
    lwc1    $f6, 0x0048($sp)
    lw      a0, 0x0034($sp)
    lhu     a1, 0x003A($sp)
    lw      a3, 0x003C($sp)
    swc1    $f2, 0x0014($sp)
    sw      v0, 0x001C($sp)
    addiu   a2, a2, 0x0002             # a2 = 00000002
    sw      t1, 0x0010($sp)
    jal     func_8002C310
    swc1    $f6, 0x0018($sp)
    mov.s   $f2, $f0
lbl_8002C600:
    andi    t2, s0, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_8002C64C
    andi    t3, s0, 0x0010             # t3 = 00000000
    beq     t3, $zero, lbl_8002C618
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002C618:
    lw      a2, 0x0030($sp)
    lw      t4, 0x0040($sp)
    lwc1    $f8, 0x0048($sp)
    lw      a0, 0x0034($sp)
    lhu     a1, 0x003A($sp)
    lw      a3, 0x003C($sp)
    swc1    $f2, 0x0014($sp)
    sw      v0, 0x001C($sp)
    addiu   a2, a2, 0x0004             # a2 = 00000004
    sw      t4, 0x0010($sp)
    jal     func_8002C310
    swc1    $f8, 0x0018($sp)
    mov.s   $f2, $f0
lbl_8002C64C:
    mov.s   $f0, $f2
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8002C664:
# Test ?,
# related to setting what wall poly an actor is colliding into
# A0 = Global Context + 0x7C0
# A1 = Pointer to polygon
# A2 = float* x coordinate
# A3 = float* z coordinate
# SP+0x10 = f32
# SP+0x14 = f32
# SP+0x18 = f32
# SP+0x1C = f32
# SP+0x20 = f32
# SP+0x24 = f32
# SP+0x28 = ptr to address storing collision poly surface reference
    lwc1    $f4, 0x0024($sp)
    lwc1    $f6, 0x0020($sp)
    lwc1    $f10, 0x001C($sp)
    lwc1    $f18, 0x0010($sp)
    sub.s   $f8, $f4, $f6
    lwc1    $f16, 0x0000(a2)           # 00000000
    mul.s   $f0, $f8, $f10
    nop
    mul.s   $f4, $f0, $f18
    add.s   $f6, $f16, $f4
    swc1    $f6, 0x0000(a2)            # 00000000
    lwc1    $f10, 0x0018($sp)
    lwc1    $f8, 0x0000(a3)            # 00000000
    mul.s   $f18, $f0, $f10
    add.s   $f16, $f8, $f18
    swc1    $f16, 0x0000(a3)           # 00000000
    lw      t6, 0x0028($sp)
    lw      v0, 0x0000(t6)             # 00000000
    bne     v0, $zero, lbl_8002C6C0
    nop
    sw      a1, 0x0000(t6)             # 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002C6C0:
    lw      t7, 0x0000(a0)             # 00000000
    lhu     t9, 0x0000(v0)             # 00000001
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t8, 0x001C(t7)             # 0000001C
    sll     t0, t9,  3
    lw      t3, 0x0028($sp)
    addu    t1, t8, t0
    lw      v1, 0x0004(t1)             # 00000004
    sll     t2, v1,  4
    bgez    t2, lbl_8002C6F4
    nop
    b       lbl_8002C6F4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002C6F4:
    bnel    v0, $zero, lbl_8002C70C
    or      v0, $zero, $zero           # v0 = 00000000
    sw      a1, 0x0000(t3)             # 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002C708:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002C70C:
    jr      $ra
    nop


func_8002C714:
    addiu   $sp, $sp, 0xFEF8           # $sp -= 0x108
    sw      s5, 0x007C($sp)
    sw      s3, 0x0074($sp)
    or      s3, a1, $zero              # s3 = 00000000
    ori     s5, $zero, 0xFFFF          # s5 = 0000FFFF
    sw      $ra, 0x008C($sp)
    sw      s8, 0x0088($sp)
    sw      s7, 0x0084($sp)
    sw      s6, 0x0080($sp)
    sw      s4, 0x0078($sp)
    sw      s2, 0x0070($sp)
    sw      s1, 0x006C($sp)
    sw      s0, 0x0068($sp)
    sdc1    $f30, 0x0060($sp)
    sdc1    $f28, 0x0058($sp)
    sdc1    $f26, 0x0050($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    sw      a0, 0x0108($sp)
    sw      a2, 0x0110($sp)
    sw      a3, 0x0114($sp)
    lw      t6, 0x0108($sp)
    sw      $zero, 0x00E8($sp)
    lw      s6, 0x011C($sp)
    lhu     t7, 0x0002(t6)             # 00000002
    bnel    s5, t7, lbl_8002C790
    lw      t9, 0x0000(s6)             # 00000000
    b       lbl_8002CF60
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t9, 0x0000(s6)             # 00000000
lbl_8002C790:
    addiu   s7, $sp, 0x00FC            # s7 = FFFFFFF4
    addiu   s8, $zero, 0x0006          # s8 = 00000006
    sw      t9, 0x0000(s7)             # FFFFFFF4
    lw      t8, 0x0004(s6)             # 00000004
    addiu   s4, $zero, 0x0006          # s4 = 00000006
    sw      t8, 0x0004(s7)             # FFFFFFF8
    lw      t9, 0x0008(s6)             # 00000008
    sw      t9, 0x0008(s7)             # FFFFFFFC
    lw      v0, 0x0000(s3)             # 00000000
    lw      t1, 0x0108($sp)
    lwc1    $f28, 0x0120($sp)
    lw      t0, 0x0018(v0)             # 00000018
    sw      t0, 0x00E0($sp)
    lhu     t2, 0x0002(t1)             # 00000002
    lw      v1, 0x0048(s3)             # 00000048
    lw      s2, 0x0010(v0)             # 00000010
    sll     t3, t2,  2
    addu    s1, v1, t3
lbl_8002C7D8:
    lh      v0, 0x0000(s1)             # 00000000
    lw      t5, 0x00E0($sp)
    lwc1    $f0, 0x0004(s6)            # 00000004
    sll     t4, v0,  4
    addu    s0, t4, t5
    lhu     t6, 0x0002(s0)             # 00000002
    andi    t7, t6, 0x1FFF             # t7 = 00000000
    multu   t7, s4
    mflo    t8
    addu    t9, s2, t8
    lh      t0, 0x0002(t9)             # 00000002
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_8002C89C
    lh      t3, 0x0008(s0)             # 00000008
    lhu     t1, 0x0004(s0)             # 00000004
    andi    t2, t1, 0x1FFF             # t2 = 00000000
    multu   t2, s4
    mflo    t3
    addu    t4, s2, t3
    lh      t5, 0x0002(t4)             # 00000002
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_8002C89C
    lh      t3, 0x0008(s0)             # 00000008
    lhu     t6, 0x0006(s0)             # 00000006
    multu   t6, s8
    mflo    t7
    addu    t8, s2, t7
    lh      t9, 0x0002(t8)             # 00000002
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_8002C89C
    lh      t3, 0x0008(s0)             # 00000008
    lw      t0, 0x0108($sp)
    lhu     t1, 0x0002(t0)             # 00000002
    sll     t2, t1,  2
    b       lbl_8002CBD0
    addu    s1, v1, t2
    lh      t3, 0x0008(s0)             # 00000008
lbl_8002C89C:
    lh      t4, 0x000A(s0)             # 0000000A
    lh      t5, 0x000C(s0)             # 0000000C
    mtc1    t3, $f8                    # $f8 = 0.00
    mtc1    t4, $f4                    # $f4 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    cvt.s.w $f10, $f8
    lwc1    $f2, 0x6A8C($at)           # 80106A8C
    mtc1    t5, $f8                    # $f8 = 0.00
    lh      t6, 0x000E(s0)             # 0000000E
    sw      s7, 0x0010($sp)
    cvt.s.w $f6, $f4
    mul.s   $f22, $f10, $f2
    cvt.s.w $f10, $f8
    mul.s   $f26, $f6, $f2
    mtc1    t6, $f8                    # $f8 = 0.00
    mov.s   $f12, $f22
    mul.s   $f24, $f10, $f2
    mov.s   $f14, $f26
    mul.s   $f4, $f22, $f22
    nop
    mul.s   $f6, $f24, $f24
    mfc1    a2, $f24
    cvt.s.w $f8, $f8
    add.s   $f0, $f4, $f6
    mfc1    a3, $f8
    jal     func_800A69A4
    sqrt.s  $f20, $f0
    mov.s   $f30, $f0
    abs.s   $f0, $f0
    lhu     t7, 0x0112($sp)
    c.lt.s  $f28, $f0
    nop
    bc1tl   lbl_8002C940
    lhu     v0, 0x0002(s1)             # 00000002
    lhu     v0, 0x0002(s0)             # 00000002
    andi    t8, t7, 0x0007             # t8 = 00000000
    sll     t9, t8, 13
    and     t0, v0, t9
    beq     t0, $zero, lbl_8002C974
    lui     $at, 0x3F80                # $at = 3F800000
    lhu     v0, 0x0002(s1)             # 00000002
lbl_8002C940:
    bnel    s5, v0, lbl_8002C968
    lw      v1, 0x0048(s3)             # 00000048
    lw      t2, 0x0108($sp)
    lw      t1, 0x0048(s3)             # 00000048
    lwc1    $f0, 0x0004(s6)            # 00000004
    lhu     t3, 0x0002(t2)             # 00000002
    sll     t4, t3,  2
    b       lbl_8002CBD0
    addu    s1, t1, t4
    lw      v1, 0x0048(s3)             # 00000048
lbl_8002C968:
    sll     t5, v0,  2
    b       lbl_8002C7D8
    addu    s1, v1, t5
lbl_8002C974:
    mtc1    $at, $f10                  # $f10 = 1.00
    abs.s   $f0, $f24
    lui     $at, 0x8010                # $at = 80100000
    div.s   $f14, $f10, $f20
    lwc1    $f4, 0x6A90($at)           # 80106A90
    andi    t2, v0, 0x1FFF             # t2 = 00000000
    mul.s   $f16, $f0, $f14
    c.lt.s  $f16, $f4
    nop
    bc1f    lbl_8002C9D8
    nop
    lhu     v0, 0x0002(s1)             # 00000002
    bnel    s5, v0, lbl_8002C9CC
    lw      v1, 0x0048(s3)             # 00000048
    lw      t7, 0x0108($sp)
    lw      t6, 0x0048(s3)             # 00000048
    lwc1    $f0, 0x0004(s6)            # 00000004
    lhu     t8, 0x0002(t7)             # 00000002
    sll     t9, t8,  2
    b       lbl_8002CBD0
    addu    s1, t6, t9
    lw      v1, 0x0048(s3)             # 00000048
lbl_8002C9CC:
    sll     t0, v0,  2
    b       lbl_8002C7D8
    addu    s1, v1, t0
lbl_8002C9D8:
    multu   t2, s4
    lhu     t5, 0x0004(s0)             # 00000004
    andi    t7, t5, 0x1FFF             # t7 = 00000000
    mflo    t3
    addu    t1, s2, t3
    lh      t4, 0x0004(t1)             # 00000004
    multu   t7, s4
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f12, $f6
    mflo    t8
    addu    t6, s2, t8
    lh      t9, 0x0004(t6)             # 00000004
    mov.s   $f2, $f12
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f0, $f8
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8002CA38
    c.lt.s  $f12, $f0
    b       lbl_8002CA48
    mov.s   $f2, $f0
    c.lt.s  $f12, $f0
lbl_8002CA38:
    nop
    bc1fl   lbl_8002CA4C
    lhu     t0, 0x0006(s0)             # 00000006
    mov.s   $f12, $f0
lbl_8002CA48:
    lhu     t0, 0x0006(s0)             # 00000006
lbl_8002CA4C:
    multu   t0, s8
    mflo    t2
    addu    t3, s2, t2
    lh      t1, 0x0004(t3)             # 00000004
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f0, $f10
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8002CA84
    c.lt.s  $f12, $f0
    b       lbl_8002CA94
    mov.s   $f2, $f0
    c.lt.s  $f12, $f0
lbl_8002CA84:
    nop
    bc1fl   lbl_8002CA98
    sub.s   $f2, $f2, $f28
    mov.s   $f12, $f0
lbl_8002CA94:
    sub.s   $f2, $f2, $f28
lbl_8002CA98:
    lwc1    $f18, 0x0104($sp)
    add.s   $f12, $f12, $f28
    c.lt.s  $f18, $f2
    nop
    bc1tl   lbl_8002CACC
    lhu     v0, 0x0002(s1)             # 00000002
    c.lt.s  $f12, $f18
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    lw      a2, 0x00FC($sp)
    bc1f    lbl_8002CB00
    addiu   t9, $sp, 0x00EC            # t9 = FFFFFFE4
    lhu     v0, 0x0002(s1)             # 00000002
lbl_8002CACC:
    bnel    s5, v0, lbl_8002CAF4
    lw      v1, 0x0048(s3)             # 00000048
    lw      t5, 0x0108($sp)
    lw      t4, 0x0048(s3)             # 00000048
    lwc1    $f0, 0x0004(s6)            # 00000004
    lhu     t7, 0x0002(t5)             # 00000002
    sll     t8, t7,  2
    b       lbl_8002CBD0
    addu    s1, t4, t8
    lw      v1, 0x0048(s3)             # 00000048
lbl_8002CAF4:
    sll     t6, v0,  2
    b       lbl_8002C7D8
    addu    s1, v1, t6
lbl_8002CB00:
    lw      a3, 0x0004(s6)             # 00000004
    swc1    $f16, 0x00B8($sp)
    swc1    $f14, 0x0094($sp)
    jal     func_8002BC08
    sw      t9, 0x0010($sp)
    lwc1    $f14, 0x0094($sp)
    beq     v0, $zero, lbl_8002CB98
    lwc1    $f16, 0x00B8($sp)
    lwc1    $f18, 0x0104($sp)
    div.s   $f6, $f28, $f16
    lwc1    $f4, 0x00EC($sp)
    sub.s   $f2, $f4, $f18
    abs.s   $f0, $f2
    c.le.s  $f0, $f6
    nop
    bc1fl   lbl_8002CB9C
    lhu     v0, 0x0002(s1)             # 00000002
    mul.s   $f10, $f2, $f24
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s7, $zero              # a2 = FFFFFFF4
    addiu   a3, $sp, 0x0104            # a3 = FFFFFFFC
    c.le.s  $f10, $f8
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    bc1fl   lbl_8002CB9C
    lhu     v0, 0x0002(s1)             # 00000002
    lw      t0, 0x0124($sp)
    swc1    $f22, 0x0010($sp)
    swc1    $f26, 0x0014($sp)
    swc1    $f24, 0x0018($sp)
    swc1    $f14, 0x001C($sp)
    swc1    $f30, 0x0020($sp)
    swc1    $f28, 0x0024($sp)
    sw      t2, 0x00E8($sp)
    jal     func_8002C664
    sw      t0, 0x0028($sp)
lbl_8002CB98:
    lhu     v0, 0x0002(s1)             # 00000002
lbl_8002CB9C:
    bnel    s5, v0, lbl_8002CBC4
    lw      v1, 0x0048(s3)             # 00000048
    lw      t1, 0x0108($sp)
    lw      t3, 0x0048(s3)             # 00000048
    lwc1    $f0, 0x0004(s6)            # 00000004
    lhu     t5, 0x0002(t1)             # 00000002
    sll     t7, t5,  2
    b       lbl_8002CBD0
    addu    s1, t3, t7
    lw      v1, 0x0048(s3)             # 00000048
lbl_8002CBC4:
    sll     t4, v0,  2
    b       lbl_8002C7D8
    addu    s1, v1, t4
lbl_8002CBD0:
    lh      v0, 0x0000(s1)             # 00000000
    lw      t6, 0x00E0($sp)
    sll     t8, v0,  4
    addu    s0, t8, t6
    lhu     t9, 0x0002(s0)             # 00000002
    andi    t0, t9, 0x1FFF             # t0 = 00000000
    multu   t0, s4
    mflo    t2
    addu    t1, s2, t2
    lh      t5, 0x0002(t1)             # 00000002
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_8002CC7C
    lh      t5, 0x0008(s0)             # 00000008
    lhu     t3, 0x0004(s0)             # 00000004
    andi    t7, t3, 0x1FFF             # t7 = 00000000
    multu   t7, s4
    mflo    t4
    addu    t8, s2, t4
    lh      t6, 0x0002(t8)             # 00000002
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_8002CC7C
    lh      t5, 0x0008(s0)             # 00000008
    lhu     t9, 0x0006(s0)             # 00000006
    multu   t9, s8
    mflo    t0
    addu    t2, s2, t0
    lh      t1, 0x0002(t2)             # 00000002
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.lt.s  $f0, $f6
    nop
    bc1tl   lbl_8002CF48
    lwc1    $f4, 0x00FC($sp)
    lh      t5, 0x0008(s0)             # 00000008
lbl_8002CC7C:
    lh      t3, 0x000A(s0)             # 0000000A
    lh      t7, 0x000C(s0)             # 0000000C
    mtc1    t5, $f8                    # $f8 = 0.00
    mtc1    t3, $f4                    # $f4 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    cvt.s.w $f10, $f8
    lwc1    $f2, 0x6A94($at)           # 80106A94
    mtc1    t7, $f8                    # $f8 = 0.00
    lh      t4, 0x000E(s0)             # 0000000E
    sw      s7, 0x0010($sp)
    cvt.s.w $f6, $f4
    mul.s   $f22, $f10, $f2
    cvt.s.w $f10, $f8
    mul.s   $f26, $f6, $f2
    mtc1    t4, $f8                    # $f8 = 0.00
    mov.s   $f12, $f22
    mul.s   $f24, $f10, $f2
    mov.s   $f14, $f26
    mul.s   $f4, $f22, $f22
    nop
    mul.s   $f6, $f24, $f24
    mfc1    a2, $f24
    cvt.s.w $f8, $f8
    add.s   $f0, $f4, $f6
    mfc1    a3, $f8
    jal     func_800A69A4
    sqrt.s  $f20, $f0
    mov.s   $f30, $f0
    abs.s   $f0, $f0
    lhu     t8, 0x0112($sp)
    c.lt.s  $f28, $f0
    nop
    bc1tl   lbl_8002CD20
    lhu     v0, 0x0002(s1)             # 00000002
    lhu     v0, 0x0002(s0)             # 00000002
    andi    t6, t8, 0x0007             # t6 = 00000000
    sll     t9, t6, 13
    and     t0, v0, t9
    beq     t0, $zero, lbl_8002CD38
    lui     $at, 0x3F80                # $at = 3F800000
    lhu     v0, 0x0002(s1)             # 00000002
lbl_8002CD20:
    beql    s5, v0, lbl_8002CF48
    lwc1    $f4, 0x00FC($sp)
    lw      t2, 0x0048(s3)             # 00000048
    sll     t1, v0,  2
    b       lbl_8002CF3C
    addu    s1, t2, t1
lbl_8002CD38:
    mtc1    $at, $f10                  # $f10 = 1.00
    abs.s   $f0, $f22
    lui     $at, 0x8010                # $at = 80100000
    div.s   $f14, $f10, $f20
    lwc1    $f4, 0x6A98($at)           # 80106A98
    andi    t7, v0, 0x1FFF             # t7 = 00000000
    mul.s   $f16, $f0, $f14
    c.lt.s  $f16, $f4
    nop
    bc1f    lbl_8002CD80
    nop
    lhu     v0, 0x0002(s1)             # 00000002
    beql    s5, v0, lbl_8002CF48
    lwc1    $f4, 0x00FC($sp)
    lw      t5, 0x0048(s3)             # 00000048
    sll     t3, v0,  2
    b       lbl_8002CF3C
    addu    s1, t5, t3
lbl_8002CD80:
    multu   t7, s4
    lhu     t9, 0x0004(s0)             # 00000004
    andi    t0, t9, 0x1FFF             # t0 = 00000000
    mflo    t4
    addu    t8, s2, t4
    lh      t6, 0x0000(t8)             # 00000000
    multu   t0, s4
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f12, $f6
    mflo    t2
    addu    t1, s2, t2
    lh      t5, 0x0000(t1)             # 00000000
    mov.s   $f2, $f12
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f0, $f8
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8002CDE0
    c.lt.s  $f12, $f0
    b       lbl_8002CDF0
    mov.s   $f2, $f0
    c.lt.s  $f12, $f0
lbl_8002CDE0:
    nop
    bc1fl   lbl_8002CDF4
    lhu     t3, 0x0006(s0)             # 00000006
    mov.s   $f12, $f0
lbl_8002CDF0:
    lhu     t3, 0x0006(s0)             # 00000006
lbl_8002CDF4:
    multu   t3, s8
    mflo    t7
    addu    t4, s2, t7
    lh      t8, 0x0000(t4)             # 00000000
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f0, $f10
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8002CE2C
    c.lt.s  $f12, $f0
    b       lbl_8002CE3C
    mov.s   $f2, $f0
    c.lt.s  $f12, $f0
lbl_8002CE2C:
    nop
    bc1fl   lbl_8002CE40
    sub.s   $f2, $f2, $f28
    mov.s   $f12, $f0
lbl_8002CE3C:
    sub.s   $f2, $f2, $f28
lbl_8002CE40:
    lwc1    $f18, 0x00FC($sp)
    add.s   $f12, $f12, $f28
    c.lt.s  $f18, $f2
    nop
    bc1tl   lbl_8002CE74
    lhu     v0, 0x0002(s1)             # 00000002
    c.lt.s  $f12, $f18
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    lw      a3, 0x0104($sp)
    bc1f    lbl_8002CE8C
    addiu   t0, $sp, 0x00EC            # t0 = FFFFFFE4
    lhu     v0, 0x0002(s1)             # 00000002
lbl_8002CE74:
    beql    s5, v0, lbl_8002CF48
    lwc1    $f4, 0x00FC($sp)
    lw      t6, 0x0048(s3)             # 00000048
    sll     t9, v0,  2
    b       lbl_8002CF3C
    addu    s1, t6, t9
lbl_8002CE8C:
    lw      a2, 0x0004(s6)             # 00000004
    swc1    $f16, 0x00B8($sp)
    swc1    $f14, 0x0094($sp)
    jal     func_8002BB64
    sw      t0, 0x0010($sp)
    lwc1    $f14, 0x0094($sp)
    beq     v0, $zero, lbl_8002CF24
    lwc1    $f16, 0x00B8($sp)
    lwc1    $f18, 0x00FC($sp)
    div.s   $f6, $f28, $f16
    lwc1    $f4, 0x00EC($sp)
    sub.s   $f2, $f4, $f18
    abs.s   $f0, $f2
    c.le.s  $f0, $f6
    nop
    bc1fl   lbl_8002CF28
    lhu     v0, 0x0002(s1)             # 00000002
    mul.s   $f10, $f2, $f22
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s7, $zero              # a2 = FFFFFFF4
    addiu   a3, $sp, 0x0104            # a3 = FFFFFFFC
    c.le.s  $f10, $f8
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    bc1fl   lbl_8002CF28
    lhu     v0, 0x0002(s1)             # 00000002
    lw      t2, 0x0124($sp)
    swc1    $f22, 0x0010($sp)
    swc1    $f26, 0x0014($sp)
    swc1    $f24, 0x0018($sp)
    swc1    $f14, 0x001C($sp)
    swc1    $f30, 0x0020($sp)
    swc1    $f28, 0x0024($sp)
    sw      t1, 0x00E8($sp)
    jal     func_8002C664
    sw      t2, 0x0028($sp)
lbl_8002CF24:
    lhu     v0, 0x0002(s1)             # 00000002
lbl_8002CF28:
    beql    s5, v0, lbl_8002CF48
    lwc1    $f4, 0x00FC($sp)
    lw      t5, 0x0048(s3)             # 00000048
    sll     t3, v0,  2
    addu    s1, t5, t3
lbl_8002CF3C:
    b       lbl_8002CBD0
    lwc1    $f0, 0x0004(s6)            # 00000004
    lwc1    $f4, 0x00FC($sp)
lbl_8002CF48:
    lw      t7, 0x0114($sp)
    swc1    $f4, 0x0000(t7)            # 00000000
    lw      t4, 0x0118($sp)
    lwc1    $f6, 0x0104($sp)
    swc1    $f6, 0x0000(t4)            # 00000000
    lw      v0, 0x00E8($sp)
lbl_8002CF60:
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
    addiu   $sp, $sp, 0x0108           # $sp += 0x108


func_8002CFA8:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s2, 0x0048($sp)
    sw      a1, 0x00A4($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    or      s2, a2, $zero              # s2 = 00000000
    or      s4, a3, $zero              # s4 = 00000000
    ori     s5, $zero, 0xFFFF          # s5 = 0000FFFF
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s3, 0x004C($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lhu     v1, 0x0004(a0)             # 00000004
    or      t0, $zero, $zero           # t0 = 00000000
    lw      s3, 0x00B0($sp)
    bne     s5, v1, lbl_8002D014
    sll     t7, v1,  2
    b       lbl_8002D140
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002D014:
    lw      v0, 0x0000(s2)             # 00000000
    lwc1    $f4, 0x0004(s3)            # 00000004
    lw      t6, 0x0048(s2)             # 00000048
    lw      s6, 0x0018(v0)             # 00000018
    lw      s7, 0x0010(v0)             # 00000010
    swc1    $f4, 0x0000(s4)            # 00000000
    lw      t8, 0x0000(s2)             # 00000000
    andi    s8, a1, 0x0007             # s8 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    mtc1    $zero, $f26                # $f26 = 0.00
    mtc1    $zero, $f24                # $f24 = 0.00
    lwc1    $f22, 0x6A9C($at)          # 80106A9C
    sll     s8, s8, 13
    lwc1    $f20, 0x00B4($sp)
    addu    s1, t6, t7
    lw      a0, 0x0018(t8)             # 00000018
lbl_8002D054:
    lh      v0, 0x0000(s1)             # 00000000
    or      a1, s7, $zero              # a1 = 00000000
    addiu   t5, $sp, 0x008C            # t5 = FFFFFFEC
    sll     v1, v0,  4
    addu    t9, a0, v1
    lhu     t1, 0x0002(t9)             # 00000002
    addu    s0, v1, s6
    and     t2, t1, s8
    beql    t2, $zero, lbl_8002D09C
    lw      a2, 0x0000(s3)             # 00000000
    lhu     v0, 0x0002(s1)             # 00000002
    beql    s5, v0, lbl_8002D140
    or      v0, t0, $zero              # v0 = 00000000
    lw      t3, 0x0048(s2)             # 00000048
    sll     t4, v0,  2
    b       lbl_8002D054
    addu    s1, t3, t4
    lw      a2, 0x0000(s3)             # 00000000
lbl_8002D09C:
    lw      a3, 0x0008(s3)             # 00000008
    sw      t0, 0x009C($sp)
    sw      t5, 0x0010($sp)
    jal     func_8002BB24
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8002D118
    lw      t0, 0x009C($sp)
    lh      t6, 0x000A(s0)             # 0000000A
    lwc1    $f6, 0x008C($sp)
    lwc1    $f8, 0x0000(s4)            # 00000000
    mtc1    t6, $f10                   # $f10 = 0.00
    sub.s   $f0, $f6, $f8
    cvt.s.w $f16, $f10
    c.lt.s  $f24, $f0
    mul.s   $f2, $f16, $f22
    bc1fl   lbl_8002D11C
    lhu     v0, 0x0002(s1)             # 00000002
    c.lt.s  $f0, $f20
    nop
    bc1fl   lbl_8002D11C
    lhu     v0, 0x0002(s1)             # 00000002
    mul.s   $f18, $f0, $f2
    c.le.s  $f18, $f26
    nop
    bc1fl   lbl_8002D11C
    lhu     v0, 0x0002(s1)             # 00000002
    sub.s   $f4, $f6, $f20
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    swc1    $f4, 0x0000(s4)            # 00000000
    lw      t7, 0x00B8($sp)
    sw      s0, 0x0000(t7)             # 00000000
lbl_8002D118:
    lhu     v0, 0x0002(s1)             # 00000002
lbl_8002D11C:
    beql    s5, v0, lbl_8002D140
    or      v0, t0, $zero              # v0 = 00000001
    lw      t8, 0x0048(s2)             # 00000048
    lw      t1, 0x0000(s2)             # 00000000
    sll     t9, v0,  2
    addu    s1, t8, t9
    b       lbl_8002D054
    lw      a0, 0x0018(t1)             # 00000018
    or      v0, t0, $zero              # v0 = 00000001
lbl_8002D140:
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    lw      s5, 0x0054($sp)
    lw      s6, 0x0058($sp)
    lw      s7, 0x005C($sp)
    lw      s8, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_8002D180:
# Check Collision with CollisionPolyLink group
# Helper for 8002D3A4
# A0 = CollisionPolyLink* head (floors, walls, or ceilings)
# A1 = Global Context + 0x7C0
# A2 = u16 PolyIgnoreFlags
# A3 = u16 PolyCheckOnlyFlags (if 0, check all polys?)
# SP+0x10 = vector3_f32* prevCoords
# SP+0x14 = out? vector3_f32* nextCoords
# SP+0x18 = out vector3_f32* finalCoords
# SP+0x1C = out CollisionPoly**
# SP+0x20 = ptr to ? (out?)
# SP+0x24 = f32 ?
# SP+0x28 = s32 CollisionTypeFlags
# V0 = 1 if collision detected, else 0
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s8, 0x0050($sp)
    sw      s2, 0x0038($sp)
    or      s2, a1, $zero              # s2 = 00000000
    ori     s8, $zero, 0xFFFF          # s8 = 0000FFFF
    sw      $ra, 0x0054($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a2, 0x00A0($sp)
    sw      a3, 0x00A4($sp)
    sw      $zero, 0x0078($sp)
    lhu     v0, 0x0000(a0)             # 00000000
    lw      t6, 0x0000(s2)             # 00000000
    lwc1    $f20, 0x00BC($sp)
    bne     s8, v0, lbl_8002D1E0
    lw      s6, 0x0018(t6)             # 00000018
    b       lbl_8002D370
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002D1E0:
    lw      a1, 0x0048(s2)             # 00000048
    sll     t7, v0,  2
    lw      a3, 0x004C(s2)             # 0000004C
    lw      s7, 0x00B8($sp)
    lw      s5, 0x00AC($sp)
    lw      s4, 0x00A8($sp)
    addiu   s3, $sp, 0x0084            # s3 = FFFFFFEC
    addu    s1, a1, t7
lbl_8002D200:
    lh      v0, 0x0000(s1)             # 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lhu     t0, 0x00A2($sp)
    addu    v1, a3, v0
    lbu     t8, 0x0000(v1)             # 00000000
    sll     a2, v0,  4
    beq     t8, $at, lbl_8002D250
    addu    t9, s6, a2
    lhu     a0, 0x0002(t9)             # 00000002
    andi    t1, t0, 0x0007             # t1 = 00000000
    sll     t2, t1, 13
    and     t3, a0, t2
    bne     t3, $zero, lbl_8002D250
    lhu     v0, 0x00A6($sp)
    beq     v0, $zero, lbl_8002D264
    andi    t4, v0, 0x0007             # t4 = 00000000
    sll     t5, t4, 13
    and     t6, a0, t5
    bnel    t6, $zero, lbl_8002D268
    addiu   t8, $zero, 0x0001          # t8 = 00000001
lbl_8002D250:
    lhu     v0, 0x0002(s1)             # 00000002
    beq     s8, v0, lbl_8002D36C
    sll     t7, v0,  2
    b       lbl_8002D200
    addu    s1, a1, t7
lbl_8002D264:
    addiu   t8, $zero, 0x0001          # t8 = 00000001
lbl_8002D268:
    sb      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0000(s2)             # 00000000
    addu    s0, a2, s6
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002B564
    lw      a1, 0x0010(t9)             # 00000010
    mtc1    v0, $f4                    # $f4 = 0.00
    lwc1    $f6, 0x0004(s4)            # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f0, $f4
    or      a2, s4, $zero              # a2 = 00000000
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_8002D2BC
    lw      t0, 0x0000(s2)             # 00000000
    lwc1    $f8, 0x0004(s5)            # 00000004
    c.lt.s  $f8, $f0
    nop
    bc1tl   lbl_8002D370
    lw      v0, 0x0078($sp)
    lw      t0, 0x0000(s2)             # 00000000
lbl_8002D2BC:
    lw      t1, 0x00C0($sp)
    or      a3, s5, $zero              # a3 = 00000000
    lw      a1, 0x0010(t0)             # 00000010
    andi    t2, t1, 0x0008             # t2 = 00000000
    sltu    t3, $zero, t2
    sw      t3, 0x0014($sp)
    swc1    $f20, 0x0018($sp)
    jal     func_8002BCAC
    sw      s3, 0x0010($sp)
    beq     v0, $zero, lbl_8002D34C
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800A5538
    or      a1, s3, $zero              # a1 = FFFFFFEC
    lwc1    $f10, 0x0000(s7)           # 00000000
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_8002D350
    lhu     v0, 0x0002(s1)             # 00000002
    swc1    $f0, 0x0000(s7)            # 00000000
    lw      t6, 0x0000(s3)             # FFFFFFEC
    lw      t4, 0x00B0($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t6, 0x0000(t4)             # 00000000
    lw      t5, 0x0004(s3)             # FFFFFFF0
    sw      t5, 0x0004(t4)             # 00000004
    lw      t6, 0x0008(s3)             # FFFFFFF4
    sw      t6, 0x0008(t4)             # 00000008
    lw      t8, 0x0000(s3)             # FFFFFFEC
    sw      t8, 0x0000(s5)             # 00000000
    lw      t7, 0x0004(s3)             # FFFFFFF0
    sw      t7, 0x0004(s5)             # 00000004
    lw      t8, 0x0008(s3)             # FFFFFFF4
    sw      t8, 0x0008(s5)             # 00000008
    lw      t9, 0x00B4($sp)
    sw      s0, 0x0000(t9)             # 00000000
    sw      t0, 0x0078($sp)
lbl_8002D34C:
    lhu     v0, 0x0002(s1)             # 00000002
lbl_8002D350:
    beql    s8, v0, lbl_8002D370
    lw      v0, 0x0078($sp)
    lw      a1, 0x0048(s2)             # 00000048
    sll     t1, v0,  2
    addu    s1, a1, t1
    b       lbl_8002D200
    lw      a3, 0x004C(s2)             # 0000004C
lbl_8002D36C:
    lw      v0, 0x0078($sp)
lbl_8002D370:
    lw      $ra, 0x0054($sp)
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


func_8002D3A4:
# Check Scene Mesh Collision?
# A0 = Collision Sector data ptr
# A1 = Global Context + 0x7C0
# A2 = u16 PolyIgnoreFlags
# A3 = u16 ?
# SP+10 = vector3_f32* prevCoords
# SP+14 = vector3_f32* nextCoords
# SP+18 = vector3_f32* finalCoords
# SP+1C = CollisionPoly**
# SP+20 = f32 ?
# SP+24 = ptr to ? (out?)
# SP+28 = s32 CollisionTypeFlags
# V0 = 1 if collision detected, else 0
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    lw      s1, 0x0070($sp)
    sw      $ra, 0x003C($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    andi    t6, s1, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_8002D438
    or      v1, $zero, $zero           # v1 = 00000000
    lhu     t7, 0x0000(s0)             # 00000000
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    or      a0, s0, $zero              # a0 = 00000000
    beq     t7, $at, lbl_8002D438
    lw      a1, 0x004C($sp)
    lw      t8, 0x0058($sp)
    lw      t9, 0x005C($sp)
    lw      t0, 0x0060($sp)
    lw      t1, 0x0064($sp)
    lw      t2, 0x006C($sp)
    lwc1    $f4, 0x0068($sp)
    lhu     a2, 0x0052($sp)
    lhu     a3, 0x0056($sp)
    sw      s1, 0x0028($sp)
    sw      $zero, 0x0044($sp)
    sw      t8, 0x0010($sp)
    sw      t9, 0x0014($sp)
    sw      t0, 0x0018($sp)
    sw      t1, 0x001C($sp)
    sw      t2, 0x0020($sp)
    jal     func_8002D180
    swc1    $f4, 0x0024($sp)
    beq     v0, $zero, lbl_8002D438
    lw      v1, 0x0044($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8002D438:
    andi    t3, s1, 0x0001             # t3 = 00000000
    beql    t3, $zero, lbl_8002D4AC
    andi    t0, s1, 0x0004             # t0 = 00000000
    lhu     t4, 0x0002(s0)             # 00000002
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    addiu   a0, s0, 0x0002             # a0 = 00000002
    beq     t4, $at, lbl_8002D4A8
    lw      a1, 0x004C($sp)
    lw      t5, 0x0058($sp)
    lw      t6, 0x005C($sp)
    lw      t7, 0x0060($sp)
    lw      t8, 0x0064($sp)
    lw      t9, 0x006C($sp)
    lwc1    $f6, 0x0068($sp)
    lhu     a2, 0x0052($sp)
    lhu     a3, 0x0056($sp)
    sw      s1, 0x0028($sp)
    sw      v1, 0x0044($sp)
    sw      t5, 0x0010($sp)
    sw      t6, 0x0014($sp)
    sw      t7, 0x0018($sp)
    sw      t8, 0x001C($sp)
    sw      t9, 0x0020($sp)
    jal     func_8002D180
    swc1    $f6, 0x0024($sp)
    beq     v0, $zero, lbl_8002D4A8
    lw      v1, 0x0044($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8002D4A8:
    andi    t0, s1, 0x0004             # t0 = 00000000
lbl_8002D4AC:
    beql    t0, $zero, lbl_8002D51C
    or      v0, v1, $zero              # v0 = 00000001
    lhu     t1, 0x0004(s0)             # 00000004
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    addiu   a0, s0, 0x0004             # a0 = 00000004
    beq     t1, $at, lbl_8002D518
    lw      a1, 0x004C($sp)
    lw      t2, 0x0058($sp)
    lw      t3, 0x005C($sp)
    lw      t4, 0x0060($sp)
    lw      t5, 0x0064($sp)
    lw      t6, 0x006C($sp)
    lwc1    $f8, 0x0068($sp)
    lhu     a2, 0x0052($sp)
    lhu     a3, 0x0056($sp)
    sw      s1, 0x0028($sp)
    sw      v1, 0x0044($sp)
    sw      t2, 0x0010($sp)
    sw      t3, 0x0014($sp)
    sw      t4, 0x0018($sp)
    sw      t5, 0x001C($sp)
    sw      t6, 0x0020($sp)
    jal     func_8002D180
    swc1    $f8, 0x0024($sp)
    beq     v0, $zero, lbl_8002D518
    lw      v1, 0x0044($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8002D518:
    or      v0, v1, $zero              # v0 = 00000001
lbl_8002D51C:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_8002D530:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s1, 0x0024($sp)
    sw      a1, 0x004C($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a2, $zero              # s3 = 00000000
    or      s4, a3, $zero              # s4 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s2, 0x0028($sp)
    sw      s0, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lw      v0, 0x0000(s3)             # 00000000
    andi    s8, a1, 0x0007             # s8 = 00000000
    sll     s8, s8, 13
    lw      t0, 0x0018(v0)             # 00000018
    lwc1    $f20, 0x0058($sp)
    addiu   s6, $zero, 0x0006          # s6 = 00000006
    ori     s5, $zero, 0xFFFF          # s5 = 0000FFFF
    lw      s2, 0x0010(v0)             # 00000010
    or      s7, t0, $zero              # s7 = 00000000
lbl_8002D598:
    lh      v0, 0x0000(s1)             # 00000000
    sll     v1, v0,  4
    addu    t6, t0, v1
    lhu     t7, 0x0002(t6)             # 00000002
    addu    s0, v1, s7
    and     t8, t7, s8
    beql    t8, $zero, lbl_8002D5D8
    lhu     t2, 0x0002(s0)             # 00000002
    lhu     v0, 0x0002(s1)             # 00000002
    beql    s5, v0, lbl_8002D6CC
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t9, 0x0048(s3)             # 00000048
    sll     t1, v0,  2
    b       lbl_8002D598
    addu    s1, t9, t1
    lhu     t2, 0x0002(s0)             # 00000002
lbl_8002D5D8:
    lwc1    $f4, 0x0004(s4)            # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    andi    t3, t2, 0x1FFF             # t3 = 00000000
    multu   t3, s6
    add.s   $f0, $f4, $f20
    or      a1, s2, $zero              # a1 = 00000000
    mflo    t4
    addu    t5, s2, t4
    lh      t6, 0x0002(t5)             # 00000002
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_8002D684
    mfc1    a3, $f20
    lhu     t7, 0x0004(s0)             # 00000004
    andi    t8, t7, 0x1FFF             # t8 = 00000000
    multu   t8, s6
    mflo    t9
    addu    t1, s2, t9
    lh      t2, 0x0002(t1)             # 00000002
    mtc1    t2, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_8002D684
    mfc1    a3, $f20
    lhu     t3, 0x0006(s0)             # 00000006
    sll     t4, t3,  2
    subu    t4, t4, t3
    sll     t4, t4,  1
    addu    t5, s2, t4
    lh      t6, 0x0002(t5)             # 00000002
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    c.lt.s  $f0, $f4
    nop
    bc1tl   lbl_8002D6CC
    or      v0, $zero, $zero           # v0 = 00000000
    mfc1    a3, $f20
lbl_8002D684:
    jal     func_8002BF8C
    or      a2, s4, $zero              # a2 = 00000000
    beql    v0, $zero, lbl_8002D6A8
    lhu     v0, 0x0002(s1)             # 00000002
    lw      t7, 0x005C($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    b       lbl_8002D6CC
    sw      s0, 0x0000(t7)             # 00000000
    lhu     v0, 0x0002(s1)             # 00000002
lbl_8002D6A8:
    beql    s5, v0, lbl_8002D6CC
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t8, 0x0048(s3)             # 00000048
    sll     t9, v0,  2
    addu    s1, t8, t9
    lw      t1, 0x0000(s3)             # 00000000
    b       lbl_8002D598
    lw      t0, 0x0018(t1)             # 00000018
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002D6CC:
    lw      $ra, 0x0044($sp)
    ldc1    $f20, 0x0018($sp)
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


func_8002D700:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a3, 0x002C($sp)
    lw      t6, 0x0020($sp)
    lhu     t7, 0x003A($sp)
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    lhu     v0, 0x0000(t6)             # 00000000
    andi    t8, t7, 0x0004             # t8 = 00000000
    beql    v0, $at, lbl_8002D774
    lw      t2, 0x0020($sp)
    bne     t8, $zero, lbl_8002D770
    sll     t0, v0,  2
    lw      t9, 0x0048(a2)             # 00000048
    lwc1    $f4, 0x0030($sp)
    lw      t1, 0x0034($sp)
    sw      a2, 0x0028($sp)
    lhu     a1, 0x0026($sp)
    lw      a3, 0x002C($sp)
    addu    a0, t9, t0
    swc1    $f4, 0x0010($sp)
    jal     func_8002D530
    sw      t1, 0x0014($sp)
    beq     v0, $zero, lbl_8002D770
    lw      a2, 0x0028($sp)
    b       lbl_8002D828
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002D770:
    lw      t2, 0x0020($sp)
lbl_8002D774:
    lhu     t3, 0x003A($sp)
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    lhu     v0, 0x0002(t2)             # 00000002
    andi    t4, t3, 0x0002             # t4 = 00000000
    beql    v0, $at, lbl_8002D7D0
    lw      t8, 0x0020($sp)
    bne     t4, $zero, lbl_8002D7CC
    sll     t6, v0,  2
    lw      t5, 0x0048(a2)             # 00000048
    lwc1    $f6, 0x0030($sp)
    lw      t7, 0x0034($sp)
    sw      a2, 0x0028($sp)
    lhu     a1, 0x0026($sp)
    lw      a3, 0x002C($sp)
    addu    a0, t5, t6
    swc1    $f6, 0x0010($sp)
    jal     func_8002D530
    sw      t7, 0x0014($sp)
    beq     v0, $zero, lbl_8002D7CC
    lw      a2, 0x0028($sp)
    b       lbl_8002D828
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002D7CC:
    lw      t8, 0x0020($sp)
lbl_8002D7D0:
    lhu     t9, 0x003A($sp)
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    lhu     v0, 0x0004(t8)             # 00000004
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    v0, $at, lbl_8002D828
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t0, $zero, lbl_8002D824
    sll     t2, v0,  2
    lw      t1, 0x0048(a2)             # 00000048
    lwc1    $f8, 0x0030($sp)
    lw      t3, 0x0034($sp)
    lhu     a1, 0x0026($sp)
    lw      a3, 0x002C($sp)
    addu    a0, t1, t2
    swc1    $f8, 0x0010($sp)
    jal     func_8002D530
    sw      t3, 0x0014($sp)
    beql    v0, $zero, lbl_8002D828
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_8002D828
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002D824:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002D828:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8002D838:
# Get Collision Sector Record
# Doesn't check if within scene bounding box
# A0 = Global Context + 0x7C0
# A1 = CollisionPoly lookup table [Global Context + 0x7C0 + 0x40]
# A2 = vector3_f32* checkCoords
# V0 = out ptr Collision Sector record (6 bytes)
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x0030($sp)
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    jal     func_8002D9B8
    sw      a3, 0x0028($sp)
    lw      a3, 0x0028($sp)
    lw      t6, 0x0024($sp)
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    lw      v1, 0x001C(a3)             # 0000001C
    lw      t8, 0x0020(a3)             # 00000020
    lw      t3, 0x001C($sp)
    multu   t6, v1
    lw      t6, 0x0020($sp)
    lw      t1, 0x002C($sp)
    lw      $ra, 0x0014($sp)
    mflo    t7
    nop
    nop
    multu   t7, t8
    mflo    t9
    nop
    nop
    multu   t9, a0
    mflo    t0
    addu    t2, t0, t1
    nop
    multu   t3, a0
    mflo    t4
    addu    t5, t2, t4
    nop
    multu   t6, v1
    mflo    t7
    nop
    nop
    multu   t7, a0
    mflo    t8
    addu    v0, t5, t8
    nop
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8002D8EC:
# Get Collision Sector Record
# Checks if within scene bounding box
# A0 = Global Context + 0x7C0
# A1 = CollisionPoly lookup table [Global Context + 0x7C0 + 0x40]
# A2 = vector3_f32* checkCoords
# V0 = out ptr Collision Sector record (6 bytes)
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    lw      a0, 0x0028($sp)
    jal     func_8002F0BC
    lw      a1, 0x0030($sp)
    bne     v0, $zero, lbl_8002D91C
    lw      a0, 0x0028($sp)
    b       lbl_8002D9A8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002D91C:
    lw      a1, 0x0030($sp)
    jal     func_8002D9B8
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    lw      t6, 0x0028($sp)
    lw      t7, 0x0024($sp)
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    lw      v1, 0x001C(t6)             # 0000001C
    lw      t9, 0x0020(t6)             # 00000020
    lw      t4, 0x001C($sp)
    multu   t7, v1
    lw      t6, 0x0020($sp)
    lw      t2, 0x002C($sp)
    mflo    t8
    nop
    nop
    multu   t8, t9
    mflo    t0
    nop
    nop
    multu   t0, a0
    mflo    t1
    addu    t3, t1, t2
    nop
    multu   t4, a0
    mflo    t5
    addu    t7, t3, t5
    nop
    multu   t6, v1
    mflo    t8
    nop
    nop
    multu   t8, a0
    mflo    t9
    addu    v0, t7, t9
    nop
lbl_8002D9A8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8002D9B8:
# Get Collision Sector x,y,z index.
# returns index to Global Context + 0x7C0 + 0x40 table
# A0 = Global Context + 0x7C0 (Scene Collision)
# A1 = vector3_f32* coordinates
# A2 = out vector3_s32* Collision Sector Index
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0004(a0)            # 00000004
    lwc1    $f10, 0x0034(a0)           # 00000034
    sub.s   $f8, $f4, $f6
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    v0, $f18
    nop
    sw      v0, 0x0000(a2)             # 00000000
    lwc1    $f6, 0x0008(a0)            # 00000008
    lwc1    $f4, 0x0004(a1)            # 00000004
    lwc1    $f10, 0x0038(a0)           # 00000038
    sub.s   $f8, $f4, $f6
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    nop
    sw      t9, 0x0004(a2)             # 00000004
    lwc1    $f6, 0x000C(a0)            # 0000000C
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x003C(a0)           # 0000003C
    sub.s   $f8, $f4, $f6
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    bgez    v0, lbl_8002DA2C
    sw      t1, 0x0008(a2)             # 00000008
    b       lbl_8002DA40
    sw      $zero, 0x0000(a2)          # 00000000
lbl_8002DA2C:
    lw      v1, 0x001C(a0)             # 0000001C
    slt     $at, v0, v1
    bne     $at, $zero, lbl_8002DA40
    addiu   t2, v1, 0xFFFF             # t2 = FFFFFFFF
    sw      t2, 0x0000(a2)             # 00000000
lbl_8002DA40:
    lw      v0, 0x0004(a2)             # 00000004
    bgezl   v0, lbl_8002DA58
    lw      v1, 0x0020(a0)             # 00000020
    b       lbl_8002DA68
    sw      $zero, 0x0004(a2)          # 00000004
    lw      v1, 0x0020(a0)             # 00000020
lbl_8002DA58:
    slt     $at, v0, v1
    bne     $at, $zero, lbl_8002DA68
    addiu   t3, v1, 0xFFFF             # t3 = FFFFFFFF
    sw      t3, 0x0004(a2)             # 00000004
lbl_8002DA68:
    lw      v0, 0x0008(a2)             # 00000008
    bgezl   v0, lbl_8002DA80
    lw      v1, 0x0024(a0)             # 00000024
    jr      $ra
    sw      $zero, 0x0008(a2)          # 00000008
lbl_8002DA7C:
    lw      v1, 0x0024(a0)             # 00000024
lbl_8002DA80:
    slt     $at, v0, v1
    bne     $at, $zero, lbl_8002DA90
    addiu   t4, v1, 0xFFFF             # t4 = FFFFFFFF
    sw      t4, 0x0008(a2)             # 00000008
lbl_8002DA90:
    jr      $ra
    nop


func_8002DA98:
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0004(a0)            # 00000004
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f10, 0x0008(a0)           # 00000008
    sub.s   $f0, $f4, $f6
    lwc1    $f4, 0x0034(a0)            # 00000034
    lwc1    $f16, 0x0008(a1)           # 00000008
    sub.s   $f2, $f8, $f10
    mul.s   $f6, $f4, $f0
    lwc1    $f18, 0x000C(a0)           # 0000000C
    sub.s   $f12, $f16, $f18
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sw      t7, 0x0000(a2)             # 00000000
    lwc1    $f10, 0x0038(a0)           # 00000038
    mul.s   $f16, $f10, $f2
    trunc.w.s $f10, $f0
    mfc1    t4, $f10
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    nop
    sw      t9, 0x0000(a3)             # 00000000
    lwc1    $f4, 0x003C(a0)            # 0000003C
    lw      t2, 0x0010($sp)
    mul.s   $f6, $f4, $f12
    trunc.w.s $f4, $f2
    trunc.w.s $f8, $f6
    mfc1    t1, $f8
    nop
    sw      t1, 0x0000(t2)             # 00000000
    lwc1    $f16, 0x0028(a0)           # 00000028
    trunc.w.s $f18, $f16
    mfc1    t6, $f18
    nop
    div     $zero, t4, t6
    bne     t6, $zero, lbl_8002DB34
    nop
    break   # 0x01C00
lbl_8002DB34:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t6, $at, lbl_8002DB4C
    lui     $at, 0x8000                # $at = 80000000
    bne     t4, $at, lbl_8002DB4C
    nop
    break   # 0x01800
lbl_8002DB4C:
    mfhi    t7
    slti    $at, t7, 0x0032
    beql    $at, $zero, lbl_8002DB74
    lwc1    $f6, 0x002C(a0)            # 0000002C
    lw      v0, 0x0000(a2)             # 00000000
    blezl   v0, lbl_8002DB74
    lwc1    $f6, 0x002C(a0)            # 0000002C
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sw      t8, 0x0000(a2)             # 00000000
    lwc1    $f6, 0x002C(a0)            # 0000002C
lbl_8002DB74:
    mfc1    t0, $f4
    trunc.w.s $f8, $f6
    mfc1    t2, $f8
    nop
    div     $zero, t0, t2
    bne     t2, $zero, lbl_8002DB94
    nop
    break   # 0x01C00
lbl_8002DB94:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_8002DBAC
    lui     $at, 0x8000                # $at = 80000000
    bne     t0, $at, lbl_8002DBAC
    nop
    break   # 0x01800
lbl_8002DBAC:
    mfhi    t3
    slti    $at, t3, 0x0032
    beql    $at, $zero, lbl_8002DBD4
    lwc1    $f16, 0x0030(a0)           # 00000030
    lw      v0, 0x0000(a3)             # 00000000
    blezl   v0, lbl_8002DBD4
    lwc1    $f16, 0x0030(a0)           # 00000030
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sw      t5, 0x0000(a3)             # 00000000
    lwc1    $f16, 0x0030(a0)           # 00000030
lbl_8002DBD4:
    trunc.w.s $f10, $f12
    lw      t1, 0x0010($sp)
    trunc.w.s $f18, $f16
    mfc1    t6, $f10
    mfc1    t8, $f18
    nop
    div     $zero, t6, t8
    bne     t8, $zero, lbl_8002DBFC
    nop
    break   # 0x01C00
lbl_8002DBFC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t8, $at, lbl_8002DC14
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_8002DC14
    nop
    break   # 0x01800
lbl_8002DC14:
    mfhi    t9
    slti    $at, t9, 0x0032
    beq     $at, $zero, lbl_8002DC34
    nop
    lw      v0, 0x0000(t1)             # 00000000
    blez    v0, lbl_8002DC34
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sw      t0, 0x0000(t1)             # 00000000
lbl_8002DC34:
    jr      $ra
    nop


func_8002DC3C:
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0004(a0)            # 00000004
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f10, 0x0008(a0)           # 00000008
    sub.s   $f0, $f4, $f6
    lwc1    $f4, 0x0034(a0)            # 00000034
    lwc1    $f16, 0x0008(a1)           # 00000008
    sub.s   $f2, $f8, $f10
    mul.s   $f6, $f4, $f0
    lwc1    $f18, 0x000C(a0)           # 0000000C
    sub.s   $f12, $f16, $f18
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sw      t7, 0x0000(a2)             # 00000000
    lwc1    $f10, 0x0038(a0)           # 00000038
    mul.s   $f16, $f10, $f2
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    trunc.w.s $f18, $f0
    sw      t9, 0x0000(a3)             # 00000000
    lwc1    $f4, 0x003C(a0)            # 0000003C
    lw      t2, 0x0010($sp)
    mfc1    t5, $f18
    mul.s   $f6, $f4, $f12
    trunc.w.s $f18, $f12
    trunc.w.s $f8, $f6
    mfc1    t1, $f8
    trunc.w.s $f8, $f2
    sw      t1, 0x0000(t2)             # 00000000
    lwc1    $f10, 0x0028(a0)           # 00000028
    trunc.w.s $f16, $f10
    mfc1    v0, $f16
    nop
    div     $zero, t5, v0
    bne     v0, $zero, lbl_8002DCD4
    nop
    break   # 0x01C00
lbl_8002DCD4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_8002DCEC
    lui     $at, 0x8000                # $at = 80000000
    bne     t5, $at, lbl_8002DCEC
    nop
    break   # 0x01800
lbl_8002DCEC:
    mfhi    t6
    addiu   t7, v0, 0xFFCE             # t7 = FFFFFFCE
    slt     $at, t7, t6
    beql    $at, $zero, lbl_8002DD24
    lwc1    $f4, 0x002C(a0)            # 0000002C
    lw      t8, 0x001C(a0)             # 0000001C
    lw      v0, 0x0000(a2)             # 00000000
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    slt     $at, v0, t9
    beql    $at, $zero, lbl_8002DD24
    lwc1    $f4, 0x002C(a0)            # 0000002C
    addiu   t0, v0, 0x0001             # t0 = 00000001
    sw      t0, 0x0000(a2)             # 00000000
    lwc1    $f4, 0x002C(a0)            # 0000002C
lbl_8002DD24:
    mfc1    t3, $f8
    trunc.w.s $f6, $f4
    mfc1    v0, $f6
    nop
    div     $zero, t3, v0
    bne     v0, $zero, lbl_8002DD44
    nop
    break   # 0x01C00
lbl_8002DD44:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_8002DD5C
    lui     $at, 0x8000                # $at = 80000000
    bne     t3, $at, lbl_8002DD5C
    nop
    break   # 0x01800
lbl_8002DD5C:
    mfhi    t4
    addiu   t5, v0, 0xFFCE             # t5 = FFFFFFCE
    slt     $at, t5, t4
    beql    $at, $zero, lbl_8002DD94
    lwc1    $f10, 0x0030(a0)           # 00000030
    lw      t6, 0x0020(a0)             # 00000020
    lw      v0, 0x0000(a3)             # 00000000
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    slt     $at, v0, t7
    beql    $at, $zero, lbl_8002DD94
    lwc1    $f10, 0x0030(a0)           # 00000030
    addiu   t8, v0, 0x0001             # t8 = 00000001
    sw      t8, 0x0000(a3)             # 00000000
    lwc1    $f10, 0x0030(a0)           # 00000030
lbl_8002DD94:
    mfc1    t1, $f18
    lw      t4, 0x0010($sp)
    trunc.w.s $f16, $f10
    mfc1    v0, $f16
    nop
    div     $zero, t1, v0
    bne     v0, $zero, lbl_8002DDB8
    nop
    break   # 0x01C00
lbl_8002DDB8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_8002DDD0
    lui     $at, 0x8000                # $at = 80000000
    bne     t1, $at, lbl_8002DDD0
    nop
    break   # 0x01800
lbl_8002DDD0:
    mfhi    t2
    addiu   t3, v0, 0xFFCE             # t3 = FFFFFFCE
    slt     $at, t3, t2
    beq     $at, $zero, lbl_8002DE00
    nop
    lw      t5, 0x0024(a0)             # 00000024
    lw      v0, 0x0000(t4)             # 00000000
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFCD
    slt     $at, v0, t6
    beq     $at, $zero, lbl_8002DE00
    addiu   t7, v0, 0x0001             # t7 = 00000001
    sw      t7, 0x0000(t4)             # 00000000
lbl_8002DE00:
    jr      $ra
    nop


func_8002DE08:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a3, 0x0074($sp)
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    lh      t6, 0x008E($sp)
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFE4
    sll     t7, t6,  4
    addu    t0, a2, t7
    lhu     v1, 0x0002(t0)             # 00000002
    sw      t0, 0x0034($sp)
    andi    v1, v1, 0x1FFF             # v1 = 00000000
    sll     v1, v1, 16
    sra     v1, v1, 16
    multu   v1, t1
    mflo    t8
    addu    a1, t8, s0
    jal     func_80063CCC              # Vec3f_CopyVec3s
    nop
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFF0
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFE4
    lw      t0, 0x0034($sp)
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    addiu   a0, t0, 0x0004             # a0 = 00000004
    addiu   a1, t0, 0x0008             # a1 = 00000008
    sltu    $at, a0, a1
    beql    $at, $zero, lbl_8002DF70
    lw      t5, 0x007C($sp)
    lhu     v1, 0x0000(a0)             # 00000004
lbl_8002DE88:
    lwc1    $f10, 0x0058($sp)
    addiu   a0, a0, 0x0002             # a0 = 00000006
    andi    v1, v1, 0x1FFF             # v1 = 00000000
    sll     v1, v1, 16
    sra     v1, v1, 16
    multu   v1, t1
    sltu    $at, a0, a1
    lwc1    $f16, 0x004C($sp)
    mflo    t9
    addu    v0, t9, s0
    lh      t2, 0x0000(v0)             # 00000000
    lh      t3, 0x0002(v0)             # 00000002
    lh      t4, 0x0004(v0)             # 00000004
    mtc1    t2, $f4                    # $f4 = 0.00
    mtc1    t3, $f6                    # $f6 = 0.00
    mtc1    t4, $f8                    # $f8 = 0.00
    cvt.s.w $f0, $f4
    cvt.s.w $f2, $f6
    c.lt.s  $f0, $f10
    cvt.s.w $f12, $f8
    bc1fl   lbl_8002DEEC
    c.lt.s  $f16, $f0
    b       lbl_8002DEFC
    swc1    $f0, 0x0058($sp)
    c.lt.s  $f16, $f0
lbl_8002DEEC:
    nop
    bc1fl   lbl_8002DF00
    lwc1    $f18, 0x005C($sp)
    swc1    $f0, 0x004C($sp)
lbl_8002DEFC:
    lwc1    $f18, 0x005C($sp)
lbl_8002DF00:
    lwc1    $f4, 0x0050($sp)
    c.lt.s  $f2, $f18
    nop
    bc1fl   lbl_8002DF20
    c.lt.s  $f4, $f2
    b       lbl_8002DF30
    swc1    $f2, 0x005C($sp)
    c.lt.s  $f4, $f2
lbl_8002DF20:
    nop
    bc1fl   lbl_8002DF34
    lwc1    $f6, 0x0060($sp)
    swc1    $f2, 0x0050($sp)
lbl_8002DF30:
    lwc1    $f6, 0x0060($sp)
lbl_8002DF34:
    lwc1    $f8, 0x0054($sp)
    c.lt.s  $f12, $f6
    nop
    bc1fl   lbl_8002DF54
    c.lt.s  $f8, $f12
    b       lbl_8002DF64
    swc1    $f12, 0x0060($sp)
    c.lt.s  $f8, $f12
lbl_8002DF54:
    nop
    bc1f    lbl_8002DF64
    nop
    swc1    $f12, 0x0054($sp)
lbl_8002DF64:
    bnel    $at, $zero, lbl_8002DE88
    lhu     v1, 0x0000(a0)             # 00000006
    lw      t5, 0x007C($sp)
lbl_8002DF70:
    lw      a0, 0x0068($sp)
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFF0
    lw      a2, 0x0074($sp)
    lw      a3, 0x0078($sp)
    jal     func_8002DA98
    sw      t5, 0x0010($sp)
    lw      t6, 0x0088($sp)
    lw      a0, 0x0068($sp)
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFE4
    lw      a2, 0x0080($sp)
    lw      a3, 0x0084($sp)
    jal     func_8002DC3C
    sw      t6, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_8002DFB8:
    addiu   $sp, $sp, 0xFF48           # $sp -= 0xB8
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a3, 0x00C4($sp)
    lh      t6, 0x00CA($sp)
    sw      $zero, 0x0050($sp)
    sw      $zero, 0x004C($sp)
    sll     t7, t6,  4
    addu    v0, t7, a2
    lhu     t8, 0x0002(v0)             # 00000002
    lw      t2, 0x00C4($sp)
    sw      v0, 0x0044($sp)
    andi    t9, t8, 0x1FFF             # t9 = 00000000
    sll     t1, t9,  2
    subu    t1, t1, t9
    sll     t1, t1,  1
    addiu   a1, $sp, 0x0070            # a1 = FFFFFFB8
    jal     func_8002B4DC
    addu    a0, t1, t2
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A5794
    or      a2, s1, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_8002E030
    sw      v0, 0x004C($sp)
    b       lbl_8002E6F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002E030:
    lw      t3, 0x0044($sp)
    lw      t7, 0x00C4($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    lhu     t4, 0x0004(t3)             # 00000004
    andi    t5, t4, 0x1FFF             # t5 = 00000000
    sll     t6, t5,  2
    subu    t6, t6, t5
    sll     t6, t6,  1
    jal     func_8002B4DC
    addu    a0, t6, t7
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFAC
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A5794
    or      a2, s1, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_8002E078
    sw      v0, 0x0050($sp)
    b       lbl_8002E6F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002E078:
    lw      t8, 0x0044($sp)
    lw      t2, 0x00C4($sp)
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFA0
    lhu     t9, 0x0006(t8)             # 00000006
    sll     t1, t9,  2
    subu    t1, t1, t9
    sll     t1, t1,  1
    jal     func_8002B4DC
    addu    a0, t1, t2
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFA0
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A5794
    or      a2, s1, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_8002E0BC
    sw      v0, 0x0054($sp)
    b       lbl_8002E6F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002E0BC:
    lw      t0, 0x004C($sp)
    lw      a3, 0x0050($sp)
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    and     t3, v0, t0
    and     t4, t3, a3
    beq     t4, $zero, lbl_8002E0E0
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_8002E6F8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002E0E0:
    jal     func_800A5840
    or      a2, s1, $zero              # a2 = 00000000
    lw      t0, 0x004C($sp)
    sll     t5, v0,  8
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFAC
    or      t0, t0, t5                 # t0 = 00000000
    sw      t0, 0x004C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A5840
    or      a2, s1, $zero              # a2 = 00000000
    lw      a3, 0x0050($sp)
    sll     t6, v0,  8
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFA0
    or      a3, a3, t6                 # a3 = 00000000
    sw      a3, 0x0050($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A5840
    or      a2, s1, $zero              # a2 = 00000000
    lw      v1, 0x0054($sp)
    lw      t0, 0x004C($sp)
    lw      a3, 0x0050($sp)
    sll     t7, v0,  8
    or      v1, v1, t7                 # v1 = 00000000
    and     t8, v1, t0
    and     t9, t8, a3
    beq     t9, $zero, lbl_8002E154
    sw      v1, 0x0054($sp)
    b       lbl_8002E6F8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002E154:
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A59F0
    or      a2, s1, $zero              # a2 = 00000000
    lw      t0, 0x004C($sp)
    sll     t1, v0, 24
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFAC
    or      t0, t0, t1                 # t0 = 00000000
    sw      t0, 0x004C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A59F0
    or      a2, s1, $zero              # a2 = 00000000
    lw      a3, 0x0050($sp)
    sll     t2, v0, 24
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFA0
    or      a3, a3, t2                 # a3 = 00000000
    sw      a3, 0x0050($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A59F0
    or      a2, s1, $zero              # a2 = 00000000
    lw      v1, 0x0054($sp)
    lw      t0, 0x004C($sp)
    lw      a3, 0x0050($sp)
    sll     t3, v0, 24
    or      v1, v1, t3                 # v1 = 00000000
    and     t4, v1, t0
    and     t5, t4, a3
    beq     t5, $zero, lbl_8002E1D0
    sw      v1, 0x0054($sp)
    b       lbl_8002E6F8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002E1D0:
    lw      a0, 0x0044($sp)
    addiu   a1, $sp, 0x0088            # a1 = FFFFFFD0
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFCC
    jal     func_8002B610
    addiu   a3, $sp, 0x0080            # a3 = FFFFFFC8
    lw      t6, 0x0044($sp)
    lwc1    $f6, 0x0084($sp)
    lwc1    $f8, 0x0080($sp)
    lh      t7, 0x000E(t6)             # 0000000E
    swc1    $f6, 0x0010($sp)
    swc1    $f8, 0x0014($sp)
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   t8, $sp, 0x00B4            # t8 = FFFFFFFC
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    cvt.s.w $f0, $f4
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFA0
    lw      a3, 0x0088($sp)
    swc1    $f0, 0x0018($sp)
    lwc1    $f10, 0x0008(s0)           # 00000008
    swc1    $f10, 0x001C($sp)
    lwc1    $f16, 0x0000(s0)           # 00000000
    sw      t8, 0x0024($sp)
    swc1    $f16, 0x0020($sp)
    lwc1    $f18, 0x0004(s0)           # 00000004
    swc1    $f18, 0x0028($sp)
    lwc1    $f4, 0x0004(s1)            # 00000004
    swc1    $f0, 0x007C($sp)
    jal     func_800A6FB4
    swc1    $f4, 0x002C($sp)
    bne     v0, $zero, lbl_8002E358
    lwc1    $f6, 0x0084($sp)
    lwc1    $f8, 0x0080($sp)
    lwc1    $f10, 0x007C($sp)
    swc1    $f6, 0x0010($sp)
    swc1    $f8, 0x0014($sp)
    swc1    $f10, 0x0018($sp)
    lwc1    $f16, 0x0008(s1)           # 00000008
    addiu   t9, $sp, 0x00B4            # t9 = FFFFFFFC
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    swc1    $f16, 0x001C($sp)
    lwc1    $f18, 0x0000(s0)           # 00000000
    sw      t9, 0x0024($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    swc1    $f18, 0x0020($sp)
    lwc1    $f4, 0x0004(s0)            # 00000004
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFA0
    lw      a3, 0x0088($sp)
    swc1    $f4, 0x0028($sp)
    lwc1    $f6, 0x0004(s1)            # 00000004
    jal     func_800A6FB4
    swc1    $f6, 0x002C($sp)
    bne     v0, $zero, lbl_8002E358
    lwc1    $f8, 0x0084($sp)
    lwc1    $f10, 0x0080($sp)
    lwc1    $f16, 0x007C($sp)
    swc1    $f8, 0x0010($sp)
    swc1    $f10, 0x0014($sp)
    swc1    $f16, 0x0018($sp)
    lwc1    $f18, 0x0008(s0)           # 00000008
    addiu   t1, $sp, 0x00B4            # t1 = FFFFFFFC
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    swc1    $f18, 0x001C($sp)
    lwc1    $f4, 0x0000(s1)            # 00000000
    sw      t1, 0x0024($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    swc1    $f4, 0x0020($sp)
    lwc1    $f6, 0x0004(s0)            # 00000004
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFA0
    lw      a3, 0x0088($sp)
    swc1    $f6, 0x0028($sp)
    lwc1    $f8, 0x0004(s1)            # 00000004
    jal     func_800A6FB4
    swc1    $f8, 0x002C($sp)
    bne     v0, $zero, lbl_8002E358
    lwc1    $f10, 0x0084($sp)
    lwc1    $f16, 0x0080($sp)
    lwc1    $f18, 0x007C($sp)
    swc1    $f10, 0x0010($sp)
    swc1    $f16, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    lwc1    $f4, 0x0008(s1)            # 00000008
    addiu   t2, $sp, 0x00B4            # t2 = FFFFFFFC
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    swc1    $f4, 0x001C($sp)
    lwc1    $f6, 0x0000(s1)            # 00000000
    sw      t2, 0x0024($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    swc1    $f6, 0x0020($sp)
    lwc1    $f8, 0x0004(s0)            # 00000004
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFA0
    lw      a3, 0x0088($sp)
    swc1    $f8, 0x0028($sp)
    lwc1    $f10, 0x0004(s1)           # 00000004
    jal     func_800A6FB4
    swc1    $f10, 0x002C($sp)
    beq     v0, $zero, lbl_8002E360
    lwc1    $f16, 0x0084($sp)
lbl_8002E358:
    b       lbl_8002E6F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002E360:
    lwc1    $f18, 0x0080($sp)
    lwc1    $f4, 0x007C($sp)
    swc1    $f16, 0x0010($sp)
    swc1    $f18, 0x0014($sp)
    swc1    $f4, 0x0018($sp)
    lwc1    $f6, 0x0000(s0)            # 00000000
    addiu   t3, $sp, 0x00B4            # t3 = FFFFFFFC
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    swc1    $f6, 0x001C($sp)
    lwc1    $f8, 0x0004(s0)            # 00000004
    sw      t3, 0x0024($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    swc1    $f8, 0x0020($sp)
    lwc1    $f10, 0x0008(s0)           # 00000008
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFA0
    lw      a3, 0x0088($sp)
    swc1    $f10, 0x0028($sp)
    lwc1    $f16, 0x0008(s1)           # 00000008
    jal     func_800A7CEC
    swc1    $f16, 0x002C($sp)
    bne     v0, $zero, lbl_8002E4C0
    lwc1    $f18, 0x0084($sp)
    lwc1    $f4, 0x0080($sp)
    lwc1    $f6, 0x007C($sp)
    swc1    $f18, 0x0010($sp)
    swc1    $f4, 0x0014($sp)
    swc1    $f6, 0x0018($sp)
    lwc1    $f8, 0x0000(s0)            # 00000000
    addiu   t4, $sp, 0x00B4            # t4 = FFFFFFFC
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    swc1    $f8, 0x001C($sp)
    lwc1    $f10, 0x0004(s1)           # 00000004
    sw      t4, 0x0024($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    swc1    $f10, 0x0020($sp)
    lwc1    $f16, 0x0008(s0)           # 00000008
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFA0
    lw      a3, 0x0088($sp)
    swc1    $f16, 0x0028($sp)
    lwc1    $f18, 0x0008(s1)           # 00000008
    jal     func_800A7CEC
    swc1    $f18, 0x002C($sp)
    bne     v0, $zero, lbl_8002E4C0
    lwc1    $f4, 0x0084($sp)
    lwc1    $f6, 0x0080($sp)
    lwc1    $f8, 0x007C($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    lwc1    $f10, 0x0000(s1)           # 00000000
    addiu   t5, $sp, 0x00B4            # t5 = FFFFFFFC
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    swc1    $f10, 0x001C($sp)
    lwc1    $f16, 0x0004(s0)           # 00000004
    sw      t5, 0x0024($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    swc1    $f16, 0x0020($sp)
    lwc1    $f18, 0x0008(s0)           # 00000008
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFA0
    lw      a3, 0x0088($sp)
    swc1    $f18, 0x0028($sp)
    lwc1    $f4, 0x0008(s1)            # 00000008
    jal     func_800A7CEC
    swc1    $f4, 0x002C($sp)
    bne     v0, $zero, lbl_8002E4C0
    lwc1    $f6, 0x0084($sp)
    lwc1    $f8, 0x0080($sp)
    lwc1    $f10, 0x007C($sp)
    swc1    $f6, 0x0010($sp)
    swc1    $f8, 0x0014($sp)
    swc1    $f10, 0x0018($sp)
    lwc1    $f16, 0x0000(s1)           # 00000000
    addiu   t6, $sp, 0x00B4            # t6 = FFFFFFFC
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    swc1    $f16, 0x001C($sp)
    lwc1    $f18, 0x0004(s1)           # 00000004
    sw      t6, 0x0024($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    swc1    $f18, 0x0020($sp)
    lwc1    $f4, 0x0008(s0)            # 00000008
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFA0
    lw      a3, 0x0088($sp)
    swc1    $f4, 0x0028($sp)
    lwc1    $f6, 0x0008(s1)            # 00000008
    jal     func_800A7CEC
    swc1    $f6, 0x002C($sp)
    beq     v0, $zero, lbl_8002E4C8
    lwc1    $f8, 0x0084($sp)
lbl_8002E4C0:
    b       lbl_8002E6F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002E4C8:
    lwc1    $f10, 0x0080($sp)
    lwc1    $f16, 0x007C($sp)
    swc1    $f8, 0x0010($sp)
    swc1    $f10, 0x0014($sp)
    swc1    $f16, 0x0018($sp)
    lwc1    $f18, 0x0004(s0)           # 00000004
    addiu   t7, $sp, 0x00B4            # t7 = FFFFFFFC
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    swc1    $f18, 0x001C($sp)
    lwc1    $f4, 0x0008(s0)            # 00000008
    sw      t7, 0x0024($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    swc1    $f4, 0x0020($sp)
    lwc1    $f6, 0x0000(s0)            # 00000000
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFA0
    lw      a3, 0x0088($sp)
    swc1    $f6, 0x0028($sp)
    lwc1    $f8, 0x0000(s1)            # 00000000
    jal     func_800A7630
    swc1    $f8, 0x002C($sp)
    bne     v0, $zero, lbl_8002E628
    lwc1    $f10, 0x0084($sp)
    lwc1    $f16, 0x0080($sp)
    lwc1    $f18, 0x007C($sp)
    swc1    $f10, 0x0010($sp)
    swc1    $f16, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    lwc1    $f4, 0x0004(s0)            # 00000004
    addiu   t8, $sp, 0x00B4            # t8 = FFFFFFFC
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    swc1    $f4, 0x001C($sp)
    lwc1    $f6, 0x0008(s1)            # 00000008
    sw      t8, 0x0024($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    swc1    $f6, 0x0020($sp)
    lwc1    $f8, 0x0000(s0)            # 00000000
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFA0
    lw      a3, 0x0088($sp)
    swc1    $f8, 0x0028($sp)
    lwc1    $f10, 0x0000(s1)           # 00000000
    jal     func_800A7630
    swc1    $f10, 0x002C($sp)
    bne     v0, $zero, lbl_8002E628
    lwc1    $f16, 0x0084($sp)
    lwc1    $f18, 0x0080($sp)
    lwc1    $f4, 0x007C($sp)
    swc1    $f16, 0x0010($sp)
    swc1    $f18, 0x0014($sp)
    swc1    $f4, 0x0018($sp)
    lwc1    $f6, 0x0004(s1)            # 00000004
    addiu   t9, $sp, 0x00B4            # t9 = FFFFFFFC
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    swc1    $f6, 0x001C($sp)
    lwc1    $f8, 0x0008(s0)            # 00000008
    sw      t9, 0x0024($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    swc1    $f8, 0x0020($sp)
    lwc1    $f10, 0x0000(s0)           # 00000000
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFA0
    lw      a3, 0x0088($sp)
    swc1    $f10, 0x0028($sp)
    lwc1    $f16, 0x0000(s1)           # 00000000
    jal     func_800A7630
    swc1    $f16, 0x002C($sp)
    bne     v0, $zero, lbl_8002E628
    lwc1    $f18, 0x0084($sp)
    lwc1    $f4, 0x0080($sp)
    lwc1    $f6, 0x007C($sp)
    swc1    $f18, 0x0010($sp)
    swc1    $f4, 0x0014($sp)
    swc1    $f6, 0x0018($sp)
    lwc1    $f8, 0x0004(s1)            # 00000004
    addiu   t1, $sp, 0x00B4            # t1 = FFFFFFFC
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFB8
    swc1    $f8, 0x001C($sp)
    lwc1    $f10, 0x0008(s1)           # 00000008
    sw      t1, 0x0024($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFAC
    swc1    $f10, 0x0020($sp)
    lwc1    $f16, 0x0000(s0)           # 00000000
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFA0
    lw      a3, 0x0088($sp)
    swc1    $f16, 0x0028($sp)
    lwc1    $f18, 0x0000(s1)           # 00000000
    jal     func_800A7630
    swc1    $f18, 0x002C($sp)
    beq     v0, $zero, lbl_8002E630
    lw      t2, 0x0044($sp)
lbl_8002E628:
    b       lbl_8002E6F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002E630:
    lhu     t3, 0x0002(t2)             # 00000002
    lw      t6, 0x00C4($sp)
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFF0
    andi    t4, t3, 0x1FFF             # t4 = 00000000
    sll     t5, t4,  2
    subu    t5, t5, t4
    sll     t5, t5,  1
    jal     func_8002B4DC
    addu    a0, t5, t6
    lw      t7, 0x0044($sp)
    lw      t2, 0x00C4($sp)
    addiu   a1, $sp, 0x009C            # a1 = FFFFFFE4
    lhu     t8, 0x0004(t7)             # 00000004
    andi    t9, t8, 0x1FFF             # t9 = 00000000
    sll     t1, t9,  2
    subu    t1, t1, t9
    sll     t1, t1,  1
    jal     func_8002B4DC
    addu    a0, t1, t2
    lw      t3, 0x0044($sp)
    lw      t6, 0x00C4($sp)
    addiu   a1, $sp, 0x0090            # a1 = FFFFFFD8
    lhu     t4, 0x0006(t3)             # 00000006
    sll     t5, t4,  2
    subu    t5, t5, t4
    sll     t5, t5,  1
    jal     func_8002B4DC
    addu    a0, t5, t6
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x00A8            # a2 = FFFFFFF0
    jal     func_800A5B6C
    addiu   a3, $sp, 0x009C            # a3 = FFFFFFE4
    bne     v0, $zero, lbl_8002E6EC
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x009C            # a2 = FFFFFFE4
    jal     func_800A5B6C
    addiu   a3, $sp, 0x0090            # a3 = FFFFFFD8
    bne     v0, $zero, lbl_8002E6EC
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0090            # a2 = FFFFFFD8
    jal     func_800A5B6C
    addiu   a3, $sp, 0x00A8            # a3 = FFFFFFF0
    beql    v0, $zero, lbl_8002E6F8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002E6EC:
    b       lbl_8002E6F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002E6F8:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B8           # $sp += 0xB8


func_8002E70C:
    addiu   $sp, $sp, 0xFF08           # $sp -= 0xF8
    sw      s2, 0x0058($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0074($sp)
    sw      s8, 0x0070($sp)
    sw      s7, 0x006C($sp)
    sw      s6, 0x0068($sp)
    sw      s5, 0x0064($sp)
    sw      s4, 0x0060($sp)
    sw      s3, 0x005C($sp)
    sw      s1, 0x0054($sp)
    sw      s0, 0x0050($sp)
    sdc1    $f26, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    sw      a1, 0x00FC($sp)
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    lw      t6, 0x001C(s2)             # 0000001C
    lw      t7, 0x0020(s2)             # 00000020
    lw      t8, 0x0024(s2)             # 00000024
    lw      a3, 0x0000(s2)             # 00000000
    multu   t6, t7
    or      v0, a2, $zero              # v0 = 00000000
    ori     v1, $zero, 0xFFFF          # v1 = 0000FFFF
    addiu   s7, $sp, 0x00AC            # s7 = FFFFFFB4
    addiu   s6, $sp, 0x00B8            # s6 = FFFFFFC0
    mflo    a1
    nop
    nop
    multu   a1, t8
    mflo    t9
    nop
    nop
    multu   t9, t0
    mflo    t1
    addu    t2, t1, a2
    sltu    $at, a2, t2
    beql    $at, $zero, lbl_8002E804
    lhu     v1, 0x0014(a3)             # 00000014
    sh      v1, 0x0000(v0)             # 00000000
lbl_8002E7B0:
    sh      v1, 0x0002(v0)             # 00000002
    sh      v1, 0x0004(v0)             # 00000004
    lw      t4, 0x0020(s2)             # 00000020
    lw      t3, 0x001C(s2)             # 0000001C
    lw      t5, 0x0024(s2)             # 00000024
    addiu   v0, v0, 0x0006             # v0 = 00000006
    multu   t3, t4
    mflo    a1
    nop
    nop
    multu   a1, t5
    mflo    t6
    nop
    nop
    multu   t6, t0
    mflo    t7
    addu    t8, t7, a2
    sltu    $at, v0, t8
    bnel    $at, $zero, lbl_8002E7B0
    sh      v1, 0x0000(v0)             # 00000006
    lhu     v1, 0x0014(a3)             # 00000014
lbl_8002E804:
    lw      s4, 0x0010(a3)             # 00000010
    lw      s5, 0x0018(a3)             # 00000018
    lui     $at, 0x42C8                # $at = 42C80000
    sw      a1, 0x0098($sp)
    mtc1    $at, $f0                   # $f0 = 100.00
    lwc1    $f4, 0x0028(s2)            # 00000028
    lwc1    $f6, 0x002C(s2)            # 0000002C
    lwc1    $f8, 0x0030(s2)            # 00000030
    add.s   $f22, $f4, $f0
    add.s   $f24, $f6, $f0
    blez    v1, lbl_8002EAC4
    add.s   $f26, $f8, $f0
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f20                  # $f20 = 50.00
    sw      $zero, 0x00E8($sp)
    sw      v1, 0x00EC($sp)
    sw      a2, 0x0100($sp)
lbl_8002E848:
    lw      v0, 0x00E8($sp)
    addiu   t9, $sp, 0x00D4            # t9 = FFFFFFDC
    addiu   t1, $sp, 0x00D0            # t1 = FFFFFFD8
    sll     s3, v0, 16
    sra     s3, s3, 16
    addiu   t2, $sp, 0x00CC            # t2 = FFFFFFD4
    addiu   t3, $sp, 0x00C8            # t3 = FFFFFFD0
    addiu   t4, $sp, 0x00C4            # t4 = FFFFFFCC
    sw      t4, 0x0020($sp)
    sw      t3, 0x001C($sp)
    sw      t2, 0x0018($sp)
    sw      s3, 0x0024($sp)
    sw      t1, 0x0014($sp)
    sw      t9, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    or      a2, s5, $zero              # a2 = 00000000
    jal     func_8002DE08
    addiu   a3, $sp, 0x00D8            # a3 = FFFFFFE0
    lw      a0, 0x00D0($sp)
    lwc1    $f10, 0x0030(s2)           # 00000030
    lw      t6, 0x0098($sp)
    mtc1    a0, $f16                   # $f16 = 0.00
    lwc1    $f6, 0x000C(s2)            # 0000000C
    multu   a0, t6
    cvt.s.w $f18, $f16
    lw      v0, 0x00C4($sp)
    lw      t9, 0x0100($sp)
    lw      v1, 0x00C8($sp)
    sll     t1, t6,  2
    addiu   v0, v0, 0x0001             # v0 = 00000001
    mul.s   $f4, $f10, $f18
    slt     $at, a0, v0
    subu    t1, t1, t6
    mflo    t7
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  1
    add.s   $f8, $f4, $f6
    sll     t1, t1,  1
    addu    a1, t8, t9
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sub.s   $f16, $f8, $f20
    add.s   $f10, $f16, $f26
    swc1    $f16, 0x00C0($sp)
    beq     $at, $zero, lbl_8002EAB0
    swc1    $f10, 0x00B4($sp)
    sw      t1, 0x007C($sp)
lbl_8002E908:
    lw      t3, 0x00D4($sp)
    lwc1    $f18, 0x002C(s2)           # 0000002C
    lw      t2, 0x001C(s2)             # 0000001C
    mtc1    t3, $f4                    # $f4 = 0.00
    lwc1    $f16, 0x0008(s2)           # 00000008
    multu   t2, t3
    cvt.s.w $f6, $f4
    slt     $at, t3, v1
    sw      t3, 0x00E0($sp)
    mul.s   $f8, $f18, $f6
    mflo    t4
    sll     t7, t4,  2
    subu    t7, t7, t4
    sll     t7, t7,  1
    add.s   $f10, $f8, $f16
    addu    s8, t7, a1
    sub.s   $f4, $f10, $f20
    add.s   $f18, $f4, $f24
    swc1    $f4, 0x00BC($sp)
    beq     $at, $zero, lbl_8002EA7C
    swc1    $f18, 0x00B0($sp)
    lw      v0, 0x00CC($sp)
    sw      a0, 0x00DC($sp)
    sw      a1, 0x00A4($sp)
    addiu   v0, v0, 0x0001             # v0 = 00000002
lbl_8002E96C:
    lw      s1, 0x00D8($sp)
    lwc1    $f6, 0x0028(s2)            # 00000028
    lwc1    $f4, 0x0004(s2)            # 00000004
    mtc1    s1, $f8                    # $f8 = 0.00
    sll     t9, s1,  2
    subu    t9, t9, s1
    cvt.s.w $f16, $f8
    sll     t9, t9,  1
    slt     $at, s1, v0
    addu    s0, t9, s8
    mul.s   $f10, $f6, $f16
    add.s   $f18, $f10, $f4
    sub.s   $f8, $f18, $f20
    add.s   $f6, $f8, $f22
    swc1    $f8, 0x00B8($sp)
    beq     $at, $zero, lbl_8002EA24
    swc1    $f6, 0x00AC($sp)
lbl_8002E9B0:
    or      a0, s6, $zero              # a0 = FFFFFFC0
    or      a1, s7, $zero              # a1 = FFFFFFB4
    or      a2, s5, $zero              # a2 = 00000000
    or      a3, s4, $zero              # a3 = 00000000
    jal     func_8002DFB8
    sw      s3, 0x0010($sp)
    beq     v0, $zero, lbl_8002E9E4
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s5, $zero              # a2 = 00000000
    or      a3, s4, $zero              # a3 = 00000000
    jal     func_8002C27C
    sw      s3, 0x0010($sp)
lbl_8002E9E4:
    lwc1    $f16, 0x00B8($sp)
    lwc1    $f10, 0x0028(s2)           # 00000028
    lwc1    $f18, 0x00AC($sp)
    lw      v0, 0x00CC($sp)
    add.s   $f4, $f16, $f10
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   v0, v0, 0x0001             # v0 = 00000001
    slt     $at, s1, v0
    swc1    $f4, 0x00B8($sp)
    lwc1    $f8, 0x0028(s2)            # 00000028
    addiu   s0, s0, 0x0006             # s0 = 00000006
    add.s   $f6, $f18, $f8
    bne     $at, $zero, lbl_8002E9B0
    swc1    $f6, 0x00AC($sp)
    lw      v1, 0x00C8($sp)
    addiu   v1, v1, 0x0001             # v1 = 00000001
lbl_8002EA24:
    lwc1    $f16, 0x00BC($sp)
    lwc1    $f10, 0x002C(s2)           # 0000002C
    lwc1    $f18, 0x00B0($sp)
    lw      a0, 0x00E0($sp)
    add.s   $f4, $f16, $f10
    addiu   a0, a0, 0x0001             # a0 = 00000001
    slt     $at, a0, v1
    swc1    $f4, 0x00BC($sp)
    lwc1    $f8, 0x002C(s2)            # 0000002C
    add.s   $f6, $f18, $f8
    swc1    $f6, 0x00B0($sp)
    lw      t5, 0x001C(s2)             # 0000001C
    sw      a0, 0x00E0($sp)
    sll     t6, t5,  2
    subu    t6, t6, t5
    sll     t6, t6,  1
    bne     $at, $zero, lbl_8002E96C
    addu    s8, s8, t6
    lw      v0, 0x00C4($sp)
    lw      a1, 0x00A4($sp)
    lw      a0, 0x00DC($sp)
    addiu   v0, v0, 0x0001             # v0 = 00000002
lbl_8002EA7C:
    lwc1    $f16, 0x00C0($sp)
    lwc1    $f10, 0x0030(s2)           # 00000030
    lwc1    $f18, 0x00B4($sp)
    lw      t1, 0x007C($sp)
    add.s   $f4, $f16, $f10
    addiu   a0, a0, 0x0001             # a0 = 00000002
    slt     $at, a0, v0
    addu    a1, a1, t1
    swc1    $f4, 0x00C0($sp)
    lwc1    $f8, 0x0030(s2)            # 00000030
    add.s   $f6, $f18, $f8
    bne     $at, $zero, lbl_8002E908
    swc1    $f6, 0x00B4($sp)
lbl_8002EAB0:
    lw      v0, 0x00E8($sp)
    lw      t2, 0x00EC($sp)
    addiu   v0, v0, 0x0001             # v0 = 00000003
    bne     v0, t2, lbl_8002E848
    sw      v0, 0x00E8($sp)
lbl_8002EAC4:
    lhu     v0, 0x0046(s2)             # 00000046
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    sll     v0, v0,  2
    lw      $ra, 0x0074($sp)
    ldc1    $f24, 0x0040($sp)
    ldc1    $f26, 0x0048($sp)
    lw      s0, 0x0050($sp)
    lw      s1, 0x0054($sp)
    lw      s2, 0x0058($sp)
    lw      s3, 0x005C($sp)
    lw      s4, 0x0060($sp)
    lw      s5, 0x0064($sp)
    lw      s6, 0x0068($sp)
    lw      s7, 0x006C($sp)
    lw      s8, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00F8           # $sp += 0xF8


func_8002EB0C:
    lh      v1, 0x00A4(a0)             # 000000A4
    lui     a0, 0x800F                 # a0 = 800F0000
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xC0BC             # v0 = 800EC0BC
    addiu   a0, a0, 0xC0E2             # a0 = 800EC0E2
    lh      t6, 0x0000(v0)             # 800EC0BC
lbl_8002EB24:
    addiu   v0, v0, 0x0002             # v0 = 800EC0BE
    sltu    $at, v0, a0
    bne     v1, t6, lbl_8002EB3C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002EB3C:
    bnel    $at, $zero, lbl_8002EB24
    lh      t6, 0x0000(v0)             # 00000001
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_8002EB50:
# Look up hardcoded size of ?
# related to collision vertex info
# A0 = Current Scene Index
# A1 = out s32* size
# V0 = 1 if custom size was found, else 0
    lui     v1, 0x800F                 # v1 = 800F0000
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xC124             # v0 = 800EC124
    addiu   v1, v1, 0xC0E4             # v1 = 800EC0E4
    lh      t6, 0x0000(v1)             # 800EC0E4
lbl_8002EB64:
    bnel    a0, t6, lbl_8002EB80
    lh      t8, 0x0008(v1)             # 800EC0EC
    lw      t7, 0x0004(v1)             # 800EC0E8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    sw      t7, 0x0000(a1)             # 00000000
lbl_8002EB7C:
    lh      t8, 0x0008(v1)             # 800EC0EC
lbl_8002EB80:
    bnel    a0, t8, lbl_8002EB9C
    lh      t0, 0x0010(v1)             # 800EC0F4
    lw      t9, 0x000C(v1)             # 800EC0F0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    sw      t9, 0x0000(a1)             # 00000000
lbl_8002EB98:
    lh      t0, 0x0010(v1)             # 800EC0F4
lbl_8002EB9C:
    bnel    a0, t0, lbl_8002EBB8
    lh      t2, 0x0018(v1)             # 800EC0FC
    lw      t1, 0x0014(v1)             # 800EC0F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    sw      t1, 0x0000(a1)             # 00000000
lbl_8002EBB4:
    lh      t2, 0x0018(v1)             # 800EC0FC
lbl_8002EBB8:
    bnel    a0, t2, lbl_8002EBD4
    addiu   v1, v1, 0x0020             # v1 = 800EC104
    lw      t3, 0x001C(v1)             # 800EC120
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    sw      t3, 0x0000(a1)             # 00000000
lbl_8002EBD0:
    addiu   v1, v1, 0x0020             # v1 = 800EC124
lbl_8002EBD4:
    bnel    v1, v0, lbl_8002EB64
    lh      t6, 0x0000(v1)             # 800EC124
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_8002EBE8:
# Set Scene Collision Mesh Unit Size and Inverse for axis
# Also expands maximum dimension
# F12 = float dimension Minimum
# A1 = s32 Collision Dimension
# A2 = in/out float* dimension Maximum
# A3 = out float* dimension "Unit Size"
# SP+0x10 out float* dimension "Inverse Unit"
    mtc1    a1, $f6                    # $f6 = 0.00
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f16                  # $f16 = 150.00
    cvt.s.w $f2, $f6
    lwc1    $f4, 0x0000(a2)            # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    sub.s   $f0, $f4, $f12
    div.s   $f8, $f0, $f2
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    addiu   t8, t7, 0x0001             # t8 = 00000001
    mtc1    t8, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f14, $f18
    c.lt.s  $f14, $f16
    swc1    $f14, 0x0000(a3)           # 00000000
    bc1fl   lbl_8002EC44
    lwc1    $f4, 0x0000(a3)            # 00000000
    b       lbl_8002EC48
    swc1    $f16, 0x0000(a3)           # 00000000
    lwc1    $f4, 0x0000(a3)            # 00000000
lbl_8002EC44:
    swc1    $f4, 0x0000(a3)            # 00000000
lbl_8002EC48:
    lwc1    $f8, 0x0000(a3)            # 00000000
    lw      t9, 0x0010($sp)
    div.s   $f10, $f6, $f8
    swc1    $f10, 0x0000(t9)           # 00000000
    lwc1    $f18, 0x0000(a3)           # 00000000
    mul.s   $f4, $f18, $f2
    add.s   $f6, $f4, $f12
    swc1    $f6, 0x0000(a2)            # 00000000
    jr      $ra
    nop


func_8002EC70:
# T_BGCheck_getBGDataInfo [?]
# possibly initializes scene collision
# A0 = Global Context + 0x7C0
# A1 = Global Context
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    sw      a2, 0x0000(s0)             # 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    lh      v0, 0x04B2(t6)             # 801204B2
    beq     a3, v0, lbl_8002ECC0
    addiu   $at, $zero, 0x0020         # $at = 00000020
    beq     v0, $at, lbl_8002ECC0
    addiu   $at, $zero, 0x0030         # $at = 00000030
    beq     v0, $at, lbl_8002ECC0
    addiu   $at, $zero, 0x0040         # $at = 00000040
    bne     v0, $at, lbl_8002ED08
    or      a0, s1, $zero              # a0 = 00000000
lbl_8002ECC0:
    lh      t7, 0x00A4(s1)             # 000000A4
    addiu   $at, $zero, 0x0036         # $at = 00000036
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    bne     t7, $at, lbl_8002ECE0
    addiu   v1, $zero, 0x0100          # v1 = 00000100
    addiu   t8, $zero, 0x3520          # t8 = 00003520
    b       lbl_8002ECE8
    sw      t8, 0x1460(s0)             # 00001460
lbl_8002ECE0:
    addiu   t9, $zero, 0x4E20          # t9 = 00004E20
    sw      t9, 0x1460(s0)             # 00001460
lbl_8002ECE8:
    addiu   t1, $zero, 0x01F4          # t1 = 000001F4
    sw      t1, 0x1454(s0)             # 00001454
    sw      v1, 0x1458(s0)             # 00001458
    sw      v1, 0x145C(s0)             # 0000145C
    sw      v0, 0x001C(s0)             # 0000001C
    sw      v0, 0x0020(s0)             # 00000020
    b       lbl_8002EDFC
    sw      v0, 0x0024(s0)             # 00000024
lbl_8002ED08:
    jal     func_8002EB0C
    sw      t0, 0x0040($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    bne     v0, $at, lbl_8002ED50
    lw      t0, 0x0040($sp)
    addiu   a1, $zero, 0x0200          # a1 = 00000200
    ori     t2, $zero, 0xF000          # t2 = 0000F000
    addiu   t3, $zero, 0x03E8          # t3 = 000003E8
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    sw      t2, 0x1460(s0)             # 00001460
    sw      t3, 0x1454(s0)             # 00001454
    sw      a1, 0x1458(s0)             # 00001458
    sw      a1, 0x145C(s0)             # 0000145C
    sw      a3, 0x001C(s0)             # 0000001C
    sw      t4, 0x0020(s0)             # 00000020
    b       lbl_8002EDFC
    sw      a3, 0x0024(s0)             # 00000024
lbl_8002ED50:
    lh      a0, 0x00A4(s1)             # 000000A4
    sw      t0, 0x0040($sp)
    jal     func_8002EB50
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    beq     v0, $zero, lbl_8002ED78
    lw      t0, 0x0040($sp)
    lw      t5, 0x0038($sp)
    b       lbl_8002ED84
    sw      t5, 0x1460(s0)             # 00001460
lbl_8002ED78:
    lui     t6, 0x0001                 # t6 = 00010000
    ori     t6, t6, 0xCC00             # t6 = 0001CC00
    sw      t6, 0x1460(s0)             # 00001460
lbl_8002ED84:
    addiu   a1, $zero, 0x0200          # a1 = 00000200
    addiu   t7, $zero, 0x03E8          # t7 = 000003E8
    lui     v0, 0x800F                 # v0 = 800F0000
    lui     v1, 0x800F                 # v1 = 800F0000
    sw      t7, 0x1454(s0)             # 00001454
    sw      a1, 0x1458(s0)             # 00001458
    sw      a1, 0x145C(s0)             # 0000145C
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   v1, v1, 0xC13C             # v1 = 800EC13C
    addiu   v0, v0, 0xC124             # v0 = 800EC124
    lh      t8, 0x00A4(s1)             # 000000A4
lbl_8002EDB0:
    lh      t9, 0x0000(v0)             # 800EC124
    bnel    t8, t9, lbl_8002EDE0
    addiu   v0, v0, 0x000C             # v0 = 800EC130
    lh      t1, 0x0002(v0)             # 800EC132
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    sw      t1, 0x001C(s0)             # 0000001C
    lh      t2, 0x0004(v0)             # 800EC134
    sw      t2, 0x0020(s0)             # 00000020
    lh      t3, 0x0006(v0)             # 800EC136
    sw      t3, 0x0024(s0)             # 00000024
    lw      t0, 0x0008(v0)             # 800EC138
    addiu   v0, v0, 0x000C             # v0 = 800EC13C
lbl_8002EDE0:
    bnel    v0, v1, lbl_8002EDB0
    lh      t8, 0x00A4(s1)             # 000000A4
    bne     a0, $zero, lbl_8002EDFC
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    sw      a3, 0x001C(s0)             # 0000001C
    sw      t4, 0x0020(s0)             # 00000020
    sw      a3, 0x0024(s0)             # 00000024
lbl_8002EDFC:
    lw      t5, 0x001C(s0)             # 0000001C
    lw      t7, 0x0020(s0)             # 00000020
    lw      t9, 0x0024(s0)             # 00000024
    sll     t6, t5,  2
    subu    t6, t6, t5
    sll     t6, t6,  1
    multu   t6, t7
    sw      t0, 0x0040($sp)
    addiu   a0, s1, 0x0074             # a0 = 00000074
    addiu   a2, $zero, 0xFFFE          # a2 = FFFFFFFE
    mflo    t8
    nop
    nop
    multu   t8, t9
    mflo    a1
    jal     func_800A01D8
    nop
    lw      t0, 0x0040($sp)
    bne     v0, $zero, lbl_8002EE64
    sw      v0, 0x0040(s0)             # 00000040
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x6A50             # a0 = 80106A50
    addiu   a1, $zero, 0x104D          # a1 = 0000104D
    jal     func_80001B38
    sw      t0, 0x0040($sp)
    lw      t0, 0x0040($sp)
lbl_8002EE64:
    lw      v0, 0x0000(s0)             # 00000000
    lw      a1, 0x001C(s0)             # 0000001C
    addiu   t7, s0, 0x0034             # t7 = 00000034
    lh      t1, 0x0000(v0)             # 00000000
    addiu   a2, s0, 0x0010             # a2 = 00000010
    addiu   a3, s0, 0x0028             # a3 = 00000028
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0004(s0)            # 00000004
    lh      t2, 0x0002(v0)             # 00000002
    lwc1    $f12, 0x0004(s0)           # 00000004
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0008(s0)           # 00000008
    lh      t3, 0x0004(v0)             # 00000004
    mtc1    t3, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x000C(s0)           # 0000000C
    lh      t4, 0x0006(v0)             # 00000006
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0010(s0)            # 00000010
    lh      t5, 0x0008(v0)             # 00000008
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0014(s0)           # 00000014
    lh      t6, 0x000A(v0)             # 0000000A
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0018(s0)           # 00000018
    sw      t0, 0x0040($sp)
    jal     func_8002EBE8
    sw      t7, 0x0010($sp)
    lwc1    $f12, 0x0008(s0)           # 00000008
    lw      a1, 0x0020(s0)             # 00000020
    addiu   t8, s0, 0x0038             # t8 = 00000038
    sw      t8, 0x0010($sp)
    addiu   a2, s0, 0x0014             # a2 = 00000014
    jal     func_8002EBE8
    addiu   a3, s0, 0x002C             # a3 = 0000002C
    lwc1    $f12, 0x000C(s0)           # 0000000C
    lw      a1, 0x0024(s0)             # 00000024
    addiu   t9, s0, 0x003C             # t9 = 0000003C
    sw      t9, 0x0010($sp)
    addiu   a2, s0, 0x0018             # a2 = 00000018
    jal     func_8002EBE8
    addiu   a3, s0, 0x0030             # a3 = 00000030
    lw      t1, 0x001C(s0)             # 0000001C
    addiu   v0, $zero, 0x0006          # v0 = 00000006
    lw      t3, 0x0020(s0)             # 00000020
    multu   t1, v0
    lw      t5, 0x0024(s0)             # 00000024
    lw      t7, 0x0000(s0)             # 00000000
    lw      t1, 0x1454(s0)             # 00001454
    lw      t0, 0x0040($sp)
    lhu     t8, 0x0014(t7)             # 00000014
    mflo    t2
    nop
    nop
    multu   t2, t3
    sll     t2, t1,  2
    mflo    t4
    nop
    nop
    multu   t4, t5
    lw      t4, 0x1458(s0)             # 00001458
    sll     t5, t4,  4
    mflo    t6
    addu    t9, t6, t8
    lw      t6, 0x145C(s0)             # 0000145C
    addu    t3, t9, t2
    addu    t7, t3, t5
    multu   t6, v0
    mflo    t8
    addu    v1, t7, t8
    blez    t0, lbl_8002EFB8
    addiu   v1, v1, 0x1464             # v1 = 00001464
    b       lbl_8002EFE8
    or      a2, t0, $zero              # a2 = 00000000
lbl_8002EFB8:
    lw      v0, 0x1460(s0)             # 00001460
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x6A60             # a0 = 80106A60
    sltu    $at, v0, v1
    beq     $at, $zero, lbl_8002EFE0
    addiu   a1, $zero, 0x1083          # a1 = 00001083
    jal     func_80001B38
    sw      v1, 0x0048($sp)
    lw      v1, 0x0048($sp)
    lw      v0, 0x1460(s0)             # 00001460
lbl_8002EFE0:
    subu    a2, v0, v1
    srl     a2, a2,  2
lbl_8002EFE8:
    addiu   a1, s0, 0x0044             # a1 = 00000044
    or      a0, a1, $zero              # a0 = 00000044
    sw      a1, 0x002C($sp)
    jal     func_80030D94
    sw      a2, 0x004C($sp)
    lw      t1, 0x0000(s0)             # 00000000
    lw      a1, 0x002C($sp)
    lw      a2, 0x004C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80030DAC
    lhu     a3, 0x0014(t1)             # 00000014
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_8002E70C
    lw      a2, 0x0040(s0)             # 00000040
    addiu   a1, s0, 0x0050             # a1 = 00000050
    sw      a1, 0x002C($sp)
    jal     func_80031284
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_800312D0
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_8002F054:
# Collision, Get Collision Mesh
# A0 = Global Context + 0x7C0
# A1 = Mesh Collision Id
# V0 = Collision Mesh Ptr
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     a1, $at, lbl_8002F068
    nop
    jr      $ra
    lw      v0, 0x0000(a0)             # 00000000
lbl_8002F068:
    bltz    a1, lbl_8002F078
    slti    $at, a1, 0x0033
    bne     $at, $zero, lbl_8002F080
    sll     t6, a1,  1
lbl_8002F078:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002F080:
    addu    t7, a0, t6
    lhu     t8, 0x13DC(t7)             # 000013DC
    sll     t0, a1,  2
    subu    t0, t0, a1
    andi    t9, t8, 0x0001             # t9 = 00000000
    bne     t9, $zero, lbl_8002F0A4
    sll     t0, t0,  3
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002F0A4:
    addu    t0, t0, a1
    sll     t0, t0,  2
    addu    t1, a0, t0
    lw      v0, 0x0058(t1)             # 00000058
    jr      $ra
    nop


func_8002F0BC:
# Collision, Detects if coordinates fall within Scene's Collision Bounding Box.
# Fudge factor of +- 50 units added to the box's dimensions
# A0 = GC + 0x7C0 Pointer to Bounding Collision
# A1 = float xyz to check.
# V0 = 1 if within the bounding box, else 0
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f2                   # $f2 = 50.00
    nop
    lwc1    $f4, 0x0004(a0)            # 00000004
    lwc1    $f0, 0x0000(a1)            # 00000000
    sub.s   $f6, $f4, $f2
    c.lt.s  $f0, $f6
    nop
    bc1t    lbl_8002F168
    nop
    lwc1    $f8, 0x0010(a0)            # 00000010
    add.s   $f10, $f8, $f2
    c.lt.s  $f10, $f0
    nop
    bc1t    lbl_8002F168
    nop
    lwc1    $f16, 0x0008(a0)           # 00000008
    lwc1    $f0, 0x0004(a1)            # 00000004
    sub.s   $f18, $f16, $f2
    c.lt.s  $f0, $f18
    nop
    bc1t    lbl_8002F168
    nop
    lwc1    $f4, 0x0014(a0)            # 00000014
    add.s   $f6, $f4, $f2
    c.lt.s  $f6, $f0
    nop
    bc1t    lbl_8002F168
    nop
    lwc1    $f8, 0x000C(a0)            # 0000000C
    lwc1    $f0, 0x0008(a1)            # 00000008
    sub.s   $f10, $f8, $f2
    c.lt.s  $f0, $f10
    nop
    bc1t    lbl_8002F168
    nop
    lwc1    $f16, 0x0018(a0)           # 00000018
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    add.s   $f18, $f16, $f2
    c.lt.s  $f18, $f0
    nop
    bc1f    lbl_8002F170
    nop
lbl_8002F168:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002F170:
    jr      $ra
    nop


func_8002F178:
# Collision Detection, background floor raycast?
# A0 = s32?
# A1 = Global Context + 0x7C0
# A2 = u16?
# A3 = out s32?*
# SP+0x10 = out s32*
# SP+0x14 = vector3_f32* check coords?
# SP+0x18 = Actor* (or null?)
# SP+0x1C = s32
# SP+0x20 = f32 1f
    addiu   $sp, $sp, 0xFF50           # $sp -= 0xB0
    sdc1    $f20, 0x0028($sp)
    lui     $at, 0xC6FA                # $at = C6FA0000
    sw      s6, 0x0058($sp)
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    sw      s0, 0x0040($sp)
    mtc1    $at, $f20                  # $f20 = -32000.00
    or      s0, a1, $zero              # s0 = 00000000
    addiu   s2, $sp, 0x0098            # s2 = FFFFFFE8
    lw      s3, 0x00C4($sp)
    andi    s4, a2, 0xFFFF             # s4 = 00000000
    or      s6, a3, $zero              # s6 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s5, 0x0054($sp)
    sw      s1, 0x0044($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sw      a0, 0x00B0($sp)
    sw      a2, 0x00B8($sp)
    lw      t7, 0x00C0($sp)
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    mov.s   $f22, $f20
    sw      t6, 0x0000(t7)             # 00000000
    sw      $zero, 0x0000(s6)          # 00000000
    lw      t9, 0x0000(s3)             # 00000000
    lw      s1, 0x0040(s0)             # 00000040
    sw      t9, 0x0000(s2)             # FFFFFFE8
    lw      t8, 0x0004(s3)             # 00000004
    sw      t8, 0x0004(s2)             # FFFFFFEC
    lw      t9, 0x0008(s3)             # 00000008
    sw      t9, 0x0008(s2)             # FFFFFFF0
    lw      s5, 0x00CC($sp)
    lwc1    $f24, 0x00D0($sp)
lbl_8002F204:
    lwc1    $f4, 0x009C($sp)
    lwc1    $f6, 0x0008(s0)            # 00000008
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1tl   lbl_8002F290
    lw      t0, 0x00B0($sp)
    jal     func_8002D8EC
    or      a2, s2, $zero              # a2 = FFFFFFE8
    bne     v0, $zero, lbl_8002F248
    or      a0, v0, $zero              # a0 = 00000000
    lwc1    $f8, 0x009C($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sub.s   $f16, $f8, $f10
    b       lbl_8002F204
    swc1    $f16, 0x009C($sp)
lbl_8002F248:
    or      a1, s0, $zero              # a1 = 00000000
    andi    a2, s4, 0xFFFF             # a2 = 00000000
    or      a3, s6, $zero              # a3 = 00000000
    sw      s3, 0x0010($sp)
    sw      s5, 0x0014($sp)
    swc1    $f24, 0x0018($sp)
    jal     func_8002C54C
    swc1    $f20, 0x001C($sp)
    c.lt.s  $f20, $f0
    mov.s   $f22, $f0
    lwc1    $f18, 0x009C($sp)
    bc1tl   lbl_8002F290
    lw      t0, 0x00B0($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sub.s   $f6, $f18, $f4
    b       lbl_8002F204
    swc1    $f6, 0x009C($sp)
    lw      t0, 0x00B0($sp)
lbl_8002F290:
    lw      t1, 0x00C0($sp)
    lw      t2, 0x00C8($sp)
    sw      s0, 0x0068($sp)
    sh      s4, 0x006C($sp)
    sw      s6, 0x0070($sp)
    swc1    $f22, 0x0074($sp)
    sw      s3, 0x0078($sp)
    sw      s5, 0x0084($sp)
    swc1    $f24, 0x0088($sp)
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFB4
    sw      t0, 0x0064($sp)
    sw      t1, 0x007C($sp)
    jal     func_800324A0
    sw      t2, 0x0080($sp)
    c.lt.s  $f22, $f0
    or      a0, s0, $zero              # a0 = 00000000
    lw      t3, 0x00C0($sp)
    bc1fl   lbl_8002F2E4
    c.eq.s  $f22, $f20
    mov.s   $f22, $f0
    c.eq.s  $f22, $f20
lbl_8002F2E4:
    nop
    bc1tl   lbl_8002F314
    mov.s   $f0, $f22
    lw      a1, 0x0000(s6)             # 00000000
    jal     func_80034568
    lw      a2, 0x0000(t3)             # 00000000
    beq     v0, $zero, lbl_8002F310
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    nop
    sub.s   $f22, $f22, $f8
lbl_8002F310:
    mov.s   $f0, $f22
lbl_8002F314:
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    lw      s5, 0x0054($sp)
    lw      s6, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp += 0xB0


func_8002F348:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    or      a3, a1, $zero              # a3 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t7, 0x0040($sp)
    addiu   t6, $sp, 0x0034            # t6 = FFFFFFFC
    addiu   t8, $zero, 0x001C          # t8 = 0000001C
    sw      t8, 0x001C($sp)
    sw      t6, 0x0010($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      $zero, 0x0018($sp)
    sw      t7, 0x0014($sp)
    jal     func_8002F178
    swc1    $f4, 0x0020($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8002F3A4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    or      a3, a1, $zero              # a3 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t7, 0x0040($sp)
    addiu   t6, $sp, 0x0034            # t6 = FFFFFFFC
    addiu   t8, $zero, 0x001C          # t8 = 0000001C
    sw      t8, 0x001C($sp)
    sw      t6, 0x0010($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sw      $zero, 0x0018($sp)
    sw      t7, 0x0014($sp)
    jal     func_8002F178
    swc1    $f4, 0x0020($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8002F400:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a3, 0x0044($sp)
    or      a3, a2, $zero              # a3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a2, 0x0040($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t7, 0x0044($sp)
    addiu   t6, $sp, 0x0034            # t6 = FFFFFFFC
    addiu   t8, $zero, 0x001C          # t8 = 0000001C
    sw      t8, 0x001C($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sw      $zero, 0x0018($sp)
    sw      t7, 0x0014($sp)
    jal     func_8002F178
    swc1    $f4, 0x0020($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8002F454:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a1, 0x0034($sp)
    sw      a3, 0x003C($sp)
    lw      a3, 0x0034($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t6, 0x0038($sp)
    lw      t7, 0x003C($sp)
    addiu   t8, $zero, 0x001C          # t8 = 0000001C
    sw      t8, 0x001C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sw      $zero, 0x0018($sp)
    sw      t6, 0x0010($sp)
    swc1    $f4, 0x0020($sp)
    jal     func_8002F178
    sw      t7, 0x0014($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8002F4B8:
# Collision, background floor raycast?
# Wrapper for 8002F178
# A0 = Global Context + 0x7C0
# A1 = s32?*
# A2 = out s32* ?
# A3 = Actor*
# SP+0x10 = vector3_f32* check coords?
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a1, 0x0034($sp)
    sw      a3, 0x003C($sp)
    lw      a3, 0x0034($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t6, 0x0038($sp)
    lw      t7, 0x0040($sp)
    lw      t8, 0x003C($sp)
    addiu   t9, $zero, 0x001C          # t9 = 0000001C
    sw      t9, 0x001C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sw      t6, 0x0010($sp)
    swc1    $f4, 0x0020($sp)
    sw      t7, 0x0014($sp)
    jal     func_8002F178
    sw      t8, 0x0018($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8002F520:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a3, 0x003C($sp)
    or      a3, a2, $zero              # a3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a2, 0x0038($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t6, 0x003C($sp)
    lw      t7, 0x0044($sp)
    lw      t8, 0x0040($sp)
    addiu   t9, $zero, 0x001C          # t9 = 0000001C
    sw      t9, 0x001C($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sw      t6, 0x0010($sp)
    swc1    $f4, 0x0020($sp)
    sw      t7, 0x0014($sp)
    jal     func_8002F178
    sw      t8, 0x0018($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8002F578:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a1, 0x0034($sp)
    sw      a3, 0x003C($sp)
    lw      a3, 0x0034($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    lw      t6, 0x0038($sp)
    lw      t7, 0x0040($sp)
    lw      t8, 0x003C($sp)
    lwc1    $f4, 0x0044($sp)
    addiu   t9, $zero, 0x001C          # t9 = 0000001C
    sw      t9, 0x001C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    jal     func_8002F178
    swc1    $f4, 0x0020($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8002F5DC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a1, 0x0034($sp)
    sw      a3, 0x003C($sp)
    lw      a3, 0x0034($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t6, 0x0038($sp)
    lw      t7, 0x0040($sp)
    lw      t8, 0x003C($sp)
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    sw      t9, 0x001C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sw      t6, 0x0010($sp)
    swc1    $f4, 0x0020($sp)
    sw      t7, 0x0014($sp)
    jal     func_8002F178
    sw      t8, 0x0018($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8002F644:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      a1, 0x0044($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0040($sp)
    sw      a2, 0x0048($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t7, 0x0048($sp)
    addiu   t6, $sp, 0x0034            # t6 = FFFFFFF4
    addiu   t8, $zero, 0x001C          # t8 = 0000001C
    sw      t8, 0x001C($sp)
    sw      t6, 0x0010($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFFC
    sw      $zero, 0x0018($sp)
    sw      t7, 0x0014($sp)
    jal     func_8002F178
    swc1    $f4, 0x0020($sp)
    lw      t9, 0x003C($sp)
    mov.s   $f2, $f0
    lw      t0, 0x0044($sp)
    beq     t9, $zero, lbl_8002F6E8
    mov.s   $f0, $f2
    lwl     t2, 0x0000(t9)             # 00000000
    lwr     t2, 0x0003(t9)             # 00000003
    swl     t2, 0x0000(t0)             # 00000000
    swr     t2, 0x0003(t0)             # 00000003
    lwl     t1, 0x0004(t9)             # 00000004
    lwr     t1, 0x0007(t9)             # 00000007
    swl     t1, 0x0004(t0)             # 00000004
    swr     t1, 0x0007(t0)             # 00000007
    lwl     t2, 0x0008(t9)             # 00000008
    lwr     t2, 0x000B(t9)             # 0000000B
    swl     t2, 0x0008(t0)             # 00000008
    swr     t2, 0x000B(t0)             # 0000000B
    lwl     t1, 0x000C(t9)             # 0000000C
    lwr     t1, 0x000F(t9)             # 0000000F
    swl     t1, 0x000C(t0)             # 0000000C
    swr     t1, 0x000F(t0)             # 0000000F
lbl_8002F6E8:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8002F6F8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a1, 0x003C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t6, 0x0040($sp)
    lw      t7, 0x0044($sp)
    addiu   t8, $zero, 0x001C          # t8 = 0000001C
    sw      t8, 0x001C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $sp, 0x0034            # a3 = FFFFFFFC
    sw      $zero, 0x0018($sp)
    sw      t6, 0x0010($sp)
    swc1    $f4, 0x0020($sp)
    jal     func_8002F178
    sw      t7, 0x0014($sp)
    lw      t9, 0x0034($sp)
    mov.s   $f2, $f0
    lw      t0, 0x003C($sp)
    beq     t9, $zero, lbl_8002F7A0
    mov.s   $f0, $f2
    lwl     t2, 0x0000(t9)             # 00000000
    lwr     t2, 0x0003(t9)             # 00000003
    swl     t2, 0x0000(t0)             # 00000000
    swr     t2, 0x0003(t0)             # 00000003
    lwl     t1, 0x0004(t9)             # 00000004
    lwr     t1, 0x0007(t9)             # 00000007
    swl     t1, 0x0004(t0)             # 00000004
    swr     t1, 0x0007(t0)             # 00000007
    lwl     t2, 0x0008(t9)             # 00000008
    lwr     t2, 0x000B(t9)             # 0000000B
    swl     t2, 0x0008(t0)             # 00000008
    swr     t2, 0x000B(t0)             # 0000000B
    lwl     t1, 0x000C(t9)             # 0000000C
    lwr     t1, 0x000F(t9)             # 0000000F
    swl     t1, 0x000C(t0)             # 0000000C
    swr     t1, 0x000F(t0)             # 0000000F
lbl_8002F7A0:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8002F7B0:
# Collision, background floor raycast?
# Wrapper for 8002F178
# A0 = Global Context + 0x7C0
# A1 = ptr to ?
# A2 = out s32* ?
# A3 = vector3_f32* check coords?
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a1, 0x0034($sp)
    sw      a3, 0x003C($sp)
    lw      a3, 0x0034($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t6, 0x0038($sp)
    lw      t7, 0x003C($sp)
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    sw      t8, 0x001C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      $zero, 0x0018($sp)
    sw      t6, 0x0010($sp)
    swc1    $f4, 0x0020($sp)
    jal     func_8002F178
    sw      t7, 0x0014($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8002F814:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a1, 0x0034($sp)
    sw      a3, 0x003C($sp)
    lw      a3, 0x0034($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t6, 0x0038($sp)
    lw      t7, 0x0040($sp)
    lw      t8, 0x003C($sp)
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sw      t9, 0x001C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sw      t6, 0x0010($sp)
    swc1    $f4, 0x0020($sp)
    sw      t7, 0x0014($sp)
    jal     func_8002F178
    sw      t8, 0x0018($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8002F87C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a1, 0x0034($sp)
    sw      a3, 0x003C($sp)
    lw      a3, 0x0034($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t6, 0x0038($sp)
    lw      t7, 0x003C($sp)
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    sw      t8, 0x001C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sw      $zero, 0x0018($sp)
    sw      t6, 0x0010($sp)
    swc1    $f4, 0x0020($sp)
    jal     func_8002F178
    sw      t7, 0x0014($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8002F8E0:
# A0 = Global Context + 0x7C0
# A1 = u16 PolyIgnoreFlags
# A2 = out ptr?
# A3 = vector3_f32* next pos (actor inst + 0x24)
# SP+0x10 = vector3_f32* prev pos (actor inst + 0x100)
# SP+0x14 = float wall pushback
# SP+0x18 = ptr to Actor Instance + 0x74 struct
# SP+0x1C = out s32* ?
# SP+0x20 = Actor* instance
# SP+0x24 = float ceiling pushback?/wall check?
# SP+0x28 = u8 ?
    addiu   $sp, $sp, 0xFF20           # $sp -= 0xE0
    sw      s0, 0x0038($sp)
    mtc1    $zero, $f14                # $f14 = 0.00
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a0, 0x00E0($sp)
    sw      a1, 0x00E4($sp)
    sw      a3, 0x00EC($sp)
    lw      t7, 0x00FC($sp)
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    or      v1, $zero, $zero           # v1 = 00000000
    sw      t6, 0x0000(t7)             # 00000000
    lw      t8, 0x00F8($sp)
    sw      $zero, 0x0000(t8)          # 00000000
    lw      t9, 0x00E0($sp)
    lw      t1, 0x00EC($sp)
    lw      t0, 0x0040(t9)             # 00000040
    sw      t0, 0x00DC($sp)
    lw      t3, 0x0000(t1)             # 00000000
    sw      t3, 0x0000(s0)             # 00000000
    lw      t2, 0x0004(t1)             # 00000004
    sw      t2, 0x0004(s0)             # 00000004
    lw      t3, 0x0008(t1)             # 00000008
    sw      t3, 0x0008(s0)             # 00000008
    lw      t5, 0x00F0($sp)
    lw      t4, 0x00EC($sp)
    lbu     t6, 0x010B($sp)
    lwc1    $f6, 0x0000(t5)            # 00000000
    lwc1    $f4, 0x0000(t4)            # 00000000
    lwc1    $f10, 0x0004(t5)           # 00000004
    lwc1    $f8, 0x0004(t4)            # 00000004
    sub.s   $f0, $f4, $f6
    lwc1    $f4, 0x0008(t5)            # 00000008
    lwc1    $f18, 0x0008(t4)           # 00000008
    andi    t7, t6, 0x0001             # t7 = 00000000
    c.eq.s  $f0, $f14
    sub.s   $f12, $f8, $f10
    bc1f    lbl_8002F98C
    sub.s   $f2, $f18, $f4
    c.eq.s  $f2, $f14
    nop
    bc1tl   lbl_8002FCB4
    lw      t1, 0x0000(s0)             # 00000000
lbl_8002F98C:
    bne     t7, $zero, lbl_8002FCB0
    lwc1    $f14, 0x0104($sp)
    add.s   $f6, $f14, $f12
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lw      a0, 0x00E0($sp)
    lhu     a1, 0x00E6($sp)
    c.lt.s  $f6, $f8
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x00F0($sp)
    lwc1    $f6, 0x00F4($sp)
    bc1f    lbl_8002FB28
    lw      t3, 0x00EC($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lw      t8, 0x00EC($sp)
    lw      t2, 0x0100($sp)
    addiu   t9, $sp, 0x00A8            # t9 = FFFFFFC8
    addiu   t0, $sp, 0x00D0            # t0 = FFFFFFF0
    addiu   t1, $sp, 0x00A4            # t1 = FFFFFFC4
    addiu   t3, $zero, 0x001B          # t3 = 0000001B
    sw      t3, 0x0028($sp)
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    swc1    $f10, 0x0024($sp)
    jal     func_80030274
    sw      t2, 0x0020($sp)
    beq     v0, $zero, lbl_8002FCB0
    or      v1, v0, $zero              # v1 = 00000000
    lw      t4, 0x00D0($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6AA0($at)           # 80106AA0
    lh      t5, 0x000A(t4)             # 0000000A
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    mtc1    t5, $f18                   # $f18 = 0.00
    lwc1    $f10, 0x00A8($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f4, $f18
    lw      t6, 0x00D0($sp)
    mul.s   $f12, $f4, $f6
    c.lt.s  $f8, $f12
    nop
    bc1fl   lbl_8002FA9C
    lh      t7, 0x0008(t6)             # 00000008
    swc1    $f10, 0x0000(s0)           # 00000000
    lwc1    $f4, 0x0104($sp)
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f6, 0x00AC($sp)
    c.lt.s  $f18, $f4
    lwc1    $f4, 0x0104($sp)
    lwc1    $f18, 0x00AC($sp)
    bc1fl   lbl_8002FA88
    sub.s   $f6, $f18, $f4
    mtc1    $at, $f8                   # $f8 = 1.00
    nop
    sub.s   $f10, $f6, $f8
    b       lbl_8002FA8C
    swc1    $f10, 0x0004(s0)           # 00000004
    sub.s   $f6, $f18, $f4
lbl_8002FA88:
    swc1    $f6, 0x0004(s0)            # 00000004
lbl_8002FA8C:
    lwc1    $f8, 0x00B0($sp)
    b       lbl_8002FB08
    swc1    $f8, 0x0008(s0)            # 00000008
    lh      t7, 0x0008(t6)             # 00000008
lbl_8002FA9C:
    lh      t8, 0x000C(t6)             # 0000000C
    lui     $at, 0x8010                # $at = 80100000
    mtc1    t7, $f10                   # $f10 = 0.00
    mtc1    t8, $f6                    # $f6 = 0.00
    lwc1    $f4, 0x6AA4($at)           # 80106AA4
    cvt.s.w $f18, $f10
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6AA8($at)          # 80106AA8
    cvt.s.w $f8, $f6
    mul.s   $f0, $f18, $f4
    lwc1    $f18, 0x00F4($sp)
    lwc1    $f6, 0x00A8($sp)
    mul.s   $f2, $f8, $f10
    nop
    mul.s   $f4, $f18, $f0
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0000(s0)            # 00000000
    lwc1    $f10, 0x00F4($sp)
    lwc1    $f4, 0x00AC($sp)
    mul.s   $f18, $f10, $f12
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0004(s0)            # 00000004
    lwc1    $f8, 0x00F4($sp)
    lwc1    $f18, 0x00B0($sp)
    mul.s   $f10, $f8, $f2
    add.s   $f4, $f10, $f18
    swc1    $f4, 0x0008(s0)            # 00000008
lbl_8002FB08:
    lw      t9, 0x00D0($sp)
    lw      t0, 0x00F8($sp)
    sw      t9, 0x0000(t0)             # 00000000
    lw      t2, 0x00FC($sp)
    lw      t1, 0x00A4($sp)
    sw      t1, 0x0000(t2)             # 00000000
    b       lbl_8002FCB4
    lw      t1, 0x0000(s0)             # 00000000
lbl_8002FB28:
    mul.s   $f8, $f6, $f6
    addiu   v0, $zero, 0x0019          # v0 = 00000019
    mul.s   $f10, $f0, $f0
    nop
    mul.s   $f18, $f2, $f2
    add.s   $f4, $f10, $f18
    c.lt.s  $f8, $f4
    nop
    bc1f    lbl_8002FB58
    nop
    b       lbl_8002FB58
    addiu   v0, $zero, 0x001B          # v0 = 0000001B
lbl_8002FB58:
    lw      t5, 0x0000(t3)             # 00000000
    addiu   v1, $sp, 0x0088            # v1 = FFFFFFA8
    addiu   a3, $sp, 0x007C            # a3 = FFFFFF9C
    sw      t5, 0x0000(v1)             # FFFFFFA8
    lw      t4, 0x0004(t3)             # 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    sw      t4, 0x0004(v1)             # FFFFFFAC
    lw      t5, 0x0008(t3)             # 00000008
    addiu   t9, $sp, 0x00A8            # t9 = FFFFFFC8
    addiu   t0, $sp, 0x00D0            # t0 = FFFFFFF0
    sw      t5, 0x0008(v1)             # FFFFFFB0
    lwc1    $f6, 0x008C($sp)
    lw      t7, 0x00F0($sp)
    addiu   t1, $sp, 0x00A4            # t1 = FFFFFFC4
    add.s   $f10, $f6, $f14
    or      a2, $zero, $zero           # a2 = 00000000
    swc1    $f10, 0x008C($sp)
    lw      t8, 0x0000(t7)             # 00000000
    sw      t8, 0x0000(a3)             # FFFFFF9C
    lw      t6, 0x0004(t7)             # 00000004
    sw      t6, 0x0004(a3)             # FFFFFFA0
    lw      t8, 0x0008(t7)             # 00000008
    sw      t8, 0x0008(a3)             # FFFFFFA4
    lwc1    $f18, 0x008C($sp)
    lw      t2, 0x0100($sp)
    sw      v0, 0x0028($sp)
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      v1, 0x0010($sp)
    lhu     a1, 0x00E6($sp)
    lw      a0, 0x00E0($sp)
    swc1    $f8, 0x0024($sp)
    swc1    $f18, 0x0080($sp)
    jal     func_80030274
    sw      t2, 0x0020($sp)
    beq     v0, $zero, lbl_8002FCB0
    or      v1, v0, $zero              # v1 = 00000000
    lw      t3, 0x00D0($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6AAC($at)          # 80106AAC
    lh      t4, 0x0008(t3)             # 00000008
    lh      t5, 0x000C(t3)             # 0000000C
    lui     $at, 0x8010                # $at = 80100000
    mtc1    t4, $f4                    # $f4 = 0.00
    mtc1    t5, $f18                   # $f18 = 0.00
    cvt.s.w $f6, $f4
    lwc1    $f4, 0x6AB0($at)           # 80106AB0
    lui     $at, 0x8010                # $at = 80100000
    cvt.s.w $f8, $f18
    mul.s   $f2, $f6, $f10
    lwc1    $f18, 0x6AB4($at)          # 80106AB4
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f12, $f8, $f4
    nop
    mul.s   $f6, $f2, $f2
    nop
    mul.s   $f10, $f12, $f12
    add.s   $f0, $f6, $f10
    sqrt.s  $f14, $f0
    abs.s   $f0, $f14
    c.lt.s  $f0, $f18
    nop
    bc1t    lbl_8002FCB0
    nop
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f8, 0x00F4($sp)
    lwc1    $f18, 0x00A8($sp)
    div.s   $f6, $f4, $f14
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    mul.s   $f0, $f8, $f6
    nop
    mul.s   $f10, $f0, $f2
    add.s   $f4, $f10, $f18
    mul.s   $f8, $f0, $f12
    swc1    $f4, 0x0000(s0)            # 00000000
    lwc1    $f6, 0x00B0($sp)
    add.s   $f10, $f8, $f6
    swc1    $f10, 0x0008(s0)           # 00000008
    lw      t6, 0x00F8($sp)
    lw      t7, 0x00D0($sp)
    sw      t7, 0x0000(t6)             # 00000000
    lw      t9, 0x00FC($sp)
    lw      t8, 0x00A4($sp)
    sw      t8, 0x0000(t9)             # 00000000
lbl_8002FCB0:
    lw      t1, 0x0000(s0)             # 00000000
lbl_8002FCB4:
    addiu   v0, $sp, 0x00B8            # v0 = FFFFFFD8
    addiu   a3, s0, 0x0008             # a3 = 00000008
    sw      t1, 0x0000(v0)             # FFFFFFD8
    lw      t0, 0x0004(s0)             # 00000004
    or      a2, s0, $zero              # a2 = 00000000
    sw      t0, 0x0004(v0)             # FFFFFFDC
    lw      t1, 0x0008(s0)             # 00000008
    sw      t1, 0x0008(v0)             # FFFFFFE0
    lwc1    $f18, 0x00BC($sp)
    lwc1    $f4, 0x0104($sp)
    lw      t3, 0x0100($sp)
    lw      t4, 0x00FC($sp)
    add.s   $f8, $f18, $f4
    lw      t2, 0x00F8($sp)
    lwc1    $f6, 0x00F4($sp)
    sw      $zero, 0x00B4($sp)
    swc1    $f8, 0x00BC($sp)
    sw      a3, 0x0044($sp)
    sw      v1, 0x00D4($sp)
    sw      v0, 0x0010($sp)
    lhu     a1, 0x00E6($sp)
    lw      a0, 0x00E0($sp)
    sw      t3, 0x0020($sp)
    sw      t4, 0x001C($sp)
    sw      t2, 0x0018($sp)
    jal     func_8003300C
    swc1    $f6, 0x0014($sp)
    beq     v0, $zero, lbl_8002FD60
    lw      v1, 0x00D4($sp)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x00B4($sp)
    lw      t8, 0x0000(s0)             # 00000000
    addiu   t7, $sp, 0x00B8            # t7 = FFFFFFD8
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sw      t8, 0x0000(t7)             # FFFFFFD8
    lw      t6, 0x0004(s0)             # 00000004
    sw      t6, 0x0004(t7)             # FFFFFFDC
    lw      t8, 0x0008(s0)             # 00000008
    sw      t8, 0x0008(t7)             # FFFFFFE0
    lwc1    $f10, 0x00BC($sp)
    lwc1    $f18, 0x0104($sp)
    add.s   $f4, $f10, $f18
    swc1    $f4, 0x00BC($sp)
lbl_8002FD60:
    lw      a0, 0x00E0($sp)
    lw      a1, 0x00EC($sp)
    jal     func_8002F0BC
    sw      v1, 0x00D4($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8002FDDC
    lw      v1, 0x00D4($sp)
    lw      a0, 0x00E0($sp)
    lw      a1, 0x00DC($sp)
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_8002D838
    sw      v1, 0x00D4($sp)
    lw      t9, 0x0044($sp)
    lwc1    $f8, 0x00F4($sp)
    lw      t1, 0x00F8($sp)
    addiu   t0, $sp, 0x00B8            # t0 = FFFFFFD8
    sw      t0, 0x0014($sp)
    or      a0, v0, $zero              # a0 = 00000000
    lw      a1, 0x00E0($sp)
    lhu     a2, 0x00E6($sp)
    or      a3, s0, $zero              # a3 = 00000000
    sw      t9, 0x0010($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8002C714
    sw      t1, 0x001C($sp)
    beq     v0, $zero, lbl_8002FDDC
    lw      v1, 0x00D4($sp)
    lw      t4, 0x00FC($sp)
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sw      t2, 0x0000(t4)             # 00000000
lbl_8002FDDC:
    lw      t3, 0x00B4($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t5, 0x00FC($sp)
    beq     t3, $at, lbl_8002FDFC
    lw      a0, 0x00E0($sp)
    lw      t7, 0x0000(t5)             # 00000000
    addiu   $at, $zero, 0x0032         # $at = 00000032
    beq     t7, $at, lbl_8002FF04
lbl_8002FDFC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lw      t0, 0x0100($sp)
    addiu   t6, $sp, 0x005C            # t6 = FFFFFF7C
    addiu   t8, $sp, 0x00D0            # t8 = FFFFFFF0
    addiu   t9, $sp, 0x0058            # t9 = FFFFFF78
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    sw      t1, 0x0028($sp)
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t6, 0x0014($sp)
    lhu     a1, 0x00E6($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x00F0($sp)
    sw      s0, 0x0010($sp)
    sw      v1, 0x00D4($sp)
    sw      t0, 0x0020($sp)
    jal     func_80030274
    swc1    $f6, 0x0024($sp)
    beq     v0, $zero, lbl_8002FF04
    lw      v1, 0x00D4($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x6AB8($at)          # 80106AB8
    lw      t2, 0x00D0($sp)
    lui     $at, 0x8010                # $at = 80100000
    lh      t4, 0x0008(t2)             # 00000008
    lh      t3, 0x000C(t2)             # 0000000C
    mtc1    t4, $f10                   # $f10 = 0.00
    mtc1    t3, $f4                    # $f4 = 0.00
    cvt.s.w $f18, $f10
    cvt.s.w $f8, $f4
    mul.s   $f2, $f18, $f16
    lwc1    $f18, 0x6ABC($at)          # 80106ABC
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f12, $f8, $f16
    nop
    mul.s   $f6, $f2, $f2
    nop
    mul.s   $f10, $f12, $f12
    add.s   $f0, $f6, $f10
    sqrt.s  $f14, $f0
    abs.s   $f0, $f14
    c.lt.s  $f0, $f18
    nop
    bc1t    lbl_8002FF04
    nop
    mtc1    $at, $f8                   # $f8 = 1.00
    lwc1    $f4, 0x00F4($sp)
    lwc1    $f18, 0x005C($sp)
    div.s   $f6, $f8, $f14
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    mul.s   $f0, $f4, $f6
    nop
    mul.s   $f10, $f0, $f2
    add.s   $f8, $f10, $f18
    mul.s   $f4, $f0, $f12
    swc1    $f8, 0x0000(s0)            # 00000000
    lwc1    $f6, 0x0064($sp)
    add.s   $f10, $f4, $f6
    swc1    $f10, 0x0008(s0)           # 00000008
    lw      t7, 0x00F8($sp)
    lw      t5, 0x00D0($sp)
    sw      t5, 0x0000(t7)             # 00000000
    lw      t8, 0x00FC($sp)
    lw      t6, 0x0058($sp)
    sw      t6, 0x0000(t8)             # 00000000
lbl_8002FF04:
    or      v0, v1, $zero              # v0 = 00000001
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x00E0           # $sp += 0xE0
    jr      $ra
    nop


func_8002FF1C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    lw      a3, 0x0048($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x004C($sp)
    lwc1    $f4, 0x0050($sp)
    lw      t7, 0x0054($sp)
    lwc1    $f6, 0x0058($sp)
    addiu   t8, $sp, 0x003C            # t8 = FFFFFFFC
    sw      t8, 0x001C($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0010($sp)
    swc1    $f4, 0x0014($sp)
    sw      t7, 0x0018($sp)
    jal     func_8002F8E0
    swc1    $f6, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8002FF80:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lwc1    $f4, 0x0048($sp)
    lw      t7, 0x004C($sp)
    lw      t8, 0x0050($sp)
    lwc1    $f6, 0x0054($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0010($sp)
    swc1    $f4, 0x0014($sp)
    sw      t7, 0x0018($sp)
    sw      t8, 0x001C($sp)
    jal     func_8002F8E0
    swc1    $f6, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8002FFE4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lwc1    $f4, 0x0048($sp)
    lw      t7, 0x004C($sp)
    lw      t8, 0x0050($sp)
    lw      t9, 0x0054($sp)
    lwc1    $f6, 0x0058($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0010($sp)
    swc1    $f4, 0x0014($sp)
    sw      t7, 0x0018($sp)
    sw      t8, 0x001C($sp)
    sw      t9, 0x0020($sp)
    jal     func_8002F8E0
    swc1    $f6, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8003004C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lwc1    $f4, 0x0048($sp)
    lw      t7, 0x004C($sp)
    lw      t8, 0x0050($sp)
    lw      t9, 0x0054($sp)
    lwc1    $f6, 0x0058($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0028($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sw      t6, 0x0010($sp)
    swc1    $f4, 0x0014($sp)
    sw      t7, 0x0018($sp)
    sw      t8, 0x001C($sp)
    sw      t9, 0x0020($sp)
    jal     func_8002F8E0
    swc1    $f6, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_800300B8:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    or      s0, a3, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a2, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x005C($sp)
    lw      t7, 0x0070($sp)
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    or      a0, s1, $zero              # a0 = 00000000
    sw      t6, 0x0000(t7)             # 00000000
    lwc1    $f4, 0x0004(s0)            # 00000004
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0000(s2)            # 00000000
    lw      t8, 0x0040(s1)             # 00000040
    jal     func_8002F0BC
    sw      t8, 0x0054($sp)
    bne     v0, $zero, lbl_80030114
    or      a0, s1, $zero              # a0 = 00000000
    b       lbl_800301C0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80030114:
    lw      a1, 0x0054($sp)
    jal     func_8002D838
    or      a2, s0, $zero              # a2 = 00000000
    lwc1    $f6, 0x0068($sp)
    lw      t9, 0x006C($sp)
    or      a0, v0, $zero              # a0 = 00000000
    lhu     a1, 0x005E($sp)
    or      a2, s1, $zero              # a2 = 00000000
    or      a3, s2, $zero              # a3 = 00000000
    sw      s0, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_8002CFA8
    sw      t9, 0x0018($sp)
    lw      t1, 0x0000(s0)             # 00000000
    addiu   a3, $sp, 0x0040            # a3 = FFFFFFE8
    or      a0, s1, $zero              # a0 = 00000000
    sw      t1, 0x0000(a3)             # FFFFFFE8
    lw      t0, 0x0004(s0)             # 00000004
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFE4
    sw      t0, 0x0004(a3)             # FFFFFFEC
    lw      t1, 0x0008(s0)             # 00000008
    sw      t1, 0x0008(a3)             # FFFFFFF0
    lwc1    $f8, 0x0000(s2)            # 00000000
    lw      t4, 0x0074($sp)
    lw      t3, 0x0070($sp)
    swc1    $f8, 0x0044($sp)
    lwc1    $f10, 0x0000(s2)           # 00000000
    lw      t2, 0x006C($sp)
    lwc1    $f16, 0x0068($sp)
    sw      v0, 0x004C($sp)
    lhu     a1, 0x005E($sp)
    sw      t4, 0x001C($sp)
    sw      t3, 0x0018($sp)
    swc1    $f10, 0x003C($sp)
    sw      t2, 0x0014($sp)
    jal     func_800334A4
    swc1    $f16, 0x0010($sp)
    beq     v0, $zero, lbl_800301BC
    lw      v1, 0x004C($sp)
    lwc1    $f18, 0x003C($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    swc1    $f18, 0x0000(s2)           # 00000000
lbl_800301BC:
    or      v0, v1, $zero              # v0 = 00000001
lbl_800301C0:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_800301D8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a2, 0x0038($sp)
    mtc1    a3, $f12                   # $f12 = 0.00
    lw      a3, 0x0038($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFFC
    addiu   t7, $sp, 0x0028            # t7 = FFFFFFF8
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f12, 0x0010($sp)
    jal     func_800300B8
    sw      $zero, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80030224:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a2, 0x0030($sp)
    mtc1    a3, $f12                   # $f12 = 0.00
    lw      a3, 0x0030($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0038($sp)
    lw      t7, 0x003C($sp)
    lw      t8, 0x0040($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    swc1    $f12, 0x0010($sp)
    sw      t6, 0x0014($sp)
    sw      t7, 0x0018($sp)
    jal     func_800300B8
    sw      t8, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80030274:
# Check Background
# A0 = Global Context + 0x7C0
# A1 = u16 PolyIgnoreFlags (1 camera, 2 most entities, 3 or 4 projectiles)
# A2 = u16 ?
# A3 = vector3_f32* prevCoords (inst+0x100 coordinates)
# SP+0x10 = vector3_f32* nextCoords (suggested next position, inst+0x24 coordinates)
# SP+0x14 = out vector3_f32* finalCoords (finalized next position)
# SP+0x18 = out CollisionPoly**
# SP+0x1C = out s32* Mesh Collision Id
# SP+0x20 = Actor*
# SP+0x24 = f32 ?
# SP+0x28 = s32 ? (collision check type?)
# V0 = 1 if successful, else 0
    addiu   $sp, $sp, 0xFF20           # $sp -= 0xE0
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    lw      s1, 0x00F0($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s6, a3, $zero              # s6 = 00000000
    addiu   s7, $sp, 0x00A8            # s7 = FFFFFFC8
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    sw      a1, 0x00E4($sp)
    sw      a2, 0x00E8($sp)
    lw      t7, 0x0000(s1)             # 00000000
    lw      s0, 0x0040(s2)             # 00000040
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    sw      t7, 0x0000(s7)             # FFFFFFC8
    lw      t6, 0x0004(s1)             # 00000004
    addiu   a0, s2, 0x0044             # a0 = 00000044
    sw      t6, 0x0004(s7)             # FFFFFFCC
    lw      t7, 0x0008(s1)             # 00000008
    sw      t7, 0x0008(s7)             # FFFFFFD0
    lw      t9, 0x00FC($sp)
    sw      t8, 0x0000(t9)             # 00000000
    lw      t0, 0x0000(s2)             # 00000000
    jal     func_80033FF0
    lhu     a1, 0x0014(t0)             # 00000014
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = 00000000
    jal     func_8002D9B8
    addiu   a2, $sp, 0x00CC            # a2 = FFFFFFEC
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s7, $zero              # a1 = FFFFFFC8
    jal     func_8002D9B8
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFE0
    lw      t1, 0x00F4($sp)
    lw      t3, 0x0000(s1)             # 00000000
    lui     $at, 0x8010                # $at = 80100000
    addiu   v1, $sp, 0x00C0            # v1 = FFFFFFE0
    sw      t3, 0x0000(t1)             # 00000000
    lw      t2, 0x0004(s1)             # 00000004
    addiu   v0, $sp, 0x00CC            # v0 = FFFFFFEC
    addiu   a3, $sp, 0x00D8            # a3 = FFFFFFF8
    sw      t2, 0x0004(t1)             # 00000004
    lw      t3, 0x0008(s1)             # 00000008
    sw      t3, 0x0008(t1)             # 00000008
    lwc1    $f4, 0x6AC0($at)           # 80106AC0
    lw      t4, 0x00F8($sp)
    sw      $zero, 0x00B8($sp)
    swc1    $f4, 0x00B4($sp)
    sw      $zero, 0x0000(t4)          # 00000000
    lw      t6, 0x00C0($sp)
    lw      t5, 0x00CC($sp)
    lw      t8, 0x00C4($sp)
    lw      t7, 0x00D0($sp)
    bne     t5, t6, lbl_80030384
    nop
    bne     t7, t8, lbl_80030384
    lw      t9, 0x00D4($sp)
    lw      t0, 0x00C8($sp)
    or      a0, s2, $zero              # a0 = 00000000
    beq     t9, t0, lbl_80030640
    nop
lbl_80030384:
    lw      a1, 0x0000(v1)             # FFFFFFE0
    lw      a2, 0x0000(v0)             # FFFFFFEC
    slt     $at, a1, a2
    beql    $at, $zero, lbl_800303A4
    addiu   v0, v0, 0x0004             # v0 = FFFFFFF0
    sw      a2, 0x0000(v1)             # FFFFFFE0
    sw      a1, 0x0000(v0)             # FFFFFFF0
    addiu   v0, v0, 0x0004             # v0 = FFFFFFF4
lbl_800303A4:
    sltu    $at, v0, a3
    bne     $at, $zero, lbl_80030384
    addiu   v1, v1, 0x0004             # v1 = FFFFFFE4
    lw      t1, 0x001C(s2)             # 0000001C
    lw      t2, 0x0020(s2)             # 00000020
    lw      t3, 0x00D4($sp)
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    multu   t1, t2
    mtc1    t3, $f6                    # $f6 = 0.00
    lw      v0, 0x00C8($sp)
    lw      v1, 0x00C4($sp)
    cvt.s.w $f8, $f6
    addiu   v0, v0, 0x0001             # v0 = FFFFFFF5
    slt     $at, t3, v0
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    addiu   s4, $sp, 0x0090            # s4 = FFFFFFB0
    addiu   s3, $sp, 0x009C            # s3 = FFFFFFBC
    mflo    a1
    sll     t7, a1,  2
    subu    t7, t7, a1
    multu   t3, a1
    sll     t7, t7,  1
    addiu   v1, v1, 0x0001             # v1 = FFFFFFE5
    mflo    t4
    nop
    nop
    multu   t4, a0
    mflo    t5
    addu    t6, t5, s0
    sw      t6, 0x00D8($sp)
    lwc1    $f10, 0x0030(s2)           # 00000030
    lwc1    $f18, 0x000C(s2)           # 0000000C
    mul.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x00A4($sp)
    lwc1    $f6, 0x0030(s2)            # 00000030
    sw      t3, 0x00BC($sp)
    add.s   $f8, $f6, $f4
    beq     $at, $zero, lbl_80030630
    swc1    $f8, 0x0098($sp)
    sw      t7, 0x006C($sp)
    lwc1    $f20, 0x0104($sp)
    lw      s8, 0x0108($sp)
lbl_80030450:
    lw      a2, 0x00D0($sp)
    lw      t9, 0x001C(s2)             # 0000001C
    lwc1    $f18, 0x002C(s2)           # 0000002C
    mtc1    a2, $f10                   # $f10 = 0.00
    multu   a2, t9
    lwc1    $f4, 0x0008(s2)            # 00000008
    cvt.s.w $f16, $f10
    lw      t2, 0x00D8($sp)
    slt     $at, a2, v1
    mul.s   $f6, $f16, $f18
    mflo    t0
    nop
    nop
    multu   t0, a0
    add.s   $f8, $f6, $f4
    swc1    $f8, 0x00A0($sp)
    lwc1    $f10, 0x002C(s2)           # 0000002C
    add.s   $f16, $f10, $f8
    mflo    t1
    addu    a1, t1, t2
    beq     $at, $zero, lbl_800305EC
    swc1    $f16, 0x0094($sp)
    lw      v0, 0x00C0($sp)
    addiu   v0, v0, 0x0001             # v0 = FFFFFFF6
    lw      s1, 0x00CC($sp)
lbl_800304B4:
    lwc1    $f4, 0x0028(s2)            # 00000028
    lwc1    $f8, 0x0004(s2)            # 00000004
    mtc1    s1, $f18                   # $f18 = 0.00
    multu   s1, a0
    slt     $at, s1, v0
    cvt.s.w $f6, $f18
    mul.s   $f10, $f6, $f4
    mflo    t5
    addu    s0, t5, a1
    add.s   $f16, $f10, $f8
    swc1    $f16, 0x009C($sp)
    lwc1    $f18, 0x0028(s2)           # 00000028
    add.s   $f6, $f18, $f16
    beq     $at, $zero, lbl_800305A4
    swc1    $f6, 0x0090($sp)
    sw      a1, 0x0080($sp)
    sw      a2, 0x0084($sp)
lbl_800304F8:
    or      a0, s3, $zero              # a0 = FFFFFFBC
    or      a1, s4, $zero              # a1 = FFFFFFB0
    or      a2, s6, $zero              # a2 = 00000000
    jal     func_800A5B6C
    or      a3, s7, $zero              # a3 = FFFFFFC8
    bne     v0, s5, lbl_80030558
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x00F4($sp)
    lw      t3, 0x00F8($sp)
    addiu   t7, $sp, 0x00B4            # t7 = FFFFFFD4
    sw      t7, 0x0024($sp)
    or      a1, s2, $zero              # a1 = 00000000
    lhu     a2, 0x00E6($sp)
    lhu     a3, 0x00EA($sp)
    sw      s6, 0x0010($sp)
    sw      s7, 0x0014($sp)
    swc1    $f20, 0x0020($sp)
    sw      s8, 0x0028($sp)
    sw      t6, 0x0018($sp)
    jal     func_8002D3A4
    sw      t3, 0x001C($sp)
    beql    v0, $zero, lbl_8003055C
    lwc1    $f4, 0x009C($sp)
    sw      s5, 0x00B8($sp)
lbl_80030558:
    lwc1    $f4, 0x009C($sp)
lbl_8003055C:
    lwc1    $f10, 0x0028(s2)           # 00000028
    lwc1    $f18, 0x0090($sp)
    lw      v0, 0x00C0($sp)
    add.s   $f8, $f4, $f10
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   v0, v0, 0x0001             # v0 = 00000001
    slt     $at, s1, v0
    swc1    $f8, 0x009C($sp)
    lwc1    $f16, 0x0028(s2)           # 00000028
    addiu   s0, s0, 0x0006             # s0 = 00000006
    add.s   $f6, $f18, $f16
    bne     $at, $zero, lbl_800304F8
    swc1    $f6, 0x0090($sp)
    lw      v1, 0x00C4($sp)
    lw      a2, 0x0084($sp)
    lw      a1, 0x0080($sp)
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    addiu   v1, v1, 0x0001             # v1 = 00000001
lbl_800305A4:
    lw      t9, 0x001C(s2)             # 0000001C
    lwc1    $f4, 0x00A0($sp)
    lwc1    $f10, 0x002C(s2)           # 0000002C
    multu   t9, a0
    lwc1    $f18, 0x0094($sp)
    add.s   $f8, $f4, $f10
    addiu   a2, a2, 0x0001             # a2 = 00000001
    slt     $at, a2, v1
    swc1    $f8, 0x00A0($sp)
    lwc1    $f16, 0x002C(s2)           # 0000002C
    add.s   $f6, $f18, $f16
    mflo    t0
    addu    a1, a1, t0
    swc1    $f6, 0x0094($sp)
    bnel    $at, $zero, lbl_800304B4
    lw      s1, 0x00CC($sp)
    lw      v0, 0x00C8($sp)
    addiu   v0, v0, 0x0001             # v0 = 00000002
lbl_800305EC:
    lw      t1, 0x00D8($sp)
    lw      t2, 0x006C($sp)
    lwc1    $f4, 0x00A4($sp)
    lwc1    $f18, 0x0098($sp)
    addu    t8, t1, t2
    sw      t8, 0x00D8($sp)
    lwc1    $f10, 0x0030(s2)           # 00000030
    lw      t5, 0x00BC($sp)
    add.s   $f8, $f4, $f10
    addiu   t4, t5, 0x0001             # t4 = 00000001
    slt     $at, t4, v0
    swc1    $f8, 0x00A4($sp)
    lwc1    $f16, 0x0030(s2)           # 00000030
    add.s   $f6, $f18, $f16
    swc1    $f6, 0x0098($sp)
    bne     $at, $zero, lbl_80030450
    sw      t4, 0x00BC($sp)
lbl_80030630:
    lw      s8, 0x0108($sp)
    lwc1    $f20, 0x0104($sp)
    b       lbl_800306C8
    andi    t9, s8, 0x0010             # t9 = 00000000
lbl_80030640:
    jal     func_8002F0BC
    or      a1, s6, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80030658
    or      a0, s2, $zero              # a0 = 00000000
    b       lbl_80030720
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80030658:
    or      a1, s0, $zero              # a1 = 00000006
    jal     func_8002D838
    or      a2, s6, $zero              # a2 = 00000000
    lw      s8, 0x0108($sp)
    lwc1    $f20, 0x0104($sp)
    lw      t6, 0x00F4($sp)
    lw      t3, 0x00F8($sp)
    addiu   t7, $sp, 0x00B4            # t7 = FFFFFFD4
    sw      t7, 0x0024($sp)
    or      a0, v0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    lhu     a2, 0x00E6($sp)
    lhu     a3, 0x00EA($sp)
    sw      s6, 0x0010($sp)
    sw      s7, 0x0014($sp)
    sw      s8, 0x0028($sp)
    swc1    $f20, 0x0020($sp)
    sw      t6, 0x0018($sp)
    jal     func_8002D3A4
    sw      t3, 0x001C($sp)
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    bne     v0, s5, lbl_800306C4
    sw      v0, 0x00B8($sp)
    lw      a0, 0x00F4($sp)
    jal     func_800A5538
    or      a1, s6, $zero              # a1 = 00000000
    swc1    $f0, 0x00B4($sp)
lbl_800306C4:
    andi    t9, s8, 0x0010             # t9 = 00000000
lbl_800306C8:
    beq     t9, $zero, lbl_8003071C
    or      a0, s2, $zero              # a0 = 00000000
    lw      t0, 0x00F4($sp)
    lw      t1, 0x00F8($sp)
    lw      t8, 0x00FC($sp)
    lw      t5, 0x0100($sp)
    addiu   t2, $sp, 0x00B4            # t2 = FFFFFFD4
    sw      t2, 0x0018($sp)
    lhu     a1, 0x00E6($sp)
    or      a2, s6, $zero              # a2 = 00000000
    or      a3, s7, $zero              # a3 = FFFFFFC8
    swc1    $f20, 0x0024($sp)
    sw      s8, 0x0028($sp)
    sw      t0, 0x0010($sp)
    sw      t1, 0x0014($sp)
    sw      t8, 0x001C($sp)
    jal     func_800338A8
    sw      t5, 0x0020($sp)
    beq     v0, $zero, lbl_8003071C
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x00B8($sp)
lbl_8003071C:
    lw      v0, 0x00B8($sp)
lbl_80030720:
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    lw      s5, 0x0054($sp)
    lw      s6, 0x0058($sp)
    lw      s7, 0x005C($sp)
    lw      s8, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00E0           # $sp += 0xE0


func_80030754:
    beq     a0, $zero, lbl_80030760
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80030760:
    beq     a1, $zero, lbl_8003076C
    lw      t6, 0x0010($sp)
    ori     v1, v1, 0x0002             # v1 = 00000003
lbl_8003076C:
    beq     a2, $zero, lbl_80030778
    nop
    ori     v1, v1, 0x0004             # v1 = 00000007
lbl_80030778:
    beq     a3, $zero, lbl_80030784
    nop
    ori     v1, v1, 0x0008             # v1 = 0000000F
lbl_80030784:
    beql    t6, $zero, lbl_80030794
    or      v0, v1, $zero              # v0 = 0000000F
    ori     v1, v1, 0x0010             # v1 = 0000001F
    or      v0, v1, $zero              # v0 = 0000001F
lbl_80030794:
    jr      $ra
    nop


func_8003079C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    lw      a0, 0x004C($sp)
    lw      a1, 0x0050($sp)
    lw      a2, 0x0054($sp)
    jal     func_80030754
    lw      a3, 0x0058($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t7, 0x0040($sp)
    lw      t8, 0x0044($sp)
    lw      t9, 0x0048($sp)
    lw      t0, 0x005C($sp)
    lw      a0, 0x0038($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x003C($sp)
    sw      $zero, 0x0020($sp)
    sw      v0, 0x0028($sp)
    sw      t7, 0x0010($sp)
    swc1    $f4, 0x0024($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    jal     func_80030274
    sw      t0, 0x001C($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80030828:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    lw      a0, 0x004C($sp)
    lw      a1, 0x0050($sp)
    lw      a2, 0x0054($sp)
    jal     func_80030754
    lw      a3, 0x0058($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t7, 0x0040($sp)
    lw      t8, 0x0044($sp)
    lw      t9, 0x0048($sp)
    lw      t0, 0x005C($sp)
    lw      a0, 0x0038($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a3, 0x003C($sp)
    sw      $zero, 0x0020($sp)
    sw      v0, 0x0028($sp)
    sw      t7, 0x0010($sp)
    swc1    $f4, 0x0024($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    jal     func_80030274
    sw      t0, 0x001C($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_800308B4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    lw      a0, 0x004C($sp)
    lw      a1, 0x0050($sp)
    lw      a2, 0x0054($sp)
    jal     func_80030754
    lw      a3, 0x0058($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t7, 0x0040($sp)
    lw      t8, 0x0044($sp)
    lw      t9, 0x0048($sp)
    lw      t0, 0x005C($sp)
    lw      a0, 0x0038($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x003C($sp)
    sw      $zero, 0x0020($sp)
    sw      v0, 0x0028($sp)
    sw      t7, 0x0010($sp)
    swc1    $f4, 0x0024($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    jal     func_80030274
    sw      t0, 0x001C($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80030940:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    lw      a0, 0x004C($sp)
    lw      a1, 0x0050($sp)
    lw      a2, 0x0054($sp)
    jal     func_80030754
    lw      a3, 0x0058($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t7, 0x0040($sp)
    lw      t8, 0x0044($sp)
    lw      t9, 0x0048($sp)
    lw      t0, 0x005C($sp)
    lw      t1, 0x0060($sp)
    lw      a0, 0x0038($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x003C($sp)
    sw      v0, 0x0028($sp)
    sw      t7, 0x0010($sp)
    swc1    $f4, 0x0024($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t0, 0x001C($sp)
    jal     func_80030274
    sw      t1, 0x0020($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_800309D0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    lw      a0, 0x004C($sp)
    lw      a1, 0x0050($sp)
    lw      a2, 0x0054($sp)
    jal     func_80030754
    lw      a3, 0x0058($sp)
    lw      t7, 0x0040($sp)
    lw      t8, 0x0044($sp)
    lw      t9, 0x0048($sp)
    lw      t0, 0x005C($sp)
    lw      t1, 0x0060($sp)
    lwc1    $f4, 0x0064($sp)
    lw      a0, 0x0038($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x003C($sp)
    sw      v0, 0x0028($sp)
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t0, 0x001C($sp)
    sw      t1, 0x0020($sp)
    jal     func_80030274
    swc1    $f4, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80030A5C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    lw      a0, 0x004C($sp)
    lw      a1, 0x0050($sp)
    lw      a2, 0x0054($sp)
    jal     func_80030754
    lw      a3, 0x0058($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t7, 0x0040($sp)
    lw      t8, 0x0044($sp)
    lw      t9, 0x0048($sp)
    lw      t0, 0x005C($sp)
    lw      a0, 0x0038($sp)
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x003C($sp)
    sw      $zero, 0x0020($sp)
    sw      v0, 0x0028($sp)
    sw      t7, 0x0010($sp)
    swc1    $f4, 0x0024($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    jal     func_80030274
    sw      t0, 0x001C($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80030AE8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x002C($sp)
    lw      t6, 0x0040($sp)
    lw      t0, 0x0044($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    jal     func_80030B2C
    sw      t0, 0x0020($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80030B2C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    lw      a0, 0x0054($sp)
    lw      a1, 0x0058($sp)
    lw      a2, 0x005C($sp)
    jal     func_80030754
    lw      a3, 0x0060($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t7, 0x0048($sp)
    lw      t8, 0x004C($sp)
    lw      t9, 0x0050($sp)
    addiu   t0, $sp, 0x003C            # t0 = FFFFFFFC
    sw      t0, 0x001C($sp)
    lw      a0, 0x0040($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x0044($sp)
    sw      $zero, 0x0020($sp)
    sw      v0, 0x0028($sp)
    sw      t7, 0x0010($sp)
    swc1    $f4, 0x0024($sp)
    sw      t8, 0x0014($sp)
    jal     func_80030274
    sw      t9, 0x0018($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80030BB8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    lw      a0, 0x004C($sp)
    lw      a1, 0x0050($sp)
    lw      a2, 0x0054($sp)
    jal     func_80030754
    lw      a3, 0x0058($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t7, 0x0040($sp)
    lw      t8, 0x0044($sp)
    lw      t9, 0x0048($sp)
    lw      t0, 0x005C($sp)
    lw      a0, 0x0038($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x003C($sp)
    sw      $zero, 0x0020($sp)
    sw      v0, 0x0028($sp)
    sw      t7, 0x0010($sp)
    swc1    $f4, 0x0024($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    jal     func_80030274
    sw      t0, 0x001C($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80030C44:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lw      t7, 0x0034($sp)
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    sw      t6, 0x0000(t7)             # 00000000
    lw      a1, 0x0040(a0)             # 00000040
    sw      a0, 0x0028($sp)
    jal     func_8002D8EC
    lw      a2, 0x0038($sp)
    bne     v0, $zero, lbl_80030C84
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80030CF8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80030C84:
    lwc1    $f4, 0x003C($sp)
    lw      t8, 0x0030($sp)
    lhu     t9, 0x0046($sp)
    lhu     a1, 0x002E($sp)
    lw      a2, 0x0028($sp)
    lw      a3, 0x0038($sp)
    swc1    $f4, 0x0010($sp)
    sw      t8, 0x0014($sp)
    jal     func_8002D700
    sw      t9, 0x0018($sp)
    bne     v0, $zero, lbl_80030CEC
    lw      a0, 0x0028($sp)
    lw      t0, 0x0038($sp)
    lwc1    $f6, 0x003C($sp)
    lw      t1, 0x0040($sp)
    lhu     t2, 0x0046($sp)
    lhu     a1, 0x002E($sp)
    lw      a2, 0x0030($sp)
    lw      a3, 0x0034($sp)
    sw      t0, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    sw      t1, 0x0018($sp)
    jal     func_80033CB8
    sw      t2, 0x001C($sp)
    beql    v0, $zero, lbl_80030CF8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80030CEC:
    b       lbl_80030CF8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80030CF8:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80030D08:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    mtc1    a2, $f12                   # $f12 = 0.00
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFFC
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFF8
    swc1    $f12, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    jal     func_80030C44
    sw      t6, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80030D4C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    mtc1    a2, $f12                   # $f12 = 0.00
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sw      t7, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFFC
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFF8
    swc1    $f12, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80030C44
    sw      t6, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80030D94:
# Zero Initialize Mesh Collision Lookup Table
# zeroes values at Global Context + 0x804 to 0x810
    sh      $zero, 0x0000(a0)          # 00000000
    sh      $zero, 0x0002(a0)          # 00000002
    sw      $zero, 0x0004(a0)          # 00000004
    sw      $zero, 0x0008(a0)          # 00000008
    jr      $ra
    nop


func_80030DAC:
# Initialize Collision lookup tables
# A0 = Global Context
# A1 = Global Context + 0x804
# A2 = Records in Global Context + 0x808 table
# A3 = Polygons to load
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lw      t6, 0x0028($sp)
    lw      t7, 0x0024($sp)
    addiu   a2, $zero, 0xFFFE          # a2 = FFFFFFFE
    sh      t6, 0x0000(t7)             # 00000000
    lw      t8, 0x0024($sp)
    sh      $zero, 0x0002(t8)          # 00000002
    lw      a0, 0x0020($sp)
    lw      a1, 0x0028($sp)
    addiu   a0, a0, 0x0074             # a0 = 00000074
    sw      a0, 0x001C($sp)
    jal     func_800A01D8
    sll     a1, a1,  2
    lw      t9, 0x0024($sp)
    lw      a0, 0x001C($sp)
    sw      v0, 0x0004(t9)             # 00000004
    jal     func_800A01B8
    lw      a1, 0x002C($sp)
    lw      t0, 0x0024($sp)
    sw      v0, 0x0008(t0)             # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80030E1C:
    lhu     v0, 0x0002(a0)             # 00000002
    lhu     t0, 0x0000(a0)             # 00000000
    lw      t6, 0x0004(a0)             # 00000004
    addiu   t8, v0, 0x0001             # t8 = 00000001
    andi    t9, t8, 0xFFFF             # t9 = 00000001
    sll     t7, v0,  2
    slt     $at, t9, t0
    sh      t8, 0x0002(a0)             # 00000002
    bne     $at, $zero, lbl_80030E4C
    addu    v1, t6, t7
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80030E4C:
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    nop


func_80030E58:
# Get Next Free Collision Record
# grabs next free record in GC + 0x7C0 + 0x48 table
# A0 = Global Context + 0x804
# V0 = Next Free Index
    lhu     v0, 0x0002(a0)             # 00000002
    addiu   t6, v0, 0x0001             # t6 = 00000001
    sh      t6, 0x0002(a0)             # 00000002
    jr      $ra
    nop


func_80030E6C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
    sh      $zero, 0x0010(a0)          # 00000010
    lh      v0, 0x0010(a0)             # 00000010
    swc1    $f0, 0x0008(a0)            # 00000008
    swc1    $f0, 0x0004(a0)            # 00000004
    swc1    $f0, 0x0000(a0)            # 00000000
    swc1    $f2, 0x001C(a0)            # 0000001C
    swc1    $f2, 0x0018(a0)            # 00000018
    swc1    $f2, 0x0014(a0)            # 00000014
    sh      v0, 0x000E(a0)             # 0000000E
    sh      v0, 0x000C(a0)             # 0000000C
    jr      $ra
    nop


func_80030EAC:
# Set Actor Mesh Position, Scale, Rotation
# A0 = Actor Mesh + 0x34 (scale 2)
# A1 = vector3_f32* scale
# A2 = vector3_s16* rotation
# A3 = vector3_f32* position
    lw      t7, 0x0000(a1)             # 00000000
    sw      t7, 0x0000(a0)             # 00000000
    lw      t6, 0x0004(a1)             # 00000004
    sw      t6, 0x0004(a0)             # 00000004
    lw      t7, 0x0008(a1)             # 00000008
    sw      t7, 0x0008(a0)             # 00000008
    lwl     t9, 0x0000(a2)             # 00000000
    lwr     t9, 0x0003(a2)             # 00000003
    swl     t9, 0x000C(a0)             # 0000000C
    swr     t9, 0x000F(a0)             # 0000000F
    lhu     t9, 0x0004(a2)             # 00000004
    sh      t9, 0x0010(a0)             # 00000010
    lw      t1, 0x0000(a3)             # 00000000
    sw      t1, 0x0014(a0)             # 00000014
    lw      t0, 0x0004(a3)             # 00000004
    sw      t0, 0x0018(a0)             # 00000018
    lw      t1, 0x0008(a3)             # 00000008
    sw      t1, 0x001C(a0)             # 0000001C
    jr      $ra
    nop


func_80030EFC:
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    c.eq.s  $f4, $f6
    nop
    bc1f    lbl_80030FC0
    nop
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f10, 0x0004(a0)           # 00000004
    c.eq.s  $f8, $f10
    nop
    bc1f    lbl_80030FC0
    nop
    lwc1    $f16, 0x0008(a1)           # 00000008
    lwc1    $f18, 0x0008(a0)           # 00000008
    c.eq.s  $f16, $f18
    nop
    bc1f    lbl_80030FC0
    nop
    lh      t6, 0x000C(a1)             # 0000000C
    lh      t7, 0x000C(a0)             # 0000000C
    bne     t6, t7, lbl_80030FC0
    nop
    lh      t8, 0x000E(a1)             # 0000000E
    lh      t9, 0x000E(a0)             # 0000000E
    bne     t8, t9, lbl_80030FC0
    nop
    lh      t0, 0x0010(a1)             # 00000010
    lh      t1, 0x0010(a0)             # 00000010
    bne     t0, t1, lbl_80030FC0
    nop
    lwc1    $f4, 0x0014(a1)            # 00000014
    lwc1    $f6, 0x0014(a0)            # 00000014
    c.eq.s  $f4, $f6
    nop
    bc1f    lbl_80030FC0
    nop
    lwc1    $f8, 0x0018(a1)            # 00000018
    lwc1    $f10, 0x0018(a0)           # 00000018
    c.eq.s  $f8, $f10
    nop
    bc1f    lbl_80030FC0
    nop
    lwc1    $f16, 0x001C(a1)           # 0000001C
    lwc1    $f18, 0x001C(a0)           # 0000001C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    c.eq.s  $f16, $f18
    nop
    bc1t    lbl_80030FC8
    nop
lbl_80030FC0:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80030FC8:
    jr      $ra
    nop


func_80030FD0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_8002B37C
    addiu   a0, a0, 0x0002             # a0 = 00000002
    lw      a0, 0x0018($sp)
    jal     func_8002B37C
    addiu   a0, a0, 0x0004             # a0 = 00000004
    lw      a0, 0x0018($sp)
    jal     func_8002B37C
    addiu   a0, a0, 0x0006             # a0 = 00000006
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80031010:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80030FD0
    sh      $zero, 0x0000(a0)          # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80031030:
    sh      $zero, 0x0000(a0)          # 00000000
    jr      $ra
    nop


func_8003103C:
# Collision, Uninitializes Actor-based complex collision mesh
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      $zero, 0x0000(s0)          # 00000000
    sw      $zero, 0x0004(s0)          # 00000004
    jal     func_80030E6C
    addiu   a0, s0, 0x0014             # a0 = 00000014
    jal     func_80030E6C
    addiu   a0, s0, 0x0034             # a0 = 00000034
    jal     func_80031010
    addiu   a0, s0, 0x0008             # a0 = 00000008
    jal     func_80031030
    addiu   a0, s0, 0x0010             # a0 = 00000010
    sh      $zero, 0x0058(s0)          # 00000058
    lh      v0, 0x0058(s0)             # 00000058
    sh      $zero, 0x005A(s0)          # 0000005A
    sh      v0, 0x0056(s0)             # 00000056
    sh      v0, 0x0054(s0)             # 00000054
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8003109C:
# Collision, Initializes Actor-based complex collision mesh
# A0 = Insert Record ptr (Global Context + 0x814 is start?)
# A1 = Actor Instance
# A2 = Collision Mesh ptr
    sw      a1, 0x0000(a0)             # 00000000
    sw      a2, 0x0004(a0)             # 00000004
    addiu   v0, a1, 0x0050             # v0 = 00000050
    lw      t7, 0x0000(v0)             # 00000050
    addiu   v1, a1, 0x00B4             # v1 = 000000B4
    addiu   a3, a1, 0x0024             # a3 = 00000024
    sw      t7, 0x0014(a0)             # 00000014
    lw      t6, 0x0004(v0)             # 00000054
    sw      t6, 0x0018(a0)             # 00000018
    lw      t7, 0x0008(v0)             # 00000058
    sw      t7, 0x001C(a0)             # 0000001C
    lwl     t9, 0x0000(v1)             # 000000B4
    lwr     t9, 0x0003(v1)             # 000000B7
    swl     t9, 0x0020(a0)             # 00000020
    swr     t9, 0x0023(a0)             # 00000023
    lh      t0, 0x0020(a0)             # 00000020
    lhu     t9, 0x0004(v1)             # 000000B8
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0020(a0)             # 00000020
    sh      t9, 0x0024(a0)             # 00000024
    lw      t3, 0x0000(a3)             # 00000024
    sw      t3, 0x0028(a0)             # 00000028
    lw      t2, 0x0004(a3)             # 00000028
    sw      t2, 0x002C(a0)             # 0000002C
    lw      t3, 0x0008(a3)             # 0000002C
    sw      t3, 0x0030(a0)             # 00000030
    lw      t5, 0x0000(v0)             # 00000050
    sw      t5, 0x0034(a0)             # 00000034
    lw      t4, 0x0004(v0)             # 00000054
    sw      t4, 0x0038(a0)             # 00000038
    lw      t5, 0x0008(v0)             # 00000058
    sw      t5, 0x003C(a0)             # 0000003C
    lwl     t7, 0x0000(v1)             # 000000B4
    lwr     t7, 0x0003(v1)             # 000000B7
    swl     t7, 0x0040(a0)             # 00000040
    swr     t7, 0x0043(a0)             # 00000043
    lhu     t7, 0x0004(v1)             # 000000B8
    sh      t7, 0x0044(a0)             # 00000044
    lw      t9, 0x0000(a3)             # 00000024
    sw      t9, 0x0048(a0)             # 00000048
    lw      t8, 0x0004(a3)             # 00000028
    sw      t8, 0x004C(a0)             # 0000004C
    lw      t9, 0x0008(a3)             # 0000002C
    sw      t9, 0x0050(a0)             # 00000050
    jr      $ra
    nop


func_80031154:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x0014             # a0 = 00000014
    jal     func_80030EFC
    addiu   a1, a2, 0x0034             # a1 = 00000034
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003117C:
    sw      $zero, 0x0000(a0)          # 00000000
    jr      $ra
    nop


func_80031188:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a1, 0x0020($sp)
    addiu   a0, a3, 0x0074             # a0 = 00000074
    addiu   a2, $zero, 0xFFFE          # a2 = FFFFFFFE
    jal     func_800A01D8
    sll     a1, a1,  4
    lw      t6, 0x001C($sp)
    sw      v0, 0x0000(t6)             # 00000000
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800311C4:
    sw      $zero, 0x0000(a0)          # 00000000
    jr      $ra
    nop


func_800311D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a1, 0x0020($sp)
    addiu   a0, a3, 0x0074             # a0 = 00000074
    addiu   a2, $zero, 0xFFFE          # a2 = FFFFFFFE
    addu    $at, a1, $zero
    sll     a1, a1,  2
    subu    a1, a1, $at
    jal     func_800A01D8
    sll     a1, a1,  1
    lw      t6, 0x001C($sp)
    sw      v0, 0x0000(t6)             # 00000000
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80031218:
    sw      a0, 0x0000($sp)
    lw      t7, 0x0034(a1)             # 00000034
    lw      t6, 0x0038(a1)             # 00000038
    sw      t7, 0x0014(a1)             # 00000014
    sw      t6, 0x0018(a1)             # 00000018
    lw      t6, 0x0040(a1)             # 00000040
    lw      t7, 0x003C(a1)             # 0000003C
    sw      t6, 0x0020(a1)             # 00000020
    sw      t7, 0x001C(a1)             # 0000001C
    lw      t7, 0x0044(a1)             # 00000044
    lw      t6, 0x0048(a1)             # 00000048
    sw      t7, 0x0024(a1)             # 00000024
    sw      t6, 0x0028(a1)             # 00000028
    lw      t6, 0x0050(a1)             # 00000050
    lw      t7, 0x004C(a1)             # 0000004C
    sw      t6, 0x0030(a1)             # 00000030
    sw      t7, 0x002C(a1)             # 0000002C
    jr      $ra
    nop


func_80031264:
# Test if Mesh Collision Id is actor
# A0 = Mesh Collision Id
# V0 = 1 if id between 0x00 and 0x31, else 0
    bltz    a0, lbl_80031274
    slti    $at, a0, 0x0032
    bne     $at, $zero, lbl_8003127C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80031274:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8003127C:
    jr      $ra
    nop


func_80031284:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x0000(a1)             # 00000000
    sw      a1, 0x001C($sp)
    jal     func_8003117C
    addiu   a0, a1, 0x13F0             # a0 = 000013F0
    lw      a0, 0x001C($sp)
    jal     func_800311C4
    addiu   a0, a0, 0x13F4             # a0 = 000013F4
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8002B43C
    addiu   a1, a1, 0x13F8             # a1 = 000013F8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800312D0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    or      s4, a0, $zero              # s4 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, s5, 0x0004             # s1 = 00000004
    or      s2, s5, $zero              # s2 = 00000000
    addiu   s3, $zero, 0x1388          # s3 = 00001388
lbl_80031308:
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8003103C
    or      a1, s1, $zero              # a1 = 00000004
    addiu   s0, s0, 0x0064             # s0 = 00000064
    addiu   s1, s1, 0x0064             # s1 = 00000068
    addiu   s2, s2, 0x0002             # s2 = 00000002
    bne     s0, s3, lbl_80031308
    sh      $zero, 0x138A(s2)          # 0000138C
    addiu   s0, s5, 0x13F0             # s0 = 000013F0
    jal     func_8003117C
    or      a0, s0, $zero              # a0 = 000013F0
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 000013F0
    jal     func_80031188
    lw      a2, 0x1408(s5)             # 00001408
    addiu   s0, s5, 0x13F4             # s0 = 000013F4
    jal     func_800311C4
    or      a0, s0, $zero              # a0 = 000013F4
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 000013F4
    jal     func_800311D0
    lw      a2, 0x140C(s5)             # 0000140C
    addiu   s0, s5, 0x13F8             # s0 = 000013F8
    or      a1, s0, $zero              # a1 = 000013F8
    jal     func_8002B43C
    or      a0, s4, $zero              # a0 = 00000000
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 000013F8
    jal     func_8002B450
    lw      a2, 0x1404(s5)             # 00001404
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800313A4:
# DynaPolyInfo_setActor
# DynaPolyInfo_setActor
# A0 = Global Context
# A1 = Global Context + 0x810
# A2 = Actor Index
# A3 = ?
# V0 = Mesh Collision Id
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    or      t1, $zero, $zero           # t1 = 00000000
    or      t0, $zero, $zero           # t0 = 00000000
    lw      v1, 0x002C($sp)
    addiu   a0, $zero, 0x0032          # a0 = 00000032
lbl_800313C8:
    lhu     v0, 0x138C(v1)             # 0000138C
    andi    t6, v0, 0x0001             # t6 = 00000000
    bne     t6, $zero, lbl_800313E4
    ori     t7, v0, 0x0001             # t7 = 00000001
    sh      t7, 0x138C(v1)             # 0000138C
    b       lbl_800313F0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
lbl_800313E4:
    addiu   t0, t0, 0x0001             # t0 = 00000001
    bne     t0, a0, lbl_800313C8
    addiu   v1, v1, 0x0002             # v1 = 00000002
lbl_800313F0:
    bne     t1, $zero, lbl_80031400
    lw      t8, 0x002C($sp)
    b       lbl_80031454
    addiu   v0, $zero, 0x0032          # v0 = 00000032
lbl_80031400:
    sll     t9, t0,  2
    subu    t9, t9, t0
    sll     t9, t9,  3
    addu    t9, t9, t0
    sll     t9, t9,  2
    addu    a0, t8, t9
    addiu   a0, a0, 0x0004             # a0 = 00000036
    lw      a1, 0x0030($sp)
    or      a2, a3, $zero              # a2 = 00000000
    sw      v1, 0x001C($sp)
    jal     func_8003109C
    sw      t0, 0x0024($sp)
    lw      a0, 0x002C($sp)
    lw      v1, 0x001C($sp)
    lw      v0, 0x0024($sp)
    lbu     t2, 0x0000(a0)             # 00000000
    ori     t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x0000(a0)             # 00000000
    lhu     t4, 0x138C(v1)             # 0000138C
    andi    t5, t4, 0xFFFD             # t5 = 00000000
    sh      t5, 0x138C(v1)             # 0000138C
lbl_80031454:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80031464:
# DynaPolyInfo_getActor
# A0 = Global Context
# A1 = Mesh Collision Id
# V0 = Actor Instance or null
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_80031264
    sw      a1, 0x001C($sp)
    lw      v1, 0x0018($sp)
    beq     v0, $zero, lbl_800314A8
    lw      a1, 0x001C($sp)
    sll     t6, a1,  1
    addu    t7, v1, t6
    lhu     v0, 0x13DC(t7)             # 000013DC
    andi    t8, v0, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_800314A8
    andi    t9, v0, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_800314B0
    sll     t0, a1,  2
lbl_800314A8:
    b       lbl_800314C8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800314B0:
    subu    t0, t0, a1
    sll     t0, t0,  3
    addu    t0, t0, a1
    sll     t0, t0,  2
    addu    t1, v1, t0
    lw      v0, 0x0054(t1)             # 00000054
lbl_800314C8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800314D8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_80031264
    sw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80031520
    lw      a1, 0x001C($sp)
    lw      t6, 0x0020($sp)
    sll     t7, t6,  1
    addu    v0, a1, t7
    lhu     t8, 0x138C(v0)             # 0000138C
    ori     t9, t8, 0x0004             # t9 = 00000004
    sh      t9, 0x138C(v0)             # 0000138C
    lbu     t0, 0x0000(a1)             # 00000000
    ori     t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x0000(a1)             # 00000000
lbl_80031520:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80031530:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_80031264
    sw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80031578
    lw      a1, 0x001C($sp)
    lw      t6, 0x0020($sp)
    sll     t7, t6,  1
    addu    v0, a1, t7
    lhu     t8, 0x138C(v0)             # 0000138C
    andi    t9, t8, 0xFFFB             # t9 = 00000000
    sh      t9, 0x138C(v0)             # 0000138C
    lbu     t0, 0x0000(a1)             # 00000000
    ori     t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x0000(a1)             # 00000000
lbl_80031578:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80031588:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_80031264
    sw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_800315D0
    lw      a1, 0x001C($sp)
    lw      t6, 0x0020($sp)
    sll     t7, t6,  1
    addu    v0, a1, t7
    lhu     t8, 0x138C(v0)             # 0000138C
    ori     t9, t8, 0x0008             # t9 = 00000008
    sh      t9, 0x138C(v0)             # 0000138C
    lbu     t0, 0x0000(a1)             # 00000000
    ori     t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x0000(a1)             # 00000000
lbl_800315D0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800315E0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_80031264
    sw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80031628
    lw      a1, 0x001C($sp)
    lw      t6, 0x0020($sp)
    sll     t7, t6,  1
    addu    v0, a1, t7
    lhu     t8, 0x138C(v0)             # 0000138C
    andi    t9, t8, 0xFFF7             # t9 = 00000000
    sh      t9, 0x138C(v0)             # 0000138C
    lbu     t0, 0x0000(a1)             # 00000000
    ori     t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x0000(a1)             # 00000000
lbl_80031628:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80031638:
# DynaPolyInfo_delReserve
# DynaPolyInfo_delReserve
# A0 = Global Context
# A1 = Global Context + 0x810
# A2 = Mesh Collision Id
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    jal     func_80031264
    lw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_800316B0
    lw      a0, 0x0018($sp)
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    jal     func_80031464
    lw      a1, 0x0020($sp)
    beq     v0, $zero, lbl_800316B0
    lw      a0, 0x001C($sp)
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sw      t6, 0x013C(v0)             # 0000013C
    lw      t7, 0x0020($sp)
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  3
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, a0, t8
    sw      $zero, 0x0004(t9)          # 00000004
    lw      t0, 0x0020($sp)
    sll     t1, t0,  1
    addu    v1, a0, t1
    lhu     t2, 0x138C(v1)             # 0000138C
    ori     t3, t2, 0x0002             # t3 = 00000002
    sh      t3, 0x138C(v1)             # 0000138C
lbl_800316B0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800316C0:
    sw      a0, 0x0000($sp)
    lbu     t6, 0x0000(a1)             # 00000000
    ori     t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0000(a1)             # 00000000
    jr      $ra
    nop


func_800316D8:
# Update? Dynamic Collision Mesh
# A0 = Global Context
# A1 = Global Context + 0x810
# A2 = Mesh Collision Id
# A3 = s32* ?
# SP+0x10 = s32* ?
    addiu   $sp, $sp, 0xFE98           # $sp -= 0x168
    sw      s5, 0x004C($sp)
    sw      s0, 0x0038($sp)
    sw      a3, 0x0174($sp)
    addiu   a3, $sp, 0x0108            # a3 = FFFFFFA0
    or      s0, a2, $zero              # s0 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s8, 0x0058($sp)
    sw      s7, 0x0054($sp)
    sw      s6, 0x0050($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    sdc1    $f20, 0x0030($sp)
    sw      a0, 0x0168($sp)
    lw      t7, 0x0178($sp)
    sll     t6, s0,  2
    subu    t6, t6, s0
    sll     t6, t6,  3
    lw      t8, 0x0000(t7)             # 00000000
    addu    t6, t6, s0
    sll     t6, t6,  2
    addu    s4, s5, t6
    sh      t8, 0x000C(s4)             # 0000000C
    lw      t9, 0x0174($sp)
    lw      v0, 0x0004(s4)             # 00000004
    lw      s8, 0x0008(s4)             # 00000008
    lw      t1, 0x0000(t9)             # 00000000
    addiu   a0, s4, 0x0038             # a0 = 00000038
    addiu   a1, v0, 0x0050             # a1 = 00000050
    sh      t1, 0x0014(s4)             # 00000014
    lw      t3, 0x0024(v0)             # 00000024
    addiu   a2, v0, 0x00B4             # a2 = 000000B4
    sw      t3, 0x0000(a3)             # FFFFFFA0
    lw      t2, 0x0028(v0)             # 00000028
    sw      t2, 0x0004(a3)             # FFFFFFA4
    lw      t3, 0x002C(v0)             # 0000002C
    sw      t3, 0x0008(a3)             # FFFFFFA8
    lwc1    $f6, 0x0054(v0)            # 00000054
    lwc1    $f4, 0x00BC(v0)            # 000000BC
    lwc1    $f10, 0x010C($sp)
    mul.s   $f8, $f4, $f6
    add.s   $f16, $f10, $f8
    jal     func_80030EAC
    swc1    $f16, 0x010C($sp)
    sll     t4, s0,  1
    addu    s7, s5, t4
    lhu     t5, 0x138C(s7)             # 0000138C
    andi    t6, t5, 0x0004             # t6 = 00000000
    bnel    t6, $zero, lbl_80031FF4
    lw      $ra, 0x005C($sp)
    lbu     t7, 0x0000(s5)             # 00000000
    andi    t8, t7, 0x0001             # t8 = 00000000
    bnel    t8, $zero, lbl_800318D0
    lh      t9, 0x0044(s4)             # 00000044
    jal     func_80031154
    addiu   a0, s4, 0x0004             # a0 = 00000004
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_800318CC
    lw      t9, 0x0178($sp)
    lw      v0, 0x0000(t9)             # 00000000
    lhu     t1, 0x0014(s8)             # 00000014
    addiu   s6, $sp, 0x009C            # s6 = FFFFFF34
    or      s0, v0, $zero              # s0 = 00000000
    addu    a0, v0, t1
    slt     $at, v0, a0
    beq     $at, $zero, lbl_800318AC
    sll     s1, v0,  4
    addiu   s3, $sp, 0x009E            # s3 = FFFFFF36
    addiu   s2, $sp, 0x00A0            # s2 = FFFFFF38
lbl_800317F8:
    lw      t2, 0x13F0(s5)             # 000013F0
    addiu   a1, s4, 0x0012             # a1 = 00000012
    or      a2, s2, $zero              # a2 = FFFFFF38
    addu    v0, t2, s1
    lh      v1, 0x000A(v0)             # 0000000A
    slti    $at, v1, 0x4000
    bnel    $at, $zero, lbl_8003183C
    slti    $at, v1, 0x999B
    sh      s0, 0x00A0($sp)
    jal     func_8002B3E4
    addiu   a0, s5, 0x13F8             # a0 = 000013F8
    lw      t3, 0x0178($sp)
    lhu     t5, 0x0014(s8)             # 00000014
    lw      t4, 0x0000(t3)             # 00000000
    b       lbl_8003189C
    addu    a0, t4, t5
    slti    $at, v1, 0x999B
lbl_8003183C:
    beq     $at, $zero, lbl_8003187C
    addiu   a1, s4, 0x0010             # a1 = 00000010
    lhu     t6, 0x138C(s7)             # 0000138C
    addiu   a1, s4, 0x000E             # a1 = 0000000E
    or      a2, s3, $zero              # a2 = FFFFFF36
    andi    t7, t6, 0x0008             # t7 = 00000000
    bnel    t7, $zero, lbl_800318A0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sh      s0, 0x009E($sp)
    jal     func_8002B3E4
    addiu   a0, s5, 0x13F8             # a0 = 000013F8
    lw      t8, 0x0178($sp)
    lhu     t1, 0x0014(s8)             # 00000014
    lw      t9, 0x0000(t8)             # 00000000
    b       lbl_8003189C
    addu    a0, t9, t1
lbl_8003187C:
    sh      s0, 0x009C($sp)
    addiu   a0, s5, 0x13F8             # a0 = 000013F8
    jal     func_8002B3E4
    or      a2, s6, $zero              # a2 = FFFFFF34
    lw      t2, 0x0178($sp)
    lhu     t4, 0x0014(s8)             # 00000014
    lw      t3, 0x0000(t2)             # 00000000
    addu    a0, t3, t4
lbl_8003189C:
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_800318A0:
    slt     $at, s0, a0
    bne     $at, $zero, lbl_800317F8
    addiu   s1, s1, 0x0010             # s1 = 00000010
lbl_800318AC:
    lw      t5, 0x0178($sp)
    lw      v0, 0x0174($sp)
    sw      a0, 0x0000(t5)             # 00000000
    lhu     t7, 0x000C(s8)             # 0000000C
    lw      t6, 0x0000(v0)             # 00000000
    addu    t8, t6, t7
    b       lbl_80031FF0
    sw      t8, 0x0000(v0)             # 00000000
lbl_800318CC:
    lh      t9, 0x0044(s4)             # 00000044
lbl_800318D0:
    lw      a1, 0x0038(s4)             # 00000038
    lw      a2, 0x003C(s4)             # 0000003C
    lw      a3, 0x0040(s4)             # 00000040
    sw      t9, 0x0010($sp)
    lh      t1, 0x0046(s4)             # 00000046
    addiu   s6, $sp, 0x0128            # s6 = FFFFFFC0
    or      a0, s6, $zero              # a0 = FFFFFFC0
    sw      t1, 0x0014($sp)
    lh      t2, 0x0048(s4)             # 00000048
    sw      t2, 0x0018($sp)
    lwc1    $f18, 0x004C(s4)           # 0000004C
    swc1    $f18, 0x001C($sp)
    lwc1    $f4, 0x0050(s4)            # 00000050
    swc1    $f4, 0x0020($sp)
    lwc1    $f6, 0x0054(s4)            # 00000054
    jal     func_8008F914
    swc1    $f6, 0x0024($sp)
    lhu     t3, 0x000C(s8)             # 0000000C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    t3, $f8                    # $f8 = 0.00
    mtc1    $at, $f10                  # $f10 = 1.00
    bgez    t3, lbl_80031940
    cvt.s.w $f16, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18
lbl_80031940:
    swc1    $f0, 0x00F8($sp)
    swc1    $f0, 0x00F4($sp)
    swc1    $f0, 0x00F0($sp)
    lhu     t4, 0x000C(s8)             # 0000000C
    div.s   $f20, $f10, $f16
    or      s3, $zero, $zero           # s3 = 00000000
    blez    t4, lbl_80031A54
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s7, $zero, 0x0006          # s7 = 00000006
    addiu   s2, $sp, 0x0084            # s2 = FFFFFF1C
    addiu   s1, $sp, 0x0090            # s1 = FFFFFF28
    lw      t5, 0x0010(s8)             # 00000010
lbl_80031970:
    or      a0, s1, $zero              # a0 = FFFFFF28
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addu    a1, t5, s0
    or      a0, s6, $zero              # a0 = FFFFFFC0
    or      a1, s1, $zero              # a1 = FFFFFF28
    jal     func_8008ED08
    or      a2, s2, $zero              # a2 = FFFFFF1C
    lw      t6, 0x0174($sp)
    lw      t1, 0x13F4(s5)             # 000013F4
    or      a1, s2, $zero              # a1 = FFFFFF1C
    lw      t7, 0x0000(t6)             # 00000000
    addu    t8, t7, s3
    multu   t8, s7
    mflo    t9
    addu    a0, t9, t1
    jal     func_8002B520
    nop
    bne     s3, $zero, lbl_800319D0
    lwc1    $f8, 0x0088($sp)
    lwc1    $f4, 0x0088($sp)
    swc1    $f4, 0x0064(s4)            # 00000064
    lwc1    $f6, 0x0064(s4)            # 00000064
    b       lbl_80031A08
    swc1    $f6, 0x0060(s4)            # 00000060
lbl_800319D0:
    lwc1    $f18, 0x0060(s4)           # 00000060
    lwc1    $f16, 0x0088($sp)
    c.lt.s  $f8, $f18
    nop
    bc1fl   lbl_800319F4
    lwc1    $f10, 0x0064(s4)           # 00000064
    b       lbl_80031A08
    swc1    $f8, 0x0060(s4)            # 00000060
    lwc1    $f10, 0x0064(s4)           # 00000064
lbl_800319F4:
    c.lt.s  $f10, $f16
    nop
    bc1fl   lbl_80031A0C
    lwc1    $f4, 0x00F0($sp)
    swc1    $f16, 0x0064(s4)           # 00000064
lbl_80031A08:
    lwc1    $f4, 0x00F0($sp)
lbl_80031A0C:
    lwc1    $f6, 0x0084($sp)
    lwc1    $f8, 0x00F4($sp)
    lwc1    $f10, 0x0088($sp)
    add.s   $f18, $f4, $f6
    lwc1    $f6, 0x008C($sp)
    lwc1    $f4, 0x00F8($sp)
    add.s   $f16, $f8, $f10
    swc1    $f18, 0x00F0($sp)
    add.s   $f18, $f4, $f6
    swc1    $f16, 0x00F4($sp)
    swc1    $f18, 0x00F8($sp)
    lhu     t2, 0x000C(s8)             # 0000000C
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   s0, s0, 0x0006             # s0 = 00000006
    slt     $at, s3, t2
    bnel    $at, $zero, lbl_80031970
    lw      t5, 0x0010(s8)             # 00000010
    or      s3, $zero, $zero           # s3 = 00000000
lbl_80031A54:
    lwc1    $f8, 0x00F0($sp)
    lwc1    $f16, 0x00F4($sp)
    lwc1    $f6, 0x00F8($sp)
    mul.s   $f10, $f8, $f20
    addiu   s6, s4, 0x0058             # s6 = 00000058
    lui     $at, 0xC2C8                # $at = C2C80000
    mul.s   $f4, $f16, $f20
    mtc1    $at, $f2                   # $f2 = -100.00
    mul.s   $f18, $f6, $f20
    swc1    $f10, 0x00F0($sp)
    swc1    $f4, 0x00F4($sp)
    trunc.w.s $f8, $f10
    swc1    $f18, 0x00F8($sp)
    mfc1    t4, $f8
    nop
    sh      t4, 0x0000(s6)             # 00000058
    lwc1    $f16, 0x00F4($sp)
    trunc.w.s $f4, $f16
    mfc1    t6, $f4
    nop
    sh      t6, 0x0002(s6)             # 0000005A
    lwc1    $f6, 0x00F8($sp)
    trunc.w.s $f18, $f6
    mfc1    t8, $f18
    nop
    sh      t8, 0x0004(s6)             # 0000005C
    lhu     t9, 0x000C(s8)             # 0000000C
    blez    t9, lbl_80031BA8
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, $sp, 0x00F0            # s2 = FFFFFF88
    addiu   s1, $sp, 0x00DC            # s1 = FFFFFF74
    lw      v0, 0x0174($sp)
lbl_80031AD4:
    lw      t1, 0x13F4(s5)             # 000013F4
    or      a0, s1, $zero              # a0 = FFFFFF74
    lw      t2, 0x0000(v0)             # 00000000
    or      a1, s2, $zero              # a1 = FFFFFF88
    sll     t3, t2,  2
    subu    t3, t3, t2
    sll     t3, t3,  1
    addu    t4, t1, t3
    addu    t5, t4, s0
    lh      t6, 0x0000(t5)             # 00000000
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    swc1    $f8, 0x00DC($sp)
    lw      t8, 0x0000(v0)             # 00000000
    lw      t7, 0x13F4(s5)             # 000013F4
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  1
    addu    t2, t7, t9
    addu    t1, t2, s0
    lh      t3, 0x0002(t1)             # 00000002
    mtc1    t3, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f4, $f16
    swc1    $f4, 0x00E0($sp)
    lw      t5, 0x0000(v0)             # 00000000
    lw      t4, 0x13F4(s5)             # 000013F4
    sll     t6, t5,  2
    subu    t6, t6, t5
    sll     t6, t6,  1
    addu    t8, t4, t6
    addu    t7, t8, s0
    lh      t9, 0x0004(t7)             # 00000004
    swc1    $f2, 0x00EC($sp)
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f18, $f6
    jal     func_800A5538
    swc1    $f18, 0x00E4($sp)
    lwc1    $f2, 0x00EC($sp)
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80031B90
    lhu     t2, 0x000C(s8)             # 0000000C
    mov.s   $f2, $f0
    lhu     t2, 0x000C(s8)             # 0000000C
lbl_80031B90:
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   s0, s0, 0x0006             # s0 = 00000006
    slt     $at, s3, t2
    bnel    $at, $zero, lbl_80031AD4
    lw      v0, 0x0174($sp)
    or      s3, $zero, $zero           # s3 = 00000000
lbl_80031BA8:
    sqrt.s  $f0, $f2
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6AC4($at)          # 80106AC4
    mul.s   $f8, $f0, $f10
    trunc.w.s $f16, $f8
    mfc1    t3, $f16
    nop
    sh      t3, 0x0006(s6)             # 0000005E
    lhu     v0, 0x0014(s8)             # 00000014
    blez    v0, lbl_80031FCC
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f20, 0x6AC8($at)          # 80106AC8
    addiu   s6, s5, 0x13F8             # s6 = 000013F8
    or      s7, $zero, $zero           # s7 = 00000000
    addiu   s2, $zero, 0x0006          # s2 = 00000006
    lw      t0, 0x0174($sp)
lbl_80031BE8:
    lw      t5, 0x0178($sp)
    lw      t9, 0x0018(s8)             # 00000018
    lw      t7, 0x13F0(s5)             # 000013F0
    lw      t4, 0x0000(t5)             # 00000000
    addu    t2, t9, s7
    lwl     t3, 0x0000(t2)             # 00000000
    lwr     t3, 0x0003(t2)             # 00000003
    addu    t6, t4, s3
    sll     t8, t6,  4
    addu    s0, t8, t7
    swl     t3, 0x0000(s0)             # 00000006
    swr     t3, 0x0003(s0)             # 00000009
    lwl     t1, 0x0004(t2)             # 00000004
    lwr     t1, 0x0007(t2)             # 00000007
    lhu     v0, 0x0002(s0)             # 00000008
    addiu   a0, $sp, 0x00D0            # a0 = FFFFFF68
    swl     t1, 0x0004(s0)             # 0000000A
    swr     t1, 0x0007(s0)             # 0000000D
    lwl     t3, 0x0008(t2)             # 00000008
    lwr     t3, 0x000B(t2)             # 0000000B
    andi    t5, v0, 0x1FFF             # t5 = 00000000
    andi    t8, v0, 0xE000             # t8 = 00000000
    swl     t3, 0x0008(s0)             # 0000000E
    swr     t3, 0x000B(s0)             # 00000011
    lwl     t1, 0x000C(t2)             # 0000000C
    lwr     t1, 0x000F(t2)             # 0000000F
    lhu     v1, 0x0004(s0)             # 0000000A
    addiu   a1, $sp, 0x00C4            # a1 = FFFFFF5C
    swl     t1, 0x000C(s0)             # 00000012
    swr     t1, 0x000F(s0)             # 00000015
    lw      t4, 0x0000(t0)             # 00000000
    andi    t9, v1, 0x1FFF             # t9 = 00000000
    andi    t3, v1, 0xE000             # t3 = 00000000
    addu    t6, t5, t4
    or      t7, t8, t6                 # t7 = 00000000
    sh      t7, 0x0002(s0)             # 00000008
    lw      t2, 0x0000(t0)             # 00000000
    lhu     t8, 0x0006(s0)             # 0000000C
    addiu   a2, $sp, 0x00B8            # a2 = FFFFFF50
    addu    t1, t9, t2
    andi    t9, t7, 0x1FFF             # t9 = 00000000
    multu   t9, s2
    or      t5, t3, t1                 # t5 = 00000000
    sh      t5, 0x0004(s0)             # 0000000A
    lw      t4, 0x0000(t0)             # 00000000
    addiu   a3, $sp, 0x00AC            # a3 = FFFFFF44
    addu    t6, t4, t8
    sh      t6, 0x0006(s0)             # 0000000C
    lw      s1, 0x13F4(s5)             # 000013F4
    mflo    t2
    addu    t3, s1, t2
    lh      t1, 0x0000(t3)             # 00000000
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x00D0($sp)
    lhu     t5, 0x0002(s0)             # 00000008
    andi    t4, t5, 0x1FFF             # t4 = 00000000
    multu   t4, s2
    mflo    t8
    addu    t6, s1, t8
    lh      t7, 0x0002(t6)             # 00000002
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f10, $f18
    swc1    $f10, 0x00D4($sp)
    lhu     t9, 0x0002(s0)             # 00000008
    andi    t2, t9, 0x1FFF             # t2 = 00000000
    multu   t2, s2
    mflo    t3
    addu    t1, s1, t3
    lh      t5, 0x0004(t1)             # 00000004
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    swc1    $f16, 0x00D8($sp)
    lhu     t4, 0x0004(s0)             # 0000000A
    andi    t8, t4, 0x1FFF             # t8 = 00000000
    multu   t8, s2
    mflo    t6
    addu    t7, s1, t6
    lh      t9, 0x0000(t7)             # 00000000
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x00C4($sp)
    lhu     t2, 0x0004(s0)             # 0000000A
    andi    t3, t2, 0x1FFF             # t3 = 00000000
    multu   t3, s2
    mflo    t1
    addu    t5, s1, t1
    lh      t4, 0x0002(t5)             # 00000002
    mtc1    t4, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f10, $f18
    swc1    $f10, 0x00C8($sp)
    lhu     t8, 0x0004(s0)             # 0000000A
    andi    t6, t8, 0x1FFF             # t6 = 00000000
    multu   t6, s2
    mflo    t7
    addu    t9, s1, t7
    lh      t2, 0x0004(t9)             # 00000004
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    swc1    $f16, 0x00CC($sp)
    lhu     t3, 0x0006(s0)             # 0000000C
    multu   t3, s2
    mflo    t1
    addu    t5, s1, t1
    lh      t4, 0x0000(t5)             # 00000000
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x00B8($sp)
    lhu     t8, 0x0006(s0)             # 0000000C
    multu   t8, s2
    mflo    t6
    addu    t7, s1, t6
    lh      t9, 0x0002(t7)             # 00000002
    mtc1    t9, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f10, $f18
    swc1    $f10, 0x00BC($sp)
    lhu     t2, 0x0006(s0)             # 0000000C
    multu   t2, s2
    mflo    t3
    addu    t1, s1, t3
    lh      t5, 0x0004(t1)             # 00000004
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    jal     func_800A572C
    swc1    $f16, 0x00C0($sp)
    jal     func_800A5510
    addiu   a0, $sp, 0x00AC            # a0 = FFFFFF44
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6ACC($at)           # 80106ACC
    mov.s   $f2, $f0
    abs.s   $f0, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f4
    nop
    bc1tl   lbl_80031EA8
    lhu     t3, 0x0002(s0)             # 00000008
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f18, 0x00AC($sp)
    lwc1    $f8, 0x00B0($sp)
    div.s   $f0, $f6, $f2
    lwc1    $f4, 0x00B4($sp)
    mul.s   $f10, $f18, $f0
    nop
    mul.s   $f16, $f8, $f0
    nop
    mul.s   $f6, $f4, $f0
    swc1    $f10, 0x00AC($sp)
    mul.s   $f18, $f10, $f20
    swc1    $f16, 0x00B0($sp)
    swc1    $f6, 0x00B4($sp)
    trunc.w.s $f8, $f18
    mfc1    t8, $f8
    nop
    sh      t8, 0x0008(s0)             # 0000000E
    lwc1    $f16, 0x00B0($sp)
    mul.s   $f4, $f16, $f20
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x000A(s0)             # 00000010
    lwc1    $f10, 0x00B4($sp)
    mul.s   $f18, $f10, $f20
    trunc.w.s $f8, $f18
    mfc1    t2, $f8
    nop
    sh      t2, 0x000C(s0)             # 00000012
    lhu     t3, 0x0002(s0)             # 00000008
lbl_80031EA8:
    lwc1    $f16, 0x00AC($sp)
    lwc1    $f18, 0x00B0($sp)
    andi    t1, t3, 0x1FFF             # t1 = 00000000
    multu   t1, s2
    lui     $at, 0x3F00                # $at = 3F000000
    or      a0, s6, $zero              # a0 = 000013F8
    mflo    t5
    addu    v0, s1, t5
    lh      t4, 0x0000(v0)             # 00000000
    lh      t8, 0x0002(v0)             # 00000002
    lh      t6, 0x0004(v0)             # 00000004
    mtc1    t4, $f4                    # $f4 = 0.00
    mtc1    t8, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f4, $f8
    mul.s   $f10, $f16, $f6
    mtc1    t6, $f8                    # $f8 = 0.00
    mul.s   $f16, $f18, $f4
    lwc1    $f4, 0x00B4($sp)
    cvt.s.w $f18, $f8
    add.s   $f6, $f10, $f16
    mul.s   $f10, $f18, $f4
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f16, $f10, $f6
    neg.s   $f8, $f16
    trunc.w.s $f18, $f8
    mfc1    t9, $f18
    nop
    sh      t9, 0x000E(s0)             # 00000014
    lwc1    $f10, 0x00B0($sp)
    lw      t2, 0x0178($sp)
    lwc1    $f6, 0x00B0($sp)
    c.lt.s  $f4, $f10
    nop
    bc1f    lbl_80031F5C
    nop
    lw      t3, 0x0000(t2)             # 00000000
    addiu   a1, s4, 0x0012             # a1 = 00000012
    addiu   a2, $sp, 0x0076            # a2 = FFFFFF0E
    addu    t1, t3, s3
    jal     func_8002B3E4
    sh      t1, 0x0076($sp)
    b       lbl_80031FB8
    lhu     v0, 0x0014(s8)             # 00000014
lbl_80031F5C:
    lwc1    $f16, 0x6AD0($at)          # 00006AD0
    lw      t5, 0x0178($sp)
    addiu   a1, s4, 0x000E             # a1 = 0000000E
    c.lt.s  $f6, $f16
    lw      t6, 0x0178($sp)
    or      a0, s6, $zero              # a0 = 000013F8
    bc1fl   lbl_80031FA0
    lw      t7, 0x0000(t6)             # 00000000
    lw      t4, 0x0000(t5)             # 00000000
    or      a0, s6, $zero              # a0 = 000013F8
    addiu   a2, $sp, 0x0074            # a2 = FFFFFF0C
    addu    t8, t4, s3
    jal     func_8002B3E4
    sh      t8, 0x0074($sp)
    b       lbl_80031FB8
    lhu     v0, 0x0014(s8)             # 00000014
    lw      t7, 0x0000(t6)             # 00000000
lbl_80031FA0:
    addiu   a1, s4, 0x0010             # a1 = 00000010
    addiu   a2, $sp, 0x0072            # a2 = FFFFFF0A
    addu    t9, t7, s3
    jal     func_8002B3E4
    sh      t9, 0x0072($sp)
    lhu     v0, 0x0014(s8)             # 00000014
lbl_80031FB8:
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   s7, s7, 0x0010             # s7 = 00000010
    slt     $at, s3, v0
    bnel    $at, $zero, lbl_80031BE8
    lw      t0, 0x0174($sp)
lbl_80031FCC:
    lw      v1, 0x0178($sp)
    lw      t2, 0x0000(v1)             # 00000000
    addu    t3, t2, v0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t1, 0x0174($sp)
    lhu     t4, 0x000C(s8)             # 0000000C
    lw      t5, 0x0000(t1)             # 00000000
    addu    t8, t5, t4
    sw      t8, 0x0000(t1)             # 00000000
lbl_80031FF0:
    lw      $ra, 0x005C($sp)
lbl_80031FF4:
    ldc1    $f20, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    lw      s5, 0x004C($sp)
    lw      s6, 0x0050($sp)
    lw      s7, 0x0054($sp)
    lw      s8, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0168           # $sp += 0x168


func_80032024:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    or      s3, a2, $zero              # s3 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    addiu   s2, $zero, 0x0032          # s2 = 00000032
lbl_80032054:
    lhu     t6, 0x138C(s1)             # 0000138C
    addiu   a0, s4, 0x07C0             # a0 = 000007C0
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80032094
    addiu   s0, s0, 0x0001             # s0 = 00000001
    jal     func_80031464
    or      a1, s0, $zero              # a1 = 00000001
    beql    v0, $zero, lbl_80032094
    addiu   s0, s0, 0x0001             # s0 = 00000002
    bnel    v0, s3, lbl_80032094
    addiu   s0, s0, 0x0001             # s0 = 00000003
    jal     func_80035284
    or      a0, s3, $zero              # a0 = 00000000
    b       lbl_800320A0
    lw      $ra, 0x002C($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000004
lbl_80032094:
    bne     s0, s2, lbl_80032054
    addiu   s1, s1, 0x0002             # s1 = 00000002
    lw      $ra, 0x002C($sp)
lbl_800320A0:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800320BC:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    or      s3, a1, $zero              # s3 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    jal     func_8002B4A0
    addiu   a0, s3, 0x13F8             # a0 = 000013F8
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s2, s3, 0x000C             # s2 = 0000000C
lbl_800320F8:
    jal     func_80030FD0
    or      a0, s2, $zero              # a0 = 0000000C
    addiu   s1, s1, 0x0064             # s1 = 00000064
    slti    $at, s1, 0x1388
    bne     $at, $zero, lbl_800320F8
    addiu   s2, s2, 0x0064             # s2 = 00000070
    or      s0, $zero, $zero           # s0 = 00000000
    or      s2, s3, $zero              # s2 = 00000000
    or      s1, s3, $zero              # s1 = 00000000
    addiu   s5, $zero, 0xFFFF          # s5 = FFFFFFFF
lbl_80032120:
    lhu     t6, 0x138C(s1)             # 0000138C
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, s2, 0x0004             # a1 = 00000004
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80032150
    lw      v0, 0x0004(s2)             # 00000004
    jal     func_8003103C
    sh      $zero, 0x138C(s1)          # 0000138C
    lbu     t8, 0x0000(s3)             # 00000000
    ori     t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x0000(s3)             # 00000000
    lw      v0, 0x0004(s2)             # 00000004
lbl_80032150:
    beql    v0, $zero, lbl_80032198
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lw      t0, 0x0130(v0)             # 00000130
    addiu   a0, s4, 0x07C0             # a0 = 000007C0
    bnel    t0, $zero, lbl_80032198
    addiu   s0, s0, 0x0001             # s0 = 00000002
    jal     func_80031464
    or      a1, s0, $zero              # a1 = 00000002
    beq     v0, $zero, lbl_80032200
    or      a0, s4, $zero              # a0 = 00000000
    sw      s5, 0x013C(v0)             # 0000013C
    sh      $zero, 0x138C(s1)          # 0000138C
    jal     func_8003103C
    addiu   a1, s2, 0x0004             # a1 = 00000004
    lbu     t1, 0x0000(s3)             # 00000000
    ori     t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x0000(s3)             # 00000000
    addiu   s0, s0, 0x0001             # s0 = 00000003
lbl_80032198:
    slti    $at, s0, 0x0032
    addiu   s2, s2, 0x0064             # s2 = 00000064
    bne     $at, $zero, lbl_80032120
    addiu   s1, s1, 0x0002             # s1 = 00000002
    sw      $zero, 0x0058($sp)
    sw      $zero, 0x0054($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    or      s1, s3, $zero              # s1 = 00000000
    addiu   s6, $zero, 0x0032          # s6 = 00000032
    addiu   s5, $sp, 0x0054            # s5 = FFFFFFF4
    addiu   s2, $sp, 0x0058            # s2 = FFFFFFF8
lbl_800321C4:
    lhu     t3, 0x138C(s1)             # 0000138C
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    andi    t4, t3, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_800321E8
    or      a2, s0, $zero              # a2 = 00000000
    or      a3, s2, $zero              # a3 = FFFFFFF8
    jal     func_800316D8
    sw      s5, 0x0010($sp)
lbl_800321E8:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s6, lbl_800321C4
    addiu   s1, s1, 0x0002             # s1 = 00000002
    lbu     t5, 0x0000(s3)             # 00000000
    andi    t6, t5, 0xFFFE             # t6 = 00000000
    sb      t6, 0x0000(s3)             # 00000000
lbl_80032200:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_80032228:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    or      s1, s2, $zero              # s1 = 00000000
    addiu   s5, $zero, 0x0032          # s5 = 00000032
    addiu   s4, $zero, 0x0064          # s4 = 00000064
lbl_80032260:
    lhu     t6, 0x138C(s1)             # 0000138C
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_8003228C
    addiu   s0, s0, 0x0001             # s0 = 00000001
    multu   s0, s4
    or      a0, s3, $zero              # a0 = 00000000
    mflo    t8
    addu    a1, s2, t8
    jal     func_80031218
    addiu   a1, a1, 0x0004             # a1 = 00000004
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_8003228C:
    bne     s0, s5, lbl_80032260
    addiu   s1, s1, 0x0002             # s1 = 00000002
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800322B8:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s7, 0x0050($sp)
    sw      s3, 0x0040($sp)
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    ori     s3, $zero, 0xFFFF          # s3 = 0000FFFF
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s6, 0x004C($sp)
    sw      s5, 0x0048($sp)
    sw      s4, 0x0044($sp)
    sw      s2, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lw      t6, 0x002C(s1)             # 0000002C
    lwc1    $f20, 0x0010(s1)           # 00000010
    lui     $at, 0x8010                # $at = 80100000
    lhu     v0, 0x0000(t6)             # 00000000
    addiu   s6, $zero, 0x0001          # s6 = 00000001
    addiu   s5, $sp, 0x0070            # s5 = FFFFFFF0
    bne     s3, v0, lbl_80032320
    sll     t7, v0,  2
    b       lbl_80032468
    mov.s   $f0, $f20
lbl_80032320:
    lw      t0, 0x0028(s1)             # 00000028
    lhu     a1, 0x0008(s1)             # 00000008
    mtc1    $zero, $f24                # $f24 = 0.00
    lw      a0, 0x13F8(t0)             # 000013F8
    andi    a1, a1, 0x0007             # a1 = 00000000
    sll     a1, a1, 13
    lwc1    $f22, 0x6AD4($at)          # 80106AD4
    lw      s4, 0x13F0(t0)             # 000013F0
    addu    s0, a0, t7
lbl_80032344:
    lh      v0, 0x0000(s0)             # 00000000
    andi    t2, s7, 0x0006             # t2 = 00000000
    sll     s2, v0,  4
    addu    v1, s4, s2
    lhu     t8, 0x0002(v1)             # 00000002
    and     t9, t8, a1
    beq     t9, $zero, lbl_80032378
    nop
    lhu     v0, 0x0002(s0)             # 00000002
    beq     s3, v0, lbl_80032464
    sll     t1, v0,  2
    b       lbl_80032344
    addu    s0, a0, t1
lbl_80032378:
    beql    t2, $zero, lbl_800323CC
    lw      v0, 0x0014(s1)             # 00000014
    lw      t3, 0x0020(s1)             # 00000020
    andi    t4, t3, 0x0010             # t4 = 00000000
    beql    t4, $zero, lbl_800323CC
    lw      v0, 0x0014(s1)             # 00000014
    lh      t5, 0x000A(v1)             # 0000000A
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f22
    c.lt.s  $f8, $f24
    nop
    bc1fl   lbl_800323CC
    lw      v0, 0x0014(s1)             # 00000014
    lhu     v0, 0x0002(s0)             # 00000002
    beq     s3, v0, lbl_80032464
    sll     t6, v0,  2
    b       lbl_80032344
    addu    s0, a0, t6
    lw      v0, 0x0014(s1)             # 00000014
lbl_800323CC:
    lw      a1, 0x13F4(t0)             # 000013F4
    addu    a0, s2, s4
    lw      a2, 0x0000(v0)             # 00000000
    lw      a3, 0x0008(v0)             # 00000008
    sw      s5, 0x0010($sp)
    lwc1    $f10, 0x0024(s1)           # 00000024
    jal     func_8002B944
    swc1    $f10, 0x0014($sp)
    bnel    v0, s6, lbl_8003243C
    lhu     v0, 0x0002(s0)             # 00000002
    lw      t7, 0x0014(s1)             # 00000014
    lwc1    $f16, 0x0070($sp)
    lwc1    $f18, 0x0004(t7)           # 00000004
    c.lt.s  $f16, $f18
    nop
    bc1fl   lbl_8003243C
    lhu     v0, 0x0002(s0)             # 00000002
    c.lt.s  $f20, $f16
    nop
    bc1fl   lbl_8003243C
    lhu     v0, 0x0002(s0)             # 00000002
    lw      t8, 0x0028(s1)             # 00000028
    lw      t2, 0x000C(s1)             # 0000000C
    mov.s   $f20, $f16
    lw      t9, 0x13F0(t8)             # 000013F0
    addu    t1, t9, s2
    sw      t1, 0x0000(t2)             # 00000000
    lhu     v0, 0x0002(s0)             # 00000002
lbl_8003243C:
    beql    s3, v0, lbl_80032468
    mov.s   $f0, $f20
    lw      t0, 0x0028(s1)             # 00000028
    lhu     a1, 0x0008(s1)             # 00000008
    sll     t3, v0,  2
    lw      a0, 0x13F8(t0)             # 000013F8
    andi    a1, a1, 0x0007             # a1 = 00000000
    sll     a1, a1, 13
    b       lbl_80032344
    addu    s0, a0, t3
lbl_80032464:
    mov.s   $f0, $f20
lbl_80032468:
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    lw      s4, 0x0044($sp)
    lw      s5, 0x0048($sp)
    lw      s6, 0x004C($sp)
    lw      s7, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_800324A0:
    addiu   $sp, $sp, 0xFEE0           # $sp -= 0x120
    sw      s0, 0x003C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s3, 0x0048($sp)
    sw      s2, 0x0044($sp)
    sw      s1, 0x0040($sp)
    sdc1    $f20, 0x0030($sp)
    lw      t7, 0x0018(s0)             # 00000018
    lui     $at, 0xC6FA                # $at = C6FA0000
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    sw      t6, 0x0000(t7)             # 00000000
    mtc1    $at, $f20                  # $f20 = -32000.00
    lw      a2, 0x0004(s0)             # 00000004
    or      s2, $zero, $zero           # s2 = 00000000
    or      s3, $zero, $zero           # s3 = 00000000
lbl_800324E0:
    addu    t8, a2, s3
    lhu     t9, 0x13DC(t8)             # 000013DC
    sll     s1, s2,  2
    subu    s1, s1, s2
    andi    t4, t9, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_80032668
    sll     s1, s1,  3
    addu    s1, s1, s2
    sll     s1, s1,  2
    addu    v1, a2, s1
    lw      t6, 0x0054(v1)             # 00000054
    lw      t5, 0x001C(s0)             # 0000001C
    beql    t5, t6, lbl_8003266C
    addiu   s2, s2, 0x0001             # s2 = 00000001
    lw      v0, 0x0014(s0)             # 00000014
    lwc1    $f6, 0x00B0(v1)            # 000000B0
    addiu   a0, v1, 0x00A8             # a0 = 000000A8
    lwc1    $f4, 0x0004(v0)            # 00000004
    c.lt.s  $f4, $f6
    nop
    bc1tl   lbl_8003266C
    addiu   s2, s2, 0x0001             # s2 = 00000002
    lw      a1, 0x0000(v0)             # 00000000
    jal     func_800AA320
    lw      a2, 0x0008(v0)             # 00000008
    bnel    v0, $zero, lbl_80032558
    lw      a2, 0x0004(s0)             # 00000004
    b       lbl_80032668
    lw      a2, 0x0004(s0)             # 00000004
    lw      a2, 0x0004(s0)             # 00000004
lbl_80032558:
    lw      t8, 0x0020(s0)             # 00000020
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, a2, 0x0050             # t7 = 00000050
    andi    t9, t8, 0x0004             # t9 = 00000000
    beq     t9, $zero, lbl_800325A8
    sw      t7, 0x0028(s0)             # 00000028
    addu    t4, a2, s1
    addiu   t5, t4, 0x0062             # t5 = 00000062
    sw      t5, 0x002C(s0)             # 0000002C
    jal     func_800322B8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f8, 0x0010(s0)            # 00000010
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_800325AC
    lw      v0, 0x0020(s0)             # 00000020
    lw      t6, 0x0018(s0)             # 00000018
    swc1    $f0, 0x0010(s0)            # 00000010
    mov.s   $f20, $f0
    sw      s2, 0x0000(t6)             # 00000000
lbl_800325A8:
    lw      v0, 0x0020(s0)             # 00000020
lbl_800325AC:
    andi    t7, v0, 0x0002             # t7 = 00000000
    bnel    t7, $zero, lbl_800325D8
    lw      t5, 0x0004(s0)             # 00000004
    lw      t8, 0x000C(s0)             # 0000000C
    andi    t4, v0, 0x0008             # t4 = 00000000
    lw      t9, 0x0000(t8)             # 00000000
    bnel    t9, $zero, lbl_80032618
    lw      t9, 0x0020(s0)             # 00000020
    beql    t4, $zero, lbl_80032618
    lw      t9, 0x0020(s0)             # 00000020
    lw      t5, 0x0004(s0)             # 00000004
lbl_800325D8:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addu    t6, t5, s1
    addiu   t7, t6, 0x0060             # t7 = 00000060
    jal     func_800322B8
    sw      t7, 0x002C(s0)             # 0000002C
    lwc1    $f10, 0x0010(s0)           # 00000010
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_80032618
    lw      t9, 0x0020(s0)             # 00000020
    lw      t8, 0x0018(s0)             # 00000018
    swc1    $f0, 0x0010(s0)            # 00000010
    mov.s   $f20, $f0
    sw      s2, 0x0000(t8)             # 00000000
    lw      t9, 0x0020(s0)             # 00000020
lbl_80032618:
    andi    t4, t9, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_80032668
    lw      a2, 0x0004(s0)             # 00000004
    lw      t5, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    addu    t6, t5, s1
    addiu   t7, t6, 0x005E             # t7 = 0000005E
    jal     func_800322B8
    sw      t7, 0x002C(s0)             # 0000002C
    lwc1    $f16, 0x0010(s0)           # 00000010
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_80032668
    lw      a2, 0x0004(s0)             # 00000004
    lw      t8, 0x0018(s0)             # 00000018
    swc1    $f0, 0x0010(s0)            # 00000010
    mov.s   $f20, $f0
    sw      s2, 0x0000(t8)             # 00000000
    lw      a2, 0x0004(s0)             # 00000004
lbl_80032668:
    addiu   s2, s2, 0x0001             # s2 = 00000003
lbl_8003266C:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     s2, $at, lbl_800324E0
    addiu   s3, s3, 0x0002             # s3 = 00000002
    lw      t9, 0x0018(s0)             # 00000018
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80031464
    lw      a1, 0x0000(t9)             # 00000000
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f18                  # $f18 = -32000.00
    nop
    c.eq.s  $f20, $f18
    nop
    bc1tl   lbl_80032928
    mov.s   $f0, $f20
    beql    v0, $zero, lbl_80032928
    mov.s   $f0, $f20
    lw      v1, 0x0000(s0)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    beq     v1, $zero, lbl_80032924
    addu    a0, v1, $at
    lhu     v0, 0x0934(a0)             # 00000934
    sltu    v0, $zero, v0
    bne     v0, $zero, lbl_800326D4
    nop
    lhu     v0, 0x0936(a0)             # 00000936
    sltu    v0, $zero, v0
lbl_800326D4:
    bnel    v0, $zero, lbl_80032928
    mov.s   $f0, $f20
    lw      t4, 0x0018(s0)             # 00000018
    lw      t5, 0x0004(s0)             # 00000004
    lw      t3, 0x0000(t4)             # 00000000
    sll     t6, t3,  1
    addu    t7, t5, t6
    lhu     t8, 0x13DC(t7)             # 000013DC
    sll     t4, t3,  2
    subu    t4, t4, t3
    andi    t9, t8, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_80032924
    sll     t4, t4,  3
    lw      t0, 0x0028(s0)             # 00000028
    addu    t4, t4, t3
    sll     t4, t4,  2
    addu    v1, t0, t4
    lhu     t5, 0x000C(v1)             # 0000000C
    lw      t7, 0x13F0(t0)             # 000013F0
    addiu   v0, v1, 0x0038             # v0 = 00000038
    sll     t6, t5,  4
    lw      t8, 0x000C(s0)             # 0000000C
    lw      t4, 0x0008(v1)             # 00000008
    addu    t1, t6, t7
    lh      t7, 0x000C(v0)             # 00000044
    lw      t9, 0x0000(t8)             # 00000000
    lw      t5, 0x0018(t4)             # 00000018
    lw      a1, 0x0000(v0)             # 00000038
    lw      a2, 0x0004(v0)             # 0000003C
    lw      a3, 0x0008(v0)             # 00000040
    sw      t7, 0x0010($sp)
    lh      t8, 0x000E(v0)             # 00000046
    subu    t2, t9, t1
    sra     t2, t2,  4
    sw      t8, 0x0014($sp)
    lh      t9, 0x0010(v0)             # 00000048
    sll     t6, t2,  4
    addiu   a0, $sp, 0x008C            # a0 = FFFFFF6C
    sw      t9, 0x0018($sp)
    lwc1    $f4, 0x0014(v0)            # 0000004C
    addu    s3, t5, t6
    swc1    $f4, 0x001C($sp)
    lwc1    $f6, 0x0018(v0)            # 00000050
    swc1    $f6, 0x0020($sp)
    lwc1    $f8, 0x001C(v0)            # 00000054
    jal     func_8008F914
    swc1    $f8, 0x0024($sp)
    lw      t5, 0x0018(s0)             # 00000018
    lw      t4, 0x0028(s0)             # 00000028
    or      s2, s3, $zero              # s2 = 00000002
    lw      t6, 0x0000(t5)             # 00000000
    addiu   s3, $sp, 0x0074            # s3 = FFFFFF54
    addiu   s1, $sp, 0x00E0            # s1 = FFFFFFC0
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  3
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    t8, t4, t7
    lw      t9, 0x0008(t8)             # 00000008
    lw      v0, 0x0010(t9)             # 00000010
    sw      v0, 0x0084($sp)
lbl_800327CC:
    lw      v0, 0x0084($sp)
    lhu     t5, 0x0002(s2)             # 00000004
    or      a0, s3, $zero              # a0 = FFFFFF54
    andi    t6, t5, 0x1FFF             # t6 = 00000000
    sll     t4, t6,  2
    subu    t4, t4, t6
    sll     t4, t4,  1
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addu    a1, t4, v0
    addiu   a0, $sp, 0x008C            # a0 = FFFFFF6C
    or      a1, s3, $zero              # a1 = FFFFFF54
    jal     func_8008ED08
    or      a2, s1, $zero              # a2 = FFFFFFC0
    addiu   s1, s1, 0x000C             # s1 = FFFFFFCC
    addiu   t7, $sp, 0x0104            # t7 = FFFFFFE4
    bne     s1, t7, lbl_800327CC
    addiu   s2, s2, 0x0002             # s2 = 00000004
    addiu   s1, $sp, 0x00E0            # s1 = FFFFFFC0
    addiu   s2, $sp, 0x00EC            # s2 = FFFFFFCC
    addiu   s3, $sp, 0x00F8            # s3 = FFFFFFD8
    or      a2, s3, $zero              # a2 = FFFFFFD8
    or      a1, s2, $zero              # a1 = FFFFFFCC
    or      a0, s1, $zero              # a0 = FFFFFFC0
    jal     func_800A572C
    addiu   a3, $sp, 0x00D4            # a3 = FFFFFFB4
    jal     func_800A5510
    addiu   a0, $sp, 0x00D4            # a0 = FFFFFFB4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6AD8($at)          # 80106AD8
    mov.s   $f12, $f0
    abs.s   $f0, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f10
    nop
    bc1tl   lbl_80032928
    mov.s   $f0, $f20
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f18, 0x00D4($sp)
    lwc1    $f6, 0x00D8($sp)
    div.s   $f0, $f16, $f12
    lwc1    $f10, 0x00DC($sp)
    addiu   t8, $sp, 0x0070            # t8 = FFFFFF50
    or      a0, s1, $zero              # a0 = FFFFFFC0
    or      a1, s2, $zero              # a1 = FFFFFFCC
    or      a2, s3, $zero              # a2 = FFFFFFD8
    mul.s   $f4, $f18, $f0
    lwc1    $f18, 0x00E0($sp)
    mul.s   $f8, $f6, $f0
    nop
    mul.s   $f16, $f10, $f0
    lwc1    $f10, 0x00E4($sp)
    swc1    $f4, 0x00D4($sp)
    mul.s   $f6, $f4, $f18
    swc1    $f8, 0x00D8($sp)
    swc1    $f8, 0x0010($sp)
    mul.s   $f18, $f8, $f10
    swc1    $f16, 0x00DC($sp)
    swc1    $f16, 0x0014($sp)
    mfc1    a3, $f4
    add.s   $f10, $f6, $f18
    lwc1    $f6, 0x00E8($sp)
    mul.s   $f18, $f6, $f16
    add.s   $f2, $f18, $f10
    neg.s   $f2, $f2
    swc1    $f2, 0x0018($sp)
    lw      v0, 0x0014(s0)             # 00000014
    lwc1    $f6, 0x0008(v0)            # 00000008
    swc1    $f6, 0x001C($sp)
    lwc1    $f18, 0x0000(v0)           # 00000000
    sw      t8, 0x0024($sp)
    swc1    $f18, 0x0020($sp)
    lwc1    $f10, 0x0024(s0)           # 00000024
    jal     func_800A6E8C
    swc1    $f10, 0x0028($sp)
    beql    v0, $zero, lbl_80032928
    mov.s   $f0, $f20
    lwc1    $f2, 0x0070($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    sub.s   $f0, $f2, $f20
    abs.s   $f0, $f0
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80032928
    mov.s   $f0, $f20
    mov.s   $f20, $f2
lbl_80032924:
    mov.s   $f0, $f20
lbl_80032928:
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0120           # $sp += 0x120


func_80032948:
    addiu   $sp, $sp, 0xFF20           # $sp -= 0xE0
    sw      s3, 0x005C($sp)
    sw      s2, 0x0058($sp)
    or      s2, a2, $zero              # s2 = 00000000
    ori     s3, $zero, 0xFFFF          # s3 = 0000FFFF
    sw      $ra, 0x006C($sp)
    sw      s6, 0x0068($sp)
    sw      s5, 0x0064($sp)
    sw      s4, 0x0060($sp)
    sw      s1, 0x0054($sp)
    sw      s0, 0x0050($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    sw      a0, 0x00E0($sp)
    sw      a1, 0x00E4($sp)
    sw      a3, 0x00EC($sp)
    lw      t6, 0x00EC($sp)
    or      s6, $zero, $zero           # s6 = 00000000
    lw      t8, 0x0100($sp)
    lhu     t7, 0x0000(t6)             # 00000000
    bnel    s3, t7, lbl_800329B0
    lw      t0, 0x0000(t8)             # 00000000
    b       lbl_80032FD8
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t0, 0x0000(t8)             # 00000000
lbl_800329B0:
    addiu   s4, $sp, 0x00B4            # s4 = FFFFFFD4
    addiu   s5, $zero, 0x0006          # s5 = 00000006
    sw      t0, 0x0000(s4)             # FFFFFFD4
    lw      t9, 0x0004(t8)             # 00000004
    sw      t9, 0x0004(s4)             # FFFFFFD8
    lw      t0, 0x0008(t8)             # 00000008
    sw      t0, 0x0008(s4)             # FFFFFFDC
    lw      t2, 0x00EC($sp)
    lw      t1, 0x13F8(s2)             # 000013F8
    lwc1    $f22, 0x0104($sp)
    lhu     t3, 0x0000(t2)             # 00000000
    sll     t4, t3,  2
    addu    s1, t1, t4
lbl_800329E4:
    lh      v0, 0x0000(s1)             # 00000000
    lw      t5, 0x13F0(s2)             # 000013F0
    addiu   a1, $sp, 0x00C8            # a1 = FFFFFFE8
    sll     t6, v0,  4
    addu    s0, t5, t6
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $sp, 0x00C4            # a2 = FFFFFFE4
    jal     func_8002B610
    addiu   a3, $sp, 0x00C0            # a3 = FFFFFFE0
    lwc1    $f12, 0x00C8($sp)
    lwc1    $f8, 0x00C0($sp)
    lh      t7, 0x000E(s0)             # 0000000E
    mul.s   $f6, $f12, $f12
    mfc1    a2, $f8
    sw      s4, 0x0010($sp)
    mul.s   $f10, $f8, $f8
    lwc1    $f14, 0x00C4($sp)
    add.s   $f0, $f6, $f10
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f6, $f6
    sqrt.s  $f20, $f0
    mfc1    a3, $f6
    jal     func_800A69A4
    nop
    mov.s   $f24, $f0
    abs.s   $f0, $f0
    lhu     t8, 0x00E6($sp)
    c.lt.s  $f22, $f0
    nop
    bc1tl   lbl_80032A80
    lhu     v0, 0x0002(s1)             # 00000002
    lhu     v0, 0x0002(s0)             # 00000002
    andi    t9, t8, 0x0007             # t9 = 00000000
    sll     t0, t9, 13
    and     t2, v0, t0
    beq     t2, $zero, lbl_80032A98
    lui     $at, 0x3F80                # $at = 3F800000
    lhu     v0, 0x0002(s1)             # 00000002
lbl_80032A80:
    beql    s3, v0, lbl_80032CCC
    lw      t9, 0x00EC($sp)
    lw      t3, 0x13F8(s2)             # 000013F8
    sll     t1, v0,  2
    b       lbl_800329E4
    addu    s1, t3, t1
lbl_80032A98:
    mtc1    $at, $f10                  # $f10 = 1.00
    lwc1    $f16, 0x00C0($sp)
    lui     $at, 0x8010                # $at = 80100000
    div.s   $f14, $f10, $f20
    lwc1    $f4, 0x6ADC($at)           # 80106ADC
    andi    t6, v0, 0x1FFF             # t6 = 00000000
    abs.s   $f0, $f16
    mul.s   $f18, $f0, $f14
    c.lt.s  $f18, $f4
    nop
    bc1f    lbl_80032AE4
    nop
    lhu     v0, 0x0002(s1)             # 00000002
    beql    s3, v0, lbl_80032CCC
    lw      t9, 0x00EC($sp)
    lw      t4, 0x13F8(s2)             # 000013F8
    sll     t5, v0,  2
    b       lbl_800329E4
    addu    s1, t4, t5
lbl_80032AE4:
    multu   t6, s5
    lhu     t0, 0x0004(s0)             # 00000004
    lw      a1, 0x13F4(s2)             # 000013F4
    andi    t2, t0, 0x1FFF             # t2 = 00000000
    mflo    t7
    addu    t8, a1, t7
    lh      t9, 0x0004(t8)             # 00000004
    multu   t2, s5
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f12, $f8
    mflo    t3
    addu    t1, a1, t3
    lh      t4, 0x0004(t1)             # 00000004
    mov.s   $f2, $f12
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f0, $f6
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80032B48
    c.lt.s  $f12, $f0
    b       lbl_80032B58
    mov.s   $f2, $f0
    c.lt.s  $f12, $f0
lbl_80032B48:
    nop
    bc1fl   lbl_80032B5C
    lhu     t5, 0x0006(s0)             # 00000006
    mov.s   $f12, $f0
lbl_80032B58:
    lhu     t5, 0x0006(s0)             # 00000006
lbl_80032B5C:
    sll     t6, t5,  2
    subu    t6, t6, t5
    sll     t6, t6,  1
    addu    t7, a1, t6
    lh      t8, 0x0004(t7)             # 00000004
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f0, $f10
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80032B98
    c.lt.s  $f12, $f0
    b       lbl_80032BA8
    mov.s   $f2, $f0
    c.lt.s  $f12, $f0
lbl_80032B98:
    nop
    bc1fl   lbl_80032BAC
    sub.s   $f2, $f2, $f22
    mov.s   $f12, $f0
lbl_80032BA8:
    sub.s   $f2, $f2, $f22
lbl_80032BAC:
    lwc1    $f16, 0x00BC($sp)
    add.s   $f12, $f12, $f22
    c.lt.s  $f16, $f2
    nop
    bc1tl   lbl_80032BE0
    lhu     v0, 0x0002(s1)             # 00000002
    c.lt.s  $f12, $f16
    or      a0, s0, $zero              # a0 = 00000000
    lw      t2, 0x0100($sp)
    addiu   t3, $sp, 0x00D8            # t3 = FFFFFFF8
    bc1fl   lbl_80032BFC
    lw      a3, 0x0004(t2)             # 00000004
    lhu     v0, 0x0002(s1)             # 00000002
lbl_80032BE0:
    beql    s3, v0, lbl_80032CCC
    lw      t9, 0x00EC($sp)
    lw      t9, 0x13F8(s2)             # 000013F8
    sll     t0, v0,  2
    b       lbl_800329E4
    addu    s1, t9, t0
    lw      a3, 0x0004(t2)             # 00000004
lbl_80032BFC:
    swc1    $f18, 0x0098($sp)
    swc1    $f14, 0x0078($sp)
    sw      t3, 0x0010($sp)
    jal     func_8002BC08
    lw      a2, 0x00B4($sp)
    lwc1    $f14, 0x0078($sp)
    beq     v0, $zero, lbl_80032CAC
    lwc1    $f18, 0x0098($sp)
    lwc1    $f16, 0x00BC($sp)
    div.s   $f8, $f22, $f18
    lwc1    $f4, 0x00D8($sp)
    sub.s   $f2, $f4, $f16
    lwc1    $f16, 0x00C0($sp)
    abs.s   $f0, $f2
    c.le.s  $f0, $f8
    nop
    bc1fl   lbl_80032CB0
    lhu     v0, 0x0002(s1)             # 00000002
    mul.s   $f10, $f2, $f16
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lwc1    $f12, 0x00C8($sp)
    lw      a0, 0x00E0($sp)
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s4, $zero              # a2 = FFFFFFD4
    c.le.s  $f10, $f6
    addiu   a3, $sp, 0x00BC            # a3 = FFFFFFDC
    bc1fl   lbl_80032CB0
    lhu     v0, 0x0002(s1)             # 00000002
    lwc1    $f4, 0x00C4($sp)
    lw      t1, 0x00F8($sp)
    swc1    $f12, 0x0010($sp)
    swc1    $f16, 0x0018($sp)
    swc1    $f14, 0x001C($sp)
    swc1    $f24, 0x0020($sp)
    swc1    $f22, 0x0024($sp)
    addiu   s6, $zero, 0x0001          # s6 = 00000001
    swc1    $f4, 0x0014($sp)
    jal     func_8002C664
    sw      t1, 0x0028($sp)
    beq     v0, $zero, lbl_80032CAC
    lw      t4, 0x0108($sp)
    lw      t5, 0x00FC($sp)
    sw      t4, 0x0000(t5)             # 00000000
lbl_80032CAC:
    lhu     v0, 0x0002(s1)             # 00000002
lbl_80032CB0:
    beql    s3, v0, lbl_80032CCC
    lw      t9, 0x00EC($sp)
    lw      t6, 0x13F8(s2)             # 000013F8
    sll     t7, v0,  2
    b       lbl_800329E4
    addu    s1, t6, t7
    lw      t9, 0x00EC($sp)
lbl_80032CCC:
    lw      t8, 0x13F8(s2)             # 000013F8
    lhu     t0, 0x0000(t9)             # 00000000
    sll     t2, t0,  2
    addu    s1, t8, t2
lbl_80032CDC:
    lh      v0, 0x0000(s1)             # 00000000
    lw      t3, 0x13F0(s2)             # 000013F0
    addiu   a1, $sp, 0x00C8            # a1 = FFFFFFE8
    sll     t1, v0,  4
    addu    s0, t3, t1
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $sp, 0x00C4            # a2 = FFFFFFE4
    jal     func_8002B610
    addiu   a3, $sp, 0x00C0            # a3 = FFFFFFE0
    lwc1    $f12, 0x00C8($sp)
    lwc1    $f10, 0x00C0($sp)
    lh      t4, 0x000E(s0)             # 0000000E
    mul.s   $f6, $f12, $f12
    mfc1    a2, $f10
    sw      s4, 0x0010($sp)
    mul.s   $f4, $f10, $f10
    lwc1    $f14, 0x00C4($sp)
    add.s   $f0, $f6, $f4
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f6, $f6
    sqrt.s  $f20, $f0
    mfc1    a3, $f6
    jal     func_800A69A4
    nop
    mov.s   $f24, $f0
    abs.s   $f0, $f0
    lhu     t5, 0x00E6($sp)
    c.lt.s  $f22, $f0
    nop
    bc1tl   lbl_80032D78
    lhu     v0, 0x0002(s1)             # 00000002
    lhu     v0, 0x0002(s0)             # 00000002
    andi    t6, t5, 0x0007             # t6 = 00000000
    sll     t7, t6, 13
    and     t9, v0, t7
    beq     t9, $zero, lbl_80032D90
    lui     $at, 0x3F80                # $at = 3F800000
    lhu     v0, 0x0002(s1)             # 00000002
lbl_80032D78:
    beql    s3, v0, lbl_80032FC0
    lwc1    $f10, 0x00B4($sp)
    lw      t0, 0x13F8(s2)             # 000013F8
    sll     t8, v0,  2
    b       lbl_80032CDC
    addu    s1, t0, t8
lbl_80032D90:
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f12, 0x00C8($sp)
    lui     $at, 0x8010                # $at = 80100000
    div.s   $f14, $f4, $f20
    lwc1    $f8, 0x6AE0($at)           # 80106AE0
    andi    t1, v0, 0x1FFF             # t1 = 00000000
    abs.s   $f0, $f12
    mul.s   $f18, $f0, $f14
    c.lt.s  $f18, $f8
    nop
    bc1f    lbl_80032DDC
    nop
    lhu     v0, 0x0002(s1)             # 00000002
    beql    s3, v0, lbl_80032FC0
    lwc1    $f10, 0x00B4($sp)
    lw      t2, 0x13F8(s2)             # 000013F8
    sll     t3, v0,  2
    b       lbl_80032CDC
    addu    s1, t2, t3
lbl_80032DDC:
    multu   t1, s5
    lhu     t7, 0x0004(s0)             # 00000004
    lw      a1, 0x13F4(s2)             # 000013F4
    andi    t9, t7, 0x1FFF             # t9 = 00000000
    mflo    t4
    addu    t5, a1, t4
    lh      t6, 0x0000(t5)             # 00000000
    multu   t9, s5
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f12, $f10
    mflo    t0
    addu    t8, a1, t0
    lh      t2, 0x0000(t8)             # 00000000
    mov.s   $f2, $f12
    mtc1    t2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f0, $f6
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80032E40
    c.lt.s  $f12, $f0
    b       lbl_80032E50
    mov.s   $f2, $f0
    c.lt.s  $f12, $f0
lbl_80032E40:
    nop
    bc1fl   lbl_80032E54
    lhu     t3, 0x0006(s0)             # 00000006
    mov.s   $f12, $f0
lbl_80032E50:
    lhu     t3, 0x0006(s0)             # 00000006
lbl_80032E54:
    sll     t1, t3,  2
    subu    t1, t1, t3
    sll     t1, t1,  1
    addu    t4, a1, t1
    lh      t5, 0x0000(t4)             # 00000000
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f0, $f4
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80032E90
    c.lt.s  $f12, $f0
    b       lbl_80032EA0
    mov.s   $f2, $f0
    c.lt.s  $f12, $f0
lbl_80032E90:
    nop
    bc1fl   lbl_80032EA4
    sub.s   $f2, $f2, $f22
    mov.s   $f12, $f0
lbl_80032EA0:
    sub.s   $f2, $f2, $f22
lbl_80032EA4:
    lwc1    $f16, 0x00B4($sp)
    add.s   $f12, $f12, $f22
    c.lt.s  $f16, $f2
    nop
    bc1tl   lbl_80032ED8
    lhu     v0, 0x0002(s1)             # 00000002
    c.lt.s  $f12, $f16
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0100($sp)
    lw      a3, 0x00BC($sp)
    bc1f    lbl_80032EF0
    addiu   t0, $sp, 0x00D8            # t0 = FFFFFFF8
    lhu     v0, 0x0002(s1)             # 00000002
lbl_80032ED8:
    beql    s3, v0, lbl_80032FC0
    lwc1    $f10, 0x00B4($sp)
    lw      t6, 0x13F8(s2)             # 000013F8
    sll     t7, v0,  2
    b       lbl_80032CDC
    addu    s1, t6, t7
lbl_80032EF0:
    lw      a2, 0x0004(t9)             # 00000004
    swc1    $f18, 0x0098($sp)
    swc1    $f14, 0x0078($sp)
    jal     func_8002BB64
    sw      t0, 0x0010($sp)
    lwc1    $f14, 0x0078($sp)
    beq     v0, $zero, lbl_80032FA0
    lwc1    $f18, 0x0098($sp)
    lwc1    $f16, 0x00B4($sp)
    div.s   $f10, $f22, $f18
    lwc1    $f8, 0x00D8($sp)
    lwc1    $f12, 0x00C8($sp)
    sub.s   $f2, $f8, $f16
    abs.s   $f0, $f2
    c.le.s  $f0, $f10
    nop
    bc1fl   lbl_80032FA4
    lhu     v0, 0x0002(s1)             # 00000002
    mul.s   $f4, $f2, $f12
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lwc1    $f16, 0x00C0($sp)
    lw      a0, 0x00E0($sp)
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s4, $zero              # a2 = FFFFFFD4
    c.le.s  $f4, $f6
    addiu   a3, $sp, 0x00BC            # a3 = FFFFFFDC
    bc1fl   lbl_80032FA4
    lhu     v0, 0x0002(s1)             # 00000002
    lwc1    $f8, 0x00C4($sp)
    lw      t8, 0x00F8($sp)
    swc1    $f12, 0x0010($sp)
    swc1    $f16, 0x0018($sp)
    swc1    $f14, 0x001C($sp)
    swc1    $f24, 0x0020($sp)
    swc1    $f22, 0x0024($sp)
    addiu   s6, $zero, 0x0001          # s6 = 00000001
    swc1    $f8, 0x0014($sp)
    jal     func_8002C664
    sw      t8, 0x0028($sp)
    beq     v0, $zero, lbl_80032FA0
    lw      t2, 0x0108($sp)
    lw      t3, 0x00FC($sp)
    sw      t2, 0x0000(t3)             # 00000000
lbl_80032FA0:
    lhu     v0, 0x0002(s1)             # 00000002
lbl_80032FA4:
    beql    s3, v0, lbl_80032FC0
    lwc1    $f10, 0x00B4($sp)
    lw      t1, 0x13F8(s2)             # 000013F8
    sll     t4, v0,  2
    b       lbl_80032CDC
    addu    s1, t1, t4
    lwc1    $f10, 0x00B4($sp)
lbl_80032FC0:
    lw      t5, 0x00F0($sp)
    or      v0, s6, $zero              # v0 = 00000001
    swc1    $f10, 0x0000(t5)           # 00000000
    lw      t6, 0x00F4($sp)
    lwc1    $f6, 0x00BC($sp)
    swc1    $f6, 0x0000(t6)            # 00000000
lbl_80032FD8:
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
    ldc1    $f24, 0x0048($sp)
    lw      s0, 0x0050($sp)
    lw      s1, 0x0054($sp)
    lw      s2, 0x0058($sp)
    lw      s3, 0x005C($sp)
    lw      s4, 0x0060($sp)
    lw      s5, 0x0064($sp)
    lw      s6, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00E0           # $sp += 0xE0


func_8003300C:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s5, 0x0054($sp)
    or      s5, a0, $zero              # s5 = 00000000
    or      s7, a2, $zero              # s7 = 00000000
    or      s8, a3, $zero              # s8 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s6, 0x0058($sp)
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    sw      a1, 0x00A4($sp)
    lw      t7, 0x00B0($sp)
    sw      $zero, 0x0090($sp)
    addiu   t6, $sp, 0x0094            # t6 = FFFFFFF4
    lw      t9, 0x0000(t7)             # 00000000
    or      s4, $zero, $zero           # s4 = 00000000
    or      s6, s5, $zero              # s6 = 00000000
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t8, 0x0004(t7)             # 00000004
    sw      t8, 0x0004(t6)             # FFFFFFF8
    lw      t9, 0x0008(t7)             # 00000008
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lwc1    $f20, 0x00B4($sp)
lbl_8003307C:
    lhu     t0, 0x13DC(s6)             # 000013DC
    sll     v0, s4,  2
    subu    v0, v0, s4
    andi    t1, t0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80033200
    sll     v0, v0,  3
    addu    v0, v0, s4
    sll     v0, v0,  2
    addu    s3, s5, v0
    lw      t3, 0x0054(s3)             # 00000054
    lw      t2, 0x00C0($sp)
    addu    v1, s5, v0
    lwc1    $f4, 0x0098($sp)
    beql    t2, t3, lbl_80033204
    addiu   s4, s4, 0x0001             # s4 = 00000001
    lwc1    $f6, 0x00B0(v1)            # 000000B0
    addiu   s0, v1, 0x0054             # s0 = 00000054
    c.lt.s  $f4, $f6
    nop
    bc1tl   lbl_80033204
    addiu   s4, s4, 0x0001             # s4 = 00000002
    lwc1    $f8, 0x0060(s0)            # 000000B4
    c.lt.s  $f8, $f4
    nop
    bc1tl   lbl_80033204
    addiu   s4, s4, 0x0001             # s4 = 00000003
    trunc.w.s $f10, $f20
    lh      t5, 0x005A(s0)             # 000000AE
    lh      t7, 0x0054(s0)             # 000000A8
    lh      t8, 0x0058(s0)             # 000000AC
    mfc1    s2, $f10
    mtc1    t7, $f18                   # $f18 = 0.00
    mtc1    t8, $f4                    # $f4 = 0.00
    sll     s2, s2, 16
    sra     s2, s2, 16
    addu    t6, t5, s2
    sh      t6, 0x005A(s0)             # 000000AE
    lh      v0, 0x005A(s0)             # 000000AE
    cvt.s.w $f6, $f18
    lwc1    $f8, 0x0094($sp)
    mtc1    v0, $f16                   # $f16 = 0.00
    addiu   s1, s0, 0x0054             # s1 = 000000A8
    or      a0, s1, $zero              # a0 = 000000A8
    cvt.s.w $f0, $f16
    lwc1    $f16, 0x009C($sp)
    cvt.s.w $f10, $f4
    mul.s   $f18, $f0, $f0
    sub.s   $f2, $f6, $f8
    sub.s   $f12, $f10, $f16
    mul.s   $f6, $f2, $f2
    nop
    mul.s   $f4, $f12, $f12
    add.s   $f10, $f6, $f4
    c.lt.s  $f18, $f10
    nop
    bc1t    lbl_8003318C
    nop
    mfc1    a1, $f8
    jal     func_800AA394
    lw      a2, 0x0098($sp)
    bne     v0, $zero, lbl_80033198
    or      a0, s1, $zero              # a0 = 000000A8
    lw      a1, 0x0098($sp)
    jal     func_800AA408
    lw      a2, 0x009C($sp)
    bnel    v0, $zero, lbl_8003319C
    lh      t0, 0x005A(s0)             # 000000AE
    lh      v0, 0x005A(s0)             # 000000AE
lbl_8003318C:
    subu    t9, v0, s2
    b       lbl_80033200
    sh      t9, 0x005A(s0)             # 000000AE
lbl_80033198:
    lh      t0, 0x005A(s0)             # 000000AE
lbl_8003319C:
    addiu   t4, $sp, 0x0094            # t4 = FFFFFFF4
    or      a0, s5, $zero              # a0 = 00000000
    subu    t1, t0, s2
    sh      t1, 0x005A(s0)             # 000000AE
    lw      t3, 0x00BC($sp)
    lw      t2, 0x00B8($sp)
    sw      s4, 0x0028($sp)
    swc1    $f20, 0x0024($sp)
    sw      t4, 0x0020($sp)
    sw      s8, 0x0014($sp)
    sw      s7, 0x0010($sp)
    lhu     a1, 0x00A6($sp)
    addiu   a2, s5, 0x0050             # a2 = 00000050
    addiu   a3, s3, 0x0060             # a3 = 00000060
    sw      t3, 0x001C($sp)
    jal     func_80032948
    sw      t2, 0x0018($sp)
    beql    v0, $zero, lbl_80033204
    addiu   s4, s4, 0x0001             # s4 = 00000004
    lwc1    $f16, 0x0000(s7)           # 00000000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    swc1    $f16, 0x0094($sp)
    lwc1    $f6, 0x0000(s8)            # 00000000
    sw      t5, 0x0090($sp)
    swc1    $f6, 0x009C($sp)
lbl_80033200:
    addiu   s4, s4, 0x0001             # s4 = 00000005
lbl_80033204:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     s4, $at, lbl_8003307C
    addiu   s6, s6, 0x0002             # s6 = 00000002
    lw      v0, 0x0090($sp)
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    lw      s5, 0x0054($sp)
    lw      s6, 0x0058($sp)
    lw      s7, 0x005C($sp)
    lw      s8, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_80033248:
    addiu   $sp, $sp, 0xFF50           # $sp -= 0xB0
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    sw      a1, 0x00B4($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    or      s2, a2, $zero              # s2 = 00000000
    ori     s3, $zero, 0xFFFF          # s3 = 0000FFFF
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a0, 0x00B0($sp)
    sw      $zero, 0x0080($sp)
    lhu     v0, 0x0000(a3)             # 00000000
    addiu   s6, $sp, 0x0098            # s6 = FFFFFFE8
    lw      t8, 0x00C4($sp)
    bne     s3, v0, lbl_800332B8
    sll     t7, v0,  2
    b       lbl_80033464
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800332B8:
    lw      t0, 0x0000(t8)             # 00000000
    lw      t6, 0x13F8(s2)             # 000013F8
    lui     $at, 0xBF80                # $at = BF800000
    sw      t0, 0x0000(s6)             # FFFFFFE8
    lw      t9, 0x0004(t8)             # 00000004
    mtc1    $at, $f26                  # $f26 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    sw      t9, 0x0004(s6)             # FFFFFFEC
    lw      t0, 0x0008(t8)             # 00000008
    andi    s4, a1, 0x0007             # s4 = 00000000
    mtc1    $at, $f24                  # $f24 = 1.00
    sw      t0, 0x0008(s6)             # FFFFFFF0
    mtc1    $zero, $f22                # $f22 = 0.00
    lw      s5, 0x00CC($sp)
    lwc1    $f20, 0x00C8($sp)
    lw      v1, 0x13F0(s2)             # 000013F0
    sll     s4, s4, 13
    addiu   s8, $sp, 0x0088            # s8 = FFFFFFD8
    addiu   s7, $sp, 0x008C            # s7 = FFFFFFDC
    addu    s1, t6, t7
lbl_80033308:
    lh      v0, 0x0000(s1)             # 00000000
    or      a1, s7, $zero              # a1 = FFFFFFDC
    or      a2, s8, $zero              # a2 = FFFFFFD8
    sll     t1, v0,  4
    addu    s0, v1, t1
    lhu     t2, 0x0002(s0)             # 00000002
    or      a0, s0, $zero              # a0 = 00000000
    and     t3, t2, s4
    beq     t3, $zero, lbl_8003334C
    nop
    lhu     v0, 0x0002(s1)             # 00000002
    beql    s3, v0, lbl_80033458
    lwc1    $f18, 0x009C($sp)
    lw      t4, 0x13F8(s2)             # 000013F8
    sll     t5, v0,  2
    b       lbl_80033308
    addu    s1, t4, t5
lbl_8003334C:
    jal     func_8002B610
    addiu   a3, $sp, 0x0084            # a3 = FFFFFFD4
    lh      t6, 0x000E(s0)             # 0000000E
    sw      s6, 0x0010($sp)
    lwc1    $f12, 0x008C($sp)
    mtc1    t6, $f4                    # $f4 = 0.00
    lwc1    $f14, 0x0088($sp)
    lw      a2, 0x0084($sp)
    cvt.s.w $f4, $f4
    mfc1    a3, $f4
    jal     func_800A696C
    nop
    c.lt.s  $f20, $f0
    or      a0, s0, $zero              # a0 = 00000000
    lw      a2, 0x0098($sp)
    lw      a3, 0x00A0($sp)
    bc1f    lbl_800333B0
    addiu   t9, $sp, 0x0094            # t9 = FFFFFFE4
    lhu     v0, 0x0002(s1)             # 00000002
    beq     s3, v0, lbl_80033454
    sll     t8, v0,  2
    lw      t7, 0x13F8(s2)             # 000013F8
    lw      v1, 0x13F0(s2)             # 000013F0
    b       lbl_80033308
    addu    s1, t7, t8
lbl_800333B0:
    lw      a1, 0x13F4(s2)             # 000013F4
    jal     func_8002BB24
    sw      t9, 0x0010($sp)
    beq     v0, $zero, lbl_80033438
    lwc1    $f2, 0x0094($sp)
    lwc1    $f12, 0x009C($sp)
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_8003343C
    lhu     v0, 0x0002(s1)             # 00000002
    sub.s   $f0, $f2, $f12
    lwc1    $f2, 0x0088($sp)
    c.lt.s  $f0, $f20
    nop
    bc1fl   lbl_8003343C
    lhu     v0, 0x0002(s1)             # 00000002
    mul.s   $f6, $f0, $f2
    c.le.s  $f6, $f22
    nop
    bc1fl   lbl_8003343C
    lhu     v0, 0x0002(s1)             # 00000002
    c.le.s  $f22, $f2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0080($sp)
    bc1fl   lbl_80033424
    mov.s   $f0, $f26
    b       lbl_80033424
    mov.s   $f0, $f24
    mov.s   $f0, $f26
lbl_80033424:
    mul.s   $f8, $f0, $f20
    lwc1    $f10, 0x0094($sp)
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x009C($sp)
    sw      s0, 0x0000(s5)             # 00000000
lbl_80033438:
    lhu     v0, 0x0002(s1)             # 00000002
lbl_8003343C:
    beq     s3, v0, lbl_80033454
    sll     t2, v0,  2
    lw      t1, 0x13F8(s2)             # 000013F8
    lw      v1, 0x13F0(s2)             # 000013F0
    b       lbl_80033308
    addu    s1, t1, t2
lbl_80033454:
    lwc1    $f18, 0x009C($sp)
lbl_80033458:
    lw      t3, 0x00C0($sp)
    swc1    $f18, 0x0000(t3)           # 00000000
    lw      v0, 0x0080($sp)
lbl_80033464:
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    lw      s5, 0x0054($sp)
    lw      s6, 0x0058($sp)
    lw      s7, 0x005C($sp)
    lw      s8, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp += 0xB0


func_800334A4:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sdc1    $f22, 0x0030($sp)
    lwc1    $f22, 0x0090($sp)
    or      s2, a3, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s8, 0x0058($sp)
    sw      s7, 0x0054($sp)
    sw      s6, 0x0050($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a1, 0x0084($sp)
    sw      a2, 0x0088($sp)
    sw      $zero, 0x0078($sp)
    lwc1    $f4, 0x0004(s2)            # 00000004
    or      s1, $zero, $zero           # s1 = 00000000
    or      s4, s3, $zero              # s4 = 00000000
    add.s   $f6, $f4, $f22
    addiu   s8, $zero, 0x0032          # s8 = 00000032
    lw      s7, 0x0098($sp)
    lw      s6, 0x0094($sp)
    swc1    $f6, 0x0070($sp)
    lwc1    $f20, 0x0070($sp)
    lw      s5, 0x009C($sp)
lbl_80033518:
    lhu     t6, 0x13DC(s4)             # 000013DC
    sll     t8, s1,  2
    subu    t8, t8, s1
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_800335B8
    sll     t8, t8,  3
    addu    t8, t8, s1
    sll     t8, t8,  2
    addu    s0, s3, t8
    lw      t9, 0x0054(s0)             # 00000054
    addiu   a0, s0, 0x00A8             # a0 = 000000A8
    beql    s5, t9, lbl_800335BC
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lw      a1, 0x0000(s2)             # 00000000
    jal     func_800AA320
    lw      a2, 0x0008(s2)             # 00000008
    beq     v0, $zero, lbl_800335B8
    or      a0, s3, $zero              # a0 = 00000000
    addiu   t0, $sp, 0x0070            # t0 = FFFFFFF0
    addiu   t1, $sp, 0x0068            # t1 = FFFFFFE8
    sw      t1, 0x001C($sp)
    sw      t0, 0x0010($sp)
    lhu     a1, 0x0086($sp)
    addiu   a2, s3, 0x0050             # a2 = 00000050
    addiu   a3, s0, 0x005E             # a3 = 0000005E
    sw      s2, 0x0014($sp)
    jal     func_80033248
    swc1    $f22, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_800335B8
    lwc1    $f8, 0x0070($sp)
    c.lt.s  $f8, $f20
    lw      t2, 0x0068($sp)
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    bc1fl   lbl_800335BC
    addiu   s1, s1, 0x0001             # s1 = 00000002
    sw      t2, 0x0000(s6)             # 00000000
    sw      s1, 0x0000(s7)             # 00000000
    mov.s   $f20, $f8
    sw      t3, 0x0078($sp)
lbl_800335B8:
    addiu   s1, s1, 0x0001             # s1 = 00000003
lbl_800335BC:
    bne     s1, s8, lbl_80033518
    addiu   s4, s4, 0x0002             # s4 = 00000002
    lw      t4, 0x0088($sp)
    swc1    $f20, 0x0000(t4)           # 00000000
    lw      v0, 0x0078($sp)
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    lw      s5, 0x004C($sp)
    lw      s6, 0x0050($sp)
    lw      s7, 0x0054($sp)
    lw      s8, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_80033608:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s4, 0x0034($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    ori     s4, $zero, 0xFFFF          # s4 = 0000FFFF
    sw      $ra, 0x003C($sp)
    sw      s5, 0x0038($sp)
    sw      s3, 0x0030($sp)
    sw      s2, 0x002C($sp)
    sw      s1, 0x0028($sp)
    lw      t6, 0x000C(s0)             # 0000000C
    or      s5, $zero, $zero           # s5 = 00000000
    lhu     v0, 0x0000(t6)             # 00000000
    bne     s4, v0, lbl_8003364C
    sll     t7, v0,  2
    b       lbl_80033768
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8003364C:
    lw      v1, 0x0008(s0)             # 00000008
    lhu     a2, 0x0004(s0)             # 00000004
    addiu   s3, $sp, 0x005C            # s3 = FFFFFFE4
    lw      a0, 0x13F8(v1)             # 000013F8
    andi    a2, a2, 0x0007             # a2 = 00000000
    sll     a2, a2, 13
    lw      a1, 0x13F0(v1)             # 000013F0
    addu    s2, a0, t7
lbl_8003366C:
    lh      v0, 0x0000(s2)             # 00000000
    sll     t8, v0,  4
    addu    s1, a1, t8
    lhu     t9, 0x0002(s1)             # 00000002
    and     t0, t9, a2
    beql    t0, $zero, lbl_800336A0
    lw      a1, 0x13F4(v1)             # 000013F4
    lhu     v0, 0x0002(s2)             # 00000002
    beq     s4, v0, lbl_80033764
    sll     t1, v0,  2
    b       lbl_8003366C
    addu    s2, a0, t1
    lw      a1, 0x13F4(v1)             # 000013F4
lbl_800336A0:
    lw      a2, 0x0010(s0)             # 00000010
    lw      a3, 0x0014(s0)             # 00000014
    sw      s3, 0x0010($sp)
    lw      t2, 0x0020(s0)             # 00000020
    or      a0, s1, $zero              # a0 = 00000000
    sw      t2, 0x0014($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    jal     func_8002BCAC
    swc1    $f4, 0x0018($sp)
    beq     v0, $zero, lbl_80033734
    or      a1, s3, $zero              # a1 = FFFFFFE4
    jal     func_800A5538
    lw      a0, 0x0010(s0)             # 00000010
    lw      v0, 0x0024(s0)             # 00000024
    lwc1    $f6, 0x0000(v0)            # 00000000
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_80033738
    lhu     v0, 0x0002(s2)             # 00000002
    swc1    $f0, 0x0000(v0)            # 00000000
    lw      t5, 0x0000(s3)             # FFFFFFE4
    lw      t3, 0x0018(s0)             # 00000018
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    sw      t5, 0x0000(t3)             # 00000000
    lw      t4, 0x0004(s3)             # FFFFFFE8
    sw      t4, 0x0004(t3)             # 00000004
    lw      t5, 0x0008(s3)             # FFFFFFEC
    sw      t5, 0x0008(t3)             # 00000008
    lw      t8, 0x0000(s3)             # FFFFFFE4
    lw      t6, 0x0014(s0)             # 00000014
    sw      t8, 0x0000(t6)             # 00000000
    lw      t7, 0x0004(s3)             # FFFFFFE8
    sw      t7, 0x0004(t6)             # 00000004
    lw      t8, 0x0008(s3)             # FFFFFFEC
    sw      t8, 0x0008(t6)             # 00000008
    lw      t9, 0x001C(s0)             # 0000001C
    sw      s1, 0x0000(t9)             # 00000000
lbl_80033734:
    lhu     v0, 0x0002(s2)             # 00000002
lbl_80033738:
    beql    s4, v0, lbl_80033768
    or      v0, s5, $zero              # v0 = 00000001
    lw      v1, 0x0008(s0)             # 00000008
    lhu     a2, 0x0004(s0)             # 00000004
    sll     t0, v0,  2
    lw      a0, 0x13F8(v1)             # 000013F8
    andi    a2, a2, 0x0007             # a2 = 00000000
    sll     a2, a2, 13
    lw      a1, 0x13F0(v1)             # 000013F0
    b       lbl_8003366C
    addu    s2, a0, t0
lbl_80033764:
    or      v0, s5, $zero              # v0 = 00000001
lbl_80033768:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    lw      s4, 0x0034($sp)
    lw      s5, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_8003378C:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      a1, 0x0054($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      $ra, 0x0014($sp)
    lw      t4, 0x006C($sp)
    lw      t7, 0x0060($sp)
    lw      t9, 0x0074($sp)
    sll     t5, t4,  2
    subu    t5, t5, t4
    sll     t5, t5,  3
    addu    t5, t5, t4
    addiu   t6, a0, 0x0050             # t6 = 00000050
    sll     t5, t5,  2
    lw      t8, 0x0064($sp)
    lw      t3, 0x0068($sp)
    lwc1    $f4, 0x0070($sp)
    sw      t6, 0x0028($sp)
    addu    v1, a0, t5
    sw      t7, 0x0038($sp)
    andi    t1, t9, 0x0008             # t1 = 00000000
    sltu    t2, $zero, t1
    addiu   t6, v1, 0x0060             # t6 = 00000060
    andi    t7, t9, 0x0001             # t7 = 00000000
    or      t0, $zero, $zero           # t0 = 00000000
    sw      a0, 0x0020($sp)
    sh      a1, 0x0024($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    sw      t2, 0x0040($sp)
    sw      t6, 0x002C($sp)
    sw      t8, 0x003C($sp)
    sw      t3, 0x0044($sp)
    beq     t7, $zero, lbl_80033834
    swc1    $f4, 0x0048($sp)
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFD0
    sw      v1, 0x001C($sp)
    jal     func_80033608
    sw      $zero, 0x004C($sp)
    lw      v1, 0x001C($sp)
    beq     v0, $zero, lbl_80033834
    lw      t0, 0x004C($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_80033834:
    lw      t1, 0x0074($sp)
    addiu   t8, v1, 0x0062             # t8 = 00000062
    sw      t8, 0x002C($sp)
    andi    t2, t1, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_80033868
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFD0
    sw      v1, 0x001C($sp)
    jal     func_80033608
    sw      t0, 0x004C($sp)
    lw      v1, 0x001C($sp)
    beq     v0, $zero, lbl_80033868
    lw      t0, 0x004C($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_80033868:
    lw      t4, 0x0074($sp)
    addiu   t3, v1, 0x005E             # t3 = 0000005E
    sw      t3, 0x002C($sp)
    andi    t5, t4, 0x0004             # t5 = 00000000
    beq     t5, $zero, lbl_80033894
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFD0
    jal     func_80033608
    sw      t0, 0x004C($sp)
    beq     v0, $zero, lbl_80033894
    lw      t0, 0x004C($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_80033894:
    or      v0, t0, $zero              # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_800338A8:
# Detect Collision with Actor Mesh Collision
# A0 = Global Context + 0x7C0
# A1 = u16 PolyIgnoreFlags
# A2 = vector3_f32* prevCoords
# A3 = vector3_f32* nextCoords (copy?)
# SP+0x10 = out? vector3_f32* finalCoords
# SP+0x14 = out CollisionPoly**
# SP+0x18 = SP+0xB4
# SP+0x1C = out s32* Mesh Collision Id
# SP+0x20 = Actor*
# SP+0x24 = f32 ?
# V0 = 1 if successful, else 0
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s8, 0x0058($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    or      s2, a2, $zero              # s2 = 00000000
    or      s3, a3, $zero              # s3 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    andi    s8, a1, 0xFFFF             # s8 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s7, 0x0054($sp)
    sw      s6, 0x0050($sp)
    sw      s5, 0x004C($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    sw      a1, 0x009C($sp)
    or      s6, $zero, $zero           # s6 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    or      s1, s4, $zero              # s1 = 00000000
    lwc1    $f20, 0x00BC($sp)
    lw      s7, 0x00B8($sp)
    addiu   s5, $sp, 0x0074            # s5 = FFFFFFDC
lbl_80033904:
    lhu     t6, 0x13DC(s1)             # 000013DC
    sll     t8, s0,  2
    subu    t8, t8, s0
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80033A18
    sll     t8, t8,  3
    addu    t8, t8, s0
    sll     t8, t8,  2
    addu    v0, s4, t8
    lw      t9, 0x0054(v0)             # 00000054
    beql    s7, t9, lbl_80033A1C
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lwc1    $f0, 0x0004(s2)            # 00000004
    lwc1    $f12, 0x00B0(v0)           # 000000B0
    lwc1    $f2, 0x0004(s3)            # 00000004
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_80033964
    lwc1    $f12, 0x00B4(v0)           # 000000B4
    c.lt.s  $f2, $f12
    nop
    bc1tl   lbl_80033A1C
    addiu   s0, s0, 0x0001             # s0 = 00000002
    lwc1    $f12, 0x00B4(v0)           # 000000B4
lbl_80033964:
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_80033988
    lw      t1, 0x0000(s2)             # 00000000
    c.lt.s  $f12, $f2
    nop
    bc1tl   lbl_80033A1C
    addiu   s0, s0, 0x0001             # s0 = 00000003
    lw      t1, 0x0000(s2)             # 00000000
lbl_80033988:
    addiu   t2, $sp, 0x0080            # t2 = FFFFFFE8
    addiu   a0, v0, 0x00A8             # a0 = 000000A8
    sw      t1, 0x0000(s5)             # FFFFFFDC
    lw      t0, 0x0004(s2)             # 00000004
    or      a1, s5, $zero              # a1 = FFFFFFDC
    sw      t0, 0x0004(s5)             # FFFFFFE0
    lw      t1, 0x0008(s2)             # 00000008
    sw      t1, 0x0008(s5)             # FFFFFFE4
    lw      t4, 0x0000(s3)             # 00000000
    sw      t4, 0x0000(t2)             # FFFFFFE8
    lw      t3, 0x0004(s3)             # 00000004
    sw      t3, 0x0004(t2)             # FFFFFFEC
    lw      t4, 0x0008(s3)             # 00000008
    jal     func_800A847C
    sw      t4, 0x0008(t2)             # FFFFFFF0
    beq     v0, $zero, lbl_80033A18
    or      a0, s4, $zero              # a0 = 00000000
    lw      t5, 0x00A8($sp)
    lw      t6, 0x00AC($sp)
    lw      t7, 0x00B0($sp)
    lw      t8, 0x00C0($sp)
    andi    a1, s8, 0xFFFF             # a1 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    or      a3, s3, $zero              # a3 = 00000000
    sw      s0, 0x001C($sp)
    swc1    $f20, 0x0020($sp)
    sw      t5, 0x0010($sp)
    sw      t6, 0x0014($sp)
    sw      t7, 0x0018($sp)
    jal     func_8003378C
    sw      t8, 0x0024($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80033A18
    lw      t9, 0x00B4($sp)
    sw      s0, 0x0000(t9)             # 00000000
    addiu   s6, $zero, 0x0001          # s6 = 00000001
lbl_80033A18:
    addiu   s0, s0, 0x0001             # s0 = 00000004
lbl_80033A1C:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     s0, $at, lbl_80033904
    addiu   s1, s1, 0x0002             # s1 = 00000002
    or      v0, s6, $zero              # v0 = 00000001
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    lw      s5, 0x004C($sp)
    lw      s6, 0x0050($sp)
    lw      s7, 0x0054($sp)
    lw      s8, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_80033A60:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s5, 0x0030($sp)
    sw      s3, 0x0028($sp)
    sw      a1, 0x003C($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    ori     s3, $zero, 0xFFFF          # s3 = 0000FFFF
    or      s5, a3, $zero              # s5 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s4, 0x002C($sp)
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    sdc1    $f20, 0x0010($sp)
    sw      a2, 0x0040($sp)
    lw      t6, 0x004C($sp)
    andi    s4, a1, 0x0007             # s4 = 00000000
    sll     s4, s4, 13
    lhu     v0, 0x0000(t6)             # 00000000
    addiu   s2, a0, 0x0050             # s2 = 00000050
    bne     s3, v0, lbl_80033ABC
    sll     t8, v0,  2
    b       lbl_80033B50
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80033ABC:
    lw      t7, 0x1448(a0)             # 00001448
    lw      v1, 0x13F0(s2)             # 00001440
    lwc1    $f20, 0x0048($sp)
    addu    s0, t7, t8
lbl_80033ACC:
    lh      v0, 0x0000(s0)             # 00000000
    or      a2, s5, $zero              # a2 = 00000000
    sll     t9, v0,  4
    addu    s1, v1, t9
    lhu     t0, 0x0002(s1)             # 00000002
    or      a0, s1, $zero              # a0 = 00000000
    and     t1, t0, s4
    beql    t1, $zero, lbl_80033B10
    mfc1    a3, $f20
    lhu     v0, 0x0002(s0)             # 00000002
    beql    s3, v0, lbl_80033B50
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t2, 0x13F8(s2)             # 00001448
    sll     t3, v0,  2
    b       lbl_80033ACC
    addu    s0, t2, t3
    mfc1    a3, $f20
lbl_80033B10:
    jal     func_8002BF8C
    lw      a1, 0x13F4(s2)             # 00001444
    beql    v0, $zero, lbl_80033B34
    lhu     v0, 0x0002(s0)             # 00000002
    lw      t4, 0x0040($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    b       lbl_80033B50
    sw      s1, 0x0000(t4)             # 00000000
    lhu     v0, 0x0002(s0)             # 00000002
lbl_80033B34:
    beq     s3, v0, lbl_80033B4C
    sll     t6, v0,  2
    lw      t5, 0x13F8(s2)             # 00001448
    lw      v1, 0x13F0(s2)             # 00001440
    b       lbl_80033ACC
    addu    s0, t5, t6
lbl_80033B4C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80033B50:
    lw      $ra, 0x0034($sp)
    ldc1    $f20, 0x0010($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    lw      s4, 0x002C($sp)
    lw      s5, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80033B78:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lhu     v1, 0x0042($sp)
    lhu     a1, 0x002E($sp)
    lw      a2, 0x0030($sp)
    andi    t6, v1, 0x0001             # t6 = 00000000
    bne     t6, $zero, lbl_80033BF0
    lw      a3, 0x0034($sp)
    lw      t7, 0x003C($sp)
    lwc1    $f4, 0x0038($sp)
    sw      v1, 0x0024($sp)
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  3
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, a0, t8
    addiu   t0, t9, 0x005E             # t0 = 0000005E
    sw      t0, 0x0014($sp)
    sw      a0, 0x0028($sp)
    jal     func_80033A60
    swc1    $f4, 0x0010($sp)
    lw      v1, 0x0024($sp)
    beq     v0, $zero, lbl_80033BF0
    lw      a0, 0x0028($sp)
    b       lbl_80033CA8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80033BF0:
    andi    t1, v1, 0x0002             # t1 = 00000000
    bne     t1, $zero, lbl_80033C50
    lhu     a1, 0x002E($sp)
    lw      t2, 0x003C($sp)
    lwc1    $f6, 0x0038($sp)
    lw      a2, 0x0030($sp)
    sll     t3, t2,  2
    subu    t3, t3, t2
    sll     t3, t3,  3
    addu    t3, t3, t2
    sll     t3, t3,  2
    addu    t4, a0, t3
    addiu   t5, t4, 0x0060             # t5 = 00000060
    sw      t5, 0x0014($sp)
    lw      a3, 0x0034($sp)
    sw      v1, 0x0024($sp)
    sw      a0, 0x0028($sp)
    jal     func_80033A60
    swc1    $f6, 0x0010($sp)
    lw      v1, 0x0024($sp)
    beq     v0, $zero, lbl_80033C50
    lw      a0, 0x0028($sp)
    b       lbl_80033CA8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80033C50:
    andi    t6, v1, 0x0004             # t6 = 00000000
    bne     t6, $zero, lbl_80033CA4
    lhu     a1, 0x002E($sp)
    lw      t7, 0x003C($sp)
    lwc1    $f8, 0x0038($sp)
    lw      a2, 0x0030($sp)
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  3
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, a0, t8
    addiu   t0, t9, 0x0062             # t0 = 00000062
    sw      t0, 0x0014($sp)
    lw      a3, 0x0034($sp)
    jal     func_80033A60
    swc1    $f8, 0x0010($sp)
    beql    v0, $zero, lbl_80033CA8
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80033CA8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80033CA4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80033CA8:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80033CB8:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s3, 0x003C($sp)
    or      s3, a0, $zero              # s3 = 00000000
    andi    s5, a1, 0xFFFF             # s5 = 00000000
    or      s6, a2, $zero              # s6 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s7, 0x004C($sp)
    sw      s4, 0x0040($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a1, 0x0074($sp)
    sw      a3, 0x007C($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    or      s2, s3, $zero              # s2 = 00000000
    lwc1    $f20, 0x0084($sp)
    addiu   s8, $zero, 0x0032          # s8 = 00000032
    lhu     s7, 0x008E($sp)
    lw      s4, 0x0088($sp)
    lw      s1, 0x0080($sp)
lbl_80033D18:
    lhu     t6, 0x13DC(s2)             # 000013DC
    sll     t8, s0,  2
    subu    t8, t8, s0
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80033DCC
    sll     t8, t8,  3
    addu    t8, t8, s0
    sll     t8, t8,  2
    addu    v0, s3, t8
    lw      t9, 0x0054(v0)             # 00000054
    beql    s4, t9, lbl_80033DD0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lwc1    $f4, 0x0000(s1)            # 00000000
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFF4
    addiu   a1, v0, 0x00A8             # a1 = 000000A8
    trunc.w.s $f6, $f4
    trunc.w.s $f4, $f20
    mfc1    t1, $f6
    nop
    sh      t1, 0x0064($sp)
    lwc1    $f8, 0x0004(s1)            # 00000004
    mfc1    t7, $f4
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    sh      t3, 0x0066($sp)
    lwc1    $f16, 0x0008(s1)           # 00000008
    sh      t7, 0x006A($sp)
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    jal     func_800A9B08
    sh      t5, 0x0068($sp)
    beq     v0, $zero, lbl_80033DCC
    or      a0, s3, $zero              # a0 = 00000000
    andi    a1, s5, 0xFFFF             # a1 = 00000000
    or      a2, s6, $zero              # a2 = 00000000
    or      a3, s1, $zero              # a3 = 00000000
    swc1    $f20, 0x0010($sp)
    sw      s0, 0x0014($sp)
    jal     func_80033B78
    sw      s7, 0x0018($sp)
    beql    v0, $zero, lbl_80033DD0
    addiu   s0, s0, 0x0001             # s0 = 00000002
    b       lbl_80033DDC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80033DCC:
    addiu   s0, s0, 0x0001             # s0 = 00000003
lbl_80033DD0:
    bne     s0, s8, lbl_80033D18
    addiu   s2, s2, 0x0002             # s2 = 00000002
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80033DDC:
    lw      $ra, 0x0054($sp)
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
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_80033E10:
# A0 = ptr to Collision Data
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t1, 0x00FF                 # t1 = 00FF0000
    ori     t1, t1, 0xFFFF             # t1 = 00FFFFFF
    addiu   t0, t0, 0x0C38             # t0 = 80120C38
    lui     t2, 0x8000                 # t2 = 80000000
    lw      v0, 0x0010(a0)             # 00000010
    lw      v1, 0x0018(a0)             # 00000018
    lw      a1, 0x001C(a0)             # 0000001C
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t0, t8
    lw      t3, 0x0000(t9)             # 00000000
    and     t4, v0, t1
    sll     t7, v1,  4
    srl     t8, t7, 28
    addu    t5, t3, t4
    addu    t6, t5, t2
    sll     t9, t8,  2
    sw      t6, 0x0010(a0)             # 00000010
    addu    t3, t0, t9
    lw      t4, 0x0000(t3)             # 00000000
    and     t5, v1, t1
    sll     t8, a1,  4
    srl     t9, t8, 28
    addu    t6, t4, t5
    addu    t7, t6, t2
    sll     t3, t9,  2
    lw      a2, 0x0020(a0)             # 00000020
    sw      t7, 0x0018(a0)             # 00000018
    addu    t4, t0, t3
    lw      t5, 0x0000(t4)             # 00000000
    and     t6, a1, t1
    sll     t9, a2,  4
    srl     t3, t9, 28
    addu    t7, t5, t6
    addu    t8, t7, t2
    sll     t4, t3,  2
    lw      a3, 0x0028(a0)             # 00000028
    sw      t8, 0x001C(a0)             # 0000001C
    addu    t5, t0, t4
    lw      t6, 0x0000(t5)             # 00000000
    and     t7, a2, t1
    sll     t3, a3,  4
    srl     t4, t3, 28
    addu    t8, t6, t7
    addu    t9, t8, t2
    sll     t5, t4,  2
    sw      t9, 0x0020(a0)             # 00000020
    addu    t6, t0, t5
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, a3, t1
    addu    t9, t7, t8
    addu    t3, t9, t2
    sw      t3, 0x0028(a0)             # 00000028
    jr      $ra
    nop


func_80033EF4:
# Convert Poly Collision Segment Addresses to real addresses
# A0 = Segment Offset to Collision Data
# A1 = ptr to store result?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sll     t6, a2,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0
    addu    a0, t1, $at
    jal     func_80033E10
    sw      a0, 0x0000(a1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80033F48:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s4, 0x0028($sp)
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    addiu   s3, a0, 0x0050             # s3 = 00000050
    or      s2, s3, $zero              # s2 = 00000050
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s6, $zero, 0x0032          # s6 = 00000032
    addiu   s5, $zero, 0x0064          # s5 = 00000064
lbl_80033F84:
    lhu     v0, 0x138C(s2)             # 000013DC
    andi    t6, v0, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80033FBC
    andi    t7, v0, 0x0002             # t7 = 00000000
    bnel    t7, $zero, lbl_80033FC0
    addiu   s1, s1, 0x0001             # s1 = 00000001
    multu   s1, s5
    or      a0, s4, $zero              # a0 = 00000000
    mflo    t8
    addu    s0, s3, t8
    jal     func_80020FA4
    lw      a1, 0x0004(s0)             # 00000004
    jal     func_80033E10
    lw      a0, 0x0008(s0)             # 00000008
lbl_80033FBC:
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80033FC0:
    bne     s1, s6, lbl_80033F84
    addiu   s2, s2, 0x0002             # s2 = 00000052
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


func_80033FF0:
# Collision, Zero Checked Polys
# Global Context + 0x80C Array
# Zeros A1 bytes, beginning at the array start
# A0 = Global Context + 0x804
# A1 = Number of Polys (in the scene?)
    lw      v0, 0x0008(a0)             # 00000008
    addu    t6, v0, a1
    sltu    $at, v0, t6
    beq     $at, $zero, lbl_80034020
    nop
    sb      $zero, 0x0000(v0)          # 00000000
lbl_80034008:
    lw      t7, 0x0008(a0)             # 00000008
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addu    t8, t7, a1
    sltu    $at, v0, t8
    bnel    $at, $zero, lbl_80034008
    sb      $zero, 0x0000(v0)          # 00000001
lbl_80034020:
    jr      $ra
    nop


func_80034028:
# Collision, look up poly surface type
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id. 0x32 = Scene
# A3 = 0 returns high word, 1 returns low word
# V0 = High (0x00) or Low (0x04) word
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a3, 0x0024($sp)
    jal     func_8002F054
    or      a1, a2, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80034050
    lw      a0, 0x001C($sp)
    bne     a0, $zero, lbl_80034058
    lui     t7, 0x8012                 # t7 = 80120000
lbl_80034050:
    b       lbl_80034090
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80034058:
    lw      v1, 0x001C(v0)             # 0000001C
    lw      t7, 0x0C38(t7)             # 80120C38
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, v1, $at
    bne     t6, t7, lbl_80034078
    lw      t1, 0x0024($sp)
    b       lbl_80034090
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80034078:
    lhu     t8, 0x0000(a0)             # 00000000
    sll     t2, t1,  2
    sll     t9, t8,  3
    addu    t0, v1, t9
    addu    t3, t0, t2
    lw      v0, 0x0000(t3)             # 00000000
lbl_80034090:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800340A0:
# Get PolyType High Word &>> 0x0000 00FF
# (Camera Data Index)
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0xFF)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    or      a3, $zero, $zero           # a3 = 00000000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800340C4:
# Get Camera S from Camera Data
# A0 = Global Context + 0x7C0
# A1 = Camera Data Index
# A2 = Mesh Collision Id
# V0 = Camera S value
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002F054
    or      a1, a2, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_800340E8
    or      a1, v0, $zero              # a1 = 00000000
    b       lbl_800340FC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800340E8:
    lw      t6, 0x001C($sp)
    lw      v1, 0x0020(a1)             # 00000020
    sll     t7, t6,  3
    addu    t8, v1, t7
    lhu     v0, 0x0000(t8)             # 00000000
lbl_800340FC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003410C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    jal     func_8002F054
    lw      a1, 0x0020($sp)
    bne     v0, $zero, lbl_8003413C
    lui     a0, 0x8012                 # a0 = 80120000
    b       lbl_80034190
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8003413C:
    lw      a0, 0x0C38(a0)             # 80120C38
    lw      v1, 0x0020(v0)             # 00000020
    lui     $at, 0x8000                # $at = 80000000
    addu    a0, a0, $at
    bnel    v1, a0, lbl_80034160
    lw      v1, 0x001C(v0)             # 0000001C
    b       lbl_80034190
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v1, 0x001C(v0)             # 0000001C
lbl_80034160:
    lw      a1, 0x001C($sp)
    lw      a2, 0x0020($sp)
    bne     v1, a0, lbl_80034178
    nop
    b       lbl_80034190
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80034178:
    jal     func_800340A0
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_800340C4
    lw      a2, 0x0020($sp)
lbl_80034190:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800341A0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002F054
    or      a1, a2, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_800341C4
    lw      $ra, 0x0014($sp)
    b       lbl_800341F4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800341C4:
    lw      v1, 0x0020(v0)             # 00000020
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, 0x0C38(t7)             # 80120C38
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, v1, $at
    bne     t6, t7, lbl_800341E8
    lw      t8, 0x001C($sp)
    b       lbl_800341F4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800341E8:
    sll     t9, t8,  3
    addu    t0, v1, t9
    lhu     v0, 0x0002(t0)             # 00000002
lbl_800341F4:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800341FC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    jal     func_8002F054
    lw      a1, 0x0020($sp)
    bne     v0, $zero, lbl_8003422C
    lui     a0, 0x8012                 # a0 = 80120000
    b       lbl_80034280
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8003422C:
    lw      a0, 0x0C38(a0)             # 80120C38
    lw      v1, 0x0020(v0)             # 00000020
    lui     $at, 0x8000                # $at = 80000000
    addu    a0, a0, $at
    bnel    v1, a0, lbl_80034250
    lw      v1, 0x001C(v0)             # 0000001C
    b       lbl_80034280
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v1, 0x001C(v0)             # 0000001C
lbl_80034250:
    lw      a1, 0x001C($sp)
    lw      a2, 0x0020($sp)
    bne     v1, a0, lbl_80034268
    nop
    b       lbl_80034280
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80034268:
    jal     func_800340A0
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_800341A0
    lw      a2, 0x0020($sp)
lbl_80034280:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80034290:
# Collision, Get Camera Info?
# something for jpeg background for static, multi-background pre-rendered areas
# A0 = Global context + 0x7C0
# A1 = Mesh Camera Data Index (Jpeg frame index)
# A2 = Mesh Collision Id
# V0 = Ptr to Camera Data
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002F054
    or      a1, a2, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_800342B4
    lw      $ra, 0x0014($sp)
    b       lbl_80034310
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800342B4:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x0C38             # a1 = 80120C38
    lw      t6, 0x0000(a1)             # 80120C38
    lw      a0, 0x0020(v0)             # 00000020
    lui     a2, 0x8000                 # a2 = 80000000
    addu    t7, t6, a2
    bne     a0, t7, lbl_800342DC
    lw      t8, 0x001C($sp)
    b       lbl_80034310
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800342DC:
    sll     t9, t8,  3
    addu    t0, a0, t9
    lw      v1, 0x0004(t0)             # 00000004
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t2, v1,  4
    srl     t3, t2, 28
    sll     t4, t3,  2
    addu    t5, a1, t4
    lw      t6, 0x0000(t5)             # 00000000
    and     t1, v1, $at
    addu    t7, t1, t6
    addu    v0, t7, a2
lbl_80034310:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80034318:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    jal     func_8002F054
    lw      a1, 0x0020($sp)
    bne     v0, $zero, lbl_80034348
    lui     a0, 0x8012                 # a0 = 80120000
    b       lbl_8003439C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80034348:
    lw      a0, 0x0C38(a0)             # 80120C38
    lw      v1, 0x0020(v0)             # 00000020
    lui     $at, 0x8000                # $at = 80000000
    addu    a0, a0, $at
    bnel    v1, a0, lbl_8003436C
    lw      v1, 0x001C(v0)             # 0000001C
    b       lbl_8003439C
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v1, 0x001C(v0)             # 0000001C
lbl_8003436C:
    lw      a1, 0x001C($sp)
    lw      a2, 0x0020($sp)
    bne     v1, a0, lbl_80034384
    nop
    b       lbl_8003439C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80034384:
    jal     func_800340A0
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80034290
    lw      a2, 0x0020($sp)
lbl_8003439C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800343AC:
# Get PolyType High Word &>> 0x0000 1F00
# (Scene Exit Table Index)
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0x1F)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    or      a3, $zero, $zero           # a3 = 00000000
    srl     v0, v0,  8
    andi    v0, v0, 0x001F             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800343D4:
# Get PolyType High Word &>> 0x0003 E000
# (Special, mostly floor related)
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0x1F)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    or      a3, $zero, $zero           # a3 = 00000000
    srl     v0, v0, 13
    andi    v0, v0, 0x001F             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800343FC:
# Get PolyType High Word &>> 0x001C 0000
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0x7)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    or      a3, $zero, $zero           # a3 = 00000000
    srl     v0, v0, 18
    andi    v0, v0, 0x0007             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80034424:
# Get PolyType High Word &>> 0x03E0 0000
# (Wall settings)
# Always used through 8003444C?
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0x1F)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    or      a3, $zero, $zero           # a3 = 00000000
    srl     v0, v0, 21
    andi    v0, v0, 0x001F             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003444C:
# Get wall settings in lookup table (at 800EC020)
# Multiplies the wall settings part of the poltype by 4 and uses it as the offset in the table
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = s32 stored in table
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034424
    nop
    sll     t6, v0,  2
    lui     v0, 0x800F                 # v0 = 800F0000
    addu    v0, v0, t6
    lw      v0, -0x3FE0(v0)            # 800EC020
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003447C:
# Tests if cannot grab ledge?
# Checks wall settings in table at 800EC020 & 0x01
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = 1 if true, else 0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8003444C
    nop
    andi    t6, v0, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_800344A0
    lw      $ra, 0x0014($sp)
    b       lbl_800344A4
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_800344A0:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_800344A4:
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800344B0:
# Tests if ladder?
# Checks wall settings in table at 800EC020 & 0x02
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = 1 if true, else 0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8003444C
    nop
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_800344D4
    lw      $ra, 0x0014($sp)
    b       lbl_800344D8
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_800344D4:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_800344D8:
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800344E4:
# Tests if ladder top?
# Checks wall settings in table at 800EC020 & 0x04
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = 1 if true, else 0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8003444C
    nop
    andi    t6, v0, 0x0004             # t6 = 00000000
    beq     t6, $zero, lbl_80034508
    lw      $ra, 0x0014($sp)
    b       lbl_8003450C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80034508:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8003450C:
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80034518:
# Get PolyType High Word &>> 0x3C00 0000
# (Floor settings)
# Unused, duplicate of 80034540?
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0xF)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    or      a3, $zero, $zero           # a3 = 00000000
    srl     v0, v0, 26
    andi    v0, v0, 0x000F             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80034540:
# Get PolyType High Word &>> 0x3C00 0000
# (Floor settings)
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0xF)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    or      a3, $zero, $zero           # a3 = 00000000
    srl     v0, v0, 26
    andi    v0, v0, 0x000F             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80034568:
# Get PolyType High Word &>> 0x4000 0000
# (Paths?)
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0x1)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    or      a3, $zero, $zero           # a3 = 00000000
    srl     v0, v0, 30
    andi    v0, v0, 0x0001             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80034590:
# Get PolyType High Word &>> 0x8000 0000
# (Epona walk settings)
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0x1)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    or      a3, $zero, $zero           # a3 = 00000000
    srl     v0, v0, 31
    andi    v0, v0, 0x0001             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800345B8:
# Get PolyType Low Word &>> 0x0000 000F
# (Sound Effect/Material Type)
# A0 = Global Context + 0x7C0
# A1 = Ptr to polygon detected
# A2 = Mesh Collision Id
# V0 = Result (& 0xF)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    andi    v0, v0, 0x000F             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800345DC:
# Get sound effect/material type in lookup table (at 800EC0A0)
# Multiplies the sound effect/material type part of the poltype by 2 and uses it as the offset in the table
# Except for 0xE and 0xF which are set to 0
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = s32 stored in table for 0x0-0xD, 0 if 0xE or 0xF
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800345B8
    nop
    bltz    v0, lbl_80034600
    or      v1, v0, $zero              # v1 = 00000000
    slti    $at, v0, 0x000E
    bne     $at, $zero, lbl_80034608
    sll     t6, v1,  1
lbl_80034600:
    b       lbl_80034614
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80034608:
    lui     v0, 0x800F                 # v0 = 800F0000
    addu    v0, v0, t6
    lhu     v0, -0x3F60(v0)            # 800EC0A0
lbl_80034614:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80034624:
# Get PolyType Low Word &>> 0x0000 0030
# (Terrain Slope Surface)
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0x3)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    srl     v0, v0,  4
    andi    v0, v0, 0x0003             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003464C:
# Get PolyType Low Word &>> 0x0000 07C0
# (Lighting Setting)
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0x1F)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    srl     v0, v0,  6
    andi    v0, v0, 0x001F             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80034674:
# Get PolyType Low Word &>> 0x0001 F800
# (Echo)
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0x3F)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    srl     v0, v0, 11
    andi    v0, v0, 0x003F             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003469C:
# Get PolyType Low Word &>> 0x0002 0000
# (Hookshot Surface)
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0x1)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    srl     v0, v0, 17
    andi    v0, v0, 0x0001             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800346C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002F054
    or      a1, a2, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_800346E8
    lw      $ra, 0x0014($sp)
    b       lbl_800346F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800346E8:
    lw      t6, 0x001C($sp)
    lhu     v1, 0x0002(t6)             # 00000002
    andi    v1, v1, 0x4000             # v1 = 00000000
    sltu    v0, $zero, v1
lbl_800346F8:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80034700:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002F054
    or      a1, a2, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80034724
    lw      $ra, 0x0014($sp)
    b       lbl_80034734
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80034724:
    lw      t6, 0x001C($sp)
    lhu     v1, 0x0002(t6)             # 00000002
    andi    v1, v1, 0x8000             # v1 = 00000000
    sltu    v0, $zero, v1
lbl_80034734:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8003473C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002F054
    or      a1, a2, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80034760
    lw      $ra, 0x0014($sp)
    b       lbl_80034770
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80034760:
    lw      t6, 0x001C($sp)
    lhu     v1, 0x0004(t6)             # 00000004
    andi    v1, v1, 0x2000             # v1 = 00000000
    sltu    v0, $zero, v1
lbl_80034770:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80034778:
# Get PolyType Low Word &>> 0x001C 0000
# (Conveyor Surface Speed)
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0x7)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    srl     v0, v0, 18
    andi    v0, v0, 0x0007             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800347A0:
# Get PolyType Low Word &>> 0x07E0 0000
# (Conveyor Surface Direction)
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = Result (& 0x3F)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    srl     v0, v0, 21
    andi    v0, v0, 0x003F             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800347C8:
# Tests if poly surface type is damage wall surface?
# Checks if low word is & 0x0800 0000
# A0 = Global Context + 0x7C0
# A1 = Polygon*
# A2 = Mesh Collision Id
# V0 = 1 if damage wall surface, else 0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80034028
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sll     t6, v0,  4
    bgez    t6, lbl_800347EC
    lw      $ra, 0x0014($sp)
    b       lbl_800347F0
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_800347EC:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_800347F0:
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800347FC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    sw      $ra, 0x001C($sp)
    lh      t6, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x0058         # $at = 00000058
    bne     t6, $at, lbl_800348DC
    lui     $at, 0x800F                # $at = 800F0000
    lwc1    $f4, -0x3EB4($at)          # 800EC14C
    lui     $at, 0x800F                # $at = 800F0000
    c.lt.s  $f4, $f12
    nop
    bc1fl   lbl_800348E0
    lw      t1, 0x0030($sp)
    lwc1    $f6, -0x3EA8($at)          # 800EC158
    lui     $at, 0x800F                # $at = 800F0000
    lw      t7, 0x0030($sp)
    c.lt.s  $f12, $f6
    nop
    bc1fl   lbl_800348E0
    lw      t1, 0x0030($sp)
    lwc1    $f0, 0x0000(t7)            # 00000000
    lwc1    $f8, -0x3EB0($at)          # 800EC150
    lui     $at, 0x800F                # $at = 800F0000
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_800348E0
    lw      t1, 0x0030($sp)
    lwc1    $f10, -0x3EA4($at)         # 800EC15C
    lui     $at, 0x800F                # $at = 800F0000
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_800348E0
    lw      t1, 0x0030($sp)
    lwc1    $f16, -0x3EAC($at)         # 800EC154
    lui     $at, 0x800F                # $at = 800F0000
    c.lt.s  $f16, $f14
    nop
    bc1fl   lbl_800348E0
    lw      t1, 0x0030($sp)
    lwc1    $f18, -0x3EA0($at)         # 800EC160
    lw      t8, 0x0034($sp)
    c.lt.s  $f14, $f18
    nop
    bc1f    lbl_800348DC
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0xC13C             # v1 = 800EC13C
    sw      v1, 0x0000(t8)             # 00000000
    lh      t9, 0x0002(v1)             # 800EC13E
    lw      t0, 0x0030($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    b       lbl_800348F8
    swc1    $f6, 0x0000(t0)            # 00000000
lbl_800348DC:
    lw      t1, 0x0030($sp)
lbl_800348E0:
    lw      t2, 0x0034($sp)
    mfc1    a2, $f12
    mfc1    a3, $f14
    sw      t1, 0x0010($sp)
    jal     func_80034908
    sw      t2, 0x0014($sp)
lbl_800348F8:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80034908:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    or      a2, a0, $zero              # a2 = 00000000
    sw      a0, 0x0000($sp)
    lw      v0, 0x0000(a1)             # 00000000
    lui     t7, 0x8012                 # t7 = 80120000
    lhu     v1, 0x0024(v0)             # 00000024
    beq     v1, $zero, lbl_80034944
    nop
    lw      a0, 0x0028(v0)             # 00000028
    lw      t7, 0x0C38(t7)             # 80120C38
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, a0, $at
    bne     t6, t7, lbl_8003494C
    sll     t8, v1,  4
lbl_80034944:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8003494C:
    addu    v0, a0, t8
    sltu    $at, a0, v0
    beq     $at, $zero, lbl_80034A54
    or      a1, a0, $zero              # a1 = 00000000
    lui     a3, 0x0001                 # a3 = 00010000
    addu    a3, a3, a2
    lb      a3, 0x1CBC(a3)             # 00011CBC
    addiu   a2, $zero, 0x003F          # a2 = 0000003F
    lui     t0, 0x0008                 # t0 = 00080000
    lw      a0, 0x000C(a1)             # 0000000C
lbl_80034974:
    srl     v1, a0, 13
    andi    v1, v1, 0x003F             # v1 = 00000000
    beq     v1, a3, lbl_8003498C
    and     t9, a0, t0
    bnel    v1, a2, lbl_80034A48
    addiu   a1, a1, 0x0010             # a1 = 00000010
lbl_8003498C:
    bnel    t9, $zero, lbl_80034A48
    addiu   a1, a1, 0x0010             # a1 = 00000020
    lh      v1, 0x0000(a1)             # 00000020
    mtc1    v1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.lt.s  $f6, $f12
    nop
    bc1fl   lbl_80034A48
    addiu   a1, a1, 0x0010             # a1 = 00000030
    lh      t1, 0x0006(a1)             # 00000036
    addu    t2, v1, t1
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    c.lt.s  $f12, $f10
    nop
    bc1fl   lbl_80034A48
    addiu   a1, a1, 0x0010             # a1 = 00000040
    lh      v1, 0x0004(a1)             # 00000044
    mtc1    v1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    c.lt.s  $f18, $f14
    nop
    bc1fl   lbl_80034A48
    addiu   a1, a1, 0x0010             # a1 = 00000050
    lh      t3, 0x0008(a1)             # 00000058
    addu    t4, v1, t3
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.lt.s  $f14, $f6
    nop
    bc1fl   lbl_80034A48
    addiu   a1, a1, 0x0010             # a1 = 00000060
    lw      t5, 0x0014($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      a1, 0x0000(t5)             # 00000000
    lh      t6, 0x0002(a1)             # 00000062
    lw      t7, 0x0010($sp)
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    jr      $ra
    swc1    $f10, 0x0000(t7)           # 80120000
lbl_80034A44:
    addiu   a1, a1, 0x0010             # a1 = 00000070
lbl_80034A48:
    sltu    $at, a1, v0
    bnel    $at, $zero, lbl_80034974
    lw      a0, 0x000C(a1)             # 0000007C
lbl_80034A54:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80034A60:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      s0, 0x0004($sp)
    mtc1    a3, $f12                   # $f12 = 0.00
    or      s0, a2, $zero              # s0 = 00000000
    sw      a0, 0x0008($sp)
    lw      v0, 0x0000(a1)             # 00000000
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t8, 0x0018($sp)
    lhu     a3, 0x0024(v0)             # 00000024
    beql    a3, $zero, lbl_80034AA8
    sw      $zero, 0x0000(t8)          # 00000000
    lw      v1, 0x0028(v0)             # 00000028
    lw      t7, 0x0C38(t7)             # 80120C38
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, v1, $at
    bne     t6, t7, lbl_80034AB0
    nop
    sw      $zero, 0x0000(t8)          # 00000000
lbl_80034AA8:
    b       lbl_80034BF0
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80034AB0:
    blez    a3, lbl_80034BE4
    or      a0, $zero, $zero           # a0 = 00000000
    lw      t9, 0x0008($sp)
    lui     t0, 0x0001                 # t0 = 00010000
    or      v0, v1, $zero              # v0 = 00000000
    addu    t0, t0, t9
    lb      t0, 0x1CBC(t0)             # 00011CBC
    lui     t2, 0x0008                 # t2 = 00080000
    addiu   t1, $zero, 0x003F          # t1 = 0000003F
lbl_80034AD4:
    lw      a2, 0x000C(v0)             # 0000000C
    or      v1, v0, $zero              # v1 = 00000000
    srl     a1, a2, 13
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     a1, t0, lbl_80034AF4
    and     t3, a2, t2
    bnel    a1, t1, lbl_80034BD8
    addiu   a0, a0, 0x0001             # a0 = 00000001
lbl_80034AF4:
    bnel    t3, $zero, lbl_80034BD8
    addiu   a0, a0, 0x0001             # a0 = 00000002
    lh      a1, 0x0000(v1)             # 00000000
    lwc1    $f0, 0x0000(s0)            # 00000000
    mtc1    a1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_80034BD8
    addiu   a0, a0, 0x0001             # a0 = 00000003
    lh      t4, 0x0006(v1)             # 00000006
    addu    t5, a1, t4
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_80034BD8
    addiu   a0, a0, 0x0001             # a0 = 00000004
    lh      a1, 0x0004(v1)             # 00000004
    lwc1    $f0, 0x0008(s0)            # 00000008
    mtc1    a1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    c.lt.s  $f18, $f0
    nop
    bc1fl   lbl_80034BD8
    addiu   a0, a0, 0x0001             # a0 = 00000005
    lh      t6, 0x0008(v1)             # 00000008
    addu    t7, a1, t6
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_80034BD8
    addiu   a0, a0, 0x0001             # a0 = 00000006
    lh      t8, 0x0002(v1)             # 00000002
    lwc1    $f0, 0x0004(s0)            # 00000004
    mtc1    t8, $f8                    # $f8 = 0.00
    sub.s   $f10, $f0, $f12
    cvt.s.w $f2, $f8
    c.lt.s  $f10, $f2
    nop
    bc1fl   lbl_80034BD8
    addiu   a0, a0, 0x0001             # a0 = 00000007
    add.s   $f16, $f0, $f12
    c.lt.s  $f2, $f16
    nop
    bc1fl   lbl_80034BD8
    addiu   a0, a0, 0x0001             # a0 = 00000008
    lw      t9, 0x0018($sp)
    or      v0, a0, $zero              # v0 = 00000008
    b       lbl_80034BF0
    sw      v1, 0x0000(t9)             # 00000000
    addiu   a0, a0, 0x0001             # a0 = 00000009
lbl_80034BD8:
    slt     $at, a0, a3
    bne     $at, $zero, lbl_80034AD4
    addiu   v0, v0, 0x0010             # v0 = 00000018
lbl_80034BE4:
    lw      t3, 0x0018($sp)
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    sw      $zero, 0x0000(t3)          # 00000000
lbl_80034BF0:
    lw      s0, 0x0004($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_80034BFC:
    sw      a0, 0x0000($sp)
    lw      v1, 0x000C(a1)             # 0000000C
    andi    v0, v1, 0x00FF             # v0 = 00000000
    jr      $ra
    nop


func_80034C10:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80034BFC
    lw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, 0x0C38(t9)             # 80120C38
    lw      t7, 0x0000(t6)             # 00000000
    or      a1, v0, $zero              # a1 = 00000000
    lui     $at, 0x8000                # $at = 80000000
    lw      a0, 0x0020(t7)             # 00000020
    sll     t0, a1,  3
    lw      $ra, 0x0014($sp)
    addu    t8, a0, $at
    bne     t8, t9, lbl_80034C5C
    addu    t1, a0, t0
    b       lbl_80034C60
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80034C5C:
    lhu     v0, 0x0000(t1)             # 00000000
lbl_80034C60:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80034C68:
    sw      a0, 0x0000($sp)
    lw      v1, 0x000C(a1)             # 0000000C
    srl     v1, v1,  8
    andi    v0, v1, 0x001F             # v0 = 00000000
    jr      $ra
    nop


func_80034C80:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    or      a2, a0, $zero              # a2 = 00000000
    sw      a0, 0x0000($sp)
    lw      v0, 0x0000(a1)             # 00000000
    lui     t7, 0x8012                 # t7 = 80120000
    lhu     v1, 0x0024(v0)             # 00000024
    beq     v1, $zero, lbl_80034CBC
    nop
    lw      a0, 0x0028(v0)             # 00000028
    lw      t7, 0x0C38(t7)             # 80120C38
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, a0, $at
    bne     t6, t7, lbl_80034CC4
    sll     t8, v1,  4
lbl_80034CBC:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80034CC4:
    addu    v0, a0, t8
    sltu    $at, a0, v0
    beq     $at, $zero, lbl_80034DCC
    or      a1, a0, $zero              # a1 = 00000000
    lui     a3, 0x0001                 # a3 = 00010000
    addu    a3, a3, a2
    lb      a3, 0x1CBC(a3)             # 00011CBC
    addiu   a2, $zero, 0x003F          # a2 = 0000003F
    lui     t0, 0x0008                 # t0 = 00080000
    lw      a0, 0x000C(a1)             # 0000000C
lbl_80034CEC:
    srl     v1, a0, 13
    andi    v1, v1, 0x003F             # v1 = 00000000
    beq     v1, a3, lbl_80034D04
    and     t9, a0, t0
    bnel    v1, a2, lbl_80034DC0
    addiu   a1, a1, 0x0010             # a1 = 00000010
lbl_80034D04:
    beql    t9, $zero, lbl_80034DC0
    addiu   a1, a1, 0x0010             # a1 = 00000020
    lh      v1, 0x0000(a1)             # 00000020
    mtc1    v1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.lt.s  $f6, $f12
    nop
    bc1fl   lbl_80034DC0
    addiu   a1, a1, 0x0010             # a1 = 00000030
    lh      t1, 0x0006(a1)             # 00000036
    addu    t2, v1, t1
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    c.lt.s  $f12, $f10
    nop
    bc1fl   lbl_80034DC0
    addiu   a1, a1, 0x0010             # a1 = 00000040
    lh      v1, 0x0004(a1)             # 00000044
    mtc1    v1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    c.lt.s  $f18, $f14
    nop
    bc1fl   lbl_80034DC0
    addiu   a1, a1, 0x0010             # a1 = 00000050
    lh      t3, 0x0008(a1)             # 00000058
    addu    t4, v1, t3
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.lt.s  $f14, $f6
    nop
    bc1fl   lbl_80034DC0
    addiu   a1, a1, 0x0010             # a1 = 00000060
    lw      t5, 0x0014($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      a1, 0x0000(t5)             # 00000000
    lh      t6, 0x0002(a1)             # 00000062
    lw      t7, 0x0010($sp)
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    jr      $ra
    swc1    $f10, 0x0000(t7)           # 80120000
lbl_80034DBC:
    addiu   a1, a1, 0x0010             # a1 = 00000070
lbl_80034DC0:
    sltu    $at, a1, v0
    bnel    $at, $zero, lbl_80034CEC
    lw      a0, 0x000C(a1)             # 0000007C
lbl_80034DCC:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80034DD8:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFFC
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFF8
    jal     func_8002B610
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFF4
    lw      a0, 0x004C($sp)
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF0
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFEC
    jal     func_8002B610
    addiu   a3, $sp, 0x0030            # a3 = FFFFFFE8
    lw      t6, 0x0048($sp)
    lwc1    $f6, 0x0038($sp)
    lwc1    $f8, 0x0034($sp)
    lh      t7, 0x000E(t6)             # 0000000E
    lwc1    $f10, 0x0030($sp)
    lw      t8, 0x004C($sp)
    swc1    $f6, 0x0010($sp)
    swc1    $f8, 0x0014($sp)
    swc1    $f10, 0x0018($sp)
    lh      t9, 0x000E(t8)             # 0000000E
    mtc1    t7, $f4                    # $f4 = 0.00
    lw      t0, 0x0050($sp)
    mtc1    t9, $f16                   # $f16 = 0.00
    cvt.s.w $f4, $f4
    lw      t1, 0x0054($sp)
    lwc1    $f12, 0x0044($sp)
    lwc1    $f14, 0x0040($sp)
    lw      a2, 0x003C($sp)
    cvt.s.w $f18, $f16
    mfc1    a3, $f4
    sw      t0, 0x0020($sp)
    sw      t1, 0x0024($sp)
    jal     func_800A4DA8
    swc1    $f18, 0x001C($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80034E88:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    sw      a2, 0x0060($sp)
    sw      a3, 0x0064($sp)
    lw      a0, 0x0058($sp)
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFFC
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFF8
    jal     func_8002B610
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFF4
    lw      a0, 0x005C($sp)
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFF0
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFEC
    jal     func_8002B610
    addiu   a3, $sp, 0x0040            # a3 = FFFFFFE8
    lw      t6, 0x0058($sp)
    lwc1    $f6, 0x0048($sp)
    lwc1    $f8, 0x0044($sp)
    lh      t7, 0x000E(t6)             # 0000000E
    lwc1    $f10, 0x0040($sp)
    lw      t8, 0x005C($sp)
    swc1    $f6, 0x0010($sp)
    swc1    $f8, 0x0014($sp)
    swc1    $f10, 0x0018($sp)
    lh      t9, 0x000E(t8)             # 0000000E
    mtc1    t7, $f4                    # $f4 = 0.00
    lw      t0, 0x0060($sp)
    mtc1    t9, $f16                   # $f16 = 0.00
    cvt.s.w $f4, $f4
    lw      t1, 0x0064($sp)
    lw      t2, 0x0068($sp)
    lwc1    $f12, 0x0054($sp)
    lwc1    $f14, 0x0050($sp)
    cvt.s.w $f18, $f16
    mfc1    a3, $f4
    lw      a2, 0x004C($sp)
    sw      t0, 0x0020($sp)
    sw      t1, 0x0024($sp)
    sw      t2, 0x0028($sp)
    jal     func_800A46B0
    swc1    $f18, 0x001C($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80034F40:
    addiu   $sp, $sp, 0xFEF0           # $sp -= 0x110
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0110($sp)
    sw      a1, 0x0114($sp)
    sw      a2, 0x0118($sp)
    jal     func_80031264
    lw      a0, 0x0114($sp)
    beq     v0, $zero, lbl_8003506C
    lw      t7, 0x0114($sp)
    sll     t8, t7,  2
    subu    t8, t8, t7
    lw      t6, 0x0110($sp)
    sll     t8, t8,  3
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    v1, t6, t8
    lh      t9, 0x0074(v1)             # 00000074
    lw      a1, 0x0068(v1)             # 00000068
    lw      a2, 0x006C(v1)             # 0000006C
    lw      a3, 0x0070(v1)             # 00000070
    sw      t9, 0x0010($sp)
    lh      t0, 0x0076(v1)             # 00000076
    addiu   a0, $sp, 0x00D0            # a0 = FFFFFFC0
    sw      t0, 0x0014($sp)
    lh      t1, 0x0078(v1)             # 00000078
    sw      t1, 0x0018($sp)
    lwc1    $f4, 0x007C(v1)            # 0000007C
    swc1    $f4, 0x001C($sp)
    lwc1    $f6, 0x0080(v1)            # 00000080
    swc1    $f6, 0x0020($sp)
    lwc1    $f8, 0x0084(v1)            # 00000084
    sw      v1, 0x0034($sp)
    jal     func_8008F914
    swc1    $f8, 0x0024($sp)
    addiu   a0, $sp, 0x00D0            # a0 = FFFFFFC0
    jal     func_8008F208
    addiu   a1, $sp, 0x0090            # a1 = FFFFFF80
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8003506C
    lw      v1, 0x0034($sp)
    lh      t2, 0x0094(v1)             # 00000094
    lw      a1, 0x0088(v1)             # 00000088
    lw      a2, 0x008C(v1)             # 0000008C
    lw      a3, 0x0090(v1)             # 00000090
    sw      t2, 0x0010($sp)
    lh      t3, 0x0096(v1)             # 00000096
    addiu   a0, $sp, 0x0050            # a0 = FFFFFF40
    sw      t3, 0x0014($sp)
    lh      t4, 0x0098(v1)             # 00000098
    sw      t4, 0x0018($sp)
    lwc1    $f10, 0x009C(v1)           # 0000009C
    swc1    $f10, 0x001C($sp)
    lwc1    $f16, 0x00A0(v1)           # 000000A0
    swc1    $f16, 0x0020($sp)
    lwc1    $f18, 0x00A4(v1)           # 000000A4
    jal     func_8008F914
    swc1    $f18, 0x0024($sp)
    lw      a1, 0x0118($sp)
    addiu   a0, $sp, 0x0090            # a0 = FFFFFF80
    addiu   a2, $sp, 0x0038            # a2 = FFFFFF28
    addiu   a1, a1, 0x0024             # a1 = 00000024
    jal     func_8008ED08
    sw      a1, 0x0034($sp)
    addiu   a0, $sp, 0x0050            # a0 = FFFFFF40
    addiu   a1, $sp, 0x0038            # a1 = FFFFFF28
    jal     func_8008ED08
    addiu   a2, $sp, 0x0044            # a2 = FFFFFF34
    addiu   t7, $sp, 0x0044            # t7 = FFFFFF34
    lw      t8, 0x0000(t7)             # FFFFFF34
    lw      t5, 0x0034($sp)
    sw      t8, 0x0000(t5)             # 00000000
    lw      t6, 0x0004(t7)             # FFFFFF38
    sw      t6, 0x0004(t5)             # 00000004
    lw      t8, 0x0008(t7)             # FFFFFF3C
    sw      t8, 0x0008(t5)             # 00000008
lbl_8003506C:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0110           # $sp += 0x110
    jr      $ra
    nop


func_8003507C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_80031264
    sw      a2, 0x0020($sp)
    beq     v0, $zero, lbl_80035100
    lw      a2, 0x0020($sp)
    lw      t7, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lh      t1, 0x0000(a2)             # 00000000
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  3
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    v0, t6, t8
    lh      t9, 0x0096(v0)             # 00000096
    lh      t0, 0x0076(v0)             # 00000076
    subu    v1, t9, t0
    sll     v1, v1, 16
    bne     t1, $zero, lbl_800350E8
    sra     v1, v1, 16
    lh      t2, 0x082C(a2)             # 0000082C
    addu    t3, t2, v1
    sh      t3, 0x082C(a2)             # 0000082C
lbl_800350E8:
    lh      t4, 0x00B6(a2)             # 000000B6
    lh      t7, 0x0032(a2)             # 00000032
    addu    t5, t4, v1
    addu    t6, t7, v1
    sh      t5, 0x00B6(a2)             # 000000B6
    sh      t6, 0x0032(a2)             # 00000032
lbl_80035100:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80035110:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    jal     func_80031264
    lw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_80035170
    lw      a0, 0x0020($sp)
    jal     func_80031464
    lw      a1, 0x0028($sp)
    beq     v0, $zero, lbl_80035170
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80035290
    sw      v0, 0x001C($sp)
    lw      t6, 0x0024($sp)
    lui     v0, 0x0400                 # v0 = 04000000
    lw      a0, 0x001C($sp)
    lw      t7, 0x0004(t6)             # 00000004
    and     t8, t7, v0
    bnel    v0, t8, lbl_80035174
    lw      $ra, 0x0014($sp)
    jal     func_8003532C
    nop
lbl_80035170:
    lw      $ra, 0x0014($sp)
lbl_80035174:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80035180:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    sw      $zero, 0x0024($sp)
    jal     func_80031264
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_800351B4
    lw      a0, 0x0028($sp)
    b       lbl_80035248
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800351B4:
    sll     t6, s0,  1
    addu    t7, a0, t6
    lhu     v0, 0x13DC(t7)             # 000013DC
    andi    t8, v0, 0x0002             # t8 = 00000000
    bne     t8, $zero, lbl_800351D4
    andi    t9, v0, 0x0001             # t9 = 00000000
    bne     t9, $zero, lbl_800351DC
    nop
lbl_800351D4:
    b       lbl_80035248
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800351DC:
    jal     func_80031464
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_800351F4
    or      v1, v0, $zero              # v1 = 00000000
    b       lbl_80035248
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800351F4:
    lw      t0, 0x014C(v0)             # 0000014C
    lw      a0, 0x0028($sp)
    or      a1, s0, $zero              # a1 = 00000000
    andi    t1, t0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80035220
    lw      a2, 0x0030($sp)
    jal     func_80034F40
    sw      v1, 0x0020($sp)
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lw      v1, 0x0020($sp)
    sw      t2, 0x0024($sp)
lbl_80035220:
    lw      t3, 0x014C(v1)             # 0000014C
    lw      a0, 0x0028($sp)
    or      a1, s0, $zero              # a1 = 00000000
    andi    t4, t3, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_80035244
    lw      a2, 0x0030($sp)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    jal     func_8003507C
    sw      t5, 0x0024($sp)
lbl_80035244:
    lw      v0, 0x0024($sp)
lbl_80035248:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop


func_80035260:
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sw      t6, 0x013C(a0)             # 0000013C
    swc1    $f0, 0x0140(a0)            # 00000140
    swc1    $f0, 0x0144(a0)            # 00000144
    sw      a1, 0x014C(a0)             # 0000014C
    sb      $zero, 0x0150(a0)          # 00000150
    jr      $ra
    nop


func_80035284:
    sb      $zero, 0x0150(a0)          # 00000150
    jr      $ra
    nop


func_80035290:
    lbu     t6, 0x0150(a0)             # 00000150
    ori     t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0150(a0)             # 00000150
    jr      $ra
    nop


func_800352A4:
    lbu     t6, 0x0150(a0)             # 00000150
    ori     t7, t6, 0x0002             # t7 = 00000002
    sb      t7, 0x0150(a0)             # 00000150
    jr      $ra
    nop


func_800352B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80031464
    nop
    beq     v0, $zero, lbl_800352D8
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_800352A4
    nop
lbl_800352D8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800352E8:
    lbu     t6, 0x0150(a0)             # 00000150
    ori     t7, t6, 0x0004             # t7 = 00000004
    sb      t7, 0x0150(a0)             # 00000150
    jr      $ra
    nop


func_800352FC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80031464
    nop
    beq     v0, $zero, lbl_8003531C
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_800352E8
    nop
lbl_8003531C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003532C:
    lbu     t6, 0x0150(a0)             # 00000150
    ori     t7, t6, 0x0008             # t7 = 00000008
    sb      t7, 0x0150(a0)             # 00000150
    jr      $ra
    nop


func_80035340:
    lbu     t6, 0x0150(a0)             # 00000150
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_8003535C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8003535C:
    jr      $ra
    nop


func_80035364:
    lbu     t6, 0x0150(a0)             # 00000150
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80035380
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80035380:
    jr      $ra
    nop


func_80035388:
    lbu     t6, 0x0150(a0)             # 00000150
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0004             # t7 = 00000000
    beq     t7, $zero, lbl_800353A4
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800353A4:
    jr      $ra
    nop


func_800353AC:
    lbu     t6, 0x0150(a0)             # 00000150
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0008             # t7 = 00000000
    beq     t7, $zero, lbl_800353C8
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800353C8:
    jr      $ra
    nop


func_800353D0:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s0, 0x0038($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a0, 0x0090($sp)
    sw      a2, 0x0098($sp)
    sw      a3, 0x009C($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    lh      a0, 0x0148(s0)             # 00000148
    jal     func_80063684              # coss?
    swc1    $f0, 0x0068($sp)
    lwc1    $f4, 0x0140(s0)            # 00000140
    mtc1    $zero, $f6                 # $f6 = 0.00
    lh      t6, 0x009A($sp)
    lwc1    $f12, 0x0068($sp)
    c.le.s  $f6, $f4
    mtc1    t6, $f8                    # $f8 = 0.00
    mov.s   $f14, $f0
    lui     $at, 0xBF80                # $at = BF800000
    bc1f    lbl_80035438
    cvt.s.w $f10, $f8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    b       lbl_80035440
    nop
lbl_80035438:
    mtc1    $at, $f16                  # $f16 = 1.00
    nop
lbl_80035440:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6AF0($at)           # 80106AF0
    lwc1    $f6, 0x0024(s0)            # 00000024
    lh      t7, 0x00A2($sp)
    sub.s   $f0, $f10, $f4
    lh      t8, 0x009E($sp)
    lui     $at, 0x8010                # $at = 80100000
    lw      a0, 0x0090($sp)
    mul.s   $f8, $f0, $f14
    addiu   t9, $sp, 0x005C            # t9 = FFFFFFCC
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $sp, 0x0060            # t2 = FFFFFFD0
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    addiu   a1, $sp, 0x0084            # a1 = FFFFFFF4
    add.s   $f10, $f6, $f8
    mtc1    t7, $f6                    # $f6 = 0.00
    addiu   a2, $sp, 0x0078            # a2 = FFFFFFE8
    addiu   a3, $sp, 0x006C            # a3 = FFFFFFDC
    cvt.s.w $f8, $f6
    swc1    $f10, 0x0084($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    add.s   $f10, $f4, $f8
    mul.s   $f4, $f0, $f12
    swc1    $f10, 0x0088($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    mtc1    t8, $f10                   # $f10 = 0.00
    sw      a0, 0x0044($sp)
    sub.s   $f8, $f6, $f4
    lwc1    $f4, 0x6AF4($at)           # 80106AF4
    sw      s0, 0x0028($sp)
    cvt.s.w $f6, $f10
    swc1    $f8, 0x008C($sp)
    lwc1    $f10, 0x0084($sp)
    sw      t2, 0x0024($sp)
    sw      t1, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sub.s   $f8, $f6, $f4
    lwc1    $f4, 0x0088($sp)
    sw      $zero, 0x0018($sp)
    sw      t0, 0x0014($sp)
    mul.s   $f2, $f16, $f8
    swc1    $f4, 0x007C($sp)
    sw      t9, 0x0010($sp)
    mul.s   $f18, $f2, $f12
    add.s   $f6, $f18, $f10
    mul.s   $f8, $f2, $f14
    swc1    $f18, 0x004C($sp)
    swc1    $f6, 0x0078($sp)
    lwc1    $f6, 0x008C($sp)
    swc1    $f8, 0x0048($sp)
    lwc1    $f10, 0x0048($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    add.s   $f4, $f10, $f6
    swc1    $f8, 0x002C($sp)
    jal     func_800309D0
    swc1    $f4, 0x0080($sp)
    lw      a0, 0x0044($sp)
    beq     v0, $zero, lbl_80035538
    lwc1    $f18, 0x004C($sp)
    b       lbl_800355D4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80035538:
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f0                   # $f0 = 2.00
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0084($sp)
    addiu   t3, $sp, 0x005C            # t3 = FFFFFFCC
    mul.s   $f6, $f10, $f0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $sp, 0x0060            # t6 = FFFFFFD0
    addiu   a1, $sp, 0x0084            # a1 = FFFFFFF4
    addiu   a2, $sp, 0x0078            # a2 = FFFFFFE8
    addiu   a3, $sp, 0x006C            # a3 = FFFFFFDC
    sub.s   $f8, $f6, $f4
    lwc1    $f4, 0x008C($sp)
    swc1    $f8, 0x0084($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      s0, 0x0028($sp)
    sw      t6, 0x0024($sp)
    mul.s   $f6, $f10, $f0
    sw      t5, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    sub.s   $f10, $f6, $f4
    lwc1    $f4, 0x0048($sp)
    add.s   $f6, $f18, $f8
    swc1    $f10, 0x008C($sp)
    add.s   $f8, $f4, $f10
    swc1    $f6, 0x0078($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f8, 0x0080($sp)
    jal     func_800309D0
    swc1    $f6, 0x002C($sp)
    beql    v0, $zero, lbl_800355D4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    b       lbl_800355D4
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800355D4:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0090           # $sp += 0x90
    jr      $ra
    nop
    nop
    nop
