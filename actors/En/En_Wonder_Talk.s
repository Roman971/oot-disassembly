.section .text
func_80AAAE30:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AAAE40:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    andi    t0, v0, 0x003F             # t0 = 00000000
    sh      t0, 0x0144(a2)             # 00000144
    lh      a3, 0x0144(a2)             # 00000144
    sra     t6, v0, 11
    sra     t8, v0,  6
    andi    t7, t6, 0x001F             # t7 = 00000000
    andi    t9, t8, 0x001F             # t9 = 00000000
    sh      t7, 0x0140(a2)             # 00000140
    bne     a3, $at, lbl_80AAAE90
    sh      t9, 0x0142(a2)             # 00000142
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    sh      t1, 0x0144(a2)             # 00000144
    lh      a3, 0x0144(a2)             # 00000144
lbl_80AAAE90:
    bltz    a3, lbl_80AAAEC0
    sb      t2, 0x001F(a2)             # 0000001F
    lw      a0, 0x001C($sp)
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_8002049C
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80AAAEC0
    lw      a2, 0x0018($sp)
    jal     func_80020EB4
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AAAEDC
    lw      $ra, 0x0014($sp)
lbl_80AAAEC0:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    lui     t3, %hi(func_80AAAEE8)     # t3 = 80AB0000
    addiu   t3, t3, %lo(func_80AAAEE8) # t3 = 80AAAEE8
    sw      t3, 0x013C(a2)             # 0000013C
    swc1    $f4, 0x014C(a2)            # 0000014C
    lw      $ra, 0x0014($sp)
lbl_80AAAEDC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AAAEE8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      a3, 0x0144(a2)             # 00000144
    bltzl   a3, lbl_80AAAF20
    lh      t6, 0x0140(a2)             # 00000140
    lw      a0, 0x001C($sp)
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_8002049C
    sw      a2, 0x0018($sp)
    bne     v0, $zero, lbl_80AAB068
    lw      a2, 0x0018($sp)
    lh      t6, 0x0140(a2)             # 00000140
lbl_80AAAF20:
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sltiu   $at, t7, 0x0005
    beq     $at, $zero, lbl_80AAB04C
    sll     t7, t7,  2
    lui     $at, %hi(var_80AAB420)     # $at = 80AB0000
    addu    $at, $at, t7
    lw      t7, %lo(var_80AAB420)($at)
    jr      t7
    nop
var_80AAAF44:
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 80.00
    lui     t8, 0x8012                 # t8 = 80120000
    swc1    $f4, 0x0150(a2)            # 00000150
    swc1    $f6, 0x014C(a2)            # 0000014C
    lw      t8, -0x5A2C(t8)            # 8011A5D4
    addiu   t9, $zero, 0x7040          # t9 = 00007040
    addiu   t0, $zero, 0x7088          # t0 = 00007088
    beq     t8, $zero, lbl_80AAAF78
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    beq     $zero, $zero, lbl_80AAAF7C
    sh      t9, 0x010E(a2)             # 0000010E
lbl_80AAAF78:
    sh      t0, 0x010E(a2)             # 0000010E
lbl_80AAAF7C:
    beq     $zero, $zero, lbl_80AAB05C
    sh      t1, 0x0146(a2)             # 00000146
var_80AAAF84:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    addiu   t2, $zero, 0x5002          # t2 = 00005002
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    sh      t2, 0x010E(a2)             # 0000010E
    sh      t3, 0x0146(a2)             # 00000146
    swc1    $f8, 0x014C(a2)            # 0000014C
    beq     $zero, $zero, lbl_80AAB05C
    swc1    $f10, 0x0150(a2)           # 00000150
var_80AAAFB0:
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $at, $f18                  # $f18 = 110.00
    addiu   t4, $zero, 0x501E          # t4 = 0000501E
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    sh      t4, 0x010E(a2)             # 0000010E
    sh      t5, 0x0146(a2)             # 00000146
    swc1    $f16, 0x0150(a2)           # 00000150
    beq     $zero, $zero, lbl_80AAB05C
    swc1    $f18, 0x014C(a2)           # 0000014C
var_80AAAFD8:
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 120.00
    addiu   t6, $zero, 0x5020          # t6 = 00005020
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    sh      t6, 0x010E(a2)             # 0000010E
    sh      t7, 0x0146(a2)             # 00000146
    lui     t8, 0x8012                 # t8 = 80120000
    swc1    $f4, 0x0150(a2)            # 00000150
    swc1    $f6, 0x014C(a2)            # 0000014C
    lhu     t8, -0x4B5A(t8)            # 8011B4A6
    or      a0, a2, $zero              # a0 = 00000000
    andi    t9, t8, 0x2000             # t9 = 00000000
    beq     t9, $zero, lbl_80AAB05C
    nop
    jal     func_80020EB4
    sw      a2, 0x0018($sp)
    beq     $zero, $zero, lbl_80AAB05C
    lw      a2, 0x0018($sp)
var_80AAB024:
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $at, $f10                  # $f10 = 110.00
    addiu   t0, $zero, 0x501F          # t0 = 0000501F
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    sh      t0, 0x010E(a2)             # 0000010E
    sh      t1, 0x0146(a2)             # 00000146
    swc1    $f8, 0x0150(a2)            # 00000150
    beq     $zero, $zero, lbl_80AAB05C
    swc1    $f10, 0x014C(a2)           # 0000014C
lbl_80AAB04C:
    addiu   t2, $zero, 0x7072          # t2 = 00007072
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    sh      t2, 0x010E(a2)             # 0000010E
    sh      t3, 0x0146(a2)             # 00000146
lbl_80AAB05C:
    lui     t4, %hi(func_80AAB078)     # t4 = 80AB0000
    addiu   t4, t4, %lo(func_80AAB078) # t4 = 80AAB078
    sw      t4, 0x013C(a2)             # 0000013C
lbl_80AAB068:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AAB078:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x014A(a3)             # 0000014A
    lh      t8, 0x0140(a3)             # 00000140
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t7, t6, 0x0001             # t7 = 00000001
    bne     t8, $at, lbl_80AAB0C4
    sh      t7, 0x014A(a3)             # 0000014A
    lui     t9, 0x8012                 # t9 = 80120000
    lhu     t9, -0x4B5A(t9)            # 8011B4A6
    andi    t0, t9, 0x2000             # t0 = 00000000
    beql    t0, $zero, lbl_80AAB0C8
    lh      a1, 0x0144(a3)             # 00000144
    jal     func_80020EB4
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AAB1C0
    lw      $ra, 0x0014($sp)
lbl_80AAB0C4:
    lh      a1, 0x0144(a3)             # 00000144
lbl_80AAB0C8:
    lw      a0, 0x001C($sp)
    bltzl   a1, lbl_80AAB0E8
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8002049C
    sw      a3, 0x0018($sp)
    bne     v0, $zero, lbl_80AAB1BC
    lw      a3, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
lbl_80AAB0E8:
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_80AAB154
    lw      a3, 0x0018($sp)
    lh      t1, 0x0146(a3)             # 00000146
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lui     t2, %hi(func_80AAB1CC)     # t2 = 80AB0000
    beq     t1, $at, lbl_80AAB118
    addiu   t2, t2, %lo(func_80AAB1CC) # t2 = 80AAB1CC
    beq     $zero, $zero, lbl_80AAB1BC
    sw      t2, 0x013C(a3)             # 0000013C
lbl_80AAB118:
    lh      a1, 0x0144(a3)             # 00000144
    bltz    a1, lbl_80AAB144
    nop
    lw      t3, 0x0004(a3)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t4, t3, $at
    sw      t4, 0x0004(a3)             # 00000004
    sw      a3, 0x0018($sp)
    jal     func_800204D0
    lw      a0, 0x001C($sp)
    lw      a3, 0x0018($sp)
lbl_80AAB144:
    lui     t5, %hi(func_80AAAEE8)     # t5 = 80AB0000
    addiu   t5, t5, %lo(func_80AAAEE8) # t5 = 80AAAEE8
    beq     $zero, $zero, lbl_80AAB1BC
    sw      t5, 0x013C(a3)             # 0000013C
lbl_80AAB154:
    lwc1    $f0, 0x014C(a3)            # 0000014C
    lwc1    $f4, 0x0090(a3)            # 00000090
    c.lt.s  $f0, $f4
    nop
    bc1tl   lbl_80AAB1C0
    lw      $ra, 0x0014($sp)
    lh      t6, 0x008A(a3)             # 0000008A
    lh      t7, 0x0032(a3)             # 00000032
    or      a0, a3, $zero              # a0 = 00000000
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80AAB198
    subu    v1, $zero, v0
    sll     v1, v0, 16
    beq     $zero, $zero, lbl_80AAB1A0
    sra     v1, v1, 16
lbl_80AAB198:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80AAB1A0:
    slti    $at, v1, 0x4000
    beql    $at, $zero, lbl_80AAB1C0
    lw      $ra, 0x0014($sp)
    sh      $zero, 0x014A(a3)          # 0000014A
    mfc1    a2, $f0
    jal     func_80022A68
    lw      a1, 0x001C($sp)
lbl_80AAB1BC:
    lw      $ra, 0x0014($sp)
lbl_80AAB1C0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AAB1CC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    lh      t6, 0x0146(s0)             # 00000146
    bnel    t6, v0, lbl_80AAB3AC
    lw      $ra, 0x0034($sp)
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80AAB3AC
    lw      $ra, 0x0034($sp)
    lh      a1, 0x0144(s0)             # 00000144
    bltzl   a1, lbl_80AAB230
    lh      v0, 0x0140(s0)             # 00000140
    lw      t7, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      a0, s1, $zero              # a0 = 00000000
    and     t8, t7, $at
    jal     func_800204D0
    sw      t8, 0x0004(s0)             # 00000004
    lh      v0, 0x0140(s0)             # 00000140
lbl_80AAB230:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, v1, lbl_80AAB264
    nop
    beq     v0, $at, lbl_80AAB27C
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80AAB2EC
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80AAB34C
    nop
    beq     $zero, $zero, lbl_80AAB3AC
    lw      $ra, 0x0034($sp)
lbl_80AAB264:
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    lui     t9, %hi(func_80AAAEE8)     # t9 = 80AB0000
    addiu   t9, t9, %lo(func_80AAAEE8) # t9 = 80AAAEE8
    beq     $zero, $zero, lbl_80AAB3A8
    sw      t9, 0x013C(s0)             # 0000013C
lbl_80AAB27C:
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s1
    lbu     v0, 0x04BD(v0)             # 000104BD
    lui     t0, 0x8012                 # t0 = 80120000
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80AAB2A8
    nop
    beq     v0, v1, lbl_80AAB2CC
    addiu   t3, $zero, 0x5004          # t3 = 00005004
    beq     $zero, $zero, lbl_80AAB2D4
    sh      t4, 0x0146(s0)             # 00000146
lbl_80AAB2A8:
    lw      t0, -0x5A2C(t0)            # 8011A5D4
    addiu   t1, $zero, 0x5001          # t1 = 00005001
    addiu   t2, $zero, 0x5003          # t2 = 00005003
    beq     t0, $zero, lbl_80AAB2C4
    nop
    beq     $zero, $zero, lbl_80AAB2D0
    sh      t1, 0x010E(s0)             # 0000010E
lbl_80AAB2C4:
    beq     $zero, $zero, lbl_80AAB2D0
    sh      t2, 0x010E(s0)             # 0000010E
lbl_80AAB2CC:
    sh      t3, 0x010E(s0)             # 0000010E
lbl_80AAB2D0:
    sh      t4, 0x0146(s0)             # 00000146
lbl_80AAB2D4:
    jal     func_800DCE80
    lhu     a1, 0x010E(s0)             # 0000010E
    lui     t5, %hi(func_80AAAEE8)     # t5 = 80AB0000
    addiu   t5, t5, %lo(func_80AAAEE8) # t5 = 80AAAEE8
    beq     $zero, $zero, lbl_80AAB3A8
    sw      t5, 0x013C(s0)             # 0000013C
lbl_80AAB2EC:
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    lbu     t6, 0x0154(s0)             # 00000154
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    bne     t6, $zero, lbl_80AAB33C
    addiu   a2, $zero, 0x000D          # a2 = 0000000D
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      t7, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t8, 0x0154(s0)             # 00000154
lbl_80AAB33C:
    lui     t9, %hi(func_80AAAEE8)     # t9 = 80AB0000
    addiu   t9, t9, %lo(func_80AAAEE8) # t9 = 80AAAEE8
    beq     $zero, $zero, lbl_80AAB3A8
    sw      t9, 0x013C(s0)             # 0000013C
lbl_80AAB34C:
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    lbu     t0, 0x0154(s0)             # 00000154
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    bne     t0, $zero, lbl_80AAB39C
    addiu   a2, $zero, 0x000D          # a2 = 0000000D
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      t1, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x0154(s0)             # 00000154
lbl_80AAB39C:
    lui     t3, %hi(func_80AAAEE8)     # t3 = 80AB0000
    addiu   t3, t3, %lo(func_80AAAEE8) # t3 = 80AAAEE8
    sw      t3, 0x013C(s0)             # 0000013C
lbl_80AAB3A8:
    lw      $ra, 0x0034($sp)
lbl_80AAB3AC:
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80AAB3BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      v0, 0x0148(a0)             # 00000148
    beq     v0, $zero, lbl_80AAB3D4
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0148(a0)             # 00000148
lbl_80AAB3D4:
    sw      a0, 0x0018($sp)
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    jal     func_80020F04
    lw      a1, 0x0150(a0)             # 00000150
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop

.section .data

var_80AAB400: .word 0x01470600, 0x08000009, 0x00010000, 0x00000158
.word func_80AAAE40
.word func_80AAAE30
.word func_80AAB3BC
.word 0x00000000

.section .rodata

var_80AAB420: .word var_80AAAF44
.word var_80AAAF84
.word var_80AAAFB0
.word var_80AAAFD8
.word var_80AAB024
.word 0x00000000, 0x00000000, 0x00000000

