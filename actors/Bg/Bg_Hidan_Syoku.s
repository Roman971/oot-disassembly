.section .text
func_808DD5A0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(var_808DD970)      # a1 = 808E0000
    sw      $zero, 0x0024($sp)
    addiu   a1, a1, %lo(var_808DD970)  # a1 = 808DD970
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xE568             # a0 = 0600E568
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     $at, 0x4407                # $at = 44070000
    mtc1    $at, $f6                   # $f6 = 540.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lui     t6, %hi(func_808DD69C)     # t6 = 808E0000
    addiu   t6, t6, %lo(func_808DD69C) # t6 = 808DD69C
    add.s   $f8, $f4, $f6
    sw      v0, 0x013C(s0)             # 0000013C
    sw      t6, 0x0154(s0)             # 00000154
    swc1    $f8, 0x000C(s0)            # 0000000C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_808DD62C:
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


func_808DD660:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x003C          # t6 = 0000003C
    sh      t6, 0x015A(a0)             # 0000015A
    sw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    lw      a0, 0x0018($sp)
    lui     t7, %hi(func_808DD814)     # t7 = 808E0000
    addiu   t7, t7, %lo(func_808DD814) # t7 = 808DD814
    sw      t7, 0x0154(a0)             # 00000154
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DD69C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80020640
    lb      a1, 0x0003(t6)             # 00000003
    beql    v0, $zero, lbl_808DD6F0
    lw      $ra, 0x0014($sp)
    jal     func_80035364
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_808DD6EC
    lw      t8, 0x0018($sp)
    addiu   t7, $zero, 0x008C          # t7 = 0000008C
    sh      t7, 0x015A(t8)             # 0000015A
    lw      t0, 0x0018($sp)
    lui     t9, %hi(func_808DD6FC)     # t9 = 808E0000
    addiu   t9, t9, %lo(func_808DD6FC) # t9 = 808DD6FC
    sw      t9, 0x0154(t0)             # 00000154
lbl_808DD6EC:
    lw      $ra, 0x0014($sp)
lbl_808DD6F0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DD6FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x015A(a0)             # 0000015A
    beq     v0, $zero, lbl_808DD71C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_808DD71C:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_808DD980)     # $at = 808E0000
    lwc1    $f8, %lo(var_808DD980)($at)
    cvt.s.w $f6, $f4
    sw      a0, 0x0018($sp)
    mul.s   $f12, $f6, $f8
    jal     func_800D2CD0
    nop
    lui     $at, 0x4407                # $at = 44070000
    mtc1    $at, $f10                  # $f10 = 540.00
    lw      a0, 0x0018($sp)
    mul.s   $f16, $f0, $f10
    lwc1    $f18, 0x000C(a0)           # 0000000C
    lh      t7, 0x015A(a0)             # 0000015A
    add.s   $f4, $f16, $f18
    bne     t7, $zero, lbl_808DD770
    swc1    $f4, 0x0028(a0)            # 00000028
    jal     func_808DD660
    nop
    beq     $zero, $zero, lbl_808DD77C
    lw      $ra, 0x0014($sp)
lbl_808DD770:
    jal     func_8002313C
    addiu   a1, $zero, 0x20B9          # a1 = 000020B9
    lw      $ra, 0x0014($sp)
lbl_808DD77C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DD788:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x015A(a0)             # 0000015A
    beq     v0, $zero, lbl_808DD7A8
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_808DD7A8:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_808DD984)     # $at = 808E0000
    lwc1    $f8, %lo(var_808DD984)($at)
    cvt.s.w $f6, $f4
    sw      a0, 0x0018($sp)
    mul.s   $f12, $f6, $f8
    jal     func_800D2CD0
    nop
    lui     $at, 0x4407                # $at = 44070000
    mtc1    $at, $f16                  # $f16 = 540.00
    lw      a0, 0x0018($sp)
    mul.s   $f18, $f0, $f16
    lwc1    $f10, 0x000C(a0)           # 0000000C
    lh      t7, 0x015A(a0)             # 0000015A
    sub.s   $f4, $f10, $f18
    bne     t7, $zero, lbl_808DD7FC
    swc1    $f4, 0x0028(a0)            # 00000028
    jal     func_808DD660
    nop
    beq     $zero, $zero, lbl_808DD808
    lw      $ra, 0x0014($sp)
lbl_808DD7FC:
    jal     func_8002313C
    addiu   a1, $zero, 0x20B9          # a1 = 000020B9
    lw      $ra, 0x0014($sp)
lbl_808DD808:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DD814:
    sw      a1, 0x0004($sp)
    lh      v0, 0x015A(a0)             # 0000015A
    beq     v0, $zero, lbl_808DD82C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_808DD82C:
    bne     v0, $zero, lbl_808DD868
    nop
    lwc1    $f4, 0x0028(a0)            # 00000028
    lwc1    $f6, 0x000C(a0)            # 0000000C
    addiu   t7, $zero, 0x008C          # t7 = 0000008C
    lui     t8, %hi(func_808DD6FC)     # t8 = 808E0000
    c.lt.s  $f4, $f6
    lui     t9, %hi(func_808DD788)     # t9 = 808E0000
    sh      t7, 0x015A(a0)             # 0000015A
    addiu   t8, t8, %lo(func_808DD6FC) # t8 = 808DD6FC
    bc1f    lbl_808DD864
    addiu   t9, t9, %lo(func_808DD788) # t9 = 808DD788
    jr      $ra
    sw      t8, 0x0154(a0)             # 00000154
lbl_808DD864:
    sw      t9, 0x0154(a0)             # 00000154
lbl_808DD868:
    jr      $ra
    nop


func_808DD870:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      t9, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jalr    $ra, t9
    nop
    jal     func_80035364
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808DD8D4
    nop
    lh      t6, 0x0158(s0)             # 00000158
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    bnel    t6, $zero, lbl_808DD8C0
    lw      t8, 0x0024($sp)
    sh      t7, 0x0158(s0)             # 00000158
    lw      t8, 0x0024($sp)
lbl_808DD8C0:
    addiu   a1, $zero, 0x0030          # a1 = 00000030
    jal     func_800495BC
    lw      a0, 0x0790(t8)             # 00000790
    beq     $zero, $zero, lbl_808DD908
    lw      $ra, 0x001C($sp)
lbl_808DD8D4:
    jal     func_80035364
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_808DD908
    lw      $ra, 0x001C($sp)
    lh      t0, 0x0158(s0)             # 00000158
    lw      t1, 0x0024($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beql    t0, $zero, lbl_808DD904
    sh      $zero, 0x0158(s0)          # 00000158
    jal     func_800495BC
    lw      a0, 0x0790(t1)             # 00000790
    sh      $zero, 0x0158(s0)          # 00000158
lbl_808DD904:
    lw      $ra, 0x001C($sp)
lbl_808DD908:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DD918:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA7E0             # a1 = 0600A7E0
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop

.section .data

var_808DD950: .word 0x00470100, 0x00000010, 0x002C0000, 0x0000015C
.word func_808DD5A0
.word func_808DD62C
.word func_808DD870
.word func_808DD918
var_808DD970: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_808DD980: .word 0x3CB7D3FB
var_808DD984: .word 0x3CB7D3FB, 0x00000000, 0x00000000

