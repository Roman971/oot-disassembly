.section .text
func_80A522D0:
    sw      a1, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80A522DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     a1, %hi(var_80A52500)      # a1 = 80A50000
    addiu   a1, a1, %lo(var_80A52500)  # a1 = 80A52500
    jal     func_80063F7C
    sw      a0, 0x0018($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    lw      a0, 0x0018($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    swc1    $f0, 0x0144(a0)            # 00000144
    swc1    $f0, 0x0148(a0)            # 00000148
    swc1    $f4, 0x014C(a0)            # 0000014C
    lw      t6, 0x1360(v0)             # 8011B930
    lui     a1, %hi(func_80A52368)     # a1 = 80A50000
    slti    $at, t6, 0x0004
    beq     $at, $zero, lbl_80A52340
    nop
    lhu     t7, 0x0EE0(v0)             # 8011B4B0
    andi    t8, t7, 0xFFDF             # t8 = 00000000
    sh      t8, 0x0EE0(v0)             # 8011B4B0
lbl_80A52340:
    jal     func_80A522D0
    addiu   a1, a1, %lo(func_80A52368) # a1 = 80A52368
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A52358:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80A52368:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B50(t6)            # 8011B4B0
    lui     $at, 0x44E1                # $at = 44E10000
    andi    t7, t6, 0x0020             # t7 = 00000000
    beql    t7, $zero, lbl_80A523A4
    lh      t8, 0x00B8(s0)             # 000000B8
    mtc1    $at, $f4                   # $f4 = 1800.00
    nop
    swc1    $f4, 0x0148(s0)            # 00000148
    lh      t8, 0x00B8(s0)             # 000000B8
lbl_80A523A4:
    lwc1    $f10, 0x0144(s0)           # 00000144
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    t8, $f6                    # $f6 = 0.00
    lwc1    $f4, 0x0144(s0)            # 00000144
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    cvt.s.w $f8, $f6
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     $at, %hi(var_80A52510)     # $at = 80A50000
    addiu   a1, $zero, 0x2085          # a1 = 00002085
    add.s   $f16, $f8, $f10
    sub.s   $f8, $f4, $f6
    trunc.w.s $f18, $f16
    mfc1    t0, $f18
    nop
    sh      t0, 0x00B8(s0)             # 000000B8
    lwc1    $f10, %lo(var_80A52510)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    div.s   $f16, $f8, $f10
    add.s   $f0, $f16, $f18
    mfc1    a2, $f0
    jal     func_800C50AC
    nop
    addiu   a0, s0, 0x0144             # a0 = 00000144
    lw      a1, 0x0148(s0)             # 00000148
    lw      a2, 0x014C(s0)             # 0000014C
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A52428:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A5244C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      a2, 0x0024($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x0100             # t2 = 06000100
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80A524E0: .word 0x01020100, 0x00000010, 0x00F90000, 0x00000150
.word func_80A522DC
.word func_80A52358
.word func_80A52428
.word func_80A5244C
var_80A52500: .word 0xC8500064, 0xB0F43200, 0xB0F80514, 0x30FC0514

.section .rodata

var_80A52510: .word 0x44D48000, 0x00000000, 0x00000000, 0x00000000

