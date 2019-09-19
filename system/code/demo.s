# "Demo (Cutscene)" part of the code file
#
# Handles the monitoring of cutscenes and the processing cutscene commands.
#
# General Documentation about Cutscenes:
# - https://wiki.cloudmodding.com/oot/Cutscenes
# - https://wiki.cloudmodding.com/oot/Entrance_Cutscenes
#
# Starts at VRAM: 80052310 / VROM: AC8270
#

.section .text
func_80052310:
    sw      a0, 0x0000($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      $zero, 0x0008(a1)          # 00000008
    swc1    $f4, 0x000C(a1)            # 0000000C
    jr      $ra
    nop


func_80052328:
    sw      a0, 0x0000($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x0008(a1)             # 00000008
    sw      $zero, 0x0024(a1)          # 00000024
    jr      $ra
    nop


func_80052340:
    sw      a0, 0x0000($sp)
    lbu     t6, 0x0008(a1)             # 00000008
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    beq     t6, $at, lbl_8005235C
    nop
    sb      t7, 0x0008(a1)             # 00000008
lbl_8005235C:
    jr      $ra
    nop


func_80052364:
# Uses Cutscene Struct + 0x08 to index jump table at 800EFCD8 if Cutscene Number < 0xFFF0
# A0 = Global Context
# A1 = Cutscene Struct ptr
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A28(t6)            # 8011A5D8
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    slt     $at, t6, $at
    beql    $at, $zero, lbl_800523A4
    lw      $ra, 0x0014($sp)
    lbu     t7, 0x0008(a1)             # 00000008
    lui     t9, 0x800F                 # t9 = 800F0000
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, -0x0328(t9)            # 800EFCD8
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
lbl_800523A4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800523B0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    lbu     v0, 0x1414(v1)             # 8011B9E4
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    beq     v0, $zero, lbl_800523EC
    nop
    lb      t6, 0x1E15(t6)             # 00011E15
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     t6, $at, lbl_800523EC
    nop
    sb      $zero, 0x1414(v1)          # 8011B9E4
    andi    v0, $zero, 0x00FF          # v0 = 00000000
lbl_800523EC:
    beql    v0, $zero, lbl_80052414
    lw      t0, 0x0008(v1)             # 8011A5D8
    lbu     t7, 0x0008(a1)             # 00000008
    ori     t8, $zero, 0xFFFD          # t8 = 0000FFFD
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    bnel    t7, $zero, lbl_80052414
    lw      t0, 0x0008(v1)             # 8011A5D8
    sw      t8, 0x0008(v1)             # 8011A5D8
    sb      t9, 0x1414(v1)             # 8011B9E4
    lw      t0, 0x0008(v1)             # 8011A5D8
lbl_80052414:
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    slt     $at, t0, $at
    bnel    $at, $zero, lbl_80052458
    lw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80056A94
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lui     t9, 0x800F                 # t9 = 800F0000
    lw      a0, 0x0018($sp)
    lbu     t1, 0x0008(a1)             # 00000008
    sll     t2, t1,  2
    addu    t9, t9, t2
    lw      t9, -0x0314(t9)            # 800EFCEC
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
lbl_80052458:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80052464:
# Related to 80052364
# Stores Global Context, Cutscene Struct ptrs on Stack
# A0 = Global Context
# A1 = Cutscene Struct ptr
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80052474:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    a2, $f12                   # $f12 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    mfc1    a1, $f12
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    jal     func_8006385C
    addiu   a0, a3, 0x000C             # a0 = 0000000C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800524AC:
# Related to 80052364
# A0 = Global Context
# A1 = Cutscene Struct ptr
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_80099620
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80052474
    lui     a2, 0x3F80                 # a2 = 3F800000
    beql    v0, $zero, lbl_80052500
    lw      $ra, 0x0014($sp)
    jal     func_800C75DC
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      t6, 0x001C($sp)
    lbu     t7, 0x0008(t6)             # 00000008
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x0008(t6)             # 00000008
    lw      $ra, 0x0014($sp)
lbl_80052500:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8005250C:
# Related to 80052364
# A0 = Global Context
# A1 = Cutscene Struct ptr
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80056908
    lw      a1, 0x001C($sp)
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_80099620
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80052474
    lui     a2, 0x3F80                 # a2 = 3F800000
    beql    v0, $zero, lbl_8005256C
    lw      $ra, 0x0014($sp)
    jal     func_800C75DC
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      t6, 0x001C($sp)
    lbu     t7, 0x0008(t6)             # 00000008
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x0008(t6)             # 00000008
    lw      $ra, 0x0014($sp)
lbl_8005256C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80052578:
# Cutscene command 0x03 (special execution)
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    lw      t6, 0x004C($sp)
    lw      t8, 0x0050($sp)
    lw      t1, 0x1C44(s0)             # 00001C44
    lhu     t7, 0x0010(t6)             # 00000010
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t7, 0x0038($sp)
    lhu     t9, 0x0002(t8)             # 00000002
    slt     $at, t7, t9
    bne     $at, $zero, lbl_80052D00
    sw      t9, 0x0030($sp)
    lhu     v1, 0x0004(t8)             # 00000004
    lhu     a1, 0x0032($sp)
    lhu     a2, 0x003A($sp)
    slt     $at, t7, v1
    bne     $at, $zero, lbl_800525D4
    addiu   a0, v1, 0xFFFF             # a0 = FFFFFFFF
    bne     t9, v1, lbl_80052D00
lbl_800525D4:
    andi    a0, a0, 0xFFFF             # a0 = 0000FFFF
    sb      v0, 0x003F($sp)
    jal     func_8005C690
    sw      t1, 0x0044($sp)
    lw      v1, 0x0050($sp)
    lw      a0, 0x004C($sp)
    lbu     v0, 0x003F($sp)
    lhu     t2, 0x0002(v1)             # 00000002
    lhu     a3, 0x0010(a0)             # 00000010
    lw      t1, 0x0044($sp)
    bnel    t2, a3, lbl_8005260C
    lhu     t3, 0x0000(v1)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lhu     t3, 0x0000(v1)             # 00000000
lbl_8005260C:
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    sltiu   $at, t4, 0x0023
    beq     $at, $zero, lbl_80052D00
    sll     t4, t4,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t4
    lw      t4, 0x72E0($at)            # 801072E0
    jr      t4
    nop
lbl_80052630:
    beq     v0, $zero, lbl_80052D00
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_800C7A78
    addiu   a2, $zero, 0x003F          # a2 = 0000003F
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800C7A78
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    b       lbl_80052D00
    sb      t5, 0x0B12($at)            # 00010B12
lbl_80052668:
    beq     v0, $zero, lbl_80052D00
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800C7A78
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006132C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    b       lbl_80052D00
    sb      v0, -0x4338($at)           # 8011BCC8
lbl_80052698:
    beq     v0, $zero, lbl_80052D00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80059840
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lw      t6, 0x0000(a0)             # 8011A5D0
    addiu   $at, $zero, 0x0053         # $at = 00000053
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t6, $at, lbl_80052D04
    lw      $ra, 0x002C($sp)
    jal     func_80059840
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    b       lbl_80052D04
    lw      $ra, 0x002C($sp)
lbl_800526D4:
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0
    lh      v0, 0x0AC4(v0)             # 00010AC4
    slti    $at, v0, 0x3200
    beq     $at, $zero, lbl_80052D00
    addiu   t7, v0, 0x0023             # t7 = 00010023
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_80052D00
    sh      t7, 0x0AC4($at)            # 00010AC4
lbl_800526FC:
    beq     v0, $zero, lbl_80052D00
    addiu   v1, $zero, 0x003C          # v1 = 0000003C
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addu    $at, $at, s0
    sb      v0, 0x0A3D($at)            # 00010A3D
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      v0, 0x0A3B($at)            # 00010A3B
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x0A3C($at)         # 00010A3C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      v1, 0x0A3E($at)            # 00010A3E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      v0, 0x0A45($at)            # 00010A45
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x0A43($at)         # 00010A43
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      v0, 0x0A44($at)            # 00010A44
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      v1, 0x0A48($at)            # 00010A48
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, s0
    lhu     t9, 0x0A48(t9)             # 00010A48
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_80052D00
    sh      t9, 0x0A46($at)            # 00010A46
lbl_80052784:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s0, $at
    lh      v1, 0x1D30(v0)             # 00001D31
    slti    $at, v1, 0x0080
    beq     $at, $zero, lbl_80052D00
    addiu   t8, v1, 0x0004             # t8 = 00000040
    b       lbl_80052D00
    sh      t8, 0x1D30(v0)             # 00001D31
lbl_800527A4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    b       lbl_80052D00
    sb      t2, 0x0B15($at)            # 00010B15
lbl_800527B8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80059840
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    b       lbl_80052D04
    lw      $ra, 0x002C($sp)
lbl_800527CC:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s0, $at
    lh      v1, 0x1D30(v0)             # 00001D30
    slti    $at, v1, 0x0672
    beq     $at, $zero, lbl_800527EC
    addiu   t3, v1, 0x0014             # t3 = 00000014
    sh      t3, 0x1D30(v0)             # 00001D30
    lhu     a3, 0x0010(a0)             # 00000010
lbl_800527EC:
    addiu   $at, $zero, 0x030F         # $at = 0000030F
    bnel    a3, $at, lbl_8005280C
    addiu   $at, $zero, 0x02CD         # $at = 000002CD
    jal     func_800646F0
    addiu   a0, $zero, 0x288E          # a0 = 0000288E
    b       lbl_80052D04
    lw      $ra, 0x002C($sp)
    addiu   $at, $zero, 0x02CD         # $at = 000002CD
lbl_8005280C:
    bnel    a3, $at, lbl_80052D04
    lw      $ra, 0x002C($sp)
    b       lbl_80052D00
    sh      $zero, 0x1D30(v0)          # 00001D30
lbl_8005281C:
    beql    v0, $zero, lbl_80052D04
    lw      $ra, 0x002C($sp)
    lbu     t4, 0x0008(a0)             # 00000008
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    beql    t4, $at, lbl_80052D04
    lw      $ra, 0x002C($sp)
    b       lbl_80052D00
    sb      t5, 0x0008(a0)             # 00000008
lbl_80052840:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s0, $at
    lh      v1, 0x1D32(v0)             # 00001D32
    addiu   a0, $zero, 0x286F          # a0 = 0000286F
    bnel    v1, $zero, lbl_8005286C
    slti    $at, v1, 0x00FF
    jal     func_800646F0
    sw      v0, 0x0038($sp)
    lw      v0, 0x0038($sp)
    lh      v1, 0x1D32(v0)             # 00001D32
    slti    $at, v1, 0x00FF
lbl_8005286C:
    beq     $at, $zero, lbl_80052D00
    addiu   t6, v1, 0x0005             # t6 = 00000005
    b       lbl_80052D00
    sh      t6, 0x1D32(v0)             # 00001D32
lbl_8005287C:
    beq     v0, $zero, lbl_80052D00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009A1B0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    b       lbl_80052D04
    lw      $ra, 0x002C($sp)
lbl_80052894:
    beq     v0, $zero, lbl_80052D00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a2, 0x01A0(t1)             # 000001A0
    addiu   t7, $zero, 0x0078          # t7 = 00000078
    addiu   t9, $zero, 0x0090          # t9 = 00000090
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sw      t2, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t7, 0x0010($sp)
    addiu   a1, s0, 0x1D4C             # a1 = 00001D4C
    jal     func_800207C4
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
    b       lbl_80052D04
    lw      $ra, 0x002C($sp)
lbl_800528D4:
    beql    v0, $zero, lbl_80052D04
    lw      $ra, 0x002C($sp)
    lh      t3, 0x07A0(s0)             # 000007A0
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    sll     t4, t3,  2
    addu    t5, s0, t4
    jal     func_8007D85C
    lw      a0, 0x0790(t5)             # 00000790
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBC56             # s0 = 8011BC56
    sh      v0, 0x0000(s0)             # 8011BC56
    lh      a0, 0x0000(s0)             # 8011BC56
    jal     func_8007D668
    addiu   a1, $zero, 0x7FFF          # a1 = 00007FFF
    lh      a0, 0x0000(s0)             # 8011BC56
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    lh      a0, 0x0000(s0)             # 8011BC56
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0320          # a1 = 00000320
    b       lbl_80052D04
    lw      $ra, 0x002C($sp)
lbl_80052938:
    beq     v0, $zero, lbl_80052D00
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBC56             # s0 = 8011BC56
    jal     func_8007D880
    lh      a0, 0x0000(s0)             # 8011BC56
    b       lbl_80052D04
    lw      $ra, 0x002C($sp)
lbl_80052954:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s0, $at
    lui     a0, 0x8012                 # a0 = 80120000
    sb      $zero, 0x0B12(v0)          # 00000B12
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    sb      t6, 0x0B01($at)            # 00010B01
    lhu     v1, 0x000C(a0)             # 8011A5DC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a2, $zero, $zero           # a2 = 00000000
    slti    $at, v1, 0x4AAB
    beq     $at, $zero, lbl_80052990
    addiu   t7, v1, 0x001E             # t7 = 0000001E
    sh      t7, 0x000C(a0)             # 8011A5DC
lbl_80052990:
    lbu     t9, 0x0B13(v0)             # 00000B13
    lui     $at, 0x800F                # $at = 800F0000
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    bnel    t9, $zero, lbl_80052D04
    lw      $ra, 0x002C($sp)
    jal     func_800C7A78
    sb      $zero, 0x1640($at)         # 800F1640
    b       lbl_80052D04
    lw      $ra, 0x002C($sp)
lbl_800529B4:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lhu     t8, 0x0EE0(a0)             # 8011B4B0
    ori     t2, t8, 0x0020             # t2 = 00000020
    b       lbl_80052D00
    sh      t2, 0x0EE0(a0)             # 8011B4B0
lbl_800529CC:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lhu     t3, 0x0EE0(a0)             # 8011B4B0
    ori     t4, t3, 0x0080             # t4 = 00000080
    b       lbl_80052D00
    sh      t4, 0x0EE0(a0)             # 8011B4B0
lbl_800529E4:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lhu     t5, 0x0EE0(a0)             # 8011B4B0
    ori     t6, t5, 0x0200             # t6 = 00000200
    b       lbl_80052D00
    sh      t6, 0x0EE0(a0)             # 8011B4B0
lbl_800529FC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xD160             # v0 = 8011D160
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    sb      v1, 0x0000(v0)             # 8011D160
    sb      v1, 0x0001(v0)             # 8011D161
    sb      v1, 0x0002(v0)             # 8011D162
    b       lbl_80052D00
    sb      v1, 0x0003(v0)             # 8011D163
lbl_80052A1C:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     v0, 0x8012                 # v0 = 80120000
    mul.s   $f6, $f4, $f0
    addiu   v0, v0, 0xD160             # v0 = 8011D160
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addiu   t7, $zero, 0x00B4          # t7 = 000000B4
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    sb      v1, 0x0000(v0)             # 8011D160
    sb      t7, 0x0001(v0)             # 8011D161
    cfc1    t8, $f31
    ctc1    t2, $f31
    sb      t9, 0x0002(v0)             # 8011D162
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f8, $f6
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80052AB8
    mfc1    t2, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t2, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80052AAC
    nop
    mfc1    t2, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80052AC4
    or      t2, t2, $at                # t2 = 80000000
lbl_80052AAC:
    b       lbl_80052AC4
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f8
lbl_80052AB8:
    nop
    bltz    t2, lbl_80052AAC
    nop
lbl_80052AC4:
    ctc1    t8, $f31
    lui     $at, 0x8012                # $at = 80120000
    b       lbl_80052D00
    sb      t2, -0x2E9D($at)           # 8011D163
lbl_80052AD4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_80052D00
    sw      $zero, 0x1CC8($at)         # 00011CC8
lbl_80052AE4:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lhu     t3, 0x000C(a0)             # 8011A5DC
    ori     $at, $zero, 0xCAAB         # $at = 0000CAAB
    ori     t6, $zero, 0xCAAA          # t6 = 0000CAAA
    addiu   t4, t3, 0x001E             # t4 = 0000001E
    andi    t5, t4, 0xFFFF             # t5 = 0000001E
    slt     $at, t5, $at
    bne     $at, $zero, lbl_80052D00
    sh      t4, 0x000C(a0)             # 8011A5DC
    b       lbl_80052D00
    sh      t6, 0x000C(a0)             # 8011A5DC
lbl_80052B14:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lhu     v1, 0x000C(a0)             # 8011A5DC
    slti    $at, v1, 0x3000
    bne     $at, $zero, lbl_80052B30
    slti    $at, v1, 0x4555
    bne     $at, $zero, lbl_80052D00
lbl_80052B30:
    slti    $at, v1, 0x4555
    bne     $at, $zero, lbl_80052B58
    ori     $at, $zero, 0xAAAB         # $at = 0000AAAB
    slt     $at, v1, $at
    beq     $at, $zero, lbl_80052B58
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_80052D00
    sb      v0, 0x0AE3($at)            # 00010AE3
lbl_80052B58:
    ori     $at, $zero, 0xAAAB         # $at = 0000AAAB
    slt     $at, v1, $at
    bne     $at, $zero, lbl_80052B88
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    ori     $at, $zero, 0xC556         # $at = 0000C556
    slt     $at, v1, $at
    beq     $at, $zero, lbl_80052B88
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_80052D00
    sb      t7, 0x0AE3($at)            # 00010AE3
lbl_80052B88:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_80052D00
    sb      t9, 0x0AE3($at)            # 00010AE3
lbl_80052B98:
    lw      t8, 0x009C(s0)             # 8011BCF2
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s0, $at
    andi    t2, t8, 0x0008             # t2 = 00000000
    beql    t2, $zero, lbl_80052BEC
    lh      v1, 0x0AB0(v0)             # 00000AB1
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s0, $at
    lh      v1, 0x0AB0(v0)             # 00000AB1
    slti    $at, v1, 0x0028
    beq     $at, $zero, lbl_80052D00
    addiu   t3, v1, 0x0002             # t3 = 00000101
    lh      t4, 0x0AB8(v0)             # 00000AB9
    lh      t6, 0x0ABA(v0)             # 00000ABB
    sh      t3, 0x0AB0(v0)             # 00000AB1
    addiu   t5, t4, 0xFFFD             # t5 = 0000001B
    addiu   t7, t6, 0xFFFD             # t7 = 0000CAA7
    sh      t5, 0x0AB8(v0)             # 00000AB9
    b       lbl_80052D00
    sh      t7, 0x0ABA(v0)             # 00000ABB
    lh      v1, 0x0AB0(v0)             # 00000AB1
lbl_80052BEC:
    slti    $at, v1, 0x0003
    bne     $at, $zero, lbl_80052D00
    addiu   t9, v1, 0xFFFE             # t9 = 000000FD
    lh      t8, 0x0AB8(v0)             # 00000AB9
    lh      t3, 0x0ABA(v0)             # 00000ABB
    sh      t9, 0x0AB0(v0)             # 00000AB1
    addiu   t2, t8, 0x0003             # t2 = 00000003
    addiu   t4, t3, 0x0003             # t4 = 00000104
    sh      t2, 0x0AB8(v0)             # 00000AB9
    b       lbl_80052D00
    sh      t4, 0x0ABA(v0)             # 00000ABB
lbl_80052C18:
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addu    $at, $at, s0
    b       lbl_80052D00
    sb      v0, 0x1DE9($at)            # 00011DE9
lbl_80052C2C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_80052D00
    sb      $zero, 0x1DE9($at)         # 00011DE9
lbl_80052C3C:
    or      a0, s0, $zero              # a0 = 8011BC56
    jal     func_80059840
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    b       lbl_80052D04
    lw      $ra, 0x002C($sp)
lbl_80052C50:
    or      a0, s0, $zero              # a0 = 8011BC56
    jal     func_80059840
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    b       lbl_80052D04
    lw      $ra, 0x002C($sp)
lbl_80052C64:
    beq     v0, $zero, lbl_80052C78
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addu    $at, $at, s0
    sb      v0, 0x0B0A($at)            # 00010B0A
lbl_80052C78:
    jal     func_80064738
    addiu   a0, $zero, 0x20C0          # a0 = 000020C0
    b       lbl_80052D04
    lw      $ra, 0x002C($sp)
lbl_80052C88:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    b       lbl_80052D00
    sh      t5, 0x1422(a0)             # 8011B9F2
lbl_80052C9C:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lw      t6, 0x0010(a0)             # 8011A5E0
    lui     t9, 0x800F                 # t9 = 800F0000
    lui     t3, 0x800F                 # t3 = 800F0000
    bne     t6, $zero, lbl_80052CCC
    nop
    lhu     t7, 0x000C(a0)             # 8011A5DC
    lhu     t9, 0x1650(t9)             # 800F1650
    subu    t8, t7, t9
    b       lbl_80052D00
    sh      t8, 0x000C(a0)             # 8011A5DC
lbl_80052CCC:
    lhu     t3, 0x1650(t3)             # 800F1650
    lhu     t2, 0x000C(a0)             # 8011A5DC
    sll     t4, t3,  1
    subu    t5, t2, t4
    b       lbl_80052D00
    sh      t5, 0x000C(a0)             # 8011A5DC
lbl_80052CE4:
    jal     func_800C3C5C
    nop
    lw      v1, 0x0050($sp)
    lw      a0, 0x004C($sp)
    lhu     t6, 0x0002(v1)             # 00000002
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0010(a0)             # 00000010
lbl_80052D00:
    lw      $ra, 0x002C($sp)
lbl_80052D04:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80052D14:
# Cutscene command 0x04 (lighting), parse action record
# A0 = Global Context
# A1 = Cutscene Struct
# A2 = ptr to 0x30 byte record
    lhu     t6, 0x0002(a2)             # 00000002
    lhu     t7, 0x0010(a1)             # 00000010
    bne     t6, t7, lbl_80052D4C
    nop
    lbu     t8, 0x0001(a2)             # 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sb      t9, 0x0AE3($at)            # 00010AE3
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    swc1    $f4, 0x0AFC($at)           # 00010AFC
lbl_80052D4C:
    jr      $ra
    nop


func_80052D54:
# Cutscene: Check if new song should play
# A0 = Global Context
# A1 = Cutscene Struct
# A2 = Data
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lhu     t6, 0x0002(a2)             # 00000002
    lhu     t7, 0x0010(a1)             # 00000010
    bnel    t6, t7, lbl_80052D84
    lw      $ra, 0x0014($sp)
    lbu     a0, 0x0001(a2)             # 00000001
    addiu   a0, a0, 0xFFFF             # a0 = FFFFFFFF
    jal     func_800C66B0
    andi    a0, a0, 0xFFFF             # a0 = 0000FFFF
    lw      $ra, 0x0014($sp)
lbl_80052D84:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80052D90:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lhu     t6, 0x0002(a2)             # 00000002
    lhu     t7, 0x0010(a1)             # 00000010
    bnel    t6, t7, lbl_80052DC0
    lw      $ra, 0x0014($sp)
    lbu     a0, 0x0001(a2)             # 00000001
    addiu   a0, a0, 0xFFFF             # a0 = FFFFFFFF
    jal     func_800C673C
    andi    a0, a0, 0xFFFF             # a0 = 0000FFFF
    lw      $ra, 0x0014($sp)
lbl_80052DC0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80052DCC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lhu     v0, 0x0002(a2)             # 00000002
    lhu     v1, 0x0010(a1)             # 00000010
    bnel    v0, v1, lbl_80052E40
    lw      $ra, 0x0014($sp)
    lhu     a0, 0x0004(a2)             # 00000004
    slt     $at, v1, a0
    beql    $at, $zero, lbl_80052E40
    lw      $ra, 0x0014($sp)
    lhu     t6, 0x0000(a2)             # 00000000
    subu    v1, a0, v0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t6, $at, lbl_80052E28
    andi    v1, v1, 0x00FF             # v1 = 00000000
    lui     $at, 0x1100                # $at = 11000000
    ori     $at, $at, 0x00FF           # $at = 110000FF
    sll     a0, v1, 16
    jal     func_800CAA70
    or      a0, a0, $at                # a0 = 110000FF
    b       lbl_80052E40
    lw      $ra, 0x0014($sp)
lbl_80052E28:
    lui     $at, 0x1000                # $at = 10000000
    ori     $at, $at, 0x00FF           # $at = 100000FF
    sll     a0, v1, 16
    jal     func_800CAA70
    or      a0, a0, $at                # a0 = 100000FF
    lw      $ra, 0x0014($sp)
lbl_80052E40:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80052E4C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    or      a0, a2, $zero              # a0 = 00000000
    sw      $ra, 0x0014($sp)
    lhu     t6, 0x0002(a0)             # 00000002
    lhu     t7, 0x0010(a1)             # 00000010
    bnel    t6, t7, lbl_80052E84
    lw      $ra, 0x0014($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    lbu     a1, 0x0006(a0)             # 00000006
    lbu     a2, 0x0007(a0)             # 00000007
    jal     func_800915CC
    lbu     a3, 0x0008(a0)             # 00000008
    lw      $ra, 0x0014($sp)
lbl_80052E84:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80052E90:
# Cutscene Command 0x8C
# A0 = Global Context
# A1 = Cutscene Struct
# A2 = Command Data ptr
    sw      a0, 0x0000($sp)
    lhu     t6, 0x0002(a2)             # 00000002
    lhu     t7, 0x0010(a1)             # 00000010
    lui     a1, 0x8012                 # a1 = 80120000
    bne     t6, t7, lbl_80052F2C
    nop
    lbu     t8, 0x0006(a2)             # 00000006
    lui     $at, 0x3CB4                # $at = 3CB40000
    mtc1    $at, $f0                   # $f0 = 0.02
    mtc1    t8, $f4                    # $f4 = 0.00
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    bgez    t8, lbl_80052ED4
    cvt.s.w $f6, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80052ED4:
    lbu     t0, 0x0007(a2)             # 00000007
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f10                  # $f10 = 60.00
    addiu   t1, t0, 0x0001             # t1 = 00000001
    mtc1    t1, $f8                    # $f8 = 0.00
    mul.s   $f16, $f6, $f10
    cvt.s.w $f6, $f8
    div.s   $f18, $f16, $f0
    div.s   $f10, $f6, $f0
    trunc.w.s $f4, $f18
    mfc1    v0, $f4
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    trunc.w.s $f16, $f10
    mfc1    v1, $f16
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    addu    a0, v0, v1
    sh      a0, 0x000C(a1)             # 8011A5DC
    sh      a0, 0x141A(a1)             # 8011B9EA
lbl_80052F2C:
    jr      $ra
    nop


func_80052F34:
# Cutscene Command 0x3E8.
# A0 = Global Context
# A1 = Cutscene Struct
# A2 = Command Data ptr
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    lw      v0, 0x135C(v1)             # 8011B92C
    lw      t6, 0x1C44(s0)             # 00001C44
    or      a3, $zero, $zero           # a3 = 00000000
    beq     v0, $zero, lbl_80053010
    sw      t6, 0x002C($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $at, lbl_80053014
    lw      t6, 0x0038($sp)
    lh      t7, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x0051         # $at = 00000051
    lw      t8, 0x0034($sp)
    beql    t7, $at, lbl_80053014
    lw      t6, 0x0038($sp)
    lhu     t9, 0x0010(t8)             # 00000010
    slti    $at, t9, 0x0015
    bnel    $at, $zero, lbl_80053014
    lw      t6, 0x0038($sp)
    lhu     v0, 0x0020(s0)             # 00000020
    ori     $at, $zero, 0x8000         # $at = 00008000
    andi    t0, v0, 0x8000             # t0 = 00000000
    beq     t0, $at, lbl_80052FC4
    andi    t1, v0, 0x4000             # t1 = 00000000
    addiu   $at, $zero, 0x4000         # $at = 00004000
    beq     t1, $at, lbl_80052FC4
    andi    t2, v0, 0x1000             # t2 = 00000000
    addiu   $at, $zero, 0x1000         # $at = 00001000
    bnel    t2, $at, lbl_80053014
    lw      t6, 0x0038($sp)
lbl_80052FC4:
    lw      t3, 0x1354(v1)             # 8011B924
    ori     $at, $zero, 0xFEDC         # $at = 0000FEDC
    lui     t4, 0x0001                 # t4 = 00010000
    beq     t3, $at, lbl_80053010
    addu    t4, t4, s0
    lb      t4, 0x1E15(t4)             # 00011E15
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    bne     t4, $zero, lbl_80053010
    addiu   a0, $zero, 0x4823          # a0 = 00004823
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    sw      t5, 0x0014($sp)
    sw      a3, 0x0010($sp)
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80053010:
    lw      t6, 0x0038($sp)
lbl_80053014:
    lw      t8, 0x0034($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lhu     t7, 0x0002(t6)             # 00000002
    lhu     t9, 0x0010(t8)             # 00000010
    lw      t0, 0x0034($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    beq     t7, t9, lbl_8005303C
    nop
    beql    a3, $zero, lbl_80054C40
    lw      $ra, 0x0024($sp)
lbl_8005303C:
    jal     func_800C75DC
    sb      a2, 0x0008(t0)             # 00000008
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t1, 0x135C(v1)             # 8011B92C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     t1, $zero, lbl_8005307C
    sb      a3, 0x1410(v1)             # 8011B9E0
    lw      t2, 0x0038($sp)
    lw      t4, 0x0034($sp)
    lhu     t3, 0x0002(t2)             # 00000002
    lhu     t5, 0x0010(t4)             # 00000010
    beql    t3, t5, lbl_80053080
    lw      t6, 0x0038($sp)
    sb      a3, 0x13E7(v1)             # 8011B9B7
lbl_8005307C:
    lw      t6, 0x0038($sp)
lbl_80053080:
    sw      $zero, 0x0008(v1)          # 8011A5D8
    lhu     t8, 0x0000(t6)             # 00000000
    addiu   t7, t8, 0xFFFF             # t7 = FFFFFFFF
    sltiu   $at, t7, 0x0077
    beq     $at, $zero, lbl_80054C3C
    sll     t7, t7,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t7
    lw      t7, 0x736C($at)            # 8010736C
    jr      t7
    nop
lbl_800530AC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x00A0          # t9 = 000000A0
    sh      t9, 0x1E1A($at)            # 00011E1A
    ori     t0, $zero, 0xFFF1          # t0 = 0000FFF1
    lui     $at, 0x0001                # $at = 00010000
    sw      t0, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_800530E8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x00A0          # t2 = 000000A0
    sh      t2, 0x1E1A($at)            # 00011E1A
    ori     t4, $zero, 0xFFF0          # t4 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    sw      t4, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    b       lbl_80054C3C
    sb      t5, 0x1E5E($at)            # 00011E5E
lbl_80053124:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0117          # t6 = 00000117
    sh      t6, 0x1E1A($at)            # 00011E1A
    ori     t8, $zero, 0xFFF1          # t8 = 0000FFF1
    lui     $at, 0x0001                # $at = 00010000
    sw      t8, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    b       lbl_80054C3C
    sb      t9, 0x1E5E($at)            # 00011E5E
lbl_80053160:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x013D          # t0 = 0000013D
    sh      t0, 0x1E1A($at)            # 00011E1A
    ori     t1, $zero, 0xFFF0          # t1 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    sw      t1, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    b       lbl_80054C3C
    sb      t4, 0x1E5E($at)            # 00011E5E
lbl_8005319C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x00EE          # t3 = 000000EE
    sh      t3, 0x1E1A($at)            # 00011E1A
    ori     t5, $zero, 0xFFF0          # t5 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    sw      t5, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    b       lbl_80054C3C
    sb      t8, 0x1E5E($at)            # 00011E5E
lbl_800531D8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x00A0          # t7 = 000000A0
    sh      t7, 0x1E1A($at)            # 00011E1A
    ori     t9, $zero, 0xFFF2          # t9 = 0000FFF2
    lui     $at, 0x0001                # $at = 00010000
    sw      t9, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sb      t0, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    b       lbl_80054C3C
    sb      t1, 0x1E5E($at)            # 00011E5E
lbl_80053214:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x00EE          # t2 = 000000EE
    sh      t2, 0x1E1A($at)            # 00011E1A
    ori     t4, $zero, 0xFFF2          # t4 = 0000FFF2
    lui     $at, 0x0001                # $at = 00010000
    sw      t4, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x000B          # t5 = 0000000B
    b       lbl_80054C3C
    sb      t5, 0x1E5E($at)            # 00011E5E
lbl_80053250:
    lhu     v0, 0x0EDC(v1)             # 8011B4AC
    sw      $zero, 0x0E80(v1)          # 8011B450
    sb      $zero, 0x13B3(v1)          # 8011B983
    andi    t6, v0, 0x0020             # t6 = 00000000
    bne     t6, $zero, lbl_800532AC
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    ori     t8, v0, 0x0020             # t8 = 00000022
    lui     $at, 0x0001                # $at = 00010000
    sh      t8, 0x0EDC(v1)             # 8011B4AC
    addu    $at, $at, s0
    addiu   t7, $zero, 0x00A0          # t7 = 000000A0
    sh      t7, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    ori     t0, $zero, 0xFFF3          # t0 = 0000FFF3
    lui     $at, 0x0001                # $at = 00010000
    sw      t0, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t1, $zero, 0x000B          # t1 = 0000000B
    b       lbl_80054C3C
    sb      t1, 0x1E5E($at)            # 00011E5E
lbl_800532AC:
    lw      t2, 0x1360(v1)             # 8011B930
    addiu   t3, $zero, 0x02CA          # t3 = 000002CA
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    slti    $at, t2, 0x0004
    beql    $at, $zero, lbl_800532F0
    lui     $at, 0x0001                # $at = 00010000
    lw      t4, 0x0004(v1)             # 8011A5D4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beql    t4, $zero, lbl_800532EC
    sb      a3, 0x1DE8($at)            # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_800532EC
    sb      $zero, 0x1DE8($at)         # 00011DE8
    sb      a3, 0x1DE8($at)            # 00011DE8
lbl_800532EC:
    lui     $at, 0x0001                # $at = 00010000
lbl_800532F0:
    addu    $at, $at, s0
    sh      t3, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t5, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      a2, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      a2, 0x141D(v1)             # 8011B9ED
lbl_80053318:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0117          # t6 = 00000117
    sh      t6, 0x1E1A($at)            # 00011E1A
    ori     t8, $zero, 0xFFF0          # t8 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    sw      t8, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x000C          # t9 = 0000000C
    b       lbl_80054C3C
    sb      t9, 0x1E5E($at)            # 00011E5E
lbl_80053354:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x00BB          # t0 = 000000BB
    sh      t0, 0x1E1A($at)            # 00011E1A
    ori     t1, $zero, 0xFFF0          # t1 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    sw      t1, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053390:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x00EE          # t4 = 000000EE
    sh      t4, 0x1E1A($at)            # 00011E1A
    ori     t3, $zero, 0xFFF3          # t3 = 0000FFF3
    lui     $at, 0x0001                # $at = 00010000
    sw      t3, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sb      t5, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_800533CC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x047A          # t6 = 0000047A
    sh      t6, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t8, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053400:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x010E          # t7 = 0000010E
    sh      t7, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    sb      v0, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      v0, 0x141D(v1)             # 8011B9ED
lbl_80053438:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0457          # t0 = 00000457
    sh      t0, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_8005346C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0053          # t2 = 00000053
    sh      t2, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sb      t4, 0x1E15($at)            # 00011E15
    ori     t3, $zero, 0xFFF4          # t3 = 0000FFF4
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t3, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_800534A8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0053          # t5 = 00000053
    sh      t5, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    ori     t8, $zero, 0xFFF5          # t8 = 0000FFF5
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t8, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_800534E4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0053          # t7 = 00000053
    sh      t7, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    ori     t0, $zero, 0xFFF6          # t0 = 0000FFF6
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t0, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80053520:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0324          # t1 = 00000324
    sh      t1, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    sb      v0, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      v0, 0x141D(v1)             # 8011B9ED
lbl_80053558:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x013D          # t4 = 0000013D
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      a2, 0x1E5E($at)            # 00011E5E
    ori     t5, $zero, 0x8000          # t5 = 00008000
    b       lbl_80054C3C
    sw      t5, 0x0008(v1)             # 8011A5D8
lbl_80053590:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0102          # t6 = 00000102
    sh      t6, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t8, 0x1E15($at)            # 00011E15
    ori     t7, $zero, 0xFFF0          # t7 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t7, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_800535CC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x005D          # a1 = 0000005D
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0123          # t9 = 00000123
    sh      t9, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    lui     v1, 0x8012                 # v1 = 80120000
    sb      t0, 0x1E15($at)            # 00011E15
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    ori     t1, $zero, 0xFFF0          # t1 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t1, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_8005361C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x00A0          # t2 = 000000A0
    sh      t2, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sb      t4, 0x1E15($at)            # 00011E15
    ori     t3, $zero, 0xFFF8          # t3 = 0000FFF8
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t3, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80053658:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0028          # t5 = 00000028
    sh      t5, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_8005368C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x1DE8($at)         # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x006B          # t8 = 0000006B
    sh      t8, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x1E15($at)            # 00011E15
    ori     t9, $zero, 0xFFF0          # t9 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t9, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_800536D4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0053          # t0 = 00000053
    sh      t0, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    ori     t2, $zero, 0xFFF4          # t2 = 0000FFF4
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t2, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80053710:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0053          # t4 = 00000053
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    ori     t5, $zero, 0xFFF5          # t5 = 0000FFF5
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t5, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_8005374C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0053          # t6 = 00000053
    sh      t6, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t8, 0x1E15($at)            # 00011E15
    ori     t7, $zero, 0xFFF6          # t7 = 0000FFF6
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t7, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80053788:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x006B          # t9 = 0000006B
    sh      t9, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sb      t0, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sb      $zero, 0x1415(v1)          # 8011B9E5
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_800537C0:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x006B          # t1 = 0000006B
    sh      t1, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addu    $at, $at, s0
    sb      a2, 0x1E5E($at)            # 00011E5E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0067          # a1 = 00000067
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    b       lbl_80054C3C
    sb      a3, 0x1415(v1)             # 8011B9E5
lbl_80053810:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x006B          # t4 = 0000006B
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addu    $at, $at, s0
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sb      a2, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      v0, 0x1415(v1)             # 8011B9E5
lbl_8005384C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      a3, 0x1DE8($at)            # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x00CD          # t5 = 000000CD
    sh      t5, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    ori     t8, $zero, 0xFFF2          # t8 = 0000FFF2
    lui     $at, 0x0001                # $at = 00010000
    sw      t8, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t7, $zero, 0x000B          # t7 = 0000000B
    b       lbl_80054C3C
    sb      t7, 0x1E5E($at)            # 00011E5E
lbl_80053894:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x00CD          # t9 = 000000CD
    sh      t9, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sb      t0, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_800538C8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x00A0          # t1 = 000000A0
    sh      t1, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x1E15($at)            # 00011E15
    ori     t4, $zero, 0xFFF3          # t4 = 0000FFF3
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t4, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80053904:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x00CD          # t3 = 000000CD
    sh      t3, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sb      t5, 0x1E15($at)            # 00011E15
    ori     t6, $zero, 0xFFF0          # t6 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    sw      t6, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_8005393C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x00A0          # t8 = 000000A0
    sh      t8, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x1E15($at)            # 00011E15
    ori     t9, $zero, 0xFFF4          # t9 = 0000FFF4
    lui     $at, 0x0001                # $at = 00010000
    sw      t9, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80053974:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0053          # t0 = 00000053
    sh      t0, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    ori     t2, $zero, 0xFFF9          # t2 = 0000FFF9
    lui     $at, 0x0001                # $at = 00010000
    sw      t2, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_800539AC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x1DE8($at)         # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0053          # t4 = 00000053
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    ori     t5, $zero, 0xFFFA          # t5 = 0000FFFA
    lui     $at, 0x0001                # $at = 00010000
    sw      t5, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_800539F0:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x04E6          # t6 = 000004E6
    sh      t6, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t8, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053A24:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x00DB          # t7 = 000000DB
    sh      t7, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    ori     t0, $zero, 0xFFF2          # t0 = 0000FFF2
    lui     $at, 0x0001                # $at = 00010000
    sw      t0, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80053A5C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0503          # t1 = 00000503
    sh      t1, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80053A8C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0320          # t4 = 00000320
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0011          # t5 = 00000011
    b       lbl_80054C3C
    sb      t5, 0x1E5E($at)            # 00011E5E
lbl_80053AC0:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0324          # t6 = 00000324
    sh      t6, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t8, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80053AF0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x005E          # a1 = 0000005E
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t7, 0x0EDE(v1)             # 8011B4AE
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    ori     t9, t7, 0x0010             # t9 = 00000010
    sh      t9, 0x0EDE(v1)             # 8011B4AE
    addiu   t0, $zero, 0x00DB          # t0 = 000000DB
    sh      t0, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    ori     t2, $zero, 0xFFF1          # t2 = 0000FFF1
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      t2, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80053B4C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x01ED          # t4 = 000001ED
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
    addu    $at, $at, s0
    sb      v0, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      v0, 0x141D(v1)             # 8011B9ED
lbl_80053B84:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x058C          # t5 = 0000058C
    sh      t5, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80053BB4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0513          # t8 = 00000513
    sh      t8, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0011          # t9 = 00000011
    b       lbl_80054C3C
    sb      t9, 0x1E5E($at)            # 00011E5E
lbl_80053BE8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x00CD          # t0 = 000000CD
    sh      t0, 0x1E1A($at)            # 00011E1A
    ori     t1, $zero, 0xFFF8          # t1 = 0000FFF8
    lui     $at, 0x0001                # $at = 00010000
    sw      t1, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0029          # t4 = 00000029
    b       lbl_80054C3C
    sb      t4, 0x1E5E($at)            # 00011E5E
lbl_80053C24:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0053          # t3 = 00000053
    sh      t3, 0x1E1A($at)            # 00011E1A
    ori     t5, $zero, 0xFFF7          # t5 = 0000FFF7
    lui     $at, 0x0001                # $at = 00010000
    sw      t5, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    b       lbl_80054C3C
    sb      t8, 0x1E5E($at)            # 00011E5E
lbl_80053C60:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x050F          # t7 = 0000050F
    sh      t7, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80053C94:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      a3, 0x1DE8($at)            # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0117          # t0 = 00000117
    sh      t0, 0x1E1A($at)            # 00011E1A
    ori     t1, $zero, 0xFFF2          # t1 = 0000FFF2
    lui     $at, 0x0001                # $at = 00010000
    sw      t1, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053CDC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0129          # t4 = 00000129
    sh      t4, 0x1E1A($at)            # 00011E1A
    ori     t3, $zero, 0xFFF1          # t3 = 0000FFF1
    lui     $at, 0x0001                # $at = 00010000
    sw      t3, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sb      t5, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053D18:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x00DB          # t6 = 000000DB
    sh      t6, 0x1E1A($at)            # 00011E1A
    ori     t8, $zero, 0xFFF4          # t8 = 0000FFF4
    lui     $at, 0x0001                # $at = 00010000
    sw      t8, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053D54:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x013D          # t9 = 0000013D
    sh      t9, 0x1E1A($at)            # 00011E1A
    ori     t0, $zero, 0xFFF3          # t0 = 0000FFF3
    lui     $at, 0x0001                # $at = 00010000
    sw      t0, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053D90:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x014D          # t2 = 0000014D
    sh      t2, 0x1E1A($at)            # 00011E1A
    ori     t4, $zero, 0xFFF1          # t4 = 0000FFF1
    lui     $at, 0x0001                # $at = 00010000
    sw      t4, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053DCC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0102          # t5 = 00000102
    sh      t5, 0x1E1A($at)            # 00011E1A
    ori     t6, $zero, 0xFFF1          # t6 = 0000FFF1
    lui     $at, 0x0001                # $at = 00010000
    sw      t6, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t8, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053E08:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x010E          # t7 = 0000010E
    sh      t7, 0x1E1A($at)            # 00011E1A
    ori     t9, $zero, 0xFFF2          # t9 = 0000FFF2
    lui     $at, 0x0001                # $at = 00010000
    sw      t9, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sb      t0, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053E44:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0108          # t1 = 00000108
    sh      t1, 0x1E1A($at)            # 00011E1A
    ori     t2, $zero, 0xFFF0          # t2 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    sw      t2, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sb      t4, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053E80:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x1DE8($at)         # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x00EE          # t3 = 000000EE
    sh      t3, 0x1E1A($at)            # 00011E1A
    ori     t5, $zero, 0xFFF6          # t5 = 0000FFF6
    lui     $at, 0x0001                # $at = 00010000
    sw      t5, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053EC8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x00EE          # t8 = 000000EE
    sh      t8, 0x1E1A($at)            # 00011E1A
    ori     t7, $zero, 0xFFF7          # t7 = 0000FFF7
    lui     $at, 0x0001                # $at = 00010000
    sw      t7, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053F04:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x00CD          # t0 = 000000CD
    sh      t0, 0x1E1A($at)            # 00011E1A
    ori     t1, $zero, 0xFFF5          # t1 = 0000FFF5
    lui     $at, 0x0001                # $at = 00010000
    sw      t1, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053F40:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      a3, 0x1DE8($at)            # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0157          # t4 = 00000157
    sh      t4, 0x1E1A($at)            # 00011E1A
    ori     t3, $zero, 0xFFF2          # t3 = 0000FFF2
    lui     $at, 0x0001                # $at = 00010000
    sw      t3, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sb      t5, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053F88:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0554          # t6 = 00000554
    sh      t6, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t8, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053FBC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x027E          # t7 = 0000027E
    sh      t7, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80053FF0:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x00A0          # t0 = 000000A0
    sh      t0, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    ori     t2, $zero, 0xFFF5          # t2 = 0000FFF5
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t2, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_8005402C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x05E8          # t4 = 000005E8
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80054060:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x013D          # t5 = 0000013D
    sh      t5, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    ori     t8, $zero, 0xFFF4          # t8 = 0000FFF4
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t8, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    sb      v0, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      v0, 0x141D(v1)             # 8011B9ED
lbl_800540A0:
    lhu     t7, 0x0070(v1)             # 8011A640
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    ori     t9, t7, 0x0100             # t9 = 0000037E
    jal     func_80079764
    sh      t9, 0x0070(v1)             # 8011A640
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t0, 0x0070(v1)             # 8011A640
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    ori     t1, t0, 0x1000             # t1 = 00001000
    jal     func_80079764
    sh      t1, 0x0070(v1)             # 8011A640
    lui     $at, 0x0001                # $at = 00010000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addu    $at, $at, s0
    sb      a3, 0x1DE8($at)            # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0053          # t2 = 00000053
    sh      t2, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    lui     v1, 0x8012                 # v1 = 80120000
    sb      t4, 0x1E15($at)            # 00011E15
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    ori     t3, $zero, 0xFFF1          # t3 = 0000FFF1
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t3, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_8005412C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0400          # t5 = 00000400
    sh      t5, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    ori     t8, $zero, 0xFFF0          # t8 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t8, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    sb      v0, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      v0, 0x141D(v1)             # 8011B9ED
lbl_8005416C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      a3, 0x1DE8($at)            # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0157          # t7 = 00000157
    sh      t7, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    ori     t0, $zero, 0xFFF2          # t0 = 0000FFF2
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t0, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_800541B4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0157          # t1 = 00000157
    sh      t1, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x1E15($at)            # 00011E15
    ori     t4, $zero, 0xFFF3          # t4 = 0000FFF3
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t4, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    sb      a2, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      a2, 0x141D(v1)             # 8011B9ED
lbl_800541F4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      a3, 0x1DE8($at)            # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0157          # t3 = 00000157
    sh      t3, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sb      t5, 0x1E15($at)            # 00011E15
    ori     t6, $zero, 0xFFF4          # t6 = 0000FFF4
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t6, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_8005423C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x1DE8($at)         # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0157          # t8 = 00000157
    sh      t8, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x1E15($at)            # 00011E15
    ori     t9, $zero, 0xFFF5          # t9 = 0000FFF5
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t9, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80054284:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      a3, 0x1DE8($at)            # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0157          # t0 = 00000157
    sh      t0, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    ori     t2, $zero, 0xFFF6          # t2 = 0000FFF6
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t2, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_800542CC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0157          # t4 = 00000157
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    ori     t5, $zero, 0xFFF7          # t5 = 0000FFF7
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t5, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80054308:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0157          # t6 = 00000157
    sh      t6, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t8, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_8005433C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x02AE          # t7 = 000002AE
    sh      t7, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80054370:
    lhu     v0, 0x0EDC(v1)             # 8011B4AC
    andi    t0, v0, 0x0100             # t0 = 00000000
    beq     t0, $zero, lbl_800543C8
    andi    t1, v0, 0x0200             # t1 = 00000000
    beq     t1, $zero, lbl_800543C8
    andi    t2, v0, 0x0400             # t2 = 00000000
    beq     t2, $zero, lbl_800543C8
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0053          # t4 = 00000053
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    ori     t5, $zero, 0xFFF3          # t5 = 0000FFF3
    lui     $at, 0x0001                # $at = 00010000
    sw      t5, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_800543C8:
    lw      v0, 0x1360(v1)             # 8011B930
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   t6, $zero, 0x00FC          # t6 = 000000FC
    beq     v0, $at, lbl_800543FC
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_80054428
    addiu   t7, $zero, 0x0147          # t7 = 00000147
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_80054458
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    b       lbl_80054C40
    lw      $ra, 0x0024($sp)
lbl_800543FC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t6, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t8, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80054428:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t7, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80054458:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0102          # t0 = 00000102
    sh      t0, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    ori     t2, $zero, 0xFFF0          # t2 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    sw      t2, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80054490:
    lui     t4, 0x8010                 # t4 = 80100000
    lw      t4, -0x7400(t4)            # 800F8C00
    lw      t3, 0x00A4(v1)             # 8011A674
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   t2, $zero, 0x0610          # t2 = 00000610
    and     t5, t4, t3
    beq     t5, $zero, lbl_800544EC
    lui     $at, 0x0001                # $at = 00010000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x006B          # t6 = 0000006B
    sh      t6, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t8, 0x1E15($at)            # 00011E15
    ori     t7, $zero, 0xFFF1          # t7 = 0000FFF1
    lui     $at, 0x0001                # $at = 00010000
    sw      t7, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    b       lbl_80054C3C
    sb      t9, 0x1E5E($at)            # 00011E5E
lbl_800544EC:
    lhu     t0, 0x0EEC(v1)             # 8011B4BC
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    ori     t1, t0, 0x0100             # t1 = 00000102
    sh      t1, 0x0EEC(v1)             # 8011B4BC
    sh      t2, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t4, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      a2, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      a2, 0x141D(v1)             # 8011B9ED
lbl_80054524:
    lui     t3, 0x8010                 # t3 = 80100000
    lw      t3, -0x7404(t3)            # 800F8BFC
    lw      t5, 0x00A4(v1)             # 8011A674
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   t1, $zero, 0x0580          # t1 = 00000580
    and     t6, t3, t5
    beq     t6, $zero, lbl_80054580
    lui     $at, 0x0001                # $at = 00010000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x006B          # t8 = 0000006B
    sh      t8, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x1E15($at)            # 00011E15
    ori     t9, $zero, 0xFFF1          # t9 = 0000FFF1
    lui     $at, 0x0001                # $at = 00010000
    sw      t9, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    b       lbl_80054C3C
    sb      t0, 0x1E5E($at)            # 00011E5E
lbl_80054580:
    addu    $at, $at, s0
    sh      t1, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      a2, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      a2, 0x141D(v1)             # 8011B9ED
lbl_800545AC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0564          # t4 = 00000564
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addu    $at, $at, s0
    sb      a2, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      a2, 0x141D(v1)             # 8011B9ED
lbl_800545E4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0608          # t5 = 00000608
    sh      t5, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    sb      v0, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      v0, 0x141D(v1)             # 8011B9ED
lbl_8005461C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x00EE          # t8 = 000000EE
    sh      t8, 0x1E1A($at)            # 00011E1A
    ori     t7, $zero, 0xFFF8          # t7 = 0000FFF8
    lui     $at, 0x0001                # $at = 00010000
    sw      t7, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addu    $at, $at, s0
    sb      a2, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      a2, 0x141D(v1)             # 8011B9ED
lbl_8005465C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x01F5          # t0 = 000001F5
    sh      t0, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80054690:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0590          # t2 = 00000590
    sh      t2, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sb      t4, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_800546C4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x00CD          # t3 = 000000CD
    sh      t3, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sb      t5, 0x1E15($at)            # 00011E15
    ori     t6, $zero, 0xFFF3          # t6 = 0000FFF3
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t6, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80054700:
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0xFD00             # a0 = 800EFD00
    lbu     v0, 0x0000(a0)             # 800EFD00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     v0, $zero, lbl_8005473C
    addiu   t8, $zero, 0x008D          # t8 = 0000008D
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80054778
    addiu   t2, $zero, 0x0147          # t2 = 00000147
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_800547BC
    addiu   t8, $zero, 0x00A0          # t8 = 000000A0
    b       lbl_80054C40
    lw      $ra, 0x0024($sp)
lbl_8005473C:
    sh      t8, 0x1E1A($at)            # 00001E1C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x1E15($at)            # 00011E15
    ori     t9, $zero, 0xFFF2          # t9 = 0000FFF2
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t9, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    sb      v0, 0x1E5E($at)            # 00011E5E
    lbu     t0, 0x0000(a0)             # 800EFD00
    addiu   t1, t0, 0x0001             # t1 = 000001F6
    b       lbl_80054C3C
    sb      t1, 0x0000(a0)             # 800EFD00
lbl_80054778:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t2, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sb      t4, 0x1E15($at)            # 00011E15
    ori     t3, $zero, 0xFFF1          # t3 = 0000FFF1
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t3, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    sb      v0, 0x1E5E($at)            # 00011E5E
    lbu     t5, 0x0000(a0)             # 800EFD00
    addiu   t6, t5, 0x0001             # t6 = 00000015
    b       lbl_80054C3C
    sb      t6, 0x0000(a0)             # 800EFD00
lbl_800547BC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t8, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x1E15($at)            # 00011E15
    ori     t9, $zero, 0xFFF6          # t9 = 0000FFF6
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t9, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    sb      v0, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      $zero, 0x0000(a0)          # 800EFD00
lbl_800547F8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x00E4          # t0 = 000000E4
    sh      t0, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    ori     t2, $zero, 0xFFF1          # t2 = 0000FFF1
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sw      t2, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80054834:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0574          # t4 = 00000574
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80054868:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0538          # t5 = 00000538
    sh      t5, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_8005489C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x053C          # t8 = 0000053C
    sh      t8, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_800548D0:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0540          # t9 = 00000540
    sh      t9, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sb      t0, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80054904:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0544          # t1 = 00000544
    sh      t1, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80054938:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0548          # t4 = 00000548
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_8005496C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x054C          # t5 = 0000054C
    sh      t5, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_800549A0:
    jal     func_800288B4
    addiu   a0, $zero, 0x00BB          # a0 = 000000BB
    lui     v1, 0x8012                 # v1 = 80120000
    beq     v0, $zero, lbl_80054A78
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    jal     func_800288B4
    addiu   a0, $zero, 0x00BC          # a0 = 000000BC
    lui     v1, 0x8012                 # v1 = 80120000
    beq     v0, $zero, lbl_80054A78
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    jal     func_800288B4
    addiu   a0, $zero, 0x00BD          # a0 = 000000BD
    lui     v1, 0x8012                 # v1 = 80120000
    beq     v0, $zero, lbl_80054A78
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    jal     func_800288B4
    addiu   a0, $zero, 0x00BE          # a0 = 000000BE
    lui     v1, 0x8012                 # v1 = 80120000
    beq     v0, $zero, lbl_80054A78
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    jal     func_800288B4
    addiu   a0, $zero, 0x00BF          # a0 = 000000BF
    lui     v1, 0x8012                 # v1 = 80120000
    beq     v0, $zero, lbl_80054A78
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    jal     func_800288B4
    addiu   a0, $zero, 0x00AD          # a0 = 000000AD
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    beq     v0, $zero, lbl_80054A78
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     v0, 0x0202                 # v0 = 02020000
    addiu   v0, v0, 0xDA40             # v0 = 0201DA40
    sll     t8, v0,  4
    srl     t7, t8, 28
    sll     t9, t7,  2
    lui     t0, 0x8012                 # t0 = 80120000
    addu    t0, t0, t9
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t0, 0x0C38(t0)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t0, t1
    addu    t4, t2, $at
    sw      t4, 0x1D68(s0)             # 00001D68
    sh      $zero, 0x1D74(s0)          # 00001D74
    lw      t5, 0x0034($sp)
    ori     t3, $zero, 0xFFFF          # t3 = 0000FFFF
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sb      a3, 0x1414(v1)             # 8011B9E4
    sw      t3, 0x0008(v1)             # 8011A5D8
    b       lbl_80054C3C
    sb      a2, 0x0008(t5)             # 00000008
lbl_80054A78:
    lw      t8, 0x0034($sp)
    ori     t6, $zero, 0xFFFF          # t6 = 0000FFFF
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t6, 0x0008(v1)             # 8011A5D8
    b       lbl_80054C3C
    sb      a2, 0x0008(t8)             # 00000008
lbl_80054A90:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0185          # t7 = 00000185
    sh      t7, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      v0, 0x1E5E($at)            # 00011E5E
lbl_80054AC4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0594          # t0 = 00000594
    sh      t0, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addu    $at, $at, s0
    sb      v0, 0x1E5E($at)            # 00011E5E
    b       lbl_80054C3C
    sb      v0, 0x141D(v1)             # 8011B9ED
lbl_80054AFC:
    lhu     t2, 0x0EEC(v1)             # 8011B4BC
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   t6, $zero, 0x0610          # t6 = 00000610
    andi    t4, t2, 0x0100             # t4 = 00000000
    beq     t4, $zero, lbl_80054B48
    lui     $at, 0x0001                # $at = 00010000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0580          # t3 = 00000580
    sh      t3, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sb      t5, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addu    $at, $at, s0
    b       lbl_80054B6C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80054B48:
    addu    $at, $at, s0
    sh      t6, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t8, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80054B6C:
    b       lbl_80054C3C
    sb      a2, 0x141D(v1)             # 8011B9ED
lbl_80054B74:
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sw      t7, 0x135C(v1)             # 8011B92C
    jal     func_800C7F40
    addiu   a0, $zero, 0x006F          # a0 = 0000006F
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x1DE8($at)         # 00011DE8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x00CD          # t9 = 000000CD
    lui     v1, 0x8012                 # v1 = 80120000
    sh      t9, 0x1E1A($at)            # 00011E1A
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    ori     t0, $zero, 0xFFF7          # t0 = 0000FFF7
    lui     $at, 0x0001                # $at = 00010000
    sw      t0, 0x0008(v1)             # 8011A5D8
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addu    $at, $at, s0
    b       lbl_80054C3C
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80054BD4:
    addiu   t2, $zero, 0x0517          # t2 = 00000517
    sh      t2, 0x1378(v1)             # 8011B948
    jal     func_8009D9B8
    or      a0, s0, $zero              # a0 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addiu   t4, $zero, 0xFFFE          # t4 = FFFFFFFE
    sw      t4, 0x1364(v1)             # 8011B934
    b       lbl_80054C3C
    sb      v0, 0x141D(v1)             # 8011B9ED
lbl_80054C00:
    ori     v0, $zero, 0x8000          # v0 = 00008000
    lui     $at, 0x0001                # $at = 00010000
    sh      v0, 0x000C(v1)             # 8011A5DC
    sh      v0, 0x141A(v1)             # 8011B9EA
    addu    $at, $at, s0
    addiu   t3, $zero, 0x05F0          # t3 = 000005F0
    sh      t3, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sb      t5, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addu    $at, $at, s0
    sb      a2, 0x1E5E($at)            # 00011E5E
lbl_80054C3C:
    lw      $ra, 0x0024($sp)
lbl_80054C40:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80054C50:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lw      t6, 0x0024($sp)
    lhu     t7, 0x0002(a3)             # 00000002
    lhu     v0, 0x0010(t6)             # 00000010
    slt     $at, v0, t7
    bnel    $at, $zero, lbl_80055624
    lw      $ra, 0x001C($sp)
    lhu     t8, 0x0004(a3)             # 00000004
    lw      t0, 0x0020($sp)
    slt     $at, t8, v0
    bne     $at, $zero, lbl_80055620
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t0
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x0B05($at)            # 00010B05
    lw      t1, 0x0024($sp)
    lhu     a1, 0x0002(a3)             # 00000002
    lhu     a0, 0x0004(a3)             # 00000004
    lhu     a2, 0x0010(t1)             # 00000010
    jal     func_8005C690
    sw      a3, 0x0028($sp)
    lw      a3, 0x0028($sp)
    lw      a0, 0x0020($sp)
    lhu     t2, 0x0000(a3)             # 00000000
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sltiu   $at, t3, 0x000D
    beq     $at, $zero, lbl_80055620
    sll     t3, t3,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t3
    lw      t3, 0x7548($at)            # 80107548
    jr      t3
    nop
lbl_80054CE4:
    lui     $at, 0x0001                # $at = 00010000
    addiu   v1, $zero, 0x00A0          # v1 = 000000A0
    addu    v0, a0, $at
    sb      v1, 0x0B06(v0)             # 00000B06
    sb      v1, 0x0B07(v0)             # 00000B07
    sb      v1, 0x0B08(v0)             # 00000B08
    lhu     t4, 0x0000(a3)             # 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t4, $at, lbl_80054E84
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    mtc1    $zero, $f2                 # $f2 = 0.00
    mul.s   $f6, $f4, $f0
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t7, 0x8012                 # t7 = 80120000
    cfc1    t5, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_80054D90
    mfc1    t6, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t6, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80054D84
    nop
    mfc1    t6, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80054D9C
    or      t6, t6, $at                # t6 = 80000000
lbl_80054D84:
    b       lbl_80054D9C
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f8
lbl_80054D90:
    nop
    bltz    t6, lbl_80054D84
    nop
lbl_80054D9C:
    ctc1    t5, $f31
    sb      t6, 0x0B09(v0)             # 00000B09
    c.eq.s  $f0, $f2
    nop
    bc1fl   lbl_80054DF8
    c.eq.s  $f0, $f2
    lw      t7, -0x5A30(t7)            # 8011A5D0
    addiu   $at, $zero, 0x006B         # $at = 0000006B
    lui     a3, 0x8010                 # a3 = 80100000
    bne     t7, $at, lbl_80054DF4
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    addiu   a0, $zero, 0x4833          # a0 = 00004833
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    b       lbl_80055624
    lw      $ra, 0x001C($sp)
lbl_80054DF4:
    c.eq.s  $f0, $f2
lbl_80054DF8:
    lui     v0, 0x8012                 # v0 = 80120000
    bc1fl   lbl_80054E58
    c.eq.s  $f0, $f2
    lw      v0, -0x5A30(v0)            # 8011A5D0
    addiu   $at, $zero, 0x0053         # $at = 00000053
    lui     a3, 0x8010                 # a3 = 80100000
    beq     v0, $at, lbl_80054E28
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   $at, $zero, 0x0138         # $at = 00000138
    beq     v0, $at, lbl_80054E28
    addiu   $at, $zero, 0x0371         # $at = 00000371
    bne     v0, $at, lbl_80054E54
lbl_80054E28:
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    addiu   a0, $zero, 0x2846          # a0 = 00002846
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    b       lbl_80055624
    lw      $ra, 0x001C($sp)
lbl_80054E54:
    c.eq.s  $f0, $f2
lbl_80054E58:
    nop
    bc1fl   lbl_80055624
    lw      $ra, 0x001C($sp)
    lh      t0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bnel    t0, $at, lbl_80055624
    lw      $ra, 0x001C($sp)
    jal     func_80064738
    addiu   a0, $zero, 0x2846          # a0 = 00002846
    b       lbl_80055624
    lw      $ra, 0x001C($sp)
lbl_80054E84:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f18                  # $f18 = 255.00
    sub.s   $f16, $f10, $f0
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f16, $f18
    cfc1    t1, $f31
    ctc1    t2, $f31
    nop
    cvt.w.s $f6, $f4
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80054F10
    mfc1    t2, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t2, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80054F04
    nop
    mfc1    t2, $f6
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80054F1C
    or      t2, t2, $at                # t2 = 80000000
lbl_80054F04:
    b       lbl_80054F1C
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f6
lbl_80054F10:
    nop
    bltz    t2, lbl_80054F04
    nop
lbl_80054F1C:
    ctc1    t1, $f31
    b       lbl_80055620
    sb      t2, 0x0B09(v0)             # 00000B09
lbl_80054F28:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    sb      $zero, 0x0B06(v0)          # 00000B06
    sb      $zero, 0x0B07(v0)          # 00000B07
    sb      t3, 0x0B08(v0)             # 00000B08
    lhu     t4, 0x0000(a3)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t4, $at, lbl_80054FE4
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f8                   # $f8 = 255.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f10, $f8, $f0
    cfc1    t5, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_80054FCC
    mfc1    t6, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t6, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80054FC0
    nop
    mfc1    t6, $f16
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80054FD8
    or      t6, t6, $at                # t6 = 80000000
lbl_80054FC0:
    b       lbl_80054FD8
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f16
lbl_80054FCC:
    nop
    bltz    t6, lbl_80054FC0
    nop
lbl_80054FD8:
    ctc1    t5, $f31
    b       lbl_80055620
    sb      t6, 0x0B09(v0)             # 00000B09
lbl_80054FE4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f6                   # $f6 = 255.00
    sub.s   $f4, $f18, $f0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f8, $f4, $f6
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_80055070
    mfc1    t8, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t8, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_80055064
    nop
    mfc1    t8, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005507C
    or      t8, t8, $at                # t8 = 80000000
lbl_80055064:
    b       lbl_8005507C
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f10
lbl_80055070:
    nop
    bltz    t8, lbl_80055064
    nop
lbl_8005507C:
    ctc1    t7, $f31
    b       lbl_80055620
    sb      t8, 0x0B09(v0)             # 00000B09
lbl_80055088:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sb      t9, 0x0B06(v0)             # 00000B06
    sb      $zero, 0x0B07(v0)          # 00000B07
    sb      $zero, 0x0B08(v0)          # 00000B08
    lhu     t0, 0x0000(a3)             # 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t0, $at, lbl_80055150
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    sub.s   $f18, $f16, $f0
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f6, $f18, $f4
    cfc1    t1, $f31
    ctc1    t2, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80055138
    mfc1    t2, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t2, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_8005512C
    nop
    mfc1    t2, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80055144
    or      t2, t2, $at                # t2 = 80000000
lbl_8005512C:
    b       lbl_80055144
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f8
lbl_80055138:
    nop
    bltz    t2, lbl_8005512C
    nop
lbl_80055144:
    ctc1    t1, $f31
    b       lbl_80055620
    sb      t2, 0x0B09(v0)             # 00000B09
lbl_80055150:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f16, $f10, $f0
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_800551D0
    mfc1    t4, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t4, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_800551C4
    nop
    mfc1    t4, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_800551DC
    or      t4, t4, $at                # t4 = 80000000
lbl_800551C4:
    b       lbl_800551DC
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f18
lbl_800551D0:
    nop
    bltz    t4, lbl_800551C4
    nop
lbl_800551DC:
    ctc1    t3, $f31
    b       lbl_80055620
    sb      t4, 0x0B09(v0)             # 00000B09
lbl_800551E8:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    sb      $zero, 0x0B06(v0)          # 00000B06
    sb      t5, 0x0B07(v0)             # 00000B07
    sb      $zero, 0x0B08(v0)          # 00000B08
    lhu     t6, 0x0000(a3)             # 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     t6, $at, lbl_800552B0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f8                   # $f8 = 255.00
    sub.s   $f6, $f4, $f0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f10, $f6, $f8
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_80055298
    mfc1    t8, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t8, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_8005528C
    nop
    mfc1    t8, $f16
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_800552A4
    or      t8, t8, $at                # t8 = 80000000
lbl_8005528C:
    b       lbl_800552A4
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f16
lbl_80055298:
    nop
    bltz    t8, lbl_8005528C
    nop
lbl_800552A4:
    ctc1    t7, $f31
    b       lbl_80055620
    sb      t8, 0x0B09(v0)             # 00000B09
lbl_800552B0:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f18                  # $f18 = 255.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f18, $f0
    cfc1    t9, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f6, $f4
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_80055330
    mfc1    t0, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t0, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_80055324
    nop
    mfc1    t0, $f6
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005533C
    or      t0, t0, $at                # t0 = 80000000
lbl_80055324:
    b       lbl_8005533C
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f6
lbl_80055330:
    nop
    bltz    t0, lbl_80055324
    nop
lbl_8005533C:
    ctc1    t9, $f31
    b       lbl_80055620
    sb      t0, 0x0B09(v0)             # 00000B09
lbl_80055348:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    b       lbl_80055620
    sb      t1, -0x4620($at)           # 8011B9E0
lbl_80055358:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at
    sb      $zero, 0x0B06(v0)          # 00000B06
    sb      $zero, 0x0B07(v0)          # 00000B07
    sb      $zero, 0x0B08(v0)          # 00000B08
    lhu     t2, 0x0000(a3)             # 00000000
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     t2, $at, lbl_8005541C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f16                  # $f16 = 255.00
    sub.s   $f10, $f8, $f0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f18, $f10, $f16
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_80055404
    mfc1    t4, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t4, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_800553F8
    nop
    mfc1    t4, $f4
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80055410
    or      t4, t4, $at                # t4 = 80000000
lbl_800553F8:
    b       lbl_80055410
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f4
lbl_80055404:
    nop
    bltz    t4, lbl_800553F8
    nop
lbl_80055410:
    ctc1    t3, $f31
    b       lbl_80055620
    sb      t4, 0x0B09(v0)             # 00000B09
lbl_8005541C:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f6                   # $f6 = 255.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f8, $f6, $f0
    cfc1    t5, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_8005549C
    mfc1    t6, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t6, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80055490
    nop
    mfc1    t6, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_800554A8
    or      t6, t6, $at                # t6 = 80000000
lbl_80055490:
    b       lbl_800554A8
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f10
lbl_8005549C:
    nop
    bltz    t6, lbl_80055490
    nop
lbl_800554A8:
    ctc1    t5, $f31
    b       lbl_80055620
    sb      t6, 0x0B09(v0)             # 00000B09
lbl_800554B4:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f16                  # $f16 = 255.00
    lui     $at, 0x431B                # $at = 431B0000
    mtc1    $at, $f18                  # $f18 = 155.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f18, $f0
    sub.s   $f6, $f16, $f4
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_80055540
    mfc1    t8, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_80055534
    nop
    mfc1    t8, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005554C
    or      t8, t8, $at                # t8 = 80000000
lbl_80055534:
    b       lbl_8005554C
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f8
lbl_80055540:
    nop
    bltz    t8, lbl_80055534
    nop
lbl_8005554C:
    ctc1    t7, $f31
    lui     $at, 0x8012                # $at = 80120000
    b       lbl_80055620
    sb      t8, -0x4620($at)           # 8011B9E0
lbl_8005555C:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     $at, 0x431B                # $at = 431B0000
    mtc1    $at, $f16                  # $f16 = 155.00
    sub.s   $f18, $f10, $f0
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f6                   # $f6 = 255.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    mul.s   $f4, $f18, $f16
    sb      $zero, 0x0B06(v0)          # 00000B06
    sb      $zero, 0x0B07(v0)          # 00000B07
    sb      $zero, 0x0B08(v0)          # 00000B08
    lui     $at, 0x4F00                # $at = 4F000000
    sub.s   $f8, $f6, $f4
    cfc1    t9, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_80055608
    mfc1    t0, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_800555FC
    nop
    mfc1    t0, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80055614
    or      t0, t0, $at                # t0 = 80000000
lbl_800555FC:
    b       lbl_80055614
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f10
lbl_80055608:
    nop
    bltz    t0, lbl_800555FC
    nop
lbl_80055614:
    ctc1    t9, $f31
    sb      t0, 0x0B09(v0)             # 00000B09
    nop
lbl_80055620:
    lw      $ra, 0x001C($sp)
lbl_80055624:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80055630:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s3, 0x0028($sp)
    sw      s0, 0x001C($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a0, 0x0030($sp)
    sw      a3, 0x003C($sp)
    or      t0, s0, $zero              # t0 = 00000000
    lhu     v0, 0x0002(t0)             # 00000002
    lhu     v1, 0x0010(s3)             # 00000010
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    addiu   s0, s0, 0x0008             # s0 = 00000008
    slt     $at, v0, v1
    beq     $at, $zero, lbl_80055744
    addiu   s2, $zero, 0x0008          # s2 = 00000008
    lhu     t6, 0x0004(t0)             # 00000004
    slt     $at, v1, t6
    beql    $at, $zero, lbl_80055748
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lhu     v1, 0x0018(s3)             # 00000018
    slt     $at, v1, v0
    bne     $at, $zero, lbl_800556A4
    ori     $at, $zero, 0xF000         # $at = 0000F000
    slt     $at, v1, $at
    bnel    $at, $zero, lbl_80055748
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800556A4:
    lbu     t8, 0x001A(s3)             # 0000001A
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x001B(s3)             # 0000001B
    beq     t8, $zero, lbl_80055744
    sw      s0, 0x0020(s3)             # 00000020
    lhu     t9, 0x0002(t0)             # 00000002
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   a2, $zero, 0x0025          # a2 = 00000025
    sh      t9, 0x0018(s3)             # 00000018
    lbu     t1, -0x43D0(t1)            # 8011BC30
    lw      a0, 0x0030($sp)
    beql    t1, $zero, lbl_80055748
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    jal     func_8009D6DC
    lh      a1, 0x0016(s3)             # 00000016
    lui     a1, 0x8012                 # a1 = 80120000
    lh      a1, -0x43AC(a1)            # 8011BC54
    lw      a0, 0x0030($sp)
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0030($sp)
    lh      a1, 0x0016(s3)             # 00000016
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      a0, 0x0030($sp)
    jal     func_8009D2F0
    lh      a1, 0x0016(s3)             # 00000016
    jal     func_800499F0
    or      a0, v0, $zero              # a0 = 00000000
    lw      a0, 0x0030($sp)
    jal     func_8009D2F0
    lh      a1, 0x0016(s3)             # 00000016
    lw      t2, 0x0030($sp)
    lbu     t3, 0x003F($sp)
    lw      a1, 0x001C(s3)             # 0000001C
    lw      a2, 0x0020(s3)             # 00000020
    lw      a3, 0x1C44(t2)             # 00001C44
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80049A00
    sw      t3, 0x0010($sp)
lbl_80055744:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80055748:
    lb      t4, 0x0000(s0)             # 00000008
    addiu   s0, s0, 0x0010             # s0 = 00000018
    bne     v0, t4, lbl_8005575C
    nop
    or      s1, $zero, $zero           # s1 = 00000000
lbl_8005575C:
    bne     s1, $zero, lbl_80055748
    addiu   s2, s2, 0x0010             # s2 = 00000018
    or      v0, s2, $zero              # v0 = 00000018
    lw      $ra, 0x002C($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80055784:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s3, 0x0028($sp)
    sw      s0, 0x001C($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a0, 0x0030($sp)
    sw      a3, 0x003C($sp)
    or      t0, s0, $zero              # t0 = 00000000
    lhu     v0, 0x0002(t0)             # 00000002
    lhu     v1, 0x0010(s3)             # 00000010
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    addiu   s0, s0, 0x0008             # s0 = 00000008
    slt     $at, v0, v1
    beq     $at, $zero, lbl_800558A0
    addiu   s2, $zero, 0x0008          # s2 = 00000008
    lhu     t6, 0x0004(t0)             # 00000004
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xBC4E             # a0 = 8011BC4E
    slt     $at, v1, t6
    beql    $at, $zero, lbl_800558A4
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lhu     v1, 0x0000(a0)             # 8011BC4E
    slt     $at, v1, v0
    bne     $at, $zero, lbl_80055800
    ori     $at, $zero, 0xF000         # $at = 0000F000
    slt     $at, v1, $at
    bnel    $at, $zero, lbl_800558A4
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80055800:
    lbu     t8, 0x001B(s3)             # 0000001B
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x001A(s3)             # 0000001A
    beq     t8, $zero, lbl_800558A0
    sw      s0, 0x001C(s3)             # 0000001C
    lhu     t9, 0x0002(t0)             # 00000002
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   a2, $zero, 0x0025          # a2 = 00000025
    sh      t9, 0x0000(a0)             # 8011BC4E
    lbu     t1, -0x43D0(t1)            # 8011BC30
    lw      a0, 0x0030($sp)
    beql    t1, $zero, lbl_800558A4
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    jal     func_8009D6DC
    lh      a1, 0x0016(s3)             # 00000016
    lui     a1, 0x8012                 # a1 = 80120000
    lh      a1, -0x43AC(a1)            # 8011BC54
    lw      a0, 0x0030($sp)
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0030($sp)
    lh      a1, 0x0016(s3)             # 00000016
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      a0, 0x0030($sp)
    jal     func_8009D2F0
    lh      a1, 0x0016(s3)             # 00000016
    jal     func_800499F0
    or      a0, v0, $zero              # a0 = 00000000
    lw      a0, 0x0030($sp)
    jal     func_8009D2F0
    lh      a1, 0x0016(s3)             # 00000016
    lw      t2, 0x0030($sp)
    lbu     t3, 0x003F($sp)
    lw      a1, 0x001C(s3)             # 0000001C
    lw      a2, 0x0020(s3)             # 00000020
    lw      a3, 0x1C44(t2)             # 00001C44
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80049A00
    sw      t3, 0x0010($sp)
lbl_800558A0:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800558A4:
    lb      t4, 0x0000(s0)             # 00000008
    addiu   s0, s0, 0x0010             # s0 = 00000018
    bne     v0, t4, lbl_800558B8
    nop
    or      s1, $zero, $zero           # s1 = 00000000
lbl_800558B8:
    bne     s1, $zero, lbl_800558A4
    addiu   s2, s2, 0x0010             # s2 = 00000018
    or      v0, s2, $zero              # v0 = 00000018
    lw      $ra, 0x002C($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800558E0:
# Cutscene Command 0x07. Camera Related
# A0 = Global Context
# A1 = Cutscene Struct
# A2 = Command Data ptr
# A3 = ?
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a3, 0x005C($sp)
    or      t0, a2, $zero              # t0 = 00000000
    lhu     v0, 0x0002(t0)             # 00000002
    lhu     a3, 0x0010(s0)             # 00000010
    addiu   a2, a2, 0x0008             # a2 = 00000008
    slt     $at, v0, a3
    beql    $at, $zero, lbl_80055AA8
    addiu   v0, $zero, 0x0018          # v0 = 00000018
    lhu     t6, 0x0004(t0)             # 00000004
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xBC50             # a0 = 8011BC50
    slt     $at, a3, t6
    beql    $at, $zero, lbl_80055AA8
    addiu   v0, $zero, 0x0018          # v0 = 00000018
    lhu     v1, 0x0000(a0)             # 8011BC50
    slt     $at, v1, v0
    bne     $at, $zero, lbl_8005594C
    ori     $at, $zero, 0xF000         # $at = 0000F000
    slt     $at, v1, $at
    bnel    $at, $zero, lbl_80055AA8
    addiu   v0, $zero, 0x0018          # v0 = 00000018
lbl_8005594C:
    lbu     t8, 0x001A(s0)             # 0000001A
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x001B(s0)             # 0000001B
    beq     t8, $zero, lbl_80055AA4
    sw      a2, 0x0020(s0)             # 00000020
    lhu     t9, 0x0002(t0)             # 00000002
    lui     t1, 0x8012                 # t1 = 80120000
    sh      t9, 0x0000(a0)             # 8011BC50
    lbu     t1, -0x43D0(t1)            # 8011BC30
    or      a0, s1, $zero              # a0 = 00000000
    beql    t1, $zero, lbl_80055AA8
    addiu   v0, $zero, 0x0018          # v0 = 00000018
    jal     func_8009D2F0
    lh      a1, 0x0016(s0)             # 00000016
    sw      v0, 0x002C($sp)
    sw      $zero, 0x0090(v0)          # 00000090
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x0016(s0)             # 00000016
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x0016(s0)             # 00000016
    jal     func_8009D6DC
    addiu   a2, $zero, 0x0021          # a2 = 00000021
    lw      t2, 0x001C(s0)             # 0000001C
    lui     $at, 0x3FB4                # $at = 3FB40000
    mtc1    $at, $f8                   # $f8 = 1.41
    lb      t3, 0x0001(t2)             # 00000001
    lw      a0, 0x002C($sp)
    addiu   a1, $zero, 0x0040          # a1 = 00000040
    mtc1    t3, $f4                    # $f4 = 0.00
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFD8
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    jal     func_80049818
    swc1    $f10, 0x0028($sp)
    lw      t4, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFEC
    lh      t5, 0x0008(t4)             # 00000008
    addiu   a3, $sp, 0x0030            # a3 = FFFFFFE0
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x003C($sp)
    lw      t6, 0x001C(s0)             # 0000001C
    lh      t7, 0x000A(t6)             # 0000000A
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0040($sp)
    lw      t8, 0x001C(s0)             # 0000001C
    lh      t9, 0x000C(t8)             # 0000000C
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0044($sp)
    lw      t1, 0x0020(s0)             # 00000020
    lh      t2, 0x0008(t1)             # 00000008
    mtc1    t2, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0030($sp)
    lw      t3, 0x0020(s0)             # 00000020
    lh      t4, 0x000A(t3)             # 0000000A
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0034($sp)
    lw      t5, 0x0020(s0)             # 00000020
    lh      t6, 0x000C(t5)             # 0000000C
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0038($sp)
    jal     func_8009D328
    lh      a1, 0x0016(s0)             # 00000016
    lw      t7, 0x0020(s0)             # 00000020
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x0016(s0)             # 00000016
    jal     func_8009D55C
    lw      a2, 0x0004(t7)             # 00000004
lbl_80055AA4:
    addiu   v0, $zero, 0x0018          # v0 = 00000018
lbl_80055AA8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80055ABC:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a3, 0x005C($sp)
    or      t0, a2, $zero              # t0 = 00000000
    lhu     v0, 0x0002(t0)             # 00000002
    lhu     a3, 0x0010(s0)             # 00000010
    addiu   a2, a2, 0x0008             # a2 = 00000008
    slt     $at, v0, a3
    beql    $at, $zero, lbl_80055C50
    addiu   v0, $zero, 0x0018          # v0 = 00000018
    lhu     t6, 0x0004(t0)             # 00000004
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xBC52             # a0 = 8011BC52
    slt     $at, a3, t6
    beql    $at, $zero, lbl_80055C50
    addiu   v0, $zero, 0x0018          # v0 = 00000018
    lhu     v1, 0x0000(a0)             # 8011BC52
    slt     $at, v1, v0
    bne     $at, $zero, lbl_80055B28
    ori     $at, $zero, 0xF000         # $at = 0000F000
    slt     $at, v1, $at
    bnel    $at, $zero, lbl_80055C50
    addiu   v0, $zero, 0x0018          # v0 = 00000018
lbl_80055B28:
    lbu     t8, 0x001B(s0)             # 0000001B
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x001A(s0)             # 0000001A
    beq     t8, $zero, lbl_80055C4C
    sw      a2, 0x001C(s0)             # 0000001C
    lhu     t9, 0x0002(t0)             # 00000002
    lui     t1, 0x8012                 # t1 = 80120000
    sh      t9, 0x0000(a0)             # 8011BC52
    lbu     t1, -0x43D0(t1)            # 8011BC30
    or      a0, s1, $zero              # a0 = 00000000
    beql    t1, $zero, lbl_80055C50
    addiu   v0, $zero, 0x0018          # v0 = 00000018
    jal     func_8009D2F0
    lh      a1, 0x0016(s0)             # 00000016
    sw      $zero, 0x0090(v0)          # 00000090
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x0016(s0)             # 00000016
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x0016(s0)             # 00000016
    jal     func_8009D6DC
    addiu   a2, $zero, 0x0021          # a2 = 00000021
    lw      t2, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFEC
    lh      t3, 0x0008(t2)             # 00000008
    addiu   a3, $sp, 0x0030            # a3 = FFFFFFE0
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x003C($sp)
    lw      t4, 0x001C(s0)             # 0000001C
    lh      t5, 0x000A(t4)             # 0000000A
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0040($sp)
    lw      t6, 0x001C(s0)             # 0000001C
    lh      t7, 0x000C(t6)             # 0000000C
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0044($sp)
    lw      t8, 0x0020(s0)             # 00000020
    lh      t9, 0x0008(t8)             # 00000008
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0030($sp)
    lw      t1, 0x0020(s0)             # 00000020
    lh      t2, 0x000A(t1)             # 0000000A
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0034($sp)
    lw      t3, 0x0020(s0)             # 00000020
    lh      t4, 0x000C(t3)             # 0000000C
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0038($sp)
    jal     func_8009D328
    lh      a1, 0x0016(s0)             # 00000016
    lw      t5, 0x0020(s0)             # 00000020
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x0016(s0)             # 00000016
    jal     func_8009D55C
    lw      a2, 0x0004(t5)             # 00000004
lbl_80055C4C:
    addiu   v0, $zero, 0x0018          # v0 = 00000018
lbl_80055C50:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80055C64:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lw      t6, 0x0034($sp)
    lhu     t7, 0x0002(a3)             # 00000002
    lhu     v1, 0x0010(t6)             # 00000010
    slt     $at, t7, v1
    beql    $at, $zero, lbl_80055F2C
    lw      $ra, 0x0014($sp)
    lhu     a0, 0x0004(a3)             # 00000004
    slt     $at, a0, v1
    bnel    $at, $zero, lbl_80055F2C
    lw      $ra, 0x0014($sp)
    lhu     t8, 0x0006(a3)             # 00000006
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t9, 0x800F                 # t9 = 800F0000
    beq     t8, $at, lbl_80055D60
    lui     t6, 0x800F                 # t6 = 800F0000
    lhu     v0, 0x0000(a3)             # 00000000
    lhu     t9, -0x0330(t9)            # 800EFCD0
    lui     $at, 0x800F                # $at = 800F0000
    beql    v0, t9, lbl_80055D90
    slt     $at, v1, a0
    sh      v0, -0x0330($at)           # 800EFCD0
    lhu     v1, 0x0006(a3)             # 00000006
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     t0, 0x8010                 # t0 = 80100000
    bne     v1, $at, lbl_80055D0C
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t0, -0x73C0(t0)            # 800F8C40
    lw      t1, -0x598C(t1)            # 8011A674
    lw      a0, 0x0030($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    and     t2, t0, t1
    beql    t2, $zero, lbl_80055D10
    addiu   $at, $zero, 0x0004         # $at = 00000004
    jal     func_800DCE14
    lhu     a1, 0x0008(a3)             # 00000008
    b       lbl_80055F2C
    lw      $ra, 0x0014($sp)
lbl_80055D0C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80055D10:
    bne     v1, $at, lbl_80055D48
    lui     t3, 0x8010                 # t3 = 80100000
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x598C(t4)            # 8011A674
    lw      t3, -0x73C4(t3)            # 800F8C3C
    lw      a0, 0x0030($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    and     t5, t3, t4
    beql    t5, $zero, lbl_80055D4C
    lw      a0, 0x0030($sp)
    jal     func_800DCE14
    lhu     a1, 0x0008(a3)             # 00000008
    b       lbl_80055F2C
    lw      $ra, 0x0014($sp)
lbl_80055D48:
    lw      a0, 0x0030($sp)
lbl_80055D4C:
    lhu     a1, 0x0000(a3)             # 00000000
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    b       lbl_80055F2C
    lw      $ra, 0x0014($sp)
lbl_80055D60:
    lhu     v0, 0x0000(a3)             # 00000000
    lhu     t6, -0x032C(t6)            # FFFFFCD4
    lui     $at, 0x800F                # $at = 800F0000
    beql    v0, t6, lbl_80055D90
    slt     $at, v1, a0
    sh      v0, -0x032C($at)           # 800EFCD4
    lhu     a1, 0x0000(a3)             # 00000000
    jal     func_800DD400
    lw      a0, 0x0030($sp)
    b       lbl_80055F2C
    lw      $ra, 0x0014($sp)
    slt     $at, v1, a0
lbl_80055D90:
    bnel    $at, $zero, lbl_80055F2C
    lw      $ra, 0x0014($sp)
    lw      a0, 0x0030($sp)
    sh      v1, 0x0026($sp)
    sw      a3, 0x0038($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a2, 0x0034($sp)
    lw      a3, 0x0038($sp)
    beq     v0, $at, lbl_80055F00
    sb      v0, 0x002F($sp)
    beq     v0, $zero, lbl_80055F00
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_80055F00
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beql    v0, $at, lbl_80055F04
    lh      t6, 0x0026($sp)
    lhu     t7, 0x0010(a2)             # 00000010
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    bne     v0, $at, lbl_80055E80
    sh      t8, 0x0010(a2)             # 00000010
    lw      a0, 0x0030($sp)
    jal     func_800D6110
    sw      a3, 0x0038($sp)
    lw      a2, 0x0034($sp)
    beq     v0, $zero, lbl_80055E80
    lw      a3, 0x0038($sp)
    lw      a0, 0x0030($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, a0
    lbu     t9, 0x04BD(t9)             # 000104BD
    bnel    t9, $zero, lbl_80055E54
    lhu     a1, 0x000A(a3)             # 0000000A
    lhu     a1, 0x0008(a3)             # 00000008
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    beql    a1, $at, lbl_80055E44
    lhu     t0, 0x0010(a2)             # 00000010
    jal     func_800DCE80
    sw      a3, 0x0038($sp)
    lw      a2, 0x0034($sp)
    b       lbl_80055E80
    lw      a3, 0x0038($sp)
    lhu     t0, 0x0010(a2)             # 00000010
lbl_80055E44:
    addiu   t1, t0, 0x0001             # t1 = 00000001
    b       lbl_80055E80
    sh      t1, 0x0010(a2)             # 00000010
    lhu     a1, 0x000A(a3)             # 0000000A
lbl_80055E54:
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    beql    a1, $at, lbl_80055E78
    lhu     t2, 0x0010(a2)             # 00000010
    jal     func_800DCE80
    sw      a3, 0x0038($sp)
    lw      a2, 0x0034($sp)
    b       lbl_80055E80
    lw      a3, 0x0038($sp)
    lhu     t2, 0x0010(a2)             # 00000010
lbl_80055E78:
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x0010(a2)             # 00000010
lbl_80055E80:
    lbu     v0, 0x002F($sp)
    addiu   $at, $zero, 0x0009         # $at = 00000009
    lw      a0, 0x0030($sp)
    bnel    v0, $at, lbl_80055ED4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lhu     a1, 0x0008(a3)             # 00000008
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    beql    a1, $at, lbl_80055EC8
    lhu     t4, 0x0010(a2)             # 00000010
    sw      v0, 0x001C($sp)
    jal     func_800DCE80
    sw      a3, 0x0038($sp)
    lw      v0, 0x001C($sp)
    lw      a2, 0x0034($sp)
    lw      a3, 0x0038($sp)
    b       lbl_80055ED0
    lw      a0, 0x0030($sp)
    lhu     t4, 0x0010(a2)             # 00000010
lbl_80055EC8:
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x0010(a2)             # 00000010
lbl_80055ED0:
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_80055ED4:
    bnel    v0, $at, lbl_80055F04
    lh      t6, 0x0026($sp)
    jal     func_800D6110
    sw      a3, 0x0038($sp)
    lw      a2, 0x0034($sp)
    beq     v0, $zero, lbl_80055F00
    lw      a3, 0x0038($sp)
    lw      a0, 0x0030($sp)
    jal     func_800DD400
    lhu     a1, 0x0000(a3)             # 00000000
    lw      a2, 0x0034($sp)
lbl_80055F00:
    lh      t6, 0x0026($sp)
lbl_80055F04:
    lhu     t7, 0x0010(a2)             # 00000010
    bnel    t6, t7, lbl_80055F2C
    lw      $ra, 0x0014($sp)
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     $at, 0x800F                # $at = 800F0000
    sh      $zero, -0x0330($at)        # 800EFCD0
    lui     $at, 0x800F                # $at = 800F0000
    sh      $zero, -0x032C($at)        # 800EFCD4
    lw      $ra, 0x0014($sp)
lbl_80055F2C:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80055F38:
# Parse Cutscene Commands
# A0 = Global Context
# A1 = Cutscene Struct (GC + 0x1D64)
# A2 = Cutscene Pointer
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    or      s1, a2, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s0, 0x0014($sp)
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFF8
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80057030
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   s1, s1, 0x0004             # s1 = 00000004
    or      a1, s1, $zero              # a1 = 00000004
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFE8
    jal     func_80057030
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      t6, 0x0040($sp)
    lhu     t7, 0x0010(s2)             # 00000010
    addiu   s1, s1, 0x0004             # s1 = 00000008
    slt     $at, t6, t7
    beql    $at, $zero, lbl_80055FC0
    lw      t0, 0x0050($sp)
    lbu     t8, 0x0008(s2)             # 00000008
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    beql    t8, $at, lbl_80055FC0
    lw      t0, 0x0050($sp)
    b       lbl_800568E4
    sb      t9, 0x0008(s2)             # 00000008
    lw      t0, 0x0050($sp)
lbl_80055FC0:
    sh      $zero, 0x0056($sp)
    ori     s5, $zero, 0xFFFF          # s5 = 0000FFFF
    blez    t0, lbl_800568E4
    addiu   s4, $sp, 0x0048            # s4 = FFFFFFF0
lbl_80055FD0:
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFF4
    or      a1, s1, $zero              # a1 = 00000008
    jal     func_80057030
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      v1, 0x004C($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    addiu   s1, s1, 0x0004             # s1 = 0000000C
    beq     v1, $at, lbl_800568E4
    addiu   t1, v1, 0xFFFF             # t1 = FFFFFFFF
    slti    $at, v1, 0x0091
    bne     $at, $zero, lbl_80056010
    addiu   $at, $zero, 0x03E8         # $at = 000003E8
    beq     v1, $at, lbl_800567F4
    or      a0, s3, $zero              # a0 = 00000000
    b       lbl_80056890
    or      a0, s4, $zero              # a0 = FFFFFFF0
lbl_80056010:
    sltiu   $at, t1, 0x0090
    beq     $at, $zero, lbl_8005688C
    sll     t1, t1,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t1
    lw      t1, 0x757C($at)            # 8010757C
    jr      t1
    nop
lbl_80056030:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 0000000C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 00000010
    blez    v1, lbl_800568C4
lbl_80056050:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80052578
    or      a2, s1, $zero              # a2 = 00000010
    lw      v1, 0x0048($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_80056050
    addiu   s1, s1, 0x0030             # s1 = 00000040
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_80056084:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000040
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 00000044
    blez    v1, lbl_800568C4
lbl_800560A4:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80052D14
    or      a2, s1, $zero              # a2 = 00000044
    lw      v1, 0x0048($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_800560A4
    addiu   s1, s1, 0x0030             # s1 = 00000074
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_800560D8:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000074
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 00000078
    blez    v1, lbl_800568C4
lbl_800560F8:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80052D54
    or      a2, s1, $zero              # a2 = 00000078
    lw      v1, 0x0048($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_800560F8
    addiu   s1, s1, 0x0030             # s1 = 000000A8
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_8005612C:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 000000A8
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 000000AC
    blez    v1, lbl_800568C4
lbl_8005614C:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80052D90
    or      a2, s1, $zero              # a2 = 000000AC
    lw      v1, 0x0048($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_8005614C
    addiu   s1, s1, 0x0030             # s1 = 000000DC
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_80056180:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 000000DC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 000000E0
    blez    v1, lbl_800568C4
lbl_800561A0:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80052DCC
    or      a2, s1, $zero              # a2 = 000000E0
    lw      v1, 0x0048($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_800561A0
    addiu   s1, s1, 0x0030             # s1 = 00000110
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_800561D4:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000110
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 00000114
    blez    v1, lbl_800568C4
lbl_800561F4:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80052E4C
    or      a2, s1, $zero              # a2 = 00000114
    lw      v1, 0x0048($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_800561F4
    addiu   s1, s1, 0x000C             # s1 = 00000120
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_80056228:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000120
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 00000124
    blez    v1, lbl_800568C4
lbl_80056248:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80052E90
    or      a2, s1, $zero              # a2 = 00000124
    lw      v1, 0x0048($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_80056248
    addiu   s1, s1, 0x000C             # s1 = 00000130
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_8005627C:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000130
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 00000134
    blezl   v1, lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_800562A0:
    lhu     v0, 0x0010(s2)             # 00000010
    lhu     t2, 0x0002(s1)             # 00000136
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, t2, v0
    beql    $at, $zero, lbl_800562D0
    lw      v1, 0x0048($sp)
    lhu     t3, 0x0004(s1)             # 00000138
    slt     $at, t3, v0
    bnel    $at, $zero, lbl_800562D0
    lw      v1, 0x0048($sp)
    sw      s1, 0x0024(s2)             # 00000024
    lw      v1, 0x0048($sp)
lbl_800562D0:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_800562A0
    addiu   s1, s1, 0x0030             # s1 = 00000164
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_800562EC:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000164
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 00000168
    blezl   v1, lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_80056310:
    lhu     v0, 0x0010(s2)             # 00000010
    lhu     t4, 0x0002(s1)             # 0000016A
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, t4, v0
    beql    $at, $zero, lbl_80056340
    lw      v1, 0x0048($sp)
    lhu     t5, 0x0004(s1)             # 0000016C
    slt     $at, t5, v0
    bnel    $at, $zero, lbl_80056340
    lw      v1, 0x0048($sp)
    sw      s1, 0x0028(s2)             # 00000028
    lw      v1, 0x0048($sp)
lbl_80056340:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_80056310
    addiu   s1, s1, 0x0030             # s1 = 00000198
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_8005635C:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000198
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 0000019C
    blezl   v1, lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_80056380:
    lhu     v0, 0x0010(s2)             # 00000010
    lhu     t6, 0x0002(s1)             # 0000019E
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, t6, v0
    beql    $at, $zero, lbl_800563B0
    lw      v1, 0x0048($sp)
    lhu     t7, 0x0004(s1)             # 000001A0
    slt     $at, t7, v0
    bnel    $at, $zero, lbl_800563B0
    lw      v1, 0x0048($sp)
    sw      s1, 0x002C(s2)             # 0000002C
    lw      v1, 0x0048($sp)
lbl_800563B0:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_80056380
    addiu   s1, s1, 0x0030             # s1 = 000001CC
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_800563CC:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 000001CC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 000001D0
    blezl   v1, lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_800563F0:
    lhu     v0, 0x0010(s2)             # 00000010
    lhu     t8, 0x0002(s1)             # 000001D2
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, t8, v0
    beql    $at, $zero, lbl_80056420
    lw      v1, 0x0048($sp)
    lhu     t9, 0x0004(s1)             # 000001D4
    slt     $at, t9, v0
    bnel    $at, $zero, lbl_80056420
    lw      v1, 0x0048($sp)
    sw      s1, 0x0030(s2)             # 00000030
    lw      v1, 0x0048($sp)
lbl_80056420:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_800563F0
    addiu   s1, s1, 0x0030             # s1 = 00000200
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_8005643C:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000200
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 00000204
    blezl   v1, lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_80056460:
    lhu     v0, 0x0010(s2)             # 00000010
    lhu     t0, 0x0002(s1)             # 00000206
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, t0, v0
    beql    $at, $zero, lbl_80056490
    lw      v1, 0x0048($sp)
    lhu     t1, 0x0004(s1)             # 00000208
    slt     $at, t1, v0
    bnel    $at, $zero, lbl_80056490
    lw      v1, 0x0048($sp)
    sw      s1, 0x0034(s2)             # 00000034
    lw      v1, 0x0048($sp)
lbl_80056490:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_80056460
    addiu   s1, s1, 0x0030             # s1 = 00000234
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_800564AC:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000234
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 00000238
    blezl   v1, lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_800564D0:
    lhu     v0, 0x0010(s2)             # 00000010
    lhu     t2, 0x0002(s1)             # 0000023A
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, t2, v0
    beql    $at, $zero, lbl_80056500
    lw      v1, 0x0048($sp)
    lhu     t3, 0x0004(s1)             # 0000023C
    slt     $at, t3, v0
    bnel    $at, $zero, lbl_80056500
    lw      v1, 0x0048($sp)
    sw      s1, 0x0038(s2)             # 00000038
    lw      v1, 0x0048($sp)
lbl_80056500:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_800564D0
    addiu   s1, s1, 0x0030             # s1 = 00000268
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_8005651C:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000268
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 0000026C
    blezl   v1, lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_80056540:
    lhu     v0, 0x0010(s2)             # 00000010
    lhu     t4, 0x0002(s1)             # 0000026E
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, t4, v0
    beql    $at, $zero, lbl_80056570
    lw      v1, 0x0048($sp)
    lhu     t5, 0x0004(s1)             # 00000270
    slt     $at, t5, v0
    bnel    $at, $zero, lbl_80056570
    lw      v1, 0x0048($sp)
    sw      s1, 0x003C(s2)             # 0000003C
    lw      v1, 0x0048($sp)
lbl_80056570:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_80056540
    addiu   s1, s1, 0x0030             # s1 = 0000029C
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_8005658C:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 0000029C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 000002A0
    blezl   v1, lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_800565B0:
    lhu     v0, 0x0010(s2)             # 00000010
    lhu     t6, 0x0002(s1)             # 000002A2
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, t6, v0
    beql    $at, $zero, lbl_800565E0
    lw      v1, 0x0048($sp)
    lhu     t7, 0x0004(s1)             # 000002A4
    slt     $at, t7, v0
    bnel    $at, $zero, lbl_800565E0
    lw      v1, 0x0048($sp)
    sw      s1, 0x0040(s2)             # 00000040
    lw      v1, 0x0048($sp)
lbl_800565E0:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_800565B0
    addiu   s1, s1, 0x0030             # s1 = 000002D0
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_800565FC:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 000002D0
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 000002D4
    blezl   v1, lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_80056620:
    lhu     v0, 0x0010(s2)             # 00000010
    lhu     t8, 0x0002(s1)             # 000002D6
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, t8, v0
    beql    $at, $zero, lbl_80056650
    lw      v1, 0x0048($sp)
    lhu     t9, 0x0004(s1)             # 000002D8
    slt     $at, t9, v0
    bnel    $at, $zero, lbl_80056650
    lw      v1, 0x0048($sp)
    sw      s1, 0x0044(s2)             # 00000044
    lw      v1, 0x0048($sp)
lbl_80056650:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_80056620
    addiu   s1, s1, 0x0030             # s1 = 00000304
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_8005666C:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000304
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 00000308
    blezl   v1, lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_80056690:
    lhu     v0, 0x0010(s2)             # 00000010
    lhu     t0, 0x0002(s1)             # 0000030A
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, t0, v0
    beql    $at, $zero, lbl_800566C0
    lw      v1, 0x0048($sp)
    lhu     t1, 0x0004(s1)             # 0000030C
    slt     $at, t1, v0
    bnel    $at, $zero, lbl_800566C0
    lw      v1, 0x0048($sp)
    sw      s1, 0x0048(s2)             # 00000048
    lw      v1, 0x0048($sp)
lbl_800566C0:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_80056690
    addiu   s1, s1, 0x0030             # s1 = 00000338
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_800566DC:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000338
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 0000033C
    blezl   v1, lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_80056700:
    lhu     v0, 0x0010(s2)             # 00000010
    lhu     t2, 0x0002(s1)             # 0000033E
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, t2, v0
    beql    $at, $zero, lbl_80056730
    lw      v1, 0x0048($sp)
    lhu     t3, 0x0004(s1)             # 00000340
    slt     $at, t3, v0
    bnel    $at, $zero, lbl_80056730
    lw      v1, 0x0048($sp)
    sw      s1, 0x004C(s2)             # 0000004C
    lw      v1, 0x0048($sp)
lbl_80056730:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_80056700
    addiu   s1, s1, 0x0030             # s1 = 0000036C
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_8005674C:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 0000036C
    jal     func_80055630
    or      a3, $zero, $zero           # a3 = 00000000
    b       lbl_800568C4
    addu    s1, s1, v0
lbl_80056768:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 0000036C
    jal     func_80055630
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    b       lbl_800568C4
    addu    s1, s1, v0
lbl_80056784:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 0000036C
    jal     func_80055784
    or      a3, $zero, $zero           # a3 = 00000000
    b       lbl_800568C4
    addu    s1, s1, v0
lbl_800567A0:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 0000036C
    jal     func_80055784
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    b       lbl_800568C4
    addu    s1, s1, v0
lbl_800567BC:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 0000036C
    jal     func_800558E0
    or      a3, $zero, $zero           # a3 = 00000000
    b       lbl_800568C4
    addu    s1, s1, v0
lbl_800567D8:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 0000036C
    jal     func_80055ABC
    or      a3, $zero, $zero           # a3 = 00000000
    b       lbl_800568C4
    addu    s1, s1, v0
lbl_800567F4:
    addiu   s1, s1, 0x0004             # s1 = 00000370
    or      a2, s1, $zero              # a2 = 00000370
    jal     func_80052F34
    or      a1, s2, $zero              # a1 = 00000000
    b       lbl_800568C4
    addiu   s1, s1, 0x0008             # s1 = 00000378
lbl_8005680C:
    or      a0, s4, $zero              # a0 = FFFFFFF0
    or      a1, s1, $zero              # a1 = 00000378
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 0000037C
    blezl   v1, lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_80056830:
    lhu     t4, 0x0000(s1)             # 0000037C
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    beql    s5, t4, lbl_80056850
    lw      v1, 0x0048($sp)
    jal     func_80055C64
    or      a2, s1, $zero              # a2 = 0000037C
    lw      v1, 0x0048($sp)
lbl_80056850:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_80056830
    addiu   s1, s1, 0x000C             # s1 = 00000388
    b       lbl_800568C8
    lh      v0, 0x0056($sp)
lbl_80056870:
    addiu   s1, s1, 0x0004             # s1 = 0000038C
    or      a2, s1, $zero              # a2 = 0000038C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80054C50
    or      a1, s2, $zero              # a1 = 00000000
    b       lbl_800568C4
    addiu   s1, s1, 0x0008             # s1 = 00000394
lbl_8005688C:
    or      a0, s4, $zero              # a0 = FFFFFFF0
lbl_80056890:
    or      a1, s1, $zero              # a1 = 00000394
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80057030
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v1, 0x0048($sp)
    addiu   s1, s1, 0x0004             # s1 = 00000398
    blez    v1, lbl_800568C4
lbl_800568AC:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bne     $at, $zero, lbl_800568AC
    addiu   s1, s1, 0x0030             # s1 = 000003C8
lbl_800568C4:
    lh      v0, 0x0056($sp)
lbl_800568C8:
    lw      t5, 0x0050($sp)
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slt     $at, v0, t5
    bne     $at, $zero, lbl_80055FD0
    sh      v0, 0x0056($sp)
lbl_800568E4:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_80056908:
# Related to 80052364
# A0 = Global Context
# A1 = Cutscene Struct ptr
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A28(t6)            # 8011A5D8
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    slt     $at, t6, $at
    bnel    $at, $zero, lbl_80056940
    lw      $ra, 0x0014($sp)
    lhu     t7, 0x0010(a1)             # 00000010
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0010(a1)             # 00000010
    jal     func_80055F38
    lw      a2, 0x1D68(a0)             # 00001D68
    lw      $ra, 0x0014($sp)
lbl_80056940:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8005694C:
# Related to 80052364
# A0 = Global Context
# A1 = Cutscene Struct ptr
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80052474
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    beql    v0, $zero, lbl_80056980
    lw      $ra, 0x0014($sp)
    jal     func_800C75DC
    or      a0, $zero, $zero           # a0 = 00000000
    lw      t6, 0x001C($sp)
    sb      $zero, 0x0008(t6)          # 00000008
    lw      $ra, 0x0014($sp)
lbl_80056980:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8005698C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80052474
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    beq     v0, $zero, lbl_80056A80
    lui     v1, 0x8012                 # v1 = 80120000
    sw      $zero, 0x0024(s0)          # 00000024
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800569C0:
    sll     t6, v0,  2
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    addu    t7, s0, t6
    bne     $at, $zero, lbl_800569C0
    sw      $zero, 0x0028(t7)          # 00000028
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $zero, 0x0008(v1)          # 8011A5D8
    sw      $zero, 0x135C(v1)          # 8011B92C
    lui     t8, 0x8012                 # t8 = 80120000
    lbu     t8, -0x43D0(t8)            # 8011BC30
    beq     t8, $zero, lbl_80056A74
    nop
    lw      v0, 0x0000(v1)             # 8011A5D0
    addiu   $at, $zero, 0x028A         # $at = 0000028A
    lw      a0, 0x0020($sp)
    beq     v0, $at, lbl_80056A2C
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   $at, $zero, 0x028E         # $at = 0000028E
    beq     v0, $at, lbl_80056A2C
    addiu   $at, $zero, 0x0292         # $at = 00000292
    beq     v0, $at, lbl_80056A2C
    addiu   $at, $zero, 0x0476         # $at = 00000476
    bne     v0, $at, lbl_80056A38
    nop
lbl_80056A2C:
    lh      a1, -0x43AC(a1)            # 8011BC54
    jal     func_8009D5F0
    lh      a2, 0x0016(s0)             # 00000016
lbl_80056A38:
    lui     a1, 0x8012                 # a1 = 80120000
    lh      a1, -0x43AC(a1)            # 8011BC54
    lw      a0, 0x0020($sp)
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      a0, 0x0020($sp)
    jal     func_8009D21C
    lh      a1, 0x0016(s0)             # 00000016
    lui     t0, 0x8012                 # t0 = 80120000
    lh      t0, -0x43AC(t0)            # 8011BC54
    lw      t9, 0x0020($sp)
    sll     t1, t0,  2
    addu    t2, t9, t1
    jal     func_80049DB4
    lw      a0, 0x0790(t2)             # 00000790
lbl_80056A74:
    jal     func_800C75DC
    or      a0, $zero, $zero           # a0 = 00000000
    sb      $zero, 0x0008(s0)          # 00000008
lbl_80056A80:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80056A94:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x461C(t6)            # 8011B9E4
    beq     t6, $zero, lbl_80056ADC
    nop
    lbu     t7, 0x0008(s0)             # 00000008
    bne     t7, $zero, lbl_80056ADC
    nop
    jal     func_8007943C
    lw      a0, 0x0020($sp)
    bne     v0, $zero, lbl_80056ADC
    ori     t8, $zero, 0xFFFD          # t8 = 0000FFFD
    lui     $at, 0x8012                # $at = 80120000
    sw      t8, -0x5A28($at)           # 8011A5D8
lbl_80056ADC:
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x5A28(t9)            # 8011A5D8
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    slt     $at, t9, $at
    bnel    $at, $zero, lbl_80056C04
    lw      $ra, 0x001C($sp)
    lbu     t0, 0x0008(s0)             # 00000008
    lw      a0, 0x0020($sp)
    bnel    t0, $zero, lbl_80056C04
    lw      $ra, 0x001C($sp)
    jal     func_800598AC
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x800F                # $at = 800F0000
    sh      $zero, -0x0330($at)        # 800EFCD0
    lui     $at, 0x800F                # $at = 800F0000
    sh      $zero, -0x032C($at)        # 800EFCD4
    sh      $zero, 0x0012(s0)          # 00000012
    sw      $zero, 0x0024(s0)          # 00000024
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80056B28:
    sll     t1, v0,  2
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0x00FF             # v0 = 00000001
    slti    $at, v0, 0x000A
    addu    t2, s0, t1
    bne     $at, $zero, lbl_80056B28
    sw      $zero, 0x0028(t2)          # 00000028
    lbu     t3, 0x0008(s0)             # 00000008
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t4, t3, 0x0001             # t4 = 00000001
    andi    t5, t4, 0x00FF             # t5 = 00000001
    bne     t5, $at, lbl_80056BF8
    sb      t4, 0x0008(s0)             # 00000008
    jal     func_800C75DC
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    ori     v0, $zero, 0xFFFF          # v0 = 0000FFFF
    sh      v0, 0x0010(s0)             # 00000010
    sh      v0, 0x0018(s0)             # 00000018
    lui     $at, 0x8012                # $at = 80120000
    sh      v0, -0x43B2($at)           # 8011BC4E
    lui     $at, 0x8012                # $at = 80120000
    sh      v0, -0x43B0($at)           # 8011BC50
    lui     $at, 0x8012                # $at = 80120000
    sh      v0, -0x43AE($at)           # 8011BC52
    sb      $zero, 0x001A(s0)          # 0000001A
    sb      $zero, 0x001B(s0)          # 0000001B
    lw      t6, 0x0020($sp)
    lui     t8, 0x8012                 # t8 = 80120000
    lbu     t8, -0x43D0(t8)            # 8011BC30
    lh      t7, 0x07A0(t6)             # 000007A0
    lui     $at, 0x8012                # $at = 80120000
    beq     t8, $zero, lbl_80056BB8
    sh      t7, -0x43AC($at)           # 8011BC54
    jal     func_8009D0F0
    or      a0, t6, $zero              # a0 = 00000000
    sw      v0, 0x0014(s0)             # 00000014
lbl_80056BB8:
    lui     t9, 0x8012                 # t9 = 80120000
    lbu     t9, -0x461C(t9)            # 8011B9E4
    bnel    t9, $zero, lbl_80056BF0
    lw      a0, 0x0020($sp)
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_80099620
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    jal     func_80099640
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    lbu     t0, 0x0008(s0)             # 00000008
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x0008(s0)             # 00000008
    lw      a0, 0x0020($sp)
lbl_80056BF0:
    jal     func_80056908
    or      a1, s0, $zero              # a1 = 00000000
lbl_80056BF8:
    lui     $at, 0x8012                # $at = 80120000
    sb      $zero, -0x461C($at)        # 8011B9E4
    lw      $ra, 0x001C($sp)
lbl_80056C04:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80056C14:
    sw      a0, 0x0000($sp)
    lui     $at, 0x8012                # $at = 80120000
    sh      $zero, -0x43CE($at)        # 8011BC32
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, v0, 0x0001             # v0 = 00000001
lbl_80056C28:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0014
    bnel    $at, $zero, lbl_80056C28
    addiu   v0, v0, 0x0001             # v0 = 00000002
    lui     $at, 0x8012                # $at = 80120000
    sb      $zero, -0x43B4($at)        # 8011BC4C
    jr      $ra
    nop


func_80056C4C:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBC32             # v0 = 8011BC32
    sw      a0, 0x0000($sp)
    lhu     t6, 0x0000(v0)             # 8011BC32
    beq     t6, $zero, lbl_80056C68
    nop
    sh      $zero, 0x0000(v0)          # 8011BC32
lbl_80056C68:
    jr      $ra
    nop


func_80056C70:
# Calls entrance cutscene table in code.
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0034($sp)
    sw      s7, 0x0030($sp)
    sw      s6, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0038($sp)
    lui     s4, 0x800F                 # s4 = 800F0000
    lui     s3, 0x8012                 # s3 = 80120000
    addiu   s3, s3, 0xA5D0             # s3 = 8011A5D0
    addiu   s4, s4, 0xFD04             # s4 = 800EFD04
    or      s2, $zero, $zero           # s2 = 00000000
    ori     s7, $zero, 0xFFF0          # s7 = 0000FFF0
    addiu   s6, $zero, 0x0018          # s6 = 00000018
    addiu   s5, $zero, 0x0002          # s5 = 00000002
    sll     t6, s2,  3
lbl_80056CC0:
    addu    s1, s4, t6
    lbu     s0, 0x0002(s1)             # 00000002
    lw      v0, 0x0000(s3)             # 8011A5D0
    bnel    s5, s0, lbl_80056CDC
    lhu     t7, 0x0000(s1)             # 00000000
    lbu     s0, 0x0007(s3)             # 8011A5D7
    lhu     t7, 0x0000(s1)             # 00000000
lbl_80056CDC:
    bnel    v0, t7, lbl_80056D50
    addiu   s2, s2, 0x0001             # s2 = 00000001
    jal     func_800288B4
    lbu     a0, 0x0003(s1)             # 00000003
    beql    v0, $zero, lbl_80056D04
    lw      t9, 0x0008(s3)             # 8011A5D8
    lbu     t8, 0x0003(s1)             # 00000003
    bnel    s6, t8, lbl_80056D50
    addiu   s2, s2, 0x0001             # s2 = 00000002
    lw      t9, 0x0008(s3)             # 8011A5D8
lbl_80056D04:
    slt     $at, t9, s7
    beql    $at, $zero, lbl_80056D50
    addiu   s2, s2, 0x0001             # s2 = 00000003
    lbu     t0, 0x0007(s3)             # 8011A5D7
    bnel    s0, t0, lbl_80056D50
    addiu   s2, s2, 0x0001             # s2 = 00000004
    lw      t1, 0x1364(s3)             # 8011B934
    bgtzl   t1, lbl_80056D50
    addiu   s2, s2, 0x0001             # s2 = 00000005
    jal     func_800288E0
    lbu     a0, 0x0003(s1)             # 00000003
    lw      a0, 0x0038($sp)
    jal     func_80056F98
    lw      a1, 0x0004(s1)             # 00000004
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sb      t2, 0x1414(s3)             # 8011B9E4
    b       lbl_80056D64
    sb      $zero, 0x13C7(s3)          # 8011B997
    addiu   s2, s2, 0x0001             # s2 = 00000006
lbl_80056D50:
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0022
    bnel    $at, $zero, lbl_80056CC0
    sll     t6, s2,  3
lbl_80056D64:
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


func_80056D90:
# Triggers Certain Conditional cutscenes
# Handles the following cutscenes:
# Learning Requiem, Starting Kakariko Fire -> Learning Nocturne,
# Getting Fairy Ocarina, Starting Light Arrow cutscene sequence, Ganon's Tower Collapses cutscene
# A0 = Global Context
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xA5D0             # s0 = 8011A5D0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x135C(s0)             # 8011B92C
    bnel    t6, $zero, lbl_80056F88
    lw      $ra, 0x001C($sp)
    lw      t7, 0x1364(s0)             # 8011B934
    bgtzl   t7, lbl_80056F88
    lw      $ra, 0x001C($sp)
    lw      t8, 0x0008(s0)             # 8011A5D8
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    slt     $at, t8, $at
    beql    $at, $zero, lbl_80056F88
    lw      $ra, 0x001C($sp)
    lw      t9, 0x0000(s0)             # 8011A5D0
    addiu   $at, $zero, 0x01E1         # $at = 000001E1
    bnel    t9, $at, lbl_80056E14
    lw      t2, 0x0000(s0)             # 8011A5D0
    jal     func_800288B4
    addiu   a0, $zero, 0x00AC          # a0 = 000000AC
    bnel    v0, $zero, lbl_80056E14
    lw      t2, 0x0000(s0)             # 8011A5D0
    jal     func_800288E0
    addiu   a0, $zero, 0x00AC          # a0 = 000000AC
    addiu   t0, $zero, 0x0123          # t0 = 00000123
    ori     t1, $zero, 0xFFF0          # t1 = 0000FFF0
    sw      t0, 0x0000(s0)             # 8011A5D0
    b       lbl_80056F84
    sw      t1, 0x0008(s0)             # 8011A5D8
    lw      t2, 0x0000(s0)             # 8011A5D0
lbl_80056E14:
    addiu   $at, $zero, 0x00DB         # $at = 000000DB
    bnel    t2, $at, lbl_80056E74
    lw      t8, 0x0000(s0)             # 8011A5D0
    lw      t3, 0x0004(s0)             # 8011A5D4
    bnel    t3, $zero, lbl_80056E74
    lw      t8, 0x0000(s0)             # 8011A5D0
    lhu     v0, 0x0EDC(s0)             # 8011B4AC
    andi    t4, v0, 0x0100             # t4 = 00000000
    beq     t4, $zero, lbl_80056E70
    andi    t5, v0, 0x0200             # t5 = 00000000
    beq     t5, $zero, lbl_80056E70
    andi    t6, v0, 0x0400             # t6 = 00000000
    beql    t6, $zero, lbl_80056E74
    lw      t8, 0x0000(s0)             # 8011A5D0
    jal     func_800288B4
    addiu   a0, $zero, 0x00AA          # a0 = 000000AA
    bnel    v0, $zero, lbl_80056E74
    lw      t8, 0x0000(s0)             # 8011A5D0
    jal     func_800288E0
    addiu   a0, $zero, 0x00AA          # a0 = 000000AA
    ori     t7, $zero, 0xFFF0          # t7 = 0000FFF0
    b       lbl_80056F84
    sw      t7, 0x0008(s0)             # 8011A5D8
lbl_80056E70:
    lw      t8, 0x0000(s0)             # 8011A5D0
lbl_80056E74:
    addiu   $at, $zero, 0x05E0         # $at = 000005E0
    bne     t8, $at, lbl_80056EB8
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x00C1          # a0 = 000000C1
    bne     v0, $zero, lbl_80056EB8
    nop
    jal     func_800288E0
    addiu   a0, $zero, 0x00C1          # a0 = 000000C1
    lw      a0, 0x0020($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    addiu   t9, $zero, 0x011E          # t9 = 0000011E
    ori     t0, $zero, 0xFFF0          # t0 = 0000FFF0
    sw      t9, 0x0000(s0)             # 8011A5D0
    b       lbl_80056F84
    sw      t0, 0x0008(s0)             # 8011A5D8
lbl_80056EB8:
    lui     v1, 0x8010                 # v1 = 80100000
    addiu   v1, v1, 0x8BF0             # v1 = 800F8BF0
    lw      t1, 0x000C(v1)             # 800F8BFC
    lw      v0, 0x00A4(s0)             # 8011A674
    and     t2, t1, v0
    beq     t2, $zero, lbl_80056F3C
    nop
    lw      t3, 0x0010(v1)             # 800F8C00
    and     t4, t3, v0
    beq     t4, $zero, lbl_80056F3C
    nop
    lw      t5, 0x0004(s0)             # 8011A5D4
    bne     t5, $zero, lbl_80056F3C
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x00C4          # a0 = 000000C4
    bne     v0, $zero, lbl_80056F3C
    nop
    lw      v0, 0x0000(s0)             # 8011A5D0
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   $at, $zero, 0x0043         # $at = 00000043
    sll     t6, v0,  2
    addu    t7, t7, t6
    lb      t7, -0x6370(t7)            # 800F9C90
    bne     t7, $at, lbl_80056F3C
    nop
    jal     func_800288E0
    addiu   a0, $zero, 0x00C4          # a0 = 000000C4
    addiu   t8, $zero, 0x0053          # t8 = 00000053
    ori     t9, $zero, 0xFFF8          # t9 = 0000FFF8
    sw      t8, 0x0000(s0)             # 8011A5D0
    b       lbl_80056F84
    sw      t9, 0x0008(s0)             # 8011A5D8
lbl_80056F3C:
    jal     func_800288B4
    addiu   a0, $zero, 0x00C7          # a0 = 000000C7
    bnel    v0, $zero, lbl_80056F88
    lw      $ra, 0x001C($sp)
    lw      v0, 0x0000(s0)             # 8011A5D0
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   $at, $zero, 0x004F         # $at = 0000004F
    sll     t0, v0,  2
    addu    t1, t1, t0
    lb      t1, -0x6370(t1)            # 800F9C90
    bnel    t1, $at, lbl_80056F88
    lw      $ra, 0x001C($sp)
    jal     func_800288E0
    addiu   a0, $zero, 0x00C7          # a0 = 000000C7
    addiu   t2, $zero, 0x0517          # t2 = 00000517
    ori     t3, $zero, 0xFFF0          # t3 = 0000FFF0
    sw      t2, 0x0000(s0)             # 8011A5D0
    sw      t3, 0x0008(s0)             # 8011A5D8
lbl_80056F84:
    lw      $ra, 0x001C($sp)
lbl_80056F88:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80056F98:
# Set Cutscene Pointer (Area Intro Cutscenes Only?)
# Contains Disk Drive Hook
# A0 = Global Context
# A1 = Segment Offset
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beql    v0, $zero, lbl_80056FE0
    sll     v0, a1,  4
    lw      v1, 0x0078(v0)             # 80120078
    lui     a2, 0x800F                 # a2 = 800F0000
    addiu   a2, a2, 0xFE14             # a2 = 800EFE14
    beql    v1, $zero, lbl_80056FE0
    sll     v0, a1,  4
    sw      a0, 0x0018($sp)
    jalr    $ra, v1
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    bne     v0, $zero, lbl_8005701C
    lw      a1, 0x001C($sp)
    sll     v0, a1,  4
lbl_80056FE0:
    srl     v0, v0, 28
    beq     v0, $zero, lbl_80057018
    sll     t6, v0,  2
    lui     t7, 0x8012                 # t7 = 80120000
    addu    t7, t7, t6
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t7, 0x0C38(t7)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t0, t9, $at
    b       lbl_8005701C
    sw      t0, 0x1D68(a0)             # 00001D68
lbl_80057018:
    sw      a1, 0x1D68(a0)             # 00001D68
lbl_8005701C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
