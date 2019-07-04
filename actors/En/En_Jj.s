.section .text
func_80901B70:
    sw      a1, 0x02EC(a0)             # 000002EC
    jr      $ra
    nop


func_80901B7C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lui     a1, %hi(var_80903040)      # a1 = 80900000
    sw      $zero, 0x004C($sp)
    addiu   a1, a1, %lo(var_80903040)  # a1 = 80903040
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    nop
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80901BF4
    addiu   a1, s0, 0x0154             # a1 = 00000154
    beq     v0, $zero, lbl_80901D3C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80901DA8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80901DFC
    lw      $ra, 0x003C($sp)
lbl_80901BF4:
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0198             # t6 = 00000198
    addiu   t7, s0, 0x021C             # t7 = 0000021C
    addiu   t8, $zero, 0x0016          # t8 = 00000016
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x1F4C             # a3 = 06001F4C
    addiu   a2, a2, 0xB9A8             # a2 = 0600B9A8
    jal     func_8008C788
    sw      a1, 0x0044($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1F4C             # a1 = 06001F4C
    jal     func_8008D2D4
    lw      a0, 0x0044($sp)
    sh      $zero, 0x02FA(s0)          # 000002FA
    sb      $zero, 0x02FE(s0)          # 000002FE
    sb      $zero, 0x02FF(s0)          # 000002FF
    sb      $zero, 0x0300(s0)          # 00000300
    sb      $zero, 0x0301(s0)          # 00000301
    lui     t9, 0x8012                 # t9 = 80120000
    lhu     t9, -0x4B56(t9)            # 8011B4AA
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80901FB4)     # a1 = 80900000
    andi    t0, t9, 0x0400             # t0 = 00000000
    beq     t0, $zero, lbl_80901C7C
    nop
    lui     a1, %hi(func_80901F70)     # a1 = 80900000
    addiu   a1, a1, %lo(func_80901F70) # a1 = 80901F70
    jal     func_80901B70
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80901C88
    lui     $at, 0x4120                # $at = 41200000
lbl_80901C7C:
    jal     func_80901B70
    addiu   a1, a1, %lo(func_80901FB4) # a1 = 00001FB4
    lui     $at, 0x4120                # $at = 41200000
lbl_80901C88:
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f4, 0x0024(s0)            # 00000024
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    sub.s   $f8, $f4, $f6
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x005A          # a3 = 0000005A
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0028(s0)           # 00000028
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      $zero, 0x001C($sp)
    swc1    $f16, 0x0018($sp)
    lh      t1, 0x0032(s0)             # 00000032
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    jal     func_800253F0
    sw      t1, 0x0020($sp)
    sw      v0, 0x02F0(s0)             # 000002F0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0A1C             # a0 = 06000A1C
    jal     func_80033EF4
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFF4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x004C($sp)
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a1, s0, 0x02A0             # a1 = 000002A0
    sw      a1, 0x0044($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80903014)      # a3 = 80900000
    lw      a1, 0x0044($sp)
    addiu   a3, a3, %lo(var_80903014)  # a3 = 80903014
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    beq     $zero, $zero, lbl_80901DF8
    sb      t2, 0x00AE(s0)             # 000000AE
lbl_80901D3C:
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x1830             # a0 = 06001830
    jal     func_80033EF4
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFF4
    addiu   a1, s1, 0x0810             # a1 = 00000810
    sw      a1, 0x0044($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x004C($sp)
    lw      a1, 0x0044($sp)
    sw      v0, 0x013C(s0)             # 0000013C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80031588
    or      a2, v0, $zero              # a2 = 00000000
    lui     t3, %hi(func_809022CC)     # t3 = 80900000
    addiu   t3, t3, %lo(func_809022CC) # t3 = 809022CC
    lui     a1, 0x3DB2                 # a1 = 3DB20000
    sw      t3, 0x0130(s0)             # 00000130
    sw      $zero, 0x0134(s0)          # 00000134
    ori     a1, a1, 0x2D0E             # a1 = 3DB22D0E
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80901DFC
    lw      $ra, 0x003C($sp)
lbl_80901DA8:
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xBA8C             # a0 = 0600BA8C
    jal     func_80033EF4
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFF4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x004C($sp)
    lui     t4, %hi(func_809022CC)     # t4 = 80900000
    addiu   t4, t4, %lo(func_809022CC) # t4 = 809022CC
    lui     a1, 0x3DB2                 # a1 = 3DB20000
    sw      v0, 0x013C(s0)             # 0000013C
    sw      t4, 0x0130(s0)             # 00000130
    sw      $zero, 0x0134(s0)          # 00000134
    ori     a1, a1, 0x2D0E             # a1 = 3DB22D0E
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
lbl_80901DF8:
    lw      $ra, 0x003C($sp)
lbl_80901DFC:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80901E0C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lw      t7, 0x0018($sp)
    lh      v0, 0x001C(t6)             # 0000001C
    beql    v0, $at, lbl_80901E50
    lw      a2, 0x013C(t7)             # 0000013C
    beq     v0, $zero, lbl_80901E78
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80901E7C
    lw      t8, 0x0018($sp)
    beq     $zero, $zero, lbl_80901E90
    lw      $ra, 0x0014($sp)
    lw      a2, 0x013C(t7)             # 0000013C
lbl_80901E50:
    sw      a3, 0x001C($sp)
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80031638              # DynaPolyInfo_delReserve
    addiu   a1, a3, 0x0810             # a1 = 00000810
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x02A0             # a1 = 000002A0
    beq     $zero, $zero, lbl_80901E90
    lw      $ra, 0x0014($sp)
lbl_80901E78:
    lw      t8, 0x0018($sp)
lbl_80901E7C:
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t8)             # 0000013C
    lw      $ra, 0x0014($sp)
lbl_80901E90:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80901E9C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lbu     v0, 0x02FF(a2)             # 000002FF
    blez    v0, lbl_80901EBC
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80901F0C
    sb      t6, 0x02FF(a2)             # 000002FF
lbl_80901EBC:
    lbu     t7, 0x02FE(a2)             # 000002FE
    addiu   t8, t7, 0x0001             # t8 = 00000001
    andi    t9, t8, 0x00FF             # t9 = 00000001
    slti    $at, t9, 0x0003
    bne     $at, $zero, lbl_80901F0C
    sb      t8, 0x02FE(a2)             # 000002FE
    lbu     v0, 0x0300(a2)             # 00000300
    sb      $zero, 0x02FE(a2)          # 000002FE
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    blez    v0, lbl_80901EF4
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    beq     $zero, $zero, lbl_80901F0C
    sb      t0, 0x0300(a2)             # 00000300
lbl_80901EF4:
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lbu     t1, 0x0301(a2)             # 00000301
    sb      v0, 0x02FF(a2)             # 000002FF
    sb      t1, 0x0300(a2)             # 00000300
lbl_80901F0C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80901F1C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x02F8(a0)             # 000002F8
    lw      v1, 0x02F0(a0)             # 000002F0
    slti    $at, v0, 0xEBB0
    bne     $at, $zero, lbl_80901F60
    addiu   t6, v0, 0xFF9A             # t6 = FFFFFF9A
    sh      t6, 0x02F8(a0)             # 000002F8
    lh      t7, 0x02F8(a0)             # 000002F8
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    slti    $at, t7, 0xF5D8
    beql    $at, $zero, lbl_80901F64
    lw      $ra, 0x0014($sp)
    jal     func_800314D8
    lw      a2, 0x013C(v1)             # 0000013C
lbl_80901F60:
    lw      $ra, 0x0014($sp)
lbl_80901F64:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80901F70:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    lui     a1, %hi(func_80901F1C)     # a1 = 80900000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80901FA8
    lw      $ra, 0x0014($sp)
    jal     func_80901B70
    addiu   a1, a1, %lo(func_80901F1C) # a1 = 80901F1C
    lw      $ra, 0x0014($sp)
lbl_80901FA8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80901FB4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lw      v0, 0x1C44(s1)             # 00001C44
    lui     a0, %hi(var_80903050)      # a0 = 80900000
    addiu   a0, a0, %lo(var_80903050)  # a0 = 80903050
    jal     func_80063EB8
    addiu   a1, v0, 0x0024             # a1 = 00000024
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, s1
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80902030
    lui     $at, 0x0001                # $at = 00010000
    lw      t9, 0x1D44(t9)             # 00011D44
    or      a0, s1, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    beq     v0, $zero, lbl_8090202C
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    lui     a1, %hi(func_80902070)     # a1 = 80900000
    sh      t6, 0x02FC(s0)             # 000002FC
    addiu   a1, a1, %lo(func_80902070) # a1 = 80902070
    jal     func_80901B70
    or      a0, s0, $zero              # a0 = 00000000
lbl_8090202C:
    lui     $at, 0x0001                # $at = 00010000
lbl_80902030:
    addiu   t7, $zero, 0xFB23          # t7 = FFFFFB23
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t0, $zero, 0xFFD0          # t0 = FFFFFFD0
    ori     $at, $at, 0x1E60           # $at = 00011E60
    sh      t7, 0x02E6(s0)             # 000002E6
    sh      t8, 0x02E8(s0)             # 000002E8
    sh      t0, 0x02EA(s0)             # 000002EA
    addu    a1, s1, $at
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, s0, 0x02A0             # a2 = 000002A0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80902070:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x02FC(a0)             # 000002FC
    lui     a1, %hi(func_80902274)     # a1 = 80900000
    lw      v1, 0x02F0(a0)             # 000002F0
    blez    v0, lbl_8090209C
    addiu   a1, a1, %lo(func_80902274) # a1 = 80902274
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80902108
    sh      t6, 0x02FC(a0)             # 000002FC
lbl_8090209C:
    sw      v1, 0x001C($sp)
    jal     func_80901B70
    sw      a3, 0x0024($sp)
    lw      a0, 0x0024($sp)
    lui     t7, %hi(var_809024C4)      # t7 = 80900000
    lw      v1, 0x001C($sp)
    addiu   t7, t7, %lo(var_809024C4)  # t7 = 809024C4
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    sw      t7, 0x1D68(a0)             # 00001D68
    sb      t8, -0x461C($at)           # 8011B9E4
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_800314D8
    lw      a2, 0x013C(v1)             # 0000013C
    lw      a3, 0x0024($sp)
    lh      t9, 0x07A0(a3)             # 000007A0
    sll     t0, t9,  2
    addu    t1, a3, t0
    jal     func_80049DB4
    lw      a0, 0x0790(t1)             # 00000790
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t2, 0x0EDA(v0)             # 8011B4AA
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    ori     t3, t2, 0x0400             # t3 = 00000400
    jal     func_800646F0
    sh      t3, 0x0EDA(v0)             # 8011B4AA
lbl_80902108:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80902118:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x1D94(a2)             # 00001D94
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lhu     v0, 0x0000(t6)             # 00000000
    beq     v0, $at, lbl_80902158
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80902198
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $at, lbl_80902210
    lhu     v1, 0x02FA(s0)             # 000002FA
    beq     $zero, $zero, lbl_80902238
    lhu     v1, 0x02FA(s0)             # 000002FA
lbl_80902158:
    lhu     v1, 0x02FA(s0)             # 000002FA
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    andi    t7, v1, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_8090223C
    andi    t8, v1, 0x0001             # t8 = 00000000
    jal     func_80063BF0
    sb      $zero, 0x02FE(s0)          # 000002FE
    lhu     t8, 0x02FA(s0)             # 000002FA
    sb      v0, 0x02FF(s0)             # 000002FF
    sb      $zero, 0x0300(s0)          # 00000300
    xori    t9, t8, 0x0002             # t9 = 00000002
    sb      $zero, 0x0301(s0)          # 00000301
    sh      t9, 0x02FA(s0)             # 000002FA
    beq     $zero, $zero, lbl_80902238
    andi    v1, t9, 0xFFFF             # v1 = 00000002
lbl_80902198:
    lhu     t0, 0x02FA(s0)             # 000002FA
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    ori     t1, t0, 0x0001             # t1 = 00000001
    andi    v1, t1, 0xFFFF             # v1 = 00000001
    andi    t2, v1, 0x0008             # t2 = 00000000
    bne     t2, $zero, lbl_80902238
    sh      t1, 0x02FA(s0)             # 000002FA
    lui     $at, %hi(var_80903070)     # $at = 80900000
    lwc1    $f4, %lo(var_80903070)($at)
    lui     $at, 0x42D2                # $at = 42D20000
    mtc1    $at, $f6                   # $f6 = 105.00
    lui     $at, 0xC1D8                # $at = C1D80000
    mtc1    $at, $f8                   # $f8 = -27.00
    addiu   a3, $zero, 0x0101          # a3 = 00000101
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0028($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    lhu     t3, 0x02FA(s0)             # 000002FA
    sw      v0, 0x02F4(s0)             # 000002F4
    ori     t4, t3, 0x0008             # t4 = 00000008
    sh      t4, 0x02FA(s0)             # 000002FA
    beq     $zero, $zero, lbl_80902238
    andi    v1, t4, 0xFFFF             # v1 = 00000008
    lhu     v1, 0x02FA(s0)             # 000002FA
lbl_80902210:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    andi    t5, v1, 0x0002             # t5 = 00000000
    bne     t5, $zero, lbl_80902238
    ori     t7, v1, 0x0002             # t7 = 0000000A
    sb      $zero, 0x02FE(s0)          # 000002FE
    sb      $zero, 0x02FF(s0)          # 000002FF
    sb      t6, 0x0300(s0)             # 00000300
    sb      $zero, 0x0301(s0)          # 00000301
    sh      t7, 0x02FA(s0)             # 000002FA
    andi    v1, t7, 0xFFFF             # v1 = 0000000A
lbl_80902238:
    andi    t8, v1, 0x0001             # t8 = 00000000
lbl_8090223C:
    beq     t8, $zero, lbl_80902260
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x206D          # a1 = 0000206D
    lh      v0, 0x02F8(s0)             # 000002F8
    slti    $at, v0, 0xEBB0
    bne     $at, $zero, lbl_80902260
    addiu   t9, v0, 0xFF9A             # t9 = FFFFFF9A
    sh      t9, 0x02F8(s0)             # 000002F8
lbl_80902260:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80902274:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lhu     v0, 0x02FA(a1)             # 000002FA
    andi    t6, v0, 0x0004             # t6 = 00000000
    bnel    t6, $zero, lbl_809022C0
    lw      $ra, 0x0014($sp)
    lw      a0, 0x02F4(a1)             # 000002F4
    ori     t7, v0, 0x0004             # t7 = 00000004
    sh      t7, 0x02FA(a1)             # 000002FA
    beql    a0, $zero, lbl_809022C0
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    sw      $zero, 0x011C(a1)          # 0000011C
    lw      $ra, 0x0014($sp)
lbl_809022C0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809022CC:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_809022DC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_80902318
    lw      t9, 0x02EC(s0)             # 000002EC
    lw      t7, 0x1D94(a1)             # 00001D94
    beql    t7, $zero, lbl_80902318
    lw      t9, 0x02EC(s0)             # 000002EC
    jal     func_80902118
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090234C
    nop
    lw      t9, 0x02EC(s0)             # 000002EC
lbl_80902318:
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    lui     $at, 0x4224                # $at = 42240000
    mtc1    $at, $f4                   # $f4 = 41.00
    lwc1    $f6, 0x016C(s0)            # 0000016C
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f4, $f6
    nop
    bc1f    lbl_8090234C
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x28B6          # a1 = 000028B6
lbl_8090234C:
    jal     func_80901E9C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008C9C0
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lui     a1, 0x3DB2                 # a1 = 3DB20000
    ori     a1, a1, 0x2D0E             # a1 = 3DB22D0E
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x02F8(s0)             # 000002F8
    lw      t0, 0x0174(s0)             # 00000174
    sh      t8, 0x0040(t0)             # 00000040
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80902388:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E56C
    sw      a0, 0x0034($sp)
    lui     $at, %hi(var_80903074)     # $at = 80900000
    lwc1    $f6, %lo(var_80903074)($at)
    lwc1    $f4, 0x016C(s0)            # 0000016C
    mul.s   $f12, $f4, $f6
    jal     func_800D2CD0
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f8, $f0, $f2
    mfc1    a2, $f12
    jal     func_800AA7F4
    sub.s   $f14, $f8, $f2
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      t1, 0x0034($sp)
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t9, 0x02FE(s0)             # 000002FE
    lui     t0, %hi(var_8090305C)      # t0 = 80900000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t2, t9,  2
    addu    t0, t0, t2
    lw      t0, %lo(var_8090305C)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    lw      a1, 0x0158(s0)             # 00000158
    lw      a2, 0x0174(s0)             # 00000174
    lbu     a3, 0x0156(s0)             # 00000156
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80089D8C
    lw      a0, 0x0044($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_809024A0: .word 0x005A0700, 0x00000030, 0x00400000, 0x00000304
.word func_80901B7C
.word func_80901E0C
.word func_809022DC
.word func_80902388
.word 0x00000000
var_809024C4: .word \
0x0000001A, 0x0000065D, 0x0000000A, 0x00000004, \
0x00050000, 0x00F00000, 0x40000000, 0xFFFFF93C, \
0x00000034, 0xFFFFFFD4, 0xFFFFF93C, 0x00000034, \
0xFFFFFFD4, 0x0F671408, 0x00000000, 0x00000001, \
0x000300F0, 0x00FF0000, 0x40000000, 0xFFFFF93C, \
0x00000034, 0xFFFFFFD4, 0xFFFFF93C, 0x00000034, \
0xFFFFFFD4, 0x0F671408, 0x00000000, 0x00000001, \
0x000600FF, 0x011D0000, 0x40000000, 0xFFFFF93C, \
0x00000034, 0xFFFFFFD4, 0xFFFFF93C, 0x00000034, \
0xFFFFFFD4, 0x0F671408, 0x00000000, 0x00000001, \
0x0020011D, 0x012C0000, 0xC0000000, 0xFFFFF93C, \
0x00000034, 0xFFFFFFD4, 0xFFFFF9FF, 0x0000006D, \
0xFFFFFFD4, 0x0F671408, 0x00000000, 0x00000001, \
0x00000044, 0x00000004, 0x00010000, 0x00EA0000, \
0x40000000, 0xFFFFF97F, 0x00000034, 0xFFFFFFD4, \
0xFFFFF97F, 0x00000034, 0xFFFFFFD4, 0x0F671408, \
0x00000000, 0x00000001, 0x000200EA, 0x00F141F8, \
0x00000000, 0xFFFFF97F, 0x00000034, 0xFFFFFFD4, \
0xFFFFF9BD, 0x00000082, 0xFFFFFFD1, 0x410DB6DB, \
0x41324925, 0xC10DB6DB, 0x000200F1, 0x01184031, \
0x00000000, 0xFFFFF9BD, 0x00000082, 0xFFFFFFD1, \
0xFFFFFDDB, 0x00000082, 0xFFFFFFCC, 0x41D83483, \
0x00000000, 0xC1D83483, 0x00030118, 0x012C0000, \
0x00000000, 0xFFFFFDDB, 0x00000082, 0xFFFFFFCC, \
0xFFFFFDDB, 0x00000082, 0xFFFFFFCC, 0x00000000, \
0x00000000, 0x00000000, 0x00000043, 0x00000005, \
0x00010000, 0x005D0000, 0x00000000, 0x00000000, \
0x00000033, 0x0000007C, 0x00000000, 0x00000033, \
0x0000007C, 0x00000000, 0x00000000, 0x00000000, \
0x0003005D, 0x00790000, 0x00000000, 0x00000000, \
0x00000033, 0x0000007C, 0x00000000, 0x00000033, \
0x0000007C, 0x00000000, 0x00000000, 0x00000000, \
0x00010079, 0x00920000, 0x00000000, 0x00000000, \
0x00000033, 0x0000007C, 0x00000000, 0x00000033, \
0x0000007C, 0x00000000, 0x00000000, 0x00000000, \
0x00020092, 0x00F10000, 0x00000000, 0x00000000, \
0x00000033, 0x0000007C, 0x00000000, 0x00000033, \
0x0000007C, 0x00000000, 0x00000000, 0x00000000, \
0x000100F1, 0x01B90000, 0x00000000, 0x00000000, \
0x00000033, 0x0000007C, 0x00000000, 0x00000033, \
0x0000007C, 0x00000000, 0x00000000, 0x00000000, \
0x00000045, 0x00000003, 0x00010000, 0x005A0000, \
0x00000000, 0x00000000, 0xFFFFFFDF, 0x00000009, \
0x00000000, 0xFFFFFFDF, 0x00000009, 0x00000000, \
0x00000000, 0x00000000, 0x0002005A, 0x014A0000, \
0x00000000, 0x00000000, 0xFFFFFFDF, 0x00000009, \
0x00000000, 0xFFFFFFC2, 0x00000016, 0x00000000, \
0xBDF77777, 0x00000000, 0x0003014A, 0x017C0000, \
0x00000000, 0x00000000, 0xFFFFFFC2, 0x00000016, \
0x00000000, 0xFFFFFFC2, 0x00000016, 0x00000000, \
0x00000000, 0x00000000, 0x00000003, 0x00000001, \
0x000C0447, 0x04890000, 0x00000000, 0xFFFFFFD2, \
0x00000000, 0xFFFFFFD0, 0xFFFFFFD2, 0x00000000, \
0xFFFFFFD0, 0x00000000, 0x00000000, 0x00000000, \
0x0000002D, 0x00000001, 0x00090000, 0x000A000A, \
0x0000000A, 0x00000001, 0x0035012C, 0x065D0000, \
0x00000000, 0xFFFFF9A2, 0x00000034, 0xFFFFFFCC, \
0xFFFFF9A2, 0x00000034, 0xFFFFFFCC, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x00010000, \
0x04430000, 0x00000000, 0x4235998B, 0xF997005F, \
0xFFD7015C, 0x00000000, 0x4235998B, 0xF997005F, \
0xFFD7016D, 0x00000000, 0x4235998B, 0xF997005F, \
0xFFD7017E, 0x00000000, 0x4235998B, 0xF997005F, \
0xFFD70223, 0xFF000000, 0x4235998B, 0xF997005F, \
0xFFD77065, 0x00000001, 0x0001003C, 0x047F0000, \
0x00000000, 0x4235998B, 0xFA0400FB, 0x00DE015C, \
0x00000000, 0x4235998B, 0xFA0400FB, 0x00DE016D, \
0x00000000, 0x4235998B, 0xFA0400FB, 0x00DE017E, \
0x00000000, 0x4235998B, 0xFA0400FB, 0x00DE0223, \
0xFF000000, 0x4235998B, 0xFA0400FB, 0x00DE7065, \
0x00000001, 0x0001005A, 0x015F0000, 0x00000000, \
0x4235998B, 0xF95E017E, 0x01C70000, 0x00000000, \
0x4235998B, 0xF95E017E, 0x01C7AC34, 0x00000000, \
0x4235998B, 0xF95E017E, 0x01C74428, 0x00000000, \
0x4235998B, 0xF962017C, 0x01C30000, 0x00000000, \
0x4203FFE5, 0xF962017C, 0x01C3AC10, 0x00000000, \
0x4203FFE5, 0xF962017C, 0x01C30000, 0x00000000, \
0x4203FFE5, 0xF962017C, 0x01C30000, 0x00000000, \
0x4203FFE5, 0xF962017C, 0x01C30164, 0xFF000000, \
0x4203FFE5, 0xF962017C, 0x01C3AD78, 0x00000001, \
0x000100DC, 0x01880000, 0x00000000, 0x4235998B, \
0xF997005F, 0xFFD70000, 0x00000000, 0x4235998B, \
0xF997005F, 0xFFD7AC34, 0x00000000, 0x4235998B, \
0xF997005F, 0xFFD74428, 0x00000000, 0x4235998B, \
0xF997005F, 0xFFD70000, 0x00000000, 0x4235998B, \
0xF997005F, 0xFFD7AC10, 0x00000000, 0x4235998B, \
0xF997005F, 0xFFD70000, 0xFF000000, 0x4235998B, \
0xF997005F, 0xFFD70000, 0x00000001, 0x000100F0, \
0x05330000, 0x00000000, 0x42366658, 0xF8EE0041, \
0xFFF10000, 0x00000000, 0x42366658, 0xF8EE0041, \
0xFFF1AC34, 0x00000000, 0x42366658, 0xF8EE0041, \
0xFFF14428, 0x00000000, 0x42366658, 0xF8EE0041, \
0xFFF10000, 0xFF000000, 0x42366658, 0xF8EE0041, \
0xFFF1AC10, 0x00000001, 0x00010118, 0x055B0000, \
0x00000000, 0x42366658, 0xFA05005F, 0xFFF90000, \
0x00000000, 0x42366658, 0xFA05005F, 0xFFF9AC34, \
0x00000000, 0x42366658, 0xFA05005F, 0xFFF94428, \
0x00000000, 0x42366658, 0xFA05005F, 0xFFF90000, \
0xFF000000, 0x42366658, 0xFA05005F, 0xFFF9AC10, \
0x00000001, 0x00010136, 0x058D0000, 0x00000000, \
0x4235998B, 0xF94B0053, 0xFFC50000, 0x00000000, \
0x4235998B, 0xF94B0053, 0xFFC5AC34, 0x00000000, \
0x4235998B, 0xF98F00B1, 0xFFC54428, 0x00000000, \
0x4235998B, 0xFA0300E0, 0xFFC50000, 0x00000000, \
0x4235998B, 0xFB2500B4, 0xFFC5AC10, 0x00000000, \
0x4235998B, 0xFC470047, 0xFFC90000, 0x00000000, \
0x4235998B, 0xFC470047, 0xFFC90000, 0x00000000, \
0x4235998B, 0xFC470047, 0xFFC90164, 0xFF000000, \
0x4235998B, 0xFC470047, 0xFFC9AD78, 0x00000001, \
0x00010163, 0x05BA0000, 0x00000000, 0x42726667, \
0xF8DA0067, 0x00120000, 0x00000000, 0x42726667, \
0xF8DA0067, 0x0012AC34, 0x00000000, 0x42726667, \
0xF8DA0067, 0x00124428, 0x00000000, 0x42726667, \
0xF8DA0067, 0x00120000, 0x00000000, 0x42726667, \
0xF8DA0067, 0x0012AC10, 0x00000000, 0x42726667, \
0xF8DA0067, 0x00120000, 0xFF000000, 0x42726667, \
0xF8DA0067, 0x00120000, 0x00000002, 0x00010000, \
0x04600000, 0x0000001E, 0x4235998B, 0xF944FFFB, \
0xFFD30000, 0x0000001E, 0x4235998B, 0xF944FFFB, \
0xFFD3AC34, 0x000003E8, 0x4235998B, 0xF944FFFB, \
0xFFD34428, 0x0000001E, 0x4235998B, 0xF944FFFB, \
0xFFD30000, 0xFF00001E, 0x4235998B, 0xF944FFFB, \
0xFFD3AC10, 0x00000002, 0x0001003C, 0x049C0000, \
0x0000001E, 0x4235998B, 0xFA6000F1, 0x00860000, \
0x0000001E, 0x4235998B, 0xFA6000F1, 0x0086AC34, \
0x000003E8, 0x4235998B, 0xFA6000F1, 0x00864428, \
0x0000001E, 0x4235998B, 0xFA6000F1, 0x00860000, \
0xFF00001E, 0x4235998B, 0xFA6000F1, 0x0086AC10, \
0x00000002, 0x0001005A, 0x017C0000, 0x0000001E, \
0x4235998B, 0xF9B6015C, 0x01750000, 0x0000001E, \
0x4235998B, 0xF9B6015C, 0x0175AC34, 0x00000032, \
0x4235998B, 0xF9B6015C, 0x01754428, 0x0000001E, \
0x420D9981, 0xF9B20152, 0x016F0000, 0x0000001E, \
0x4203FFE5, 0xF9B20152, 0x016FAC10, 0x0000001E, \
0x4203FFE5, 0xF9B20152, 0x016F0000, 0x0000001E, \
0x4203FFE5, 0xF9B20152, 0x016F0000, 0x0000001E, \
0x4203FFE5, 0xF9B20152, 0x016F0164, 0xFF00001E, \
0x4203FFE5, 0xF9B20152, 0x016FAD78, 0x00000002, \
0x000100DC, 0x01A50000, 0x0000001E, 0x4235998B, \
0xF944FFFB, 0xFFD30000, 0x00000046, 0x4235998B, \
0xF944FFFB, 0xFFD3AC34, 0x00000005, 0x4235998B, \
0xF944FFFB, 0xFFD34428, 0x00000006, 0x42373325, \
0xF9C70096, 0xFF6E0000, 0x0000001E, 0x4235998B, \
0xFA050098, 0xFFB5AC10, 0x0000001E, 0x4235998B, \
0xFA050098, 0xFFB50000, 0xFF00001E, 0x4235998B, \
0xFA050098, 0xFFB50000, 0x00000002, 0x000100F0, \
0x05500000, 0x0000001E, 0x42366658, 0xF950004A, \
0xFFDB0000, 0x0000001E, 0x42366658, 0xF950004A, \
0xFFDBAC34, 0x000003E8, 0x42366658, 0xF950004A, \
0xFFDB4428, 0x0000001E, 0x42366658, 0xF950004A, \
0xFFDB0000, 0xFF00001E, 0x42366658, 0xF950004A, \
0xFFDBAC10, 0x00000002, 0x00010118, 0x05780000, \
0x0000001E, 0x42366658, 0xF9AD0063, 0xFFCE0000, \
0x0000001E, 0x42366658, 0xF9AD0063, 0xFFCEAC34, \
0x000003E8, 0x42366658, 0xF9AD0063, 0xFFCE4428, \
0x0000001E, 0x42366658, 0xF9AD0063, 0xFFCE0000, \
0xFF00001E, 0x42366658, 0xF9AD0063, 0xFFCEAC10, \
0x00000002, 0x00010136, 0x05AA0000, 0x000B001E, \
0x42B5FFCC, 0xF9B6008D, 0xFFC50000, 0x0009000A, \
0x42B59966, 0xF9C10072, 0xFFC7AC34, 0x00FC000A, \
0x42B4CC9A, 0xFA0800C0, 0xFFCA4428, 0x0000000A, \
0x42B53300, 0xFA6D00A4, 0xFFCA0000, 0x00CB000A, \
0x42B4CC9A, 0xFB8E0077, 0xFFDBAC10, 0x0020000A, \
0x42B4CC9A, 0xFCC00032, 0xFFCD0000, 0x000003E8, \
0x4235998B, 0xFCBC0023, 0xFFCD0000, 0x0000001E, \
0x4235998B, 0xFCBC0023, 0xFFCD0164, 0xFF00001E, \
0x4235998B, 0xFCBC0023, 0xFFCDAD78, 0x00000002, \
0x00010163, 0x05D70000, 0x0000001E, 0x42726667, \
0xF956006F, 0xFFFA0000, 0x0000001E, 0x42726667, \
0xF956006F, 0xFFFAAC34, 0x0000000A, 0x42726667, \
0xF956006F, 0xFFFA4428, 0x0000000A, 0x42726667, \
0xF9470052, 0xFFD60000, 0x000003E8, 0x42726667, \
0xF9470052, 0xFFD6AC10, 0x0000001E, 0x42726667, \
0xF9470052, 0xFFD60000, 0xFF00001E, 0x42726667, \
0xF9470052, 0xFFD60000, 0x0000002D, 0x00000001, \
0x000B014F, 0x01560156, 0x000003E8, 0x00000001, \
0x00180159, 0x018B018B, 0x0000003E, 0x00000001, \
0x00010131, 0x01EE0000, 0x00000000, 0xFFFFFA89, \
0x000001C4, 0xFFFFFFCB, 0xFFFFFA89, 0x000001C4, \
0xFFFFFFCB, 0x00000000, 0x00000000, 0x00000000, \
0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000
var_80903014: .word \
0x0A000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000004, 0x00000000, 0x00010100, \
0x00AA0096, 0x00000000, 0x00000000
var_80903040: .word 0xC8500057, 0xB0F40FA0, 0xB0F80CE4, 0x30FC044C
var_80903050: .word 0xC4C6A000, 0x42540000, 0xC22C0000
var_8090305C: .word \
0x06007698, 0x06007A98, 0x06007E98, 0x00000000, \
0x00000000

.section .rodata

var_80903070: .word 0xC4898000
var_80903074: .word 0x3D9CED28, 0x00000000, 0x00000000

