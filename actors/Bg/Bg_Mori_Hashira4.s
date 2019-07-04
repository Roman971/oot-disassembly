.section .text
func_809EE470:
    sw      a1, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_809EE47C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
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
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809EE4D4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0601                 # a2 = 06010000
    andi    t8, v0, 0x00FF             # t8 = 00000000
    sh      t8, 0x001C(s0)             # 0000001C
    lh      t9, 0x001C(s0)             # 0000001C
    sra     t6, v0,  8
    andi    t7, t6, 0x003F             # t7 = 00000000
    bne     t9, $zero, lbl_809EE530
    sb      t7, 0x0159(s0)             # 00000159
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x1AF8             # a2 = 06001AF8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_809EE47C
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    beq     $zero, $zero, lbl_809EE540
    nop
lbl_809EE530:
    lw      a1, 0x0024($sp)
    addiu   a2, a2, 0x89E0             # a2 = FFFF89E0
    jal     func_809EE47C
    or      a3, $zero, $zero           # a3 = 00000000
lbl_809EE540:
    lui     a1, %hi(var_809EE940)      # a1 = 809F0000
    addiu   a1, a1, %lo(var_809EE940)  # a1 = 809EE940
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x0073          # a1 = 00000073
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    sb      v0, 0x0158(s0)             # 00000158
    lb      t0, 0x0158(s0)             # 00000158
    bgezl   t0, lbl_809EE58C
    lh      t1, 0x001C(s0)             # 0000001C
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809EE5D8
    lw      $ra, 0x001C($sp)
    lh      t1, 0x001C(s0)             # 0000001C
lbl_809EE58C:
    lw      a0, 0x0024($sp)
    beql    t1, $zero, lbl_809EE5BC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002049C
    lb      a1, 0x0159(s0)             # 00000159
    beql    v0, $zero, lbl_809EE5BC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809EE5D8
    lw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_809EE5BC:
    jal     func_80020F04
    lui     a1, 0x4248                 # a1 = 42480000
    jal     func_809EE61C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_809EE9F0)     # $at = 809F0000
    sh      $zero, %lo(var_809EE9F0)($at)
    lw      $ra, 0x001C($sp)
lbl_809EE5D8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809EE5E8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809EE61C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     a1, %hi(func_809EE640)     # a1 = 809F0000
    jal     func_809EE470
    addiu   a1, a1, %lo(func_809EE640) # a1 = 809EE640
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809EE640:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at
    jal     func_80081688
    lb      a1, 0x0158(s0)             # 00000158
    beql    v0, $zero, lbl_809EE6AC
    lw      $ra, 0x001C($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    sh      $zero, 0x015A(s0)          # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_809EE694
    lui     a1, %hi(func_809EE718)     # a1 = 809F0000
    jal     func_809EE6BC
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809EE69C
    nop
lbl_809EE694:
    jal     func_809EE470
    addiu   a1, a1, %lo(func_809EE718) # a1 = FFFFE718
lbl_809EE69C:
    lui     t7, %hi(func_809EE848)     # t7 = 809F0000
    addiu   t7, t7, %lo(func_809EE848) # t7 = 809EE848
    sw      t7, 0x0134(s0)             # 00000134
    lw      $ra, 0x001C($sp)
lbl_809EE6AC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809EE6BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     a1, %hi(func_809EE6E0)     # a1 = 809F0000
    jal     func_809EE470
    addiu   a1, a1, %lo(func_809EE6E0) # a1 = 809EE6E0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809EE6E0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x0032(a0)             # 00000032
    addiu   a1, $zero, 0x2082          # a1 = 00002082
    addiu   t7, t6, 0x0096             # t7 = 00000096
    sh      t7, 0x0032(a0)             # 00000032
    lh      t8, 0x0032(a0)             # 00000032
    jal     func_80022FD0
    sh      t8, 0x00B6(a0)             # 000000B6
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809EE718:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x002C($sp)
    jal     func_8002049C
    lb      a1, 0x0159(s0)             # 00000159
    bnel    v0, $zero, lbl_809EE750
    lh      t7, 0x015A(s0)             # 0000015A
    lh      t6, 0x015A(s0)             # 0000015A
    beql    t6, $zero, lbl_809EE7B4
    lw      $ra, 0x0024($sp)
    lh      t7, 0x015A(s0)             # 0000015A
lbl_809EE750:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x015A(s0)             # 0000015A
    lh      t9, 0x015A(s0)             # 0000015A
    slti    $at, t9, 0x001F
    bnel    $at, $zero, lbl_809EE7B4
    lw      $ra, 0x0024($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2859          # a1 = 00002859
    lui     a1, %hi(func_809EE7C4)     # a1 = 809F0000
    addiu   a1, a1, %lo(func_809EE7C4) # a1 = 809EE7C4
    jal     func_809EE470
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x002C($sp)
    addiu   a1, $zero, 0x177A          # a1 = 0000177A
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    lui     v1, %hi(var_809EE9F0)      # v1 = 809F0000
    addiu   v1, v1, %lo(var_809EE9F0)  # v1 = 809EE9F0
    lh      t0, 0x0000(v1)             # 809EE9F0
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0000(v1)             # 809EE9F0
    lw      $ra, 0x0024($sp)
lbl_809EE7B4:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809EE7C4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x000C(a3)            # 0000000C
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0028             # a0 = 00000028
    add.s   $f8, $f4, $f6
    lui     a2, 0x4120                 # a2 = 41200000
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    beq     v0, $zero, lbl_809EE80C
    lw      a3, 0x0018($sp)
    jal     func_80020EB4
    or      a0, a3, $zero              # a0 = 00000000
lbl_809EE80C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809EE81C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0154(a0)             # 00000154
    beql    v0, $zero, lbl_809EE83C
    lw      $ra, 0x0014($sp)
    jalr    $ra, v0
    nop
    lw      $ra, 0x0014($sp)
lbl_809EE83C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809EE848:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
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
    lb      t9, 0x0158(t8)             # 00000158
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
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t6, 0xDE00                 # t6 = DE000000
    lui     t0, %hi(var_809EE950)      # t0 = 809F0000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(a2)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0030($sp)
    lh      t8, 0x001C(t7)             # 0000001C
    sll     t9, t8,  2
    addu    t0, t0, t9
    lw      t0, %lo(var_809EE950)(t0)
    sw      t0, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    nop
    nop

.section .data

var_809EE920: .word 0x00E30100, 0x00000010, 0x00720000, 0x0000015C
.word func_809EE4D4
.word func_809EE5E8
.word func_809EE81C
.word 0x00000000
var_809EE940: .word 0xB0F403E8, 0xB0F802BC, 0xB0FC03E8, 0x485003E8
var_809EE950: .word 0x06001300, 0x06008840, 0x00000000, 0x00000000

.section .rodata


.bss

var_809EE9F0: .space 0x10
