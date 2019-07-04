.section .text
func_80B86750:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    lui     t0, %hi(var_80B87158)      # t0 = 80B80000
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    swc1    $f6, 0x0014($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    sw      a0, 0x003C($sp)
    sra     t7, t6,  8
    andi    t8, t7, 0x0001             # t8 = 00000000
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    addu    t0, t0, t9
    lh      t0, %lo(var_80B87158)(t0)
    sw      a1, 0x0044($sp)
    addiu   a2, $zero, 0x008B          # a2 = 0000008B
    jal     func_80025110              # ActorSpawn
    sw      t0, 0x0024($sp)
    lw      v0, 0x011C(s0)             # 0000011C
    lui     t5, %hi(var_80B87158)      # t5 = 80B80000
    lw      a0, 0x003C($sp)
    lwc1    $f8, 0x0028(v0)            # 00000028
    lw      a3, 0x0024(v0)             # 00000024
    lw      a1, 0x0044($sp)
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(v0)           # 0000002C
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    swc1    $f10, 0x0014($sp)
    lh      t1, 0x001C(v0)             # 0000001C
    addiu   a2, $zero, 0x008B          # a2 = 0000008B
    sra     t2, t1,  8
    andi    t3, t2, 0x0001             # t3 = 00000000
    sll     t4, t3,  2
    subu    t4, t4, t3
    sll     t4, t4,  2
    addu    t5, t5, t4
    lh      t5, %lo(var_80B87158)(t5)
    jal     func_80025110              # ActorSpawn
    sw      t5, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80B8682C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x003C($sp)
    jal     func_80035388
    sw      a0, 0x0038($sp)
    beq     v0, $zero, lbl_80B86850
    lw      a0, 0x0038($sp)
    beq     $zero, $zero, lbl_80B8699C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B86850:
    lui     v1, %hi(var_80B87168)      # v1 = 80B80000
    addiu   v1, v1, %lo(var_80B87168)  # v1 = 80B87168
    lh      t7, 0x001C(a0)             # 0000001C
    lwc1    $f6, 0x0090(a0)            # 00000090
    lw      t6, 0x003C($sp)
    sra     t8, t7, 11
    andi    t9, t8, 0x0007             # t9 = 00000000
    sll     t0, t9,  2
    addu    t1, v1, t0
    lwc1    $f4, 0x0000(t1)            # 00000000
    lw      v0, 0x1C44(t6)             # 00001C44
    lw      a3, 0x011C(a0)             # 0000011C
    c.le.s  $f6, $f4
    addiu   a1, $sp, 0x0020            # a1 = FFFFFFE8
    addiu   a2, v0, 0x0024             # a2 = 00000024
    bc1tl   lbl_80B868C4
    sw      a0, 0x0038($sp)
    lh      t2, 0x001C(a3)             # 0000001C
    lwc1    $f10, 0x0090(a3)           # 00000090
    sra     t3, t2, 11
    andi    t4, t3, 0x0007             # t4 = 00000000
    sll     t5, t4,  2
    addu    t6, v1, t5
    lwc1    $f8, 0x0000(t6)            # 00000000
    c.le.s  $f10, $f8
    nop
    bc1f    lbl_80B86994
    nop
    sw      a0, 0x0038($sp)
lbl_80B868C4:
    sw      a2, 0x0018($sp)
    jal     func_8002154C
    sw      a3, 0x0030($sp)
    lw      a0, 0x0038($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    lwc1    $f16, 0x0050(a0)           # 00000050
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    mul.s   $f4, $f16, $f18
    lwc1    $f0, 0x0020($sp)
    lw      a3, 0x0030($sp)
    lw      a2, 0x0018($sp)
    abs.s   $f0, $f0
    addiu   a1, $sp, 0x0020            # a1 = FFFFFFE8
    or      a0, a3, $zero              # a0 = 00000000
    add.s   $f2, $f4, $f6
    c.lt.s  $f2, $f0
    lwc1    $f0, 0x0028($sp)
    bc1t    lbl_80B86934
    nop
    abs.s   $f0, $f0
    c.lt.s  $f2, $f0
    nop
    bc1t    lbl_80B86934
    nop
    beq     $zero, $zero, lbl_80B8699C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B86934:
    jal     func_8002154C
    sw      a3, 0x0030($sp)
    lw      a3, 0x0030($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    lwc1    $f8, 0x0050(a3)            # 00000050
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    mul.s   $f16, $f8, $f10
    lwc1    $f0, 0x0020($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    abs.s   $f0, $f0
    add.s   $f2, $f16, $f18
    c.lt.s  $f2, $f0
    lwc1    $f0, 0x0028($sp)
    bc1t    lbl_80B8699C
    nop
    abs.s   $f0, $f0
    c.lt.s  $f2, $f0
    nop
    bc1t    lbl_80B8699C
    nop
    beq     $zero, $zero, lbl_80B8699C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B86994:
    beq     $zero, $zero, lbl_80B8699C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B8699C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80B869AC:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    addiu   s1, $sp, 0x003C            # s1 = FFFFFFF4
    sw      $ra, 0x001C($sp)
    sw      a1, 0x004C($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sw      a1, 0x002C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    or      a0, s1, $zero              # a0 = FFFFFFF4
    lw      a1, 0x011C(s0)             # 0000011C
    lw      a0, 0x002C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a1, 0x0024             # a1 = 00000024
    lw      a0, 0x011C(s0)             # 0000011C
    or      a1, s1, $zero              # a1 = FFFFFFF4
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, a0, 0x0024             # a0 = 00000024
    lw      v0, 0x011C(s0)             # 0000011C
    lh      v1, 0x0032(s0)             # 00000032
    addiu   a2, s0, 0x0050             # a2 = 00000050
    lh      t6, 0x0032(v0)             # 00000032
    or      a1, a2, $zero              # a1 = 00000050
    or      a0, s1, $zero              # a0 = FFFFFFF4
    sh      t6, 0x0032(s0)             # 00000032
    sh      v1, 0x0032(v0)             # 00000032
    lw      v0, 0x011C(s0)             # 0000011C
    lh      v1, 0x00B6(s0)             # 000000B6
    lh      t7, 0x00B6(v0)             # 000000B6
    sh      t7, 0x00B6(s0)             # 000000B6
    sh      v1, 0x00B6(v0)             # 000000B6
    lw      v0, 0x011C(s0)             # 0000011C
    lh      v1, 0x0018(s0)             # 00000018
    lh      t8, 0x0018(v0)             # 00000018
    sh      t8, 0x0018(s0)             # 00000018
    sh      v1, 0x0018(v0)             # 00000018
    jal     func_80063CAC              # Vec3f_Copy
    sw      a2, 0x0028($sp)
    lw      a1, 0x011C(s0)             # 0000011C
    lw      a0, 0x0028($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a1, 0x0050             # a1 = 00000050
    lw      a0, 0x011C(s0)             # 0000011C
    or      a1, s1, $zero              # a1 = FFFFFFF4
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, a0, 0x0050             # a0 = 00000050
    addiu   a2, s0, 0x0038             # a2 = 00000038
    or      a1, a2, $zero              # a1 = 00000038
    sw      a2, 0x0028($sp)
    jal     func_80063CAC              # Vec3f_Copy
    or      a0, s1, $zero              # a0 = FFFFFFF4
    lw      a1, 0x011C(s0)             # 0000011C
    lw      a0, 0x0028($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a1, 0x0038             # a1 = 00000038
    lw      a0, 0x011C(s0)             # 0000011C
    or      a1, s1, $zero              # a1 = FFFFFFF4
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, a0, 0x0038             # a0 = 00000038
    addiu   a2, s0, 0x0044             # a2 = 00000044
    lwl     t1, 0x0000(a2)             # 00000044
    lwr     t1, 0x0003(a2)             # 00000047
    addiu   t0, $sp, 0x0034            # t0 = FFFFFFEC
    addiu   a1, s0, 0x0008             # a1 = 00000008
    sw      t1, 0x0000(t0)             # FFFFFFEC
    lhu     t1, 0x0004(a2)             # 00000048
    sh      t1, 0x0004(t0)             # FFFFFFF0
    lw      t2, 0x011C(s0)             # 0000011C
    lwl     t4, 0x0044(t2)             # 00000044
    lwr     t4, 0x0047(t2)             # 00000047
    swl     t4, 0x0000(a2)             # 00000044
    swr     t4, 0x0003(a2)             # 00000047
    lhu     t4, 0x0048(t2)             # 00000048
    sh      t4, 0x0004(a2)             # 00000048
    lw      t5, 0x011C(s0)             # 0000011C
    lw      t7, 0x0000(t0)             # FFFFFFEC
    swl     t7, 0x0044(t5)             # 00000044
    swr     t7, 0x0047(t5)             # 00000047
    lhu     t7, 0x0004(t0)             # FFFFFFF0
    sh      t7, 0x0048(t5)             # 00000048
    lw      v0, 0x011C(s0)             # 0000011C
    lh      v1, 0x001C(s0)             # 0000001C
    lh      t9, 0x001C(v0)             # 0000001C
    andi    t8, v1, 0x8000             # t8 = 00000000
    andi    t5, v1, 0x7FFF             # t5 = 00000000
    andi    t1, t9, 0x7FFF             # t1 = 00000000
    or      t2, t8, t1                 # t2 = 00000000
    sh      t2, 0x001C(s0)             # 0000001C
    lh      t3, 0x001C(v0)             # 0000001C
    andi    t4, t3, 0x8000             # t4 = 00000000
    or      t6, t4, t5                 # t6 = 00000000
    sh      t6, 0x001C(v0)             # 0000001C
    jal     func_800A5538
    lw      a0, 0x002C($sp)
    lui     $at, %hi(var_80B871B0)     # $at = 80B80000
    lwc1    $f4, %lo(var_80B871B0)($at)
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80B86B5C
    lh      a1, 0x001C(s0)             # 0000001C
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x004C($sp)
    jal     func_80020510
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     $zero, $zero, lbl_80B86B6C
    lw      $ra, 0x001C($sp)
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80B86B5C:
    lw      a0, 0x004C($sp)
    jal     func_800204D0
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80B86B6C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80B86B7C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      v1, 0x1C44(a2)             # 00001C44
    sw      a2, 0x0024($sp)
    lw      a0, 0x0020($sp)
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80B8682C
    sw      v1, 0x001C($sp)
    lw      v1, 0x001C($sp)
    beq     v0, $zero, lbl_80B86BE8
    lw      a2, 0x0024($sp)
    lw      v0, 0x0670(v1)             # 00000670
    lui     $at, 0x0080                # $at = 00800000
    or      a0, a2, $zero              # a0 = 00000000
    sll     t6, v0,  7
    bgez    t6, lbl_80B86BE4
    or      t9, v0, $at                # t9 = 00800000
    jal     func_800DD400
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      t8, 0x0020($sp)
    lui     t7, %hi(func_80B86BFC)     # t7 = 80B80000
    addiu   t7, t7, %lo(func_80B86BFC) # t7 = 80B86BFC
    beq     $zero, $zero, lbl_80B86BE8
    sw      t7, 0x0158(t8)             # 00000158
lbl_80B86BE4:
    sw      t9, 0x0670(v1)             # 00000670
lbl_80B86BE8:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B86BFC:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a1, $at
    lhu     t6, 0x04C6(v0)             # 000004C6
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t7, %hi(func_80B86B7C)     # t7 = 80B80000
    bne     t6, $at, lbl_80B86C1C
    addiu   t7, t7, %lo(func_80B86B7C) # t7 = 80B86B7C
    sw      t7, 0x0158(a0)             # 00000158
lbl_80B86C1C:
    lhu     t8, 0x04C4(v0)             # 000004C4
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t8, $at, lbl_80B86C6C
    nop
    lhu     t9, 0x0162(a0)             # 00000162
    addiu   $at, $zero, 0x00FE         # $at = 000000FE
    addiu   t0, $zero, 0x006E          # t0 = 0000006E
    bnel    t9, $at, lbl_80B86C50
    lh      t1, 0x015E(a0)             # 0000015E
    beq     $zero, $zero, lbl_80B86C6C
    sh      t0, 0x015E(a0)             # 0000015E
    lh      t1, 0x015E(a0)             # 0000015E
lbl_80B86C50:
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x015E(a0)             # 0000015E
    lh      t3, 0x015E(a0)             # 0000015E
    bne     t3, $zero, lbl_80B86C6C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B86C6C:
    jr      $ra
    nop


func_80B86C74:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a0, 0x0018($sp)
    lw      t9, 0x0158(a0)             # 00000158
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    nop
    lw      t6, 0x001C($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    lw      a0, 0x0018($sp)
    addu    t7, t7, t6
    lhu     t7, 0x04C4(t7)             # 000104C4
    sh      t7, 0x0162(a0)             # 00000162
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80B86CB8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    sw      $zero, 0x0024($sp)
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      t6, 0x00B8(s0)             # 000000B8
    lui     a1, %hi(var_80B87188)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B87188)  # a1 = 80B87188
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80063F7C
    sh      t6, 0x0034(s0)             # 00000034
    lh      t7, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80B87150)      # a1 = 80B80000
    or      a0, s0, $zero              # a0 = 00000000
    sra     t8, t7,  8
    andi    t9, t8, 0x0001             # t9 = 00000000
    sll     t0, t9,  2
    subu    t0, t0, t9
    sll     t0, t0,  2
    addu    a1, a1, t0
    jal     func_80020F88
    lw      a1, %lo(var_80B87150)(a1)
    lh      t2, 0x001C(s0)             # 0000001C
    lui     t1, %hi(func_80B86B7C)     # t1 = 80B80000
    addiu   t1, t1, %lo(func_80B86B7C) # t1 = 80B86B7C
    sra     t3, t2,  8
    andi    t4, t3, 0x0001             # t4 = 00000000
    sll     t5, t4,  2
    subu    t5, t5, t4
    sll     t5, t5,  2
    lui     a1, %hi(var_80B87154)      # a1 = 80B80000
    sw      t1, 0x0158(s0)             # 00000158
    addu    a1, a1, t5
    lw      a1, %lo(var_80B87154)(a1)
    jal     func_80020F04
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    sra     t7, t6, 15
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B86DBC
    nop
    jal     func_80B86E40
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0034($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B86D88
    or      a0, s0, $zero              # a0 = 00000000
    sw      $zero, 0x0134(s0)          # 00000134
lbl_80B86D88:
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0B30             # a0 = 06000B30
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    beq     $zero, $zero, lbl_80B86DC4
    sw      v0, 0x013C(s0)             # 0000013C
lbl_80B86DBC:
    jal     func_80B86E18
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B86DC4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80B86DD8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lw      a0, 0x001C($sp)
    sra     t7, t6, 15
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B86E08
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(a3)             # 0000013C
lbl_80B86E08:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B86E18:
    lui     t6, %hi(func_80B86E30)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B86E30) # t6 = 80B86E30
    sw      t6, 0x0154(a0)             # 00000154
    sw      $zero, 0x0134(a0)          # 00000134
    jr      $ra
    nop


func_80B86E30:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B86E40:
    lui     t6, %hi(func_80B86E54)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B86E54) # t6 = 80B86E54
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80B86E54:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x1C6C(a3)             # 00001C6C
    addiu   a0, $zero, 0x01D6          # a0 = 000001D6
    beql    v0, $zero, lbl_80B86F08
    lh      t1, 0x0164(a2)             # 00000164
    lh      t6, 0x0000(v0)             # 00000000
lbl_80B86E78:
    bnel    a0, t6, lbl_80B86EFC
    lw      v0, 0x0124(v0)             # 00000124
    lh      v1, 0x001C(v0)             # 0000001C
    sra     t7, v1, 15
    andi    t8, t7, 0x0001             # t8 = 00000000
    bnel    t8, $zero, lbl_80B86EFC
    lw      v0, 0x0124(v0)             # 00000124
    lh      a1, 0x001C(a2)             # 0000001C
    andi    t9, v1, 0x003F             # t9 = 00000000
    andi    a1, a1, 0x003F             # a1 = 00000000
    bnel    t9, a1, lbl_80B86EFC
    lw      v0, 0x0124(v0)             # 00000124
    sw      v0, 0x011C(a2)             # 0000011C
    sw      a3, 0x001C($sp)
    sw      a2, 0x0018($sp)
    jal     func_8002049C
    or      a0, a3, $zero              # a0 = 00000000
    lw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80B86EE8
    lw      a3, 0x001C($sp)
    or      a0, a2, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_80B869AC
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lui     t0, %hi(func_80B87038)     # t0 = 80B80000
    addiu   t0, t0, %lo(func_80B87038) # t0 = 80B87038
    sw      t0, 0x0134(a2)             # 00000134
lbl_80B86EE8:
    jal     func_80B86F38
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B86F2C
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0124(v0)             # 00000124
lbl_80B86EFC:
    bnel    v0, $zero, lbl_80B86E78
    lh      t6, 0x0000(v0)             # 00000000
    lh      t1, 0x0164(a2)             # 00000164
lbl_80B86F08:
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x0164(a2)             # 00000164
    lh      t3, 0x0164(a2)             # 00000164
    slti    $at, t3, 0x003D
    bnel    $at, $zero, lbl_80B86F2C
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_80B86F2C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B86F38:
    lui     t6, %hi(func_80B86F4C)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B86F4C) # t6 = 80B86F4C
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80B86F4C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B86C74
    lw      a1, 0x0024($sp)
    beql    v0, $zero, lbl_80B86FAC
    lh      v0, 0x0160(s0)             # 00000160
    lh      t6, 0x015C(s0)             # 0000015C
    or      a0, s0, $zero              # a0 = 00000000
    bgtzl   t6, lbl_80B86FAC
    lh      v0, 0x0160(s0)             # 00000160
    jal     func_80B86750
    lw      a1, 0x0024($sp)
    addiu   t7, $zero, 0x00A0          # t7 = 000000A0
    sh      t7, 0x015C(s0)             # 0000015C
    lw      a0, 0x0024($sp)
    jal     func_8006BA10
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    sh      t8, 0x0160(s0)             # 00000160
    lh      v0, 0x0160(s0)             # 00000160
lbl_80B86FAC:
    blez    v0, lbl_80B86FD0
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0160(s0)             # 00000160
    lh      t0, 0x0160(s0)             # 00000160
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t0, $zero, lbl_80B86FD4
    lh      t1, 0x015C(s0)             # 0000015C
    jal     func_80B869AC
    lw      a1, 0x0024($sp)
lbl_80B86FD0:
    lh      t1, 0x015C(s0)             # 0000015C
lbl_80B86FD4:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    t1, $at, lbl_80B86FEC
    lw      $ra, 0x001C($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    lw      $ra, 0x001C($sp)
lbl_80B86FEC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B86FFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    lh      v0, 0x015C(a0)             # 0000015C
    blez    v0, lbl_80B87028
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015C(a0)             # 0000015C
lbl_80B87028:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B87038:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    lui     t1, %hi(var_80B87194)      # t1 = 80B80000
    addiu   t1, t1, %lo(var_80B87194)  # t1 = 80B87194
    lh      t7, 0x0018(t6)             # 00000018
    lw      t2, 0x002C($sp)
    andi    t8, t7, 0x0007             # t8 = 00000000
    sll     t9, t8,  2
    subu    t9, t9, t8
    addu    a3, t9, t1
    lw      a0, 0x0000(t2)             # 00000000
    sw      a3, 0x0024($sp)
    jal     func_8007E298
    sw      a0, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x002C($sp)
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      t0, 0x0018($sp)
    lw      a2, 0x0020($sp)
    lw      a3, 0x0024($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t3, 0x0001(a3)             # 00000001
    lbu     t9, 0x0000(a3)             # 00000000
    lbu     t7, 0x0002(a3)             # 00000002
    sll     t4, t3, 16
    sll     t1, t9, 24
    or      t5, t1, t4                 # t5 = 00000000
    sll     t8, t7,  8
    or      t9, t5, t8                 # t9 = 00000000
    ori     t2, t9, 0x00FF             # t2 = 000000FF
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x0980             # t4 = 06000980
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      t1, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80B87130: .word 0x01D60700, 0x0A000011, 0x01900000, 0x00000168
.word func_80B86CB8
.word func_80B86DD8
.word func_80B86FFC
.word func_80B87038
var_80B87150: .word 0x3F800000
var_80B87154: .word 0x42700000
var_80B87158: .word 0x00180000, 0x3F19999A, 0x42200000, 0x00190000
var_80B87168: .word \
0x42700000, 0x42C80000, 0x430C0000, 0x43340000, \
0x435C0000, 0x43820000, 0x43960000, 0x43960000
var_80B87188: .word 0xB0F40708, 0xB0F8012C, 0x30FC05DC
var_80B87194: .word \
0x64788C50, 0x8CC86496, 0xC864C8F0, 0x506E8C46, \
0xA0E15064, 0x82646EBE, 0x00000000

.section .rodata

var_80B871B0: .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000

