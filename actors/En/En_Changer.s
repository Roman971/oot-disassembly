.section .text
func_80AC3500:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AC3510:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x0040($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    s2, s1, $at
    lb      t0, 0x1CBC(s2)             # 00001CBC
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, %hi(var_80AC3DF0)      # a1 = 80AC0000
    addiu   t0, t0, 0xFFFF             # t0 = FFFFFFFF
    sll     t0, t0, 16
    sra     t0, t0, 16
    bgezl   t0, lbl_80AC355C
    sll     t6, t0,  2
    or      t0, $zero, $zero           # t0 = 00000000
    sll     t6, t0,  2
lbl_80AC355C:
    addu    a1, a1, t6
    lw      a1, %lo(var_80AC3DF0)(a1)
    jal     func_8002060C
    sh      t0, 0x0068($sp)
    beq     v0, $zero, lbl_80AC357C
    lh      t0, 0x0068($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x0158(s0)             # 00000158
lbl_80AC357C:
    lb      t8, 0x1CBC(s2)             # 00001CBC
    sll     t0, t0,  1
    sll     t0, t0, 16
    slti    $at, t8, 0x0006
    bne     $at, $zero, lbl_80AC36C8
    sra     t0, t0, 16
    lui     t9, 0x8012                 # t9 = 80120000
    lhu     t9, -0x4B3E(t9)            # 8011B4C2
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    andi    t2, t9, 0x0800             # t2 = 00000000
    beq     t2, $zero, lbl_80AC35B8
    lui     t3, %hi(var_80AC3E04)      # t3 = 80AC0000
    beq     $zero, $zero, lbl_80AC35BC
    addiu   v1, $zero, 0x4EA0          # v1 = 00004EA0
lbl_80AC35B8:
    addiu   v1, $zero, 0x4EC0          # v1 = 00004EC0
lbl_80AC35BC:
    lw      t3, %lo(var_80AC3E04)(t3)
    lui     $at, %hi(var_80AC3E10)     # $at = 80AC0000
    lwc1    $f4, %lo(var_80AC3E10)($at)
    or      v1, t3, v1                 # v1 = 80AC4EC0
    sll     v1, v1, 16
    sra     v1, v1, 16
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    addiu   t4, $zero, 0x7FFF          # t4 = 00007FFF
    sw      t4, 0x0020($sp)
    sw      a0, 0x004C($sp)
    sw      v1, 0x0028($sp)
    sh      v1, 0x006A($sp)
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    swc1    $f0, 0x0010($sp)
    swc1    $f0, 0x0014($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0024($sp)
    sh      t0, 0x0068($sp)
    jal     func_800253F0
    swc1    $f4, 0x0018($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lh      v1, 0x006A($sp)
    lh      t0, 0x0068($sp)
    beq     v0, $zero, lbl_80AC36C8
    sw      v0, 0x0148(s0)             # 00000148
    lh      t5, 0x0158(s0)             # 00000158
    lui     t6, 0x8012                 # t6 = 80120000
    lw      a0, 0x004C($sp)
    beq     t5, $zero, lbl_80AC365C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020624
    andi    a1, v1, 0x001F             # a1 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AC3A18
    lw      $ra, 0x0044($sp)
lbl_80AC365C:
    lhu     t6, -0x4B3E(t6)            # FFFFB4C2
    mfc1    a3, $f0
    addiu   a2, $zero, 0x010F          # a2 = 0000010F
    andi    t7, t6, 0x0800             # t7 = 00000000
    beq     t7, $zero, lbl_80AC367C
    lui     $at, %hi(var_80AC3E14)     # $at = 80AC0000
    beq     $zero, $zero, lbl_80AC3680
    addiu   v0, $zero, 0x000B          # v0 = 0000000B
lbl_80AC367C:
    addiu   v0, $zero, 0x000C          # v0 = 0000000C
lbl_80AC3680:
    lui     t8, %hi(var_80AC3E04)      # t8 = 80AC0000
    lw      t8, %lo(var_80AC3E04)(t8)
    lwc1    $f6, %lo(var_80AC3E14)($at)
    andi    t3, v0, 0x00FF             # t3 = 0000000C
    andi    t9, t8, 0x001F             # t9 = 00000000
    sll     t2, t9,  8
    addu    t4, t2, t3
    sw      t4, 0x0024($sp)
    swc1    $f0, 0x0010($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    lui     t5, %hi(func_80AC3C80)     # t5 = 80AC0000
    addiu   t5, t5, %lo(func_80AC3C80) # t5 = 80AC3C80
    beq     $zero, $zero, lbl_80AC3A14
    sw      t5, 0x013C(s0)             # 0000013C
lbl_80AC36C8:
    lb      t6, 0x1CBC(s2)             # 00001CBC
    lui     a1, %hi(var_80AC3DC0)      # a1 = 80AC0000
    addiu   a1, a1, %lo(var_80AC3DC0)  # a1 = 80AC3DC0
    sll     t7, t6,  2
    addu    t8, a1, t7
    lw      v1, 0x0000(t8)             # 00000000
    sh      t0, 0x014C(s0)             # 0000014C
    lb      t9, 0x1CBC(s2)             # 00001CBC
    lui     t7, %hi(var_80AC3DD8)      # t7 = 80AC0000
    ori     v0, t0, 0x4E21             # v0 = 00004E21
    sll     t2, t9,  2
    addu    t3, a1, t2
    lw      t4, 0x0000(t3)             # 00000000
    ori     a0, t0, 0x0001             # a0 = 00000001
    addiu   t8, $zero, 0x0071          # t8 = 00000071
    sh      t4, 0x0150(s0)             # 00000150
    lb      t5, 0x1CBC(s2)             # 00001CBC
    sh      v0, 0x006C($sp)
    sll     v1, v1,  5
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, %lo(var_80AC3DD8)(t7)
    ori     v1, v1, 0x4000             # v1 = 00004000
    sll     v1, v1, 16
    sh      t7, 0x0064($sp)
    sh      a0, 0x014E(s0)             # 0000014E
    sh      t8, 0x0152(s0)             # 00000152
    sra     v1, v1, 16
    or      v1, v1, t0                 # v1 = 00004000
    sll     v1, v1, 16
    sra     v1, v1, 16
    addiu   t9, $zero, 0x000D          # t9 = 0000000D
    addiu   t2, s1, 0x1C24             # t2 = 00001C24
    lui     $at, %hi(var_80AC3E18)     # $at = 80AC0000
    sh      t9, 0x0066($sp)
    lwc1    $f12, %lo(var_80AC3E18)($at)
    sw      t2, 0x004C($sp)
    sh      v1, 0x006E($sp)
    sh      t0, 0x0068($sp)
    sw      a0, 0x0050($sp)
    jal     func_80026D64
    sw      v0, 0x0054($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     a1, %hi(var_80AC3DC0)      # a1 = 80AC0000
    addiu   a1, a1, %lo(var_80AC3DC0)  # a1 = 80AC3DC0
    c.lt.s  $f0, $f8
    lw      v0, 0x0054($sp)
    lh      v1, 0x006E($sp)
    lw      a0, 0x0050($sp)
    bc1f    lbl_80AC3814
    lh      t0, 0x0068($sp)
    lb      t3, 0x1CBC(s2)             # 00001CBC
    sll     v1, v0, 16
    sra     v1, v1, 16
    sll     t4, t3,  2
    addu    t5, a1, t4
    lw      t1, 0x0000(t5)             # 00000000
    sh      t0, 0x014E(s0)             # 0000014E
    lb      t6, 0x1CBC(s2)             # 00001CBC
    lui     t4, %hi(var_80AC3DD8)      # t4 = 80AC0000
    sll     t1, t1,  5
    sll     t7, t6,  2
    addu    t8, a1, t7
    lw      t9, 0x0000(t8)             # 00000000
    ori     t1, t1, 0x4000             # t1 = 00004000
    sll     t1, t1, 16
    sh      t9, 0x0152(s0)             # 00000152
    lb      t2, 0x1CBC(s2)             # 00001CBC
    sra     t1, t1, 16
    or      t1, t1, t0                 # t1 = 00004000
    sll     t3, t2,  2
    addu    t4, t4, t3
    lw      t4, %lo(var_80AC3DD8)(t4)
    addiu   t5, $zero, 0x0071          # t5 = 00000071
    sll     t1, t1, 16
    sh      t4, 0x0066($sp)
    sh      a0, 0x014C(s0)             # 0000014C
    sh      t5, 0x0150(s0)             # 00000150
    sra     t1, t1, 16
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    sh      t6, 0x0064($sp)
    sh      t1, 0x006C($sp)
lbl_80AC3814:
    lb      t7, 0x1CBC(s2)             # 00001CBC
    lui     t9, %hi(var_80AC3D30)      # t9 = 80AC0000
    addiu   t9, t9, %lo(var_80AC3D30)  # t9 = 80AC3D30
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  2
    addu    v0, t8, t9
    lwc1    $f10, 0x0000(v0)           # 00000000
    lwc1    $f16, 0x0004(v0)           # 00000004
    lwc1    $f18, 0x0008(v0)           # 00000008
    addiu   t2, $zero, 0xC001          # t2 = FFFFC001
    sw      t2, 0x0020($sp)
    sw      v1, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    lw      a0, 0x004C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    swc1    $f10, 0x0010($sp)
    swc1    $f16, 0x0014($sp)
    jal     func_800253F0
    swc1    $f18, 0x0018($sp)
    beq     v0, $zero, lbl_80AC3900
    sw      v0, 0x0140(s0)             # 00000140
    lh      t3, 0x0158(s0)             # 00000158
    lw      a0, 0x004C($sp)
    or      a1, s1, $zero              # a1 = 00000000
    beq     t3, $zero, lbl_80AC38A4
    addiu   a2, $zero, 0x010F          # a2 = 0000010F
    lh      a1, 0x014C(s0)             # 0000014C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020624
    andi    a1, a1, 0x001F             # a1 = 00000000
    beq     $zero, $zero, lbl_80AC3904
    lb      t5, 0x1CBC(s2)             # 00001CBC
lbl_80AC38A4:
    lb      t4, 0x1CBC(s2)             # 00001CBC
    lui     t6, %hi(var_80AC3D30)      # t6 = 80AC0000
    addiu   t6, t6, %lo(var_80AC3D30)  # t6 = 80AC3D30
    sll     t5, t4,  2
    subu    t5, t5, t4
    sll     t5, t5,  2
    addu    v0, t5, t6
    lwc1    $f4, 0x0004(v0)            # 00000004
    lwc1    $f6, 0x0008(v0)            # 00000008
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    lh      t7, 0x014C(s0)             # 0000014C
    lh      t2, 0x0064($sp)
    lw      a3, 0x0000(v0)             # 00000000
    andi    t8, t7, 0x001F             # t8 = 00000000
    sll     t9, t8,  8
    andi    t3, t2, 0x00FF             # t3 = 00000000
    addu    t4, t9, t3
    jal     func_80025110              # ActorSpawn
    sw      t4, 0x0024($sp)
lbl_80AC3900:
    lb      t5, 0x1CBC(s2)             # 00001CBC
lbl_80AC3904:
    lui     t7, %hi(var_80AC3D78)      # t7 = 80AC0000
    addiu   t7, t7, %lo(var_80AC3D78)  # t7 = 80AC3D78
    sll     t6, t5,  2
    subu    t6, t6, t5
    sll     t6, t6,  2
    addu    v0, t6, t7
    lwc1    $f8, 0x0000(v0)            # 00000000
    lwc1    $f10, 0x0004(v0)           # 00000004
    lwc1    $f16, 0x0008(v0)           # 00000008
    lh      t2, 0x006C($sp)
    addiu   t8, $zero, 0x3FFF          # t8 = 00003FFF
    sw      t8, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    lw      a0, 0x004C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    swc1    $f8, 0x0010($sp)
    swc1    $f10, 0x0014($sp)
    swc1    $f16, 0x0018($sp)
    jal     func_800253F0
    sw      t2, 0x0028($sp)
    beq     v0, $zero, lbl_80AC39F8
    sw      v0, 0x0144(s0)             # 00000144
    lh      t9, 0x0158(s0)             # 00000158
    lw      a0, 0x004C($sp)
    or      a1, s1, $zero              # a1 = 00000000
    beq     t9, $zero, lbl_80AC399C
    addiu   a2, $zero, 0x010F          # a2 = 0000010F
    lh      a1, 0x014E(s0)             # 0000014E
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020624
    andi    a1, a1, 0x001F             # a1 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AC3A18
    lw      $ra, 0x0044($sp)
lbl_80AC399C:
    lb      t3, 0x1CBC(s2)             # 00001CBC
    lui     t5, %hi(var_80AC3D78)      # t5 = 80AC0000
    addiu   t5, t5, %lo(var_80AC3D78)  # t5 = 80AC3D78
    sll     t4, t3,  2
    subu    t4, t4, t3
    sll     t4, t4,  2
    addu    v0, t4, t5
    lwc1    $f18, 0x0004(v0)           # 00000004
    lwc1    $f4, 0x0008(v0)            # 00000008
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    swc1    $f18, 0x0010($sp)
    swc1    $f4, 0x0014($sp)
    lh      t6, 0x014E(s0)             # 0000014E
    lh      t2, 0x0066($sp)
    lw      a3, 0x0000(v0)             # 00000000
    andi    t7, t6, 0x001F             # t7 = 00000000
    sll     t8, t7,  8
    andi    t9, t2, 0x00FF             # t9 = 00000000
    addu    t3, t8, t9
    jal     func_80025110              # ActorSpawn
    sw      t3, 0x0024($sp)
lbl_80AC39F8:
    lw      t4, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t6, %hi(func_80AC3A2C)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC3A2C) # t6 = 80AC3A2C
    and     t5, t4, $at
    sw      t5, 0x0004(s0)             # 00000004
    sw      t6, 0x013C(s0)             # 0000013C
lbl_80AC3A14:
    lw      $ra, 0x0044($sp)
lbl_80AC3A18:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_80AC3A2C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0140(a2)             # 00000140
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    or      a0, a3, $zero              # a0 = 00000000
    lh      t7, 0x01E4(t6)             # 000001E4
    beql    t7, $zero, lbl_80AC3A80
    lw      t0, 0x0144(a2)             # 00000144
    lh      a1, 0x014E(a2)             # 0000014E
    sh      t8, 0x0156(a2)             # 00000156
    sw      a2, 0x0018($sp)
    jal     func_80020624
    andi    a1, a1, 0x001F             # a1 = 00000000
    lw      a2, 0x0018($sp)
    lui     t9, %hi(func_80AC3AD0)     # t9 = 80AC0000
    addiu   t9, t9, %lo(func_80AC3AD0) # t9 = 80AC3AD0
    beq     $zero, $zero, lbl_80AC3AC0
    sw      t9, 0x013C(a2)             # 0000013C
    lw      t0, 0x0144(a2)             # 00000144
lbl_80AC3A80:
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    lh      t1, 0x01E4(t0)             # 000001E4
    or      a0, a3, $zero              # a0 = 00000000
    beql    t1, $zero, lbl_80AC3AC4
    lw      $ra, 0x0014($sp)
    lh      a1, 0x014C(a2)             # 0000014C
    sh      t2, 0x0154(a2)             # 00000154
    sh      t3, 0x0156(a2)             # 00000156
    sw      a2, 0x0018($sp)
    jal     func_80020624
    andi    a1, a1, 0x001F             # a1 = 00000000
    lw      a2, 0x0018($sp)
    lui     t4, %hi(func_80AC3AD0)     # t4 = 80AC0000
    addiu   t4, t4, %lo(func_80AC3AD0) # t4 = 80AC3AD0
    sw      t4, 0x013C(a2)             # 0000013C
lbl_80AC3AC0:
    lw      $ra, 0x0014($sp)
lbl_80AC3AC4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AC3AD0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    lh      t6, 0x0156(s1)             # 00000156
    lw      v0, 0x0140(s1)             # 00000140
    lw      v1, 0x0144(s1)             # 00000144
    bnel    t6, $zero, lbl_80AC3C70
    lw      $ra, 0x0034($sp)
    lh      a0, 0x0154(s1)             # 00000154
    addiu   $at, $zero, 0x0071         # $at = 00000071
    beql    a0, $zero, lbl_80AC3B24
    lh      t0, 0x0152(s1)             # 00000152
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    a0, $at, lbl_80AC3BC8
    lh      v1, 0x0150(s1)             # 00000150
    beq     $zero, $zero, lbl_80AC3C64
    nop
    lh      t0, 0x0152(s1)             # 00000152
lbl_80AC3B24:
    lwc1    $f0, 0x0024(v1)            # 00000024
    lwc1    $f2, 0x0028(v1)            # 00000028
    bne     t0, $at, lbl_80AC3B78
    lwc1    $f12, 0x002C(v1)           # 0000002C
    mfc1    a3, $f0
    addiu   t7, $zero, 0x000F          # t7 = 0000000F
    sw      t7, 0x0024($sp)
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0168          # a2 = 00000168
    swc1    $f2, 0x0010($sp)
    swc1    $f12, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    jal     func_80025110              # ActorSpawn
    sw      $zero, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800204D0
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    beq     $zero, $zero, lbl_80AC3C64
    nop
lbl_80AC3B78:
    addiu   v0, t0, 0xFF8E             # v0 = FFFFFF8E
    sll     v0, v0, 16
    sra     v0, v0, 16
    addiu   v0, v0, 0x000A             # v0 = FFFFFF98
    sll     v0, v0, 16
    sra     v0, v0, 16
    mfc1    a3, $f0
    sw      v0, 0x0024($sp)
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0168          # a2 = 00000168
    swc1    $f2, 0x0010($sp)
    swc1    $f12, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    jal     func_80025110              # ActorSpawn
    sw      $zero, 0x0020($sp)
    beq     $zero, $zero, lbl_80AC3C64
    nop
    lh      v1, 0x0150(s1)             # 00000150
lbl_80AC3BC8:
    addiu   $at, $zero, 0x0071         # $at = 00000071
    lwc1    $f0, 0x0024(v0)            # 00000024
    lwc1    $f2, 0x0028(v0)            # 00000028
    bne     v1, $at, lbl_80AC3C20
    lwc1    $f12, 0x002C(v0)           # 0000002C
    mfc1    a3, $f0
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    sw      t8, 0x0024($sp)
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0168          # a2 = 00000168
    swc1    $f2, 0x0010($sp)
    swc1    $f12, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    jal     func_80025110              # ActorSpawn
    sw      $zero, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800204D0
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    beq     $zero, $zero, lbl_80AC3C64
    nop
lbl_80AC3C20:
    addiu   v0, v1, 0xFF8E             # v0 = FFFFFF8E
    sll     v0, v0, 16
    sra     v0, v0, 16
    addiu   v0, v0, 0x000A             # v0 = FFFFFF98
    sll     v0, v0, 16
    sra     v0, v0, 16
    mfc1    a3, $f0
    sw      v0, 0x0024($sp)
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0168          # a2 = 00000168
    swc1    $f2, 0x0010($sp)
    swc1    $f12, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    jal     func_80025110              # ActorSpawn
    sw      $zero, 0x0020($sp)
lbl_80AC3C64:
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x0034($sp)
lbl_80AC3C70:
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80AC3C80:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0148(a0)             # 00000148
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lh      t7, 0x01E4(t6)             # 000001E4
    beql    t7, $zero, lbl_80AC3CC4
    lw      $ra, 0x0014($sp)
    lhu     v0, 0x0EF2(v1)             # 8011B4C2
    andi    t8, v0, 0x0800             # t8 = 00000000
    bne     t8, $zero, lbl_80AC3CB8
    ori     t9, v0, 0x0800             # t9 = 00000800
    sh      t9, 0x0EF2(v1)             # 8011B4C2
lbl_80AC3CB8:
    jal     func_80020EB4
    nop
    lw      $ra, 0x0014($sp)
lbl_80AC3CC4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AC3CD0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    lh      v0, 0x0156(a0)             # 00000156
    beq     v0, $zero, lbl_80AC3CFC
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0156(a0)             # 00000156
lbl_80AC3CFC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop

.section .data

var_80AC3D10: .word 0x01550600, 0x00000000, 0x00010000, 0x0000015C
.word func_80AC3510
.word func_80AC3500
.word func_80AC3CD0
.word 0x00000000
var_80AC3D30: .word \
0x00000000, 0x00000000, 0x00000000, 0xC2C80000, \
0x41A00000, 0xC3750000, 0xC2C80000, 0x41A00000, \
0xC42B4000, 0xC2C80000, 0x41A00000, 0xC48CA000, \
0xC2C80000, 0x41A00000, 0xC4C3A000, 0xC2C80000, \
0x41A00000, 0xC4FAA000
var_80AC3D78: .word \
0x00000000, 0x00000000, 0x00000000, 0x430C0000, \
0x41A00000, 0xC3750000, 0x430C0000, 0x41A00000, \
0xC42B4000, 0x430C0000, 0x41A00000, 0xC48CA000, \
0x430C0000, 0x41A00000, 0xC4C3A000, 0x430C0000, \
0x41A00000, 0xC4FAA000
var_80AC3DC0: .word \
0x00000000, 0x00000072, 0x00000072, 0x00000073, \
0x00000073, 0x00000074
var_80AC3DD8: .word \
0x00000000, 0x00000008, 0x00000008, 0x00000009, \
0x00000009, 0x0000000A
var_80AC3DF0: .word \
0x00000000, 0x00000002, 0x00000004, 0x00000006, \
0x00000008
var_80AC3E04: .word 0x0000000A, 0x00000000, 0x00000000

.section .rodata

var_80AC3E10: .word 0xC51C4000
var_80AC3E14: .word 0xC51C4000
var_80AC3E18: .word 0x3FFEB852, 0x00000000

