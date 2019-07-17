.section .text
func_80A83A90:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a2, 0x0028($sp)
    lh      a0, 0x002A($sp)
    jal     func_800636C4              # sins?
    sw      a1, 0x0024($sp)
    lh      a0, 0x002A($sp)
    jal     func_80063684              # coss?
    swc1    $f0, 0x001C($sp)
    lw      a1, 0x0024($sp)
    lwc1    $f2, 0x001C($sp)
    lw      v0, 0x0020($sp)
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f8, 0x0000(a1)            # 00000000
    mul.s   $f6, $f4, $f2
    nop
    mul.s   $f10, $f8, $f0
    add.s   $f16, $f6, $f10
    swc1    $f16, 0x0000(v0)           # 00000000
    lwc1    $f18, 0x0004(a1)           # 00000004
    swc1    $f18, 0x0004(v0)           # 00000004
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f6, 0x0000(a1)            # 00000000
    mul.s   $f8, $f4, $f0
    nop
    mul.s   $f10, $f6, $f2
    sub.s   $f16, $f8, $f10
    swc1    $f16, 0x0008(v0)           # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80A83B10:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
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
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80A83B68:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    addiu   a1, s0, 0x0170             # a1 = 00000170
    sw      a1, 0x0028($sp)
    jal     func_8004A484
    lw      a0, 0x0034($sp)
    addiu   t6, s0, 0x0190             # t6 = 00000190
    sw      t6, 0x0010($sp)
    lw      a0, 0x0034($sp)
    lw      a1, 0x0028($sp)
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_8004A874
    lw      a3, 0x0038($sp)
    lwc1    $f4, 0x00BC(s0)            # 000000BC
    lwc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f12, 0x0024(s0)           # 00000024
    mul.s   $f8, $f4, $f6
    lw      a2, 0x002C(s0)             # 0000002C
    addiu   a3, s0, 0x00B4             # a3 = 000000B4
    jal     func_800AB510
    add.s   $f14, $f10, $f8
    lwc1    $f12, 0x0050(s0)           # 00000050
    lwc1    $f14, 0x0054(s0)           # 00000054
    lw      a2, 0x0058(s0)             # 00000058
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80050CE4
    lw      a1, 0x0028($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80A83C04:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s5, a0, $zero              # s5 = 00000000
    or      s6, a2, $zero              # s6 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    addiu   a1, s5, 0x0170             # a1 = 00000170
    sw      a1, 0x0054($sp)
    jal     func_8004B064
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, s5, 0x0190             # t6 = 00000190
    sw      t6, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0054($sp)
    or      a2, s5, $zero              # a2 = 00000000
    jal     func_8004B3EC
    or      a3, s6, $zero              # a3 = 00000000
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s3, s5, 0x0024             # s3 = 00000024
    addiu   s8, $sp, 0x0064            # s8 = FFFFFFDC
    addiu   s7, $sp, 0x0058            # s7 = FFFFFFD0
    addiu   s4, $sp, 0x007C            # s4 = FFFFFFF4
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80A83C80:
    addiu   s0, $sp, 0x0058            # s0 = FFFFFFD0
lbl_80A83C84:
    lw      t7, 0x000C(s6)             # 0000000C
    sll     t8, s2,  4
    subu    t8, t8, s2
    sll     t8, t8,  2
    addu    t9, t7, t8
    addu    a1, t9, s1
    addiu   a1, a1, 0x0018             # a1 = 00000018
    or      a0, s0, $zero              # a0 = FFFFFFD0
    jal     func_80A83A90
    lh      a2, 0x0016(s5)             # 00000016
    or      a0, s0, $zero              # a0 = FFFFFFD0
    or      a1, s3, $zero              # a1 = 00000024
    jal     func_80063D10              # Vec3f_Add
    or      a2, s0, $zero              # a2 = FFFFFFD0
    addiu   s0, s0, 0x000C             # s0 = FFFFFFDC
    bne     s0, s4, lbl_80A83C84
    addiu   s1, s1, 0x000C             # s1 = 0000000C
    addiu   t0, $sp, 0x0070            # t0 = FFFFFFE8
    sw      t0, 0x0010($sp)
    lw      a0, 0x0054($sp)
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s7, $zero              # a2 = FFFFFFD0
    jal     func_80050BD4
    or      a3, s8, $zero              # a3 = FFFFFFDC
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    s2, $at, lbl_80A83C80
    or      s1, $zero, $zero           # s1 = 00000000
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
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_80A83D24:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    lwc1    $f4, 0x0024(a1)            # 00000024
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    addiu   a3, $zero, 0x011E          # a3 = 0000011E
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(a1)            # 00000028
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x002C(a1)            # 0000002C
    swc1    $f8, 0x0018($sp)
    lh      t6, 0x0030(a1)             # 00000030
    sw      t6, 0x001C($sp)
    lh      t7, 0x0032(a1)             # 00000032
    sw      t7, 0x0020($sp)
    lh      t8, 0x0034(a1)             # 00000034
    sw      t8, 0x0024($sp)
    lh      t9, 0x001C(a1)             # 0000001C
    sra     t0, t9,  8
    andi    t1, t0, 0x003F             # t1 = 00000000
    sll     t2, t1,  8
    jal     func_800253F0
    sw      t2, 0x0028($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80A83D98:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x002C($sp)
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beql    v0, $zero, lbl_80A83DD4
    lh      v0, 0x001C(s0)             # 0000001C
    beq     $zero, $zero, lbl_80A83E30
    sb      $zero, 0x015E(s0)          # 0000015E
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80A83DD4:
    lw      a0, 0x002C($sp)
    sra     v1, v0,  4
    andi    v1, v1, 0x0007             # v1 = 00000000
    sra     a1, v0,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_800204D0
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      a0, 0x002C($sp)
    beq     v1, $zero, lbl_80A83E0C
    or      a1, s0, $zero              # a1 = 00000000
    bne     v1, $at, lbl_80A83E1C
    addiu   a2, $zero, 0x4807          # a2 = 00004807
lbl_80A83E0C:
    jal     func_8006BB7C
    addiu   a2, $zero, 0x4802          # a2 = 00004802
    beq     $zero, $zero, lbl_80A83E2C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
lbl_80A83E1C:
    lw      a0, 0x002C($sp)
    jal     func_8006BB7C
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
lbl_80A83E2C:
    sb      t6, 0x015E(s0)             # 0000015E
lbl_80A83E30:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A83E44:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      a1, 0x001C(s0)             # 0000001C
    sb      $zero, 0x015E(s0)          # 0000015E
    lw      a0, 0x0024($sp)
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beql    v0, $zero, lbl_80A83EBC
    lw      $ra, 0x001C($sp)
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    sra     a1, a1,  8
    jal     func_80020510
    andi    a1, a1, 0x003F             # a1 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x0024($sp)
    sra     t7, t6,  4
    andi    t8, t7, 0x0007             # t8 = 00000000
    bne     t8, $at, lbl_80A83EB8
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8006BB7C
    addiu   a2, $zero, 0x4807          # a2 = 00004807
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x015E(s0)             # 0000015E
lbl_80A83EB8:
    lw      $ra, 0x001C($sp)
lbl_80A83EBC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A83ECC:
    lbu     t6, 0x0168(a0)             # 00000168
    lbu     t9, 0x0169(a0)             # 00000169
    lbu     t2, 0x016A(a0)             # 0000016A
    lbu     t5, 0x016B(a0)             # 0000016B
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    andi    t8, t7, 0x007F             # t8 = 0000007F
    addiu   t0, t9, 0x0001             # t0 = 00000001
    addiu   t3, t2, 0x0001             # t3 = 00000001
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    andi    t1, t0, 0x007F             # t1 = 00000001
    andi    t4, t3, 0x007F             # t4 = 00000001
    andi    t7, t6, 0x007F             # t7 = 0000007F
    sb      t8, 0x0168(a0)             # 00000168
    sb      t1, 0x0169(a0)             # 00000169
    sb      t4, 0x016A(a0)             # 0000016A
    sb      t7, 0x016B(a0)             # 0000016B
    jr      $ra
    nop


func_80A83F14:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0034($sp)
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    sw      v0, 0x0028($sp)
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    andi    t0, t0, 0x0007             # t0 = 00000000
    beq     t0, $zero, lbl_80A83F5C
    lw      a1, 0x0034($sp)
    bne     t0, $at, lbl_80A83F74
lbl_80A83F5C:
    lui     a2, 0x0500                 # a2 = 05000000
    addiu   a2, a2, 0x5FB8             # a2 = 05005FB8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80A83B10
    sw      t0, 0x0024($sp)
    lw      t0, 0x0024($sp)
lbl_80A83F74:
    lui     a1, %hi(var_80A85508)      # a1 = 80A80000
    addiu   a1, a1, %lo(var_80A85508)  # a1 = 80A85508
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80063F7C
    sw      t0, 0x0024($sp)
    lw      t0, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lui     t7, %hi(var_80A853B0)      # t7 = 80A80000
    beq     t0, $zero, lbl_80A83FA4
    sll     t6, t0,  2
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t0, $at, lbl_80A83FB8
lbl_80A83FA4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0028(s0)            # 00000028
lbl_80A83FB8:
    addiu   t7, t7, %lo(var_80A853B0)  # t7 = 80A853B0
    addu    v1, t6, t7
    lw      a1, 0x0000(v1)             # 00000000
    jal     func_80020F04
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lui     t8, %hi(var_80A853B4)      # t8 = 80A80000
    addiu   t8, t8, %lo(var_80A853B4)  # t8 = 80A853B4
    bne     v1, t8, lbl_80A84000
    lui     t9, %hi(var_80A853B8)      # t9 = 80A80000
    lui     a2, %hi(var_80A8543C)      # a2 = 80A80000
    addiu   a2, a2, %lo(var_80A8543C)  # a2 = 80A8543C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80A83C04
    sw      v1, 0x0020($sp)
    beq     $zero, $zero, lbl_80A8405C
    lw      v1, 0x0020($sp)
lbl_80A84000:
    addiu   t9, t9, %lo(var_80A853B8)  # t9 = 000053B8
    bne     v1, t9, lbl_80A8402C
    lui     t1, %hi(var_80A853BC)      # t1 = 80A80000
    lui     a2, %hi(var_80A854C4)      # a2 = 80A80000
    addiu   a2, a2, %lo(var_80A854C4)  # a2 = 80A854C4
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80A83C04
    sw      v1, 0x0020($sp)
    beq     $zero, $zero, lbl_80A8405C
    lw      v1, 0x0020($sp)
lbl_80A8402C:
    addiu   t1, t1, %lo(var_80A853BC)  # t1 = 000053BC
    beq     v1, t1, lbl_80A84040
    lui     t2, %hi(var_80A853C0)      # t2 = 80A80000
    addiu   t2, t2, %lo(var_80A853C0)  # t2 = 80A853C0
    bne     v1, t2, lbl_80A8405C
lbl_80A84040:
    lui     a2, %hi(var_80A854F8)      # a2 = 80A80000
    addiu   a2, a2, %lo(var_80A854F8)  # a2 = 80A854F8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80A83B68
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
lbl_80A8405C:
    lui     t3, %hi(var_80A853C0)      # t3 = 80A80000
    addiu   t3, t3, %lo(var_80A853C0)  # t3 = 80A853C0
    bne     v1, t3, lbl_80A84080
    or      a0, s0, $zero              # a0 = 00000000
    lw      t4, 0x0004(s0)             # 00000004
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sb      t6, 0x001F(s0)             # 0000001F
    ori     t5, t4, 0x0001             # t5 = 00000001
    sw      t5, 0x0004(s0)             # 00000004
lbl_80A84080:
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sb      t7, 0x00AE(s0)             # 000000AE
    sra     t9, t8,  7
    andi    t1, t9, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80A840B8
    lw      a1, 0x0034($sp)
    jal     func_80A83D24
    sw      v1, 0x0020($sp)
    bne     v0, $zero, lbl_80A840B8
    lw      v1, 0x0020($sp)
    lh      t2, 0x001C(s0)             # 0000001C
    andi    t3, t2, 0xFF7F             # t3 = 00000000
    sh      t3, 0x001C(s0)             # 0000001C
lbl_80A840B8:
    lh      t4, 0x001C(s0)             # 0000001C
    lui     t7, %hi(var_80A853B0)      # t7 = 80A80000
    addiu   t7, t7, %lo(var_80A853B0)  # t7 = 80A853B0
    sra     t5, t4,  7
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80A840E4
    nop
    jal     func_80A847A0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8419C
    lw      $ra, 0x001C($sp)
lbl_80A840E4:
    beq     v1, t7, lbl_80A840F8
    lui     t8, %hi(var_80A853B4)      # t8 = 80A80000
    addiu   t8, t8, %lo(var_80A853B4)  # t8 = 80A853B4
    bne     v1, t8, lbl_80A84124
    lui     t1, %hi(var_80A853B8)      # t1 = 80A80000
lbl_80A840F8:
    lw      t9, 0x0028($sp)
    beq     t9, $zero, lbl_80A84114
    nop
    jal     func_80A844BC
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8419C
    lw      $ra, 0x001C($sp)
lbl_80A84114:
    jal     func_80A84250
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8419C
    lw      $ra, 0x001C($sp)
lbl_80A84124:
    addiu   t1, t1, %lo(var_80A853B8)  # t1 = 000053B8
    bne     v1, t1, lbl_80A8415C
    lui     t3, %hi(var_80A853BC)      # t3 = 80A80000
    lw      t2, 0x0028($sp)
    beq     t2, $zero, lbl_80A8414C
    nop
    jal     func_80A84928
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8419C
    lw      $ra, 0x001C($sp)
lbl_80A8414C:
    jal     func_80A8480C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8419C
    lw      $ra, 0x001C($sp)
lbl_80A8415C:
    addiu   t3, t3, %lo(var_80A853BC)  # t3 = 000053BC
    beq     v1, t3, lbl_80A84174
    lui     t4, %hi(var_80A853C0)      # t4 = 80A80000
    addiu   t4, t4, %lo(var_80A853C0)  # t4 = 80A853C0
    bnel    v1, t4, lbl_80A8419C
    lw      $ra, 0x001C($sp)
lbl_80A84174:
    lw      t5, 0x0028($sp)
    beq     t5, $zero, lbl_80A84190
    nop
    jal     func_80A84CB8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8419C
    lw      $ra, 0x001C($sp)
lbl_80A84190:
    jal     func_80A84AB0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80A8419C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80A841AC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x001C(a3)             # 0000001C
    lw      a0, 0x001C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    v0, v0, 0x0007             # v0 = 00000000
    beq     v0, $zero, lbl_80A841DC
    addiu   a1, a0, 0x0810             # a1 = 00000810
    bnel    v0, $at, lbl_80A841F8
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80A841DC:
    lw      a2, 0x013C(a3)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lh      v0, 0x001C(a3)             # 0000001C
    andi    v0, v0, 0x0007             # v0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80A841F8:
    beq     v0, $at, lbl_80A84228
    lw      a0, 0x001C($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A84228
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80A84238
    lw      a0, 0x001C($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80A84238
    nop
    beq     $zero, $zero, lbl_80A84244
    lw      $ra, 0x0014($sp)
lbl_80A84228:
    jal     func_8004B148
    addiu   a1, a3, 0x0170             # a1 = 00000170
    beq     $zero, $zero, lbl_80A84244
    lw      $ra, 0x0014($sp)
lbl_80A84238:
    jal     func_8004A550
    addiu   a1, a3, 0x0170             # a1 = 00000170
    lw      $ra, 0x0014($sp)
lbl_80A84244:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A84250:
    lui     $at, %hi(var_80A85590)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A85590)($at)
    lui     t6, %hi(func_80A84270)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A84270) # t6 = 80A84270
    sw      t6, 0x0154(a0)             # 00000154
    swc1    $f4, 0x0054(a0)            # 00000054
    jr      $ra
    nop


func_80A84270:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      v1, 0x001C(s0)             # 0000001C
    andi    t6, v1, 0x0007             # t6 = 00000000
    bne     a2, t6, lbl_80A842E8
    sra     v0, v1,  4
    lbu     t7, 0x0181(s0)             # 00000181
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t8, t7, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_80A842D4
    lw      a0, 0x0024($sp)
    jal     func_80A843E0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A83D98
    lw      a1, 0x0024($sp)
    lbu     t9, 0x0181(s0)             # 00000181
    andi    t0, t9, 0xFFFD             # t0 = 00000000
    beq     $zero, $zero, lbl_80A843CC
    sb      t0, 0x0181(s0)             # 00000181
lbl_80A842D4:
    addu    a1, a0, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0170             # a2 = 00000170
    beq     $zero, $zero, lbl_80A843D0
    lw      $ra, 0x001C($sp)
lbl_80A842E8:
    andi    v0, v0, 0x0007             # v0 = 00000000
    beq     v0, $zero, lbl_80A84314
    nop
    beq     v0, a2, lbl_80A84340
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A8437C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80A843A8
    nop
    beq     $zero, $zero, lbl_80A843D0
    lw      $ra, 0x001C($sp)
lbl_80A84314:
    jal     func_80035364
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80A843D0
    lw      $ra, 0x001C($sp)
    jal     func_80A843E0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A83D98
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_80A843D0
    lw      $ra, 0x001C($sp)
lbl_80A84340:
    lbu     t2, 0x0150(s0)             # 00000150
    andi    t3, t2, 0x0002             # t3 = 00000000
    beql    t3, $zero, lbl_80A843D0
    lw      $ra, 0x001C($sp)
    lbu     t4, 0x016F(s0)             # 0000016F
    andi    t5, t4, 0x0002             # t5 = 00000000
    bnel    t5, $zero, lbl_80A843D0
    lw      $ra, 0x001C($sp)
    jal     func_80A843E0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A83D98
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_80A843D0
    lw      $ra, 0x001C($sp)
lbl_80A8437C:
    jal     func_800353AC
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80A843D0
    lw      $ra, 0x001C($sp)
    jal     func_80A843E0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A83D98
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_80A843D0
    lw      $ra, 0x001C($sp)
lbl_80A843A8:
    jal     func_800353AC
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80A843D0
    lw      $ra, 0x001C($sp)
    jal     func_80A843E0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A83E44
    lw      a1, 0x0024($sp)
lbl_80A843CC:
    lw      $ra, 0x001C($sp)
lbl_80A843D0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A843E0:
    lui     t6, %hi(func_80A843FC)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A843FC) # t6 = 80A843FC
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x015C(a0)             # 0000015C
    jr      $ra
    nop


func_80A843FC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sra     t7, t6,  4
    andi    t8, t7, 0x0007             # t8 = 00000000
    beq     t8, $at, lbl_80A84450
    nop
    lbu     t9, 0x015E(s0)             # 0000015E
    beq     t9, $zero, lbl_80A84450
    nop
    jal     func_80049DA4
    nop
    lbu     t0, 0x0002(s0)             # 00000002
    beq     v0, t0, lbl_80A84450
    nop
    lh      t1, 0x015C(s0)             # 0000015C
    bgtz    t1, lbl_80A844A8
lbl_80A84450:
    lui     $at, %hi(var_80A85594)     # $at = 80A80000
    lwc1    $f6, %lo(var_80A85594)($at)
    lwc1    $f4, 0x0054(s0)            # 00000054
    lui     $at, %hi(var_80A85598)     # $at = 80A80000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0054(s0)            # 00000054
    lwc1    $f16, 0x0054(s0)           # 00000054
    lwc1    $f10, %lo(var_80A85598)($at)
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_80A844AC
    lw      $ra, 0x001C($sp)
    jal     func_80A844BC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2815          # a1 = 00002815
    lwc1    $f12, 0x008C(s0)           # 0000008C
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
lbl_80A844A8:
    lw      $ra, 0x001C($sp)
lbl_80A844AC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A844BC:
    lui     $at, %hi(var_80A8559C)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A8559C)($at)
    lui     t7, %hi(func_80A844E4)     # t7 = 80A80000
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    addiu   t7, t7, %lo(func_80A844E4) # t7 = 80A844E4
    sh      t6, 0x0158(a0)             # 00000158
    sw      t7, 0x0154(a0)             # 00000154
    swc1    $f4, 0x0054(a0)            # 00000054
    jr      $ra
    nop


func_80A844E4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v1, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x001C($sp)
    sra     v0, v1,  4
    andi    v0, v0, 0x0007             # v0 = 00000000
    beq     v0, $zero, lbl_80A84534
    sra     a1, v1,  8
    beq     v0, $at, lbl_80A84558
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A84598
    or      a0, a2, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80A84598
    nop
    beq     $zero, $zero, lbl_80A84624
    lw      $ra, 0x0014($sp)
lbl_80A84534:
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_8002049C
    sw      a2, 0x0018($sp)
    bne     v0, $zero, lbl_80A84620
    lw      a2, 0x0018($sp)
    jal     func_80A84630
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A84624
    lw      $ra, 0x0014($sp)
lbl_80A84558:
    lbu     t6, 0x0150(a2)             # 00000150
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80A84624
    lw      $ra, 0x0014($sp)
    lbu     t8, 0x016F(a2)             # 0000016F
    or      a0, a2, $zero              # a0 = 00000000
    andi    t9, t8, 0x0002             # t9 = 00000000
    bnel    t9, $zero, lbl_80A84624
    lw      $ra, 0x0014($sp)
    jal     func_80A84630
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A83E44
    lw      a1, 0x001C($sp)
    beq     $zero, $zero, lbl_80A84624
    lw      $ra, 0x0014($sp)
lbl_80A84598:
    jal     func_800353AC
    sw      a2, 0x0018($sp)
    bne     v0, $zero, lbl_80A84618
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8007943C
    sw      a2, 0x0018($sp)
    bne     v0, $zero, lbl_80A84618
    lw      a2, 0x0018($sp)
    lh      t0, 0x0158(a2)             # 00000158
    or      a0, a2, $zero              # a0 = 00000000
    bgtzl   t0, lbl_80A84624
    lw      $ra, 0x0014($sp)
    jal     func_80A84630
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a1, 0x001C($sp)
    lh      t1, 0x001C(a2)             # 0000001C
    or      a0, a2, $zero              # a0 = 00000000
    sra     t2, t1,  4
    andi    t3, t2, 0x0007             # t3 = 00000000
    bne     t3, $at, lbl_80A84608
    nop
    jal     func_80A83E44
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A84624
    lw      $ra, 0x0014($sp)
lbl_80A84608:
    jal     func_80A83D98
    lw      a1, 0x001C($sp)
    beq     $zero, $zero, lbl_80A84624
    lw      $ra, 0x0014($sp)
lbl_80A84618:
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    sh      t4, 0x0158(a2)             # 00000158
lbl_80A84620:
    lw      $ra, 0x0014($sp)
lbl_80A84624:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A84630:
    lui     t6, %hi(func_80A8464C)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A8464C) # t6 = 80A8464C
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x015C(a0)             # 0000015C
    jr      $ra
    nop


func_80A8464C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     v1, v1,  4
    andi    v1, v1, 0x0007             # v1 = 00000000
    sll     v1, v1, 16
    sra     v1, v1, 16
    beq     v1, $at, lbl_80A84688
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v1, $at, lbl_80A846B4
    nop
lbl_80A84688:
    lbu     t6, 0x015E(s0)             # 0000015E
    beq     t6, $zero, lbl_80A846B4
    nop
    jal     func_80049DA4
    sh      v1, 0x0026($sp)
    lbu     t7, 0x0002(s0)             # 00000002
    lh      v1, 0x0026($sp)
    beq     v0, t7, lbl_80A846B4
    nop
    lh      t8, 0x015C(s0)             # 0000015C
    bgtz    t8, lbl_80A8471C
lbl_80A846B4:
    lui     $at, %hi(var_80A855A0)     # $at = 80A80000
    lwc1    $f6, %lo(var_80A855A0)($at)
    lwc1    $f4, 0x0054(s0)            # 00000054
    lui     $at, %hi(var_80A855A4)     # $at = 80A80000
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0054(s0)            # 00000054
    lwc1    $f16, %lo(var_80A855A4)($at)
    lwc1    $f10, 0x0054(s0)           # 00000054
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_80A84720
    lw      $ra, 0x001C($sp)
    jal     func_80A84250
    sh      v1, 0x0026($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2815          # a1 = 00002815
    lh      v1, 0x0026($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    bne     v1, $at, lbl_80A8471C
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    lwc1    $f12, 0x008C(s0)           # 0000008C
    jal     func_800915CC
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
lbl_80A8471C:
    lw      $ra, 0x001C($sp)
lbl_80A84720:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A84730:
    lbu     t6, 0x0181(a0)             # 00000181
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80A84798
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t8, 0x016F(a0)             # 0000016F
    andi    t9, t8, 0x0002             # t9 = 00000000
    bnel    t9, $zero, lbl_80A84798
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v0, 0x0178(a0)             # 00000178
    beql    v0, $zero, lbl_80A84798
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t0, 0x0032(v0)             # 00000032
    lh      t1, 0x00B6(a0)             # 000000B6
    subu    v1, t0, t1
    sll     v1, v1, 16
    sra     v1, v1, 16
    bltz    v1, lbl_80A84780
    subu    v0, $zero, v1
    beq     $zero, $zero, lbl_80A84780
    or      v0, v1, $zero              # v0 = 00000000
lbl_80A84780:
    slti    $at, v0, 0x5001
    bnel    $at, $zero, lbl_80A84798
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A84794:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A84798:
    jr      $ra
    nop


func_80A847A0:
    lui     t6, %hi(func_80A847B4)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A847B4) # t6 = 80A847B4
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80A847B4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      a1, 0x001C(a2)             # 0000001C
    sw      a2, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80A847F4
    lw      a2, 0x0018($sp)
    jal     func_80A84928
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A84800
    lw      $ra, 0x0014($sp)
lbl_80A847F4:
    jal     func_80A8480C
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_80A84800:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A8480C:
    lui     t6, %hi(func_80A84824)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A84824) # t6 = 80A84824
    sw      t6, 0x0154(a0)             # 00000154
    sh      $zero, 0x0160(a0)          # 00000160
    jr      $ra
    nop


func_80A84824:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_80A84730
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80A8485C
    nop
    lh      t6, 0x001C(s0)             # 0000001C
    sra     t7, t6,  7
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_80A84880
    lw      $ra, 0x001C($sp)
lbl_80A8485C:
    jal     func_80A84890
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A83D98
    lw      a1, 0x0024($sp)
    lh      t9, 0x001C(s0)             # 0000001C
    andi    t0, t9, 0xFF7F             # t0 = 00000000
    sh      t0, 0x001C(s0)             # 0000001C
    lw      $ra, 0x001C($sp)
lbl_80A84880:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A84890:
    lui     t6, %hi(func_80A848AC)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A848AC) # t6 = 80A848AC
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x015C(a0)             # 0000015C
    jr      $ra
    nop


func_80A848AC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     t6, 0x015E(a0)             # 0000015E
    beql    t6, $zero, lbl_80A848EC
    lh      t9, 0x0160(a0)             # 00000160
    jal     func_80049DA4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lbu     t7, 0x0002(a0)             # 00000002
    beql    v0, t7, lbl_80A848EC
    lh      t9, 0x0160(a0)             # 00000160
    lh      t8, 0x015C(a0)             # 0000015C
    bgtzl   t8, lbl_80A8491C
    lw      $ra, 0x0014($sp)
    lh      t9, 0x0160(a0)             # 00000160
lbl_80A848EC:
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x0160(a0)             # 00000160
    lh      t1, 0x0160(a0)             # 00000160
    slti    $at, t1, 0x0003
    bnel    $at, $zero, lbl_80A8491C
    lw      $ra, 0x0014($sp)
    jal     func_80A84928
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2815          # a1 = 00002815
    lw      $ra, 0x0014($sp)
lbl_80A8491C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A84928:
    lui     t6, %hi(func_80A84944)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A84944) # t6 = 80A84944
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x0160(a0)             # 00000160
    jr      $ra
    nop


func_80A84944:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x0024($sp)
    sra     v0, v1,  4
    andi    v0, v0, 0x0007             # v0 = 00000000
    beq     v0, $zero, lbl_80A84984
    sra     a1, v1,  8
    beq     v0, $at, lbl_80A849AC
    nop
    beq     $zero, $zero, lbl_80A849F4
    lw      $ra, 0x001C($sp)
lbl_80A84984:
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    bnel    v0, $zero, lbl_80A849F4
    lw      $ra, 0x001C($sp)
    jal     func_80A84A04
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    andi    t7, t6, 0xFF7F             # t7 = 00000000
    beq     $zero, $zero, lbl_80A849F0
    sh      t7, 0x001C(s0)             # 0000001C
lbl_80A849AC:
    jal     func_80A84730
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80A849D0
    nop
    lh      t8, 0x001C(s0)             # 0000001C
    sra     t9, t8,  7
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80A849F4
    lw      $ra, 0x001C($sp)
lbl_80A849D0:
    jal     func_80A84A04
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A83E44
    lw      a1, 0x0024($sp)
    lh      t1, 0x001C(s0)             # 0000001C
    andi    t2, t1, 0xFF7F             # t2 = 00000000
    sh      t2, 0x001C(s0)             # 0000001C
lbl_80A849F0:
    lw      $ra, 0x001C($sp)
lbl_80A849F4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A84A04:
    lui     t6, %hi(func_80A84A20)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A84A20) # t6 = 80A84A20
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x015C(a0)             # 0000015C
    jr      $ra
    nop


func_80A84A20:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     t7, t6,  4
    andi    t8, t7, 0x0007             # t8 = 00000000
    bnel    t8, $at, lbl_80A84A78
    lh      t2, 0x0160(a0)             # 00000160
    lbu     t9, 0x015E(a0)             # 0000015E
    beql    t9, $zero, lbl_80A84A78
    lh      t2, 0x0160(a0)             # 00000160
    jal     func_80049DA4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lbu     t0, 0x0002(a0)             # 00000002
    beql    v0, t0, lbl_80A84A78
    lh      t2, 0x0160(a0)             # 00000160
    lh      t1, 0x015C(a0)             # 0000015C
    bgtzl   t1, lbl_80A84AA4
    lw      $ra, 0x0014($sp)
    lh      t2, 0x0160(a0)             # 00000160
lbl_80A84A78:
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0160(a0)             # 00000160
    lh      t4, 0x0160(a0)             # 00000160
    bgtzl   t4, lbl_80A84AA4
    lw      $ra, 0x0014($sp)
    jal     func_80A8480C
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2815          # a1 = 00002815
    lw      $ra, 0x0014($sp)
lbl_80A84AA4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A84AB0:
    lui     t6, 0x0501                 # t6 = 05010000
    lui     t7, %hi(func_80A84ADC)     # t7 = 80A80000
    addiu   t6, t6, 0x44B0             # t6 = 050144B0
    addiu   t7, t7, %lo(func_80A84ADC) # t7 = 80A84ADC
    sb      $zero, 0x016C(a0)          # 0000016C
    sb      $zero, 0x016D(a0)          # 0000016D
    sb      $zero, 0x016E(a0)          # 0000016E
    sw      t6, 0x0164(a0)             # 00000164
    sw      t7, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80A84ADC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     v0, v1,  4
    andi    v0, v0, 0x0007             # v0 = 00000000
    beql    v0, $zero, lbl_80A84B24
    lbu     t6, 0x0181(s0)             # 00000181
    beq     v0, $at, lbl_80A84BB4
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    v0, $at, lbl_80A84B60
    lbu     t0, 0x0181(s0)             # 00000181
    beq     $zero, $zero, lbl_80A84C04
    lw      $ra, 0x001C($sp)
    lbu     t6, 0x0181(s0)             # 00000181
lbl_80A84B24:
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80A84C04
    lw      $ra, 0x001C($sp)
    lh      t8, 0x015A(s0)             # 0000015A
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    or      a0, s0, $zero              # a0 = 00000000
    bgtz    t8, lbl_80A84C00
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80A83D98
    sh      t9, 0x015A(s0)             # 0000015A
    jal     func_80A84C14
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A84C04
    lw      $ra, 0x001C($sp)
    lbu     t0, 0x0181(s0)             # 00000181
lbl_80A84B60:
    sra     a1, v1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    andi    t1, t0, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_80A84B80
    or      a0, a2, $zero              # a0 = 00000000
    lh      t2, 0x015A(s0)             # 0000015A
    blezl   t2, lbl_80A84B94
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
lbl_80A84B80:
    jal     func_8002049C
    sw      a2, 0x0024($sp)
    beq     v0, $zero, lbl_80A84C00
    lw      a2, 0x0024($sp)
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
lbl_80A84B94:
    sh      t3, 0x015A(s0)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A83D98
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80A84C14
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A84C04
    lw      $ra, 0x001C($sp)
lbl_80A84BB4:
    lbu     t4, 0x0181(s0)             # 00000181
    andi    t5, t4, 0x0002             # t5 = 00000000
    beq     t5, $zero, lbl_80A84BF8
    nop
    lbu     t6, 0x016F(s0)             # 0000016F
    andi    t7, t6, 0x0002             # t7 = 00000000
    bne     t7, $zero, lbl_80A84BF8
    nop
    lh      t8, 0x015A(s0)             # 0000015A
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    or      a0, s0, $zero              # a0 = 00000000
    bgtz    t8, lbl_80A84BF8
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80A83D98
    sh      t9, 0x015A(s0)             # 0000015A
    jal     func_80A84C14
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A84BF8:
    jal     func_80A83ECC
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A84C00:
    lw      $ra, 0x001C($sp)
lbl_80A84C04:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A84C14:
    lui     t6, %hi(func_80A84C30)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A84C30) # t6 = 80A84C30
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x015C(a0)             # 0000015C
    jr      $ra
    nop


func_80A84C30:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     t6, 0x015E(s0)             # 0000015E
    beq     t6, $zero, lbl_80A84C70
    nop
    jal     func_80049DA4
    nop
    lbu     t7, 0x0002(s0)             # 00000002
    beq     v0, t7, lbl_80A84C70
    nop
    lh      t8, 0x015C(s0)             # 0000015C
    bgtzl   t8, lbl_80A84CA8
    lw      $ra, 0x001C($sp)
lbl_80A84C70:
    jal     func_80A84CB8
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     t0, t9,  4
    andi    t1, t0, 0x0007             # t1 = 00000000
    bnel    t1, $at, lbl_80A84C9C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A83ECC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A84C9C:
    jal     func_80022FD0
    addiu   a1, $zero, 0x28BA          # a1 = 000028BA
    lw      $ra, 0x001C($sp)
lbl_80A84CA8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A84CB8:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    lui     t6, 0x0501                 # t6 = 05010000
    lui     t7, %hi(func_80A84CE8)     # t7 = 80A80000
    addiu   t6, t6, 0x4CB0             # t6 = 05014CB0
    addiu   t7, t7, %lo(func_80A84CE8) # t7 = 80A84CE8
    sb      v0, 0x016C(a0)             # 0000016C
    sb      v0, 0x016D(a0)             # 0000016D
    sb      v0, 0x016E(a0)             # 0000016E
    sw      t6, 0x0164(a0)             # 00000164
    sw      t7, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80A84CE8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, a2, $zero              # a0 = 00000000
    sra     v0, v1,  4
    andi    v0, v0, 0x0007             # v0 = 00000000
    beq     v0, $zero, lbl_80A84D28
    sra     a1, v1,  8
    beq     v0, $at, lbl_80A84D48
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80A84D94
    nop
lbl_80A84D28:
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    bne     v0, $zero, lbl_80A84D94
    nop
    jal     func_80A84DB0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A84D94
    nop
lbl_80A84D48:
    lbu     t6, 0x0181(s0)             # 00000181
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80A84D94
    nop
    lbu     t8, 0x016F(s0)             # 0000016F
    andi    t9, t8, 0x0002             # t9 = 00000000
    bne     t9, $zero, lbl_80A84D94
    nop
    lh      t0, 0x015A(s0)             # 0000015A
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    or      a0, s0, $zero              # a0 = 00000000
    bgtz    t0, lbl_80A84D94
    nop
    sh      t1, 0x015A(s0)             # 0000015A
    jal     func_80A84DB0
    sw      a2, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80A83E44
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A84D94:
    jal     func_80A83ECC
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A84DB0:
    lui     t6, %hi(func_80A84DCC)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A84DCC) # t6 = 80A84DCC
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x015C(a0)             # 0000015C
    jr      $ra
    nop


func_80A84DCC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     t7, t6,  4
    andi    t8, t7, 0x0007             # t8 = 00000000
    bne     t8, $at, lbl_80A84E24
    nop
    lbu     t9, 0x015E(s0)             # 0000015E
    beq     t9, $zero, lbl_80A84E24
    nop
    jal     func_80049DA4
    nop
    lbu     t0, 0x0002(s0)             # 00000002
    beq     v0, t0, lbl_80A84E24
    nop
    lh      t1, 0x015C(s0)             # 0000015C
    bgtzl   t1, lbl_80A84E44
    lw      $ra, 0x001C($sp)
lbl_80A84E24:
    jal     func_80A84AB0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A83ECC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x28BA          # a1 = 000028BA
    lw      $ra, 0x001C($sp)
lbl_80A84E44:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A84E54:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x0158(a3)             # 00000158
    blez    v0, lbl_80A84E78
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(a3)             # 00000158
lbl_80A84E78:
    lh      v0, 0x015C(a3)             # 0000015C
    blez    v0, lbl_80A84E88
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x015C(a3)             # 0000015C
lbl_80A84E88:
    sw      a3, 0x0020($sp)
    lw      t9, 0x0154(a3)             # 00000154
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lw      a3, 0x0020($sp)
    lh      t8, 0x001C(a3)             # 0000001C
    andi    t0, t8, 0x0007             # t0 = 00000000
    sltiu   $at, t0, 0x0005
    beq     $at, $zero, lbl_80A84F7C
    sll     t0, t0,  2
    lui     $at, %hi(var_80A855A8)     # $at = 80A80000
    addu    $at, $at, t0
    lw      t0, %lo(var_80A855A8)($at)
    jr      t0
    nop
var_80A84ECC:
    lbu     t1, 0x0150(a3)             # 00000150
    beq     $zero, $zero, lbl_80A84F7C
    sb      t1, 0x016F(a3)             # 0000016F
var_80A84ED8:
    lbu     v0, 0x0181(a3)             # 00000181
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t2, v0, 0xFFFD             # t2 = 00000000
    sb      t2, 0x0181(a3)             # 00000181
    addu    a1, s0, $at
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, a3, 0x0170             # a2 = 00000170
    jal     func_8004BF40              # CollisionCheck_setAC
    sb      v0, 0x016F(a3)             # 0000016F
    beq     $zero, $zero, lbl_80A84F80
    lw      $ra, 0x001C($sp)
var_80A84F08:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8007943C
    sw      a3, 0x0020($sp)
    bne     v0, $zero, lbl_80A84F2C
    lw      a3, 0x0020($sp)
    lh      v0, 0x015A(a3)             # 0000015A
    blez    v0, lbl_80A84F2C
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x015A(a3)             # 0000015A
lbl_80A84F2C:
    lbu     v0, 0x0181(a3)             # 00000181
    lh      t5, 0x015A(a3)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    andi    t4, v0, 0xFFFD             # t4 = 00000000
    sb      t4, 0x0181(a3)             # 00000181
    bgtz    t5, lbl_80A84F64
    sb      v0, 0x016F(a3)             # 0000016F
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s0, $at
    addiu   a2, a3, 0x0170             # a2 = 00000170
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a3, 0x0020($sp)
    lw      a3, 0x0020($sp)
lbl_80A84F64:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s0, $at
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, a3, 0x0170             # a2 = 00000170
lbl_80A84F7C:
    lw      $ra, 0x001C($sp)
lbl_80A84F80:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A84F90:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A85518)      # a1 = 80A80000
    or      a0, a2, $zero              # a0 = 00000000
    sra     t7, t6,  4
    andi    t8, t7, 0x0007             # t8 = 00000000
    sll     t9, t8,  2
    addu    a1, a1, t9
    jal     func_80028048
    lw      a1, %lo(var_80A85518)(a1)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A84FD4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0500                 # a1 = 05000000
    addiu   a1, a1, 0x5AD0             # a1 = 05005AD0
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A85004:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0030($sp)
    lw      t2, 0x0034($sp)
    lh      t7, 0x001C(t6)             # 0000001C
    sra     t8, t7,  4
    andi    t9, t8, 0x0007             # t9 = 00000000
    sw      t9, 0x0028($sp)
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      a2, 0x0024($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x0034($sp)
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      t0, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lw      t1, 0x0028($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t9, 0x0030($sp)
    sll     t8, t1,  4
    lui     a3, %hi(var_80A85528)      # a3 = 80A80000
    lh      t2, 0x0160(t9)             # 00000160
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t3, t2,  2
    addu    t4, t8, t3
    addu    a3, a3, t4
    lw      a3, %lo(var_80A85528)(a3)
    lui     t2, 0x8012                 # t2 = 80120000
    sll     t6, a3,  4
    srl     t7, t6, 28
    sll     t9, t7,  2
    addu    t2, t2, t9
    lw      t2, 0x0C38(t2)             # 80120C38
    and     t5, a3, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t5, t2
    addu    t3, t8, $at
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t6, 0xDE00                 # t6 = DE000000
    sll     t7, t1,  2
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(a2)             # 000002C0
    lui     t9, %hi(var_80A85548)      # t9 = 80A80000
    addu    t9, t9, t7
    sw      t6, 0x0000(v1)             # 00000000
    lw      t9, %lo(var_80A85548)(t9)
    sw      t9, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80A85114:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s0, 0x0038($sp)
    lh      t6, 0x001C(s1)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    sra     t7, t6,  4
    andi    t8, t7, 0x0007             # t8 = 00000000
    sw      t8, 0x007C($sp)
    jal     func_80022554
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E2C0
    sw      a0, 0x0078($sp)
    lw      a1, 0x0078($sp)
    lw      s0, 0x02D0(a1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(a1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0070($sp)
    lw      a2, 0x0070($sp)
    lw      a1, 0x0078($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      s0, 0x02D0(a1)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    lui     t4, %hi(var_80A85550)      # t4 = 80A80000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(a1)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    lw      t0, 0x007C($sp)
    addiu   t4, t4, %lo(var_80A85550)  # t4 = 80A85550
    sll     t0, t0,  2
    addu    a3, t0, t4
    lw      t5, 0x0000(a3)             # 00000000
    sw      t5, 0x0004(s0)             # 00000004
    lw      a0, 0x0000(s2)             # 00000000
    sw      t0, 0x004C($sp)
    sw      a3, 0x0048($sp)
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0060($sp)
    lw      a1, 0x0060($sp)
    lw      a3, 0x0048($sp)
    lui     t8, %hi(var_80A85554)      # t8 = 80A80000
    sw      v0, 0x0004(a1)             # 00000004
    addiu   t8, t8, %lo(var_80A85554)  # t8 = 80A85554
    bne     a3, t8, lbl_80A85264
    or      a1, $zero, $zero           # a1 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0024             # t1 = DB060024
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      a0, 0x0164(s1)             # 00000164
    lui     t5, 0x8012                 # t5 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t2, a0,  4
    srl     t3, t2, 28
    sll     t4, t3,  2
    addu    t5, t5, t4
    lw      t5, 0x0C38(t5)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t5, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v1)             # 00000004
lbl_80A85264:
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t1, 0xFB00                 # t1 = FB000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lbu     t6, 0x016D(s1)             # 0000016D
    lbu     t3, 0x016C(s1)             # 0000016C
    lbu     t1, 0x016E(s1)             # 0000016E
    sll     t7, t6, 16
    sll     t4, t3, 24
    or      t8, t4, t7                 # t8 = 00000000
    sll     t2, t1,  8
    or      t3, t8, t2                 # t3 = 00000000
    ori     t5, t3, 0x0080             # t5 = 00000080
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lbu     a3, 0x0169(s1)             # 00000169
    lbu     a2, 0x0168(s1)             # 00000168
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t7, 0x0010($sp)
    lbu     t8, 0x016A(s1)             # 0000016A
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    sw      t8, 0x001C($sp)
    lbu     t2, 0x016B(s1)             # 0000016B
    sw      t5, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      v1, 0x0054($sp)
    jal     func_8007EB84
    sw      t2, 0x0020($sp)
    lw      t0, 0x0054($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    lui     t9, %hi(var_80A85564)      # t9 = 80A80000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t7, 0x004C($sp)
    addu    t9, t9, t7
    lw      t9, %lo(var_80A85564)(t9)
    sw      t9, 0x0004(v1)             # 00000004
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_80A8534C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    lui     t9, %hi(var_80A85578)      # t9 = 80A80000
    andi    t7, t6, 0x0007             # t7 = 00000000
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, %lo(var_80A85578)(t9)
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80A85390: .word 0x012A0000, 0x00000010, 0x00030000, 0x00000248
.word func_80A83F14
.word func_80A841AC
.word func_80A84E54
.word func_80A8534C
var_80A853B0: .word 0x41200000
var_80A853B4: .word 0x41200000
var_80A853B8: .word 0x00000000
var_80A853BC: .word 0x41F00000
var_80A853C0: .word 0x41F00000
var_80A853C4: .word \
0x00000000, 0x00000000, 0x00000000, 0x40000040, \
0x00000000, 0x00010000, 0xC1A00000, 0x41980000, \
0xC1A00000, 0xC1A00000, 0x41980000, 0x41A00000, \
0x41A00000, 0x41980000, 0x41A00000, 0x00000000, \
0x00000000, 0x00000000, 0x40000040, 0x00000000, \
0x00010000, 0x41A00000, 0x41980000, 0x41A00000, \
0x41A00000, 0x41980000, 0xC1A00000, 0xC1A00000, \
0x41980000, 0xC1A00000
var_80A8543C: .word 0x0A000900, 0x00020000, 0x00000002
.word var_80A853C4
var_80A8544C: .word \
0x04000000, 0x00000000, 0x00000000, 0x0001F824, \
0x00000000, 0x00010000, 0x00000000, 0x41B80000, \
0x41080000, 0xC1B80000, 0x00000000, 0x41080000, \
0x00000000, 0xC1B80000, 0x41080000, 0x00000000, \
0x00000000, 0x00000000, 0x0001F824, 0x00000000, \
0x00010000, 0x00000000, 0x41B80000, 0x41080000, \
0x00000000, 0xC1B80000, 0x41080000, 0x41B80000, \
0x00000000, 0x41080000
var_80A854C4: .word 0x0A000900, 0x00020000, 0x00000002
.word var_80A8544C
var_80A854D4: .word \
0x00000000, 0x00000000, 0x00000000, 0xEFC1FFFE, \
0x00000000, 0x00010100, 0x00000000, 0x012C0000, \
0x00140064
var_80A854F8: .word 0x09000939, 0x20000000, 0x00000001
.word var_80A854D4
var_80A85508: .word 0xC8500064, 0xB0F407D0, 0xB0F80190, 0x30FC07D0
var_80A85518: .word 0x05005800, 0x05006170, 0x05005D50, 0x05005D50
var_80A85528: .word \
0x0500A8A0, 0x050098A0, 0x0500A0A0, 0x050090A0, \
0x0500B0A0, 0x0500B8A0, 0x0500C0A0, 0x0500C0A0
var_80A85548: .word 0x05006610, 0x05006810
var_80A85550: .word 0x05006E60
var_80A85554: .word 0x05007488, 0x00000000, 0x00000000, 0x05006E60
var_80A85564: .word \
0x05006D10, 0x05007340, 0x00000000, 0x00000000, \
0x05006D10
var_80A85578: .word func_80A84F90
.word func_80A84FD4
.word func_80A85004
.word func_80A85114
.word func_80A85114
.word 0x00000000

.section .rodata

var_80A85590: .word 0x3E28F5C3
var_80A85594: .word 0x3D4AC083
var_80A85598: .word 0x3C872B02
var_80A8559C: .word 0x3C872B02
var_80A855A0: .word 0x3D4AC083
var_80A855A4: .word 0x3E28F5C3
var_80A855A8: .word var_80A84ECC
.word var_80A84ECC
.word var_80A84ED8
.word var_80A84F08
.word var_80A84F08
.word 0x00000000

