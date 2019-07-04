.section .text
func_80A75FF0:
    sw      a1, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80A75FFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x0032(a2)             # 00000032
    blez    v0, lbl_80A76074
    slti    $at, v0, 0x0041
    beq     $at, $zero, lbl_80A76074
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, v0, 0xFFFF             # a1 = FFFFFFFF
    sw      a2, 0x0018($sp)
    jal     func_8002049C
    sw      a3, 0x001C($sp)
    lw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80A76074
    lw      a3, 0x001C($sp)
    lh      a1, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    or      a0, a3, $zero              # a0 = 00000000
    sra     a1, a1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     a1, $at, lbl_80A76064
    nop
    jal     func_800204D0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
lbl_80A76064:
    jal     func_80020EB4
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A76124
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A76074:
    lh      t6, 0x0032(a2)             # 00000032
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    or      a0, a3, $zero              # a0 = 00000000
    bnel    t6, $at, lbl_80A760E0
    lh      a1, 0x001C(a2)             # 0000001C
    lb      a1, 0x0003(a2)             # 00000003
    sw      a3, 0x001C($sp)
    jal     func_80020640
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80A760DC
    lw      a3, 0x001C($sp)
    lh      a1, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    or      a0, a3, $zero              # a0 = 00000000
    sra     a1, a1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     a1, $at, lbl_80A760CC
    nop
    jal     func_800204D0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
lbl_80A760CC:
    jal     func_80020EB4
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A76124
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A760DC:
    lh      a1, 0x001C(a2)             # 0000001C
lbl_80A760E0:
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    or      a0, a3, $zero              # a0 = 00000000
    sra     a1, a1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    bne     a1, $at, lbl_80A76100
    nop
    beq     $zero, $zero, lbl_80A76124
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A76100:
    jal     func_8002049C
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80A76120
    lw      a2, 0x0018($sp)
    jal     func_80020EB4
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A76124
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A76120:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A76124:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A76134:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80A75FFC
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80A76214
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(var_80A76530)      # a1 = 80A70000
    jal     func_80063F7C
    addiu   a1, a1, %lo(var_80A76530)  # a1 = 80A76530
    lh      v0, 0x0030(s0)             # 00000030
    lui     $at, %hi(var_80A76550)     # $at = 80A70000
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80A76184
    lui     a1, %hi(func_80A76388)     # a1 = 80A70000
    lwc1    $f0, %lo(var_80A76550)($at)
    swc1    $f0, 0x0058(s0)            # 00000058
    beq     $zero, $zero, lbl_80A761A8
    swc1    $f0, 0x0050(s0)            # 00000050
lbl_80A76184:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A76554)     # $at = 80A70000
    lwc1    $f8, %lo(var_80A76554)($at)
    cvt.s.w $f6, $f4
    lui     $at, %hi(var_80A76558)     # $at = 80A70000
    mul.s   $f0, $f6, $f8
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0050(s0)            # 00000050
    lwc1    $f0, %lo(var_80A76558)($at)
lbl_80A761A8:
    lh      v0, 0x0034(s0)             # 00000034
    bnel    v0, $zero, lbl_80A761C0
    mtc1    v0, $f10                   # $f10 = 0.00
    beq     $zero, $zero, lbl_80A761D4
    swc1    $f0, 0x0054(s0)            # 00000054
    mtc1    v0, $f10                   # $f10 = 0.00
lbl_80A761C0:
    lui     $at, %hi(var_80A7655C)     # $at = 80A70000
    lwc1    $f18, %lo(var_80A7655C)($at)
    cvt.s.w $f16, $f10
    mul.s   $f4, $f16, $f18
    swc1    $f4, 0x0054(s0)            # 00000054
lbl_80A761D4:
    lh      t6, 0x001C(s0)             # 0000001C
    andi    t7, t6, 0x4000             # t7 = 00000000
    beq     t7, $zero, lbl_80A761FC
    nop
    lui     a1, %hi(func_80A76264)     # a1 = 80A70000
    addiu   a1, a1, %lo(func_80A76264) # a1 = 80A76264
    jal     func_80A75FF0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A76208
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_80A761FC:
    jal     func_80A75FF0
    addiu   a1, a1, %lo(func_80A76388) # a1 = 00006388
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_80A76208:
    lh      v0, 0x00B8(s0)             # 000000B8
    sh      v0, 0x00B6(s0)             # 000000B6
    sh      v0, 0x00B4(s0)             # 000000B4
lbl_80A76214:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A76228:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80A76238:
    lh      v1, 0x001C(a0)             # 0000001C
    addiu   t8, $zero, 0xFF00          # t8 = FFFFFF00
    andi    t6, v1, 0x8000             # t6 = 00000000
    beq     t6, $zero, lbl_80A76258
    andi    t7, v1, 0x00FF             # t7 = 00000000
    andi    v0, v1, 0x00FF             # v0 = 00000000
    jr      $ra
    addiu   v0, v0, 0x0100             # v0 = 00000100
lbl_80A76258:
    subu    v0, t8, t7
    jr      $ra
    nop


func_80A76264:
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    mtc1    $at, $f12                  # $f12 = 100.00
    sw      $ra, 0x0014($sp)
    lw      v1, 0x1C44(a1)             # 00001C44
    lwc1    $f8, 0x0050(a0)            # 00000050
    lwc1    $f6, 0x0024(a0)            # 00000024
    lwc1    $f4, 0x0024(v1)            # 00000024
    mul.s   $f10, $f12, $f8
    lw      a2, 0x067C(v1)             # 0000067C
    sub.s   $f0, $f4, $f6
    abs.s   $f0, $f0
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_80A76328
    lw      $ra, 0x0014($sp)
    lwc1    $f0, 0x0028(v1)            # 00000028
    lwc1    $f2, 0x0028(a0)            # 00000028
    c.le.s  $f2, $f0
    nop
    bc1fl   lbl_80A76328
    lw      $ra, 0x0014($sp)
    lwc1    $f18, 0x0054(a0)           # 00000054
    sub.s   $f16, $f0, $f2
    mul.s   $f4, $f12, $f18
    c.lt.s  $f16, $f4
    nop
    bc1fl   lbl_80A76328
    lw      $ra, 0x0014($sp)
    lwc1    $f10, 0x0058(a0)           # 00000058
    lwc1    $f6, 0x002C(v1)            # 0000002C
    lwc1    $f8, 0x002C(a0)            # 0000002C
    mul.s   $f18, $f12, $f10
    sub.s   $f0, $f6, $f8
    abs.s   $f0, $f0
    c.lt.s  $f0, $f18
    nop
    bc1fl   lbl_80A76328
    lw      $ra, 0x0014($sp)
    sw      v1, 0x001C($sp)
    sw      a0, 0x0020($sp)
    jal     func_80A76238
    sw      a2, 0x0018($sp)
    lw      v1, 0x001C($sp)
    lw      a0, 0x0020($sp)
    lw      a2, 0x0018($sp)
    sh      v0, 0x0680(v1)             # 00000680
    sw      a0, 0x0288(a2)             # 00000288
    lw      $ra, 0x0014($sp)
lbl_80A76328:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A76334:
    mtc1    a2, $f12                   # $f12 = 0.00
    nop
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x0008(a0)           # 00000008
    sub.s   $f0, $f4, $f6
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f2, $f8, $f10
    mul.s   $f16, $f0, $f0
    nop
    mul.s   $f18, $f2, $f2
    add.s   $f4, $f16, $f18
    mul.s   $f6, $f12, $f12
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_80A76380
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A76380:
    jr      $ra
    nop


func_80A76388:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0024($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lw      v1, 0x1C44(t6)             # 00001C44
    addiu   a1, a3, 0x0024             # a1 = 00000024
    lw      t7, 0x067C(v1)             # 0000067C
    addiu   a0, v1, 0x0024             # a0 = 00000024
    sw      t7, 0x0018($sp)
    lwc1    $f4, 0x0050(a3)            # 00000050
    sw      a3, 0x0020($sp)
    sw      v1, 0x001C($sp)
    mul.s   $f8, $f4, $f6
    mfc1    a2, $f8
    jal     func_80A76334
    nop
    lw      v1, 0x001C($sp)
    beq     v0, $zero, lbl_80A76440
    lw      a3, 0x0020($sp)
    lwc1    $f0, 0x0028(v1)            # 00000028
    lwc1    $f2, 0x0028(a3)            # 00000028
    lui     $at, 0x42C8                # $at = 42C80000
    c.le.s  $f2, $f0
    nop
    bc1fl   lbl_80A76444
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f16                  # $f16 = 100.00
    lwc1    $f18, 0x0054(a3)           # 00000054
    sub.s   $f10, $f0, $f2
    or      a0, a3, $zero              # a0 = 00000000
    mul.s   $f4, $f16, $f18
    c.lt.s  $f10, $f4
    nop
    bc1fl   lbl_80A76444
    lw      $ra, 0x0014($sp)
    sw      v1, 0x001C($sp)
    jal     func_80A76238
    sw      a3, 0x0020($sp)
    lw      v1, 0x001C($sp)
    lw      a3, 0x0020($sp)
    sh      v0, 0x0680(v1)             # 00000680
    lw      t8, 0x0018($sp)
    sw      a3, 0x0288(t8)             # 00000288
lbl_80A76440:
    lw      $ra, 0x0014($sp)
lbl_80A76444:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A76450:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A75FFC
    or      a1, s1, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80A764F8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    or      a1, s1, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80A764C0
    lh      v0, 0x0032(s0)             # 00000032
    lh      a1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    sra     a1, a1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     a1, $at, lbl_80A764AC
    nop
    jal     func_800204D0
    or      a0, s1, $zero              # a0 = 00000000
lbl_80A764AC:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A764FC
    lw      $ra, 0x001C($sp)
    lh      v0, 0x0032(s0)             # 00000032
lbl_80A764C0:
    slti    $at, v0, 0x0042
    bne     $at, $zero, lbl_80A764E4
    slti    $at, v0, 0x0081
    beq     $at, $zero, lbl_80A764E4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C
    addiu   a1, v0, 0xFFBF             # a1 = FFFFFFBF
    beql    v0, $zero, lbl_80A764FC
    lw      $ra, 0x001C($sp)
lbl_80A764E4:
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
lbl_80A764F8:
    lw      $ra, 0x001C($sp)
lbl_80A764FC:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    nop

.section .data

var_80A76510: .word 0x011B0700, 0x00000010, 0x00010000, 0x00000140
.word func_80A76134
.word func_80A76228
.word func_80A76450
.word 0x00000000
var_80A76530: .word 0xC85003E8, 0x30F403E8, 0x00000000, 0x00000000

.section .rodata

.word 0xB6A6C5DD, 0xA4EC0000, 0xB6A6C5DD, 0xA4EC0000
var_80A76550: .word 0x3ECCCCCD
var_80A76554: .word 0x3D23D70A
var_80A76558: .word 0x3ECCCCCD
var_80A7655C: .word 0x3D23D70A

