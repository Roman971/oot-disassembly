.section .text
func_80B37990:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lw      t7, 0x0004(a3)             # 00000004
    lui     t2, 0x0402                 # t2 = 04020000
    lui     t4, %hi(func_80B37A50)     # t4 = 80B30000
    sw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x0008(a3)             # 00000008
    lui     t5, %hi(func_80B37D1C)     # t5 = 80B30000
    addiu   t2, t2, 0x8950             # t2 = 04018950
    sw      t6, 0x0004(a2)             # 00000004
    lw      t7, 0x000C(a3)             # 0000000C
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    addiu   t4, t4, %lo(func_80B37A50) # t4 = 80B37A50
    sw      t7, 0x0008(a2)             # 00000008
    lw      t8, 0x0000(a3)             # 00000000
    addiu   t5, t5, %lo(func_80B37D1C) # t5 = 80B37D1C
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sw      t8, 0x003C(a2)             # 0000003C
    lw      t9, 0x0000(a3)             # 00000000
    lwc1    $f4, 0x0004(a3)            # 00000004
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f6, 0x0024(t9)            # 00000024
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x002C(a2)            # 0000002C
    lw      t0, 0x0000(a3)             # 00000000
    lwc1    $f10, 0x0008(a3)           # 00000008
    lwc1    $f16, 0x0028(t0)           # 00000028
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0030(a2)           # 00000030
    lw      t1, 0x0000(a3)             # 00000000
    lwc1    $f4, 0x000C(a3)            # 0000000C
    lwc1    $f6, 0x002C(t1)            # 0000002C
    sw      t2, 0x0038(a2)             # 00000038
    sh      t3, 0x005C(a2)             # 0000005C
    sub.s   $f8, $f4, $f6
    sw      t4, 0x0028(a2)             # 00000028
    sw      t5, 0x0024(a2)             # 00000024
    sh      t6, 0x0046(a2)             # 00000046
    swc1    $f8, 0x0034(a2)            # 00000034
    lh      t7, 0x0010(a3)             # 00000010
    sh      t7, 0x0050(a2)             # 00000050
    lh      t8, 0x0012(a3)             # 00000012
    sh      t8, 0x0052(a2)             # 00000052
    lw      t9, 0x0000(a3)             # 00000000
    lh      t0, 0x00B6(t9)             # 000000B6
    sh      t0, 0x0054(a2)             # 00000054
    jr      $ra
    nop


func_80B37A50:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s1, 0x0038($sp)
    lui     $at, %hi(var_80B37DE0)     # $at = 80B30000
    lwc1    $f2, %lo(var_80B37DE0)($at)
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    lw      t6, 0x0068($sp)
    lw      s0, 0x0000(t6)             # 00000000
    lh      t7, 0x005C(s1)             # 0000005C
    lui     $at, %hi(var_80B37DE4)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B37DE4)($at)
    mtc1    t7, $f4                    # $f4 = 0.00
    lh      t8, 0x0056(s1)             # 00000056
    lui     $at, 0x3F00                # $at = 3F000000
    cvt.s.w $f6, $f4
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    $at, $f16                  # $f16 = 0.50
    lh      t9, 0x0052(s1)             # 00000052
    lui     $at, %hi(var_80B37DE8)     # $at = 80B30000
    or      a3, $zero, $zero           # a3 = 00000000
    mul.s   $f10, $f6, $f8
    cvt.s.w $f6, $f4
    add.s   $f18, $f16, $f10
    mtc1    t9, $f10                   # $f10 = 0.00
    lwc1    $f16, %lo(var_80B37DE8)($at)
    mul.s   $f8, $f6, $f18
    cvt.s.w $f4, $f10
    mul.s   $f0, $f8, $f16
    nop
    mul.s   $f6, $f4, $f2
    nop
    mul.s   $f18, $f6, $f0
    swc1    $f18, 0x005C($sp)
    lh      t1, 0x0050(s1)             # 00000050
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    mul.s   $f10, $f16, $f2
    nop
    mul.s   $f4, $f10, $f0
    swc1    $f4, 0x0058($sp)
    lw      a2, 0x0008(s1)             # 00000008
    lwc1    $f14, 0x0004(s1)           # 00000004
    jal     func_800AA7F4
    lwc1    $f12, 0x0000(s1)           # 00000000
    lwc1    $f12, 0x0058($sp)
    lwc1    $f14, 0x005C($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lh      t2, 0x0054(s1)             # 00000054
    lui     $at, %hi(var_80B37DEC)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B37DEC)($at)
    mtc1    t2, $f6                    # $f6 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f18, $f6
    mul.s   $f12, $f18, $f8
    jal     func_800AAB94
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      v1, 0x0048($sp)
    lw      a1, 0x0048($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      t5, 0x0068($sp)
    jal     func_8007E2C0
    lw      a0, 0x0000(t5)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0068($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addu    v0, v0, t8
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      a0, 0x0000(t8)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    subu    $at, $zero, v0
    sll     t3, $at,  4
    subu    t3, t3, $at
    andi    t4, t3, 0x00FF             # t4 = 00000000
    addiu   t1, $zero, 0x0040          # t1 = 00000040
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    sw      t5, 0x0024($sp)
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t4, 0x0020($sp)
    sw      t9, 0x0010($sp)
    sw      t6, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x0044($sp)
    jal     func_8007EB84
    andi    a2, v0, 0x007F             # a2 = 00000000
    lw      t0, 0x0044($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      a0, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    ori     t8, t8, 0x8080             # t8 = FA008080
    addiu   t7, a0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(a0)             # 00000000
    lh      t9, 0x005C(s1)             # 0000005C
    lui     $at, 0x414C                # $at = 414C0000
    mtc1    $at, $f4                   # $f4 = 12.75
    mtc1    t9, $f16                   # $f16 = 0.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.s.w $f10, $f16
    mul.s   $f6, $f10, $f4
    cfc1    t1, $f31
    ctc1    t2, $f31
    nop
    cvt.w.s $f18, $f6
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80B37CB0
    mfc1    t2, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f18, $f6, $f18
    ctc1    t2, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80B37CA4
    nop
    mfc1    t2, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80B37CBC
    or      t2, t2, $at                # t2 = 80000000
lbl_80B37CA4:
    beq     $zero, $zero, lbl_80B37CBC
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f18
lbl_80B37CB0:
    nop
    bltz    t2, lbl_80B37CA4
    nop
lbl_80B37CBC:
    andi    t3, t2, 0x00FF             # t3 = 000000FF
    lui     $at, 0xFFDC                # $at = FFDC0000
    ctc1    t1, $f31
    or      t4, t3, $at                # t4 = FFDC00FF
    sw      t4, 0x0004(a0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    lui     t7, 0xFF00                 # t7 = FF000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t1, 0x0038(s1)             # 00000038
    sw      t1, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_80B37D1C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lw      v0, 0x003C(a3)             # 0000003C
    beql    v0, $zero, lbl_80B37DC0
    lw      $ra, 0x0014($sp)
    lw      t6, 0x0130(v0)             # 00000130
    addiu   a0, a3, 0x0056             # a0 = 00000056
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    beql    t6, $zero, lbl_80B37DBC
    sw      $zero, 0x003C(a3)          # 0000003C
    lwc1    $f4, 0x0024(v0)            # 00000024
    lwc1    $f6, 0x002C(a3)            # 0000002C
    lwc1    $f16, 0x0030(a3)           # 00000030
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    add.s   $f8, $f4, $f6
    lwc1    $f6, 0x0034(a3)            # 00000034
    swc1    $f8, 0x0000(a3)            # 00000000
    lwc1    $f10, 0x0028(v0)           # 00000028
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0004(a3)           # 00000004
    lwc1    $f4, 0x002C(v0)            # 0000002C
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0008(a3)            # 00000008
    lh      t7, 0x00B6(v0)             # 000000B6
    sh      t7, 0x0054(a3)             # 00000054
    lbu     v1, 0x0114(v0)             # 00000114
    slti    $at, v1, 0x0015
    bnel    $at, $zero, lbl_80B37DA8
    sh      v1, 0x005C(a3)             # 0000005C
    beq     $zero, $zero, lbl_80B37DA8
    sh      t8, 0x005C(a3)             # 0000005C
    sh      v1, 0x005C(a3)             # 0000005C
lbl_80B37DA8:
    jal     func_800637D4
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    beq     $zero, $zero, lbl_80B37DC0
    lw      $ra, 0x0014($sp)
    sw      $zero, 0x003C(a3)          # 0000003C
lbl_80B37DBC:
    lw      $ra, 0x0014($sp)
lbl_80B37DC0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop

.section .data

.word 0x0000001F
.word func_80B37990
.word 0x00000000, 0x00000000

.section .rodata

var_80B37DE0: .word 0x3A83126F
var_80B37DE4: .word 0x3CCCCCCD
var_80B37DE8: .word 0x3C23D70A
var_80B37DEC: .word 0x38C90FDB

