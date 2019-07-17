.section .text
func_80B319C0:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0018($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    sw      a3, 0x0054($sp)
    addiu   v0, $sp, 0x0038            # v0 = FFFFFFF0
    lui     t6, %hi(var_80B31CE8)      # t6 = 80B30000
    addiu   t6, t6, %lo(var_80B31CE8)  # t6 = 80B31CE8
    lw      t8, 0x0000(t6)             # 80B31CE8
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x0001                # $at = 00010000
    sw      t8, 0x0000(v0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80B31CEC
    ori     $at, $at, 0x17A4           # $at = 000117A4
    sw      t7, 0x0004(v0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80B31CF0
    sw      t8, 0x0008(v0)             # FFFFFFF8
    lw      t7, 0x000C(t6)             # 80B31CF4
    sw      t7, 0x000C(v0)             # FFFFFFFC
    lw      t9, -0x5A2C(t9)            # 8011A5D4
    lw      a0, 0x0048($sp)
    sll     t1, t9,  3
    addu    t0, t1, v0
    lh      a1, 0x0000(t0)             # 00000000
    sw      t0, 0x0034($sp)
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    lw      t0, 0x0034($sp)
    lw      a1, 0x0054($sp)
    sh      v0, 0x0040(s0)             # 00000040
    lw      t2, 0x0004(t0)             # 00000004
    addiu   v1, $sp, 0x0024            # v1 = FFFFFFDC
    sw      t2, 0x0038(s0)             # 00000038
    lw      t4, 0x0000(a1)             # 00000000
    sw      t4, 0x0000(v1)             # FFFFFFDC
    lw      t3, 0x0004(a1)             # 00000004
    lw      t6, 0x0000(v1)             # FFFFFFDC
    sw      t3, 0x0004(v1)             # FFFFFFE0
    lw      t4, 0x0008(a1)             # 00000008
    sw      t4, 0x0008(v1)             # FFFFFFE4
    sw      t6, 0x0000(s0)             # 00000000
    lw      t5, 0x0004(v1)             # FFFFFFE0
    sw      t5, 0x0004(s0)             # 00000004
    lw      t6, 0x0008(v1)             # FFFFFFE4
    sw      t6, 0x0008(s0)             # 00000008
    lw      t8, 0x0000(v1)             # FFFFFFDC
    sw      t8, 0x002C(s0)             # 0000002C
    lw      t7, 0x0004(v1)             # FFFFFFE0
    sw      t7, 0x0030(s0)             # 00000030
    lw      t8, 0x0008(v1)             # FFFFFFE4
    sw      t8, 0x0034(s0)             # 00000034
    lh      t9, 0x000C(a1)             # 0000000C
    sh      t9, 0x0042(s0)             # 00000042
    jal     func_800636C4              # sins?
    lh      a0, 0x000C(a1)             # 0000000C
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lw      a1, 0x0054($sp)
    mul.s   $f6, $f0, $f4
    swc1    $f6, 0x000C(s0)            # 0000000C
    jal     func_80063684              # coss?
    lh      a0, 0x000C(a1)             # 0000000C
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    lui     $at, 0x41D0                # $at = 41D00000
    mtc1    $at, $f16                  # $f16 = 26.00
    mul.s   $f10, $f0, $f8
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f18                  # $f18 = -4.00
    lui     t2, %hi(func_80B31B20)     # t2 = 80B30000
    lui     t3, %hi(func_80B31CC0)     # t3 = 80B30000
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    addiu   t2, t2, %lo(func_80B31B20) # t2 = 80B31B20
    addiu   t3, t3, %lo(func_80B31CC0) # t3 = 80B31CC0
    swc1    $f10, 0x0014(s0)           # 00000014
    sh      t1, 0x005C(s0)             # 0000005C
    sw      t2, 0x0028(s0)             # 00000028
    sw      t3, 0x0024(s0)             # 00000024
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    swc1    $f16, 0x0010(s0)           # 00000010
    swc1    $f18, 0x001C(s0)           # 0000001C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B31B20:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0018($sp)
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0038($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    lw      s0, 0x0000(t6)             # 00000000
    lwc1    $f12, 0x0000(s1)           # 00000000
    lwc1    $f14, 0x0004(s1)           # 00000004
    jal     func_800AA7F4
    lw      a2, 0x0008(s1)             # 00000008
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x5A2C(t7)            # 8011A5D4
    lui     $at, %hi(var_80B31D08)     # $at = 80B30000
    beq     t7, $zero, lbl_80B31BA4
    nop
    lui     $at, %hi(var_80B31D00)     # $at = 80B30000
    lwc1    $f12, %lo(var_80B31D00)($at)
    lui     $at, %hi(var_80B31D04)     # $at = 80B30000
    lwc1    $f14, %lo(var_80B31D04)($at)
    mfc1    a2, $f12
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x0042(s1)             # 00000042
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     $zero, $zero, lbl_80B31BFC
    lw      v0, 0x02C0(s0)             # 000002C0
lbl_80B31BA4:
    lwc1    $f12, %lo(var_80B31D08)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      t8, 0x0038($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x0042(s1)             # 00000042
    lw      a2, 0x009C(t8)             # 0000009C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addu    $at, a2, $zero
    sll     a2, a2,  2
    addu    a2, a2, $at
    sll     a2, a2,  3
    subu    a2, a2, $at
    sll     a2, a2,  4
    addu    a2, a2, $at
    sll     a2, a2,  4
    sll     a2, a2, 16
    jal     func_800AAF00
    sra     a2, a2, 16
    lw      v0, 0x02C0(s0)             # 000002C0
lbl_80B31BFC:
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v0)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      v0, 0x0024($sp)
    lw      v1, 0x0024($sp)
    sw      v0, 0x0004(v1)             # 00000004
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0018             # t2 = DB060018
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lh      t4, 0x0040(s1)             # 00000040
    lw      t3, 0x0038($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    sll     t5, t4,  4
    addu    t5, t5, t4
    sll     t5, t5,  2
    addu    t6, t3, t5
    addu    t7, t7, t6
    lw      t7, 0x17B4(t7)             # 000117B4
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0030             # t9 = DB060030
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t0, 0x800F                 # t0 = 800F0000
    addiu   t0, t0, 0x7A68             # t0 = 800F7A68
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t4, 0x0038(s1)             # 00000038
    sw      t4, 0x0004(v0)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B31CC0:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

.word 0x00000010
.word func_80B319C0
var_80B31CE8: .word \
0x00140000, 0x0602BA38, 0x00150000, 0x06006CC0, \
0x00000000, 0x00000000

.section .rodata

var_80B31D00: .word 0x3C23D70A
var_80B31D04: .word 0x3B23D70A
var_80B31D08: .word 0x3C23D70A, 0x00000000

