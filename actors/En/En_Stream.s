.section .text
func_80AD0070:
    sw      a1, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80AD007C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    lui     a1, %hi(var_80AD0570)      # a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD0570)  # a1 = 80AD0570
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sw      t7, 0x0140(a0)             # 00000140
    jal     func_80063F7C
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a1, %hi(func_80AD03AC)     # a1 = 80AD0000
    lw      v0, 0x0140(a0)             # 00000140
    beq     v0, $zero, lbl_80AD00CC
    nop
    bne     v0, $at, lbl_80AD00CC
    lui     $at, %hi(var_80AD0580)     # $at = 80AD0000
    lwc1    $f4, %lo(var_80AD0580)($at)
    swc1    $f4, 0x0054(a0)            # 00000054
lbl_80AD00CC:
    jal     func_80AD0070
    addiu   a1, a1, %lo(func_80AD03AC) # a1 = 80AD03AC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AD00E4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AD00F4:
    mtc1    a3, $f12                   # $f12 = 0.00
    nop
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    lui     $at, 0x4248                # $at = 42480000
    or      v1, $zero, $zero           # v1 = 00000000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0000(a2)            # 00000000
    lwc1    $f4, 0x0004(a0)            # 00000004
    lwc1    $f10, 0x0004(a1)           # 00000004
    lwc1    $f2, 0x0000(a2)            # 00000000
    sub.s   $f6, $f10, $f4
    swc1    $f6, 0x0004(a2)            # 00000004
    lwc1    $f10, 0x0008(a0)           # 00000008
    lwc1    $f8, 0x0008(a1)            # 00000008
    mul.s   $f6, $f2, $f2
    lwc1    $f18, 0x0004(a2)           # 00000004
    sub.s   $f4, $f8, $f10
    mtc1    $zero, $f10                # $f10 = 0.00
    swc1    $f4, 0x0008(a2)            # 00000008
    lwc1    $f16, 0x0008(a2)           # 00000008
    mul.s   $f8, $f16, $f16
    add.s   $f0, $f6, $f8
    mul.s   $f4, $f10, $f12
    mtc1    $at, $f6                   # $f6 = 50.00
    lui     $at, 0x4320                # $at = 43200000
    sqrt.s  $f0, $f0
    mul.s   $f14, $f4, $f6
    c.le.s  $f14, $f18
    nop
    bc1fl   lbl_80AD01E4
    c.le.s  $f18, $f14
    mtc1    $at, $f8                   # $f8 = 160.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    mul.s   $f10, $f8, $f12
    nop
    mul.s   $f2, $f10, $f4
    c.le.s  $f18, $f2
    nop
    bc1f    lbl_80AD01E0
    nop
    sub.s   $f6, $f18, $f14
    lui     $at, 0x41E0                # $at = 41E00000
    mtc1    $at, $f16                  # $f16 = 28.00
    sub.s   $f4, $f2, $f14
    swc1    $f6, 0x0004(a2)            # 00000004
    lwc1    $f18, 0x0004(a2)           # 00000004
    lui     $at, 0x4296                # $at = 42960000
    mtc1    $at, $f8                   # $f8 = 75.00
    div.s   $f6, $f18, $f4
    sub.s   $f10, $f8, $f16
    mul.s   $f8, $f10, $f6
    add.s   $f12, $f8, $f16
    c.le.s  $f0, $f12
    nop
    bc1fl   lbl_80AD01E4
    c.le.s  $f18, $f14
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80AD01E0:
    c.le.s  $f18, $f14
lbl_80AD01E4:
    lui     $at, 0x41E0                # $at = 41E00000
    mtc1    $at, $f16                  # $f16 = 28.00
    bc1fl   lbl_80AD020C
    or      v0, v1, $zero              # v0 = 00000001
    c.le.s  $f0, $f16
    nop
    bc1fl   lbl_80AD020C
    or      v0, v1, $zero              # v0 = 00000001
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    or      v0, v1, $zero              # v0 = 00000002
lbl_80AD020C:
    jr      $ra
    nop


func_80AD0214:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0020($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x001C($sp)
    sw      a1, 0x0054($sp)
    lw      t6, 0x0054($sp)
    lw      a3, 0x0054(s1)             # 00000054
    addiu   a0, s1, 0x0024             # a0 = 00000024
    lw      s0, 0x1C44(t6)             # 00001C44
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFEC
    addiu   a1, s0, 0x0024             # a1 = 00000024
    jal     func_80AD00F4
    sw      a1, 0x0028($sp)
    beq     v0, $zero, lbl_80AD038C
    or      a0, s1, $zero              # a0 = 00000000
    lwc1    $f4, 0x003C($sp)
    lwc1    $f8, 0x0044($sp)
    lui     $at, 0x42B4                # $at = 42B40000
    mul.s   $f6, $f4, $f4
    mtc1    $at, $f18                  # $f18 = 90.00
    lwc1    $f16, 0x0028(s1)           # 00000028
    mul.s   $f10, $f8, $f8
    neg.s   $f12, $f4
    neg.s   $f14, $f8
    add.s   $f0, $f6, $f10
    lwc1    $f10, 0x0028(s0)           # 00000028
    sub.s   $f6, $f16, $f18
    sqrt.s  $f2, $f0
    sub.s   $f16, $f10, $f6
    swc1    $f2, 0x0038($sp)
    jal     func_800CD76C
    swc1    $f16, 0x0034($sp)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    lui     $at, %hi(var_80AD0584)     # $at = 80AD0000
    lwc1    $f18, %lo(var_80AD0584)($at)
    lwc1    $f2, 0x0038($sp)
    addiu   a0, s0, 0x089C             # a0 = 0000089C
    mul.s   $f10, $f0, $f18
    c.lt.s  $f12, $f2
    lui     a2, 0x3F00                 # a2 = 3F000000
    trunc.w.s $f6, $f10
    mfc1    t8, $f6
    bc1f    lbl_80AD02E8
    sh      t8, 0x08A0(s0)             # 000008A0
    mtc1    $zero, $f16                # $f16 = 0.00
    mfc1    a1, $f12
    mfc1    a3, $f2
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    b       lbl_80AD0330
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80AD02E8:
    mtc1    $zero, $f0                 # $f0 = 0.00
    mfc1    a3, $f12
    lui     a2, 0x3F00                 # a2 = 3F000000
    swc1    $f0, 0x089C(s0)            # 0000089C
    lw      a1, 0x0024(s1)             # 00000024
    lw      a0, 0x0028($sp)
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      a1, 0x002C(s1)             # 0000002C
    mfc1    a3, $f12
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80AD0330:
    lwc1    $f2, 0x0034($sp)
    lui     a2, 0x3F33                 # a2 = 3F330000
    ori     a2, a2, 0x3333             # a2 = 3F333333
    c.lt.s  $f0, $f2
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a1, 0xC040                 # a1 = C0400000
    bc1fl   lbl_80AD039C
    lw      $ra, 0x0024($sp)
    mfc1    a3, $f2
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lui     $at, 0xC28C                # $at = C28C0000
    mtc1    $at, $f18                  # $f18 = -70.00
    lwc1    $f8, 0x0040($sp)
    c.lt.s  $f8, $f18
    nop
    bc1fl   lbl_80AD039C
    lw      $ra, 0x0024($sp)
    lw      t9, 0x0670(s0)             # 00000670
    lui     $at, 0x8000                # $at = 80000000
    or      t0, t9, $at                # t0 = 80000000
    b       lbl_80AD0398
    sw      t0, 0x0670(s0)             # 00000670
lbl_80AD038C:
    lui     a1, %hi(func_80AD03AC)     # a1 = 80AD0000
    jal     func_80AD0070
    addiu   a1, a1, %lo(func_80AD03AC) # a1 = 80AD03AC
lbl_80AD0398:
    lw      $ra, 0x0024($sp)
lbl_80AD039C:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80AD03AC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lw      t7, 0x0030($sp)
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFEC
    lw      v0, 0x1C44(t6)             # 00001C44
    addiu   a0, t7, 0x0024             # a0 = 00000024
    lw      a3, 0x0054(t7)             # 00000054
    jal     func_80AD00F4
    addiu   a1, v0, 0x0024             # a1 = 00000024
    beq     v0, $zero, lbl_80AD03F0
    lw      a0, 0x0030($sp)
    lui     a1, %hi(func_80AD0214)     # a1 = 80AD0000
    jal     func_80AD0070
    addiu   a1, a1, %lo(func_80AD0214) # a1 = 80AD0214
lbl_80AD03F0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AD0400:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    jal     func_80023108
    addiu   a1, $zero, 0x20DD          # a1 = 000020DD
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AD0434:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0058($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1
    lw      t6, 0x1DE4(t6)             # 00011DE4
    sw      t6, 0x0050($sp)
    lw      a0, 0x0000(a1)             # 00000000
    sw      a1, 0x005C($sp)
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x005C($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0044($sp)
    lw      t1, 0x0044($sp)
    lw      t3, 0x0050($sp)
    lui     t5, 0xDB06                 # t5 = DB060000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t5, t5, 0x0020             # t5 = DB060020
    sll     t0, t3,  2
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x005C($sp)
    addu    t0, t0, t3
    sll     t0, t0,  2
    lw      a0, 0x0000(t6)             # 00000000
    sll     a2, t3,  4
    subu    a2, a2, t3
    subu    a3, $zero, t0
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    sw      t4, 0x0024($sp)
    sw      t5, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sll     a2, a2,  1
    sw      t0, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0040($sp)
    lw      t2, 0x0040($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x0950             # t8 = 06000950
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop
    nop

.section .data

var_80AD0550: .word 0x01600100, 0x00000010, 0x013B0000, 0x00000148
.word func_80AD007C
.word func_80AD00E4
.word func_80AD0400
.word func_80AD0434
var_80AD0570: .word 0x48500014, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80AD0580: .word 0x3C23D70A
var_80AD0584: .word 0x4622F983, 0x00000000, 0x00000000

