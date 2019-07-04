.section .text
func_8090B190:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_8090B5B4)      # a1 = 80910000
    addiu   a1, a1, %lo(var_8090B5B4)  # a1 = 8090B5B4
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      a1, 0x002C($sp)
    jal     func_8004A484
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_8090B5A4)      # a3 = 80910000
    addiu   t6, s0, 0x0160             # t6 = 00000160
    lw      a1, 0x002C($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(var_8090B5A4)  # a3 = 8090B5A4
    lw      a0, 0x003C($sp)
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lw      t9, 0x015C(s0)             # 0000015C
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    sh      t8, 0x0030(t9)             # 00000030
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      t2, 0x015C(s0)             # 0000015C
    trunc.w.s $f10, $f8
    mfc1    t1, $f10
    nop
    sh      t1, 0x0032(t2)             # 00000032
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lw      t5, 0x015C(s0)             # 0000015C
    trunc.w.s $f18, $f16
    mfc1    t4, $f18
    nop
    sh      t4, 0x0034(t5)             # 00000034
    lw      v1, 0x015C(s0)             # 0000015C
    lh      t6, 0x002E(v1)             # 0000002E
    sh      t6, 0x0036(v1)             # 00000036
    lh      a1, 0x001C(s0)             # 0000001C
    jal     func_8002049C
    lw      a0, 0x003C($sp)
    bne     v0, $zero, lbl_8090B254
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    lui     $at, %hi(var_8090B620)     # $at = 80910000
    sw      $zero, %lo(var_8090B620)($at)
lbl_8090B254:
    sh      t7, 0x013C(s0)             # 0000013C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8090B26C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004A550
    addiu   a1, a2, 0x0140             # a1 = 00000140
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8090B298:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    lh      a1, 0x001C(s0)             # 0000001C
    bnel    v0, $zero, lbl_8090B304
    lbu     a0, 0x0151(s0)             # 00000151
    lh      v0, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beql    v0, $at, lbl_8090B304
    lbu     a0, 0x0151(s0)             # 00000151
    beq     v0, $zero, lbl_8090B2E0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x013C(s0)             # 0000013C
    lh      v0, 0x013C(s0)             # 0000013C
lbl_8090B2E0:
    bne     v0, $zero, lbl_8090B300
    lui     a2, %hi(var_8090B620)      # a2 = 80910000
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   a2, a2, %lo(var_8090B620)  # a2 = 8090B620
    sh      t7, 0x013C(s0)             # 0000013C
    lw      t8, 0x0000(a2)             # 8090B620
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sw      t9, 0x0000(a2)             # 8090B620
lbl_8090B300:
    lbu     a0, 0x0151(s0)             # 00000151
lbl_8090B304:
    lui     a2, %hi(var_8090B620)      # a2 = 80910000
    addiu   a2, a2, %lo(var_8090B620)  # a2 = 8090B620
    andi    t0, a0, 0x0002             # t0 = 00000000
    beql    t0, $zero, lbl_8090B3C8
    lh      t1, 0x013C(s0)             # 0000013C
    lw      t1, 0x0148(s0)             # 00000148
    lh      t3, 0x00B6(s0)             # 000000B6
    lh      t2, 0x0032(t1)             # 00000032
    subu    v0, t2, t3
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_8090B340
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_8090B340
    or      v1, v0, $zero              # v1 = 00000000
lbl_8090B340:
    slti    $at, v1, 0x5001
    bnel    $at, $zero, lbl_8090B3C8
    lh      t1, 0x013C(s0)             # 0000013C
    lh      t5, 0x013C(s0)             # 0000013C
    andi    t4, a0, 0xFFFD             # t4 = 00000000
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t5, $at, lbl_8090B398
    sb      t4, 0x0151(s0)             # 00000151
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3847          # a1 = 00003847
    lui     a2, %hi(var_8090B620)      # a2 = 80910000
    addiu   a2, a2, %lo(var_8090B620)  # a2 = 8090B620
    lw      t6, 0x0000(a2)             # 8090B620
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    addiu   v0, t6, 0x0001             # v0 = 00000001
    slti    $at, v0, 0x0005
    bne     $at, $zero, lbl_8090B394
    sw      v0, 0x0000(a2)             # 8090B620
    beq     $zero, $zero, lbl_8090B398
    sw      t8, 0x0000(a2)             # 8090B620
lbl_8090B394:
    sw      v0, 0x0000(a2)             # 8090B620
lbl_8090B398:
    addiu   t9, $zero, 0x01A0          # t9 = 000001A0
    sh      t9, 0x013C(s0)             # 0000013C
    lw      t0, 0x0000(a2)             # 8090B620
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      a0, 0x0024($sp)
    bnel    t0, $at, lbl_8090B3C8
    lh      t1, 0x013C(s0)             # 0000013C
    jal     func_800204D0
    lh      a1, 0x001C(s0)             # 0000001C
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    lh      t1, 0x013C(s0)             # 0000013C
lbl_8090B3C8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lw      a0, 0x0024($sp)
    bne     t1, $at, lbl_8090B3E8
    addiu   a2, s0, 0x0140             # a2 = 00000140
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
lbl_8090B3E8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_8090B408:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s1, a0, $zero              # s1 = 00000000
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    lh      a1, 0x001C(s0)             # 0000001C
    beq     v0, $zero, lbl_8090B46C
    or      a3, $zero, $zero           # a3 = 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t9, 0xC800                 # t9 = C8000000
    ori     t9, t9, 0x00FF             # t9 = C80000FF
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_8090B4C4
    lwc1    $f12, 0x0024(s0)           # 00000024
lbl_8090B46C:
    lh      t0, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lui     t5, 0xFB00                 # t5 = FB000000
    bnel    t0, $at, lbl_8090B4A8
    lw      v1, 0x02D0(s1)             # 000002D0
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    lui     t3, 0xC800                 # t3 = C8000000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_8090B4C4
    lwc1    $f12, 0x0024(s0)           # 00000024
    lw      v1, 0x02D0(s1)             # 000002D0
lbl_8090B4A8:
    lui     t6, 0xC800                 # t6 = C8000000
    ori     t6, t6, 0x00FF             # t6 = C80000FF
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lwc1    $f12, 0x0024(s0)           # 00000024
lbl_8090B4C4:
    lwc1    $f14, 0x0028(s0)           # 00000028
    jal     func_800AA7F4
    lw      a2, 0x002C(s0)             # 0000002C
    lh      a0, 0x0030(s0)             # 00000030
    lh      a1, 0x0032(s0)             # 00000032
    lh      a2, 0x0034(s0)             # 00000034
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0050(s0)           # 00000050
    lwc1    $f14, 0x0054(s0)           # 00000054
    lw      a2, 0x0058(s0)             # 00000058
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lw      t9, 0x0024($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t9)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x2D20             # t2 = 06002D20
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      t1, 0x0000(v1)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_8090B560: .word 0x00620100, 0x00000020, 0x004D0000, 0x000001A0
.word func_8090B190
.word func_8090B26C
.word func_8090B298
.word func_8090B408
var_8090B580: .word \
0x04000000, 0x00000000, 0x00000000, 0x0001F820, \
0x00000000, 0x00010000, 0x01000000, 0x00000000, \
0x000E0064
var_8090B5A4: .word 0x0A000900, 0x20000000, 0x00000001
.word var_8090B580
var_8090B5B4: .word 0x48500064, 0x00000000, 0x00000000

.section .rodata


.bss

var_8090B620: .space 0x10
