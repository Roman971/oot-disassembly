# "Scene" part of the code file
#
# Handles processing the scene header data, as well as manipulating objects and transitioning between gameplay and cutscenes.
#
# General Documentation about Scenes:
# - https://wiki.cloudmodding.com/oot/Scenes
# - https://wiki.cloudmodding.com/oot/Scenes_and_Rooms
#
# Starts at VRAM: 80081130 / VROM: AF7090
#

.section .text
func_80081130:
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    sw      a1, 0x0004($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sra     a0, a0, 16
    sll     t7, a0,  1
    lui     t8, 0x8010                 # t8 = 80100000
    addu    t8, t8, t7
    lhu     t8, -0x7388(t8)            # 800F8C78
    lhu     t6, 0x0070(v0)             # 8011A640
    lui     t1, 0x8010                 # t1 = 80100000
    addu    t1, t1, a0
    and     t0, t6, t8
    sh      t0, 0x0070(v0)             # 8011A640
    lbu     t1, -0x7340(t1)            # 800F8CC0
    sllv    t2, a1, t1
    or      t3, t0, t2                 # t3 = 00000000
    sh      t3, 0x0070(v0)             # 8011A640
    jr      $ra
    nop


func_80081188:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a1, 0x002C($sp)
    sll     a1, a1, 16
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8C70             # t8 = 800F8C70
    sll     a3, a1,  1
    addu    t0, a3, t8
    lw      t6, 0x0028($sp)
    lhu     t9, 0x0000(t0)             # 00000000
    lhu     t1, 0x0070(v0)             # 8011A640
    lw      t7, 0x1C44(t6)             # 00001C44
    lui     v1, 0x8010                 # v1 = 80100000
    and     a2, t9, t1
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    beq     a2, $zero, lbl_80081280
    sw      t7, 0x0024($sp)
    addu    v1, v1, a1
    lui     t2, 0x8010                 # t2 = 80100000
    lbu     v1, -0x7340(v1)            # 800F8CC0
    addiu   t2, t2, 0x8C78             # t2 = 800F8C78
    addu    a0, a3, t2
    lhu     t3, 0x0000(a0)             # 00000000
    srlv    a2, a2, v1
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    sll     t6, a2,  2
    lui     t7, 0x8010                 # t7 = 80100000
    and     t4, t1, t3
    sh      t4, 0x0070(v0)             # 8011A640
    addu    t7, t7, t6
    lw      t7, -0x7414(t7)            # 800F8BEC
    lhu     t5, 0x009C(v0)             # 8011A66C
    lui     t2, 0x8010                 # t2 = 80100000
    sllv    t8, t7, v1
    addiu   t2, t2, 0x8C74             # t2 = 800F8C74
    xor     t9, t5, t8
    bne     t0, t2, lbl_8008123C
    sh      t9, 0x009C(v0)             # 8011A66C
    or      t3, t4, $zero              # t3 = 00000000
    ori     t4, t3, 0x0100             # t4 = 00000100
    sh      t4, 0x0070(v0)             # 8011A640
lbl_8008123C:
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x8C78             # t6 = 800F8C78
    bne     a0, t6, lbl_80081258
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t7, 0x0068(v0)             # 8011A638
    sh      t5, 0x0F32(v0)             # 8011B502
lbl_80081258:
    lw      a0, 0x0028($sp)
    lw      a1, 0x0024($sp)
    jal     func_80079764
    sh      a2, 0x001E($sp)
    lw      t9, 0x0028($sp)
    lui     $at, 0x0001                # $at = 00010000
    lhu     a2, 0x001E($sp)
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    addu    $at, $at, t9
    sh      t8, 0x0998($at)            # 00010998
lbl_80081280:
    andi    v0, a2, 0x00FF             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80081294:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sll     a0, a0, 16
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sra     a0, a0, 16
    sra     a1, a1, 16
    sll     t7, a0,  2
    lui     t8, 0x8010                 # t8 = 80100000
    addu    t8, t8, t7
    lw      t8, -0x7360(t8)            # 800F8CA0
    lw      t6, 0x00A0(v0)             # 8011A670
    lui     t1, 0x8010                 # t1 = 80100000
    addu    t1, t1, a0
    and     t9, t6, t8
    sw      t9, 0x00A0(v0)             # 8011A670
    lbu     t1, -0x733C(t1)            # 800F8CC4
    sllv    t2, a1, t1
    or      t3, t9, t2                 # t3 = 00000000
    sw      t3, 0x00A0(v0)             # 8011A670
    jr      $ra
    nop


func_800812F0:
# ObjectSpawn
# Load Object File (even if it's already loaded)
# A0 = Object Allocation Table
# A1 = Object Id to load
# A2 = Global Context
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   v1, $zero, 0x0044          # v1 = 00000044
    lbu     t7, 0x0008(a3)             # 00000008
    lh      t6, 0x0026($sp)
    lui     t2, 0x8010                 # t2 = 80100000
    multu   t7, v1
    addiu   t2, t2, 0x8FF8             # t2 = 800F8FF8
    mflo    t8
    addu    t9, a3, t8
    sh      t6, 0x000C(t9)             # 0000000C
    lbu     t4, 0x0008(a3)             # 00000008
    lh      t0, 0x0026($sp)
    multu   t4, v1
    sll     t1, t0,  3
    addu    v0, t1, t2
    lw      a1, 0x0000(v0)             # 00000000
    lw      t3, 0x0004(v0)             # 00000004
    subu    a2, t3, a1
    mflo    t5
    addu    t7, a3, t5
    lw      a0, 0x0010(t7)             # 00000010
    sw      a3, 0x0020($sp)
    jal     func_80000DF0
    sw      a2, 0x001C($sp)
    lw      a3, 0x0020($sp)
    lw      a2, 0x001C($sp)
    lbu     v1, 0x0008(a3)             # 00000008
    slti    $at, v1, 0x0012
    beq     $at, $zero, lbl_800813B0
    or      v0, v1, $zero              # v0 = 00000000
    sll     t8, v1,  4
    addu    t8, t8, v1
    sll     t8, t8,  2
    addu    t6, a3, t8
    lw      t9, 0x0010(t6)             # 00000010
    sll     t3, v0,  4
    addu    t3, t3, v0
    addu    t0, t9, a2
    addiu   t1, t0, 0x000F             # t1 = 0000000F
    sll     t3, t3,  2
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    and     t2, t1, $at
    addu    t4, a3, t3
    sw      t2, 0x0054(t4)             # 00000054
    lbu     v1, 0x0008(a3)             # 00000008
lbl_800813B0:
    addiu   t5, v1, 0x0001             # t5 = 00000001
    andi    v1, t5, 0x00FF             # v1 = 00000001
    sb      t5, 0x0008(a3)             # 00000008
    sb      v1, 0x0009(a3)             # 00000009
    addiu   v0, v1, 0xFFFF             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800813D4:
# Allocates and Initializes "Object Space"
# A0 = Global Context ptr
# A1 = Object Allocation Table ptr (within global context)
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      v0, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x0051         # $at = 00000051
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    bne     v0, $at, lbl_80081408
    addiu   a0, $zero, 0x0013          # a0 = 00000013
    lui     a3, 0x000F                 # a3 = 000F0000
    beq     $zero, $zero, lbl_80081480
    ori     a3, a3, 0xA000             # a3 = 000FA000
lbl_80081408:
    addiu   $at, $zero, 0x004F         # $at = 0000004F
    bne     v0, $at, lbl_8008143C
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x46D0(t6)            # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     a3, 0x000F                 # a3 = 000F0000
    beq     t6, $at, lbl_80081434
    nop
    lui     a3, 0x0011                 # a3 = 00110000
    beq     $zero, $zero, lbl_80081480
    ori     a3, a3, 0xF800             # a3 = 0011F800
lbl_80081434:
    beq     $zero, $zero, lbl_80081480
    ori     a3, a3, 0xA000             # a3 = 0011F800
lbl_8008143C:
    addiu   $at, $zero, 0x0017         # $at = 00000017
    bne     v0, $at, lbl_80081450
    lui     a3, 0x0010                 # a3 = 00100000
    beq     $zero, $zero, lbl_80081480
    ori     a3, a3, 0x6800             # a3 = 00106800
lbl_80081450:
    addiu   $at, $zero, 0x0044         # $at = 00000044
    bne     v0, $at, lbl_80081464
    lui     a3, 0x0010                 # a3 = 00100000
    beq     $zero, $zero, lbl_80081480
    ori     a3, a3, 0x6800             # a3 = 00106800
lbl_80081464:
    addiu   $at, $zero, 0x0019         # $at = 00000019
    bne     v0, $at, lbl_8008147C
    lui     a3, 0x000F                 # a3 = 000F0000
    lui     a3, 0x0010                 # a3 = 00100000
    beq     $zero, $zero, lbl_80081480
    ori     a3, a3, 0x6800             # a3 = 00106800
lbl_8008147C:
    ori     a3, a3, 0xA000             # a3 = 0010E800
lbl_80081480:
    sb      $zero, 0x0009(a2)          # 00000009
    sb      $zero, 0x0008(a2)          # 00000008
    sb      $zero, 0x000B(a2)          # 0000000B
    sb      $zero, 0x000A(a2)          # 0000000A
    sh      $zero, 0x000C(a2)          # 0000000C
    sh      $zero, 0x0050(a2)          # 00000050
    sh      $zero, 0x0094(a2)          # 00000094
    addiu   v0, a2, 0x00CC             # v0 = 000000CC
lbl_800814A0:
    addiu   v1, v1, 0x0004             # v1 = 00000007
    sh      $zero, 0x0050(v0)          # 0000011C
    sh      $zero, 0x0094(v0)          # 00000160
    sh      $zero, 0x00D8(v0)          # 000001A4
    addiu   v0, v0, 0x0110             # v0 = 000001DC
    bne     v1, a0, lbl_800814A0
    sh      $zero, -0x0104(v0)         # 000000D8
    addiu   a0, s0, 0x0074             # a0 = 00000074
    or      a1, a3, $zero              # a1 = 0010E800
    sw      a2, 0x0034($sp)
    jal     func_800A01B8
    sw      a3, 0x0024($sp)
    lw      a0, 0x0034($sp)
    lw      a3, 0x0024($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      v0, 0x0000(a0)             # 00000000
    addu    t9, v0, a3
    sw      v0, 0x0010(a0)             # 00000010
    jal     func_800812F0              # ObjectSpawn
    sw      t9, 0x0004(a0)             # 00000004
    lw      a2, 0x0034($sp)
    andi    t0, v0, 0x00FF             # t0 = 00000000
    sll     t1, t0,  4
    addu    t1, t1, t0
    sll     t1, t1,  2
    sb      v0, 0x000A(a2)             # 0000000A
    addu    t2, a2, t1
    lw      t3, 0x0010(t2)             # 00000010
    lui     $at, 0x8000                # $at = 80000000
    lw      $ra, 0x001C($sp)
    addu    t4, t3, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t4, 0x0C48($at)            # 80120C48
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80081530:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s4, 0x0038($sp)
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s3, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    lbu     t6, 0x0008(s4)             # 00000008
    addiu   s0, s4, 0x000C             # s0 = 0000000C
    or      s2, $zero, $zero           # s2 = 00000000
    blez    t6, lbl_80081608
    lui     s3, 0x8010                 # s3 = 80100000
    addiu   s3, s3, 0x8FF8             # s3 = 800F8FF8
    lh      t7, 0x0000(s0)             # 0000000C
lbl_8008156C:
    bgezl   t7, lbl_800815F4
    lbu     t5, 0x0008(s4)             # 00000008
    lw      t8, 0x0008(s0)             # 00000014
    addiu   s1, s0, 0x0028             # s1 = 00000034
    addiu   a0, s0, 0x0028             # a0 = 00000034
    bne     t8, $zero, lbl_800815D4
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000034
    addiu   a1, s0, 0x0040             # a1 = 0000004C
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      t9, 0x0000(s0)             # 0000000C
    lw      a1, 0x0004(s0)             # 00000010
    addiu   a0, s0, 0x0008             # a0 = 00000014
    subu    t0, $zero, t9
    sll     t1, t0,  3
    addu    v0, s3, t1
    lw      a2, 0x0000(v0)             # 00000000
    lw      t2, 0x0004(v0)             # 00000004
    sw      $zero, 0x0018($sp)
    sw      s1, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80000D28
    subu    a3, t2, a2
    beq     $zero, $zero, lbl_800815F4
    lbu     t5, 0x0008(s4)             # 00000008
lbl_800815D4:
    jal     func_80002030              # osRecvMesg
    or      a2, $zero, $zero           # a2 = 00000000
    bnel    v0, $zero, lbl_800815F4
    lbu     t5, 0x0008(s4)             # 00000008
    lh      t3, 0x0000(s0)             # 0000000C
    subu    t4, $zero, t3
    sh      t4, 0x0000(s0)             # 0000000C
    lbu     t5, 0x0008(s4)             # 00000008
lbl_800815F4:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   s0, s0, 0x0044             # s0 = 00000050
    slt     $at, s2, t5
    bnel    $at, $zero, lbl_8008156C
    lh      t7, 0x0000(s0)             # 00000050
lbl_80081608:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80081628:
# ObjectIndex
# Get Object Table Index (locates object file reference in object table)
# A0 = Global Context + 0x117A4 (Object Table)
# A1 = s16 Object Number
# V0 = Object Index, or -1 if not found
    sll     a3, a1, 16
    sra     a3, a3, 16
    sw      a1, 0x0004($sp)
    lbu     v0, 0x0008(a0)             # 00000008
    or      v1, $zero, $zero           # v1 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    blezl   v0, lbl_80081680
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80081648:
    lh      a0, 0x000C(a1)             # 0000000C
    bltz    a0, lbl_8008165C
    subu    a2, $zero, a0
    beq     $zero, $zero, lbl_8008165C
    or      a2, a0, $zero              # a2 = 00000000
lbl_8008165C:
    bnel    a2, a3, lbl_80081670
    addiu   v1, v1, 0x0001             # v1 = 00000001
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000001
lbl_8008166C:
    addiu   v1, v1, 0x0001             # v1 = 00000002
lbl_80081670:
    slt     $at, v1, v0
    bne     $at, $zero, lbl_80081648
    addiu   a1, a1, 0x0044             # a1 = 00000044
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80081680:
    jr      $ra
    nop


func_80081688:
# Test if object file dependency is loaded
# A0 = Global Context + 0x117A4 (Object Allocation Table)
# A1 = Actor Instance + 0x1E
# V0 = 1 if loaded, 0 if not
    sll     t6, a1,  4
    addu    t6, t6, a1
    sll     t6, t6,  2
    addu    t7, a0, t6
    lh      t8, 0x000C(t7)             # 0000000C
    or      v0, $zero, $zero           # v0 = 00000000
    blez    t8, lbl_800816B0
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800816B0:
    jr      $ra
    nop


func_800816B8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s2, 0x001C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lbu     t6, 0x0008(s2)             # 00000008
    or      s1, $zero, $zero           # s1 = 00000000
    or      s0, s2, $zero              # s0 = 00000000
    blez    t6, lbl_80081724
    lui     s3, 0x8010                 # s3 = 80100000
    addiu   s3, s3, 0x8FF8             # s3 = 800F8FF8
    lh      v1, 0x000C(s0)             # 0000000C
lbl_800816F0:
    lw      a0, 0x0010(s0)             # 00000010
    sll     t7, v1,  3
    addu    v0, s3, t7
    lw      a1, 0x0000(v0)             # 00000000
    lw      t8, 0x0004(v0)             # 00000004
    jal     func_80000DF0
    subu    a2, t8, a1
    lbu     t9, 0x0008(s2)             # 00000008
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x0044             # s0 = 00000044
    slt     $at, s1, t9
    bnel    $at, $zero, lbl_800816F0
    lh      v1, 0x000C(s0)             # 00000050
lbl_80081724:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80081740:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     t6, a1,  4
    addu    t6, t6, a1
    sll     t6, t6,  2
    addu    v1, a0, t6
    lui     t9, 0x8010                 # t9 = 80100000
    subu    t7, $zero, a2
    addiu   t9, t9, 0x8FF8             # t9 = 800F8FF8
    sll     t8, a2,  3
    sh      t7, 0x000C(v1)             # 0000000C
    sw      $zero, 0x0014(v1)          # 00000014
    addu    a3, t8, t9
    lw      t2, 0x0004(a3)             # 00000004
    lw      t3, 0x0000(a3)             # 00000000
    lw      t4, 0x0010(v1)             # 00000010
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    subu    t0, t2, t3
    addu    t1, t4, t0
    addiu   t1, t1, 0x000F             # t1 = 0000000F
    and     v0, t1, $at
    jr      $ra
    nop


func_800817A0:
# Process Scene/Room Header
# A0 = Global Context
# A1 = Ptr to Header
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    lui     s3, 0x8010                 # s3 = 80100000
    addiu   s3, s3, 0x8F70             # s3 = 800F8F70
    addiu   s2, $zero, 0x0014          # s2 = 00000014
    lbu     v0, 0x0000(s0)             # 00000000
lbl_800817D0:
    beq     v0, s2, lbl_80081804
    sltiu   $at, v0, 0x001A
    beq     $at, $zero, lbl_800817F8
    sll     t6, v0,  2
    addu    t7, s3, t6
    lw      t9, 0x0000(t7)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
lbl_800817F8:
    addiu   s0, s0, 0x0008             # s0 = 00000008
    beq     $zero, $zero, lbl_800817D0
    lbu     v0, 0x0000(s0)             # 00000008
lbl_80081804:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80081824:
# Scene Header Command 0x00
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xA5D0             # t1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a2, $at
    lbu     t8, 0x1DEA(v1)             # 00001DEA
    lw      a3, 0x0004(t6)             # 00000004
    lw      t7, 0x1E00(v1)             # 00001E00
    sll     t9, t8,  1
    sll     t5, a3,  4
    srl     t6, t5, 28
    addu    t2, t7, t9
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t8, t6,  2
    addu    t7, t7, t8
    lw      t7, 0x0C38(t7)             # 80120C38
    lbu     t3, 0x0000(t2)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, a3, $at
    addu    t2, t7, t9
    sll     t4, t3,  4
    addu    v0, t4, t2
    lui     $at, 0x8000                # $at = 80000000
    addu    t0, v0, $at
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    sw      t0, 0x1DF4($at)            # 00011DF4
    lw      t3, 0x0004(t1)             # 8011A5D4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    sb      t3, 0x1DE8($at)            # 00011DE8
    lw      v0, 0x0004(t1)             # 8011A5D4
    lh      t6, 0x0000(t0)             # 00000000
    lui     a1, 0x8010                 # a1 = 80100000
    lui     t7, 0x800F                 # t7 = 800F0000
    sll     t5, v0,  1
    sll     t8, t6,  5
    addu    a1, a1, t5
    addu    t7, t7, t8
    lh      a1, -0x7010(a1)            # 800F8FF0
    lw      t7, -0x7ABC(t7)            # 800E8544
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at
    jal     func_800812F0              # ObjectSpawn
    sh      a1, 0x0008(t7)             # 800F0008
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80081900:
# Scene Header Command 0x01
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lbu     t6, 0x0001(a1)             # 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t6, 0x1DEB($at)            # 00011DEB
    lw      v0, 0x0004(a1)             # 00000004
    lui     t0, 0x8012                 # t0 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t7, v0,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t0, t0, t9
    lw      t0, 0x0C38(t0)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t0, t1
    addu    t3, t2, $at
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sw      t3, 0x1DF8($at)            # 00011DF8
    jr      $ra
    nop


func_80081958:
# Scene Header Command 0x02
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lw      v0, 0x0004(a1)             # 00000004
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0
    addu    t2, t1, $at
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sw      t2, 0x1DFC($at)            # 00011DFC
    jr      $ra
    nop


func_800819A0:
# Scene Header Command 0x03
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lui     v1, 0x00FF                 # v1 = 00FF0000
    ori     v1, v1, 0xFFFF             # v1 = 00FFFFFF
    addiu   v0, v0, 0x0C38             # v0 = 80120C38
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     a3, 0x8000                 # a3 = 80000000
    lw      t6, 0x001C($sp)
    addiu   a0, a1, 0x07C0             # a0 = 000007C0
    lw      t0, 0x0004(t6)             # 00000004
    sll     t7, t0,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t6, v0, t9
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, t0, v1
    addu    t9, t7, t8
    addu    a2, t9, a3
    lw      t1, 0x0010(a2)             # 00000010
    lw      t2, 0x0018(a2)             # 00000018
    lw      t3, 0x001C(a2)             # 0000001C
    sll     t6, t1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, v0, t8
    lw      t6, 0x0000(t9)             # 00000000
    and     t7, t1, v1
    lw      t4, 0x0020(a2)             # 00000020
    addu    t8, t6, t7
    addu    t9, t8, a3
    sll     t6, t2,  4
    srl     t7, t6, 28
    sw      t9, 0x0010(a2)             # 00000010
    sll     t8, t7,  2
    addu    t9, v0, t8
    lw      t6, 0x0000(t9)             # 00000000
    and     t7, t2, v1
    lw      t5, 0x0028(a2)             # 00000028
    addu    t8, t6, t7
    addu    t9, t8, a3
    sll     t6, t3,  4
    srl     t7, t6, 28
    sw      t9, 0x0018(a2)             # 00000018
    sll     t8, t7,  2
    addu    t9, v0, t8
    lw      t6, 0x0000(t9)             # 00000000
    and     t7, t3, v1
    addu    t8, t6, t7
    addu    t9, t8, a3
    sll     t6, t4,  4
    srl     t7, t6, 28
    sw      t9, 0x001C(a2)             # 0000001C
    sll     t8, t7,  2
    addu    t9, v0, t8
    lw      t6, 0x0000(t9)             # 00000000
    and     t7, t4, v1
    addu    t8, t6, t7
    addu    t9, t8, a3
    sll     t6, t5,  4
    srl     t7, t6, 28
    sw      t9, 0x0020(a2)             # 00000020
    sll     t8, t7,  2
    addu    t9, v0, t8
    lw      t6, 0x0000(t9)             # 00000000
    and     t7, t5, v1
    addu    t8, t6, t7
    addu    t9, t8, a3
    jal     func_8002EC70              # T_BGCheck_getBGDataInfo [?]
    sw      t9, 0x0028(a2)             # 00000028
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80081AD0:
# Scene Header Command 0x04
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lbu     t6, 0x0001(a1)             # 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t6, 0x1DEC($at)            # 00011DEC
    lw      v0, 0x0004(a1)             # 00000004
    lui     t0, 0x8012                 # t0 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t7, v0,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t0, t0, t9
    lw      t0, 0x0C38(t0)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t0, t1
    addu    t3, t2, $at
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sw      t3, 0x1DF0($at)            # 00011DF0
    jr      $ra
    nop


func_80081B28:
# Scene Header Command 0x06
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lw      v0, 0x0004(a1)             # 00000004
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0
    addu    t2, t1, $at
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sw      t2, 0x1E00($at)            # 00011E00
    jr      $ra
    nop


func_80081B70:
# Scene Header Command 0x07
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x0004(a3)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    beq     v0, $zero, lbl_80081BF0
    addu    a0, a2, $at
    sll     a1, v0, 16
    sra     a1, a1, 16
    sw      a2, 0x0018($sp)
    jal     func_800812F0              # ObjectSpawn
    sw      a3, 0x001C($sp)
    lw      a2, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     v1, 0x0001                 # v1 = 00010000
    lw      a3, 0x001C($sp)
    addu    $at, $at, a2
    sb      v0, 0x17AF($at)            # 000117AF
    addu    t6, a2, v1
    lbu     t7, 0x17AF(t6)             # 000017AF
    lui     $at, 0x8000                # $at = 80000000
    sll     t8, t7,  4
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, a2, t8
    addu    t0, t9, v1
    lw      t1, 0x17B4(t0)             # 000017B4
    addu    t2, t1, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t2, 0x0C4C($at)            # 80120C4C
lbl_80081BF0:
    lbu     v0, 0x0001(a3)             # 00000001
    or      a0, a2, $zero              # a0 = 00000000
    lui     t5, 0x8010                 # t5 = 80100000
    beq     v0, $zero, lbl_80081C28
    sll     t3, v0,  3
    addiu   t4, t3, 0xFFF8             # t4 = FFFFFFF8
    addiu   t5, t5, 0x8FD8             # t5 = 800F8FD8
    addu    a1, t4, t5
    jal     func_8009CCE8
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    sw      v0, 0x1E0C($at)            # 00011E0C
lbl_80081C28:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80081C38:
# Scene Header Command 0x08
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lbu     t6, 0x0001(a1)             # 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t6, 0x1CBF($at)            # 00011CBF
    lw      t8, 0x0004(a1)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t8, 0x1CBE($at)            # 00011CBE
    lw      t9, 0x0004(a1)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    srl     t0, t9,  8
    andi    t1, t0, 0x0001             # t1 = 00000000
    sb      t1, 0x1CC1($at)            # 00011CC1
    lw      t2, 0x0004(a1)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    srl     t3, t2, 10
    andi    t4, t3, 0x0001             # t4 = 00000000
    sh      t4, 0x04E4($at)            # 000104E4
    jr      $ra
    nop


func_80081C90:
# Scene Header Command 0x0A
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lw      v0, 0x0004(a1)             # 00000004
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0
    addu    t2, t1, $at
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sw      t2, 0x1CC4($at)            # 00011CC4
    jr      $ra
    nop


func_80081CD8:
# Scene Header Command 0x0B
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    or      s7, a0, $zero              # s7 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lw      v0, 0x0004(s8)             # 00000004
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    s2, t9, t0
    addu    s2, s2, $at
    lui     $at, 0x0001                # $at = 00010000
    addu    s0, s7, $at
    lbu     s1, 0x17AD(s0)             # 000017AD
    lbu     a2, 0x17AC(s0)             # 000017AC
    ori     $at, $at, 0x17B0           # $at = 000117B0
    sll     s4, s1,  4
    addu    s4, s4, s1
    sll     s4, s4,  2
    addu    s5, s7, s4
    addu    s5, s5, $at
    slt     $at, s1, a2
    or      s3, $zero, $zero           # s3 = 00000000
    beq     $at, $zero, lbl_80081DF4
    or      s6, s5, $zero              # s6 = 00000000
    lh      t1, 0x0000(s6)             # 00000000
lbl_80081D7C:
    lh      t2, 0x0000(s2)             # 00000000
    or      v1, s1, $zero              # v1 = 00000000
    addiu   a1, s7, 0x1C24             # a1 = 00001C24
    beq     t1, t2, lbl_80081DD0
    slt     $at, s1, a2
    beq     $at, $zero, lbl_80081DB4
    or      v0, s5, $zero              # v0 = 00000000
    sh      $zero, 0x0000(v0)          # 00000000
lbl_80081D9C:
    lbu     t3, 0x17AC(s0)             # 000017AC
    addiu   v1, v1, 0x0001             # v1 = 00000001
    addiu   v0, v0, 0x0044             # v0 = 00000044
    slt     $at, v1, t3
    bnel    $at, $zero, lbl_80081D9C
    sh      $zero, 0x0000(v0)          # 00000044
lbl_80081DB4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s7
    sb      s1, 0x17AC($at)            # 000117AC
    jal     func_80024CCC
    or      a0, s7, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80081DE8
    lbu     a2, 0x17AC(s0)             # 000017AC
lbl_80081DD0:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s4, s4, 0x0044             # s4 = 00000044
    addiu   s5, s5, 0x0044             # s5 = 00000044
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   s2, s2, 0x0002             # s2 = 00000002
    addiu   s6, s6, 0x0044             # s6 = 00000044
lbl_80081DE8:
    slt     $at, s1, a2
    bnel    $at, $zero, lbl_80081D7C
    lh      t1, 0x0000(s6)             # 00000044
lbl_80081DF4:
    lbu     t4, 0x0001(s8)             # 00000001
    slt     $at, s3, t4
    beq     $at, $zero, lbl_80081E50
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    s0, s7, $at
lbl_80081E0C:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000001
    jal     func_80081740
    lh      a2, 0x0000(s2)             # 00000002
    slti    $at, s1, 0x0012
    beq     $at, $zero, lbl_80081E38
    addiu   s1, s1, 0x0001             # s1 = 00000002
    addu    t5, s7, s4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t5
    sw      v0, 0x17F8($at)            # 000117F8
lbl_80081E38:
    lbu     t6, 0x0001(s8)             # 00000001
    addiu   s3, s3, 0x0001             # s3 = 00000002
    addiu   s4, s4, 0x0044             # s4 = 00000088
    slt     $at, s3, t6
    bne     $at, $zero, lbl_80081E0C
    addiu   s2, s2, 0x0002             # s2 = 00000004
lbl_80081E50:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s7
    sb      s1, 0x17AC($at)            # 000117AC
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    lw      s7, 0x0034($sp)
    lw      s8, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80081E8C:
# Scene Header Command 0x0C
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lw      v0, 0x0004(s2)             # 00000004
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lbu     t1, 0x0001(s2)             # 00000001
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    s0, t9, t0
    addu    s0, s0, $at
    blez    t1, lbl_80081F1C
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, s3, 0x07A8             # s4 = 000007A8
    or      a0, s3, $zero              # a0 = 00000000
lbl_80081EF8:
    or      a1, s4, $zero              # a1 = 000007A8
    jal     func_800665B0
    or      a2, s0, $zero              # a2 = 00000000
    lbu     t2, 0x0001(s2)             # 00000001
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x000E             # s0 = 0000000E
    slt     $at, s1, t2
    bnel    $at, $zero, lbl_80081EF8
    or      a0, s3, $zero              # a0 = 00000000
lbl_80081F1C:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80081F3C:
# Scene Header Command 0x0D
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lw      v0, 0x0004(a1)             # 00000004
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0
    addu    t2, t1, $at
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sw      t2, 0x1E08($at)            # 00011E08
    jr      $ra
    nop


func_80081F84:
# Scene Header Command 0x0E
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lbu     t6, 0x0001(a1)             # 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t6, 0x1D34($at)            # 00011D34
    lw      v0, 0x0004(a1)             # 00000004
    lui     t0, 0x8012                 # t0 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t7, v0,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t0, t0, t9
    lw      t0, 0x0C38(t0)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t0, t1
    addu    t3, t2, $at
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sw      t3, 0x1D38($at)            # 00011D38
    jr      $ra
    nop


func_80081FDC:
# Called by Scene Initialization Function (8009CDE8)
    sw      a0, 0x0000($sp)
    sb      $zero, 0x0000(a1)          # 00000000
    jr      $ra
    nop


func_80081FEC:
# Scene Header Command 0x0F
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lbu     t6, 0x0001(a1)             # 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t6, 0x0AD8($at)            # 00010AD8
    lw      v0, 0x0004(a1)             # 00000004
    lui     t0, 0x8012                 # t0 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t7, v0,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t0, t0, t9
    lw      t0, 0x0C38(t0)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t0, t1
    addu    t3, t2, $at
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sw      t3, 0x0ADC($at)            # 00010ADC
    jr      $ra
    nop


func_80082044:
# Scene Header Command 0x11
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lbu     t6, 0x0004(a1)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t6, 0x1E14($at)            # 00011E14
    lbu     v0, 0x0005(a1)             # 00000005
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      v0, 0x0A3C($at)            # 00010A3C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      v0, 0x0A3B($at)            # 00010A3B
    lbu     t7, 0x0006(a1)             # 00000006
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t7, 0x0A42($at)            # 00010A42
    jr      $ra
    nop


func_80082088:
# Scene Header Command 0x12
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lbu     t6, 0x0004(a1)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t6, 0x0A39($at)            # 00010A39
    lbu     t7, 0x0005(a1)             # 00000005
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t7, 0x0A3A($at)            # 00010A3A
    jr      $ra
    nop


func_800820B0:
# Scene Header Command 0x10
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    lbu     v0, 0x0004(a1)             # 00000004
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, a2
    beql    t0, v0, lbl_800821CC
    lbu     v0, 0x0006(a1)             # 00000006
    lbu     v1, 0x0005(a1)             # 00000005
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    beq     t0, v1, lbl_800821C8
    lui     $at, 0x4270                # $at = 42700000
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $at, $f0                   # $f0 = 60.00
    bgez    v0, lbl_80082108
    cvt.s.w $f6, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80082108:
    mtc1    v1, $f10                   # $f10 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    v1, lbl_80082124
    cvt.s.w $f16, $f10
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18
lbl_80082124:
    div.s   $f4, $f16, $f0
    lui     $at, 0x3CB4                # $at = 3CB40000
    mtc1    $at, $f18                  # $f18 = 0.02
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    add.s   $f8, $f6, $f4
    mul.s   $f10, $f8, $f0
    div.s   $f16, $f10, $f18
    cfc1    t6, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f6, $f16
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_800821B0
    mfc1    t7, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f6, $f16, $f6
    ctc1    t7, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_800821A4
    nop
    mfc1    t7, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800821BC
    or      t7, t7, $at                # t7 = 80000000
lbl_800821A4:
    beq     $zero, $zero, lbl_800821BC
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f6
lbl_800821B0:
    nop
    bltz    t7, lbl_800821A4
    nop
lbl_800821BC:
    ctc1    t6, $f31
    sh      t7, 0x000C(a3)             # 8011A5DC
    sh      t7, 0x141A(a3)             # 8011B9EA
lbl_800821C8:
    lbu     v0, 0x0006(a1)             # 00000006
lbl_800821CC:
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    beq     t0, v0, lbl_800821EC
    lui     $at, 0x0001                # $at = 00010000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    beq     $zero, $zero, lbl_800821F4
    sh      v0, 0x0A26($at)            # 00010A26
lbl_800821EC:
    addu    $at, $at, a2
    sh      $zero, 0x0A26($at)         # 00010A26
lbl_800821F4:
    lh      t9, 0x1422(a3)             # 8011B9F2
    bnel    t9, $zero, lbl_80082210
    lhu     v0, 0x000C(a3)             # 8011A5DC
    lhu     t1, 0x0A26(t1)             # 00010A26
    lui     $at, 0x800F                # $at = 800F0000
    sh      t1, 0x1650($at)            # 800F1650
    lhu     v0, 0x000C(a3)             # 8011A5DC
lbl_80082210:
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    sw      a2, 0x0020($sp)
    addu    a0, v0, $at
    lui     $at, 0x0001                # $at = 00010000
    addu    t2, a2, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sw      t2, 0x0018($sp)
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f18                  # $f18 = 25.00
    mul.s   $f8, $f0, $f4
    lw      a2, 0x0020($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     a3, 0x8012                 # a3 = 80120000
    addu    $at, $at, a2
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    neg.s   $f10, $f8
    mul.s   $f16, $f10, $f18
    swc1    $f16, 0x0A28($at)          # 00010A28
    lhu     v0, 0x000C(a3)             # 8011A5DC
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, v0, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f8                   # $f8 = 25.00
    mul.s   $f4, $f0, $f6
    lw      a2, 0x0020($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     a3, 0x8012                 # a3 = 80120000
    addu    $at, $at, a2
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    mul.s   $f10, $f4, $f8
    swc1    $f10, 0x0A2C($at)          # 00010A2C
    lhu     v0, 0x000C(a3)             # 8011A5DC
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, v0, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    mul.s   $f16, $f0, $f18
    lw      a2, 0x0020($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     a3, 0x8012                 # a3 = 80120000
    addu    $at, $at, a2
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    mul.s   $f4, $f16, $f6
    swc1    $f4, 0x0A30($at)           # 00010A30
    lw      t3, 0x0018($sp)
    lhu     t4, 0x0A26(t3)             # 00000A26
    bnel    t4, $zero, lbl_80082320
    lw      t6, 0x0000(a3)             # 8011A5D0
    lw      t5, 0x0008(a3)             # 8011A5D8
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    slt     $at, t5, $at
    bnel    $at, $zero, lbl_80082330
    lhu     v0, 0x141A(a3)             # 8011B9EA
    lw      t6, 0x0000(a3)             # 8011A5D0
lbl_80082320:
    addiu   $at, $zero, 0x0604         # $at = 00000604
    bnel    t6, $at, lbl_800823B0
    lw      $ra, 0x0014($sp)
    lhu     v0, 0x141A(a3)             # 8011B9EA
lbl_80082330:
    slti    $at, v0, 0x2AAC
    bne     $at, $zero, lbl_8008234C
    slti    $at, v0, 0x3556
    beq     $at, $zero, lbl_8008234C
    addiu   t7, $zero, 0x3556          # t7 = 00003556
    beq     $zero, $zero, lbl_800823AC
    sh      t7, 0x141A(a3)             # 8011B9EA
lbl_8008234C:
    slti    $at, v0, 0x4000
    bne     $at, $zero, lbl_80082368
    slti    $at, v0, 0x5556
    beq     $at, $zero, lbl_80082368
    addiu   t8, $zero, 0x5556          # t8 = 00005556
    beq     $zero, $zero, lbl_800823AC
    sh      t8, 0x141A(a3)             # 8011B9EA
lbl_80082368:
    ori     $at, $zero, 0xAAAB         # $at = 0000AAAB
    slt     $at, v0, $at
    bne     $at, $zero, lbl_8008238C
    ori     $at, $zero, 0xB556         # $at = 0000B556
    slt     $at, v0, $at
    beq     $at, $zero, lbl_8008238C
    ori     t9, $zero, 0xB556          # t9 = 0000B556
    beq     $zero, $zero, lbl_800823AC
    sh      t9, 0x141A(a3)             # 8011B9EA
lbl_8008238C:
    ori     $at, $zero, 0xC001         # $at = 0000C001
    slt     $at, v0, $at
    bne     $at, $zero, lbl_800823AC
    ori     $at, $zero, 0xCAAC         # $at = 0000CAAC
    slt     $at, v0, $at
    beq     $at, $zero, lbl_800823AC
    ori     t1, $zero, 0xCAAC          # t1 = 0000CAAC
    sh      t1, 0x141A(a3)             # 8011B9EA
lbl_800823AC:
    lw      $ra, 0x0014($sp)
lbl_800823B0:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800823BC:
# Scene Header Command 0x05
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lb      v0, 0x0004(a1)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    lb      v1, 0x0005(a1)             # 00000005
    lb      a2, 0x0006(a1)             # 00000006
    addu    $at, $at, a0
    sh      v0, 0x0ACC($at)            # 00010ACC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sh      v1, 0x0ACE($at)            # 00010ACE
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sh      a2, 0x0AD0($at)            # 00010AD0
    lbu     t6, 0x0007(a1)             # 00000007
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t6, $f4                    # $f4 = 0.00
    bgez    t6, lbl_8008240C
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_8008240C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    swc1    $f6, 0x0AD4($at)           # 00010AD4
    jr      $ra
    nop


func_80082420:
# Scene Header Command 0x13
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lw      v0, 0x0004(a1)             # 00000004
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0
    addu    t2, t1, $at
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sw      t2, 0x1E04($at)            # 00011E04
    jr      $ra
    nop


func_80082468:
# Scene Header Command 0x09
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80082478:
# Scene Header Command 0x15
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x0007(a1)             # 00000007
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    sb      t6, 0x07A4(a0)             # 000007A4
    lbu     t7, 0x0006(a1)             # 00000006
    sb      t7, 0x07A5(a0)             # 000007A5
    lbu     t8, -0x4650(t8)            # 8011B9B0
    bnel    t8, $at, lbl_800824B8
    lw      $ra, 0x0014($sp)
    lbu     a0, 0x0001(a1)             # 00000001
    lui     $at, 0xF000                # $at = F0000000
    jal     func_800CAA70
    or      a0, a0, $at                # a0 = F0000000
    lw      $ra, 0x0014($sp)
lbl_800824B8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800824C4:
# Scene Header Command 0x16
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lbu     t6, 0x0007(a1)             # 00000007
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t6, 0x1CC0($at)            # 00011CC0
    jr      $ra
    nop


func_800824DC:
# Scene Header Command 0x18
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x46D0(v1)            # 8011B930
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0x0C38             # t0 = 80120C38
    beq     v1, $zero, lbl_800825C8
    lui     t1, 0x00FF                 # t1 = 00FF0000
    ori     t1, t1, 0xFFFF             # t1 = 00FFFFFF
    lui     t2, 0x8000                 # t2 = 80000000
    lw      v0, 0x0004(a3)             # 00000004
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t0, t8
    lw      t3, 0x0000(t9)             # 00000000
    and     t4, v0, t1
    sll     t7, v1,  2
    addu    t5, t3, t4
    addu    t6, t5, t2
    addu    a0, t6, t7
    lw      a2, -0x0004(a0)            # FFFFFFFC
    beq     a2, $zero, lbl_80082580
    sll     t8, a2,  4
    srl     t9, t8, 28
    sll     t3, t9,  2
    addu    t4, t0, t3
    lw      t5, 0x0000(t4)             # 00000000
    and     t6, a2, t1
    sw      a3, 0x001C($sp)
    addu    t7, t5, t6
    addu    a1, t7, t2
    jal     func_800817A0
    lw      a0, 0x0018($sp)
    lw      a3, 0x001C($sp)
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    beq     $zero, $zero, lbl_800825C8
    sb      t8, 0x0008(a3)             # 00000008
lbl_80082580:
    bnel    v1, $at, lbl_800825CC
    lw      $ra, 0x0014($sp)
    lw      v0, -0x0008(a0)            # FFFFFFF8
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_800825C8
    sll     t9, v0,  4
    srl     t3, t9, 28
    sll     t4, t3,  2
    addu    t5, t0, t4
    lw      t6, 0x0000(t5)             # 00000000
    and     t7, v0, t1
    sw      a3, 0x001C($sp)
    addu    t8, t6, t7
    jal     func_800817A0
    addu    a1, t8, t2
    lw      a3, 0x001C($sp)
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x0008(a3)             # 00000008
lbl_800825C8:
    lw      $ra, 0x0014($sp)
lbl_800825CC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800825D8:
# Scene Header Command 0x17
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lw      v0, 0x0004(a1)             # 00000004
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0
    addu    t2, t1, $at
    sw      t2, 0x1D68(a0)             # 00001D68
    jr      $ra
    nop


func_80082618:
# Scene Header Command 0x19
# A0 = Global Context
# A1 = Command Start ptr (for scene setup being loaded)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lbu     t6, 0x0001(a1)             # 00000001
    addiu   $at, $zero, 0x002C         # $at = 0000002C
    sh      t6, 0x04B2(t7)             # 801204B2
    lw      t8, 0x0004(a1)             # 00000004
    sh      t8, 0x1420(a2)             # 8011B9F0
    lh      v0, 0x00A4(a0)             # 000000A4
    beq     v0, $at, lbl_80082650
    addiu   $at, $zero, 0x0042         # $at = 00000042
    bnel    v0, $at, lbl_80082680
    slti    $at, v0, 0x0051
lbl_80082650:
    lw      t9, 0x0004(a2)             # 8011A5D4
    addiu   $at, $zero, 0x0011         # $at = 00000011
    addiu   v1, $zero, 0x0011          # v1 = 00000011
    beq     t9, $zero, lbl_8008266C
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beq     $zero, $zero, lbl_8008266C
    addiu   v1, $zero, 0x0005          # v1 = 00000005
lbl_8008266C:
    bnel    v1, $at, lbl_80082680
    slti    $at, v0, 0x0051
    sh      t0, 0x1420(a2)             # 8011B9F0
    lh      v0, 0x00A4(a0)             # 000000A4
    slti    $at, v0, 0x0051
lbl_80082680:
    bne     $at, $zero, lbl_8008268C
    slti    $at, v0, 0x0065
    bne     $at, $zero, lbl_800826A0
lbl_8008268C:
    slti    $at, v0, 0x001B
    bne     $at, $zero, lbl_800826D4
    slti    $at, v0, 0x0026
    beq     $at, $zero, lbl_800826D4
    nop
lbl_800826A0:
    lw      t1, 0x0008(a2)             # 8011A5D8
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    slt     $at, t1, $at
    beq     $at, $zero, lbl_800826D4
    nop
    lh      v0, 0x1420(a2)             # 8011B9F0
    lui     t4, 0x8010                 # t4 = 80100000
    lw      t2, 0x0F38(a2)             # 8011B508
    sll     t3, v0,  2
    addu    t4, t4, t3
    lw      t4, -0x7410(t4)            # 800F8BF0
    or      t5, t2, t4                 # t5 = 80100000
    sw      t5, 0x0F38(a2)             # 8011B508
lbl_800826D4:
    jr      $ra
    nop


func_800826DC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t6, 0x0010(v0)             # 8011A5E0
    lui     t0, 0x8010                 # t0 = 80100000
    beql    t6, $zero, lbl_8008273C
    lw      t8, 0x0004(v0)             # 8011A5D4
    lw      t7, 0x0004(v0)             # 8011A5D4
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    beql    t7, $zero, lbl_80082728
    lh      v0, 0x1E1A(v0)             # 00011E1A
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lh      v0, 0x1E1A(v0)             # 00011E1A
    addiu   v0, v0, 0x0001             # v0 = 00010001
    sll     v0, v0, 16
    beq     $zero, $zero, lbl_8008276C
    sra     v0, v0, 16
    lh      v0, 0x1E1A(v0)             # 00011E1B
lbl_80082728:
    addiu   v0, v0, 0x0003             # v0 = 00010004
    sll     v0, v0, 16
    beq     $zero, $zero, lbl_8008276C
    sra     v0, v0, 16
    lw      t8, 0x0004(v0)             # 00010008
lbl_8008273C:
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    beql    t8, $zero, lbl_80082760
    lh      v0, 0x1E1A(v0)             # 00011E1A
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    beq     $zero, $zero, lbl_8008276C
    lh      v0, 0x1E1A(v0)             # 00011E1A
    lh      v0, 0x1E1A(v0)             # 00011E1A
lbl_80082760:
    addiu   v0, v0, 0x0002             # v0 = 00010002
    sll     v0, v0, 16
    sra     v0, v0, 16
lbl_8008276C:
    sll     t9, v0,  2
    addu    t0, t0, t9
    lhu     t0, -0x636E(t0)            # 800F9C92
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    andi    t1, t0, 0x007F             # t1 = 00000000
    sb      t1, 0x1E5E($at)            # 00011E5E
    jr      $ra
    nop


func_80082790:
# Possibly Draw Scene?
# (Helper for 8009C0A8)
# A0 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beql    v0, $zero, lbl_800827CC
    lbu     t6, 0x00A6(a0)             # 000000A6
    lw      v1, 0x006C(v0)             # 8012006C
    lui     a1, 0x8010                 # a1 = 80100000
    beql    v1, $zero, lbl_800827CC
    lbu     t6, 0x00A6(a0)             # 000000A6
    jalr    $ra, v1
    addiu   a1, a1, 0xBD18             # a1 = 800FBD18
    beq     $zero, $zero, lbl_800827E8
    lw      $ra, 0x0014($sp)
    lbu     t6, 0x00A6(a0)             # 000000A6
lbl_800827CC:
    lui     t9, 0x8010                 # t9 = 80100000
    sll     t7, t6,  2
    addu    t9, t9, t7
    lw      t9, -0x42E8(t9)            # 800FBD18
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
lbl_800827E8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800827F4:
# Scene Animate 0
    lui     t1, 0xDE00                 # t1 = DE000000
    lw      v0, 0x0000(a0)             # 00000000
    lw      a1, 0x02C0(v0)             # 000002C0
    lui     a2, 0x8010                 # a2 = 80100000
    addiu   a2, a2, 0xBCC8             # a2 = 800FBCC8
    addiu   t6, a1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v0)             # 000002C0
    sw      a2, 0x0004(a1)             # 00000004
    sw      t1, 0x0000(a1)             # 00000000
    lw      t0, 0x02D0(v0)             # 000002D0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v0)             # 000002D0
    sw      a2, 0x0004(t0)             # 00000004
    sw      t1, 0x0000(t0)             # 00000000
    jr      $ra
    nop


func_80082834:
# Scene Animate 19
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0048($sp)
    lw      t6, 0x0048($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v0, v0, t6
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    ori     t8, t8, 0x0024             # t8 = DB060024
    andi    t1, v0, 0x007F             # t1 = 00000000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, 0x0048($sp)
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t3, $zero, 0x007F          # t3 = 0000007F
    andi    a3, v0, 0x007F             # a3 = 00000000
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      a3, 0x0020($sp)
    subu    a2, t3, t1
    sw      v1, 0x0040($sp)
    sw      t8, 0x0028($sp)
    sw      t7, 0x0024($sp)
    sw      t1, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0038($sp)
    lw      t2, 0x0038($sp)
    lw      v1, 0x0040($sp)
    lui     t5, 0xFB00                 # t5 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t8, 0xDB06                 # t8 = DB060000
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     t6, 0x8080                 # t6 = 80800000
    ori     t6, t6, 0x8080             # t6 = 80808080
    addiu   t4, t0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(v1)             # 000002D0
    sw      t6, 0x0004(t0)             # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lw      a3, 0x02C0(v1)             # 000002C0
    ori     t8, t8, 0x0020             # t8 = DB060020
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t7, a3, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(a3)             # 00000000
    lw      t9, -0x5A20(t9)            # 8011A5E0
    lui     t1, 0x8010                 # t1 = 80100000
    lui     t8, 0x8012                 # t8 = 80120000
    sll     t3, t9,  2
    addu    t1, t1, t3
    lw      t1, -0x4214(t1)            # 800FBDEC
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t5, t1,  4
    srl     t6, t5, 28
    sll     t7, t6,  2
    addu    t8, t8, t7
    lw      t8, 0x0C38(t8)             # 80120C38
    and     t4, t1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t4, t8
    addu    t3, t9, $at
    sw      t3, 0x0004(a3)             # 00000004
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8008297C:
# Scene Animate 28
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0048($sp)
    lw      t6, 0x0048($sp)
    lui     t1, 0x0001                 # t1 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    t1, t1, t6
    lw      t1, 0x1DE4(t1)             # 00011DE4
    lw      t0, 0x0000(t6)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    sll     v0, t1,  1
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0048($sp)
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    lw      a0, 0x0000(t9)             # 00000000
    andi    t6, v0, 0x007F             # t6 = 00000000
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    sw      t6, 0x0020($sp)
    sw      t0, 0x0040($sp)
    sw      t8, 0x0028($sp)
    sw      t7, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    andi    a2, v0, 0x00FF             # a2 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0038($sp)
    lw      t2, 0x0038($sp)
    lw      t0, 0x0040($sp)
    lui     t5, 0xFB00                 # t5 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t3, 0xE700                 # t3 = E7000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(t0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t6, 0x8080                 # t6 = 80800000
    ori     t6, t6, 0x8080             # t6 = 80808080
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(t0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_80082A60:
# Scene Animate 20
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    lw      a2, 0x0000(s0)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    t6, s0, $at
    lw      v0, 0x02C4(a2)             # 000002C4
    lui     t9, 0xDB06                 # t9 = DB060000
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   t1, v0, 0xFFD0             # t1 = FFFFFFD0
    sw      t1, 0x02C4(a2)             # 000002C4
    lw      t0, 0x0000(s0)             # 00000000
    sw      t6, 0x0048($sp)
    lw      t5, 0x1DE4(t6)             # 00001DE4
    lw      v1, 0x02C0(t0)             # 000002C0
    ori     t9, t9, 0x0020             # t9 = DB060020
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t6, -0x5A20(t6)            # 8011A5E0
    lui     t2, 0x8010                 # t2 = 80100000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t7, t6,  2
    addu    t2, t2, t7
    lw      t2, -0x420C(t2)            # 800FBDF4
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    or      v0, t5, $zero              # v0 = 00000000
    sll     t9, t2,  4
    srl     t6, t9, 28
    sll     t7, t6,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t7
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t8, t2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t8, t9
    addu    t7, t6, $at
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    andi    t6, t5, 0x000E             # t6 = 00000000
    sra     t7, t6,  1
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    sll     t8, t7,  2
    addu    t4, t4, t8
    sw      t9, 0x0000(v1)             # 00000000
    lw      t4, -0x4204(t4)            # 800FBDFC
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t6, t4,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t6, 0x8012                 # t6 = 80120000
    addu    t6, t6, t8
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t9, t4, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t9, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v1)             # 00000004
    lw      a1, 0x02D0(t0)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t9, a1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(t0)             # 000002D0
    sw      t6, 0x0000(a1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    sw      t7, 0x0010($sp)
    or      $ra, a1, $zero             # $ra = 00000000
    sw      $ra, 0x0088($sp)
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    andi    v1, t5, 0x007F             # v1 = 00000000
    sw      v1, 0x0020($sp)
    sw      v1, 0x0044($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t5, 0x00A4($sp)
    sw      t1, 0x009C($sp)
    sw      t0, 0x0098($sp)
    sw      $zero, 0x001C($sp)
    andi    a2, t5, 0x00FF             # a2 = 00000000
    jal     func_8007EB84
    or      a3, $zero, $zero           # a3 = 00000000
    lw      $ra, 0x0088($sp)
    lw      t0, 0x0098($sp)
    lw      t5, 0x00A4($sp)
    sw      v0, 0x0004($ra)            # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0010($sp)
    sw      t8, 0x0018($sp)
    sll     t9, t5,  1
    andi    t6, t9, 0x007F             # t6 = 00000028
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0014($sp)
    sw      t7, 0x0024($sp)
    sw      t8, 0x0028($sp)
    sw      t6, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    lw      a3, 0x0044($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0084($sp)
    lw      t2, 0x0084($sp)
    lw      t0, 0x0098($sp)
    lw      t1, 0x009C($sp)
    lui     $ra, 0x8080                # $ra = 80800000
    ori     $ra, $ra, 0x8080           # $ra = 80808080
    lui     t4, 0xE700                 # t4 = E7000000
    lui     t5, 0xFB00                 # t5 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    or      a0, t1, $zero              # a0 = 00000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t0)             # 000002C0
    sw      $ra, 0x0004(v1)            # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      a1, 0x02D0(t0)             # 000002D0
    addiu   t7, a1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      $zero, 0x0004(a1)          # 00000004
    sw      t4, 0x0000(a1)             # 00000000
    lw      a1, 0x02D0(t0)             # 000002D0
    addiu   t2, $zero, 0xFF00          # t2 = FFFFFF00
    lui     s0, 0xDF00                 # s0 = DF000000
    addiu   t8, a1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      $ra, 0x0004(a1)            # 00000004
    sw      t5, 0x0000(a1)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x002C             # t6 = DB06002C
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    addiu   t1, t1, 0x0008             # t1 = 00000008
    sw      t4, 0x0000(a0)             # 00000000
    sw      $zero, 0x0004(a0)          # 00000004
    or      a1, t1, $zero              # a1 = 00000008
    sw      t5, 0x0000(a1)             # 00000008
    lw      t7, 0x0048($sp)
    addiu   t1, t1, 0x0008             # t1 = 00000010
    or      a3, t1, $zero              # a3 = 00000010
    lh      t8, 0x1D30(t7)             # 00001D38
    addiu   t1, t1, 0x0008             # t1 = 00000018
    or      a0, t1, $zero              # a0 = 00000018
    andi    t9, t8, 0x00FF             # t9 = 00000008
    or      t6, t9, t2                 # t6 = FFFFFF08
    sw      t6, 0x0004(a1)             # 0000000C
    sw      s0, 0x0000(a3)             # 00000010
    sw      $zero, 0x0004(a3)          # 00000014
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0030             # t8 = DB060030
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    addiu   t1, t1, 0x0008             # t1 = 00000020
    sw      t4, 0x0000(a0)             # 00000018
    sw      $zero, 0x0004(a0)          # 0000001C
    or      a1, t1, $zero              # a1 = 00000020
    sw      t5, 0x0000(a1)             # 00000020
    lw      t9, 0x0048($sp)
    addiu   t1, t1, 0x0008             # t1 = 00000028
    lh      t6, 0x1D32(t9)             # 00001D3A
    andi    t7, t6, 0x00FF             # t7 = 00000008
    or      t8, t7, t2                 # t8 = FFFFFF08
    sw      t8, 0x0004(a1)             # 00000024
    sw      s0, 0x0000(t1)             # 00000028
    sw      $zero, 0x0004(t1)          # 0000002C
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000
    jr      $ra
    nop


func_80082D88:
# Scene Animate 30
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s0, 0x0004($sp)
    lui     t0, 0xDF00                 # t0 = DF000000
    lui     t1, 0xFA00                 # t1 = FA000000
    lw      t3, 0x0000(a0)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    a3, a0, $at
    lw      t2, 0x02C4(t3)             # 000002C4
    addiu   t2, t2, 0xFF70             # t2 = FFFFFF70
    sw      t2, 0x02C4(t3)             # 000002C4
    lh      t6, 0x1D30(a3)             # 00001D30
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f8                   # $f8 = 255.00
    mtc1    t6, $f4                    # $f4 = 0.00
    lui     $at, 0x4339                # $at = 43390000
    mtc1    $at, $f10                  # $f10 = 185.00
    cvt.s.w $f6, $f4
    lw      v1, 0x0000(a0)             # 00000000
    addiu   s0, t2, 0x0010             # s0 = FFFFFF80
    div.s   $f0, $f6, $f8
    lw      a1, 0x02D0(v1)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, a1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t2, 0x0004(a1)             # 00000004
    sw      t8, 0x0000(a1)             # 00000000
    lw      a2, 0x02C0(v1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t9, a2, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t2, 0x0004(a2)             # 00000004
    sw      t6, 0x0000(a2)             # 00000000
    mul.s   $f16, $f10, $f0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t1, 0x0000(t2)             # FFFFFF70
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beq     t8, $zero, lbl_80082E84
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t8, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_80082E7C
    nop
    mfc1    t8, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80082E94
    or      t8, t8, $at                # t8 = 80000000
lbl_80082E7C:
    beq     $zero, $zero, lbl_80082E94
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
lbl_80082E84:
    mfc1    t8, $f18
    nop
    bltz    t8, lbl_80082E7C
    nop
lbl_80082E94:
    lui     $at, 0x4311                # $at = 43110000
    ctc1    t7, $f31
    mtc1    $at, $f4                   # $f4 = 145.00
    or      t9, t8, $zero              # t9 = FFFFFFFF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    mul.s   $f6, $f4, $f0
    subu    t8, t6, t9
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sll     t6, t8, 24
    cfc1    t9, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beq     t7, $zero, lbl_80082F20
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t7, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80082F18
    nop
    mfc1    t7, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80082F30
    or      t7, t7, $at                # t7 = 80000000
lbl_80082F18:
    beq     $zero, $zero, lbl_80082F30
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
lbl_80082F20:
    mfc1    t7, $f8
    nop
    bltz    t7, lbl_80082F18
    nop
lbl_80082F30:
    lui     $at, 0x42D2                # $at = 42D20000
    ctc1    t9, $f31
    mtc1    $at, $f10                  # $f10 = 105.00
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    or      t8, t7, $zero              # t8 = FFFFFFFF
    mul.s   $f16, $f10, $f0
    subu    t7, t9, t8
    andi    t9, t7, 0x00FF             # t9 = 000000FF
    sll     t8, t9, 16
    or      t7, t6, t8                 # t7 = FFFFFFFF
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    cfc1    t9, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beq     t6, $zero, lbl_80082FC4
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t6, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80082FBC
    nop
    mfc1    t6, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80082FD4
    or      t6, t6, $at                # t6 = 80000000
lbl_80082FBC:
    beq     $zero, $zero, lbl_80082FD4
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
lbl_80082FC4:
    mfc1    t6, $f18
    nop
    bltz    t6, lbl_80082FBC
    nop
lbl_80082FD4:
    ctc1    t9, $f31
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    or      t8, t6, $zero              # t8 = FFFFFFFF
    subu    t6, t9, t8
    andi    t9, t6, 0x00FF             # t9 = 000000FF
    sll     t8, t9,  8
    or      t6, t7, t8                 # t6 = FFFFFFFF
    ori     t9, t6, 0x00FF             # t9 = FFFFFFFF
    sw      t9, 0x0004(t2)             # FFFFFF74
    sw      t0, 0x0008(t2)             # FFFFFF78
    sw      $zero, 0x000C(t2)          # FFFFFF7C
    lw      a1, 0x02D0(v1)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0024             # t4 = DB060024
    sw      a1, 0x0054($sp)
    addiu   t7, a1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    lw      t8, 0x0054($sp)
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    sw      t4, 0x0000(t8)             # FFFFFFFF
    lw      t6, 0x0054($sp)
    mul.s   $f6, $f4, $f0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      s0, 0x0004(t6)             # 00000003
    lw      a2, 0x02C0(v1)             # 000002C0
    lui     a0, 0xFB00                 # a0 = FB000000
    addiu   t9, a2, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      s0, 0x0004(a2)             # 00000004
    sw      t4, 0x0000(a2)             # 00000000
    cfc1    t7, $f31
    ctc1    t8, $f31
    addiu   v0, s0, 0x0008             # v0 = FFFFFF88
    or      t3, v0, $zero              # t3 = FFFFFF88
    cvt.w.s $f8, $f6
    addiu   v0, v0, 0x0008             # v0 = FFFFFF90
    or      t2, s0, $zero              # t2 = FFFFFF80
    sw      t1, 0x0000(s0)             # FFFFFF80
    cfc1    t8, $f31
    or      t5, v0, $zero              # t5 = FFFFFF90
    andi    t8, t8, 0x0078             # t8 = 00000000
    beq     t8, $zero, lbl_800830C8
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_800830C0
    nop
    mfc1    t8, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800830D8
    or      t8, t8, $at                # t8 = 80000000
lbl_800830C0:
    beq     $zero, $zero, lbl_800830D8
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
lbl_800830C8:
    mfc1    t8, $f8
    nop
    bltz    t8, lbl_800830C0
    nop
lbl_800830D8:
    lui     $at, 0x4208                # $at = 42080000
    ctc1    t7, $f31
    mtc1    $at, $f10                  # $f10 = 34.00
    or      t6, t8, $zero              # t6 = FFFFFFFF
    addiu   t7, t6, 0x004C             # t7 = 0000004B
    mul.s   $f16, $f10, $f0
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sll     t8, t7, 24
    cfc1    t6, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beq     t9, $zero, lbl_80083160
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t9, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80083158
    nop
    mfc1    t9, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80083170
    or      t9, t9, $at                # t9 = 80000000
lbl_80083158:
    beq     $zero, $zero, lbl_80083170
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
lbl_80083160:
    mfc1    t9, $f18
    nop
    bltz    t9, lbl_80083158
    nop
lbl_80083170:
    lui     $at, 0x4294                # $at = 42940000
    ctc1    t6, $f31
    mtc1    $at, $f4                   # $f4 = 74.00
    or      t7, t9, $zero              # t7 = FFFFFFFF
    addiu   t6, t7, 0x004C             # t6 = 0000004B
    mul.s   $f6, $f4, $f0
    andi    t9, t6, 0x00FF             # t9 = 0000004B
    sll     t7, t9, 16
    or      t6, t8, t7                 # t6 = FFFFFFFF
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    cfc1    t9, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beq     t8, $zero, lbl_80083200
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_800831F8
    nop
    mfc1    t8, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80083210
    or      t8, t8, $at                # t8 = 80000000
lbl_800831F8:
    beq     $zero, $zero, lbl_80083210
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
lbl_80083200:
    mfc1    t8, $f8
    nop
    bltz    t8, lbl_800831F8
    nop
lbl_80083210:
    ctc1    t9, $f31
    or      t7, t8, $zero              # t7 = FFFFFFFF
    addiu   t9, t7, 0x004C             # t9 = 0000004B
    andi    t8, t9, 0x00FF             # t8 = 0000004B
    sll     t7, t8,  8
    or      t9, t6, t7                 # t9 = FFFFFFFF
    ori     t8, t9, 0x00FF             # t8 = FFFFFFFF
    sw      t8, 0x0004(t2)             # FFFFFF84
    lui     t2, 0xE700                 # t2 = E7000000
    sw      t0, 0x0000(t3)             # FFFFFF88
    sw      $zero, 0x0004(t3)          # FFFFFF8C
    lw      a2, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0028             # t7 = DB060028
    addiu   t6, a2, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      v0, 0x0004(a2)             # 00000004
    sw      t7, 0x0000(a2)             # 00000000
    lw      a1, 0x02D0(v1)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0028             # t8 = DB060028
    addiu   t9, a1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      v0, 0x0004(a1)             # 00000004
    sw      t8, 0x0000(a1)             # 00000000
    addiu   v0, v0, 0x0008             # v0 = FFFFFF98
    sw      t2, 0x0000(t5)             # FFFFFF90
    sw      $zero, 0x0004(t5)          # FFFFFF94
    or      s0, v0, $zero              # s0 = FFFFFF98
    sw      a0, 0x0000(s0)             # FFFFFF98
    lh      t6, 0x1D30(a3)             # 00001D30
    addiu   v0, v0, 0x0008             # v0 = FFFFFFA0
    or      t3, v0, $zero              # t3 = FFFFFFA0
    andi    t7, t6, 0x00FF             # t7 = 00000008
    sw      t7, 0x0004(s0)             # FFFFFF9C
    addiu   v0, v0, 0x0008             # v0 = FFFFFFA8
    sw      t0, 0x0000(t3)             # FFFFFFA0
    sw      $zero, 0x0004(t3)          # FFFFFFA4
    lw      a2, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x002C             # t8 = DB06002C
    addiu   t9, a2, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      v0, 0x0004(a2)             # 00000004
    sw      t8, 0x0000(a2)             # 00000000
    lw      a1, 0x02D0(v1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x002C             # t7 = DB06002C
    addiu   t6, a1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      v0, 0x0004(a1)             # 00000004
    sw      t7, 0x0000(a1)             # 00000000
    lui     $at, 0x4326                # $at = 43260000
    mtc1    $at, $f10                  # $f10 = 166.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      v0, 0x0028($sp)
    mul.s   $f16, $f10, $f0
    addiu   v0, v0, 0x0008             # v0 = FFFFFFB0
    lw      t9, 0x0028($sp)
    or      t3, v0, $zero              # t3 = FFFFFFB0
    addiu   v0, v0, 0x0008             # v0 = FFFFFFB8
    or      t4, v0, $zero              # t4 = FFFFFFB8
    sw      t1, 0x0000(t9)             # 00000008
    cfc1    t8, $f31
    ctc1    a1, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beq     a1, $zero, lbl_80083374
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    a1, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_8008336C
    nop
    mfc1    a1, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80083384
    or      a1, a1, $at                # a1 = 80000000
lbl_8008336C:
    beq     $zero, $zero, lbl_80083384
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
lbl_80083374:
    mfc1    a1, $f18
    nop
    bltz    a1, lbl_8008336C
    nop
lbl_80083384:
    addiu   a1, a1, 0x0059             # a1 = 00000058
    andi    a1, a1, 0x00FF             # a1 = 00000058
    sll     t6, a1, 24
    sll     t7, a1, 16
    ctc1    t8, $f31
    sll     t8, a1,  8
    or      t9, t6, t7                 # t9 = DB06002C
    or      t6, t9, t8                 # t6 = DB06002C
    lw      t9, 0x0028($sp)
    ori     t7, t6, 0x00FF             # t7 = DB0600FF
    lui     $at, 0x4333                # $at = 43330000
    sw      t7, 0x0004(t9)             # DB060030
    sw      t2, 0x0000(t3)             # FFFFFFB0
    sw      $zero, 0x0004(t3)          # FFFFFFB4
    sw      a0, 0x0000(t4)             # FFFFFFB8
    lh      t8, 0x1D30(a3)             # 00001D30
    addiu   v0, v0, 0x0008             # v0 = FFFFFFC0
    or      t5, v0, $zero              # t5 = FFFFFFC0
    andi    t6, t8, 0x00FF             # t6 = 0000002C
    sw      t6, 0x0004(t4)             # FFFFFFBC
    addiu   v0, v0, 0x0008             # v0 = FFFFFFC8
    sw      t0, 0x0000(t5)             # FFFFFFC0
    sw      $zero, 0x0004(t5)          # FFFFFFC4
    lw      a2, 0x02C0(v1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0030             # t9 = DB060030
    addiu   t7, a2, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      v0, 0x0004(a2)             # 00000004
    sw      t9, 0x0000(a2)             # 00000000
    lw      a1, 0x02D0(v1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0030             # t6 = DB060030
    addiu   t8, a1, 0x0008             # t8 = 00000060
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      v0, 0x0004(a1)             # 0000005C
    sw      t6, 0x0000(a1)             # 00000058
    mtc1    $at, $f4                   # $f4 = 179.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    or      t4, v0, $zero              # t4 = FFFFFFC8
    mul.s   $f6, $f4, $f0
    sw      t1, 0x0000(t4)             # FFFFFFC8
    addiu   v0, v0, 0x0008             # v0 = FFFFFFD0
    cfc1    t7, $f31
    ctc1    t5, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beq     t5, $zero, lbl_80083498
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t5, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_80083490
    nop
    mfc1    t5, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800834A8
    or      t5, t5, $at                # t5 = 80000000
lbl_80083490:
    beq     $zero, $zero, lbl_800834A8
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
lbl_80083498:
    mfc1    t5, $f8
    nop
    bltz    t5, lbl_80083490
    nop
lbl_800834A8:
    addiu   t5, t5, 0x00FF             # t5 = 000000FE
    andi    t5, t5, 0x00FF             # t5 = 000000FE
    sll     t9, t5, 24
    sll     t8, t5, 16
    ctc1    t7, $f31
    sll     t7, t5,  8
    or      t6, t9, t8                 # t6 = DB060070
    or      t9, t6, t7                 # t9 = DB060078
    ori     t8, t9, 0x00FF             # t8 = DB0600FF
    sw      t8, 0x0004(t4)             # FFFFFFCC
    sw      v0, 0x000C($sp)
    lw      t6, 0x000C($sp)
    addiu   v0, v0, 0x0008             # v0 = FFFFFFD8
    lui     s0, 0xDB06                 # s0 = DB060000
    sw      t2, 0x0000(t6)             # DB060070
    lw      t7, 0x000C($sp)
    ori     s0, s0, 0x0034             # s0 = DB060034
    or      t1, v0, $zero              # t1 = FFFFFFD8
    sw      $zero, 0x0004(t7)          # 0000000C
    sw      a0, 0x0000(t1)             # FFFFFFD8
    lh      t9, 0x1D30(a3)             # 00001D30
    addiu   v0, v0, 0x0008             # v0 = FFFFFFE0
    or      t3, v0, $zero              # t3 = FFFFFFE0
    andi    t8, t9, 0x00FF             # t8 = 00000078
    sw      t8, 0x0004(t1)             # FFFFFFDC
    addiu   v0, v0, 0x0008             # v0 = FFFFFFE8
    sw      t0, 0x0000(t3)             # FFFFFFE0
    sw      $zero, 0x0004(t3)          # FFFFFFE4
    lw      a2, 0x02C0(v1)             # 000002C0
    addiu   t6, a2, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      v0, 0x0004(a2)             # 00000004
    sw      s0, 0x0000(a2)             # 00000000
    lw      a1, 0x02D0(v1)             # 000002D0
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t7, a1, 0x0008             # t7 = 00000060
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      v0, 0x0004(a1)             # 0000005C
    sw      s0, 0x0000(a1)             # 00000058
    or      v1, v0, $zero              # v1 = FFFFFFE8
    sw      t2, 0x0000(v1)             # FFFFFFE8
    sw      $zero, 0x0004(v1)          # FFFFFFEC
    addiu   v0, v0, 0x0008             # v0 = FFFFFFF0
    or      a1, v0, $zero              # a1 = FFFFFFF0
    sw      a0, 0x0000(a1)             # FFFFFFF0
    lh      t9, 0x1D32(a3)             # 00001D32
    addiu   v0, v0, 0x0008             # v0 = FFFFFFF8
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    andi    t8, t9, 0x00FF             # t8 = 00000078
    sw      t8, 0x0004(a1)             # FFFFFFF4
    sw      t0, 0x0000(v0)             # FFFFFFF8
    sw      $zero, 0x0004(v0)          # FFFFFFFC
    lw      t6, -0x46D0(t6)            # 8011B930
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t6, $at, lbl_800835E0
    addiu   v0, v0, 0xBCE0             # v0 = 8011BCE0
    lui     $at, 0x8012                # $at = 80120000
    sb      t7, -0x4326($at)           # 8011BCDA
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f10                  # $f10 = -20.00
    lui     $at, 0x8011                # $at = 80110000
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    swc1    $f10, 0x0000(v0)           # 8011BCE0
    lwc1    $f16, -0x75A0($at)         # 80108A60
    lui     $at, 0xC42B                # $at = C42B0000
    mtc1    $at, $f18                  # $f18 = -684.00
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f16, 0x0004(v0)           # 8011BCE4
    swc1    $f18, 0x0008(v0)           # 8011BCE8
    sh      t9, -0x4314($at)           # 8011BCEC
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0x8012                # $at = 80120000
    addiu   t8, $zero, 0x00C8          # t8 = 000000C8
    swc1    $f4, -0x4310($at)          # 8011BCF0
    lui     $at, 0x8012                # $at = 80120000
    sh      t8, -0x430C($at)           # 8011BCF4
lbl_800835E0:
    lw      s0, 0x0004($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_800835EC:
# Scene Animate 31
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s2, 0x003C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s3, 0x0040($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    lui     s3, 0x0001                 # s3 = 00010000
    addu    s3, s3, s2
    lw      s0, 0x0000(s2)             # 00000000
    lw      s3, 0x1DE4(s3)             # 00011DE4
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x0010($sp)
    sw      s3, 0x0048($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      t2, s3, $zero              # t2 = 00010000
    andi    a2, s3, 0x003F             # a2 = 00000000
    addiu   a3, $zero, 0x0100          # a3 = 00000100
    jal     func_8007EB00
    sw      v1, 0x0070($sp)
    lw      t1, 0x0070($sp)
    lw      t2, 0x0048($sp)
    lui     t4, 0xDB06                 # t4 = DB060000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t4, t4, 0x0024             # t4 = DB060024
    andi    t0, s3, 0x007F             # t0 = 00000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t5, $zero, 0x007F          # t5 = 0000007F
    andi    s1, t2, 0x007F             # s1 = 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    or      a3, s1, $zero              # a3 = 00000000
    sw      s1, 0x0020($sp)
    subu    a2, t5, t0
    sw      t9, 0x0024($sp)
    sw      t4, 0x0028($sp)
    sw      t0, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x006C($sp)
    lw      t3, 0x006C($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0028             # t6 = DB060028
    sw      v0, 0x0004(t3)             # 00000004
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t4, $zero, 0x007F          # t4 = 0000007F
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t5, t0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    subu    t5, t4, s1
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t5, 0x0020($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    sw      t7, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0068($sp)
    lw      v1, 0x0068($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x002C             # t9 = DB06002C
    sw      v0, 0x0004(v1)             # 00000004
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sw      t4, 0x0010($sp)
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    jal     func_8007EB00
    sw      t0, 0x0064($sp)
    lw      t1, 0x0064($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0030             # t6 = DB060030
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    sll     a3, s3,  2
    subu    a3, a3, s3
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sll     t4, s3,  4
    subu    t4, t4, s3
    sll     a3, a3,  3
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sw      t7, 0x0010($sp)
    addu    a3, a3, s3
    sll     t4, t4,  2
    andi    t5, t4, 0x07FF             # t5 = 00000000
    sll     a3, a3,  1
    addiu   t7, $zero, 0x0200          # t7 = 00000200
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t8, $zero, 0x0200          # t8 = 00000200
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    andi    a3, a3, 0x07FF             # a3 = 00000000
    sw      t5, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0060($sp)
    lw      t2, 0x0060($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0034             # t9 = DB060034
    sw      v0, 0x0004(t2)             # 00000004
    lw      s3, 0x02C0(s0)             # 000002C0
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t8, s3, 0x0008             # t8 = 00010008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(s3)             # 00010000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t8, 0x0028($sp)
    sw      s1, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t3, 0x8080                 # t3 = 80800000
    ori     t3, t3, 0x8080             # t3 = 80808080
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t2, 0xFB00                 # t2 = FB000000
    sw      v0, 0x0004(s3)             # 00010004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t5, t0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t1, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0004(t0)             # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_800838EC:
# Scene Animate 32
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    lui     t3, 0x0001                 # t3 = 00010000
    addu    t3, t3, s1
    lw      s0, 0x0000(s1)             # 00000000
    lw      t3, 0x1DE4(t3)             # 00011DE4
    lw      t0, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    sll     a2, t3,  1
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    sw      t8, 0x0010($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      t3, 0x0074($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    jal     func_8007EB00
    sw      t0, 0x0068($sp)
    lw      t4, 0x0068($sp)
    lw      t3, 0x0074($sp)
    lui     t8, 0xFB00                 # t8 = FB000000
    sw      v0, 0x0004(t4)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xE700                 # t6 = E7000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0x8080                 # t9 = 80800000
    ori     t9, t9, 0x8080             # t9 = 80808080
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0028             # t7 = DB060028
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    andi    t2, t3, 0x007F             # t2 = 00000000
    addiu   t8, $zero, 0x007F          # t8 = 0000007F
    subu    a2, t8, t2
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    or      $ra, t3, $zero             # $ra = 00000000
    andi    a3, t3, 0x007F             # a3 = 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sw      t9, 0x0010($sp)
    sw      t9, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      a3, 0x0040($sp)
    sw      t6, 0x0014($sp)
    sw      t7, 0x0018($sp)
    sw      t8, 0x0024($sp)
    sw      t2, 0x001C($sp)
    sw      t3, 0x0044($sp)
    jal     func_8007EB84
    sw      v1, 0x005C($sp)
    lw      t5, 0x005C($sp)
    lw      $ra, 0x0044($sp)
    lui     t7, 0xDB06                 # t7 = DB060000
    sw      v0, 0x0004(t5)             # 00000004
    lw      t0, 0x02D0(s0)             # 000002D0
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t9, $zero, 0x007F          # t9 = 0000007F
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    lw      t8, 0x0040($sp)
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0010($sp)
    subu    a2, t9, t8
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    andi    a3, $ra, 0x00FF            # a3 = 00000000
    sw      t7, 0x0014($sp)
    sw      t6, 0x0028($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0058($sp)
    lw      t1, 0x0058($sp)
    lui     t4, 0x8080                 # t4 = 80800000
    ori     t4, t4, 0x8080             # t4 = 80808080
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      t0, 0x02D0(s0)             # 000002D0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(s0)             # 000002D0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80083AF4:
# Scene Animate 33
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0068($sp)
    lw      t6, 0x0068($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v0, v0, t6
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    andi    t1, v0, 0x007F             # t1 = 00000000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, 0x0068($sp)
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    lw      a0, 0x0000(t9)             # 00000000
    sll     t3, v0,  2
    subu    t3, t3, v0
    sw      t7, 0x0010($sp)
    subu    a2, t6, t1
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    andi    a3, t3, 0x00FF             # a3 = 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      a3, 0x0020($sp)
    sw      t7, 0x0028($sp)
    sw      t6, 0x0024($sp)
    sw      a2, 0x003C($sp)
    sw      t3, 0x0038($sp)
    sw      t1, 0x0040($sp)
    sw      v1, 0x0060($sp)
    sw      t1, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0058($sp)
    lw      t2, 0x0058($sp)
    lw      v1, 0x0060($sp)
    lw      a2, 0x003C($sp)
    lw      t1, 0x0040($sp)
    lw      t3, 0x0038($sp)
    sw      v0, 0x0004(t2)             # 00000004
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      t9, 0x0000(t0)             # 00000000
    lw      t6, 0x0068($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    lw      a0, 0x0000(t6)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    andi    a3, t3, 0x007F             # a3 = 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      t6, 0x0024($sp)
    sw      t1, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0054($sp)
    lw      t4, 0x0054($sp)
    lw      v1, 0x0060($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      v0, 0x0004(t4)             # 00000004
    lw      a0, 0x02C0(v1)             # 000002C0
    addiu   t8, a0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(a0)          # 00000004
    sw      t2, 0x0000(a0)             # 00000000
    lw      a0, 0x02C0(v1)             # 000002C0
    addiu   t9, a0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(a0)             # 00000004
    sw      t3, 0x0000(a0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80083C84:
# Scene Animate 48
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    lw      t6, 0x0030($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v0, v0, t6
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      t0, 0x0000(t6)             # 00000000
    lw      t1, 0x02D0(t0)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      t8, 0x0000(t1)             # 00000000
    lw      t9, 0x0030($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    andi    a2, v0, 0x003F             # a2 = 00000000
    lw      a0, 0x0000(t9)             # 00000000
    sw      t0, 0x0028($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, $zero, 0x0100          # a3 = 00000100
    jal     func_8007EB00
    sw      t1, 0x0020($sp)
    lw      t2, 0x0020($sp)
    lw      t0, 0x0028($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t1, 0x02D0(t0)             # 000002D0
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      $zero, 0x0004(t1)          # 00000004
    sw      t3, 0x0000(t1)             # 00000000
    lw      t1, 0x02D0(t0)             # 000002D0
    addiu   t8, t1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      t5, 0x0004(t1)             # 00000004
    sw      t4, 0x0000(t1)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t0)             # 000002C0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80083D5C:
# Scene Animate 39
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0050($sp)
    lw      t6, 0x0050($sp)
    lui     t1, 0x0001                 # t1 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    t1, t1, t6
    lw      t1, 0x1DE4(t1)             # 00011DE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    andi    v0, t1, 0x007F             # v0 = 00000000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, 0x0050($sp)
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    sll     a3, t1,  2
    lw      a0, 0x0000(t9)             # 00000000
    subu    a3, a3, t1
    subu    a2, t6, v0
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    andi    a3, a3, 0x007F             # a3 = 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      a3, 0x0020($sp)
    sw      t6, 0x0024($sp)
    sw      t1, 0x004C($sp)
    sw      v1, 0x0048($sp)
    sw      v0, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0040($sp)
    lw      t2, 0x0040($sp)
    lw      v1, 0x0048($sp)
    lw      t1, 0x004C($sp)
    sw      v0, 0x0004(t2)             # 00000004
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      t9, 0x0000(t0)             # 00000000
    lw      t6, 0x0050($sp)
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    or      a1, $zero, $zero           # a1 = 00000000
    lw      a0, 0x0000(t6)             # 00000000
    sw      t7, 0x0010($sp)
    andi    a2, t1, 0x003F             # a2 = 00000000
    addiu   a3, $zero, 0x0100          # a3 = 00000100
    jal     func_8007EB00
    sw      t0, 0x003C($sp)
    lw      t3, 0x003C($sp)
    lw      v1, 0x0048($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t3)             # 00000004
    lw      a0, 0x02C0(v1)             # 000002C0
    addiu   t8, a0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(a0)          # 00000004
    sw      t2, 0x0000(a0)             # 00000000
    lw      a0, 0x02C0(v1)             # 000002C0
    addiu   t9, a0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(a0)             # 00000004
    sw      t4, 0x0000(a0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t4, 0x0000(t0)             # 00000000
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80083EB8:
# Scene Animate 24
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    lh      t6, 0x00A4(s0)             # 000000A4
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, s0
    addiu   $at, $zero, 0x0018         # $at = 00000018
    lw      t0, 0x0000(s0)             # 00000000
    bne     t6, $at, lbl_80083F60
    lw      t1, 0x1DE4(t1)             # 00011DE4
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    sll     a2, t1,  1
    andi    a2, a2, 0x007F             # a2 = 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0024($sp)
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      a2, 0x001C($sp)
    sw      t0, 0x0050($sp)
    sw      $zero, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v0, 0x0048($sp)
    lw      v1, 0x0048($sp)
    lw      t0, 0x0050($sp)
    sw      v0, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80083FD8
    lui     t3, 0x8080                 # t3 = 80800000
lbl_80083F60:
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    sll     a2, t1,  1
    andi    a2, a2, 0x007F             # a2 = 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      t8, 0x0028($sp)
    sw      a2, 0x001C($sp)
    sw      t0, 0x0050($sp)
    sw      $zero, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0044($sp)
    lw      t2, 0x0044($sp)
    lw      t0, 0x0050($sp)
    sw      v0, 0x0004(t2)             # 00000004
    lui     t3, 0x8080                 # t3 = 80800000
lbl_80083FD8:
    ori     t3, t3, 0x8080             # t3 = 80808080
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t2, 0xFB00                 # t2 = FB000000
    lw      v0, 0x02C0(t0)             # 000002C0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(t0)             # 000002C0
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(t0)             # 000002C0
    sw      t3, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(t0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t0)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80084044:
# Scene Animate 40
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    lw      t6, 0x0030($sp)
    lui     v1, 0x0001                 # v1 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v1, v1, t6
    lw      v1, 0x1DE4(v1)             # 00011DE4
    lw      t0, 0x0000(t6)             # 00000000
    lw      v0, 0x02C0(t0)             # 000002C0
    ori     t8, t8, 0x0024             # t8 = DB060024
    sll     a2, v1,  2
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0030($sp)
    subu    a2, a2, v1
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    lw      a0, 0x0000(t9)             # 00000000
    sw      t0, 0x0028($sp)
    sw      t2, 0x0010($sp)
    andi    a2, a2, 0x007F             # a2 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    jal     func_8007EB00
    sw      v0, 0x0020($sp)
    lw      t1, 0x0020($sp)
    lw      t0, 0x0028($sp)
    lui     t4, 0xDB06                 # t4 = DB060000
    sw      v0, 0x0004(t1)             # 00000004
    lw      a0, 0x02D0(t0)             # 000002D0
    ori     t4, t4, 0x0020             # t4 = DB060020
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t3, a0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(t0)             # 000002D0
    sw      t4, 0x0000(a0)             # 00000000
    lw      t5, -0x5A20(t5)            # 8011A5E0
    lui     a1, 0x8010                 # a1 = 80100000
    lui     t3, 0x8012                 # t3 = 80120000
    sll     t6, t5,  2
    addu    a1, a1, t6
    lw      a1, -0x41E4(a1)            # 800FBE1C
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t8, a1,  4
    srl     t9, t8, 28
    sll     t2, t9,  2
    addu    t3, t3, t2
    lw      t3, 0x0C38(t3)             # 80120C38
    and     t7, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t7, t3
    addu    t5, t4, $at
    sw      t5, 0x0004(a0)             # 00000004
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8008412C:
# Scene Animate 23
    addiu   $sp, $sp, 0xFF50           # $sp = FFFFFF50
    sw      s1, 0x004C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s0, 0x0048($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s1, $at
    lh      a1, 0x1D32(v0)             # 00001D32
    lw      s0, 0x0000(s1)             # 00000000
    lui     t2, 0xDB06                 # t2 = DB060000
    sra     t6, a1,  8
    andi    t7, t6, 0x00FF             # t7 = 00000000
    andi    t8, a1, 0x00FF             # t8 = 00000000
    sw      t7, 0x00A8($sp)
    sw      t8, 0x00A4($sp)
    lw      t1, 0x1DE4(v0)             # 00001DE4
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t2, t2, 0x0018             # t2 = DB060018
    lui     t3, 0x8012                 # t3 = 80120000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, -0x5A20(t3)            # 8011A5E0
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8012                 # t9 = 80120000
    sll     t4, t3,  2
    addu    a3, a3, t4
    lw      a3, -0x41DC(a3)            # 800FBE24
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t6, a3,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t5, a3, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t5, t9
    addu    t3, t2, $at
    sw      t3, 0x0004(v1)             # 00000004
    lw      t4, 0x00A8($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t7, 0xDB06                 # t7 = DB060000
    bne     t4, $at, lbl_8008426C
    lw      t6, 0x00A8($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    lw      t4, 0x00A4($sp)
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    sw      t3, 0x0028($sp)
    sw      t2, 0x0024($sp)
    sw      t9, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t1, 0x00AC($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t8, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      s2, t1, $zero              # s2 = 00000000
    or      a2, t1, $zero              # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x0094($sp)
    jal     func_8007ECA4
    sw      t4, 0x0038($sp)
    lw      t0, 0x0094($sp)
    sw      v0, 0x0004(t0)             # 00000004
    beq     $zero, $zero, lbl_80084384
    lw      t7, 0x00A8($sp)
lbl_8008426C:
    bgtz    t6, lbl_80084300
    lui     t8, 0xDB06                 # t8 = DB060000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sw      t6, 0x0038($sp)
    sw      t4, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      t2, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t5, 0x0010($sp)
    sw      t1, 0x00AC($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      s2, t1, $zero              # s2 = 00000000
    or      a2, t1, $zero              # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007ECA4
    sw      v1, 0x0090($sp)
    lw      t0, 0x0090($sp)
    sw      v0, 0x0004(t0)             # 00000004
    beq     $zero, $zero, lbl_80084384
    lw      t7, 0x00A8($sp)
lbl_80084300:
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t8, t8, 0x0020             # t8 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t6, $zero, 0x00A0          # t6 = 000000A0
    sw      t6, 0x0038($sp)
    sw      t4, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      t2, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t1, 0x00AC($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t5, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      s2, t1, $zero              # s2 = 00000000
    or      a2, t1, $zero              # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007ECA4
    sw      v1, 0x008C($sp)
    lw      t0, 0x008C($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      t7, 0x00A8($sp)
lbl_80084384:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t5, 0xDB06                 # t5 = DB060000
    bne     t7, $at, lbl_80084414
    lw      t8, 0x00A8($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t5, t5, 0x0024             # t5 = DB060024
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    lw      t7, 0x00A4($sp)
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0028($sp)
    sw      t4, 0x0024($sp)
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t9, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x0088($sp)
    jal     func_8007ECA4
    sw      t7, 0x0038($sp)
    lw      t0, 0x0088($sp)
    sw      v0, 0x0004(t0)             # 00000004
    beq     $zero, $zero, lbl_80084520
    lw      t5, 0x00A8($sp)
lbl_80084414:
    slti    $at, t8, 0x0002
    beq     $at, $zero, lbl_800844A4
    lui     t9, 0xDB06                 # t9 = DB060000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t8, 0x0038($sp)
    sw      t7, 0x0028($sp)
    sw      t6, 0x0024($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007ECA4
    sw      v1, 0x0084($sp)
    lw      t0, 0x0084($sp)
    sw      v0, 0x0004(t0)             # 00000004
    beq     $zero, $zero, lbl_80084520
    lw      t5, 0x00A8($sp)
lbl_800844A4:
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t9, t9, 0x0024             # t9 = 00000024
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x00A0          # t8 = 000000A0
    sw      t8, 0x0038($sp)
    sw      t7, 0x0028($sp)
    sw      t6, 0x0024($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t2, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007ECA4
    sw      v1, 0x0080($sp)
    lw      t0, 0x0080($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      t5, 0x00A8($sp)
lbl_80084520:
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0028             # t2 = DB060028
    beq     t5, $zero, lbl_80084630
    or      a1, $zero, $zero           # a1 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t5, $zero, 0x00A0          # t5 = 000000A0
    sw      t5, 0x0038($sp)
    sw      t8, 0x0028($sp)
    sw      t7, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    or      a2, s2, $zero              # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007ECA4
    sw      v1, 0x007C($sp)
    lw      t0, 0x007C($sp)
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x002C             # t2 = DB06002C
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    lw      a2, 0x00AC($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addu    $at, a2, $zero
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t5, $zero, 0x00B4          # t5 = 000000B4
    sll     a2, a2,  2
    subu    a2, a2, $at
    sw      t5, 0x0038($sp)
    sw      t8, 0x0028($sp)
    sw      t7, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007ECA4
    sw      v1, 0x0078($sp)
    lw      t1, 0x0078($sp)
    sw      v0, 0x0004(t1)             # 00000004
    beq     $zero, $zero, lbl_80084784
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_80084630:
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0028             # t2 = DB060028
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t5, 0x00A4($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    mtc1    t5, $f4                    # $f4 = 0.00
    lui     $at, 0x42BE                # $at = 42BE0000
    mtc1    $at, $f10                  # $f10 = 95.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    sw      t3, 0x0010($sp)
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    div.s   $f0, $f6, $f8
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0028($sp)
    sw      t7, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    andi    a2, s2, 0x007F             # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x0074($sp)
    mul.s   $f16, $f0, $f10
    swc1    $f0, 0x0058($sp)
    trunc.w.s $f18, $f16
    mfc1    t2, $f18
    nop
    addiu   t3, t2, 0x00A0             # t3 = DB0600C8
    jal     func_8007ECA4
    sw      t3, 0x0038($sp)
    lw      t0, 0x0074($sp)
    lwc1    $f0, 0x0058($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t6, t6, 0x002C             # t6 = DB06002C
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a2, 0x00AC($sp)
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addu    $at, a2, $zero
    sll     a2, a2,  2
    subu    a2, a2, $at
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    mul.s   $f6, $f0, $f4
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    sw      t2, 0x0028($sp)
    sw      t9, 0x0024($sp)
    sw      t5, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      $zero, 0x0034($sp)
    trunc.w.s $f8, $f6
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    mfc1    t4, $f8
    sw      $zero, 0x001C($sp)
    sw      t7, 0x0010($sp)
    addiu   t6, t4, 0x00B9             # t6 = 000000C1
    sw      t6, 0x0038($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007ECA4
    sw      v1, 0x0070($sp)
    lw      t1, 0x0070($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_80084784:
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0030             # t8 = DB060030
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t3, $zero, 0x007F          # t3 = 0000007F
    subu    t4, t3, s2
    addiu   t8, $zero, 0x0080          # t8 = 00000080
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0024($sp)
    sw      t2, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t5, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t8, 0x0038($sp)
    sw      t4, 0x0020($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    or      a3, s2, $zero              # a3 = 00000000
    jal     func_8007ECA4
    sw      v1, 0x006C($sp)
    lw      t0, 0x006C($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0034             # t9 = DB060034
    sw      v0, 0x0004(t0)             # 00000004
    lw      s2, 0x02D0(s0)             # 000002D0
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t5, s2, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(s2)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    lw      a2, 0x00AC($sp)
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0080          # t8 = 00000080
    sll     a2, a2,  2
    sw      a2, 0x001C($sp)
    sw      t8, 0x0038($sp)
    sw      t7, 0x0028($sp)
    sw      t6, 0x0024($sp)
    sw      t4, 0x0018($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007ECA4
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      $ra, 0x0054($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp = 00000000


func_80084894:
# Scene Animate 29
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0060($sp)
    lw      t6, 0x0060($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    t2, t6, $at
    lw      v0, 0x1DE4(t2)             # 00001DE4
    lw      t0, 0x0000(t6)             # 00000000
    lw      t1, 0x02C0(t0)             # 000002C0
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0000(t1)             # 00000000
    lw      t9, 0x0060($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sw      t9, 0x0024($sp)
    sw      t2, 0x003C($sp)
    sw      t0, 0x0058($sp)
    sw      t6, 0x0028($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, v0, $zero              # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      t1, 0x0050($sp)
    lw      t3, 0x0050($sp)
    lw      t0, 0x0058($sp)
    lw      t2, 0x003C($sp)
    lui     t4, 0xE700                 # t4 = E7000000
    lui     t5, 0xFB00                 # t5 = FB000000
    sw      v0, 0x0004(t3)             # 00000004
    lw      t1, 0x02C0(t0)             # 000002C0
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(t1)          # 00000004
    sw      t4, 0x0000(t1)             # 00000000
    lw      t1, 0x02C0(t0)             # 000002C0
    lui     $at, 0x8080                # $at = 80800000
    ori     $at, $at, 0x8000           # $at = 80808000
    addiu   t8, t1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      t5, 0x0000(t1)             # 00000000
    lh      t9, 0x1D30(t2)             # 00001D30
    andi    t6, t9, 0x00FF             # t6 = 00000000
    or      t7, t6, $at                # t7 = 80808000
    sw      t7, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(t0)             # 000002D0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t6, 0x8080                 # t6 = 80800000
    ori     t6, t6, 0x8091             # t6 = 80808091
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(t0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra
    nop


func_800849B0:
# Scene Animate 34
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    lw      t6, 0x0030($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v0, v0, t6
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      t0, 0x0000(t6)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0030($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    andi    a2, v0, 0x003F             # a2 = 00000000
    lw      a0, 0x0000(t9)             # 00000000
    sw      t0, 0x0028($sp)
    sw      t2, 0x0010($sp)
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    jal     func_8007EB00
    sw      v1, 0x0020($sp)
    lw      t1, 0x0020($sp)
    lw      t0, 0x0028($sp)
    lui     t6, 0xFB00                 # t6 = FB000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t4, 0xE700                 # t4 = E7000000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t7, 0x8080                 # t7 = 80800000
    ori     t7, t7, 0x8080             # t7 = 80808080
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t0)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80084A64:
# Scene Animate 35
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, s0
    lw      v1, 0x0000(s0)             # 00000000
    lw      t1, 0x1DE4(t1)             # 00011DE4
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      t7, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    sll     a3, t1,  2
    subu    a3, a3, t1
    andi    a3, a3, 0x007F             # a3 = 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    andi    t0, t1, 0x007F             # t0 = 00000000
    addiu   t8, $zero, 0x007F          # t8 = 0000007F
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t9, 0x0010($sp)
    subu    a2, t8, t0
    sw      t0, 0x001C($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      t1, 0x0054($sp)
    sw      v1, 0x0050($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v0, 0x0048($sp)
    lw      t2, 0x0048($sp)
    lw      v1, 0x0050($sp)
    lw      t1, 0x0054($sp)
    sw      v0, 0x0004(t2)             # 00000004
    lh      t8, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x0045         # $at = 00000045
    lui     t4, 0xDB06                 # t4 = DB060000
    bne     t8, $at, lbl_80084B6C
    ori     t4, t4, 0x0024             # t4 = DB060024
    lw      v0, 0x02D0(v1)             # 000002D0
    sll     a2, t1,  2
    addu    a2, a2, t1
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      t4, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    sll     a2, a2,  1
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    sw      t5, 0x0010($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      v1, 0x0050($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    jal     func_8007EB00
    sw      v0, 0x0044($sp)
    lw      t0, 0x0044($sp)
    lw      v1, 0x0050($sp)
    sw      v0, 0x0004(t0)             # 00000004
lbl_80084B6C:
    lui     t3, 0x8080                 # t3 = 80800000
    ori     t3, t3, 0x8080             # t3 = 80808080
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t2, 0xFB00                 # t2 = FB000000
    lw      a0, 0x02C0(v1)             # 000002C0
    addiu   t6, a0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(a0)          # 00000004
    sw      t1, 0x0000(a0)             # 00000000
    lw      a0, 0x02C0(v1)             # 000002C0
    addiu   t7, a0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t3, 0x0004(a0)             # 00000004
    sw      t2, 0x0000(a0)             # 00000000
    lw      v0, 0x02D0(v1)             # 000002D0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(v1)             # 000002D0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      t3, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80084BDC:
# Scene Animate 36
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, s1, $at
    lw      a0, 0x1DE4(v1)             # 00001DE4
    sw      v1, 0x0040($sp)
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    jal     func_800D2FA0
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    sra     t2, v0,  8
    sll     t2, t2, 24
    sra     t2, t2, 24
    lw      v1, 0x0040($sp)
    lw      t6, 0x1DE4(v1)             # 00001DE4
    lw      s0, 0x0000(s1)             # 00000000
    addiu   $at, $zero, 0x0064         # $at = 00000064
    sw      t6, 0x0074($sp)
    lh      t7, 0x00A4(s1)             # 000000A4
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    bne     t7, $at, lbl_80084D0C
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t0, 0x02D0(s0)             # 000002D0
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(t0)             # 00000000
    lw      a2, 0x0074($sp)
    lw      a0, 0x0000(s1)             # 00000000
    sb      t2, 0x0073($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      a2, 0x0040($sp)
    sw      t6, 0x0010($sp)
    jal     func_8007EB00
    sw      t0, 0x0064($sp)
    lw      v1, 0x0064($sp)
    lw      t3, 0x0040($sp)
    lui     t8, 0xDB06                 # t8 = DB060000
    sw      v0, 0x0004(v1)             # 00000004
    lw      t0, 0x02D0(s0)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    subu    a3, t9, t3
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    sw      t6, 0x0010($sp)
    sw      t6, 0x0028($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x0024($sp)
    sw      t3, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0060($sp)
    lw      t1, 0x0060($sp)
    lb      t2, 0x0073($sp)
    sw      v0, 0x0004(t1)             # 00000004
lbl_80084D0C:
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x002C             # t8 = DB06002C
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    lw      a3, 0x0074($sp)
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    andi    a3, a3, 0x007F             # a3 = 00000000
    subu    a2, t9, a3
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0010($sp)
    sw      t6, 0x0028($sp)
    sw      t7, 0x0014($sp)
    sw      t9, 0x0024($sp)
    sw      a3, 0x001C($sp)
    sw      a3, 0x0020($sp)
    sw      t8, 0x0018($sp)
    sb      t2, 0x0073($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x005C($sp)
    lw      t1, 0x005C($sp)
    lb      t2, 0x0073($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    sra     t2, t2,  1
    addiu   t2, t2, 0x00C0             # t2 = 000000C0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    sll     t2, t2, 24
    sra     t2, t2, 24
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      t0, 0x02D0(s0)             # 000002D0
    andi    v0, t2, 0x00FF             # v0 = 000000C0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(s0)             # 000002D0
    sll     t9, v0, 24
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t4, 0x0000(t0)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    sll     t6, v0, 16
    or      t7, t9, t6                 # t7 = 00000008
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sll     t8, v0,  8
    or      t9, t7, t8                 # t9 = 00000008
    ori     t6, t9, 0x0080             # t6 = 00000088
    sw      t6, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80084E48:
# Scene Animate Helper (Tower Collapse 0x26,0x33,0x34)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s1, $at
    lw      v1, 0x1DE4(v0)             # 00001DE4
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    andi    t6, v1, 0x007F             # t6 = 00000000
    bnel    t6, $at, lbl_80084EE4
    andi    t1, v1, 0x003F             # t1 = 00000000
    lh      t7, 0x07A0(s1)             # 000007A0
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sll     t8, t7,  2
    addu    t9, s1, t8
    lw      a0, 0x0790(t9)             # 00000790
    jal     func_8007D85C
    sw      v0, 0x002C($sp)
    sll     a0, v0, 16
    sw      v0, 0x0034($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x2710          # a1 = 00002710
    lh      s0, 0x0036($sp)
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    or      a2, $zero, $zero           # a2 = 00000000
    sll     a0, s0, 16
    sra     a0, a0, 16
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x007F          # a1 = 0000007F
    lw      t0, 0x002C($sp)
    lw      v1, 0x1DE4(t0)             # 00001DE4
    andi    t1, v1, 0x003F             # t1 = 00000000
lbl_80084EE4:
    bnel    t1, $zero, lbl_80084FF8
    lw      $ra, 0x0024($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x759C($at)          # 80108A64
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80084FF8
    lw      $ra, 0x0024($sp)
    lh      t2, 0x07A0(s1)             # 000007A0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t3, t2,  2
    addu    t4, s1, t3
    jal     func_8007D85C
    lw      a0, 0x0790(t4)             # 00000790
    jal     func_800CDCCC              # Rand.Next() float
    sw      v0, 0x0034($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x7598($at)          # 80108A68
    lui     $at, 0x46FA                # $at = 46FA0000
    mtc1    $at, $f10                  # $f10 = 32000.00
    mul.s   $f8, $f0, $f6
    lh      s0, 0x0036($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    a1, $f18
    nop
    sll     a1, a1, 16
    jal     func_8007D668
    sra     a1, a1, 16
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f6                   # $f6 = 9.00
    sll     a0, s0, 16
    sra     a0, a0, 16
    mul.s   $f8, $f0, $f6
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    sub.s   $f10, $f4, $f8
    trunc.w.s $f16, $f10
    mfc1    a1, $f16
    nop
    sll     a1, a1, 16
    jal     func_8007D738
    sra     a1, a1, 16
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4240                # $at = 42400000
    mtc1    $at, $f18                  # $f18 = 48.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    sll     a0, s0, 16
    sra     a0, a0, 16
    mul.s   $f4, $f0, $f6
    sub.s   $f8, $f18, $f4
    trunc.w.s $f10, $f8
    mfc1    a1, $f10
    nop
    sll     a1, a1, 16
    jal     func_8007D6B0
    sra     a1, a1, 16
    lw      $ra, 0x0024($sp)
lbl_80084FF8:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80085008:
# Scene Animate 38
# Calls 80085008
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    t0, s1, $at
    lw      a0, 0x1DE4(t0)             # 00001DE4
    sw      t0, 0x0048($sp)
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    jal     func_800D2FA0
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    sra     t6, v0,  8
    sb      t6, 0x007B($sp)
    lw      t0, 0x0048($sp)
    lw      s0, 0x0000(s1)             # 00000000
    lw      t1, 0x1DE4(t0)             # 00001DE4
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t7, $zero, 0x01FF          # t7 = 000001FF
    andi    a3, t1, 0x01FF             # a3 = 00000000
    subu    t8, t7, a3
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t5, $zero, 0x0080          # t5 = 00000080
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t5, 0x0028($sp)
    sw      t9, 0x0010($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x0020($sp)
    sw      t1, 0x0044($sp)
    sw      t1, 0x007C($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      t3, t1, $zero              # t3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x006C($sp)
    lw      t2, 0x006C($sp)
    lw      t3, 0x0044($sp)
    lui     t7, 0xDB06                 # t7 = DB060000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t7, t7, 0x0024             # t7 = DB060024
    andi    a3, t3, 0x00FF             # a3 = 00000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    subu    t7, t6, a3
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t9, 0x0028($sp)
    sw      t8, 0x0010($sp)
    sw      t8, 0x0024($sp)
    sw      t7, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0068($sp)
    lw      t4, 0x0068($sp)
    lw      t1, 0x007C($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    sw      v0, 0x0004(t4)             # 00000004
    lw      t0, 0x02D0(s0)             # 000002D0
    ori     t6, t6, 0x0028             # t6 = DB060028
    sll     a3, t1,  2
    addiu   t5, t0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    sll     t5, t1,  4
    subu    t5, t5, t1
    sll     t5, t5,  1
    addu    a3, a3, t1
    sll     a3, a3,  2
    andi    t6, t5, 0x07FF             # t6 = 00000008
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    addiu   t8, $zero, 0x0200          # t8 = 00000200
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t8, 0x0028($sp)
    sw      t7, 0x0010($sp)
    sw      t7, 0x0024($sp)
    sw      t6, 0x0020($sp)
    andi    a3, a3, 0x07FF             # a3 = 00000000
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0064($sp)
    lw      t2, 0x0064($sp)
    lui     t4, 0x8080                 # t4 = 80800000
    ori     t4, t4, 0x8080             # t4 = 80808080
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      t0, 0x02D0(s0)             # 000002D0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t1, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(s0)             # 000002D0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    lb      a2, 0x007B($sp)
    sw      t4, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    sra     a2, a2,  1
    addiu   a2, a2, 0x00C0             # a2 = 000000C0
    sll     a2, a2, 24
    sra     a2, a2, 24
    lw      v1, 0x02C0(s0)             # 000002C0
    andi    v0, a2, 0x00FF             # v0 = 000000C0
    sll     t5, v0, 24
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    sll     t6, v0, 16
    or      t7, t5, t6                 # t7 = 00000008
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sll     t8, v0,  8
    or      t9, t7, t8                 # t9 = 00000008
    ori     t5, t9, 0x0080             # t5 = 00000088
    sw      t5, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    jal     func_8002049C
    addiu   a1, $zero, 0x0037          # a1 = 00000037
    beql    v0, $zero, lbl_800852C8
    lw      $ra, 0x003C($sp)
    lh      v0, 0x00A4(s1)             # 000000A4
    addiu   $at, $zero, 0x004F         # $at = 0000004F
    beq     v0, $at, lbl_800852BC
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     v0, $at, lbl_800852BC
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_800852BC
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    v0, $at, lbl_800852C8
    lw      $ra, 0x003C($sp)
lbl_800852BC:
    jal     func_80084E48
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x003C($sp)
lbl_800852C8:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_800852D8:
# Scene Animate 37
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0078($sp)
    lw      t6, 0x0078($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v0, v0, t6
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, -0x5A20(t9)            # 8011A5E0
    lui     t3, 0x8010                 # t3 = 80100000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, t9,  2
    addu    t3, t3, t6
    lw      t3, -0x41D4(t3)            # 800FBE2C
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    or      a1, $zero, $zero           # a1 = 00000000
    sll     t8, t3,  4
    srl     t9, t8, 28
    sll     t6, t9,  2
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t6
    lw      t8, 0x0C38(t8)             # 80120C38
    and     t7, t3, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t6, t9, $at
    sw      t6, 0x0004(t0)             # 00000004
    lw      t1, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(t1)             # 00000000
    lw      t9, 0x0078($sp)
    andi    t4, v0, 0x007F             # t4 = 00000000
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    lw      a0, 0x0000(t9)             # 80120000
    subu    a2, t6, t4
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    andi    a3, v0, 0x007F             # a3 = 00000000
    sw      a3, 0x0020($sp)
    sw      a3, 0x003C($sp)
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t6, 0x0024($sp)
    sw      a2, 0x0040($sp)
    sw      t4, 0x0044($sp)
    sw      v1, 0x0070($sp)
    sw      t4, 0x001C($sp)
    jal     func_8007EB84
    sw      t1, 0x0064($sp)
    lw      t5, 0x0064($sp)
    lw      v1, 0x0070($sp)
    lw      a2, 0x0040($sp)
    lw      a3, 0x003C($sp)
    lw      t4, 0x0044($sp)
    sw      v0, 0x0004(t5)             # 00000004
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      t9, 0x0000(t0)             # 00000000
    lw      t6, 0x0078($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    lw      a0, 0x0000(t6)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t6, 0x0024($sp)
    sw      a3, 0x0020($sp)
    sw      t4, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0060($sp)
    lw      t2, 0x0060($sp)
    lw      v1, 0x0070($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t1, 0x02C0(v1)             # 000002C0
    addiu   t8, t1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(t1)          # 00000004
    sw      t3, 0x0000(t1)             # 00000000
    lw      t1, 0x02C0(v1)             # 000002C0
    addiu   t9, t1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(t1)             # 00000004
    sw      t4, 0x0000(t1)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t4, 0x0000(t0)             # 00000000
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_800854BC:
# Scene Animate 42
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s0, 0x0038($sp)
    lui     s2, 0x0001                 # s2 = 00010000
    addu    s2, s2, s1
    lw      s0, 0x0000(s1)             # 00000000
    lw      s2, 0x1DE4(s2)             # 00011DE4
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x0010($sp)
    sw      s2, 0x0048($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      v0, s2, $zero              # v0 = 00010000
    andi    a2, s2, 0x003F             # a2 = 00000000
    addiu   a3, $zero, 0x0100          # a3 = 00000100
    jal     func_8007EB00
    sw      v1, 0x0068($sp)
    lw      t0, 0x0068($sp)
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0024             # t5 = DB060024
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    sll     a3, s2,  4
    subu    a3, a3, s2
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    sll     t9, s2,  2
    subu    t9, t9, s2
    sll     t9, t9,  3
    addu    t9, t9, s2
    sll     t9, t9,  1
    andi    t5, t9, 0x07FF             # t5 = 00000008
    sll     a3, a3,  2
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t7, $zero, 0x0200          # t7 = 00000200
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t7, 0x0028($sp)
    sw      t6, 0x0010($sp)
    sw      t6, 0x0024($sp)
    andi    a3, a3, 0x07FF             # a3 = 00000000
    sw      t5, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0064($sp)
    lw      t1, 0x0064($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    sw      v0, 0x0004(t1)             # 00000004
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t5, $zero, 0x007F          # t5 = 0000007F
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    lw      v1, 0x0048($sp)
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    andi    v1, v1, 0x007F             # v1 = 00000000
    subu    a2, t5, v1
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0014($sp)
    sw      t5, 0x0028($sp)
    sw      v1, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      t6, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0060($sp)
    lw      t2, 0x0060($sp)
    addiu   t0, $zero, 0x03FF          # t0 = 000003FF
    lui     t7, 0xDB06                 # t7 = DB060000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t7, t7, 0x002C             # t7 = DB06002C
    sll     t8, s2,  2
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    subu    t8, t8, s2
    sll     t8, t8,  1
    andi    t9, t8, 0x03FF             # t9 = 00000000
    sll     t8, s2,  2
    subu    t8, t8, s2
    subu    a3, t0, t9
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t6, $zero, 0x0100          # t6 = 00000100
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    sw      t5, 0x0010($sp)
    sw      t6, 0x0014($sp)
    sw      t7, 0x0018($sp)
    andi    t9, t8, 0x03FF             # t9 = 00000000
    subu    t5, t0, t9
    addiu   t7, $zero, 0x0100          # t7 = 00000100
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      t5, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x005C($sp)
    lw      t1, 0x005C($sp)
    lui     t4, 0x8080                 # t4 = 80800000
    ori     t4, t4, 0x8080             # t4 = 80808080
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80085728:
# Scene Animate 43
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s1
    lw      s0, 0x0000(s1)             # 00000000
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      t0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    andi    v1, v0, 0x007F             # v1 = 00000000
    sw      v1, 0x0020($sp)
    sw      v1, 0x0044($sp)
    sw      t5, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      v0, 0x006C($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0060($sp)
    lw      t1, 0x0060($sp)
    lw      a3, 0x0044($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t9, t9, 0x0028             # t9 = DB060028
    addiu   t5, $zero, 0x007F          # t5 = 0000007F
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    lw      t0, 0x006C($sp)
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    andi    t0, t0, 0x007F             # t0 = 00000000
    subu    a2, t5, t0
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    sw      t5, 0x0028($sp)
    sw      t0, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x0024($sp)
    sw      a3, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x005C($sp)
    lw      t2, 0x005C($sp)
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x006C($sp)
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    sll     t9, t8,  2
    addu    t9, t9, t8
    sll     t9, t9,  1
    andi    t5, t9, 0x00FF             # t5 = 00000000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    subu    a2, t6, t5
    sw      t7, 0x0010($sp)
    jal     func_8007EB00
    sw      v1, 0x0058($sp)
    lw      t1, 0x0058($sp)
    lui     t4, 0x8080                 # t4 = 80800000
    ori     t4, t4, 0x8080             # t4 = 80808080
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_80085900:
# Scene Animate 47
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0048($sp)
    lw      t6, 0x0048($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v0, v0, t6
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      t0, 0x0000(t6)             # 00000000
    lw      t1, 0x02D0(t0)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    andi    v1, v0, 0x007F             # v1 = 00000000
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      t8, 0x0000(t1)             # 00000000
    lw      t9, 0x0048($sp)
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    subu    a2, t6, v1
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    andi    a3, v0, 0x007F             # a3 = 00000000
    sw      a3, 0x0020($sp)
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t8, 0x0014($sp)
    sw      t6, 0x0024($sp)
    sw      t9, 0x0018($sp)
    sw      t0, 0x0040($sp)
    sw      v1, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t1, 0x0038($sp)
    lw      t2, 0x0038($sp)
    lw      t0, 0x0040($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      t1, 0x02D0(t0)             # 000002D0
    addiu   t6, t1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t0)             # 000002D0
    sw      $zero, 0x0004(t1)          # 00000004
    sw      t3, 0x0000(t1)             # 00000000
    lw      t1, 0x02D0(t0)             # 000002D0
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      t5, 0x0004(t1)             # 00000004
    sw      t4, 0x0000(t1)             # 00000000
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80085A04:
# Scene Animate 27
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0078($sp)
    lw      t6, 0x0078($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v0, v0, t6
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, -0x5A20(t9)            # 8011A5E0
    lui     t3, 0x8010                 # t3 = 80100000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, t9,  2
    addu    t3, t3, t6
    lw      t3, -0x41CC(t3)            # 800FBE34
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    or      a1, $zero, $zero           # a1 = 00000000
    sll     t8, t3,  4
    srl     t9, t8, 28
    sll     t6, t9,  2
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t6
    lw      t8, 0x0C38(t8)             # 80120C38
    and     t7, t3, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t6, t9, $at
    sw      t6, 0x0004(t0)             # 00000004
    lw      t1, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(t1)             # 00000000
    lw      t9, 0x0078($sp)
    andi    t4, v0, 0x007F             # t4 = 00000000
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    lw      a0, 0x0000(t9)             # 80120000
    subu    a2, t6, t4
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    andi    a3, v0, 0x007F             # a3 = 00000000
    sw      a3, 0x0020($sp)
    sw      a3, 0x003C($sp)
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t6, 0x0024($sp)
    sw      a2, 0x0040($sp)
    sw      t4, 0x0044($sp)
    sw      v1, 0x0070($sp)
    sw      t4, 0x001C($sp)
    jal     func_8007EB84
    sw      t1, 0x0064($sp)
    lw      t5, 0x0064($sp)
    lw      v1, 0x0070($sp)
    lw      a2, 0x0040($sp)
    lw      a3, 0x003C($sp)
    lw      t4, 0x0044($sp)
    sw      v0, 0x0004(t5)             # 00000004
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      t9, 0x0000(t0)             # 00000000
    lw      t6, 0x0078($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    lw      a0, 0x0000(t6)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t6, 0x0024($sp)
    sw      a3, 0x0020($sp)
    sw      t4, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0060($sp)
    lw      t2, 0x0060($sp)
    lw      v1, 0x0070($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t1, 0x02C0(v1)             # 000002C0
    addiu   t8, t1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(t1)          # 00000004
    sw      t3, 0x0000(t1)             # 00000000
    lw      t1, 0x02C0(v1)             # 000002C0
    addiu   t9, t1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(t1)             # 00000004
    sw      t4, 0x0000(t1)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t4, 0x0000(t0)             # 00000000
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80085BE8:
# (Helper for 80085D48)
    lui     v0, 0xE800                 # v0 = E8000000
    lui     t0, 0xF200                 # t0 = F2000000
    lw      v1, 0x02C4(a0)             # 000002C4
    andi    a2, a2, 0x07FF             # a2 = 00000000
    andi    a3, a3, 0x07FF             # a3 = 00000000
    addiu   v1, v1, 0xFFB0             # v1 = FFFFFFB0
    sw      v1, 0x02C4(a0)             # 000002C4
    lw      t6, 0x001C($sp)
    lw      t8, 0x0020($sp)
    andi    t1, a2, 0x0FFF             # t1 = 00000000
    andi    t7, t6, 0x07FF             # t7 = 00000000
    andi    t9, t8, 0x07FF             # t9 = 00000000
    sw      t7, 0x001C($sp)
    sw      t9, 0x0020($sp)
    sw      v0, 0x0000(v1)             # FFFFFFB0
    sw      $zero, 0x0004(v1)          # FFFFFFB4
    sll     t2, t1, 12
    or      t3, t2, t0                 # t3 = F2000000
    andi    t4, a3, 0x0FFF             # t4 = 00000000
    or      t5, t3, t4                 # t5 = F2000000
    sw      t5, 0x0008(v1)             # FFFFFFB8
    lw      t8, 0x0010($sp)
    andi    t6, a1, 0x0007             # t6 = 00000000
    sll     t7, t6, 24
    lw      t6, 0x0014($sp)
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sll     t1, t9,  2
    addu    t2, a2, t1
    addiu   t8, t6, 0xFFFF             # t8 = FFFFFFFF
    sll     t9, t8,  2
    andi    t3, t2, 0x0FFF             # t3 = 00000000
    sll     t4, t3, 12
    addu    t1, a3, t9
    andi    t2, t1, 0x0FFF             # t2 = 00000000
    or      t5, t7, t4                 # t5 = 00000000
    or      t3, t5, t2                 # t3 = 00000000
    sw      t3, 0x000C(v1)             # FFFFFFBC
    sw      v0, 0x0010(v1)             # FFFFFFC0
    sw      $zero, 0x0014(v1)          # FFFFFFC4
    lw      t7, 0x001C($sp)
    lw      t9, 0x0020($sp)
    or      v0, v1, $zero              # v0 = FFFFFFB0
    andi    t4, t7, 0x0FFF             # t4 = 00000000
    sll     t6, t4, 12
    or      t8, t6, t0                 # t8 = F2000000
    andi    t1, t9, 0x0FFF             # t1 = 00000FFF
    or      t5, t8, t1                 # t5 = F2000FFF
    sw      t5, 0x0018(v1)             # FFFFFFC8
    lw      t3, 0x0024($sp)
    lw      t2, 0x001C($sp)
    lw      t1, 0x0018($sp)
    addiu   t7, t3, 0xFFFF             # t7 = FFFFFFFF
    sll     t4, t7,  2
    addu    t6, t2, t4
    lw      t4, 0x0028($sp)
    andi    t9, t6, 0x0FFF             # t9 = 00000000
    lw      t2, 0x0020($sp)
    sll     t8, t9, 12
    andi    t5, t1, 0x0007             # t5 = 00000007
    addiu   t6, t4, 0xFFFF             # t6 = FFFFFFFF
    sll     t9, t6,  2
    sll     t3, t5, 24
    addu    t1, t2, t9
    andi    t5, t1, 0x0FFF             # t5 = 00000FFF
    or      t7, t3, t8                 # t7 = F2000000
    or      t3, t7, t5                 # t3 = F2000FFF
    sw      t3, 0x001C(v1)             # FFFFFFCC
    lui     t8, 0xFA00                 # t8 = FA000000
    sw      t8, 0x0020(v1)             # FFFFFFD0
    lw      t9, 0x0030($sp)
    lw      t3, 0x0034($sp)
    lw      t6, 0x002C($sp)
    andi    t1, t9, 0x00FF             # t1 = 00000000
    lw      t9, 0x0038($sp)
    sll     t7, t1, 16
    andi    t8, t3, 0x00FF             # t8 = 000000FF
    sll     t2, t6, 24
    or      t5, t2, t7                 # t5 = F2000000
    sll     t4, t8,  8
    or      t6, t5, t4                 # t6 = F2000000
    andi    t1, t9, 0x00FF             # t1 = 00000000
    or      t2, t6, t1                 # t2 = F2000000
    sw      t2, 0x0024(v1)             # FFFFFFD4
    lui     t7, 0xDF00                 # t7 = DF000000
    sw      t7, 0x0028(v1)             # FFFFFFD8
    sw      $zero, 0x002C(v1)          # FFFFFFDC
    jr      $ra
    nop


func_80085D48:
# Scene Animate 50
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0044($sp)
    sw      a0, 0x0058($sp)
    lw      t6, 0x0058($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v1, t6, $at
    lw      v0, 0x1DE4(v1)             # 00001DE4
    lw      t0, 0x0000(t6)             # 00000000
    lw      t1, 0x02D0(t0)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    andi    t2, v0, 0x007F             # t2 = 00000000
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      t8, 0x0000(t1)             # 00000000
    lw      t9, 0x0058($sp)
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    subu    a2, t6, t2
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0014($sp)
    sw      t6, 0x0024($sp)
    sw      t9, 0x0018($sp)
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    andi    a3, v0, 0x007F             # a3 = 00000000
    sw      a3, 0x0020($sp)
    sw      t8, 0x002C($sp)
    sw      t6, 0x0034($sp)
    sw      t9, 0x0030($sp)
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t2, 0x001C($sp)
    lh      t7, 0x1D30(v1)             # 00001D30
    sw      t0, 0x0050($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t8, t7, 0x007F             # t8 = 0000009F
    sw      t8, 0x0038($sp)
    jal     func_80085BE8
    sw      t1, 0x0048($sp)
    lw      t3, 0x0048($sp)
    lw      t0, 0x0050($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t3)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t0)             # 000002C0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      t1, 0x02D0(t0)             # 000002D0
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      $zero, 0x0004(t1)          # 00000004
    sw      t2, 0x0000(t1)             # 00000000
    lw      t1, 0x02D0(t0)             # 000002D0
    addiu   t8, t1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      t5, 0x0004(t1)             # 00000004
    sw      t4, 0x0000(t1)             # 00000000
    lw      $ra, 0x0044($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80085E70:
# Scene Animate 41
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s0, 0x0038($sp)
    lui     s2, 0x0001                 # s2 = 00010000
    addu    s2, s2, s1
    lw      s0, 0x0000(s1)             # 00000000
    lw      s2, 0x1DE4(s2)             # 00011DE4
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sll     t8, s2,  2
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    andi    t9, t8, 0x007F             # t9 = 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t5, $zero, 0x007F          # t5 = 0000007F
    subu    a1, t5, t9
    sw      t6, 0x0010($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    jal     func_8007EB00
    sw      v1, 0x0058($sp)
    lw      t1, 0x0058($sp)
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    sw      v0, 0x0004(t1)             # 00000004
    lw      t0, 0x02C0(s0)             # 000002C0
    sll     a2, s2,  2
    addu    a2, a2, s2
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    sw      t5, 0x0010($sp)
    andi    a2, a2, 0x003F             # a2 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    jal     func_8007EB00
    sw      t0, 0x0054($sp)
    lw      v1, 0x0054($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0028             # t6 = DB060028
    sw      v0, 0x0004(v1)             # 00000004
    lw      t0, 0x02C0(s0)             # 000002C0
    sll     t7, s2,  1
    andi    t8, t7, 0x003F             # t8 = 00000000
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   t5, $zero, 0x003F          # t5 = 0000003F
    subu    a2, t5, t8
    sw      t9, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    jal     func_8007EB00
    sw      t0, 0x0050($sp)
    lw      t1, 0x0050($sp)
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x002C             # t7 = DB06002C
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    sll     t5, s2,  2
    subu    t5, t5, s2
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    andi    t8, t5, 0x007F             # t8 = 00000000
    addiu   t9, $zero, 0x007F          # t9 = 0000007F
    subu    a3, t9, t8
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t5, 0x0018($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x0028($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x004C($sp)
    lw      t2, 0x004C($sp)
    lui     t4, 0x8080                 # t4 = 80800000
    ori     t4, t4, 0x8080             # t4 = 80808080
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t1, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80086068:
# Scene Animate 44
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    lw      v0, 0x0000(a0)             # 00000000
    lw      a1, 0x02D0(v0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, a1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v0)             # 000002D0
    lui     t8, 0x8012                 # t8 = 80120000
    sw      t7, 0x0000(a1)             # 00000000
    lw      t8, -0x5A20(t8)            # 8011A5E0
    lui     a2, 0x8010                 # a2 = 80100000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t9, t8,  2
    addu    a2, a2, t9
    lw      a2, -0x41C4(a2)            # 800FBE3C
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, a2,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    lui     t7, 0x8012                 # t7 = 80120000
    addu    t7, t7, t9
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t6, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(a1)             # 00000004
    lw      t0, 0x02C0(v0)             # 000002C0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v0)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(v0)             # 000002C0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v0)             # 000002C0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t4, 0x0000(t0)             # 00000000
    lw      a1, 0x02D0(v0)             # 000002D0
    addiu   t8, a1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v0)             # 000002D0
    sw      $zero, 0x0004(a1)          # 00000004
    sw      t3, 0x0000(a1)             # 00000000
    lw      a1, 0x02D0(v0)             # 000002D0
    addiu   t9, a1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v0)             # 000002D0
    sw      t5, 0x0004(a1)             # 00000004
    sw      t4, 0x0000(a1)             # 00000000
    jr      $ra
    nop


func_80086138:
# Scene Animate 45
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t6, 0x0004(v1)             # 8011A5D4
    lw      v0, 0x0000(a0)             # 00000000
    lui     a1, 0xE700                 # a1 = E7000000
    bne     t6, $zero, lbl_8008615C
    lui     t5, 0x00FF                 # t5 = 00FF0000
    beq     $zero, $zero, lbl_80086160
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_8008615C:
    lw      a2, 0x0010(v1)             # 8011A5E0
lbl_80086160:
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    lw      v1, 0x02C0(v0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 8011A5D8
    sw      t7, 0x02C0(v0)             # 000002C0
    sll     t0, a2,  2
    lui     t1, 0x8010                 # t1 = 80100000
    addu    t1, t1, t0
    sw      t8, 0x0000(v1)             # 8011A5D0
    lw      t1, -0x41B4(t1)            # 800FBE4C
    lui     $at, 0x8000                # $at = 80000000
    lui     t3, 0x8010                 # t3 = 80100000
    sll     t6, t1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t6, 0x8012                 # t6 = 80120000
    addu    t6, t6, t8
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t9, t1, t5
    addu    t3, t3, t0
    addu    t7, t9, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v1)             # 8011A5D4
    lw      v1, 0x02C0(v0)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t9, v1, 0x0008             # t9 = 8011A5D8
    sw      t9, 0x02C0(v0)             # 000002C0
    sw      t6, 0x0000(v1)             # 8011A5D0
    lw      t3, -0x41BC(t3)            # 800FBE44
    lui     $at, 0x8000                # $at = 80000000
    lui     t1, 0xFB00                 # t1 = FB000000
    sll     t8, t3,  4
    srl     t9, t8, 28
    sll     t6, t9,  2
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t6
    lw      t8, 0x0C38(t8)             # 80120C38
    and     t7, t3, t5
    addu    t9, t7, t8
    addu    t6, t9, $at
    sw      t6, 0x0004(v1)             # 8011A5D4
    lw      v1, 0x02C0(v0)             # 000002C0
    addiu   t7, v1, 0x0008             # t7 = 8011A5D8
    sw      t7, 0x02C0(v0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 8011A5D4
    sw      a1, 0x0000(v1)             # 8011A5D0
    lw      v1, 0x02C0(v0)             # 000002C0
    lui     t2, 0x8080                 # t2 = 80800000
    ori     t2, t2, 0x8080             # t2 = 80808080
    addiu   t8, v1, 0x0008             # t8 = 8011A5D8
    sw      t8, 0x02C0(v0)             # 000002C0
    sw      t2, 0x0004(v1)             # 8011A5D4
    sw      t1, 0x0000(v1)             # 8011A5D0
    lw      a3, 0x02D0(v0)             # 000002D0
    addiu   t9, a3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v0)             # 000002D0
    sw      $zero, 0x0004(a3)          # 00000004
    sw      a1, 0x0000(a3)             # 00000000
    lw      a3, 0x02D0(v0)             # 000002D0
    addiu   t6, a3, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v0)             # 000002D0
    sw      t2, 0x0004(a3)             # 00000004
    sw      t1, 0x0000(a3)             # 00000000
    jr      $ra
    nop


func_8008626C:
# Scene Animate 46
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0060($sp)
    lw      t6, 0x0060($sp)
    lui     t2, 0x0001                 # t2 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    t2, t2, t6
    lw      t2, 0x1DE4(t2)             # 00011DE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      t0, 0x02C0(v1)             # 000002C0
    ori     t8, t8, 0x0020             # t8 = DB060020
    sll     t4, t2,  2
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, 0x0060($sp)
    subu    t4, t4, t2
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    lw      a0, 0x0000(t9)             # 00000000
    sw      t4, 0x0038($sp)
    sw      t2, 0x005C($sp)
    sw      v1, 0x0058($sp)
    sw      t6, 0x0010($sp)
    andi    a2, t4, 0x007F             # a2 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    jal     func_8007EB00
    sw      t0, 0x0050($sp)
    lw      t3, 0x0050($sp)
    lw      v1, 0x0058($sp)
    lw      t2, 0x005C($sp)
    lw      t4, 0x0038($sp)
    addiu   t0, $zero, 0x03FF          # t0 = 000003FF
    sw      v0, 0x0004(t3)             # 00000004
    lw      t1, 0x02D0(v1)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t8, 0x0000(t1)             # 00000000
    lw      t9, 0x0060($sp)
    andi    t6, t4, 0x03FF             # t6 = 00000000
    subu    a3, t0, t6
    lw      a0, 0x0000(t9)             # 00000000
    sll     t6, t2,  2
    subu    t6, t6, t2
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sw      t7, 0x0010($sp)
    sll     t6, t6,  1
    andi    t7, t6, 0x03FF             # t7 = 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0100          # t8 = 00000100
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    subu    t8, t0, t7
    addiu   t6, $zero, 0x0100          # t6 = 00000100
    sw      t6, 0x0028($sp)
    sw      t8, 0x0020($sp)
    sw      t9, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      t1, 0x004C($sp)
    lw      t5, 0x004C($sp)
    lw      v1, 0x0058($sp)
    lui     t4, 0x8080                 # t4 = 80800000
    ori     t4, t4, 0x8080             # t4 = 80808080
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      v0, 0x0004(t5)             # 00000004
    lw      t0, 0x02C0(v1)             # 000002C0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(v1)             # 000002C0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t4, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      t1, 0x02D0(v1)             # 000002D0
    addiu   t9, t1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(t1)          # 00000004
    sw      t2, 0x0000(t1)             # 00000000
    lw      t1, 0x02D0(v1)             # 000002D0
    addiu   t6, t1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      t4, 0x0004(t1)             # 00000004
    sw      t3, 0x0000(t1)             # 00000000
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_800863E8:
# Scene Animate 22
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0078($sp)
    lw      t6, 0x0078($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v0, v0, t6
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, -0x5A20(t9)            # 8011A5E0
    lui     t2, 0x8010                 # t2 = 80100000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t6, t9,  2
    addu    t2, t2, t6
    lw      t2, -0x41AC(t2)            # 800FBE54
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    or      a1, $zero, $zero           # a1 = 00000000
    sll     t8, t2,  4
    srl     t9, t8, 28
    sll     t6, t9,  2
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t6
    lw      t8, 0x0C38(t8)             # 80120C38
    and     t7, t2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t6, t9, $at
    sw      t6, 0x0004(t0)             # 00000004
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, 0x0078($sp)
    andi    t3, v0, 0x007F             # t3 = 00000000
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    lw      a0, 0x0000(t9)             # 80120000
    subu    a2, t6, t3
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    andi    a3, v0, 0x007F             # a3 = 00000000
    sw      a3, 0x0020($sp)
    sw      a3, 0x003C($sp)
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t6, 0x0024($sp)
    sw      a2, 0x0040($sp)
    sw      t3, 0x0044($sp)
    sw      v1, 0x0070($sp)
    sw      t3, 0x001C($sp)
    jal     func_8007EB84
    sw      t0, 0x0064($sp)
    lw      t4, 0x0064($sp)
    lw      v1, 0x0070($sp)
    lw      a2, 0x0040($sp)
    lw      a3, 0x003C($sp)
    lw      t3, 0x0044($sp)
    sw      v0, 0x0004(t4)             # 00000004
    lw      t1, 0x02C0(v1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    addiu   t8, t1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0000(t1)             # 00000000
    lw      t6, 0x0078($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    lw      a0, 0x0000(t6)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t6, 0x0024($sp)
    sw      a3, 0x0020($sp)
    sw      t3, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t1, 0x0060($sp)
    lw      t2, 0x0060($sp)
    lw      v1, 0x0070($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t1, 0x02C0(v1)             # 000002C0
    addiu   t8, t1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(t1)          # 00000004
    sw      t3, 0x0000(t1)             # 00000000
    lw      t1, 0x02C0(v1)             # 000002C0
    addiu   t9, t1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(t1)             # 00000004
    sw      t4, 0x0000(t1)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t4, 0x0000(t0)             # 00000000
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_800865CC:
# Scene Animate 25
    lw      v0, 0x0000(a0)             # 00000000
    lw      a1, 0x02D0(v0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, a1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v0)             # 000002D0
    lui     t8, 0x8012                 # t8 = 80120000
    sw      t7, 0x0000(a1)             # 00000000
    lw      t8, -0x5A20(t8)            # 8011A5E0
    lui     a2, 0x8010                 # a2 = 80100000
    lui     t4, 0x8012                 # t4 = 80120000
    sll     t9, t8,  2
    addu    a2, a2, t9
    lw      a2, -0x41A4(a2)            # 800FBE5C
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t1, a2,  4
    srl     t2, t1, 28
    sll     t3, t2,  2
    addu    t4, t4, t3
    lw      t4, 0x0C38(t4)             # 80120C38
    and     t0, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t0, t4
    addu    t6, t5, $at
    sw      t6, 0x0004(a1)             # 00000004
    jr      $ra
    nop


func_8008663C:
# Scene Animate 1
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    lw      v0, 0x0000(s0)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    lui     t7, 0xDB06                 # t7 = DB060000
    lw      s1, 0x02C4(v0)             # 000002C4
    addu    s2, s0, $at
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   s1, s1, 0xFFE0             # s1 = FFFFFFE0
    sw      s1, 0x02C4(v0)             # 000002C4
    lw      v1, 0x0000(s0)             # 00000000
    lw      t2, 0x1DE4(s2)             # 00001DE4
    lw      t0, 0x02D0(v1)             # 000002D0
    andi    t3, t2, 0x007F             # t3 = 00000000
    addiu   t8, $zero, 0x007F          # t8 = 0000007F
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      t7, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    sll     a3, t2,  2
    subu    a3, a3, t2
    subu    a2, t8, t3
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    andi    a3, a3, 0x007F             # a3 = 00000000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sw      t9, 0x0010($sp)
    sw      t9, 0x0028($sp)
    sw      t6, 0x0014($sp)
    sw      t7, 0x0018($sp)
    sw      a3, 0x0020($sp)
    sw      t8, 0x0024($sp)
    sw      a2, 0x004C($sp)
    sw      t3, 0x0050($sp)
    sw      t2, 0x0094($sp)
    sw      v1, 0x008C($sp)
    sw      t3, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0084($sp)
    lw      t4, 0x0084($sp)
    lw      v1, 0x008C($sp)
    lw      a2, 0x004C($sp)
    lw      t2, 0x0094($sp)
    lw      t3, 0x0050($sp)
    sw      v0, 0x0004(t4)             # 00000004
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      t7, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    sll     a3, t2,  2
    addu    a3, a3, t2
    sll     a3, a3,  1
    andi    a3, a3, 0x007F             # a3 = 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      t8, 0x0028($sp)
    sw      t6, 0x0018($sp)
    sw      t7, 0x0024($sp)
    sw      a3, 0x0020($sp)
    sw      t3, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0080($sp)
    lw      t1, 0x0080($sp)
    lw      v1, 0x008C($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      a0, 0x02C0(v1)             # 000002C0
    addiu   t9, a0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(a0)          # 00000004
    sw      t3, 0x0000(a0)             # 00000000
    lw      a0, 0x02C0(v1)             # 000002C0
    addiu   t6, a0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(a0)             # 00000004
    sw      t4, 0x0000(a0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t4, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0028             # t6 = DB060028
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      s1, 0x0004(t0)             # 00000004
    sw      t6, 0x0000(t0)             # 00000000
    lhu     a0, -0x5A24(a0)            # 8011A5DC
    slti    $at, a0, 0x4AAC
    bne     $at, $zero, lbl_80086824
    ori     $at, $zero, 0xC556         # $at = 0000C556
    slt     $at, a0, $at
    beq     $at, $zero, lbl_80086824
    lui     t7, 0xDF00                 # t7 = DF000000
    sw      t7, 0x0000(s1)             # FFFFFFE0
    sw      $zero, 0x0004(s1)          # FFFFFFE4
    beq     $zero, $zero, lbl_800868D8
    lw      $ra, 0x0044($sp)
lbl_80086824:
    ori     $at, $zero, 0xC556         # $at = 0000C556
    slt     $at, a0, $at
    bnel    $at, $zero, lbl_80086864
    slti    $at, a0, 0x4000
    lh      t8, 0x1D30(s2)             # 00001D30
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    beq     t8, $at, lbl_8008688C
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D30           # $at = 00011D30
    jal     func_800637D4
    addu    a0, s0, $at
    beq     $zero, $zero, lbl_80086890
    lui     t6, 0xFA00                 # t6 = FA000000
    slti    $at, a0, 0x4000
lbl_80086864:
    bnel    $at, $zero, lbl_80086890
    lui     t6, 0xFA00                 # t6 = FA000000
    lh      t9, 0x1D30(s2)             # 00001D30
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D30           # $at = 00011D30
    beq     t9, $zero, lbl_8008688C
    addu    a0, s0, $at
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800637D4
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
lbl_8008688C:
    lui     t6, 0xFA00                 # t6 = FA000000
lbl_80086890:
    sw      t6, 0x0000(s1)             # FFFFFFE0
    lh      t7, 0x1D30(s2)             # 00001D30
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t1, s1, 0x0008             # t1 = FFFFFFE8
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = FFFFFF00
    sw      t9, 0x0004(s1)             # FFFFFFE4
    or      v1, t1, $zero              # v1 = FFFFFFE8
    lui     t7, 0x0301                 # t7 = 03010000
    addiu   t7, t7, 0x2B20             # t7 = 03012B20
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # FFFFFFE8
    sw      t7, 0x0004(v1)             # FFFFFFEC
    addiu   t1, t1, 0x0008             # t1 = FFFFFFF0
    lui     t8, 0xDF00                 # t8 = DF000000
    sw      t8, 0x0000(t1)             # FFFFFFF0
    sw      $zero, 0x0004(t1)          # FFFFFFF4
    lw      $ra, 0x0044($sp)
lbl_800868D8:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_800868EC:
# Scene Animate 2
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    lw      v0, 0x0000(a0)             # 00000000
    lw      a1, 0x02C0(v0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, a1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v0)             # 000002C0
    lui     t8, 0x8012                 # t8 = 80120000
    sw      t7, 0x0000(a1)             # 00000000
    lw      t8, -0x5A20(t8)            # 8011A5E0
    lui     a2, 0x8010                 # a2 = 80100000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t9, t8,  2
    addu    a2, a2, t9
    lw      a2, -0x419C(a2)            # 800FBE64
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, a2,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    lui     t7, 0x8012                 # t7 = 80120000
    addu    t7, t7, t9
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t6, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(a1)             # 00000004
    lw      a1, 0x02C0(v0)             # 000002C0
    addiu   t6, a1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v0)             # 000002C0
    sw      $zero, 0x0004(a1)          # 00000004
    sw      t3, 0x0000(a1)             # 00000000
    lw      a1, 0x02C0(v0)             # 000002C0
    addiu   t7, a1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v0)             # 000002C0
    sw      t5, 0x0004(a1)             # 00000004
    sw      t4, 0x0000(a1)             # 00000000
    lw      t2, 0x02D0(v0)             # 000002D0
    addiu   t8, t2, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v0)             # 000002D0
    sw      $zero, 0x0004(t2)          # 00000004
    sw      t3, 0x0000(t2)             # 00000000
    lw      t2, 0x02D0(v0)             # 000002D0
    addiu   t9, t2, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v0)             # 000002D0
    sw      t5, 0x0004(t2)             # 00000004
    sw      t4, 0x0000(t2)             # 00000000
    jr      $ra
    nop


func_800869BC:
# Scene Animate 3
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s2, 0x0040($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, s2
    lw      s0, 0x0000(s2)             # 00000000
    lw      v1, 0x1DE4(v1)             # 00011DE4
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, s1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(s1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sll     a3, v1,  2
    subu    a3, a3, v1
    sll     a3, a3,  1
    andi    t0, v1, 0x007F             # t0 = 00000000
    addiu   t8, $zero, 0x007F          # t8 = 0000007F
    subu    a2, t8, t0
    andi    a3, a3, 0x007F             # a3 = 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      a2, 0x0048($sp)
    sw      t0, 0x001C($sp)
    sw      t0, 0x004C($sp)
    sw      v1, 0x0074($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      s1, 0x0068($sp)
    lw      t1, 0x0068($sp)
    lw      v1, 0x0074($sp)
    lw      t0, 0x004C($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(s1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sll     a3, v1,  2
    subu    a3, a3, v1
    andi    a3, a3, 0x007F             # a3 = 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      t8, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      t0, 0x001C($sp)
    lw      a2, 0x0048($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      s1, 0x0064($sp)
    lw      t2, 0x0064($sp)
    lw      v1, 0x0074($sp)
    lw      t0, 0x004C($sp)
    sw      v0, 0x0004(t2)             # 00000004
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0028             # t4 = DB060028
    addiu   t9, s1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(s1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    andi    a3, v1, 0x007F             # a3 = 00000000
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0024($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    sw      a3, 0x0020($sp)
    sw      t9, 0x0028($sp)
    sw      t0, 0x001C($sp)
    lw      a2, 0x0048($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      s1, 0x0060($sp)
    lw      t1, 0x0060($sp)
    lui     t3, 0x8080                 # t3 = 80800000
    ori     t3, t3, 0x8080             # t3 = 80808080
    lui     t0, 0xE700                 # t0 = E7000000
    lui     t2, 0xFB00                 # t2 = FB000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      s1, 0x02D0(s0)             # 000002D0
    addiu   t6, s1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(s1)          # 00000004
    sw      t0, 0x0000(s1)             # 00000000
    lw      s1, 0x02D0(s0)             # 000002D0
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(s1)             # 00000004
    sw      t2, 0x0000(s1)             # 00000000
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80086BCC:
# Scene Animate 4
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s1, 0x0038($sp)
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    addiu   t7, $zero, 0x01F4          # t7 = 000001F4
    sb      t6, 0x00A3($sp)
    sh      t7, 0x00A0($sp)
    lw      t0, 0x0000(s0)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    lui     t9, 0xDB06                 # t9 = DB060000
    lw      t4, 0x02C4(t0)             # 000002C4
    addu    s1, s0, $at
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t4, t4, 0xFFD0             # t4 = FFFFFFD0
    sw      t4, 0x02C4(t0)             # 000002C4
    lw      t1, 0x0000(s0)             # 00000000
    lw      t2, 0x1DE4(s1)             # 00001DE4
    lw      v1, 0x02D0(t1)             # 000002D0
    andi    t3, t2, 0x007F             # t3 = 00000000
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t1)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    subu    a2, t6, t3
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    andi    a3, t2, 0x007F             # a3 = 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t6, 0x0024($sp)
    sw      a2, 0x0044($sp)
    sw      t4, 0x0050($sp)
    sw      t3, 0x0048($sp)
    sw      t2, 0x00A4($sp)
    sw      t1, 0x0098($sp)
    sw      t3, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0090($sp)
    lw      t5, 0x0090($sp)
    lw      a2, 0x0044($sp)
    lw      t1, 0x0098($sp)
    lw      t2, 0x00A4($sp)
    lw      t3, 0x0048($sp)
    sw      v0, 0x0004(t5)             # 00000004
    lw      v1, 0x02D0(t1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t1)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    sll     a3, t2,  2
    addu    a3, a3, t2
    sll     a3, a3,  1
    andi    a3, a3, 0x007F             # a3 = 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    sw      t6, 0x0028($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x0024($sp)
    sw      a3, 0x0020($sp)
    sw      t3, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x008C($sp)
    lw      $ra, 0x008C($sp)
    lw      t1, 0x0098($sp)
    lui     t2, 0x8080                 # t2 = 80800000
    lw      t4, 0x0050($sp)
    ori     t2, t2, 0x8080             # t2 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t5, 0xFB00                 # t5 = FB000000
    sw      v0, 0x0004($ra)            # 00000004
    lw      t0, 0x02C0(t1)             # 000002C0
    lui     $ra, 0x8080                # $ra = 80800000
    ori     $ra, $ra, 0x8000           # $ra = 80808000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t1)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(t1)             # 000002C0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t1)             # 000002C0
    sw      t2, 0x0004(t0)             # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lw      v1, 0x02D0(t1)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(t1)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(t1)             # 000002D0
    or      a3, v1, $zero              # a3 = 00000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t1)             # 000002D0
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      t2, 0x0004(a3)             # 00000004
    sw      t5, 0x0000(a3)             # 00000000
    lw      v0, 0x1360(v1)             # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80086DB0
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lbu     t7, 0x1D31(s1)             # 00001D31
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    subu    t9, t8, t7
    beq     $zero, $zero, lbl_80086DEC
    sb      t9, 0x00A3($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_80086DB0:
    bnel    v0, $at, lbl_80086DCC
    slti    $at, v0, 0x0004
    lh      t6, 0x1D30(s1)             # 00001D30
    addiu   t8, t6, 0x01F4             # t8 = 000001FC
    beq     $zero, $zero, lbl_80086DEC
    sh      t8, 0x00A0($sp)
    slti    $at, v0, 0x0004
lbl_80086DCC:
    beq     $at, $zero, lbl_80086DEC
    nop
    lhu     t7, 0x0ED4(v1)             # 8011B4A4
    addiu   t6, $zero, 0x0866          # t6 = 00000866
    andi    t9, t7, 0x0080             # t9 = 00000000
    beq     t9, $zero, lbl_80086DEC
    nop
    sh      t6, 0x00A0($sp)
lbl_80086DEC:
    lw      t0, 0x02C0(t1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0028             # t7 = DB060028
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t1)             # 000002C0
    sw      t4, 0x0004(t0)             # 00000004
    sw      t7, 0x0000(t0)             # 00000000
    addiu   v0, t4, 0x0008             # v0 = 00000008
    sw      t3, 0x0000(t4)             # 00000000
    sw      $zero, 0x0004(t4)          # 00000004
    or      a2, v0, $zero              # a2 = 00000008
    sw      t5, 0x0000(a2)             # 00000008
    lbu     t6, 0x00A3($sp)
    addiu   v0, v0, 0x0008             # v0 = 00000010
    or      a3, v0, $zero              # a3 = 00000010
    or      t8, t6, $ra                # t8 = 80808866
    sw      t8, 0x0004(a2)             # 0000000C
    lui     t7, 0xDF00                 # t7 = DF000000
    sw      t7, 0x0000(a3)             # 00000010
    addiu   v0, v0, 0x0008             # v0 = 00000018
    sw      $zero, 0x0004(a3)          # 00000014
    lw      v1, 0x02D0(t1)             # 000002D0
    lui     a3, 0xDB06                 # a3 = DB060000
    ori     a3, a3, 0x002C             # a3 = DB06002C
    addiu   t9, v1, 0x0008             # t9 = 8011A5D8
    sw      t9, 0x02D0(t1)             # 000002D0
    sw      v0, 0x0004(v1)             # 8011A5D4
    sw      a3, 0x0000(v1)             # 8011A5D0
    lw      t0, 0x02C0(t1)             # 000002C0
    or      a1, v0, $zero              # a1 = 00000018
    lui     $at, 0x4F80                # $at = 4F800000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t1)             # 000002C0
    sw      v0, 0x0004(t0)             # 00000004
    sw      a3, 0x0000(t0)             # 00000000
    addiu   v0, v0, 0x0008             # v0 = 00000020
    sw      t3, 0x0000(a1)             # 00000018
    sw      $zero, 0x0004(a1)          # 0000001C
    or      a2, v0, $zero              # a2 = 00000020
    sw      t5, 0x0000(a2)             # 00000020
    lhu     t8, 0x00A0($sp)
    addiu   v0, v0, 0x0008             # v0 = 00000028
    mtc1    t8, $f4                    # $f4 = 0.00
    bgez    t8, lbl_80086EAC
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80086EAC:
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x7594($at)         # 80108A6C
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f16, $f6, $f10
    cfc1    t7, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_80086F2C
    mfc1    t9, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t9, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80086F20
    nop
    mfc1    t9, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80086F38
    or      t9, t9, $at                # t9 = 80000000
lbl_80086F20:
    beq     $zero, $zero, lbl_80086F38
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f18
lbl_80086F2C:
    nop
    bltz    t9, lbl_80086F20
    nop
lbl_80086F38:
    andi    t6, t9, 0x00FF             # t6 = 000000FF
    ctc1    t7, $f31
    or      t8, t6, $ra                # t8 = 808080FF
    sw      t8, 0x0004(a2)             # 00000024
    lui     t7, 0xDF00                 # t7 = DF000000
    sw      t7, 0x0000(v0)             # 00000028
    sw      $zero, 0x0004(v0)          # 0000002C
    lw      t0, 0x02C0(t1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0030             # t6 = DB060030
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t1)             # 000002C0
    sw      t6, 0x0000(t0)             # 00000000
    lh      t8, 0x1D30(s1)             # 00001D30
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x7590($at)          # 80108A70
    subu    t7, $zero, t8
    mtc1    t7, $f4                    # $f4 = -9223372000000000000.00
    lw      a0, 0x0000(s0)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    cvt.s.w $f8, $f4
    sw      t6, 0x0010($sp)
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    mul.s   $f10, $f8, $f6
    sw      t9, 0x0024($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    trunc.w.s $f16, $f10
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t0, 0x0054($sp)
    mfc1    a3, $f16
    nop
    sll     a3, a3, 16
    sra     a3, a3, 16
    jal     func_8007EB84
    sw      a3, 0x0020($sp)
    lw      t2, 0x0054($sp)
    sw      v0, 0x0004(t2)             # 00000004
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_80086FFC:
# Scene Animate 5
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0048($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)
    lw      t6, 0x1360(v0)             # 8011B930
    lw      t0, 0x0000(s0)             # 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    slti    $at, t6, 0x0004
    beq     $at, $zero, lbl_80087044
    lui     t6, 0xDB06                 # t6 = DB060000
    lw      t7, 0x0004(v0)             # 8011A5D4
    bnel    t7, $zero, lbl_80087058
    lui     $at, 0x0001                # $at = 00010000
    lhu     t8, 0x0EE0(v0)             # 8011B4B0
    andi    t9, t8, 0x0200             # t9 = 00000000
    bne     t9, $zero, lbl_80087054
lbl_80087044:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0057          # t4 = 00000057
    sh      t4, 0x1D30($at)            # 00011D30
lbl_80087054:
    lui     $at, 0x0001                # $at = 00010000
lbl_80087058:
    addu    t1, s0, $at
    lw      a2, 0x1DE4(t1)             # 00001DE4
    lw      v1, 0x02C0(t0)             # 000002C0
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    sw      t4, 0x0024($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t5, 0x0028($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t7, 0x0010($sp)
    lh      t6, 0x1D30(t1)             # 00001D30
    sw      t1, 0x0050($sp)
    sw      t0, 0x0068($sp)
    addiu   t7, t6, 0x00A8             # t7 = DB0600C8
    sw      t7, 0x0038($sp)
    sw      a2, 0x006C($sp)
    or      a3, a2, $zero              # a3 = 00000000
    jal     func_8007ECA4
    sw      v1, 0x0060($sp)
    lw      t2, 0x0060($sp)
    lw      t0, 0x0068($sp)
    lw      t1, 0x0050($sp)
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sw      t7, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      t8, 0x0028($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    lh      t9, 0x1D30(t1)             # 00001D30
    lw      a2, 0x006C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t4, t9, 0x00A8             # t4 = DB0600CC
    subu    a2, $zero, a2
    or      a3, a2, $zero              # a3 = 00000000
    sw      t4, 0x0038($sp)
    jal     func_8007ECA4
    sw      v1, 0x005C($sp)
    lw      t3, 0x005C($sp)
    lw      t0, 0x0068($sp)
    sw      v0, 0x0004(t3)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t9, $zero, 0xFF80          # t9 = FFFFFF80
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      $ra, 0x004C($sp)
    lw      s0, 0x0048($sp)
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra
    nop


func_800871B8:
# Scene Animate 6
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0050($sp)
    lw      t6, 0x0050($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    lui     t9, 0x8012                 # t9 = 80120000
    addu    v0, v0, t6
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      t9, -0x5A2C(t9)            # 8011A5D4
    addiu   t8, $zero, 0x007F          # t8 = 0000007F
    andi    t7, v0, 0x007F             # t7 = 00000000
    subu    t1, t8, t7
    bne     t9, $zero, lbl_800871F4
    lw      v1, 0x0000(t6)             # 00000000
    or      t1, $zero, $zero           # t1 = 00000000
lbl_800871F4:
    lw      t0, 0x02C0(v1)             # 000002C0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0030             # t4 = DB060030
    addiu   t3, t0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(v1)             # 000002C0
    sw      t4, 0x0000(t0)             # 00000000
    lw      t5, 0x0050($sp)
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    lw      a0, 0x0000(t5)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    sw      t9, 0x0024($sp)
    sw      t7, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      v1, 0x0044($sp)
    sw      t3, 0x0028($sp)
    sw      t1, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t6, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      t0, 0x003C($sp)
    lw      t2, 0x003C($sp)
    lw      v1, 0x0044($sp)
    lui     t8, 0xFB00                 # t8 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t0, 0x02C0(v1)             # 000002C0
    lui     t5, 0xE700                 # t5 = E7000000
    lui     t3, 0xDB06                 # t3 = DB060000
    addiu   t4, t0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(v1)             # 000002C0
    lui     t7, 0x8080                 # t7 = 80800000
    ori     t7, t7, 0x8080             # t7 = 80808080
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t7, 0x0004(t0)             # 00000004
    sw      t8, 0x0000(t0)             # 00000000
    lw      a3, 0x02D0(v1)             # 000002D0
    ori     t3, t3, 0x0020             # t3 = DB060020
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t9, a3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      t3, 0x0000(a3)             # 00000000
    lw      t4, -0x5A20(t4)            # 8011A5E0
    lui     t1, 0x8010                 # t1 = 80100000
    lui     t3, 0x8012                 # t3 = 80120000
    sll     t5, t4,  2
    addu    t1, t1, t5
    lw      t1, -0x4194(t1)            # 800FBE6C
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t8, t1,  4
    srl     t7, t8, 28
    sll     t9, t7,  2
    addu    t3, t3, t9
    lw      t3, 0x0C38(t3)             # 80120C38
    and     t6, t1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t6, t3
    addu    t5, t4, $at
    sw      t5, 0x0004(a3)             # 00000004
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_80087314:
# Scene Animate 7
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, s1
    lw      s0, 0x0000(s1)             # 00000000
    lw      t1, 0x1DE4(t1)             # 00011DE4
    lw      t0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    andi    a2, t1, 0x007F             # a2 = 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      a2, 0x0044($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      t1, 0x006C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0060($sp)
    lw      t2, 0x0060($sp)
    lw      t1, 0x006C($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t9, t9, 0x0024             # t9 = DB060024
    sll     t5, t1,  1
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    andi    t6, t5, 0x00FF             # t6 = 00000000
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    subu    a3, t7, t6
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    sw      t8, 0x0010($sp)
    sw      t9, 0x0014($sp)
    sw      t5, 0x0018($sp)
    sw      t7, 0x0024($sp)
    sw      t6, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x005C($sp)
    lw      t0, 0x005C($sp)
    lw      a3, 0x0044($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t9, t9, 0x0028             # t9 = DB060028
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0024($sp)
    sw      t9, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t5, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0058($sp)
    lw      t1, 0x0058($sp)
    lui     t4, 0x8080                 # t4 = 80800000
    ori     t4, t4, 0x8080             # t4 = 80808080
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t5, t0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_800874FC:
# Scene Animate 8
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s2, 0x0040($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s2
    lw      s0, 0x0000(s2)             # 00000000
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, s1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(s1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sll     t0, v0,  2
    subu    t0, t0, v0
    andi    a3, t0, 0x03FF             # a3 = 00000000
    addiu   t6, $zero, 0x0100          # t6 = 00000100
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0100          # t9 = 00000100
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    sw      t5, 0x0024($sp)
    sw      t4, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      t6, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      t0, 0x0050($sp)
    sw      v0, 0x0084($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      s1, 0x0078($sp)
    lw      v1, 0x0078($sp)
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    sw      v0, 0x0004(v1)             # 00000004
    lw      s1, 0x02D0(s0)             # 000002D0
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(s1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    lw      t1, 0x0084($sp)
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    andi    a3, t1, 0x00FF             # a3 = 00000000
    sw      a3, 0x0020($sp)
    sw      t6, 0x0024($sp)
    sw      t5, 0x0018($sp)
    sw      t7, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    sw      t4, 0x0014($sp)
    sw      t9, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      s1, 0x0074($sp)
    jal     func_8007EB84
    sw      t1, 0x004C($sp)
    lw      t0, 0x0074($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    sw      v0, 0x0004(t0)             # 00000004
    lw      s1, 0x02D0(s0)             # 000002D0
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(s1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    lw      a3, 0x0084($sp)
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sll     a3, a3,  1
    andi    a3, a3, 0x007F             # a3 = 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0024($sp)
    sw      a3, 0x0020($sp)
    sw      t6, 0x0018($sp)
    sw      t8, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      s1, 0x0070($sp)
    lw      t1, 0x0070($sp)
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x002C             # t4 = DB06002C
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    lw      t8, 0x0050($sp)
    sw      t7, 0x0018($sp)
    sw      t5, 0x0010($sp)
    addiu   t4, $zero, 0x007F          # t4 = 0000007F
    andi    t9, t8, 0x007F             # t9 = 00000000
    subu    t5, t4, t9
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0014($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      t5, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x006C($sp)
    lw      t0, 0x006C($sp)
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0030             # t4 = DB060030
    sw      v0, 0x0004(t0)             # 00000004
    lw      s1, 0x02D0(s0)             # 000002D0
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(s1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    lw      a3, 0x004C($sp)
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    andi    a3, a3, 0x007F             # a3 = 00000000
    sw      a3, 0x0020($sp)
    sw      t7, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t8, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    sw      t5, 0x0014($sp)
    sw      t9, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      s1, 0x0068($sp)
    lw      v1, 0x0068($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0034             # t9 = DB060034
    sw      v0, 0x0004(v1)             # 00000004
    lw      s1, 0x02D0(s0)             # 000002D0
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t4, s1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(s1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    lw      a3, 0x004C($sp)
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    andi    a3, a3, 0x003F             # a3 = 00000000
    sw      a3, 0x0020($sp)
    sw      t8, 0x0024($sp)
    sw      t7, 0x0018($sp)
    sw      t4, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      s1, 0x0064($sp)
    lw      t0, 0x0064($sp)
    lui     t3, 0x8080                 # t3 = 80800000
    ori     t3, t3, 0x8080             # t3 = 80808080
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t2, 0xFB00                 # t2 = FB000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      s1, 0x02D0(s0)             # 000002D0
    addiu   t6, s1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(s1)          # 00000004
    sw      t1, 0x0000(s1)             # 00000000
    lw      s1, 0x02D0(s0)             # 000002D0
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(s1)             # 00000004
    sw      t2, 0x0000(s1)             # 00000000
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_80087840:
# Scene Animate 9
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    t1, s1, $at
    lw      v1, 0x0000(s1)             # 00000000
    lw      v0, 0x1DE4(t1)             # 00001DE4
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      t7, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0010($sp)
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    andi    s0, v0, 0x007F             # s0 = 00000000
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    sw      t9, 0x0014($sp)
    or      a2, s0, $zero              # a2 = 00000000
    sw      s0, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      t7, 0x0024($sp)
    sw      t8, 0x0028($sp)
    sw      t1, 0x0040($sp)
    sw      v1, 0x0060($sp)
    sw      $zero, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0058($sp)
    lw      t2, 0x0058($sp)
    lw      v1, 0x0060($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t0, 0x02D0(v1)             # 000002D0
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t7, $zero, 0x007F          # t7 = 0000007F
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      t6, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    subu    a2, t7, s0
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0010($sp)
    sw      t8, 0x0028($sp)
    sw      t9, 0x0014($sp)
    sw      t6, 0x0018($sp)
    sw      t7, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0054($sp)
    lw      t3, 0x0054($sp)
    lw      v1, 0x0060($sp)
    lw      t1, 0x0040($sp)
    lui     $ra, 0x8080                # $ra = 80800000
    ori     $ra, $ra, 0x8080           # $ra = 80808080
    lui     t4, 0xE700                 # t4 = E7000000
    lui     t5, 0xFB00                 # t5 = FB000000
    sw      v0, 0x0004(t3)             # 00000004
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t4, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      $ra, 0x0004(t0)            # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lw      a0, 0x02C0(v1)             # 000002C0
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t7, a0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(a0)          # 00000004
    sw      t4, 0x0000(a0)             # 00000000
    lw      a0, 0x02C0(v1)             # 000002C0
    addiu   t8, a0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      $ra, 0x0004(a0)            # 00000004
    sw      t5, 0x0000(a0)             # 00000000
    lh      t9, 0x1D30(t1)             # 00001D30
    bnel    t9, $zero, lbl_80087A14
    lw      $ra, 0x003C($sp)
    lbu     t6, -0x709D(t6)            # 800F8F63
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   $at, $zero, 0x002F         # $at = 0000002F
    addu    t7, t7, t6
    lbu     t7, -0x59BC(t7)            # 8011A644
    bnel    t7, $at, lbl_80087A14
    lw      $ra, 0x003C($sp)
    lh      v0, 0x1D32(t1)             # 00001D32
    addiu   $at, $zero, 0x0032         # $at = 00000032
    addiu   a1, $zero, 0x2813          # a1 = 00002813
    bnel    v0, $at, lbl_80087A0C
    addiu   t9, v0, 0x0001             # t9 = 00000001
    lw      a0, 0x1C44(s1)             # 00001C44
    jal     func_80022F84
    sw      t1, 0x0040($sp)
    lw      t1, 0x0040($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x1D30(t1)             # 00001D30
    lh      v0, 0x1D32(t1)             # 00001D32
    addiu   t9, v0, 0x0001             # t9 = 00000001
lbl_80087A0C:
    sh      t9, 0x1D32(t1)             # 00001D32
    lw      $ra, 0x003C($sp)
lbl_80087A14:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80087A24:
# Scene Animate 10
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0048($sp)
    lw      t6, 0x0048($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v0, v0, t6
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      t0, 0x0000(t6)             # 00000000
    lw      t1, 0x02C0(t0)             # 000002C0
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0000(t1)             # 00000000
    lw      t9, 0x0048($sp)
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lw      a0, 0x0000(t9)             # 00000000
    sw      t6, 0x0010($sp)
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    sw      t7, 0x0014($sp)
    andi    t9, v0, 0x007F             # t9 = 00000000
    subu    t7, t6, t9
    sw      t8, 0x0018($sp)
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0028($sp)
    sw      t8, 0x0024($sp)
    sw      t7, 0x0020($sp)
    sw      t0, 0x0040($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      t1, 0x0038($sp)
    lw      t2, 0x0038($sp)
    lw      t0, 0x0040($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t1, 0x02C0(t0)             # 000002C0
    addiu   t9, t1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(t1)          # 00000004
    sw      t3, 0x0000(t1)             # 00000000
    lw      t1, 0x02C0(t0)             # 000002C0
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t5, 0x0004(t1)             # 00000004
    sw      t4, 0x0000(t1)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80087B30:
# Scene Animate 11
    lw      v0, 0x0000(a0)             # 00000000
    lw      a1, 0x02C0(v0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, a1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v0)             # 000002C0
    lui     t8, 0x8012                 # t8 = 80120000
    sw      t7, 0x0000(a1)             # 00000000
    lw      t8, -0x5A20(t8)            # 8011A5E0
    lui     a2, 0x8010                 # a2 = 80100000
    lui     t4, 0x8012                 # t4 = 80120000
    sll     t9, t8,  2
    addu    a2, a2, t9
    lw      a2, -0x418C(a2)            # 800FBE74
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t1, a2,  4
    srl     t2, t1, 28
    sll     t3, t2,  2
    addu    t4, t4, t3
    lw      t4, 0x0C38(t4)             # 80120C38
    and     t0, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t0, t4
    addu    t6, t5, $at
    sw      t6, 0x0004(a1)             # 00000004
    jr      $ra
    nop


func_80087BA0:
# Scene Animate 12
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0060($sp)
    lw      t6, 0x0060($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v0, v0, t6
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      t0, 0x02C0(v1)             # 000002C0
    ori     t8, t8, 0x0020             # t8 = DB060020
    andi    a3, v0, 0x007F             # a3 = 00000000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, 0x0060($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0010($sp)
    sw      t6, 0x0028($sp)
    sw      t9, 0x0024($sp)
    sw      a3, 0x0038($sp)
    sw      v1, 0x0058($sp)
    sw      a3, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0050($sp)
    lw      t2, 0x0050($sp)
    lw      v1, 0x0058($sp)
    lw      a3, 0x0038($sp)
    sw      v0, 0x0004(t2)             # 00000004
    lw      t1, 0x02D0(v1)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t8, 0x0000(t1)             # 00000000
    lw      t9, 0x0060($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0010($sp)
    sw      t6, 0x0028($sp)
    sw      t9, 0x0024($sp)
    sw      a3, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      t1, 0x004C($sp)
    lw      t3, 0x004C($sp)
    lw      v1, 0x0058($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t3)             # 00000004
    lw      t0, 0x02C0(v1)             # 000002C0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(v1)             # 000002C0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t4, 0x0000(t0)             # 00000000
    lw      t1, 0x02D0(v1)             # 000002D0
    addiu   t9, t1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(t1)          # 00000004
    sw      t2, 0x0000(t1)             # 00000000
    lw      t1, 0x02D0(v1)             # 000002D0
    addiu   t6, t1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(t1)             # 00000004
    sw      t4, 0x0000(t1)             # 00000000
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_80087D0C:
# Scene Animate 13
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0068($sp)
    lw      t6, 0x0068($sp)
    lui     t1, 0x0001                 # t1 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    t1, t1, t6
    lw      t1, 0x1DE4(t1)             # 00011DE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    sll     a3, t1,  2
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, 0x0068($sp)
    addu    a3, a3, t1
    andi    t2, t1, 0x007F             # t2 = 00000000
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    subu    a2, t6, t2
    sll     a3, a3,  1
    andi    a3, a3, 0x007F             # a3 = 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t6, 0x0024($sp)
    sw      a3, 0x0020($sp)
    sw      a2, 0x003C($sp)
    sw      t2, 0x0040($sp)
    sw      t1, 0x0064($sp)
    sw      v1, 0x0060($sp)
    sw      t2, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0058($sp)
    lw      t3, 0x0058($sp)
    lw      v1, 0x0060($sp)
    lw      a2, 0x003C($sp)
    lw      t1, 0x0064($sp)
    lw      t2, 0x0040($sp)
    sw      v0, 0x0004(t3)             # 00000004
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      t9, 0x0000(t0)             # 00000000
    lw      t6, 0x0068($sp)
    sll     a3, t1,  2
    subu    a3, a3, t1
    lw      a0, 0x0000(t6)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    andi    a3, a3, 0x007F             # a3 = 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      a3, 0x0020($sp)
    sw      t6, 0x0024($sp)
    sw      t2, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0054($sp)
    lw      t4, 0x0054($sp)
    lw      v1, 0x0060($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      v0, 0x0004(t4)             # 00000004
    lw      a0, 0x02C0(v1)             # 000002C0
    addiu   t8, a0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(a0)          # 00000004
    sw      t2, 0x0000(a0)             # 00000000
    lw      a0, 0x02C0(v1)             # 000002C0
    addiu   t9, a0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(a0)             # 00000004
    sw      t3, 0x0000(a0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      t0, 0x02D0(v1)             # 000002D0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80087EA4:
# Scene Animate 14
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      v0, 0x0000(s0)             # 00000000
    lui     a3, 0x8012                 # a3 = 80120000
    lw      t1, 0x02C4(v0)             # 000002C4
    addiu   t1, t1, 0xFFE0             # t1 = FFFFFFE0
    sw      t1, 0x02C4(v0)             # 000002C4
    lw      t0, 0x0000(s0)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t0)             # 000002D0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lhu     a3, -0x5A24(a3)            # 8011A5DC
    slti    $at, a3, 0x4AAC
    bne     $at, $zero, lbl_80087F14
    ori     $at, $zero, 0xC001         # $at = 0000C001
    slt     $at, a3, $at
    beq     $at, $zero, lbl_80087F14
    lui     t8, 0xDF00                 # t8 = DF000000
    sw      t8, 0x0000(t1)             # FFFFFFE0
    sw      $zero, 0x0004(t1)          # FFFFFFE4
    beq     $zero, $zero, lbl_80087FF4
    lui     t3, 0x8080                 # t3 = 80800000
lbl_80087F14:
    ori     $at, $zero, 0xC001         # $at = 0000C001
    slt     $at, a3, $at
    bne     $at, $zero, lbl_80087F60
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, s0
    lh      t9, 0x1D30(t9)             # 00011D30
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    beq     t9, $at, lbl_80087FA0
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D30           # $at = 00011D30
    addu    a0, s0, $at
    sw      t0, 0x0050($sp)
    jal     func_800637D4
    sw      t1, 0x0024($sp)
    lw      t0, 0x0050($sp)
    beq     $zero, $zero, lbl_80087FA0
    lw      t1, 0x0024($sp)
lbl_80087F60:
    slti    $at, a3, 0x4000
    bne     $at, $zero, lbl_80087FA0
    lui     t4, 0x0001                 # t4 = 00010000
    addu    t4, t4, s0
    lh      t4, 0x1D30(t4)             # 00011D30
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D30           # $at = 00011D30
    beq     t4, $zero, lbl_80087FA0
    addu    a0, s0, $at
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    sw      t0, 0x0050($sp)
    jal     func_800637D4
    sw      t1, 0x0024($sp)
    lw      t0, 0x0050($sp)
    lw      t1, 0x0024($sp)
lbl_80087FA0:
    lui     t5, 0xFA00                 # t5 = FA000000
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, s0
    sw      t5, 0x0000(t1)             # 00000000
    lh      t6, 0x1D30(t6)             # 00011D30
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   a1, t1, 0x0008             # a1 = 00000008
    andi    t7, t6, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = FFFFFF00
    sw      t8, 0x0004(t1)             # 00000004
    or      v1, a1, $zero              # v1 = 00000008
    lui     t4, 0x0301                 # t4 = 03010000
    addiu   t4, t4, 0xA9C8             # t4 = 0300A9C8
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      t9, 0x0000(v1)             # 00000008
    sw      t4, 0x0004(v1)             # 0000000C
    addiu   a1, a1, 0x0008             # a1 = 00000010
    lui     t5, 0xDF00                 # t5 = DF000000
    sw      t5, 0x0000(a1)             # 00000010
    sw      $zero, 0x0004(a1)          # 00000014
    lui     t3, 0x8080                 # t3 = 80800000
lbl_80087FF4:
    ori     t3, t3, 0x8080             # t3 = 80808080
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t2, 0xFB00                 # t2 = FB000000
    lw      v0, 0x02C0(t0)             # 000002C0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(t0)             # 000002C0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t3, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    addiu   t8, v1, 0x0008             # t8 = 00000010
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 0000000C
    sw      t1, 0x0000(v1)             # 00000008
    lw      v1, 0x02D0(t0)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000010
    sw      t9, 0x02D0(t0)             # 000002D0
    sw      t3, 0x0004(v1)             # 0000000C
    sw      t2, 0x0000(v1)             # 00000008
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80088060:
# Scene Animate 15
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0060($sp)
    lw      v0, 0x0060($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, v0, $at
    lw      a0, 0x1DE4(v0)             # 00001DE4
    sw      v0, 0x0038($sp)
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    jal     func_800D2FA0
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    lw      t7, 0x0038($sp)
    sra     t6, v0,  8
    sb      t6, 0x005F($sp)
    lw      a0, 0x1DE4(t7)             # 00001DE4
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    jal     func_800D2FA0
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    lw      t3, 0x0060($sp)
    lw      t8, 0x0038($sp)
    lb      t9, 0x005F($sp)
    sra     t7, v0,  8
    lw      t1, 0x1DE4(t8)             # 00001DE4
    sra     t5, t9,  1
    addiu   t6, t5, 0x00C0             # t6 = 000000C0
    sll     t8, t7, 24
    lw      v1, 0x0000(t3)             # 00000000
    sra     t9, t8, 24
    sb      t6, 0x005F($sp)
    sra     t5, t9,  1
    addiu   t6, t5, 0x00C0             # t6 = 000000C0
    sb      t6, 0x005E($sp)
    lw      t0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(t3)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    andi    a3, t1, 0x007F             # a3 = 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      a3, 0x0020($sp)
    sw      t7, 0x0024($sp)
    sw      t8, 0x0028($sp)
    sw      v1, 0x0054($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      t0, 0x004C($sp)
    lw      t2, 0x004C($sp)
    lw      v1, 0x0054($sp)
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t0, 0x02C0(v1)             # 000002C0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(v1)             # 000002C0
    addiu   t5, t0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(v1)             # 000002C0
    sw      t4, 0x0000(t0)             # 00000000
    lb      t9, 0x005E($sp)
    lb      t7, 0x005F($sp)
    andi    t5, t9, 0x00FF             # t5 = 00000008
    sll     t6, t5, 16
    sll     t8, t7, 24
    or      t9, t8, t6                 # t9 = 00000000
    ori     t5, t9, 0xFF80             # t5 = 0000FF80
    sw      t5, 0x0004(t0)             # 00000004
    lw      a3, 0x02D0(v1)             # 000002D0
    addiu   t8, a3, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(a3)          # 00000004
    sw      t3, 0x0000(a3)             # 00000000
    lw      a3, 0x02D0(v1)             # 000002D0
    lui     t7, 0x8080                 # t7 = 80800000
    ori     t7, t7, 0x8080             # t7 = 80808080
    addiu   t6, a3, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      t7, 0x0004(a3)             # 00000004
    sw      t4, 0x0000(a3)             # 00000000
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra
    nop


func_80088214:
# Scene Animate 16
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0048($sp)
    lw      t6, 0x0048($sp)
    lui     t1, 0x0001                 # t1 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    t1, t1, t6
    lw      t1, 0x1DE4(t1)             # 00011DE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      t0, 0x02C0(v1)             # 000002C0
    ori     t8, t8, 0x0020             # t8 = DB060020
    andi    v0, t1, 0x007F             # v0 = 00000000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, 0x0048($sp)
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    subu    a3, t6, v0
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      t8, 0x0014($sp)
    sw      t6, 0x0024($sp)
    sw      t9, 0x0018($sp)
    sw      v1, 0x0040($sp)
    sw      $zero, 0x0020($sp)
    sw      v0, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0038($sp)
    lw      t2, 0x0038($sp)
    lw      v1, 0x0040($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t0, 0x02C0(v1)             # 000002C0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(v1)             # 000002C0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t4, 0x0000(t0)             # 00000000
    lw      a0, 0x02D0(v1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    addiu   t6, a0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(a0)          # 00000004
    sw      t3, 0x0000(a0)             # 00000000
    lw      a0, 0x02D0(v1)             # 000002D0
    addiu   t7, a0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(a0)             # 00000004
    sw      t4, 0x0000(a0)             # 00000000
    lw      a0, 0x02D0(v1)             # 000002D0
    ori     t9, t9, 0x0020             # t9 = DB060020
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t8, a0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      t9, 0x0000(a0)             # 00000000
    lw      t6, -0x5A20(t6)            # 8011A5E0
    lui     a1, 0x8010                 # a1 = 80100000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t7, t6,  2
    addu    a1, a1, t7
    lw      a1, -0x4184(a1)            # 800FBE7C
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t9, a1,  4
    srl     t6, t9, 28
    sll     t7, t6,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t7
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t8, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t8, t9
    addu    t7, t6, $at
    sw      t7, 0x0004(a0)             # 00000004
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_8008837C:
# Scene Animate 17
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    lw      v0, 0x0000(a0)             # 00000000
    lw      a1, 0x02C0(v0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, a1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v0)             # 000002C0
    lui     t8, 0x8012                 # t8 = 80120000
    sw      t7, 0x0000(a1)             # 00000000
    lw      t8, -0x5A20(t8)            # 8011A5E0
    lui     a2, 0x8010                 # a2 = 80100000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t9, t8,  2
    addu    a2, a2, t9
    lw      a2, -0x417C(a2)            # 800FBE84
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, a2,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    lui     t7, 0x8012                 # t7 = 80120000
    addu    t7, t7, t9
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t6, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(a1)             # 00000004
    lw      a1, 0x02C0(v0)             # 000002C0
    addiu   t6, a1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v0)             # 000002C0
    sw      $zero, 0x0004(a1)          # 00000004
    sw      t3, 0x0000(a1)             # 00000000
    lw      a1, 0x02C0(v0)             # 000002C0
    addiu   t7, a1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v0)             # 000002C0
    sw      t5, 0x0004(a1)             # 00000004
    sw      t4, 0x0000(a1)             # 00000000
    lw      t2, 0x02D0(v0)             # 000002D0
    addiu   t8, t2, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v0)             # 000002D0
    sw      $zero, 0x0004(t2)          # 00000004
    sw      t3, 0x0000(t2)             # 00000000
    lw      t2, 0x02D0(v0)             # 000002D0
    addiu   t9, t2, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v0)             # 000002D0
    sw      t5, 0x0004(t2)             # 00000004
    sw      t4, 0x0000(t2)             # 00000000
    jr      $ra
    nop


func_8008844C:
# Scene Animate 18
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0050($sp)
    lw      t6, 0x0050($sp)
    lui     t2, 0x0001                 # t2 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    t2, t2, t6
    lw      t2, 0x1DE4(t2)             # 00011DE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      t0, 0x02C0(v1)             # 000002C0
    ori     t8, t8, 0x0020             # t8 = DB060020
    andi    t6, t2, 0x007F             # t6 = 00000000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, 0x0050($sp)
    addiu   t7, $zero, 0x007F          # t7 = 0000007F
    subu    a3, t7, t6
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0010($sp)
    sw      t8, 0x0028($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0024($sp)
    sw      t9, 0x0014($sp)
    sw      t2, 0x004C($sp)
    sw      v1, 0x0048($sp)
    sw      $zero, 0x0020($sp)
    sw      a3, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0040($sp)
    lw      t3, 0x0040($sp)
    lw      v1, 0x0048($sp)
    lw      t2, 0x004C($sp)
    addiu   t5, $zero, 0x007F          # t5 = 0000007F
    sw      v0, 0x0004(t3)             # 00000004
    lw      t0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t7, 0x0000(t0)             # 00000000
    lw      t6, 0x0050($sp)
    sll     a2, t2,  2
    sll     t1, t2,  2
    lw      a0, 0x0000(t6)             # 00000000
    subu    t1, t1, t2
    subu    a2, a2, t2
    andi    a2, a2, 0x007F             # a2 = 00000000
    sll     t1, t1,  1
    andi    t1, t1, 0x007F             # t1 = 00000000
    subu    t6, t5, a2
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0010($sp)
    sw      t8, 0x0024($sp)
    sw      t9, 0x0014($sp)
    sw      t9, 0x0028($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0020($sp)
    subu    a3, t5, t1
    sw      t1, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x003C($sp)
    lw      t4, 0x003C($sp)
    lw      v1, 0x0048($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8040             # t5 = 80808040
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      v0, 0x0004(t4)             # 00000004
    lw      t0, 0x02C0(v1)             # 000002C0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(v1)             # 000002C0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      a0, 0x02D0(v1)             # 000002D0
    addiu   t8, a0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(a0)          # 00000004
    sw      t2, 0x0000(a0)             # 00000000
    lw      a0, 0x02D0(v1)             # 000002D0
    addiu   t9, a0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(a0)             # 00000004
    sw      t3, 0x0000(a0)             # 00000000
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_800885E0:
# Scene Animate 21
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      $ra, 0x003C($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    sw      a0, 0x0088($sp)
    lw      t6, 0x0088($sp)
    lui     $at, 0x0001                # $at = 00010000
    lh      t7, 0x00A4(t6)             # 000000A4
    addu    s1, t6, $at
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t0, 0x1DE4(s1)             # 00001DE4
    bne     t7, $at, lbl_80088714
    lw      s0, 0x0000(t6)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t3, 0x0088($sp)
    andi    a2, t0, 0x007F             # a2 = 00000000
    sll     a3, t0,  1
    lw      a0, 0x0000(t3)             # 00000000
    addiu   t7, $zero, 0x007F          # t7 = 0000007F
    subu    t8, t7, a2
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    andi    a3, a3, 0x007F             # a3 = 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      t9, 0x0024($sp)
    sw      a3, 0x0020($sp)
    sw      t3, 0x0028($sp)
    sw      t8, 0x001C($sp)
    sw      t0, 0x0084($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0074($sp)
    lw      t1, 0x0074($sp)
    lw      t0, 0x0084($sp)
    lui     t5, 0xDB06                 # t5 = DB060000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t5, t5, 0x002C             # t5 = DB06002C
    sll     t7, t0,  2
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x0088($sp)
    andi    t8, t7, 0x00FF             # t8 = 00000000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    lw      a0, 0x0000(t6)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    subu    a3, t9, t8
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    sw      t3, 0x0010($sp)
    sw      t4, 0x0014($sp)
    sw      t5, 0x0018($sp)
    sw      t7, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      t6, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0070($sp)
    lw      t2, 0x0070($sp)
    sw      v0, 0x0004(t2)             # 00000004
    beq     $zero, $zero, lbl_80088768
    lui     t2, 0x8080                 # t2 = 80800000
lbl_80088714:
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t3, 0x0088($sp)
    addiu   t4, $zero, 0x007F          # t4 = 0000007F
    subu    a1, t4, t0
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    lw      a0, 0x0000(t3)             # 00000000
    sw      t5, 0x0010($sp)
    andi    a1, a1, 0x007F             # a1 = 00000000
    or      v0, t0, $zero              # v0 = 00000000
    andi    a2, t0, 0x007F             # a2 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    jal     func_8007EB00
    sw      v1, 0x006C($sp)
    lw      t1, 0x006C($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lui     t2, 0x8080                 # t2 = 80800000
lbl_80088768:
    ori     t2, t2, 0x8080             # t2 = 80808080
    lui     t0, 0xE700                 # t0 = E7000000
    lui     t1, 0xFB00                 # t1 = FB000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0004(v0)             # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    jal     func_8009DB54
    lw      a0, 0x0088($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_800889C4
    lui     a0, 0x8010                 # a0 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    lh      a0, -0x4170(a0)            # 800FBE90
    lh      t3, -0x416C(t3)            # 800FBE94
    lui     $at, 0x8010                # $at = 80100000
    addiu   a0, a0, 0x071C             # a0 = 8010071C
    addiu   t4, t3, 0x071C             # t4 = 8010071C
    sll     a0, a0, 16
    sh      t4, -0x416C($at)           # 800FBE94
    sra     a0, a0, 16
    lui     $at, 0x8010                # $at = 80100000
    jal     func_80063684              # coss?
    sh      a0, -0x4170($at)           # 800FBE90
    lui     a0, 0x8010                 # a0 = 80100000
    lh      a0, -0x4170(a0)            # 800FBE90
    jal     func_800636C4              # sins?
    swc1    $f0, 0x004C($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    lh      a0, -0x416C(a0)            # 800FBE94
    jal     func_800636C4              # sins?
    swc1    $f0, 0x0050($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x758C($at)          # 80108A74
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x7588($at)          # 80108A78
    lwc1    $f8, 0x004C($sp)
    lwc1    $f16, 0x0050($sp)
    mul.s   $f2, $f4, $f6
    lw      a0, 0x0088($sp)
    addiu   a0, a0, 0x00B8             # a0 = 000000B8
    sw      a0, 0x0040($sp)
    mul.s   $f10, $f8, $f2
    nop
    mul.s   $f18, $f16, $f2
    nop
    mul.s   $f4, $f0, $f2
    mfc1    a1, $f10
    mfc1    a2, $f18
    mfc1    a3, $f4
    jal     func_80091C94
    nop
    lui     a0, 0x8010                 # a0 = 80100000
    jal     func_800636C4              # sins?
    lh      a0, -0x416C(a0)            # 800FBE94
    lui     a0, 0x8010                 # a0 = 80100000
    lh      a0, -0x416C(a0)            # 800FBE94
    jal     func_80063684              # coss?
    swc1    $f0, 0x004C($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    lh      a0, -0x4170(a0)            # 800FBE90
    jal     func_80063684              # coss?
    swc1    $f0, 0x0050($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f12, -0x7584($at)         # 80108A7C
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x7580($at)          # 80108A80
    lwc1    $f6, 0x004C($sp)
    lui     $at, 0x8011                # $at = 80110000
    mul.s   $f10, $f8, $f12
    lwc1    $f8, -0x757C($at)          # 80108A84
    lwc1    $f4, 0x0050($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    lw      a0, 0x0040($sp)
    mul.s   $f16, $f6, $f10
    add.s   $f18, $f16, $f2
    mul.s   $f6, $f8, $f12
    mfc1    a1, $f18
    mtc1    $at, $f18                  # $f18 = 1.00
    mul.s   $f10, $f4, $f6
    nop
    mul.s   $f8, $f18, $f12
    add.s   $f16, $f10, $f2
    mul.s   $f4, $f0, $f8
    mfc1    a2, $f16
    add.s   $f6, $f4, $f2
    mfc1    a3, $f6
    jal     func_80091CB8
    nop
    lui     a1, 0x3F73                 # a1 = 3F730000
    ori     a1, a1, 0x3333             # a1 = 3F733333
    jal     func_80091CDC
    lw      a0, 0x0040($sp)
    lh      a0, 0x1D30(s1)             # 00001D30
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a0, $zero, lbl_8008898C
    or      v1, a0, $zero              # v1 = 00000000
    beq     a0, $at, lbl_8008894C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v1, $at, lbl_80088974
    lh      v0, 0x1D32(s1)             # 00001D32
    beq     $zero, $zero, lbl_80088990
    lh      t9, 0x1D32(s1)             # 00001D32
lbl_8008894C:
    lh      v0, 0x1D32(s1)             # 00001D32
    addiu   t6, a0, 0x0001             # t6 = 00000001
    slti    $at, v0, 0x04B0
    beq     $at, $zero, lbl_80088968
    addiu   t5, v0, 0x00C8             # t5 = 000000C8
    beq     $zero, $zero, lbl_8008898C
    sh      t5, 0x1D32(s1)             # 00001D32
lbl_80088968:
    beq     $zero, $zero, lbl_8008898C
    sh      t6, 0x1D30(s1)             # 00001D30
    lh      v0, 0x1D32(s1)             # 00001D32
lbl_80088974:
    blez    v0, lbl_80088984
    addiu   t7, v0, 0xFFE2             # t7 = FFFFFFE2
    beq     $zero, $zero, lbl_8008898C
    sh      t7, 0x1D32(s1)             # 00001D32
lbl_80088984:
    sh      $zero, 0x1D32(s1)          # 00001D32
    sh      $zero, 0x1D30(s1)          # 00001D30
lbl_8008898C:
    lh      t9, 0x1D32(s1)             # 00001D32
lbl_80088990:
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f18, -0x7578($at)         # 80108A88
    mtc1    t9, $f10                   # $f10 = 0.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7574($at)          # 80108A8C
    cvt.s.w $f16, $f10
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   v0, v0, 0xBE8C             # v0 = 800FBE8C
    lwc1    $f10, 0x0000(v0)           # 800FBE8C
    mul.s   $f8, $f16, $f18
    add.s   $f6, $f4, $f8
    add.s   $f16, $f10, $f6
    swc1    $f16, 0x0000(v0)           # 800FBE8C
lbl_800889C4:
    lb      t8, 0x1CBC(s1)             # 00001CBC
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t8, $at, lbl_80088A0C
    addiu   v0, v0, 0xBE8C             # v0 = 800FBE8C
    jal     func_800CF470
    lwc1    $f12, 0x0000(v0)           # 800FBE8C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f18, -0x7570($at)         # 80108A90
    mfc1    a2, $f12
    or      a3, $zero, $zero           # a3 = 00000000
    mul.s   $f14, $f0, $f18
    jal     func_800AA8FC
    nop
    beq     $zero, $zero, lbl_80088A3C
    lw      v1, 0x02C0(s0)             # 000002C0
lbl_80088A0C:
    jal     func_800CF470
    lwc1    $f12, 0x0000(v0)           # 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f12, -0x756C($at)         # 80108A94
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7568($at)          # 80108A98
    mfc1    a2, $f12
    or      a3, $zero, $zero           # a3 = 00000000
    mul.s   $f14, $f0, $f4
    jal     func_800AA8FC
    nop
    lw      v1, 0x02C0(s0)             # 000002C0
lbl_80088A3C:
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0034             # t4 = DB060034
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x0088($sp)
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0058($sp)
    lw      a1, 0x0058($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_80088A7C:
# Scene Animate 26
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s1
    lw      s0, 0x0000(s1)             # 00000000
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    andi    t1, v0, 0x007F             # t1 = 00000000
    addiu   t8, $zero, 0x007F          # t8 = 0000007F
    subu    a2, t8, t1
    addiu   t8, $zero, 0x0080          # t8 = 00000080
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    andi    a3, v0, 0x01FF             # a3 = 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t5, $zero, 0x0080          # t5 = 00000080
    sw      t5, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      a3, 0x0020($sp)
    sw      t6, 0x0018($sp)
    sw      t7, 0x0024($sp)
    sw      t8, 0x0028($sp)
    sw      a2, 0x0048($sp)
    sw      t1, 0x001C($sp)
    sw      t1, 0x004C($sp)
    sw      v0, 0x0044($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      t2, v0, $zero              # t2 = 00010000
    jal     func_8007EB84
    sw      v1, 0x0068($sp)
    lw      t0, 0x0068($sp)
    lw      t1, 0x004C($sp)
    lw      t2, 0x0044($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0024             # t5 = DB060024
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    andi    a3, t2, 0x007F             # a3 = 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    sw      a3, 0x0020($sp)
    sw      a3, 0x0040($sp)
    sw      t9, 0x0024($sp)
    sw      t5, 0x0028($sp)
    sw      t1, 0x001C($sp)
    lw      a2, 0x0048($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0064($sp)
    lw      t3, 0x0064($sp)
    lw      a3, 0x0040($sp)
    lw      t1, 0x004C($sp)
    sw      v0, 0x0004(t3)             # 00000004
    lw      t0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0028             # t7 = DB060028
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(t0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      t1, 0x001C($sp)
    lw      a2, 0x0048($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      t0, 0x0060($sp)
    lw      t2, 0x0060($sp)
    lui     t4, 0x8080                 # t4 = 80800000
    ori     t4, t4, 0x8080             # t4 = 80808080
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t1, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(s0)             # 000002C0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80088C74:
# Scene Animate 52
# Wrapper for (80084E48)
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80084E48
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80088C94:
# Scene Animate 51
# Wrapper for (80084E48)
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80084E48
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80088CB4:
# Scene Animate 49
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0048($sp)
    lw      t6, 0x0048($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v0, v0, t6
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      t0, 0x02C0(v1)             # 000002C0
    ori     t8, t8, 0x0020             # t8 = DB060020
    sll     t2, v0,  1
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, 0x0048($sp)
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t7, $zero, 0x007F          # t7 = 0000007F
    lw      a0, 0x0000(t9)             # 00000000
    andi    t6, t2, 0x007F             # t6 = 00000000
    subu    a1, t7, t6
    sw      t2, 0x0020($sp)
    sw      v1, 0x0040($sp)
    sw      t8, 0x0010($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    jal     func_8007EB00
    sw      t0, 0x0038($sp)
    lw      t1, 0x0038($sp)
    lw      v1, 0x0040($sp)
    lw      t2, 0x0020($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      t0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t7, 0x0000(t0)             # 00000000
    lw      t6, 0x0048($sp)
    addiu   t8, $zero, 0x0080          # t8 = 00000080
    or      a1, $zero, $zero           # a1 = 00000000
    lw      a0, 0x0000(t6)             # 00000000
    sw      t8, 0x0010($sp)
    andi    a2, t2, 0x01FF             # a2 = 00000000
    addiu   a3, $zero, 0x0080          # a3 = 00000080
    jal     func_8007EB00
    sw      t0, 0x0034($sp)
    lw      t3, 0x0034($sp)
    lw      v1, 0x0040($sp)
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t3)             # 00000004
    lw      t0, 0x02C0(v1)             # 000002C0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      t0, 0x02C0(v1)             # 000002C0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(t0)             # 00000004
    sw      t4, 0x0000(t0)             # 00000000
    lw      a0, 0x02D0(v1)             # 000002D0
    addiu   t6, a0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      $zero, 0x0004(a0)          # 00000004
    sw      t2, 0x0000(a0)             # 00000000
    lw      a0, 0x02D0(v1)             # 000002D0
    addiu   t8, a0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(a0)             # 00000004
    sw      t4, 0x0000(a0)             # 00000000
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    nop
    nop
