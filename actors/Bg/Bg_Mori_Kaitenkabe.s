.section .text
func_80928440:
    lwc1    $f4, 0x0004(a1)            # 00000004
    lwc1    $f6, 0x0008(a2)            # 00000008
    lwc1    $f10, 0x0008(a1)           # 00000008
    lwc1    $f16, 0x0004(a2)           # 00000004
    mul.s   $f8, $f4, $f6
    nop
    mul.s   $f18, $f10, $f16
    sub.s   $f4, $f8, $f18
    swc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f10, 0x0000(a2)           # 00000000
    lwc1    $f6, 0x0008(a1)            # 00000008
    lwc1    $f8, 0x0000(a1)            # 00000000
    lwc1    $f18, 0x0008(a2)           # 00000008
    mul.s   $f16, $f6, $f10
    nop
    mul.s   $f4, $f8, $f18
    sub.s   $f6, $f16, $f4
    swc1    $f6, 0x0004(a0)            # 00000004
    lwc1    $f8, 0x0004(a2)            # 00000004
    lwc1    $f10, 0x0000(a1)           # 00000000
    lwc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f16, 0x0004(a1)           # 00000004
    mul.s   $f18, $f10, $f8
    nop
    mul.s   $f6, $f16, $f4
    sub.s   $f10, $f18, $f6
    swc1    $f10, 0x0008(a0)           # 00000008
    jr      $ra
    nop


func_809284B4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(var_80928A00)      # a1 = 80930000
    sw      $zero, 0x0024($sp)
    addiu   a1, a1, %lo(var_80928A00)  # a1 = 80928A00
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x63B8             # a0 = 060063B8
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x0073          # a1 = 00000073
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    sb      v0, 0x0174(s0)             # 00000174
    lb      t6, 0x0174(s0)             # 00000174
    lui     t7, %hi(func_8092859C)     # t7 = 80930000
    addiu   t7, t7, %lo(func_8092859C) # t7 = 8092859C
    bgezl   t6, lbl_80928554
    sw      t7, 0x0154(s0)             # 00000154
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80928558
    lw      $ra, 0x001C($sp)
    sw      t7, 0x0154(s0)             # 00000154
lbl_80928554:
    lw      $ra, 0x001C($sp)
lbl_80928558:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80928568:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8092859C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at
    jal     func_80081688
    lb      a1, 0x0174(t6)             # 00000174
    beql    v0, $zero, lbl_809285E8
    lw      $ra, 0x0014($sp)
    jal     func_809285F4
    lw      a0, 0x0018($sp)
    lw      t8, 0x0018($sp)
    lui     t7, %hi(func_8092891C)     # t7 = 80930000
    addiu   t7, t7, %lo(func_8092891C) # t7 = 8092891C
    sw      t7, 0x0134(t8)             # 00000134
    lw      $ra, 0x0014($sp)
lbl_809285E8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809285F4:
    lui     t6, %hi(func_8092860C)     # t6 = 80930000
    addiu   t6, t6, %lo(func_8092860C) # t6 = 8092860C
    sw      t6, 0x0154(a0)             # 00000154
    sw      $zero, 0x0158(a0)          # 00000158
    jr      $ra
    nop


func_8092860C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    lui     $at, %hi(var_80928A10)     # $at = 80930000
    lwc1    $f4, %lo(var_80928A10)($at)
    lwc1    $f6, 0x0140(s0)            # 00000140
    lw      s1, 0x1C44(a1)             # 00001C44
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80928720
    sw      $zero, 0x0158(s0)          # 00000158
    lw      t6, 0x0158(s0)             # 00000158
    or      a0, a1, $zero              # a0 = 00000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    slti    $at, t7, 0x001D
    bne     $at, $zero, lbl_80928720
    sw      t7, 0x0158(s0)             # 00000158
    jal     func_8007943C
    sw      a1, 0x004C($sp)
    bnel    v0, $zero, lbl_80928724
    lwc1    $f0, 0x0140(s0)            # 00000140
    jal     func_8092876C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x004C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   a0, s0, 0x0168             # a0 = 00000168
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s1, 0x0024             # a1 = 00000024
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f0, 0x003C($sp)
    swc1    $f8, 0x0040($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0148(s0)             # 00000148
    swc1    $f0, 0x0044($sp)
    lwc1    $f16, 0x0024(s1)           # 00000024
    lwc1    $f10, 0x0024(s0)           # 00000024
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFDC
    sub.s   $f18, $f10, $f16
    swc1    $f4, 0x0034($sp)
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFE8
    swc1    $f18, 0x0030($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sub.s   $f10, $f6, $f8
    jal     func_80928440
    swc1    $f10, 0x0038($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f18, 0x0028($sp)
    lui     $at, 0xBF80                # $at = BF800000
    c.lt.s  $f16, $f18
    nop
    bc1fl   lbl_80928714
    mtc1    $at, $f6                   # $f6 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    beq     $zero, $zero, lbl_80928720
    swc1    $f4, 0x015C(s0)            # 0000015C
    mtc1    $at, $f6                   # $f6 = 1.00
lbl_80928714:
    beq     $zero, $zero, lbl_80928720
    swc1    $f6, 0x015C(s0)            # 0000015C
    sw      $zero, 0x0158(s0)          # 00000158
lbl_80928720:
    lwc1    $f0, 0x0140(s0)            # 00000140
lbl_80928724:
    lui     $at, %hi(var_80928A14)     # $at = 80930000
    lwc1    $f8, %lo(var_80928A14)($at)
    abs.s   $f0, $f0
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_8092875C
    lw      $ra, 0x001C($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    swc1    $f10, 0x0140(s0)           # 00000140
    lw      t9, 0x0670(s1)             # 00000670
    and     t0, t9, $at
    sw      t0, 0x0670(s1)             # 00000670
    lw      $ra, 0x001C($sp)
lbl_8092875C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_8092876C:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t6, %hi(func_8092878C)     # t6 = 80930000
    addiu   t6, t6, %lo(func_8092878C) # t6 = 8092878C
    sw      t6, 0x0154(a0)             # 00000154
    swc1    $f0, 0x0160(a0)            # 00000160
    swc1    $f0, 0x0164(a0)            # 00000164
    jr      $ra
    nop


func_8092878C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lui     a1, 0x3F19                 # a1 = 3F190000
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    lw      t7, 0x1C44(t6)             # 00001C44
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    ori     a1, a1, 0x999A             # a1 = 3F19999A
    addiu   a0, s0, 0x0160             # a0 = 00000160
    jal     func_8006385C
    sw      t7, 0x0024($sp)
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f6                   # $f6 = 45.00
    lwc1    $f4, 0x015C(s0)            # 0000015C
    addiu   a0, s0, 0x0164             # a0 = 00000164
    lw      a2, 0x0160(s0)             # 00000160
    mul.s   $f8, $f4, $f6
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    beq     v0, $zero, lbl_80928858
    lui     $at, %hi(var_80928A18)     # $at = 80930000
    jal     func_809285F4
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f16, 0x015C(s0)           # 0000015C
    c.lt.s  $f10, $f16
    nop
    bc1fl   lbl_80928834
    lh      t0, 0x0016(s0)             # 00000016
    lh      t8, 0x0016(s0)             # 00000016
    addiu   t9, t8, 0x2000             # t9 = 00002000
    beq     $zero, $zero, lbl_8092883C
    sh      t9, 0x0016(s0)             # 00000016
    lh      t0, 0x0016(s0)             # 00000016
lbl_80928834:
    addiu   t1, t0, 0xE000             # t1 = FFFFE000
    sh      t1, 0x0016(s0)             # 00000016
lbl_8092883C:
    lh      v0, 0x0016(s0)             # 00000016
    addiu   a0, $zero, 0x2893          # a0 = 00002893
    sh      v0, 0x00B6(s0)             # 000000B6
    jal     func_80064738
    sh      v0, 0x0032(s0)             # 00000032
    beq     $zero, $zero, lbl_8092889C
    lwc1    $f0, 0x0140(s0)            # 00000140
lbl_80928858:
    lwc1    $f18, 0x0164(s0)           # 00000164
    lwc1    $f4, %lo(var_80928A18)($at)
    lh      t3, 0x0016(s0)             # 00000016
    addiu   a0, $zero, 0x2083          # a0 = 00002083
    mul.s   $f6, $f18, $f4
    trunc.w.s $f8, $f6
    mfc1    v1, $f8
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    addu    v0, t3, v1
    sll     v0, v0, 16
    sra     v0, v0, 16
    sh      v0, 0x00B6(s0)             # 000000B6
    jal     func_80064738
    sh      v0, 0x0032(s0)             # 00000032
    lwc1    $f0, 0x0140(s0)            # 00000140
lbl_8092889C:
    lui     $at, %hi(var_80928A1C)     # $at = 80930000
    lwc1    $f10, %lo(var_80928A1C)($at)
    abs.s   $f0, $f0
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_809288D8
    lw      v0, 0x0024($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lw      v0, 0x0024($sp)
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    swc1    $f16, 0x0140(s0)           # 00000140
    lw      t4, 0x0670(v0)             # 00000670
    and     t5, t4, $at
    sw      t5, 0x0670(v0)             # 00000670
    lw      v0, 0x0024($sp)
lbl_809288D8:
    addiu   a1, s0, 0x0168             # a1 = 00000168
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, v0, 0x0024             # a0 = 00000024
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809288F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8092891C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    lw      a0, 0x0000(a1)             # 00000000
    sw      a1, 0x0034($sp)
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      a1, 0x0034($sp)
    lw      a2, 0x0024($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0030($sp)
    lui     t2, 0x0001                 # t2 = 00010000
    lb      t9, 0x0174(t8)             # 00000174
    sll     t0, t9,  4
    addu    t0, t0, t9
    sll     t0, t0,  2
    addu    t1, a1, t0
    addu    t2, t2, t1
    lw      t2, 0x17B4(t2)             # 000117B4
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(a1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lw      a2, 0x0024($sp)
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x56B0             # t7 = 060056B0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop

.section .data

var_809289E0: .word 0x00880100, 0x00000000, 0x00720000, 0x00000178
.word func_809284B4
.word func_80928568
.word func_809288F8
.word 0x00000000
var_80928A00: .word 0xB0F403E8, 0xB0F803E8, 0xB0FC03E8, 0x485003E8

.section .rodata

var_80928A10: .word 0x3A83126F
var_80928A14: .word 0x3A83126F
var_80928A18: .word 0x43360B61
var_80928A1C: .word 0x3A83126F

