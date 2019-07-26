.section .text
func_80B757E0:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    lw      t6, 0x07C0(a0)             # 000007C0
    lw      v0, 0x0028(t6)             # 00000028
    sh      a1, 0x0002(v0)             # 00000002
    jr      $ra
    nop


func_80B75800:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    lui     v1, %hi(var_80B75DF0)      # v1 = 80B70000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   v1, v1, %lo(var_80B75DF0)  # v1 = 80B75DF0
    sw      $ra, 0x0034($sp)
    sw      s5, 0x0030($sp)
    sw      s4, 0x002C($sp)
    sw      s3, 0x0028($sp)
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    lh      t6, 0x0000(v1)             # 80B75DF0
    lh      t7, 0x0002(v1)             # 80B75DF2
    lw      s1, 0x1C44(a0)             # 00001C44
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    lui     s0, %hi(var_80B75DF4)      # s0 = 80B70000
    cvt.s.w $f6, $f4
    lui     s5, %hi(var_80B75E00)      # s5 = 80B70000
    swc1    $f0, 0x005C($sp)
    swc1    $f0, 0x0050($sp)
    swc1    $f0, 0x0044($sp)
    cvt.s.w $f10, $f8
    swc1    $f6, 0x0058($sp)
    addiu   s5, s5, %lo(var_80B75E00)  # s5 = 80B75E00
    addiu   s0, s0, %lo(var_80B75DF4)  # s0 = 80B75DF4
    addiu   s4, $sp, 0x0040            # s4 = FFFFFFD8
    addiu   s3, $sp, 0x004C            # s3 = FFFFFFE4
    swc1    $f10, 0x0060($sp)
    addiu   s2, $sp, 0x0058            # s2 = FFFFFFF0
    lh      t8, 0x0000(s0)             # 80B75DF4
lbl_80B7587C:
    lh      t9, 0x0002(s0)             # 80B75DF6
    lh      t0, 0x0004(s0)             # 80B75DF8
    mtc1    t8, $f16                   # $f16 = 0.00
    lh      t1, 0x0006(s0)             # 80B75DFA
    mtc1    t9, $f4                    # $f4 = 0.00
    cvt.s.w $f18, $f16
    mtc1    t0, $f8                    # $f8 = 0.00
    mtc1    t1, $f16                   # $f16 = 0.00
    or      a0, s2, $zero              # a0 = FFFFFFF0
    or      a1, s3, $zero              # a1 = FFFFFFE4
    cvt.s.w $f6, $f4
    swc1    $f18, 0x004C($sp)
    or      a2, s4, $zero              # a2 = FFFFFFD8
    cvt.s.w $f10, $f8
    swc1    $f6, 0x0054($sp)
    cvt.s.w $f18, $f16
    swc1    $f10, 0x0040($sp)
    swc1    $f18, 0x0048($sp)
    lwc1    $f4, 0x0024(s1)            # 00000024
    lw      a3, 0x002C(s1)             # 0000002C
    jal     func_800A6D8C
    swc1    $f4, 0x0010($sp)
    beq     v0, $zero, lbl_80B758E4
    addiu   s0, s0, 0x0004             # s0 = 80B75DF8
    b       lbl_80B758F0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B758E4:
    bnel    s0, s5, lbl_80B7587C
    lh      t8, 0x0000(s0)             # 80B75DF8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B758F0:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    lw      s4, 0x002C($sp)
    lw      s5, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_80B75914:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lui     a1, %hi(var_80B75E04)      # a1 = 80B70000
    addiu   a1, a1, %lo(var_80B75E04)  # a1 = 80B75E04
    jal     func_80063F7C
    lw      a0, 0x0018($sp)
    jal     func_80B75968
    lw      a0, 0x0018($sp)
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f4                   # $f4 = -100.00
    lw      t6, 0x0018($sp)
    addiu   a1, $zero, 0xFF9C          # a1 = FFFFFF9C
    swc1    $f4, 0x0028(t6)            # 00000028
    jal     func_80B757E0
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B75968:
    lui     t6, %hi(func_80B7597C)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B7597C) # t6 = 80B7597C
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80B7597C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_8005991C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beql    v0, $zero, lbl_80B759D0
    lw      $ra, 0x001C($sp)
    jal     func_80B75800
    lw      a0, 0x0024($sp)
    beq     v0, $zero, lbl_80B759CC
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x1036          # a1 = 00001036
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    lw      a3, 0x0020($sp)
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    jal     func_80B759DC
    lw      a0, 0x0020($sp)
lbl_80B759CC:
    lw      $ra, 0x001C($sp)
lbl_80B759D0:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B759DC:
    lui     t6, %hi(func_80B759F0)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B759F0) # t6 = 80B759F0
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80B759F0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lui     a2, 0x3F33                 # a2 = 3F330000
    ori     a2, a2, 0x3333             # a2 = 3F333333
    addiu   a0, s0, 0x0028             # a0 = 00000028
    jal     func_8006385C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beql    v0, $zero, lbl_80B75A78
    lwc1    $f16, 0x0028(s0)           # 00000028
    jal     func_80B75AA8
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    lw      a1, 0x003C($sp)
    add.s   $f8, $f4, $f6
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      t6, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    lwc1    $f16, 0x0028(s0)           # 00000028
lbl_80B75A78:
    lw      a0, 0x003C($sp)
    trunc.w.s $f18, $f16
    mfc1    a1, $f18
    nop
    sll     a1, a1, 16
    jal     func_80B757E0
    sra     a1, a1, 16
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B75AA8:
    lui     t6, %hi(func_80B75ABC)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B75ABC) # t6 = 80B75ABC
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80B75ABC:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B75ACC:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)
    jalr    $ra, t9
    nop
    lw      t7, 0x013C(s0)             # 0000013C
    lui     t6, %hi(func_80B7597C)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B7597C) # t6 = 80B7597C
    bnel    t6, t7, lbl_80B75B14
    lbu     t0, 0x0140(s0)             # 00000140
    b       lbl_80B75CAC
    sw      $zero, 0x0134(s0)          # 00000134
    lbu     t0, 0x0140(s0)             # 00000140
lbl_80B75B14:
    lui     t8, %hi(func_80B75CC0)     # t8 = 80B70000
    addiu   t8, t8, %lo(func_80B75CC0) # t8 = 80B75CC0
    beq     t0, $zero, lbl_80B75CA4
    sw      t8, 0x0134(s0)             # 00000134
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f4                   # $f4 = 400.00
    lwc1    $f0, 0x00EC(s0)            # 000000EC
    lui     $at, 0xC220                # $at = C2200000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80B75CA8
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    mtc1    $at, $f6                   # $f6 = -40.00
    lw      t1, 0x004C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    c.lt.s  $f6, $f0
    addu    v0, v0, t1
    bc1fl   lbl_80B75CA8
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lw      v0, 0x1DE4(v0)             # 00011DE4
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     t5, %hi(var_80B75E14)      # t5 = 80B70000
    andi    t2, v0, 0x0004             # t2 = 00000000
    beql    t2, $zero, lbl_80B75CB0
    lw      $ra, 0x0024($sp)
    lbu     t3, 0x0141(s0)             # 00000141
    addiu   t5, t5, %lo(var_80B75E14)  # t5 = 80B75E14
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFE8
    sll     t4, t3,  2
    subu    t4, t4, t3
    sll     t4, t4,  2
    jal     func_80063D10              # Vec3f_Add
    addu    a1, t4, t5
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lui     $at, %hi(var_80B75E50)     # $at = 80B70000
    lwc1    $f10, %lo(var_80B75E50)($at)
    lui     $at, %hi(var_80B75E54)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B75E54)($at)
    mul.s   $f16, $f0, $f10
    lw      a0, 0x004C($sp)
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFE8
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a3, 0x4170                 # a3 = 41700000
    swc1    $f8, 0x0010($sp)
    add.s   $f4, $f16, $f18
    jal     func_8001CEDC
    swc1    $f4, 0x0014($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B75E58)     # $at = 80B70000
    lwc1    $f6, %lo(var_80B75E58)($at)
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_80B75CB0
    lw      $ra, 0x0024($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B75E5C)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B75E5C)($at)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f10, $f0, $f8
    cfc1    t9, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_80B75C84
    mfc1    t6, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t6, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80B75C78
    nop
    mfc1    t6, $f16
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80B75C90
    or      t6, t6, $at                # t6 = 80000000
lbl_80B75C78:
    b       lbl_80B75C90
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f16
lbl_80B75C84:
    nop
    bltz    t6, lbl_80B75C78
    nop
lbl_80B75C90:
    ctc1    t9, $f31
    sb      t6, 0x0141(s0)             # 00000141
    nop
    b       lbl_80B75CB0
    lw      $ra, 0x0024($sp)
lbl_80B75CA4:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
lbl_80B75CA8:
    sb      t7, 0x0140(s0)             # 00000140
lbl_80B75CAC:
    lw      $ra, 0x0024($sp)
lbl_80B75CB0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B75CC0:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0058($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1
    lw      t6, 0x1DE4(t6)             # 00011DE4
    sw      t6, 0x0054($sp)
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
    sw      v1, 0x0048($sp)
    lw      t1, 0x0048($sp)
    lw      t3, 0x0054($sp)
    lui     t5, 0xDB06                 # t5 = DB060000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t5, t5, 0x0020             # t5 = DB060020
    andi    t0, t3, 0x007F             # t0 = 00000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x005C($sp)
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lw      a0, 0x0000(t6)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x007F          # t7 = 0000007F
    andi    a3, t3, 0x007F             # a3 = 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      a3, 0x0020($sp)
    subu    a2, t7, t0
    sw      t6, 0x0028($sp)
    sw      t5, 0x0024($sp)
    sw      t0, 0x001C($sp)
    sw      t4, 0x0018($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0044($sp)
    lw      t2, 0x0044($sp)
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0870             # t9 = 06000870
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop
    nop

.section .data

var_80B75DD0: .word 0x01C20100, 0x00000010, 0x016F0000, 0x00000144
.word func_80B75914
.word 0x80027EF4
.word func_80B75ACC
.word 0x00000000
var_80B75DF0: .word 0x04EC07F8
var_80B75DF4: .word 0x04EB079B, 0x046F0744, 0x043F0778
var_80B75E00: .word 0x049507FC
var_80B75E04: .word 0xC0500001, 0xB0F40BB8, 0xB0F804B0, 0x30FC03E8
var_80B75E14: .word \
0x00000000, 0xC2C80000, 0x00000000, 0x42C80000, \
0xC2A00000, 0xC2480000, 0xC2480000, 0xC2A00000, \
0xC2C80000, 0xC2960000, 0xC2B40000, 0x42B40000, \
0x41F00000, 0xC2C80000, 0x42200000

.section .rodata

var_80B75E50: .word 0x3DF5C28F
var_80B75E54: .word 0x3CA3D70A
var_80B75E58: .word 0x3E99999A
var_80B75E5C: .word 0x409CCCCD

