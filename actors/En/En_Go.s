.section .text
func_80ABE170:
    sw      a1, 0x0180(a0)             # 00000180
    jr      $ra
    nop


func_80ABE17C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      v1, 0x001C(a1)             # 0000001C
    lw      a2, 0x1C44(a0)             # 00001C44
    andi    v0, v1, 0x00F0             # v0 = 00000000
    slti    $at, v0, 0x0071
    bne     $at, $zero, lbl_80ABE1AC
    addiu   $at, $zero, 0x0090         # $at = 00000090
    beq     v0, $at, lbl_80ABE1CC
    lui     v1, 0x8012                 # v1 = 80120000
    beq     $zero, $zero, lbl_80ABE4FC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80ABE1AC:
    sltiu   $at, v0, 0x0071
    beq     $at, $zero, lbl_80ABE4F8
    sll     t6, v0,  2
    lui     $at, %hi(var_80AC1780)     # $at = 80AC0000
    addu    $at, $at, t6
    lw      t6, %lo(var_80AC1780)($at)
    jr      t6
    nop
lbl_80ABE1CC:
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lbu     t7, 0x003E(v1)             # 8011A60E
    lui     t8, 0x8010                 # t8 = 80100000
    beq     t7, $zero, lbl_80ABE1E8
    nop
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x305E          # v0 = 0000305E
lbl_80ABE1E8:
    lbu     t8, -0x709F(t8)            # 800F8F61
    addu    t9, v1, t8
    lbu     v0, 0x0074(t9)             # 00000074
    slti    $at, v0, 0x0037
    bnel    $at, $zero, lbl_80ABE228
    slti    $at, v0, 0x0036
    jal     func_80063404
    nop
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_80ABE21C
    nop
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x305E          # v0 = 0000305E
lbl_80ABE21C:
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x305D          # v0 = 0000305D
    slti    $at, v0, 0x0036
lbl_80ABE228:
    bne     $at, $zero, lbl_80ABE23C
    addiu   t0, $zero, 0x000E          # t0 = 0000000E
    sb      t0, 0x0683(a2)             # 00000683
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3059          # v0 = 00003059
lbl_80ABE23C:
    slti    $at, v0, 0x0034
    bne     $at, $zero, lbl_80ABE250
    addiu   t1, $zero, 0x000B          # t1 = 0000000B
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3058          # v0 = 00003058
lbl_80ABE250:
    sb      t1, 0x0683(a2)             # 00000683
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3053          # v0 = 00003053
var_80ABE25C:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, -0x740C(v0)            # 800F8BF4
    lw      t2, 0x00A4(v1)             # 8011A674
    lui     t6, 0x8010                 # t6 = 80100000
    and     t3, v0, t2
    beq     t3, $zero, lbl_80ABE2A0
    nop
    lhu     t4, 0x0F18(v1)             # 8011B4E8
    andi    t5, t4, 0x8000             # t5 = 00000000
    beq     t5, $zero, lbl_80ABE298
    nop
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3042          # v0 = 00003042
lbl_80ABE298:
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3041          # v0 = 00003041
lbl_80ABE2A0:
    lbu     t6, -0x733E(t6)            # 800F8CC2
    lhu     t8, 0x009C(v1)             # 8011A66C
    sllv    t7, v0, t6
    and     t9, t7, t8
    bnel    t9, $zero, lbl_80ABE2CC
    lhu     t1, 0x0F18(v1)             # 8011B4E8
    lhu     v0, 0x0F18(v1)             # 8011B4E8
    andi    t0, v0, 0x2000             # t0 = 00002000
    beq     t0, $zero, lbl_80ABE2E8
    andi    t3, v0, 0x0200             # t3 = 00000000
    lhu     t1, 0x0F18(v1)             # 8011B4E8
lbl_80ABE2CC:
    andi    t2, t1, 0x4000             # t2 = 00000000
    beq     t2, $zero, lbl_80ABE2E0
    nop
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3038          # v0 = 00003038
lbl_80ABE2E0:
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3037          # v0 = 00003037
lbl_80ABE2E8:
    beq     t3, $zero, lbl_80ABE308
    andi    t4, v0, 0x0400             # t4 = 00000000
    beq     t4, $zero, lbl_80ABE300
    nop
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3033          # v0 = 00003033
lbl_80ABE300:
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3032          # v0 = 00003032
lbl_80ABE308:
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3030          # v0 = 00003030
var_80ABE310:
    jal     func_8002049C
    sra     a1, v1,  8
    beq     v0, $zero, lbl_80ABE328
    nop
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3052          # v0 = 00003052
lbl_80ABE328:
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3051          # v0 = 00003051
var_80ABE330:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t5, 0x8010                 # t5 = 80100000
    lw      t5, -0x73C4(t5)            # 800F8C3C
    lw      t6, 0x00A4(v1)             # 8011A674
    and     t7, t5, t6
    beql    t7, $zero, lbl_80ABE35C
    lhu     t8, 0x0ED8(v1)             # 8011B4A8
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3027          # v0 = 00003027
    lhu     t8, 0x0ED8(v1)             # 8011B4A8
lbl_80ABE35C:
    andi    t9, t8, 0x0008             # t9 = 00000000
    beql    t9, $zero, lbl_80ABE374
    lhu     t0, 0x0F14(v1)             # 8011B4E4
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3021          # v0 = 00003021
    lhu     t0, 0x0F14(v1)             # 8011B4E4
lbl_80ABE374:
    andi    t1, t0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80ABE388
    nop
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x302A          # v0 = 0000302A
lbl_80ABE388:
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3008          # v0 = 00003008
var_80ABE390:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t2, 0x8010                 # t2 = 80100000
    lw      t2, -0x73C4(t2)            # 800F8C3C
    lw      t3, 0x00A4(v1)             # 8011A674
    and     t4, t2, t3
    beql    t4, $zero, lbl_80ABE3BC
    lhu     t5, 0x0ED8(v1)             # 8011B4A8
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3027          # v0 = 00003027
    lhu     t5, 0x0ED8(v1)             # 8011B4A8
lbl_80ABE3BC:
    andi    t6, t5, 0x0008             # t6 = 00000000
    beq     t6, $zero, lbl_80ABE3D0
    nop
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3026          # v0 = 00003026
lbl_80ABE3D0:
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3009          # v0 = 00003009
var_80ABE3D8:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, -0x73C4(t7)            # 800F8C3C
    lw      t8, 0x00A4(v1)             # 8011A674
    and     t9, t7, t8
    beql    t9, $zero, lbl_80ABE404
    lhu     t0, 0x0ED8(v1)             # 8011B4A8
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3027          # v0 = 00003027
    lhu     t0, 0x0ED8(v1)             # 8011B4A8
lbl_80ABE404:
    andi    t1, t0, 0x0008             # t1 = 00000000
    beq     t1, $zero, lbl_80ABE418
    nop
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3026          # v0 = 00003026
lbl_80ABE418:
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x300A          # v0 = 0000300A
var_80ABE420:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t2, 0x8010                 # t2 = 80100000
    lw      t2, -0x73C4(t2)            # 800F8C3C
    lw      t3, 0x00A4(v1)             # 8011A674
    and     t4, t2, t3
    beql    t4, $zero, lbl_80ABE44C
    lhu     t5, 0x0F16(v1)             # 8011B4E6
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3027          # v0 = 00003027
    lhu     t5, 0x0F16(v1)             # 8011B4E6
lbl_80ABE44C:
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80ABE460
    nop
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3015          # v0 = 00003015
lbl_80ABE460:
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3014          # v0 = 00003014
var_80ABE468:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, -0x73C4(t7)            # 800F8C3C
    lw      t8, 0x00A4(v1)             # 8011A674
    and     t9, t7, t8
    beql    t9, $zero, lbl_80ABE494
    lhu     t0, 0x0F16(v1)             # 8011B4E6
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3027          # v0 = 00003027
    lhu     t0, 0x0F16(v1)             # 8011B4E6
lbl_80ABE494:
    andi    t1, t0, 0x0010             # t1 = 00000000
    beq     t1, $zero, lbl_80ABE4A8
    nop
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3017          # v0 = 00003017
lbl_80ABE4A8:
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3016          # v0 = 00003016
var_80ABE4B0:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t2, 0x8010                 # t2 = 80100000
    lw      t2, -0x73C4(t2)            # 800F8C3C
    lw      t3, 0x00A4(v1)             # 8011A674
    and     t4, t2, t3
    beql    t4, $zero, lbl_80ABE4DC
    lhu     t5, 0x0F16(v1)             # 8011B4E6
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3027          # v0 = 00003027
    lhu     t5, 0x0F16(v1)             # 8011B4E6
lbl_80ABE4DC:
    andi    t6, t5, 0x0100             # t6 = 00000000
    beq     t6, $zero, lbl_80ABE4F0
    nop
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3019          # v0 = 00003019
lbl_80ABE4F0:
    beq     $zero, $zero, lbl_80ABE4FC
    addiu   v0, $zero, 0x3018          # v0 = 00003018
lbl_80ABE4F8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80ABE4FC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80ABE50C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    lwc1    $f0, 0x0094(a1)            # 00000094
    lw      a0, 0x0030($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    abs.s   $f0, $f0
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    add.s   $f4, $f0, $f2
    swc1    $f4, 0x0024($sp)
    lwc1    $f6, 0x0090(a1)            # 00000090
    sh      a3, 0x002E($sp)
    sw      a1, 0x0034($sp)
    add.s   $f8, $f6, $f2
    jal     func_800DD464
    swc1    $f8, 0x0028($sp)
    sltiu   $at, v0, 0x000A
    beq     $at, $zero, lbl_80ABE918
    lh      a3, 0x002E($sp)
    sll     t6, v0,  2
    lui     $at, %hi(var_80AC1944)     # $at = 80AC0000
    addu    $at, $at, t6
    lw      t6, %lo(var_80AC1944)($at)
    jr      t6
    nop
var_80ABE578:
    lw      a0, 0x0034($sp)
    lhu     v0, 0x010E(a0)             # 0000010E
    slti    $at, v0, 0x3019
    bne     $at, $zero, lbl_80ABE5B0
    addiu   t8, v0, 0xCFF8             # t8 = FFFFCFF8
    addiu   t7, v0, 0xCFCA             # t7 = FFFFCFCA
    sltiu   $at, t7, 0x0029
    beq     $at, $zero, lbl_80ABE6E0
    sll     t7, t7,  2
    lui     $at, %hi(var_80AC196C)     # $at = 80AC0000
    addu    $at, $at, t7
    lw      t7, %lo(var_80AC196C)($at)
    jr      t7
    nop
lbl_80ABE5B0:
    sltiu   $at, t8, 0x0011
    beq     $at, $zero, lbl_80ABE6E0
    sll     t8, t8,  2
    lui     $at, %hi(var_80AC1A10)     # $at = 80AC0000
    addu    $at, $at, t8
    lw      t8, %lo(var_80AC1A10)($at)
    jr      t8
    nop
var_80ABE5D0:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t9, 0x0F14(v1)             # 8011B4E4
    or      a3, $zero, $zero           # a3 = 00000000
    ori     t0, t9, 0x0001             # t0 = 00000001
    beq     $zero, $zero, lbl_80ABE918
    sh      t0, 0x0F14(v1)             # 8011B4E4
var_80ABE5EC:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t1, 0x0F14(v1)             # 8011B4E4
    or      a3, $zero, $zero           # a3 = 00000000
    ori     t2, t1, 0x0800             # t2 = 00000800
    beq     $zero, $zero, lbl_80ABE918
    sh      t2, 0x0F14(v1)             # 8011B4E4
var_80ABE608:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t3, 0x0F16(v1)             # 8011B4E6
    or      a3, $zero, $zero           # a3 = 00000000
    ori     t4, t3, 0x0001             # t4 = 00000001
    beq     $zero, $zero, lbl_80ABE918
    sh      t4, 0x0F16(v1)             # 8011B4E6
var_80ABE624:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t5, 0x0F16(v1)             # 8011B4E6
    or      a3, $zero, $zero           # a3 = 00000000
    ori     t6, t5, 0x0010             # t6 = 00000010
    beq     $zero, $zero, lbl_80ABE918
    sh      t6, 0x0F16(v1)             # 8011B4E6
var_80ABE640:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t7, 0x0F16(v1)             # 8011B4E6
    or      a3, $zero, $zero           # a3 = 00000000
    ori     t8, t7, 0x0100             # t8 = FFFFCFCA
    beq     $zero, $zero, lbl_80ABE918
    sh      t8, 0x0F16(v1)             # 8011B4E6
var_80ABE65C:
    lwc1    $f10, 0x0024($sp)
    lw      a1, 0x0030($sp)
    addiu   a2, $zero, 0x002C          # a2 = 0000002C
    lw      a3, 0x0028($sp)
    jal     func_80022BD4
    swc1    $f10, 0x0010($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t9, 0x0F18(v1)             # 8011B4E8
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    ori     t0, t9, 0x2000             # t0 = 00002000
    beq     $zero, $zero, lbl_80ABE918
    sh      t0, 0x0F18(v1)             # 8011B4E8
var_80ABE690:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t1, 0x0F18(v1)             # 8011B4E8
    or      a3, $zero, $zero           # a3 = 00000000
    ori     t2, t1, 0x4000             # t2 = 00004000
    beq     $zero, $zero, lbl_80ABE918
    sh      t2, 0x0F18(v1)             # 8011B4E8
var_80ABE6AC:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t3, 0x0F18(v1)             # 8011B4E8
    or      a3, $zero, $zero           # a3 = 00000000
    ori     t4, t3, 0x8000             # t4 = 00008000
    beq     $zero, $zero, lbl_80ABE918
    sh      t4, 0x0F18(v1)             # 8011B4E8
var_80ABE6C8:
    beq     $zero, $zero, lbl_80ABE918
    addiu   a3, $zero, 0x0002          # a3 = 00000002
var_80ABE6D0:
    beq     $zero, $zero, lbl_80ABE918
    addiu   a3, $zero, 0x0002          # a3 = 00000002
var_80ABE6D8:
    beq     $zero, $zero, lbl_80ABE918
    addiu   a3, $zero, 0x0002          # a3 = 00000002
lbl_80ABE6E0:
    beq     $zero, $zero, lbl_80ABE918
    or      a3, $zero, $zero           # a3 = 00000000
var_80ABE6E8:
    lw      a0, 0x0030($sp)
    jal     func_800D6110
    sh      a3, 0x002E($sp)
    beq     v0, $zero, lbl_80ABE918
    lh      a3, 0x002E($sp)
    lw      a2, 0x0034($sp)
    lw      t5, 0x0030($sp)
    addiu   $at, $zero, 0x300A         # $at = 0000300A
    lhu     v0, 0x010E(a2)             # 0000010E
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, t5
    beq     v0, $at, lbl_80ABE744
    addiu   $at, $zero, 0x3034         # $at = 00003034
    beq     v0, $at, lbl_80ABE7C0
    lw      a0, 0x0030($sp)
    addiu   $at, $zero, 0x3054         # $at = 00003054
    beq     v0, $at, lbl_80ABE844
    lw      a0, 0x0030($sp)
    addiu   $at, $zero, 0x3055         # $at = 00003055
    beql    v0, $at, lbl_80ABE848
    lui     t6, 0x0001                 # t6 = 00010000
    beq     $zero, $zero, lbl_80ABE91C
    or      v0, a3, $zero              # v0 = 00000000
lbl_80ABE744:
    lbu     t6, 0x04BD(t6)             # 000104BD
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    bne     t6, $zero, lbl_80ABE7A0
    lui     t8, 0x8010                 # t8 = 80100000
    lw      t7, 0x00A0(v1)             # 8011A670
    lw      t8, -0x7378(t8)            # 800F8C88
    lui     t0, 0x8010                 # t0 = 80100000
    lbu     t0, -0x733A(t0)            # 800F8CC6
    and     t9, t7, t8
    addiu   t4, $zero, 0x300B          # t4 = 0000300B
    srav    t1, t9, t0
    bne     t1, $zero, lbl_80ABE790
    nop
    lhu     t2, 0x0F14(v1)             # 8011B4E4
    addiu   t5, $zero, 0x300C          # t5 = 0000300C
    andi    t3, t2, 0x0800             # t3 = 00000000
    beq     t3, $zero, lbl_80ABE798
    nop
lbl_80ABE790:
    beq     $zero, $zero, lbl_80ABE7A8
    sh      t4, 0x010E(a2)             # 0000010E
lbl_80ABE798:
    beq     $zero, $zero, lbl_80ABE7A8
    sh      t5, 0x010E(a2)             # 0000010E
lbl_80ABE7A0:
    addiu   t6, $zero, 0x300D          # t6 = 0000300D
    sh      t6, 0x010E(a2)             # 0000010E
lbl_80ABE7A8:
    lhu     a1, 0x010E(a2)             # 0000010E
    sh      a3, 0x002E($sp)
    jal     func_800DCE80
    lw      a0, 0x0030($sp)
    beq     $zero, $zero, lbl_80ABE918
    lh      a3, 0x002E($sp)
lbl_80ABE7C0:
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, a0
    lbu     t7, 0x04BD(t7)             # 000104BD
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    bnel    t7, $zero, lbl_80ABE810
    lhu     t2, 0x0F18(v1)             # 8011B4E8
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t8, 0x0F18(v1)             # 8011B4E8
    addiu   t0, $zero, 0x3033          # t0 = 00003033
    addiu   t1, $zero, 0x3035          # t1 = 00003035
    andi    t9, t8, 0x0800             # t9 = 00000000
    beq     t9, $zero, lbl_80ABE804
    nop
    beq     $zero, $zero, lbl_80ABE830
    sh      t0, 0x010E(a2)             # 0000010E
lbl_80ABE804:
    beq     $zero, $zero, lbl_80ABE830
    sh      t1, 0x010E(a2)             # 0000010E
    lhu     t2, 0x0F18(v1)             # 8011B4E8
lbl_80ABE810:
    addiu   t4, $zero, 0x3036          # t4 = 00003036
    addiu   t5, $zero, 0x3033          # t5 = 00003033
    andi    t3, t2, 0x0800             # t3 = 00000000
    beql    t3, $zero, lbl_80ABE830
    sh      t5, 0x010E(a2)             # 0000010E
    beq     $zero, $zero, lbl_80ABE830
    sh      t4, 0x010E(a2)             # 0000010E
    sh      t5, 0x010E(a2)             # 0000010E
lbl_80ABE830:
    lhu     a1, 0x010E(a2)             # 0000010E
    jal     func_800DCE80
    sh      a3, 0x002E($sp)
    beq     $zero, $zero, lbl_80ABE918
    lh      a3, 0x002E($sp)
lbl_80ABE844:
    lui     t6, 0x0001                 # t6 = 00010000
lbl_80ABE848:
    addu    t6, t6, a0
    lbu     t6, 0x04BD(t6)             # 000104BD
    addiu   t7, $zero, 0x3056          # t7 = 00003056
    andi    a1, t7, 0xFFFF             # a1 = 00003056
    bnel    t6, $zero, lbl_80ABE86C
    sh      t7, 0x010E(a2)             # 0000010E
    beq     $zero, $zero, lbl_80ABE878
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    sh      t7, 0x010E(a2)             # 0000010E
lbl_80ABE86C:
    jal     func_800DCE80
    sh      a3, 0x002E($sp)
    lh      a3, 0x002E($sp)
lbl_80ABE878:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t8, 0x0F0E(v1)             # 8011B4DE
    ori     t9, t8, 0x0010             # t9 = 00000010
    beq     $zero, $zero, lbl_80ABE918
    sh      t9, 0x0F0E(v1)             # 8011B4DE
var_80ABE890:
    lw      a0, 0x0030($sp)
    jal     func_800D6110
    sh      a3, 0x002E($sp)
    beq     v0, $zero, lbl_80ABE918
    lh      a3, 0x002E($sp)
    lw      a2, 0x0034($sp)
    addiu   $at, $zero, 0x3032         # $at = 00003032
    addiu   t2, $zero, 0x3034          # t2 = 00003034
    lhu     v0, 0x010E(a2)             # 0000010E
    andi    a1, t2, 0xFFFF             # a1 = 00003034
    beq     v0, $at, lbl_80ABE8E8
    addiu   $at, $zero, 0x3033         # $at = 00003033
    beq     v0, $at, lbl_80ABE8E8
    addiu   $at, $zero, 0x3035         # $at = 00003035
    beq     v0, $at, lbl_80ABE8D8
    lui     v1, 0x8012                 # v1 = 80120000
    beq     $zero, $zero, lbl_80ABE918
    addiu   a3, $zero, 0x0002          # a3 = 00000002
lbl_80ABE8D8:
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t0, 0x0F18(v1)             # 8011B4E8
    ori     t1, t0, 0x0800             # t1 = 00000800
    sh      t1, 0x0F18(v1)             # 8011B4E8
lbl_80ABE8E8:
    sh      t2, 0x010E(a2)             # 0000010E
    sh      a3, 0x002E($sp)
    jal     func_800DCE80
    lw      a0, 0x0030($sp)
    beq     $zero, $zero, lbl_80ABE918
    lh      a3, 0x002E($sp)
var_80ABE900:
    lw      a0, 0x0030($sp)
    jal     func_800D6110
    sh      a3, 0x002E($sp)
    beq     v0, $zero, lbl_80ABE918
    lh      a3, 0x002E($sp)
    addiu   a3, $zero, 0x0003          # a3 = 00000003
lbl_80ABE918:
    or      v0, a3, $zero              # v0 = 00000003
lbl_80ABE91C:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80ABE92C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    sw      a3, 0x002C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lh      t6, 0x0000(a2)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    beql    t6, $zero, lbl_80ABE984
    sw      a2, 0x0028($sp)
    lw      t9, 0x0034($sp)
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    sw      a2, 0x0028($sp)
    lw      a2, 0x0028($sp)
    sh      v0, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_80ABE9D8
    or      v0, $zero, $zero           # v0 = 00000000
    sw      a2, 0x0028($sp)
lbl_80ABE984:
    jal     func_80022930
    sw      a3, 0x0020($sp)
    beq     v0, $zero, lbl_80ABE9A4
    lw      a2, 0x0028($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_80ABE9D8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80ABE9A4:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0020($sp)
    jal     func_80022A68
    lw      a2, 0x002C($sp)
    bne     v0, $zero, lbl_80ABE9C4
    lw      t9, 0x0030($sp)
    beq     $zero, $zero, lbl_80ABE9D8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80ABE9C4:
    lw      a0, 0x0020($sp)
    jalr    $ra, t9
    or      a1, s0, $zero              # a1 = 00000000
    sh      v0, 0x010E(s0)             # 0000010E
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80ABE9D8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80ABE9EC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0038($sp)
    lw      t6, 0x0038($sp)
    lui     t0, %hi(var_80AC16B8)      # t0 = 80AC0000
    addiu   t0, t0, %lo(var_80AC16B8)  # t0 = 80AC16B8
    lh      t7, 0x001C(t6)             # 0000001C
    addiu   $at, $zero, 0x0090         # $at = 00000090
    sll     t9, a1,  4
    andi    t8, t7, 0x00F0             # t8 = 00000000
    bne     t8, $at, lbl_80ABEA2C
    addu    v1, t9, t0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    beq     $zero, $zero, lbl_80ABEA3C
    lw      a0, 0x0000(v1)             # 00000000
lbl_80ABEA2C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
    lw      a0, 0x0000(v1)             # 00000000
lbl_80ABEA3C:
    sw      v1, 0x002C($sp)
    jal     func_8008A194
    swc1    $f0, 0x0030($sp)
    lw      v1, 0x002C($sp)
    lwc1    $f0, 0x0030($sp)
    mtc1    v0, $f8                    # $f8 = 0.00
    lwc1    $f4, 0x0004(v1)            # 00000004
    lw      a0, 0x0038($sp)
    cvt.s.w $f10, $f8
    mul.s   $f6, $f0, $f4
    lbu     t1, 0x0008(v1)             # 00000008
    lwc1    $f16, 0x000C(v1)           # 0000000C
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    lw      a1, 0x0000(v1)             # 00000000
    swc1    $f10, 0x0010($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mfc1    a2, $f6
    sw      t1, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f16, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80ABEA9C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0090         # $at = 00000090
    andi    t6, v0, 0x00F0             # t6 = 00000000
    bnel    t6, $at, lbl_80ABEACC
    lh      t7, 0x00A4(a3)             # 000000A4
    beq     $zero, $zero, lbl_80ABEBEC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t7, 0x00A4(a3)             # 000000A4
lbl_80ABEACC:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      a0, a3, $zero              # a0 = 00000000
    bne     t7, $at, lbl_80ABEB24
    sra     a1, v0,  8
    sw      a2, 0x0018($sp)
    jal     func_8002049C
    sw      a3, 0x001C($sp)
    lw      a2, 0x0018($sp)
    bne     v0, $zero, lbl_80ABEB24
    lw      a3, 0x001C($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lw      t8, 0x0004(a0)             # 8011A5D4
    bnel    t8, $zero, lbl_80ABEB28
    lh      v1, 0x00A4(a3)             # 000000A4
    lh      t9, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0010         # $at = 00000010
    andi    t0, t9, 0x00F0             # t0 = 00000000
    bnel    t0, $at, lbl_80ABEB28
    lh      v1, 0x00A4(a3)             # 000000A4
    beq     $zero, $zero, lbl_80ABEBEC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80ABEB24:
    lh      v1, 0x00A4(a3)             # 000000A4
lbl_80ABEB28:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a1, $zero, 0x0062          # a1 = 00000062
    bne     a1, v1, lbl_80ABEB5C
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lw      t1, 0x0004(a0)             # 8011A5D4
    bnel    t1, $zero, lbl_80ABEB60
    addiu   a3, $zero, 0x0060          # a3 = 00000060
    lh      t2, 0x001C(a2)             # 0000001C
    andi    t3, t2, 0x00F0             # t3 = 00000000
    bnel    t3, $zero, lbl_80ABEB60
    addiu   a3, $zero, 0x0060          # a3 = 00000060
    beq     $zero, $zero, lbl_80ABEBEC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80ABEB5C:
    addiu   a3, $zero, 0x0060          # a3 = 00000060
lbl_80ABEB60:
    bne     a3, v1, lbl_80ABEBA4
    nop
    lw      t4, 0x0004(a0)             # 8011A5D4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t4, $at, lbl_80ABEBA4
    nop
    lh      v0, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0020         # $at = 00000020
    andi    v0, v0, 0x00F0             # v0 = 00000000
    beq     v0, $at, lbl_80ABEB9C
    addiu   $at, $zero, 0x0030         # $at = 00000030
    beq     v0, $at, lbl_80ABEB9C
    addiu   $at, $zero, 0x0040         # $at = 00000040
    bne     v0, $at, lbl_80ABEBA4
    nop
lbl_80ABEB9C:
    beq     $zero, $zero, lbl_80ABEBEC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80ABEBA4:
    bnel    a1, v1, lbl_80ABEBEC
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t5, 0x0004(a0)             # 8011A5D4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t5, $at, lbl_80ABEBEC
    or      v0, $zero, $zero           # v0 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0050         # $at = 00000050
    andi    v0, v0, 0x00F0             # v0 = 00000000
    beq     v0, $at, lbl_80ABEBE0
    nop
    beq     a3, v0, lbl_80ABEBE0
    addiu   $at, $zero, 0x0070         # $at = 00000070
    bnel    v0, $at, lbl_80ABEBEC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80ABEBE0:
    beq     $zero, $zero, lbl_80ABEBEC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80ABEBEC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80ABEBFC:
    lh      v0, 0x001C(a0)             # 0000001C
    andi    v0, v0, 0x00F0             # v0 = 00000000
    blez    v0, lbl_80ABEC2C
    addiu   t6, v0, 0xFFE0             # t6 = FFFFFFE0
    sltiu   $at, t6, 0x0051
    beq     $at, $zero, lbl_80ABEC60
    sll     t6, t6,  2
    lui     $at, %hi(var_80AC1A54)     # $at = 80AC0000
    addu    $at, $at, t6
    lw      t6, %lo(var_80AC1A54)($at)
    jr      t6
    nop
lbl_80ABEC2C:
    bne     v0, $zero, lbl_80ABEC60
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    jr      $ra
    nop


func_80ABEC40:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    jr      $ra
    nop


func_80ABEC50:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f0                   # $f0 = 60.00
    jr      $ra
    nop
lbl_80ABEC60:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    nop
    jr      $ra
    nop


func_80ABEC74:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_80AC031C)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC031C) # t6 = 80AC031C
    beq     t6, v0, lbl_80ABECB0
    lw      v1, 0x1C44(a1)             # 00001C44
    lui     t7, %hi(func_80ABFE44)     # t7 = 80AC0000
    addiu   t7, t7, %lo(func_80ABFE44) # t7 = 80ABFE44
    beq     t7, v0, lbl_80ABECB0
    lui     t8, %hi(func_80AC0758)     # t8 = 80AC0000
    addiu   t8, t8, %lo(func_80AC0758) # t8 = 80AC0758
    beq     t8, v0, lbl_80ABECB0
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      t9, 0x001A($sp)
lbl_80ABECB0:
    lw      t1, 0x0024(v1)             # 00000024
    sw      t1, 0x01E8(a0)             # 000001E8
    lw      t0, 0x0028(v1)             # 00000028
    sw      t0, 0x01EC(a0)             # 000001EC
    lw      t1, 0x002C(v1)             # 0000002C
    sw      t1, 0x01F0(a0)             # 000001F0
    jal     func_80ABEBFC
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    swc1    $f0, 0x01E4(a0)            # 000001E4
    lh      a3, 0x001A($sp)
    jal     func_80027854
    addiu   a1, a0, 0x01D0             # a1 = 000001D0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80ABECF8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x0204(a2)             # 00000204
    bne     v0, $zero, lbl_80ABED18
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80ABED20
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80ABED18:
    sh      t6, 0x0204(a2)             # 00000204
    lh      v1, 0x0204(a2)             # 00000204
lbl_80ABED20:
    bnel    v1, $zero, lbl_80ABED64
    lw      $ra, 0x0014($sp)
    lh      t7, 0x0206(a2)             # 00000206
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0206(a2)             # 00000206
    lh      t9, 0x0206(a2)             # 00000206
    slti    $at, t9, 0x0003
    bnel    $at, $zero, lbl_80ABED64
    lw      $ra, 0x0014($sp)
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sh      v0, 0x0204(a2)             # 00000204
    sh      $zero, 0x0206(a2)          # 00000206
    lw      $ra, 0x0014($sp)
lbl_80ABED64:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80ABED70:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x008A(a2)             # 0000008A
    lh      t7, 0x00B6(a2)             # 000000B6
    lui     $at, %hi(var_80AC1B98)     # $at = 80AC0000
    lwc1    $f6, %lo(var_80AC1B98)($at)
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a3, 0x0790(a1)             # 00000790
    lui     $at, %hi(var_80AC1B9C)     # $at = 80AC0000
    cvt.s.w $f0, $f4
    abs.s   $f0, $f0
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_80ABEDC8
    lwc1    $f8, 0x0050(a2)            # 00000050
    beq     $zero, $zero, lbl_80ABEE64
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f8, 0x0050(a2)            # 00000050
lbl_80ABEDC8:
    lwc1    $f10, %lo(var_80AC1B9C)($at)
    lui     $at, %hi(var_80AC1BA0)     # $at = 80AC0000
    lwc1    $f18, %lo(var_80AC1BA0)($at)
    div.s   $f16, $f8, $f10
    lh      t8, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0090         # $at = 00000090
    or      a0, a3, $zero              # a0 = 00000000
    andi    t9, t8, 0x00F0             # t9 = 00000000
    addiu   a1, $zero, 0x003F          # a1 = 0000003F
    mul.s   $f2, $f16, $f18
    bnel    t9, $at, lbl_80ABEE28
    lwc1    $f0, 0x008C(a2)            # 0000008C
    sw      a2, 0x0028($sp)
    sw      a3, 0x001C($sp)
    jal     func_800495BC
    swc1    $f2, 0x0024($sp)
    lui     $at, %hi(var_80AC1BA4)     # $at = 80AC0000
    lwc1    $f2, 0x0024($sp)
    lwc1    $f4, %lo(var_80AC1BA4)($at)
    lw      a2, 0x0028($sp)
    lw      a3, 0x001C($sp)
    mul.s   $f2, $f2, $f4
    nop
    lwc1    $f0, 0x008C(a2)            # 0000008C
lbl_80ABEE28:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    abs.s   $f0, $f0
    c.lt.s  $f2, $f0
    nop
    bc1f    lbl_80ABEE64
    nop
    lh      t0, 0x0142(a3)             # 00000142
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    or      a0, a3, $zero              # a0 = 00000000
    bne     t0, $at, lbl_80ABEE5C
    nop
    jal     func_800495BC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_80ABEE5C:
    beq     $zero, $zero, lbl_80ABEE64
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80ABEE64:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80ABEE74:
    lwc1    $f0, 0x0148(a0)            # 00000148
    lwc1    $f4, 0x014C(a0)            # 0000014C
    swc1    $f0, 0x014C(a0)            # 0000014C
    swc1    $f4, 0x0148(a0)            # 00000148
    jr      $ra
    nop


func_80ABEE8C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    lui     v1, 0x0600                 # v1 = 06000000
    addiu   v1, v1, 0x4930             # v1 = 06004930
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    lw      t6, 0x0030($sp)
    lw      t7, 0x0030($sp)
    addiu   a0, $sp, 0x002E            # a0 = FFFFFFFE
    lw      v0, 0x0144(t6)             # 00000144
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    bne     v1, v0, lbl_80ABEEDC
    lwc1    $f0, 0x0154(t6)            # 00000154
    lui     $at, 0x4200                # $at = 42000000
    mtc1    $at, $f4                   # $f4 = 32.00
    nop
    c.lt.s  $f4, $f0
    nop
    bc1t    lbl_80ABEEE4
    nop
lbl_80ABEEDC:
    beq     v1, v0, lbl_80ABEEEC
    or      a1, $zero, $zero           # a1 = 00000000
lbl_80ABEEE4:
    beq     $zero, $zero, lbl_80ABEEEC
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
lbl_80ABEEEC:
    lbu     t8, 0x00C8(t7)             # 000000C8
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0010($sp)
    jal     func_80064508
    sh      t8, 0x002E($sp)
    lh      t0, 0x002E($sp)
    lw      t1, 0x0030($sp)
    sb      t0, 0x00C8(t1)             # 000000C8
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80ABEF18:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lh      a2, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lw      t6, 0x003C($sp)
    andi    a2, a2, 0x000F             # a2 = 00000000
    bne     a2, $at, lbl_80ABEF4C
    lui     t7, 0x0001                 # t7 = 00010000
    beq     $zero, $zero, lbl_80ABF0C0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80ABEF4C:
    addu    t7, t7, t6
    lw      t7, 0x1E08(t7)             # 00011E08
    sll     t8, a2,  3
    lui     t2, 0x8012                 # t2 = 80120000
    addu    a0, t7, t8
    lw      v1, 0x0004(a0)             # 00000004
    lh      t4, 0x0208(s0)             # 00000208
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t9, v1,  4
    srl     t0, t9, 28
    sll     t1, t0,  2
    addu    t2, t2, t1
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, v1, $at
    sll     t5, t4,  2
    lui     $at, 0x8000                # $at = 80000000
    subu    t5, t5, t4
    addu    v0, t2, t3
    addu    v0, v0, $at
    sll     t5, t5,  1
    addu    v0, v0, t5
    lh      t6, 0x0000(v0)             # 00000000
    lh      t7, 0x0004(v0)             # 00000004
    lwc1    $f8, 0x0024(s0)            # 00000024
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f10                   # $f10 = 0.00
    lwc1    $f18, 0x002C(s0)           # 0000002C
    cvt.s.w $f6, $f4
    sw      a0, 0x0034($sp)
    cvt.s.w $f16, $f10
    sub.s   $f12, $f6, $f8
    sub.s   $f14, $f16, $f18
    swc1    $f12, 0x002C($sp)
    jal     func_800CD76C
    swc1    $f14, 0x0028($sp)
    lui     $at, %hi(var_80AC1BA8)     # $at = 80AC0000
    lwc1    $f4, %lo(var_80AC1BA8)($at)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0010($sp)
    mul.s   $f6, $f0, $f4
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    trunc.w.s $f8, $f6
    mfc1    a1, $f8
    nop
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    lwc1    $f12, 0x002C($sp)
    lwc1    $f14, 0x0028($sp)
    lui     $at, 0x4416                # $at = 44160000
    mul.s   $f10, $f12, $f12
    mtc1    $at, $f4                   # $f4 = 600.00
    or      v0, $zero, $zero           # v0 = 00000000
    mul.s   $f16, $f14, $f14
    add.s   $f18, $f10, $f16
    c.lt.s  $f18, $f4
    nop
    bc1f    lbl_80ABF0C0
    nop
    lh      t0, 0x0208(s0)             # 00000208
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0208(s0)             # 00000208
    lw      t3, 0x0034($sp)
    lh      t2, 0x0208(s0)             # 00000208
    lbu     t4, 0x0000(t3)             # 00000000
    slt     $at, t2, t4
    bnel    $at, $zero, lbl_80ABF070
    lh      v0, 0x001C(s0)             # 0000001C
    sh      $zero, 0x0208(s0)          # 00000208
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80ABF070:
    lw      a0, 0x003C($sp)
    andi    t5, v0, 0x00F0             # t5 = 00000000
    beq     t5, $zero, lbl_80ABF088
    nop
    beq     $zero, $zero, lbl_80ABF0C0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80ABF088:
    jal     func_8002049C
    sra     a1, v0,  8
    beql    v0, $zero, lbl_80ABF0A4
    lh      t6, 0x0208(s0)             # 00000208
    beq     $zero, $zero, lbl_80ABF0C0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t6, 0x0208(s0)             # 00000208
lbl_80ABF0A4:
    lh      t7, 0x00B8(s0)             # 000000B8
    slt     $at, t6, t7
    bne     $at, $zero, lbl_80ABF0B8
    nop
    sh      $zero, 0x0208(s0)          # 00000208
lbl_80ABF0B8:
    beq     $zero, $zero, lbl_80ABF0C0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80ABF0C0:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80ABF0D4:
    or      a2, a1, $zero              # a2 = 00000000
    lh      v1, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lui     t6, 0x0001                 # t6 = 00010000
    andi    v1, v1, 0x000F             # v1 = 00000000
    bne     v1, $at, lbl_80ABF0F8
    addu    t6, t6, a2
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80ABF0F8:
    lw      t6, 0x1E08(t6)             # 00011E08
    sll     t7, v1,  3
    lui     t2, 0x8012                 # t2 = 80120000
    addu    a1, t6, t7
    lw      t0, 0x0004(a1)             # 00000004
    lbu     t4, 0x0000(a1)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t8, t0,  4
    srl     t9, t8, 28
    sll     t1, t9,  2
    addu    t2, t2, t1
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, t0, $at
    sll     t5, t4,  2
    lui     $at, 0x8000                # $at = 80000000
    subu    t5, t5, t4
    addu    a3, t2, t3
    addu    a3, a3, $at
    sll     t5, t5,  1
    addu    a3, a3, t5
    lh      t6, -0x0006(a3)            # FFFFFFFA
    addiu   a3, a3, 0xFFFA             # a3 = FFFFFFFA
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0024(a0)            # 00000024
    lh      t7, 0x0002(a3)             # FFFFFFFC
    lw      t1, 0x0024(a0)             # 00000024
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0028(a0)           # 00000028
    lh      t8, 0x0004(a3)             # FFFFFFFE
    sw      t1, 0x0008(a0)             # 00000008
    lw      t9, 0x0028(a0)             # 00000028
    mtc1    t8, $f16                   # $f16 = 0.00
    sw      t9, 0x000C(a0)             # 0000000C
    cvt.s.w $f18, $f16
    swc1    $f18, 0x002C(a0)           # 0000002C
    lw      t1, 0x002C(a0)             # 0000002C
    sw      t1, 0x0010(a0)             # 00000010
    jr      $ra
    nop


func_80ABF1AC:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sdc1    $f28, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sw      s7, 0x0068($sp)
    sw      s6, 0x0064($sp)
    sw      s5, 0x0060($sp)
    sw      s4, 0x005C($sp)
    sw      s1, 0x0050($sp)
    mtc1    a2, $f26                   # $f26 = 0.00
    mtc1    a3, $f28                   # $f28 = 0.00
    or      s1, a0, $zero              # s1 = 00000000
    addiu   s4, $sp, 0x0094            # s4 = FFFFFFF4
    andi    s5, a1, 0x00FF             # s5 = 00000000
    addiu   s6, $sp, 0x0088            # s6 = FFFFFFE8
    addiu   s7, $sp, 0x007C            # s7 = FFFFFFDC
    sw      $ra, 0x006C($sp)
    sw      s3, 0x0058($sp)
    sw      s2, 0x0054($sp)
    sw      s0, 0x004C($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x00A4($sp)
    lui     t6, %hi(var_80AC16F8)      # t6 = 80AC0000
    addiu   t6, t6, %lo(var_80AC16F8)  # t6 = 80AC16F8
    lw      t8, 0x0000(t6)             # 80AC16F8
    lui     t9, %hi(var_80AC1704)      # t9 = 80AC0000
    addiu   t9, t9, %lo(var_80AC1704)  # t9 = 80AC1704
    sw      t8, 0x0000(s4)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 80AC16FC
    lui     t2, %hi(var_80AC1710)      # t2 = 80AC0000
    addiu   t2, t2, %lo(var_80AC1710)  # t2 = 80AC1710
    sw      t7, 0x0004(s4)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 80AC1700
    sw      t8, 0x0008(s4)             # FFFFFFFC
    lw      t1, 0x0000(t9)             # 80AC1704
    sw      t1, 0x0000(s6)             # FFFFFFE8
    lw      t0, 0x0004(t9)             # 80AC1708
    sw      t0, 0x0004(s6)             # FFFFFFEC
    lw      t1, 0x0008(t9)             # 80AC170C
    sw      t1, 0x0008(s6)             # FFFFFFF0
    lw      t4, 0x0000(t2)             # 80AC1710
    sw      t4, 0x0000(s7)             # FFFFFFDC
    lw      t3, 0x0004(t2)             # 80AC1714
    sw      t3, 0x0004(s7)             # FFFFFFE0
    lw      t4, 0x0008(t2)             # 80AC1718
    sw      t4, 0x0008(s7)             # FFFFFFE4
    lw      t6, 0x0024(s1)             # 00000024
    sw      t6, 0x0000(s4)             # FFFFFFF4
    lw      t5, 0x0028(s1)             # 00000028
    sw      t5, 0x0004(s4)             # FFFFFFF8
    lw      t6, 0x002C(s1)             # 0000002C
    sw      t6, 0x0008(s4)             # FFFFFFFC
    lwc1    $f4, 0x0080(s1)            # 00000080
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0098($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f24                  # $f24 = 0.50
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f8                   # $f8 = 65536.00
    sub.s   $f6, $f0, $f24
    lw      v0, 0x00B0($sp)
    lui     t8, 0x0001                 # t8 = 00010000
    lwc1    $f22, 0x00B4($sp)
    mul.s   $f10, $f6, $f8
    lwc1    $f20, 0x00B8($sp)
    or      s2, v0, $zero              # s2 = 00000000
    trunc.w.s $f16, $f10
    mfc1    s0, $f16
    nop
    sll     s0, s0, 16
    bltz    v0, lbl_80ABF394
    sra     s0, s0, 16
    div     $zero, t8, v0
    mflo    s3
    sll     s3, s3, 16
    sra     s3, s3, 16
    bne     v0, $zero, lbl_80ABF2EC
    nop
    break   # 0x01C00
lbl_80ABF2EC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_80ABF304
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_80ABF304
    nop
    break   # 0x01800
lbl_80ABF304:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f18, $f0, $f24
    mul.s   $f4, $f18, $f20
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x007C($sp)
    sub.s   $f6, $f0, $f24
    sll     a0, s0, 16
    sra     a0, a0, 16
    mul.s   $f8, $f6, $f20
    jal     func_800636C4              # sins?
    swc1    $f8, 0x0084($sp)
    mul.s   $f10, $f0, $f22
    lwc1    $f16, 0x0024(s1)           # 00000024
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f18, $f10, $f16
    jal     func_80063684              # coss?
    swc1    $f18, 0x0094($sp)
    mul.s   $f4, $f0, $f22
    lwc1    $f6, 0x002C(s1)            # 0000002C
    swc1    $f28, 0x0018($sp)
    swc1    $f26, 0x0014($sp)
    sw      s5, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFF4
    add.s   $f8, $f4, $f6
    or      a2, s6, $zero              # a2 = FFFFFFE8
    or      a3, s7, $zero              # a3 = FFFFFFDC
    jal     func_80AC11B4
    swc1    $f8, 0x009C($sp)
    addu    s0, s0, s3
    sll     s0, s0, 16
    addiu   s2, s2, 0xFFFF             # s2 = FFFFFFFF
    bgez    s2, lbl_80ABF304
    sra     s0, s0, 16
lbl_80ABF394:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    ldc1    $f28, 0x0040($sp)
    lw      s0, 0x004C($sp)
    lw      s1, 0x0050($sp)
    lw      s2, 0x0054($sp)
    lw      s3, 0x0058($sp)
    lw      s4, 0x005C($sp)
    lw      s5, 0x0060($sp)
    lw      s6, 0x0064($sp)
    lw      s7, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_80ABF3D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    sll     a1, a1, 16
    mtc1    a2, $f12                   # $f12 = 0.00
    or      a2, a0, $zero              # a2 = 00000000
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lhu     t6, 0x0088(a2)             # 00000088
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80ABF420
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0060(a2)            # 00000060
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80ABF42C
    lh      t8, 0x01D0(a2)             # 000001D0
lbl_80ABF420:
    beq     $zero, $zero, lbl_80ABF514
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t8, 0x01D0(a2)             # 000001D0
lbl_80ABF42C:
    beql    t8, $zero, lbl_80ABF440
    lh      v0, 0x020C(a2)             # 0000020C
    beq     $zero, $zero, lbl_80ABF514
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      v0, 0x020C(a2)             # 0000020C
lbl_80ABF440:
    bne     v0, $zero, lbl_80ABF450
    addiu   t9, v0, 0xFFFF             # t9 = 00000000
    beq     $zero, $zero, lbl_80ABF45C
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80ABF450:
    sh      t9, 0x020C(a2)             # 0000020C
    lh      v0, 0x020C(a2)             # 0000020C
    or      v1, v0, $zero              # v1 = 00000001
lbl_80ABF45C:
    beq     v1, $zero, lbl_80ABF4A4
    andi    t0, v0, 0x0001             # t0 = 00000001
    beq     t0, $zero, lbl_80ABF488
    lui     $at, 0x3FC0                # $at = 3FC00000
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    lwc1    $f8, 0x0028(a2)            # 00000028
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    add.s   $f16, $f8, $f10
    beq     $zero, $zero, lbl_80ABF514
    swc1    $f16, 0x0028(a2)           # 00000028
lbl_80ABF488:
    lwc1    $f18, 0x0028(a2)           # 00000028
    mtc1    $at, $f4                   # $f4 = 1.50
    nop
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x0028(a2)            # 00000028
    beq     $zero, $zero, lbl_80ABF514
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80ABF4A4:
    lh      t1, 0x020A(a2)             # 0000020A
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x020A(a2)             # 0000020A
    lh      v1, 0x020A(a2)             # 0000020A
    bgtzl   v1, lbl_80ABF4F8
    mtc1    v1, $f10                   # $f10 = 0.00
    bne     v1, $zero, lbl_80ABF4EC
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      v0, 0x020C(a2)             # 0000020C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      $zero, 0x020A(a2)          # 0000020A
    beq     $zero, $zero, lbl_80ABF514
    swc1    $f8, 0x0060(a2)            # 00000060
lbl_80ABF4EC:
    sh      a1, 0x020A(a2)             # 0000020A
    lh      v1, 0x020A(a2)             # 0000020A
    mtc1    v1, $f10                   # $f10 = 0.00
lbl_80ABF4F8:
    mtc1    a1, $f18                   # $f18 = 0.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    cvt.s.w $f16, $f10
    cvt.s.w $f4, $f18
    div.s   $f6, $f16, $f4
    mul.s   $f8, $f6, $f12
    swc1    $f8, 0x0060(a2)            # 00000060
lbl_80ABF514:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80ABF524:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lui     t8, %hi(func_80AC031C)     # t8 = 80AC0000
    addiu   t8, t8, %lo(func_80AC031C) # t8 = 80AC031C
    lw      t7, 0x1C44(t6)             # 00001C44
    lui     t9, %hi(func_80ABFD4C)     # t9 = 80AC0000
    addiu   t9, t9, %lo(func_80ABFD4C) # t9 = 80ABFD4C
    sw      t7, 0x002C($sp)
    lw      v0, 0x0180(s0)             # 00000180
    lui     $at, 0x41F0                # $at = 41F00000
    beql    t8, v0, lbl_80ABF5B8
    mtc1    $at, $f8                   # $f8 = 30.00
    beq     t9, v0, lbl_80ABF5B4
    lui     t0, %hi(func_80ABFE44)     # t0 = 80AC0000
    addiu   t0, t0, %lo(func_80ABFE44) # t0 = 80ABFE44
    beq     t0, v0, lbl_80ABF5B4
    lui     t1, %hi(func_80AC09A0)     # t1 = 80AC0000
    addiu   t1, t1, %lo(func_80AC09A0) # t1 = 80AC09A0
    beq     t1, v0, lbl_80ABF5B4
    lui     t2, %hi(func_80AC0A10)     # t2 = 80AC0000
    addiu   t2, t2, %lo(func_80AC0A10) # t2 = 80AC0A10
    beq     t2, v0, lbl_80ABF5B4
    lui     t3, %hi(func_80AC07B0)     # t3 = 80AC0000
    addiu   t3, t3, %lo(func_80AC07B0) # t3 = 80AC07B0
    beq     t3, v0, lbl_80ABF5B4
    lui     t4, %hi(func_80AC08B8)     # t4 = 80AC0000
    addiu   t4, t4, %lo(func_80AC08B8) # t4 = 80AC08B8
    beq     t4, v0, lbl_80ABF5B4
    lui     t5, %hi(func_80AC0758)     # t5 = 80AC0000
    addiu   t5, t5, %lo(func_80AC0758) # t5 = 80AC0758
    bnel    t5, v0, lbl_80ABF744
    lw      $ra, 0x0024($sp)
lbl_80ABF5B4:
    mtc1    $at, $f8                   # $f8 = 30.00
lbl_80ABF5B8:
    lui     $at, %hi(var_80AC1BAC)     # $at = 80AC0000
    lwc1    $f16, %lo(var_80AC1BAC)($at)
    lwc1    $f10, 0x0050(s0)           # 00000050
    lh      t6, 0x01C4(s0)             # 000001C4
    lh      v0, 0x001C(s0)             # 0000001C
    div.s   $f18, $f10, $f16
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   v1, $zero, 0x0090          # v1 = 00000090
    lui     t7, %hi(func_80ABE17C)     # t7 = 80AC0000
    cvt.s.w $f6, $f4
    lui     t8, %hi(func_80ABE50C)     # t8 = 80AC0000
    lui     t9, %hi(func_80ABE17C)     # t9 = 80AC0000
    lui     t0, %hi(func_80ABE50C)     # t0 = 80AC0000
    andi    v0, v0, 0x00F0             # v0 = 00000000
    lui     $at, %hi(var_80AC1BB0)     # $at = 80AC0000
    addiu   t8, t8, %lo(func_80ABE50C) # t8 = 80ABE50C
    addiu   t7, t7, %lo(func_80ABE17C) # t7 = 80ABE17C
    addiu   t0, t0, %lo(func_80ABE50C) # t0 = 80ABE50C
    addiu   t9, t9, %lo(func_80ABE17C) # t9 = 80ABE17C
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x01D0             # a2 = 000001D0
    add.s   $f0, $f6, $f8
    mul.s   $f0, $f0, $f18
    bne     v1, v0, lbl_80ABF62C
    nop
    lwc1    $f4, %lo(var_80AC1BB0)($at)
    mul.s   $f0, $f0, $f4
    nop
lbl_80ABF62C:
    bnel    v1, v0, lbl_80ABF65C
    mfc1    a3, $f0
    mfc1    a3, $f0
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x01D0             # a2 = 000001D0
    sw      t7, 0x0010($sp)
    jal     func_80ABE92C
    sw      t8, 0x0014($sp)
    beq     $zero, $zero, lbl_80ABF66C
    lh      t1, 0x001C(s0)             # 0000001C
    mfc1    a3, $f0
lbl_80ABF65C:
    sw      t9, 0x0010($sp)
    jal     func_800271FC
    sw      t0, 0x0014($sp)
    lh      t1, 0x001C(s0)             # 0000001C
lbl_80ABF66C:
    addiu   $at, $zero, 0x0090         # $at = 00000090
    andi    t2, t1, 0x00F0             # t2 = 00000000
    bne     t2, $at, lbl_80ABF740
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80ABF740
    lui     t3, 0x8010                 # t3 = 80100000
    lbu     t3, -0x709F(t3)            # 800F8F61
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   $at, $zero, 0x0033         # $at = 00000033
    addu    v0, v0, t3
    lbu     v0, -0x59BC(v0)            # 8011A644
    bnel    v0, $at, lbl_80ABF708
    addiu   $at, $zero, 0x0036         # $at = 00000036
    jal     func_80022B04
    lw      a0, 0x0034($sp)
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     v0, $at, lbl_80ABF6E0
    addiu   t8, $zero, 0x3053          # t8 = 00003053
    lui     t4, 0x8012                 # t4 = 80120000
    lhu     t4, -0x4B22(t4)            # 8011B4DE
    addiu   t6, $zero, 0x3055          # t6 = 00003055
    addiu   t7, $zero, 0x3054          # t7 = 00003054
    andi    t5, t4, 0x0010             # t5 = 00000000
    beq     t5, $zero, lbl_80ABF6D8
    nop
    beq     $zero, $zero, lbl_80ABF6E4
    sh      t6, 0x010E(s0)             # 0000010E
lbl_80ABF6D8:
    beq     $zero, $zero, lbl_80ABF6E4
    sh      t7, 0x010E(s0)             # 0000010E
lbl_80ABF6E0:
    sh      t8, 0x010E(s0)             # 0000010E
lbl_80ABF6E4:
    lhu     t9, 0x010E(s0)             # 0000010E
    lw      t0, 0x002C($sp)
    lui     t1, 0x8010                 # t1 = 80100000
    lui     v0, 0x8012                 # v0 = 80120000
    sh      t9, 0x010E(t0)             # 0000010E
    lbu     t1, -0x709F(t1)            # 800F8F61
    addu    v0, v0, t1
    lbu     v0, -0x59BC(v0)            # 8011A644
    addiu   $at, $zero, 0x0036         # $at = 00000036
lbl_80ABF708:
    bnel    v0, $at, lbl_80ABF744
    lw      $ra, 0x0024($sp)
    jal     func_80022B04
    lw      a0, 0x0034($sp)
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     v0, $at, lbl_80ABF730
    addiu   t3, $zero, 0x3058          # t3 = 00003058
    addiu   t2, $zero, 0x3059          # t2 = 00003059
    beq     $zero, $zero, lbl_80ABF734
    sh      t2, 0x010E(s0)             # 0000010E
lbl_80ABF730:
    sh      t3, 0x010E(s0)             # 0000010E
lbl_80ABF734:
    lhu     t4, 0x010E(s0)             # 0000010E
    lw      t5, 0x002C($sp)
    sh      t4, 0x010E(t5)             # 0000010E
lbl_80ABF740:
    lw      $ra, 0x0024($sp)
lbl_80ABF744:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80ABF754:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x005C($sp)
    lui     t7, %hi(var_80AC171C)      # t7 = 80AC0000
    addiu   t7, t7, %lo(var_80AC171C)  # t7 = 80AC171C
    lw      t9, 0x0000(t7)             # 80AC171C
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 80AC1720
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 80AC1724
    lui     t1, %hi(var_80AC1728)      # t1 = 80AC0000
    addiu   t1, t1, %lo(var_80AC1728)  # t1 = 80AC1728
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lw      t3, 0x0000(t1)             # 80AC1728
    addiu   t0, $sp, 0x0038            # t0 = FFFFFFE0
    lw      t2, 0x0004(t1)             # 80AC172C
    sw      t3, 0x0000(t0)             # FFFFFFE0
    lw      t3, 0x0008(t1)             # 80AC1730
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x41F0                 # a3 = 41F00000
    sw      t2, 0x0004(t0)             # FFFFFFE4
    jal     func_8001EC20
    sw      t3, 0x0008(t0)             # FFFFFFE8
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0xFEF0             # a2 = 0600FEF0
    lw      a0, 0x005C($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C788
    sw      $zero, 0x0018($sp)
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    lw      a0, 0x005C($sp)
    lui     a3, %hi(var_80AC1680)      # a3 = 80AC0000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_80AC1680)  # a3 = 80AC1680
    lw      a0, 0x005C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80049E10
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    lui     a2, %hi(var_80AC16AC)      # a2 = 80AC0000
    addiu   a2, a2, %lo(var_80AC16AC)  # a2 = 80AC16AC
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ABEA9C
    lw      a1, 0x005C($sp)
    bne     v0, $zero, lbl_80ABF854
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABFA94
    lw      $ra, 0x002C($sp)
lbl_80ABF854:
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0090         # $at = 00000090
    andi    v0, v0, 0x00F0             # v0 = 00000000
    beq     v0, $zero, lbl_80ABF88C
    nop
    beq     v0, $at, lbl_80ABF88C
    nop
    lw      t4, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t5, t4, $at
    addiu   $at, $zero, 0xFFDF         # $at = FFFFFFDF
    sw      t5, 0x0004(s0)             # 00000004
    and     t7, t5, $at
    sw      t7, 0x0004(s0)             # 00000004
lbl_80ABF88C:
    jal     func_80ABE9EC
    or      a1, $zero, $zero           # a1 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    andi    v0, v0, 0x00F0             # v0 = 00000000
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    slti    $at, v0, 0x0071
    sb      t8, 0x001F(s0)             # 0000001F
    sh      $zero, 0x01D0(s0)          # 000001D0
    bne     $at, $zero, lbl_80ABF8D0
    swc1    $f4, 0x006C(s0)            # 0000006C
    addiu   $at, $zero, 0x0090         # $at = 00000090
    beq     v0, $at, lbl_80ABFA34
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    beq     $zero, $zero, lbl_80ABFA88
    nop
lbl_80ABF8D0:
    sltiu   $at, v0, 0x0071
    beq     $at, $zero, lbl_80ABFA88
    sll     t9, v0,  2
    lui     $at, %hi(var_80AC1BB4)     # $at = 80AC0000
    addu    $at, $at, t9
    lw      t9, %lo(var_80AC1BB4)($at)
    jr      t9
    nop
var_80ABF8F0:
    lui     a1, 0x3C03                 # a1 = 3C030000
    ori     a1, a1, 0x126F             # a1 = 3C03126F
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     t0, 0x8010                 # t0 = 80100000
    lui     t1, 0x8010                 # t1 = 80100000
    lbu     t1, -0x733E(t1)            # 800F8CC2
    lw      t0, -0x740C(t0)            # 800F8BF4
    lui     t3, 0x8012                 # t3 = 80120000
    lhu     t3, -0x5994(t3)            # 8011A66C
    sllv    t2, t0, t1
    lui     $at, 0x44AF                # $at = 44AF0000
    and     t4, t2, t3
    beq     t4, $zero, lbl_80ABF950
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ABF0D4
    lw      a1, 0x005C($sp)
    lui     a1, %hi(func_80ABFE54)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80ABFE54) # a1 = 80ABFE54
    jal     func_80ABE170
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABFA94
    lw      $ra, 0x002C($sp)
lbl_80ABF950:
    mtc1    $at, $f6                   # $f6 = 0.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lui     a1, %hi(func_80ABFD4C)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80ABFD4C) # a1 = 80ABFD4C
    swc1    $f6, 0x00BC(s0)            # 000000BC
    jal     func_80ABE170
    swc1    $f8, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80ABFA94
    lw      $ra, 0x002C($sp)
var_80ABF978:
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4930             # a0 = 06004930
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    cvt.s.w $f16, $f10
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    swc1    $f16, 0x0154(s0)           # 00000154
    lui     a1, %hi(func_80ABFE44)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80ABFE44) # a1 = 80ABFE44
    jal     func_80ABE170
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABFA94
    lw      $ra, 0x002C($sp)
var_80ABF9B8:
    lui     t5, 0x8012                 # t5 = 80120000
    lhu     t5, -0x4B1C(t5)            # 8011B4E4
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, t5, 0x0800             # t6 = 00000000
    beql    t6, $zero, lbl_80ABF9DC
    lui     a1, 0x3C75                 # a1 = 3C750000
    jal     func_80ABF0D4
    lw      a1, 0x005C($sp)
    lui     a1, 0x3C75                 # a1 = 3C750000
lbl_80ABF9DC:
    ori     a1, a1, 0xC28F             # a1 = 3C75C28F
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80ABFE54)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80ABFE54) # a1 = 80ABFE54
    jal     func_80ABE170
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABFA94
    lw      $ra, 0x002C($sp)
var_80ABFA00:
    lui     $at, 0x44AF                # $at = 44AF0000
    mtc1    $at, $f18                  # $f18 = 1400.00
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    swc1    $f18, 0x00BC(s0)           # 000000BC
    lui     a1, %hi(func_80ABFAE4)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80ABFAE4) # a1 = 80ABFAE4
    jal     func_80ABE170
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABFA94
    lw      $ra, 0x002C($sp)
lbl_80ABFA34:
    lui     a1, 0x3E23                 # a1 = 3E230000
    sb      t7, 0x001F(s0)             # 0000001F
    ori     a1, a1, 0xD70A             # a1 = 3E23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80ABFE54)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80ABFE54) # a1 = 80ABFE54
    jal     func_80ABE170
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABFA94
    lw      $ra, 0x002C($sp)
var_80ABFA60:
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80ABFE54)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80ABFE54) # a1 = 80ABFE54
    jal     func_80ABE170
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ABFA94
    lw      $ra, 0x002C($sp)
lbl_80ABFA88:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
lbl_80ABFA94:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_80ABFAA4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_8008D6D0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80ABFAE4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, %hi(var_80AC1D78)     # $at = 80AC0000
    lwc1    $f4, %lo(var_80AC1D78)($at)
    lwc1    $f6, 0x008C(a0)            # 0000008C
    lui     a1, %hi(func_80ABFB28)     # a1 = 80AC0000
    c.lt.s  $f4, $f6
    nop
    bc1tl   lbl_80ABFB1C
    lw      $ra, 0x0014($sp)
    jal     func_80ABE170
    addiu   a1, a1, %lo(func_80ABFB28) # a1 = 80ABFB28
    lw      $ra, 0x0014($sp)
lbl_80ABFB1C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80ABFB28:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    lh      v0, 0x01FE(s0)             # 000001FE
    bne     v0, $zero, lbl_80ABFB54
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80ABFB5C
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80ABFB54:
    sh      t6, 0x01FE(s0)             # 000001FE
    lh      v1, 0x01FE(s0)             # 000001FE
lbl_80ABFB5C:
    bnel    v1, $zero, lbl_80ABFBC0
    lui     $at, 0x4040                # $at = 40400000
    lbu     v0, 0x0197(s0)             # 00000197
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, s1
    andi    t7, v0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80ABFBBC
    andi    t8, v0, 0xFFFE             # t8 = 00000000
    sb      t8, 0x0197(s0)             # 00000197
    lw      t9, 0x1D58(t9)             # 00011D58
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0xFFFC          # a1 = FFFFFFFC
    jalr    $ra, t9
    nop
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lh      a3, 0x008A(s0)             # 0000008A
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4080                 # a2 = 40800000
    jal     func_80022EC4
    swc1    $f4, 0x0010($sp)
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    sh      t0, 0x01FE(s0)             # 000001FE
lbl_80ABFBBC:
    lui     $at, 0x4040                # $at = 40400000
lbl_80ABFBC0:
    mtc1    $at, $f6                   # $f6 = 3.00
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80ABEF18
    swc1    $f6, 0x0068(s0)            # 00000068
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80ABFC44
    lwl     t3, 0x0030(s0)             # 00000030
    lh      t1, 0x0208(s0)             # 00000208
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    bnel    t1, $zero, lbl_80ABFC44
    lwl     t3, 0x0030(s0)             # 00000030
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    beq     v0, $zero, lbl_80ABFC2C
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x01E8(v0)          # 000001E8
lbl_80ABFC2C:
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     a1, %hi(func_80ABFCBC)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80ABFCBC) # a1 = 80ABFCBC
    jal     func_80ABE170
    swc1    $f16, 0x0068(s0)           # 00000068
    lwl     t3, 0x0030(s0)             # 00000030
lbl_80ABFC44:
    lwr     t3, 0x0033(s0)             # 00000033
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    swl     t3, 0x00B4(s0)             # 000000B4
    swr     t3, 0x00B7(s0)             # 000000B7
    lhu     t3, 0x0034(s0)             # 00000034
    lui     a2, 0x40C0                 # a2 = 40C00000
    jal     func_80ABF3D8
    sh      t3, 0x00B8(s0)             # 000000B8
    beq     v0, $zero, lbl_80ABFCA8
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lui     a2, 0x3E23                 # a2 = 3E230000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x0010($sp)
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xD70A             # a2 = 3E23D70A
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    swc1    $f18, 0x0014($sp)
    jal     func_80ABF1AC
    swc1    $f4, 0x0018($sp)
lbl_80ABFCA8:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80ABFCBC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     a2, 0x40C0                 # a2 = 40C00000
    jal     func_80ABF3D8
    sw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_80ABFD3C
    lw      a0, 0x0028($sp)
    lh      t6, 0x020A(a0)             # 0000020A
    lui     a2, 0x3E23                 # a2 = 3E230000
    ori     a2, a2, 0xD70A             # a2 = 3E23D70A
    bne     t6, $zero, lbl_80ABFD10
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a1, %hi(func_80ABFE54)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80ABFE54) # a1 = 80ABFE54
    jal     func_80ABE170
    swc1    $f4, 0x00BC(a0)            # 000000BC
    beq     $zero, $zero, lbl_80ABFD40
    lw      $ra, 0x0024($sp)
lbl_80ABFD10:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0010($sp)
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    swc1    $f6, 0x0014($sp)
    jal     func_80ABF1AC
    swc1    $f8, 0x0018($sp)
lbl_80ABFD3C:
    lw      $ra, 0x0024($sp)
lbl_80ABFD40:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80ABFD4C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ABEF18
    lw      a1, 0x0034($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80ABFDCC
    lwl     t0, 0x0030(s0)             # 00000030
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0034($sp)
    jal     func_8002049C
    sra     a1, a1,  8
    beql    v0, $zero, lbl_80ABFDCC
    lwl     t0, 0x0030(s0)             # 00000030
    lh      t6, 0x0208(s0)             # 00000208
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80ABFCBC)     # a1 = 80AC0000
    bnel    t6, $zero, lbl_80ABFDCC
    lwl     t0, 0x0030(s0)             # 00000030
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a1, a1, %lo(func_80ABFCBC) # a1 = 80ABFCBC
    jal     func_80ABE170
    swc1    $f4, 0x0068(s0)            # 00000068
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x0F18(v0)             # 8011B4E8
    ori     t8, t7, 0x0200             # t8 = 00000200
    sh      t8, 0x0F18(v0)             # 8011B4E8
    lwl     t0, 0x0030(s0)             # 00000030
lbl_80ABFDCC:
    lwr     t0, 0x0033(s0)             # 00000033
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    swl     t0, 0x00B4(s0)             # 000000B4
    swr     t0, 0x00B7(s0)             # 000000B7
    lhu     t0, 0x0034(s0)             # 00000034
    lui     a2, 0x40C0                 # a2 = 40C00000
    jal     func_80ABF3D8
    sh      t0, 0x00B8(s0)             # 000000B8
    beq     v0, $zero, lbl_80ABFE30
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f6                   # $f6 = 13.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     a2, 0x3E38                 # a2 = 3E380000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      t1, 0x0010($sp)
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    ori     a2, a2, 0x51EC             # a2 = 3E3851EC
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    swc1    $f6, 0x0014($sp)
    jal     func_80ABF1AC
    swc1    $f8, 0x0018($sp)
lbl_80ABFE30:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80ABFE44:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80ABFE54:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      v0, 0x0200(s0)             # 00000200
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80ABFE80
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80ABFE88
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80ABFE80:
    sh      t6, 0x0200(s0)             # 00000200
    lh      v1, 0x0200(s0)             # 00000200
lbl_80ABFE88:
    bnel    v1, $zero, lbl_80ABFF44
    lw      $ra, 0x0024($sp)
    jal     func_80ABED70
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_80ABFF40
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x38FC          # a0 = 000038FC
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lh      t8, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80AC1D7C)     # $at = 80AC0000
    lwc1    $f4, %lo(var_80AC1D7C)($at)
    addiu   $at, $zero, 0x0090         # $at = 00000090
    andi    t9, t8, 0x00F0             # t9 = 00000000
    bne     t9, $at, lbl_80ABFEF0
    swc1    $f4, 0x0158(s0)            # 00000158
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    beq     $zero, $zero, lbl_80ABFF00
    lwc1    $f6, 0x0158(s0)            # 00000158
lbl_80ABFEF0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
    lwc1    $f6, 0x0158(s0)            # 00000158
lbl_80ABFF00:
    lui     a1, %hi(func_80ABFF54)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80ABFF54) # a1 = 80ABFF54
    mul.s   $f8, $f6, $f0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ABE170
    swc1    $f8, 0x0158(s0)            # 00000158
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0090         # $at = 00000090
    lw      a0, 0x002C($sp)
    andi    t1, t0, 0x00F0             # t1 = 00000000
    bne     t1, $at, lbl_80ABFF40
    addiu   a1, $zero, 0x1068          # a1 = 00001068
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
lbl_80ABFF40:
    lw      $ra, 0x0024($sp)
lbl_80ABFF44:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80ABFF54:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0158(s0)            # 00000158
    c.eq.s  $f4, $f6
    nop
    bc1tl   lbl_80AC002C
    lh      v0, 0x0202(s0)             # 00000202
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0090         # $at = 00000090
    andi    t7, t6, 0x00F0             # t7 = 00000000
    bne     t7, $at, lbl_80ABFFA0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    beq     $zero, $zero, lbl_80ABFFAC
    nop
lbl_80ABFFA0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
lbl_80ABFFAC:
    lui     $at, %hi(var_80AC1D80)     # $at = 80AC0000
    lwc1    $f2, %lo(var_80AC1D80)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    mfc1    a2, $f2
    addiu   a0, s0, 0x0158             # a0 = 00000158
    mul.s   $f10, $f0, $f8
    lui     a3, 0x447A                 # a3 = 447A0000
    swc1    $f2, 0x0010($sp)
    mfc1    a1, $f10
    jal     func_80064178
    nop
    lwc1    $f0, 0x0154(s0)            # 00000154
    lwc1    $f16, 0x0158(s0)           # 00000158
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f2                   # $f2 = 12.00
    add.s   $f0, $f0, $f16
    addiu   $at, $zero, 0x0090         # $at = 00000090
    c.le.s  $f0, $f2
    nop
    bc1tl   lbl_80AC00C0
    lw      $ra, 0x0024($sp)
    lh      t8, 0x001C(s0)             # 0000001C
    mtc1    $zero, $f18                # $f18 = 0.00
    swc1    $f2, 0x0154(s0)            # 00000154
    andi    t9, t8, 0x00F0             # t9 = 00000000
    beq     t9, $at, lbl_80AC0028
    swc1    $f18, 0x0158(s0)           # 00000158
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    beq     $zero, $zero, lbl_80AC00BC
    sh      t0, 0x0202(s0)             # 00000202
lbl_80AC0028:
    lh      v0, 0x0202(s0)             # 00000202
lbl_80AC002C:
    lui     a3, 0x8010                 # a3 = 80100000
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80AC0044
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    beq     $zero, $zero, lbl_80AC004C
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80AC0044:
    sh      t1, 0x0202(s0)             # 00000202
    lh      v1, 0x0202(s0)             # 00000202
lbl_80AC004C:
    bne     v1, $zero, lbl_80AC008C
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    sw      t2, 0x0014($sp)
    addiu   a0, $zero, 0x38FD          # a0 = 000038FD
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     a1, %hi(func_80AC0208)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80AC0208) # a1 = 80AC0208
    jal     func_80ABE170
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AC00C0
    lw      $ra, 0x0024($sp)
lbl_80AC008C:
    jal     func_80ABED70
    lw      a1, 0x002C($sp)
    bnel    v0, $zero, lbl_80AC00C0
    lw      $ra, 0x0024($sp)
    jal     func_80ABEE74
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a1, %hi(func_80AC00D0)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80AC00D0) # a1 = 80AC00D0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ABE170
    swc1    $f4, 0x0158(s0)            # 00000158
lbl_80AC00BC:
    lw      $ra, 0x0024($sp)
lbl_80AC00C0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AC00D0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0090         # $at = 00000090
    andi    t7, t6, 0x00F0             # t7 = 00000000
    bne     t7, $at, lbl_80AC0104
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    beq     $zero, $zero, lbl_80AC0110
    nop
lbl_80AC0104:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
lbl_80AC0110:
    lui     $at, %hi(var_80AC1D84)     # $at = 80AC0000
    lwc1    $f2, %lo(var_80AC1D84)($at)
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f4                   # $f4 = -0.50
    mfc1    a2, $f2
    addiu   a0, s0, 0x0158             # a0 = 00000158
    mul.s   $f6, $f0, $f4
    lui     a3, 0x447A                 # a3 = 447A0000
    swc1    $f2, 0x0010($sp)
    mfc1    a1, $f6
    jal     func_80064178
    nop
    lwc1    $f0, 0x0154(s0)            # 00000154
    lwc1    $f8, 0x0158(s0)            # 00000158
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     a3, 0x8010                 # a3 = 80100000
    add.s   $f0, $f0, $f8
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    c.le.s  $f10, $f0
    addiu   a0, $zero, 0x387B          # a0 = 0000387B
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bc1tl   lbl_80AC01F8
    lw      $ra, 0x002C($sp)
    sw      a3, 0x0010($sp)
    jal     func_800C806C
    sw      t8, 0x0014($sp)
    lui     $at, 0x41D0                # $at = 41D00000
    mtc1    $at, $f16                  # $f16 = 26.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f18                  # $f18 = 2.00
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    sw      t9, 0x0010($sp)
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    swc1    $f16, 0x0014($sp)
    jal     func_80ABF1AC
    swc1    $f18, 0x0018($sp)
    jal     func_80ABEE74
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    swc1    $f0, 0x0158(s0)            # 00000158
    jal     func_80063BF0
    swc1    $f0, 0x0154(s0)            # 00000154
    lui     a1, %hi(func_80ABFE54)     # a1 = 80AC0000
    sh      v0, 0x0200(s0)             # 00000200
    addiu   a1, a1, %lo(func_80ABFE54) # a1 = 80ABFE54
    jal     func_80ABE170
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
lbl_80AC01F8:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80AC0208:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4930             # a0 = 06004930
    lh      t6, 0x001C(s0)             # 0000001C
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   $at, $zero, 0x0090         # $at = 00000090
    andi    t7, t6, 0x00F0             # t7 = 00000000
    bne     t7, $at, lbl_80AC0250
    cvt.s.w $f2, $f4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    beq     $zero, $zero, lbl_80AC025C
    nop
lbl_80AC0250:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
lbl_80AC025C:
    lui     $at, %hi(var_80AC1D88)     # $at = 80AC0000
    lwc1    $f12, %lo(var_80AC1D88)($at)
    mfc1    a1, $f0
    addiu   a0, s0, 0x0158             # a0 = 00000158
    mfc1    a2, $f12
    lui     a3, 0x447A                 # a3 = 447A0000
    swc1    $f2, 0x002C($sp)
    jal     func_80064178
    swc1    $f12, 0x0010($sp)
    lwc1    $f0, 0x0154(s0)            # 00000154
    lwc1    $f6, 0x0158(s0)            # 00000158
    lwc1    $f2, 0x002C($sp)
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    add.s   $f0, $f0, $f6
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    c.lt.s  $f0, $f2
    nop
    bc1tl   lbl_80AC030C
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f2, 0x0154(s0)            # 00000154
    jal     func_80063BF0
    swc1    $f8, 0x0158(s0)            # 00000158
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0040         # $at = 00000040
    sh      v0, 0x0202(s0)             # 00000202
    andi    t9, t8, 0x00F0             # t9 = 00000000
    bne     t9, $at, lbl_80AC02F8
    lui     t0, 0x8012                 # t0 = 80120000
    lhu     t0, -0x4B1C(t0)            # 8011B4E4
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80AC0758)     # a1 = 80AC0000
    andi    t1, t0, 0x0800             # t1 = 00000000
    bne     t1, $zero, lbl_80AC02F8
    nop
    jal     func_80ABE170
    addiu   a1, a1, %lo(func_80AC0758) # a1 = 80AC0758
    beq     $zero, $zero, lbl_80AC030C
    lw      $ra, 0x0024($sp)
lbl_80AC02F8:
    lui     a1, %hi(func_80AC031C)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80AC031C) # a1 = 80AC031C
    jal     func_80ABE170
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80AC030C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80AC031C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0090         # $at = 00000090
    andi    v0, v0, 0x00F0             # v0 = 00000000
    bne     v0, $at, lbl_80AC041C
    nop
    lh      t6, 0x01D0(s0)             # 000001D0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t6, $at, lbl_80AC041C
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lbu     t7, 0x003E(v0)             # 8011A60E
    lui     t8, 0x8010                 # t8 = 80100000
    beq     t7, $zero, lbl_80AC0374
    nop
    beq     $zero, $zero, lbl_80AC0500
    sh      $zero, 0x01D0(s0)          # 000001D0
lbl_80AC0374:
    lbu     t8, -0x709F(t8)            # 800F8F61
    addiu   $at, $zero, 0x0036         # $at = 00000036
    lui     a1, %hi(func_80AC07B0)     # a1 = 80AC0000
    addu    t9, v0, t8
    lbu     t0, 0x0074(t9)             # 00000074
    addiu   a1, a1, %lo(func_80AC07B0) # a1 = 80AC07B0
    or      a0, s0, $zero              # a0 = 00000000
    bne     t0, $at, lbl_80AC03F8
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ABE9EC
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    lui     a1, %hi(func_80AC09A0)     # a1 = 80AC0000
    sh      t1, 0x020E(s0)             # 0000020E
    sh      $zero, 0x01D0(s0)          # 000001D0
    addiu   a1, a1, %lo(func_80AC09A0) # a1 = 80AC09A0
    jal     func_80ABE170
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t2, $zero, 0x0037          # t2 = 00000037
    addu    $at, $at, a0
    sb      t2, 0x03DC($at)            # 000103DC
    lui     $at, 0x8012                # $at = 80120000
    sh      $zero, -0x465E($at)        # 8011B9A2
    sw      $zero, 0x0010($sp)
    addiu   a1, $zero, 0x105E          # a1 = 0000105E
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    jal     func_8006B6FC
    or      a3, s0, $zero              # a3 = 00000000
    beq     $zero, $zero, lbl_80AC0504
    lw      $ra, 0x0024($sp)
lbl_80AC03F8:
    jal     func_80ABE170
    sh      $zero, 0x01D0(s0)          # 000001D0
    jal     func_800D6218
    lw      a0, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AC07B0
    lw      a1, 0x002C($sp)
    beq     $zero, $zero, lbl_80AC0504
    lw      $ra, 0x0024($sp)
lbl_80AC041C:
    bnel    v0, $zero, lbl_80AC0470
    lh      v0, 0x0202(s0)             # 00000202
    lh      t3, 0x01D0(s0)             # 000001D0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    bne     t3, $at, lbl_80AC046C
    lui     a1, %hi(func_80AC07B0)     # a1 = 80AC0000
    jal     func_80ABE170
    addiu   a1, a1, %lo(func_80AC07B0) # a1 = 80AC07B0
    lw      t5, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    addu    $at, $at, t5
    sb      t4, 0x04BF($at)            # 000104BF
    lw      t7, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t6, $zero, 0x0036          # t6 = 00000036
    addu    $at, $at, t7
    beq     $zero, $zero, lbl_80AC0500
    sb      t6, 0x03DC($at)            # 000103DC
lbl_80AC046C:
    lh      v0, 0x0202(s0)             # 00000202
lbl_80AC0470:
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80AC0484
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_80AC048C
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80AC0484:
    sh      t8, 0x0202(s0)             # 00000202
    lh      v1, 0x0202(s0)             # 00000202
lbl_80AC048C:
    bnel    v1, $zero, lbl_80AC0504
    lw      $ra, 0x0024($sp)
    jal     func_80ABED70
    lw      a1, 0x002C($sp)
    bnel    v0, $zero, lbl_80AC0504
    lw      $ra, 0x0024($sp)
    jal     func_80ABEE74
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80AC1D8C)     # $at = 80AC0000
    lwc1    $f4, %lo(var_80AC1D8C)($at)
    addiu   $at, $zero, 0x0090         # $at = 00000090
    andi    t0, t9, 0x00F0             # t0 = 00000000
    bne     t0, $at, lbl_80AC04D8
    swc1    $f4, 0x0158(s0)            # 00000158
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    beq     $zero, $zero, lbl_80AC04E8
    lwc1    $f6, 0x0158(s0)            # 00000158
lbl_80AC04D8:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
    lwc1    $f6, 0x0158(s0)            # 00000158
lbl_80AC04E8:
    lui     a1, %hi(func_80AC0514)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80AC0514) # a1 = 80AC0514
    mul.s   $f8, $f6, $f0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ABE170
    swc1    $f8, 0x0158(s0)            # 00000158
lbl_80AC0500:
    lw      $ra, 0x0024($sp)
lbl_80AC0504:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AC0514:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0158(s0)            # 00000158
    c.eq.s  $f4, $f6
    nop
    bc1tl   lbl_80AC05EC
    lh      v0, 0x0202(s0)             # 00000202
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0090         # $at = 00000090
    andi    t7, t6, 0x00F0             # t7 = 00000000
    bne     t7, $at, lbl_80AC0560
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    beq     $zero, $zero, lbl_80AC056C
    nop
lbl_80AC0560:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
lbl_80AC056C:
    lui     $at, %hi(var_80AC1D90)     # $at = 80AC0000
    lwc1    $f2, %lo(var_80AC1D90)($at)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    mfc1    a2, $f2
    addiu   a0, s0, 0x0158             # a0 = 00000158
    mul.s   $f10, $f0, $f8
    lui     a3, 0x447A                 # a3 = 447A0000
    swc1    $f2, 0x0010($sp)
    mfc1    a1, $f10
    jal     func_80064178
    nop
    lwc1    $f0, 0x0154(s0)            # 00000154
    lwc1    $f16, 0x0158(s0)           # 00000158
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f2                   # $f2 = 12.00
    add.s   $f0, $f0, $f16
    addiu   $at, $zero, 0x0090         # $at = 00000090
    c.le.s  $f2, $f0
    nop
    bc1tl   lbl_80AC0680
    lw      $ra, 0x0024($sp)
    lh      t8, 0x001C(s0)             # 0000001C
    mtc1    $zero, $f18                # $f18 = 0.00
    swc1    $f2, 0x0154(s0)            # 00000154
    andi    t9, t8, 0x00F0             # t9 = 00000000
    beq     t9, $at, lbl_80AC05E8
    swc1    $f18, 0x0158(s0)           # 00000158
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    beq     $zero, $zero, lbl_80AC067C
    sh      t0, 0x0202(s0)             # 00000202
lbl_80AC05E8:
    lh      v0, 0x0202(s0)             # 00000202
lbl_80AC05EC:
    lui     a1, %hi(func_80AC00D0)     # a1 = 80AC0000
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80AC0604
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    beq     $zero, $zero, lbl_80AC060C
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80AC0604:
    sh      t1, 0x0202(s0)             # 00000202
    lh      v1, 0x0202(s0)             # 00000202
lbl_80AC060C:
    bne     v1, $zero, lbl_80AC0624
    addiu   a1, a1, %lo(func_80AC00D0) # a1 = 80AC00D0
    jal     func_80ABE170
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AC0680
    lw      $ra, 0x0024($sp)
lbl_80AC0624:
    jal     func_80ABED70
    lw      a1, 0x002C($sp)
    beql    v0, $zero, lbl_80AC0680
    lw      $ra, 0x0024($sp)
    jal     func_80ABEE74
    or      a0, s0, $zero              # a0 = 00000000
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    sw      t2, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x38FD          # a0 = 000038FD
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a1, %hi(func_80AC0208)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80AC0208) # a1 = 80AC0208
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ABE170
    swc1    $f4, 0x0158(s0)            # 00000158
lbl_80AC067C:
    lw      $ra, 0x0024($sp)
lbl_80AC0680:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AC0690:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x0590             # a0 = 06010590
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f4                   # $f4 = 32768.00
    cvt.s.w $f8, $f6
    lwc1    $f16, 0x0154(s0)           # 00000154
    div.s   $f10, $f4, $f8
    mul.s   $f0, $f16, $f10
    trunc.w.s $f18, $f0
    mfc1    a0, $f18
    nop
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    swc1    $f0, 0x0068(s0)            # 00000068
    lw      a1, 0x0024($sp)
    jal     func_80ABEF18
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80AC0748
    lw      $ra, 0x001C($sp)
    lh      t7, 0x0208(s0)             # 00000208
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t7, $zero, lbl_80AC0748
    lw      $ra, 0x001C($sp)
    jal     func_80ABE9EC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4930             # a0 = 06004930
    mtc1    v0, $f6                    # $f6 = 0.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     a1, %hi(func_80AC031C)     # a1 = 80AC0000
    cvt.s.w $f4, $f6
    addiu   a1, a1, %lo(func_80AC031C) # a1 = 80AC031C
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f8, 0x0068(s0)            # 00000068
    jal     func_80ABE170
    swc1    $f4, 0x0154(s0)            # 00000154
    lw      $ra, 0x001C($sp)
lbl_80AC0748:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80AC0758:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B1C(t6)            # 8011B4E4
    andi    t7, t6, 0x0800             # t7 = 00000000
    beq     t7, $zero, lbl_80AC0798
    nop
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_80ABE9EC
    sw      a0, 0x0018($sp)
    lui     a1, %hi(func_80AC0690)     # a1 = 80AC0000
    lw      a0, 0x0018($sp)
    jal     func_80ABE170
    addiu   a1, a1, %lo(func_80AC0690) # a1 = 80AC0690
    beq     $zero, $zero, lbl_80AC07A4
    lw      $ra, 0x0014($sp)
lbl_80AC0798:
    jal     func_80AC031C
    nop
    lw      $ra, 0x0014($sp)
lbl_80AC07A4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AC07B0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lw      a1, 0x0034($sp)
    jal     func_80022BB0
    sw      a0, 0x0030($sp)
    beq     v0, $zero, lbl_80AC07F0
    lw      a0, 0x0030($sp)
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    lui     a1, %hi(func_80AC08B8)     # a1 = 80AC0000
    sh      t6, 0x01D0(a0)             # 000001D0
    sw      $zero, 0x0118(a0)          # 00000118
    jal     func_80ABE170
    addiu   a1, a1, %lo(func_80AC08B8) # a1 = 80AC08B8
    beq     $zero, $zero, lbl_80AC08AC
    lw      $ra, 0x001C($sp)
lbl_80AC07F0:
    lh      v1, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0090         # $at = 00000090
    sh      $zero, 0x01FC(a0)          # 000001FC
    andi    v1, v1, 0x00F0             # v1 = 00000000
    bne     v1, $at, lbl_80AC086C
    lui     t7, 0x8010                 # t7 = 80100000
    lbu     t7, -0x709F(t7)            # 800F8F61
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   $at, $zero, 0x0037         # $at = 00000037
    addu    v0, v0, t7
    lbu     v0, -0x59BC(v0)            # 8011A644
    addiu   t8, $zero, 0x0057          # t8 = 00000057
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    bne     v0, $at, lbl_80AC084C
    lui     t0, 0x8010                 # t0 = 80100000
    sw      t8, 0x0024($sp)
    sh      t9, 0x01FC(a0)             # 000001FC
    lbu     t0, -0x709F(t0)            # 800F8F61
    lh      v1, 0x001C(a0)             # 0000001C
    lui     v0, 0x8012                 # v0 = 80120000
    addu    v0, v0, t0
    lbu     v0, -0x59BC(v0)            # 8011A644
    andi    v1, v1, 0x00F0             # v1 = 00000000
lbl_80AC084C:
    addiu   $at, $zero, 0x0036         # $at = 00000036
    bne     v0, $at, lbl_80AC085C
    addiu   t1, $zero, 0x0026          # t1 = 00000026
    sw      t1, 0x0024($sp)
lbl_80AC085C:
    addiu   $at, $zero, 0x0033         # $at = 00000033
    bne     v0, $at, lbl_80AC086C
    addiu   t2, $zero, 0x0023          # t2 = 00000023
    sw      t2, 0x0024($sp)
lbl_80AC086C:
    bne     v1, $zero, lbl_80AC087C
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   t3, $zero, 0x002C          # t3 = 0000002C
    sw      t3, 0x0024($sp)
lbl_80AC087C:
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f0, 0x0094(a0)            # 00000094
    lwc1    $f4, 0x0090(a0)            # 00000090
    lw      a1, 0x0034($sp)
    abs.s   $f0, $f0
    add.s   $f2, $f4, $f12
    lw      a2, 0x0024($sp)
    add.s   $f6, $f0, $f12
    mfc1    a3, $f2
    jal     func_80022BD4
    swc1    $f6, 0x0010($sp)
    lw      $ra, 0x001C($sp)
lbl_80AC08AC:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80AC08B8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x01D0(s0)             # 000001D0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $at, lbl_80AC098C
    lui     a1, %hi(func_80AC031C)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80AC031C) # a1 = 80AC031C
    jal     func_80ABE170
    sw      a2, 0x0024($sp)
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0090         # $at = 00000090
    lw      a2, 0x0024($sp)
    andi    t8, t7, 0x00F0             # t8 = 00000000
    beql    t8, $at, lbl_80AC0910
    lh      t9, 0x01FC(s0)             # 000001FC
    beq     $zero, $zero, lbl_80AC098C
    sh      $zero, 0x01D0(s0)          # 000001D0
    lh      t9, 0x01FC(s0)             # 000001FC
lbl_80AC0910:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    beq     t9, $zero, lbl_80AC092C
    lui     t1, 0x8010                 # t1 = 80100000
    sh      $zero, 0x01D0(s0)          # 000001D0
    beq     $zero, $zero, lbl_80AC098C
    sb      t0, -0x59F2($at)           # 8011A60E
lbl_80AC092C:
    lbu     t1, -0x709F(t1)            # 800F8F61
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   $at, $zero, 0x0034         # $at = 00000034
    addu    v0, v0, t1
    lbu     v0, -0x59BC(v0)            # 8011A644
    addiu   t2, $zero, 0x3058          # t2 = 00003058
    andi    a1, t2, 0xFFFF             # a1 = 00003058
    bne     v0, $at, lbl_80AC0964
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800DCE80
    sh      t2, 0x010E(s0)             # 0000010E
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    beq     $zero, $zero, lbl_80AC098C
    sh      t3, 0x01D0(s0)             # 000001D0
lbl_80AC0964:
    addiu   $at, $zero, 0x0037         # $at = 00000037
    bne     v0, $at, lbl_80AC098C
    addiu   t4, $zero, 0x305C          # t4 = 0000305C
    sh      t4, 0x010E(s0)             # 0000010E
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800DCE80
    andi    a1, t4, 0xFFFF             # a1 = 0000305C
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    jal     func_80063414
    sh      t5, 0x01D0(s0)             # 000001D0
lbl_80AC098C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80AC09A0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x020E(a2)             # 0000020E
    addiu   t7, $zero, 0x305A          # t7 = 0000305A
    or      a0, a3, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80AC09CC
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80AC09D4
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80AC09CC:
    sh      t6, 0x020E(a2)             # 0000020E
    lh      v1, 0x020E(a2)             # 0000020E
lbl_80AC09D4:
    bne     v1, $zero, lbl_80AC0A00
    andi    a1, t7, 0xFFFF             # a1 = 0000305A
    sh      t7, 0x010E(a2)             # 0000010E
    jal     func_800DCE80
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     a1, %hi(func_80AC0A10)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80AC0A10) # a1 = 80AC0A10
    jal     func_80ABE170
    sh      t8, 0x01D0(a0)             # 000001D0
lbl_80AC0A00:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AC0A10:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x01D0(s0)             # 000001D0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t6, $at, lbl_80AC0A84
    lw      $ra, 0x001C($sp)
    jal     func_80ABE9EC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4930             # a0 = 06004930
    mtc1    v0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0154(s0)            # 00000154
    jal     func_800D6218
    lw      a0, 0x0024($sp)
    lui     a1, %hi(func_80AC07B0)     # a1 = 80AC0000
    addiu   a1, a1, %lo(func_80AC07B0) # a1 = 80AC07B0
    jal     func_80ABE170
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AC07B0
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
lbl_80AC0A84:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80AC0A94:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    addiu   a2, s0, 0x0184             # a2 = 00000184
    or      a1, a2, $zero              # a1 = 00000184
    sw      a2, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)
    addu    a1, s1, $at
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0180(s0)             # 00000180
    lui     t6, %hi(func_80AC031C)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC031C) # t6 = 80AC031C
    beq     t6, v0, lbl_80AC0B08
    lui     t7, %hi(func_80ABFE44)     # t7 = 80AC0000
    addiu   t7, t7, %lo(func_80ABFE44) # t7 = 80ABFE44
    beq     t7, v0, lbl_80AC0B08
    lui     t8, %hi(func_80AC0758)     # t8 = 80AC0000
    addiu   t8, t8, %lo(func_80AC0758) # t8 = 80AC0758
    bne     t8, v0, lbl_80AC0B1C
lbl_80AC0B08:
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0210             # a1 = 00000210
    addiu   a2, s0, 0x0234             # a2 = 00000234
    jal     func_80027D30
    addiu   a3, $zero, 0x0012          # a3 = 00000012
lbl_80AC0B1C:
    jal     func_80ABEE8C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x01D0(s0)             # 000001D0
    bnel    t9, $zero, lbl_80AC0B3C
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80AC0B3C:
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sw      t0, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    jal     func_80ABECF8
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ABF524
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ABEC74
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80AC0BA4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    lui     t7, %hi(var_80AC1734)      # t7 = 80AC0000
    addiu   t7, t7, %lo(var_80AC1734)  # t7 = 80AC1734
    lw      t9, 0x0000(t7)             # 80AC1734
    addiu   t6, $sp, 0x0034            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80AC1738
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80AC173C
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t0, 0x0044($sp)
    jal     func_800AA6EC
    lw      s0, 0x0000(t0)             # 00000000
    lw      t1, 0x0044($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0044($sp)
    lw      a0, 0x0000(t4)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0028($sp)
    lw      a3, 0x0028($sp)
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0xBD80             # t7 = 0600BD80
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      a1, 0x0040($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
    jal     func_800AA724
    nop
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80AC0C70:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    lui     t7, %hi(var_80AC1740)      # t7 = 80AC0000
    addiu   t7, t7, %lo(var_80AC1740)  # t7 = 80AC1740
    lw      t9, 0x0000(t7)             # 80AC1740
    addiu   t6, $sp, 0x0034            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80AC1744
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80AC1748
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t0, 0x0044($sp)
    jal     func_800AA6EC
    lw      s0, 0x0000(t0)             # 00000000
    lw      t1, 0x0044($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t1)             # 00000000
    lw      v0, 0x0040($sp)
    lw      t2, 0x0044($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    lwc1    $f4, 0x0068(v0)            # 00000068
    lw      t3, 0x009C(t2)             # 0000009C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    trunc.w.s $f6, $f4
    lh      a2, 0x00B8(v0)             # 000000B8
    mfc1    t5, $f6
    nop
    sll     t6, t5, 16
    sra     t7, t6, 16
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  2
    subu    t8, t8, t7
    sll     t8, t8,  4
    subu    t8, t8, t7
    sll     t8, t8,  3
    multu   t3, t8
    mflo    a0
    sll     a0, a0, 16
    jal     func_800AAF00
    sra     a0, a0, 16
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t1, 0x0044($sp)
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0028($sp)
    lw      a3, 0x0028($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0x0601                 # t5 = 06010000
    addiu   t5, t5, 0xC140             # t5 = 0600C140
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      a1, 0x0040($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
    jal     func_800AA724
    nop
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80AC0D9C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bnel    s0, $at, lbl_80AC0E78
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0x452F                # $at = 452F0000
    mtc1    $at, $f12                  # $f12 = 2800.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t7, 0x004C($sp)
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    lwl     t9, 0x01D8(t7)             # 000001D8
    lwr     t9, 0x01DB(t7)             # 000001DB
    mtc1    $at, $f8                   # $f8 = 32768.00
    lui     $at, %hi(var_80AC1D94)     # $at = 80AC0000
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lhu     t9, 0x01DC(t7)             # 000001DC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      t9, 0x0004(t6)             # FFFFFFF8
    lh      t0, 0x002E($sp)
    lwc1    $f16, %lo(var_80AC1D94)($at)
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AA9E0
    nop
    lh      t1, 0x002C($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t1, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80AC1D98)     # $at = 80AC0000
    lwc1    $f10, %lo(var_80AC1D98)($at)
    cvt.s.w $f4, $f18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AAD4C
    nop
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0xC52F                # $at = C52F0000
    mtc1    $at, $f12                  # $f12 = -2800.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   $at, $zero, 0x000A         # $at = 0000000A
lbl_80AC0E78:
    bne     s0, $at, lbl_80AC0EFC
    lw      t3, 0x004C($sp)
    lwl     t5, 0x01DE(t3)             # 000001DE
    lwr     t5, 0x01E1(t3)             # 000001E1
    addiu   t2, $sp, 0x002C            # t2 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    sw      t5, 0x0000(t2)             # FFFFFFF4
    lhu     t5, 0x01E2(t3)             # 000001E2
    mtc1    $at, $f4                   # $f4 = 32768.00
    lui     $at, %hi(var_80AC1D9C)     # $at = 80AC0000
    sh      t5, 0x0004(t2)             # FFFFFFF8
    lh      t6, 0x002E($sp)
    lwc1    $f8, %lo(var_80AC1D9C)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    div.s   $f6, $f18, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lh      t7, 0x002C($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t7, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80AC1DA0)     # $at = 80AC0000
    lwc1    $f6, %lo(var_80AC1DA0)($at)
    cvt.s.w $f16, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AA9E0
    nop
lbl_80AC0EFC:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     s0, $at, lbl_80AC0F18
    lw      t8, 0x004C($sp)
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     s0, $at, lbl_80AC0F18
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     s0, $at, lbl_80AC0FA0
lbl_80AC0F18:
    sll     t9, s0,  1
    addu    v1, t8, t9
    lh      a0, 0x0210(v1)             # 00000210
    jal     func_800636C4              # sins?
    sw      v1, 0x0024($sp)
    lw      v0, 0x0048($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lh      t0, 0x0002(v0)             # 00000002
    lw      v1, 0x0024($sp)
    mul.s   $f18, $f0, $f16
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f4, $f10, $f18
    trunc.w.s $f6, $f4
    mfc1    t2, $f6
    nop
    sh      t2, 0x0002(v0)             # 00000002
    jal     func_80063684              # coss?
    lh      a0, 0x0234(v1)             # 00000234
    lw      v0, 0x0048($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lh      t3, 0x0004(v0)             # 00000004
    mul.s   $f18, $f0, $f10
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t5, $f6
    nop
    sh      t5, 0x0004(v0)             # 00000004
lbl_80AC0FA0:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80AC0FB8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a0, 0x0028($sp)
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF0
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lui     t6, %hi(var_80AC174C)      # t6 = 80AC0000
    addiu   t6, t6, %lo(var_80AC174C)  # t6 = 80AC174C
    lw      t8, 0x0000(t6)             # 80AC174C
    addiu   $at, $zero, 0x0011         # $at = 00000011
    sw      t8, 0x0000(a0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80AC1750
    sw      t7, 0x0004(a0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80AC1754
    bne     a1, $at, lbl_80AC1004
    sw      t8, 0x0008(a0)             # FFFFFFF8
    lw      a1, 0x0038($sp)
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80AC1004:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AC1014:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lw      t6, 0x0000(s1)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AC1258
    sw      t6, 0x0030($sp)
    jal     func_800AA6EC
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AC1364
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800AA724
    nop
    lw      v0, 0x0180(s0)             # 00000180
    lui     t7, %hi(func_80ABFE54)     # t7 = 80AC0000
    addiu   t7, t7, %lo(func_80ABFE54) # t7 = 80ABFE54
    bne     t7, v0, lbl_80AC1080
    lui     t8, %hi(func_80ABFD4C)     # t8 = 80AC0000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AC0BA4
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80AC11A4
    lw      $ra, 0x002C($sp)
lbl_80AC1080:
    addiu   t8, t8, %lo(func_80ABFD4C) # t8 = FFFFFD4C
    beq     t8, v0, lbl_80AC10A8
    lui     v1, %hi(func_80ABFAE4)     # v1 = 80AC0000
    addiu   v1, v1, %lo(func_80ABFAE4) # v1 = 80ABFAE4
    beq     v1, v0, lbl_80AC10A8
    lui     t9, %hi(func_80ABFB28)     # t9 = 80AC0000
    addiu   t9, t9, %lo(func_80ABFB28) # t9 = 80ABFB28
    beql    t9, v0, lbl_80AC10AC
    or      a0, s0, $zero              # a0 = 00000000
    bne     v1, v0, lbl_80AC10BC
lbl_80AC10A8:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AC10AC:
    jal     func_80AC0C70
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80AC11A4
    lw      $ra, 0x002C($sp)
lbl_80AC10BC:
    jal     func_8007E56C
    lw      a0, 0x0000(s1)             # 00000000
    lui     t3, 0x8012                 # t3 = 80120000
    lui     t4, 0x00FF                 # t4 = 00FF0000
    ori     t4, t4, 0xFFFF             # t4 = 00FFFFFF
    addiu   t3, t3, 0x0C38             # t3 = 80120C38
    lui     t5, 0x8000                 # t5 = 80000000
    lw      $ra, 0x0030($sp)
    lw      v0, 0x02C0($ra)            # 000002C0
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0xCE80             # t0 = 0600CE80
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0($ra)            # 000002C0
    sll     t8, t0,  4
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    srl     t9, t8, 28
    sll     t6, t9,  2
    sw      t7, 0x0000(v0)             # 00000000
    addu    t7, t3, t6
    lw      t8, 0x0000(t7)             # DB060020
    and     t9, t0, t4
    lui     t2, 0x0601                 # t2 = 06010000
    addu    t6, t8, t9
    addu    t7, t6, t5
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0($ra)            # 000002C0
    addiu   t2, t2, 0xDE80             # t2 = 0600DE80
    sll     t6, t2,  4
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0($ra)            # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    srl     t7, t6, 28
    sll     t8, t7,  2
    sw      t9, 0x0000(v0)             # 00000000
    addu    t9, t3, t8
    lw      t6, 0x0000(t9)             # DB060024
    and     t7, t2, t4
    or      a0, s1, $zero              # a0 = 00000000
    addu    t8, t6, t7
    addu    t9, t8, t5
    sw      t9, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t6, %hi(func_80AC0D9C)     # t6 = 80AC0000
    lui     t7, %hi(func_80AC0FB8)     # t7 = 80AC0000
    addiu   t7, t7, %lo(func_80AC0FB8) # t7 = 80AC0FB8
    addiu   t6, t6, %lo(func_80AC0D9C) # t6 = 80AC0D9C
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    jal     func_80089D8C
    sw      s0, 0x0018($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AC1364
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
lbl_80AC11A4:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80AC11B4:
    addiu   v0, a0, 0x0258             # v0 = 00000258
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80AC11C0:
    lbu     t6, 0x0000(v0)             # 00000258
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    beq     a0, t6, lbl_80AC1244
    sra     v1, v1, 16
    lwc1    $f4, 0x0014($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    swc1    $f4, 0x0004(v0)            # 0000025C
    lwc1    $f6, 0x0018($sp)
    swc1    $f6, 0x0008(v0)            # 00000260
    lbu     t8, 0x0013($sp)
    sb      t9, 0x0000(v0)             # 00000258
    sb      t8, 0x0001(v0)             # 00000259
    sb      t8, 0x0002(v0)             # 0000025A
    lw      t1, 0x0000(a1)             # 00000000
    sw      t1, 0x0014(v0)             # 0000026C
    lw      t0, 0x0004(a1)             # 00000004
    sw      t0, 0x0018(v0)             # 00000270
    lw      t1, 0x0008(a1)             # 00000008
    sw      t1, 0x001C(v0)             # 00000274
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x002C(v0)             # 00000284
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x0030(v0)             # 00000288
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0034(v0)             # 0000028C
    lw      t5, 0x0000(a2)             # 00000000
    sw      t5, 0x0020(v0)             # 00000278
    lw      t4, 0x0004(a2)             # 00000004
    sw      t4, 0x0024(v0)             # 0000027C
    lw      t5, 0x0008(a2)             # 00000008
    jr      $ra
    sw      t5, 0x0028(v0)             # 00000280
lbl_80AC1244:
    slti    $at, v1, 0x0014
    bne     $at, $zero, lbl_80AC11C0
    addiu   v0, v0, 0x0038             # v0 = 00000290
    jr      $ra
    nop


func_80AC1258:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    lui     $at, %hi(var_80AC1DA4)     # $at = 80AC0000
    lwc1    $f22, %lo(var_80AC1DA4)($at)
    lui     $at, %hi(var_80AC1DA8)     # $at = 80AC0000
    addiu   s0, a0, 0x0258             # s0 = 00000258
    lwc1    $f20, %lo(var_80AC1DA8)($at)
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80AC1288:
    lbu     t6, 0x0000(s0)             # 00000258
    beql    t6, $zero, lbl_80AC1334
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lbu     t7, 0x0001(s0)             # 00000259
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    andi    t9, t8, 0x00FF             # t9 = 000000FF
    bne     t9, $zero, lbl_80AC12AC
    sb      t8, 0x0001(s0)             # 00000259
    sb      $zero, 0x0000(s0)          # 00000258
lbl_80AC12AC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f20
    sub.s   $f6, $f4, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x002C(s0)            # 00000284
    lwc1    $f12, 0x0020(s0)           # 00000278
    lwc1    $f10, 0x0014(s0)           # 0000026C
    mul.s   $f8, $f0, $f20
    lwc1    $f14, 0x0024(s0)           # 0000027C
    add.s   $f18, $f10, $f12
    lwc1    $f4, 0x0018(s0)            # 00000270
    lwc1    $f16, 0x0028(s0)           # 00000280
    swc1    $f18, 0x0014(s0)           # 0000026C
    lwc1    $f18, 0x002C(s0)           # 00000284
    add.s   $f6, $f4, $f14
    sub.s   $f2, $f8, $f22
    lwc1    $f8, 0x001C(s0)            # 00000274
    swc1    $f6, 0x0018(s0)            # 00000270
    add.s   $f4, $f12, $f18
    lwc1    $f6, 0x0030(s0)            # 00000288
    lwc1    $f18, 0x0004(s0)           # 0000025C
    add.s   $f10, $f8, $f16
    swc1    $f4, 0x0020(s0)            # 00000278
    lwc1    $f4, 0x0008(s0)            # 00000260
    add.s   $f8, $f14, $f6
    swc1    $f10, 0x001C(s0)           # 00000274
    swc1    $f2, 0x0034(s0)            # 0000028C
    add.s   $f10, $f16, $f2
    swc1    $f8, 0x0024(s0)            # 0000027C
    add.s   $f6, $f18, $f4
    swc1    $f10, 0x0028(s0)           # 00000280
    swc1    $f6, 0x0004(s0)            # 0000025C
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80AC1334:
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0014
    bne     $at, $zero, lbl_80AC1288
    addiu   s0, s0, 0x0038             # s0 = 00000290
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80AC1364:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s7, 0x004C($sp)
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   s2, a2, 0x0258             # s2 = 00000258
    lw      a0, 0x0000(s7)             # 00000000
    or      s8, $zero, $zero           # s8 = 00000000
    jal     func_8007E2C0
    or      s1, a0, $zero              # s1 = 00000000
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f24                  # $f24 = 8.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f20                  # $f20 = 255.00
    or      s5, $zero, $zero           # s5 = 00000000
lbl_80AC13D4:
    lbu     t6, 0x0000(s2)             # 00000258
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    beq     t6, $zero, lbl_80AC1600
    addu    s4, s7, $at
    lui     s6, 0x0601                 # s6 = 06010000
    bne     s8, $zero, lbl_80AC1440
    addiu   s6, s6, 0xFD50             # s6 = 0600FD50
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0xFD40             # s3 = 0600FD40
    lw      a0, 0x02D0(s1)             # 000002D0
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007DFBC
    addiu   s8, $zero, 0x0001          # s8 = 00000001
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(v0)             # 00000000
    sw      s3, 0x0004(v0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x643C                 # t1 = 643C0000
    ori     t1, t1, 0x1400             # t1 = 643C1400
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    lui     t0, 0xFB00                 # t0 = FB000000
    sw      t0, 0x0000(s0)             # 00000000
    sw      t1, 0x0004(s0)             # 00000004
lbl_80AC1440:
    lbu     t2, 0x0001(s2)             # 00000259
    lui     $at, 0x4F80                # $at = 4F800000
    lui     t6, 0xFA00                 # t6 = FA000000
    mtc1    t2, $f4                    # $f4 = 0.00
    or      a3, $zero, $zero           # a3 = 00000000
    bgez    t2, lbl_80AC1468
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80AC1468:
    lbu     t3, 0x0002(s2)             # 0000025A
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t3, $f10                   # $f10 = 0.00
    bgez    t3, lbl_80AC1488
    cvt.s.w $f16, $f10
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18
lbl_80AC1488:
    div.s   $f4, $f20, $f16
    lui     $at, 0xAA82                # $at = AA820000
    ori     $at, $at, 0x5A00           # $at = AA825A00
    mul.s   $f8, $f6, $f4
    trunc.w.s $f10, $f8
    mfc1    a0, $f10
    nop
    sll     a0, a0, 16
    sra     a0, a0, 16
    lw      s0, 0x02D0(s1)             # 000002D0
    andi    t7, a0, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = AA825A00
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xE700                 # t0 = E7000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    lwc1    $f12, 0x0014(s2)           # 0000026C
    lwc1    $f14, 0x0018(s2)           # 00000270
    jal     func_800AA7F4
    lw      a2, 0x001C(s2)             # 00000274
    jal     func_800ABE54
    or      a0, s4, $zero              # a0 = 00000000
    lwc1    $f12, 0x0004(s2)           # 0000025C
    mfc1    a2, $f22
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s3, 0x0008             # t1 = 0600FD48
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s3)             # 0600FD40
    jal     func_800AB900
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s3)             # 0600FD44
    lbu     t3, 0x0001(s2)             # 00000259
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    mtc1    t3, $f18                   # $f18 = 0.00
    lui     a0, %hi(var_80AC1758)      # a0 = 80AC0000
    bgez    t3, lbl_80AC155C
    cvt.s.w $f16, $f18
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f16, $f16, $f6
lbl_80AC155C:
    lbu     t4, 0x0002(s2)             # 0000025A
    lui     $at, 0x4F80                # $at = 4F800000
    lui     t3, 0x8012                 # t3 = 80120000
    mtc1    t4, $f4                    # $f4 = 0.00
    bgez    t4, lbl_80AC1580
    cvt.s.w $f8, $f4
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_80AC1580:
    div.s   $f18, $f24, $f8
    mul.s   $f6, $f16, $f18
    trunc.w.s $f4, $f6
    mfc1    a2, $f4
    nop
    sll     a2, a2, 16
    sra     a2, a2, 16
    lw      s0, 0x02D0(s1)             # 000002D0
    sll     t8, a2,  2
    addu    a0, a0, t8
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, %lo(var_80AC1758)(a0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t0, a0,  4
    srl     t1, t0, 28
    sll     t2, t1,  2
    addu    t3, t3, t2
    lw      t3, 0x0C38(t3)             # 80120C38
    and     t9, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t9, t3
    addu    t5, t4, $at
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
lbl_80AC1600:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16
    sra     s5, s5, 16
    slti    $at, s5, 0x0014
    bne     $at, $zero, lbl_80AC13D4
    addiu   s2, s2, 0x0038             # s2 = 00000290
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
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
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80AC1660: .word 0x01520400, 0x00000039, 0x00C90000, 0x000006B8
.word func_80ABF754
.word func_80ABFAA4
.word func_80AC0A94
.word func_80AC1014
var_80AC1680: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0014002E, 0x00000000, 0x00000000
var_80AC16AC: .word 0x00000000, 0x00000000, 0xFF000000
var_80AC16B8: .word \
0x06004930, 0x00000000, 0x01000000, 0x00000000, \
0x06004930, 0x00000000, 0x01000000, 0xC1200000, \
0x060029A8, 0x3F800000, 0x01000000, 0xC1200000, \
0x06010590, 0x3F800000, 0x01000000, 0xC1200000
var_80AC16F8: .word 0x00000000, 0x00000000, 0x00000000
var_80AC1704: .word 0x00000000, 0x00000000, 0x00000000
var_80AC1710: .word 0x00000000, 0x3E99999A, 0x00000000
var_80AC171C: .word 0x00000000, 0x00000000, 0x00000000
var_80AC1728: .word 0x00000000, 0x00000000, 0x00000000
var_80AC1734: .word 0x00000000, 0x00000000, 0x00000000
var_80AC1740: .word 0x00000000, 0x00000000, 0x00000000
var_80AC174C: .word 0x44160000, 0x00000000, 0x00000000
var_80AC1758: .word \
0x04058EE0, 0x04058AE0, 0x040586E0, 0x040582E0, \
0x04057EE0, 0x04057AE0, 0x040576E0, 0x040572E0, \
0x00000000, 0x00000000

.section .rodata

var_80AC1780: .word var_80ABE25C
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word var_80ABE310
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word var_80ABE330
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word var_80ABE390
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word var_80ABE3D8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word var_80ABE420
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word var_80ABE468
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word lbl_80ABE4F8
.word var_80ABE4B0
var_80AC1944: .word lbl_80ABE918
.word lbl_80ABE918
.word var_80ABE578
.word lbl_80ABE918
.word var_80ABE6E8
.word var_80ABE890
.word var_80ABE900
.word lbl_80ABE918
.word lbl_80ABE918
.word lbl_80ABE918
var_80AC196C: .word var_80ABE65C
.word var_80ABE690
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word var_80ABE6AC
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word var_80ABE6D0
.word lbl_80ABE6E0
.word var_80ABE6D0
.word var_80ABE6D0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word var_80ABE6C8
.word var_80ABE6D0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word var_80ABE6D8
var_80AC1A10: .word var_80ABE5D0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word var_80ABE5EC
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word lbl_80ABE6E0
.word var_80ABE608
.word lbl_80ABE6E0
.word var_80ABE624
.word lbl_80ABE6E0
.word var_80ABE640
var_80AC1A54: .word func_80ABEC40
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word func_80ABEC40
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word func_80ABEC50
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word func_80ABEC40
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word func_80ABEC40
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word lbl_80ABEC60
.word func_80ABEC40
var_80AC1B98: .word 0x462AA000
var_80AC1B9C: .word 0x3C23D70A
var_80AC1BA0: .word 0x461C4000
var_80AC1BA4: .word 0x4099999A
var_80AC1BA8: .word 0x4622F983
var_80AC1BAC: .word 0x3C23D70A
var_80AC1BB0: .word 0x4099999A
var_80AC1BB4: .word var_80ABF8F0
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word var_80ABF978
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word var_80ABFA60
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word var_80ABFA00
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word var_80ABF9B8
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word var_80ABFA60
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word var_80ABFA60
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word lbl_80ABFA88
.word var_80ABFA60
var_80AC1D78: .word 0x49AFC800
var_80AC1D7C: .word 0x3DCCCCCD
var_80AC1D80: .word 0x3DCCCCCD
var_80AC1D84: .word 0x3DCCCCCD
var_80AC1D88: .word 0x3DCCCCCD
var_80AC1D8C: .word 0xBDCCCCCD
var_80AC1D90: .word 0x3DCCCCCD
var_80AC1D94: .word 0x40490FDB
var_80AC1D98: .word 0x40490FDB
var_80AC1D9C: .word 0x40490FDB
var_80AC1DA0: .word 0x40490FDB
var_80AC1DA4: .word 0x3E4CCCCD
var_80AC1DA8: .word 0x3ECCCCCD, 0x00000000

