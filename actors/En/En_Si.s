.section .text
func_80B4B000:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      a1, 0x0020($sp)
    jal     func_8004AB7C
    lw      a0, 0x002C($sp)
    lui     a3, %hi(var_80B4B430)      # a3 = 80B50000
    lw      a1, 0x0020($sp)
    addiu   a3, a3, %lo(var_80B4B430)  # a3 = 80B4B430
    lw      a0, 0x002C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_80B4B45C)      # a2 = 80B50000
    addiu   a2, a2, %lo(var_80B4B45C)  # a2 = 80B4B45C
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a1, 0x3CCC                 # a1 = 3CCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3CCCCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4228                # $at = 42280000
    mtc1    $at, $f4                   # $f4 = 42.00
    lui     t6, %hi(func_80B4B0E0)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B4B0E0) # t6 = 80B4B0E0
    sb      $zero, 0x018C(s0)          # 0000018C
    sw      t6, 0x013C(s0)             # 0000013C
    swc1    $f4, 0x00BC(s0)            # 000000BC
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B4B090:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0140             # a1 = 00000140
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B4B0BC:
    sw      a1, 0x0004($sp)
    lbu     v0, 0x0151(a0)             # 00000151
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80B4B0D4
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0151(a0)             # 00000151
lbl_80B4B0D4:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80B4B0E0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t6, 0x1C44(s1)             # 00001C44
    addiu   $at, $zero, 0x2000         # $at = 00002000
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    sw      t6, 0x002C($sp)
    lw      t7, 0x0004(s0)             # 00000004
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    addiu   a0, s0, 0x0050             # a0 = 00000050
    andi    t8, t7, 0x2000             # t8 = 00000000
    bne     t8, $at, lbl_80B4B130
    lui     a1, 0x3E80                 # a1 = 3E800000
    lui     t9, %hi(func_80B4B214)     # t9 = 80B50000
    addiu   t9, t9, %lo(func_80B4B214) # t9 = 80B4B214
    beq     $zero, $zero, lbl_80B4B200
    sw      t9, 0x013C(s0)             # 0000013C
lbl_80B4B130:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
    lh      t0, 0x00B6(s0)             # 000000B6
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t1, t0, 0x0400             # t1 = 00000400
    jal     func_8007943C
    sh      t1, 0x00B6(s0)             # 000000B6
    bne     v0, $zero, lbl_80B4B200
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B4B0BC
    or      a1, s1, $zero              # a1 = 00000000
    lbu     v1, 0x0153(s0)             # 00000153
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0140             # a1 = 00000140
    andi    t2, v1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_80B4B1CC
    andi    t3, v1, 0xFFFE             # t3 = 00000000
    sb      t3, 0x0153(s0)             # 00000153
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0071          # a1 = 00000071
    lw      t5, 0x002C($sp)
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800DCE14
    sh      t4, 0x0110(t5)             # 00000110
    jal     func_800C69A0
    addiu   a0, $zero, 0x0039          # a0 = 00000039
    lui     t6, %hi(func_80B4B2CC)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B4B2CC) # t6 = 80B4B2CC
    beq     $zero, $zero, lbl_80B4B200
    sw      t6, 0x013C(s0)             # 0000013C
lbl_80B4B1CC:
    jal     func_80050B00
    sw      a1, 0x0028($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s0, s1, $at
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0028($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0028($sp)
lbl_80B4B200:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80B4B214:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    lw      t7, 0x1C44(t6)             # 00001C44
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lui     a1, 0x3E80                 # a1 = 3E800000
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f4, 0x0010($sp)
    jal     func_80064178
    sw      t7, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
    lh      t8, 0x00B6(s0)             # 000000B6
    lw      t0, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0x2000         # $at = 00002000
    addiu   t9, t8, 0x0400             # t9 = 00000400
    andi    t1, t0, 0x2000             # t1 = 00000000
    beq     t1, $at, lbl_80B4B2B8
    sh      t9, 0x00B6(s0)             # 000000B6
    lw      a0, 0x0034($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0071          # a1 = 00000071
    lw      t3, 0x002C($sp)
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    sh      t2, 0x0110(t3)             # 00000110
    lw      a0, 0x0034($sp)
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800C69A0
    addiu   a0, $zero, 0x0039          # a0 = 00000039
    lui     t4, %hi(func_80B4B2CC)     # t4 = 80B50000
    addiu   t4, t4, %lo(func_80B4B2CC) # t4 = 80B4B2CC
    sw      t4, 0x013C(s0)             # 0000013C
lbl_80B4B2B8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80B4B2CC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      t6, 0x001C($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B4B304
    lw      a0, 0x0020($sp)
    lw      t8, 0x001C($sp)
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    beq     $zero, $zero, lbl_80B4B350
    sh      t7, 0x0110(t8)             # 00000110
lbl_80B4B304:
    lh      v0, 0x001C(a0)             # 0000001C
    lui     t1, 0x8012                 # t1 = 80120000
    lui     t5, 0x8010                 # t5 = 80100000
    andi    v1, v0, 0x1F00             # v1 = 00000000
    sra     v1, v1,  8
    andi    t3, v1, 0x0003             # t3 = 00000000
    sll     t4, t3,  2
    sra     t9, v1,  2
    sll     t0, t9,  2
    addu    t5, t5, t4
    addiu   t1, t1, 0xA5D0             # t1 = 8011A5D0
    lw      t5, -0x72E4(t5)            # 800F8D1C
    addu    a1, t0, t1
    lw      t7, 0x0E9C(a1)             # 00000E9C
    andi    t2, v0, 0x00FF             # t2 = 00000000
    sllv    t6, t2, t5
    or      t8, t7, t6                 # t8 = 0000000A
    jal     func_80020EB4
    sw      t8, 0x0E9C(a1)             # 00000E9C
lbl_80B4B350:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B4B360:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jalr    $ra, t9
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4180                 # a1 = 41800000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B4B3D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      t7, 0x013C(a0)             # 0000013C
    lui     t6, %hi(func_80B4B2CC)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B4B2CC) # t6 = 80B4B2CC
    beq     t6, t7, lbl_80B4B41C
    lw      a1, 0x001C($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80022554
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x001C($sp)
    jal     func_800570C0
    addiu   a1, $zero, 0x0074          # a1 = 00000074
lbl_80B4B41C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop
    nop

.section .data

var_80B4B430: .word \
0x0A00093D, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000090, 0x00000000, 0x00050100, \
0x00140012, 0x00020000, 0x00000000
var_80B4B45C: .word 0x00000000, 0x00000000, 0xFF000000
var_80B4B468: .word 0x019C0700, 0x00000201, 0x00240000, 0x00000190
.word func_80B4B000
.word func_80B4B090
.word func_80B4B360
.word func_80B4B3D4
.word 0x00000000, 0x00000000

.section .rodata


