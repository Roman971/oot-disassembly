# "PreNMI" part of the code file
#
# The purpose of this file's content is unclear but it supposedly handles the prenmi state.
#
# Starts at VRAM: 8007CC30 / VROM: AF2B90
#

.section .text
func_8007CC30:
    sw      $zero, 0x0098(a0)          # 00000098
    sw      $zero, 0x000C(a0)          # 0000000C
    sw      $zero, 0x0010(a0)          # 00000010
    jr      $ra
    nop


func_8007CC44:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lw      v0, 0x00A4(a1)             # 000000A4
    lui     $at, 0x3F80                # $at = 3F800000
    bne     v0, $zero, lbl_8007CC84
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    mtc1    $at, $f12                  # $f12 = 1.00
    jal     func_800D5CF0
    sw      a1, 0x0018($sp)
    jal     func_80003BE0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_8007CC30
    lw      a0, 0x0018($sp)
    b       lbl_8007CC8C
    lw      $ra, 0x0014($sp)
lbl_8007CC84:
    sw      t6, 0x00A4(a1)             # 000000A4
    lw      $ra, 0x0014($sp)
lbl_8007CC8C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007CC98:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x02C0(a0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    jal     func_8007EE5C
    sw      a0, 0x001C($sp)
    jal     func_8007E42C
    lw      a0, 0x001C($sp)
    lw      a0, 0x001C($sp)
    lw      a2, 0x0020($sp)
    lw      v0, 0x02C0(a0)             # 000002C0
    lui     t0, 0xF700                 # t0 = F7000000
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(a0)             # 000002C0
    lui     $at, 0xF64F                # $at = F64F0000
    ori     $at, $at, 0xC000           # $at = F64FC000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(a0)             # 000002C0
    lw      t3, 0x00A4(a2)             # 000000A4
    addiu   t4, t3, 0x0064             # t4 = 00000064
    andi    t5, t4, 0x03FF             # t5 = 00000064
    sll     t6, t5,  2
    or      t7, t6, $at                # t7 = F64FC000
    sw      t7, 0x0000(v0)             # 00000000
    lw      t8, 0x00A4(a2)             # 000000A4
    addiu   t9, t8, 0x0064             # t9 = 00000064
    andi    t0, t9, 0x03FF             # t0 = 00000064
    sll     t1, t0,  2
    sw      t1, 0x0004(v0)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8007CD50:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_8007CC44
    lw      a0, 0x0018($sp)
    jal     func_8007CC98
    lw      a0, 0x0018($sp)
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x00A0(t7)             # 000000A0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8007CD84:
# Push A0 on stack (referenced by 8007CD90)
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_8007CD90:
    lui     t6, 0x8008                 # t6 = 80080000
    lui     t7, 0x8008                 # t7 = 80080000
    addiu   t6, t6, 0xCD50             # t6 = 8007CD50
    addiu   t7, t7, 0xCD84             # t7 = 8007CD84
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sw      t6, 0x0004(a0)             # 00000004
    sw      t7, 0x0008(a0)             # 00000008
    sw      t8, 0x00A4(a0)             # 000000A4
    sw      t9, 0x00A8(a0)             # 000000A8
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x4600(t1)            # 8011BA00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t0, 0x0110(t1)             # 80120110
    jr      $ra
    nop


func_8007CDD0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFE8
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80067850
    sw      a3, 0x0034($sp)
    lw      a3, 0x0034($sp)
    lwc1    $f6, 0x0018($sp)
    lwc1    $f16, 0x001C($sp)
    lwc1    $f4, 0x0000(a3)            # 00000000
    addiu   t6, $sp, 0x0024            # t6 = FFFFFFF4
    lw      v0, 0x0030($sp)
    add.s   $f8, $f4, $f6
    lwc1    $f6, 0x0020($sp)
    swc1    $f8, 0x0024($sp)
    lwc1    $f10, 0x0004(a3)           # 00000004
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0028($sp)
    lwc1    $f4, 0x0008(a3)            # 00000008
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x002C($sp)
    lw      t8, 0x0000(t6)             # FFFFFFF4
    sw      t8, 0x0000(v0)             # 00000000
    lw      t7, 0x0004(t6)             # FFFFFFF8
    sw      t7, 0x0004(v0)             # 00000004
    lw      t8, 0x0008(t6)             # FFFFFFFC
    sw      t8, 0x0008(v0)             # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8007CE50:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sdc1    $f20, 0x0010($sp)
    sw      s0, 0x001C($sp)
    sw      a3, 0x006C($sp)
    mtc1    a2, $f20                   # $f20 = 0.00
    or      a3, a1, $zero              # a3 = 00000000
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a1, 0x0064($sp)
    lw      v0, 0x0004(s0)             # 00000004
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFDC
    addiu   a2, v0, 0x0050             # a2 = 00000050
    beq     t6, $zero, lbl_8007CF4C
    addiu   s1, v0, 0x005C             # s1 = 0000005C
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      a1, s1, $zero              # a1 = 0000005C
    sw      a3, 0x0064($sp)
    swc1    $f0, 0x004C($sp)
    swc1    $f0, 0x0050($sp)
    jal     func_80067A84
    swc1    $f0, 0x0054($sp)
    lh      t7, 0x000C(s0)             # 0000000C
    lh      t8, 0x0040($sp)
    lh      t2, 0x0042($sp)
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   s1, $sp, 0x004C            # s1 = FFFFFFEC
    or      a0, s1, $zero              # a0 = FFFFFFEC
    cvt.s.w $f6, $f4
    or      a1, s1, $zero              # a1 = FFFFFFEC
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFE4
    mul.s   $f8, $f6, $f20
    swc1    $f8, 0x0044($sp)
    lh      t9, 0x0014(s0)             # 00000014
    addu    t0, t8, t9
    addiu   t1, t0, 0x4000             # t1 = 00004000
    sh      t1, 0x0048($sp)
    lh      t3, 0x0016(s0)             # 00000016
    addu    t4, t2, t3
    jal     func_8007CDD0
    sh      t4, 0x004A($sp)
    lh      t5, 0x000E(s0)             # 0000000E
    lwc1    $f18, 0x006C($sp)
    lh      t6, 0x0040($sp)
    mtc1    t5, $f10                   # $f10 = 0.00
    lh      t9, 0x0042($sp)
    or      a0, s1, $zero              # a0 = FFFFFFEC
    cvt.s.w $f16, $f10
    or      a1, s1, $zero              # a1 = FFFFFFEC
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFE4
    mul.s   $f4, $f16, $f18
    swc1    $f4, 0x0044($sp)
    lh      t7, 0x0014(s0)             # 00000014
    addu    t8, t6, t7
    sh      t8, 0x0048($sp)
    lh      t0, 0x0016(s0)             # 00000016
    addu    t1, t9, t0
    addiu   t2, t1, 0x4000             # t2 = 00004000
    jal     func_8007CDD0
    sh      t2, 0x004A($sp)
    b       lbl_8007CFB4
    lw      a3, 0x0064($sp)
lbl_8007CF4C:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f4, 0x006C($sp)
    addiu   s1, $sp, 0x004C            # s1 = FFFFFFEC
    swc1    $f0, 0x004C($sp)
    lh      t3, 0x000C(s0)             # 0000000C
    swc1    $f0, 0x0054($sp)
    or      a0, s1, $zero              # a0 = FFFFFFEC
    mtc1    t3, $f6                    # $f6 = 0.00
    or      a1, s1, $zero              # a1 = FFFFFFEC
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFE4
    cvt.s.w $f8, $f6
    mul.s   $f10, $f8, $f20
    swc1    $f10, 0x0050($sp)
    lh      t4, 0x000E(s0)             # 0000000E
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f6, $f18, $f4
    swc1    $f6, 0x0044($sp)
    lh      t5, 0x0014(s0)             # 00000014
    sh      t5, 0x0048($sp)
    lh      t6, 0x0016(s0)             # 00000016
    sw      a3, 0x0064($sp)
    jal     func_8007CDD0
    sh      t6, 0x004A($sp)
    lw      a3, 0x0064($sp)
lbl_8007CFB4:
    lw      t8, 0x0000(s1)             # FFFFFFEC
    addiu   v0, $sp, 0x0030            # v0 = FFFFFFD0
    lw      t7, 0x0004(s1)             # FFFFFFF0
    sw      t8, 0x0000(v0)             # FFFFFFD0
    lw      t8, 0x0008(s1)             # FFFFFFF4
    lw      t0, 0x0000(v0)             # FFFFFFD0
    sw      t7, 0x0004(v0)             # FFFFFFD4
    sw      t8, 0x0008(v0)             # FFFFFFD8
    sw      t0, 0x000C(a3)             # 0000000C
    lw      t9, 0x0004(v0)             # FFFFFFD4
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f8                   # $f8 = 32768.00
    sw      t9, 0x0010(a3)             # 00000010
    lw      t0, 0x0008(v0)             # FFFFFFD8
    mul.s   $f10, $f8, $f20
    sw      t0, 0x0014(a3)             # 00000014
    lw      t2, 0x0000(v0)             # FFFFFFD0
    sw      t2, 0x0000(a3)             # 00000000
    trunc.w.s $f16, $f10
    lw      t1, 0x0004(v0)             # FFFFFFD4
    sw      t1, 0x0004(a3)             # 00000004
    lw      t2, 0x0008(v0)             # FFFFFFD8
    mfc1    t4, $f16
    sw      t2, 0x0008(a3)             # 00000008
    sh      t4, 0x001A(a3)             # 0000001A
    lh      t5, 0x0012(s0)             # 00000012
    mtc1    t5, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f20
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sh      t7, 0x0018(a3)             # 00000018
    lh      t8, 0x0010(s0)             # 00000010
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f20
    trunc.w.s $f4, $f18
    mfc1    t0, $f4
    nop
    sh      t0, 0x001C(a3)             # 0000001C
    lw      $ra, 0x0024($sp)
    ldc1    $f20, 0x0010($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_8007D078:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      v1, 0x001E(s0)             # 0000001E
    blezl   v1, lbl_8007D0EC
    or      v0, v1, $zero              # v0 = 00000000
    lh      t6, 0x001A(s0)             # 0000001A
    multu   t6, v1
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0020($sp)
    lwc1    $f2, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    mul.s   $f4, $f0, $f2
    mfc1    a2, $f2
    mfc1    a3, $f4
    jal     func_8007CE50
    nop
    lh      t7, 0x001E(s0)             # 0000001E
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x001E(s0)             # 0000001E
    lh      v1, 0x001E(s0)             # 0000001E
    or      v0, v1, $zero              # v0 = 00000000
lbl_8007D0EC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8007D100:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v1, 0x001E(s0)             # 0000001E
    blezl   v1, lbl_8007D160
    or      v0, v1, $zero              # v0 = 00000000
    lh      t6, 0x001A(s0)             # 0000001A
    multu   t6, v1
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mfc1    a2, $f0
    mfc1    a3, $f0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8007CE50
    lw      a1, 0x0024($sp)
    lh      t7, 0x001E(s0)             # 0000001E
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x001E(s0)             # 0000001E
    lh      v1, 0x001E(s0)             # 0000001E
    or      v0, v1, $zero              # v0 = 00000000
lbl_8007D160:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8007D174:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x001E(s0)             # 0000001E
    lh      t8, 0x001A(s0)             # 0000001A
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x001E(s0)             # 0000001E
    lh      t9, 0x001E(s0)             # 0000001E
    andi    t0, t9, 0x000F             # t0 = 00000000
    addiu   t1, t0, 0x01F4             # t1 = 000001F4
    multu   t8, t1
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0020($sp)
    lwc1    $f2, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    mul.s   $f4, $f0, $f2
    mfc1    a2, $f2
    mfc1    a3, $f4
    jal     func_8007CE50
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8007D1F8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v1, 0x001E(s0)             # 0000001E
    blezl   v1, lbl_8007D27C
    or      v0, v1, $zero              # v0 = 00000000
    lh      t6, 0x001A(s0)             # 0000001A
    multu   t6, v1
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      t7, 0x001E(s0)             # 0000001E
    lh      t8, 0x0002(s0)             # 00000002
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t8, $f8                    # $f8 = 0.00
    lw      a1, 0x0024($sp)
    cvt.s.w $f6, $f4
    cvt.s.w $f10, $f8
    div.s   $f16, $f6, $f10
    mul.s   $f2, $f0, $f16
    mfc1    a2, $f2
    mfc1    a3, $f2
    jal     func_8007CE50
    nop
    lh      t9, 0x001E(s0)             # 0000001E
    addiu   t0, t9, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x001E(s0)             # 0000001E
    lh      v1, 0x001E(s0)             # 0000001E
    or      v0, v1, $zero              # v0 = 00000000
lbl_8007D27C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8007D290:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lh      v1, 0x001E(a0)             # 0000001E
    blezl   v1, lbl_8007D2F0
    or      v0, v1, $zero              # v0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0020($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x001C($sp)
    lwc1    $f2, 0x001C($sp)
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    mul.s   $f4, $f0, $f2
    mfc1    a2, $f2
    mfc1    a3, $f4
    jal     func_8007CE50
    nop
    lw      a0, 0x0020($sp)
    lh      t6, 0x001E(a0)             # 0000001E
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x001E(a0)             # 0000001E
    lh      v1, 0x001E(a0)             # 0000001E
    or      v0, v1, $zero              # v0 = 00000000
lbl_8007D2F0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8007D300:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      v1, 0x001E(s0)             # 0000001E
    blezl   v1, lbl_8007D384
    or      v0, v1, $zero              # v0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lh      t6, 0x001E(s0)             # 0000001E
    lh      t7, 0x0002(s0)             # 00000002
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f10, $f8
    div.s   $f16, $f6, $f10
    mul.s   $f2, $f0, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0024($sp)
    lwc1    $f2, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    mul.s   $f18, $f0, $f2
    mfc1    a2, $f2
    mfc1    a3, $f18
    jal     func_8007CE50
    nop
    lh      t8, 0x001E(s0)             # 0000001E
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x001E(s0)             # 0000001E
    lh      v1, 0x001E(s0)             # 0000001E
    or      v0, v1, $zero              # v0 = 00000000
lbl_8007D384:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8007D398:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    lui     a0, 0x8012                 # a0 = 80120000
    lui     v0, 0x0001                 # v0 = 00010000
    addiu   a0, a0, 0xBF60             # a0 = 8011BF60
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lw      a1, 0x0000($sp)
lbl_8007D3B4:
    lw      t6, 0x0008(a0)             # 8011BF68
    bnel    t6, $zero, lbl_8007D3CC
    lh      a2, 0x001E(a0)             # 8011BF7E
    b       lbl_8007D3EC
    or      a1, v1, $zero              # a1 = 00000000
    lh      a2, 0x001E(a0)             # 8011BF7E
lbl_8007D3CC:
    slt     $at, a2, v0
    beql    $at, $zero, lbl_8007D3E4
    addiu   v1, v1, 0x0001             # v1 = 00000001
    or      v0, a2, $zero              # v0 = 00000000
    or      a1, v1, $zero              # a1 = 00000001
    addiu   v1, v1, 0x0001             # v1 = 00000002
lbl_8007D3E4:
    bne     v1, a3, lbl_8007D3B4
    addiu   a0, a0, 0x0024             # a0 = 8011BF84
lbl_8007D3EC:
    sll     v0, a1, 16
    sra     v0, v0, 16
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_8007D3FC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    jal     func_8007D398
    nop
    sll     t6, v0,  3
    addu    t6, t6, v0
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   t7, t7, 0xBF60             # t7 = 8011BF60
    sll     t6, t6,  2
    addu    a0, t6, t7
    sh      v0, 0x001E($sp)
    sw      a0, 0x0018($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800D5E30
    addiu   a2, $zero, 0x0024          # a2 = 00000024
    lw      v1, 0x0018($sp)
    lw      a0, 0x0020($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      a0, 0x0004(v1)             # 00000004
    lh      t8, 0x0164(a0)             # 00000164
    sh      t8, 0x0020(v1)             # 00000020
    lw      t9, 0x0024($sp)
    sh      t0, 0x001C(v1)             # 0000001C
    jal     func_800CDCCC              # Rand.Next() float
    sw      t9, 0x0008(v1)             # 00000008
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f4                   # $f4 = 65536.00
    lh      t6, 0x001E($sp)
    lw      v0, 0x0018($sp)
    mul.s   $f6, $f0, $f4
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7D24             # a0 = 800F7D24
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    nop
    andi    t5, t4, 0xFFFC             # t5 = 00000000
    addu    t7, t5, t6
    sh      t7, 0x0000(v0)             # 00000000
    lh      t8, 0x0000(a0)             # 800F7D24
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x0000(a0)             # 800F7D24
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8007D4B4:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x7D24             # v0 = 800F7D24
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sw      $zero, 0x0008(a0)          # 00000008
    sh      t6, 0x001E(a0)             # 0000001E
    lh      t7, 0x0000(v0)             # 800F7D24
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0000(v0)             # 800F7D24
    jr      $ra
    nop


func_8007D4DC:
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    andi    t6, a0, 0x0003             # t6 = 00000000
    sll     t7, t6,  3
    addu    t7, t7, t6
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t8, t8, 0xBF60             # t8 = 8011BF60
    sll     t7, t7,  2
    addu    v1, t7, t8
    lw      t9, 0x0008(v1)             # 00000008
    bnel    t9, $zero, lbl_8007D51C
    lh      t0, 0x0000(v1)             # 00000000
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007D518:
    lh      t0, 0x0000(v1)             # 00000000
lbl_8007D51C:
    or      v0, v1, $zero              # v0 = 00000000
    beq     a0, t0, lbl_8007D530
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007D530:
    jr      $ra
    nop


func_8007D538:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sll     a0, a0, 16
    sra     a0, a0, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    sh      a1, 0x001E($sp)
    jal     func_8007D4DC
    sh      a2, 0x0022($sp)
    lh      a1, 0x001E($sp)
    bne     v0, $zero, lbl_8007D584
    lh      a2, 0x0022($sp)
    b       lbl_8007D658
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007D584:
    slti    $at, a1, 0x0081
    bne     $at, $zero, lbl_8007D5A8
    addiu   $at, $zero, 0x0100         # $at = 00000100
    beq     a1, $at, lbl_8007D644
    addiu   $at, $zero, 0x0200         # $at = 00000200
    beql    a1, $at, lbl_8007D658
    sh      a2, 0x001C(v0)             # 0000001C
    b       lbl_8007D65C
    lw      $ra, 0x0014($sp)
lbl_8007D5A8:
    slti    $at, a1, 0x0041
    bne     $at, $zero, lbl_8007D5C4
    addiu   $at, $zero, 0x0080         # $at = 00000080
    beq     a1, $at, lbl_8007D63C
    nop
    b       lbl_8007D65C
    lw      $ra, 0x0014($sp)
lbl_8007D5C4:
    slti    $at, a1, 0x0021
    bne     $at, $zero, lbl_8007D5E4
    addiu   t6, a1, 0xFFFF             # t6 = FFFFFFFF
    addiu   $at, $zero, 0x0040         # $at = 00000040
    beq     a1, $at, lbl_8007D634
    nop
    b       lbl_8007D65C
    lw      $ra, 0x0014($sp)
lbl_8007D5E4:
    sltiu   $at, t6, 0x0020
    beq     $at, $zero, lbl_8007D658
    sll     t6, t6,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t6
    lw      t6, -0x7680($at)           # 80108980
    jr      t6
    nop
    b       lbl_8007D658
    sh      a2, 0x001A(v0)             # 0000001A
    b       lbl_8007D658
    sh      a2, 0x000C(v0)             # 0000000C
    b       lbl_8007D658
    sh      a2, 0x000E(v0)             # 0000000E
    b       lbl_8007D658
    sh      a2, 0x0010(v0)             # 00000010
    b       lbl_8007D658
    sh      a2, 0x0012(v0)             # 00000012
    b       lbl_8007D658
    sh      a2, 0x0014(v0)             # 00000014
lbl_8007D634:
    b       lbl_8007D658
    sh      a2, 0x0016(v0)             # 00000016
lbl_8007D63C:
    b       lbl_8007D658
    sh      a2, 0x0018(v0)             # 00000018
lbl_8007D644:
    sh      a2, 0x001E(v0)             # 0000001E
    lh      t7, 0x001E(v0)             # 0000001E
    b       lbl_8007D658
    sh      t7, 0x0002(v0)             # 00000002
    sh      a2, 0x001C(v0)             # 0000001C
lbl_8007D658:
    lw      $ra, 0x0014($sp)
lbl_8007D65C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007D668:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8007D4DC
    nop
    beq     v0, $zero, lbl_8007D69C
    lh      t6, 0x001E($sp)
    sh      t6, 0x001A(v0)             # 0000001A
    b       lbl_8007D6A0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8007D69C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007D6A0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007D6B0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8007D4DC
    nop
    beq     v0, $zero, lbl_8007D6EC
    lh      t6, 0x001E($sp)
    sh      t6, 0x001E(v0)             # 0000001E
    lh      t7, 0x001E(v0)             # 0000001E
    sh      t7, 0x0002(v0)             # 00000002
    b       lbl_8007D6F0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8007D6EC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007D6F0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007D700:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      $ra, 0x0014($sp)
    jal     func_8007D4DC
    nop
    beq     v0, $zero, lbl_8007D72C
    lw      $ra, 0x0014($sp)
    b       lbl_8007D730
    lh      v0, 0x001E(v0)             # 0000001E
lbl_8007D72C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007D730:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8007D738:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    jal     func_8007D4DC
    nop
    beq     v0, $zero, lbl_8007D78C
    lh      t6, 0x001E($sp)
    sh      t6, 0x000C(v0)             # 0000000C
    lh      t7, 0x0022($sp)
    sh      t7, 0x000E(v0)             # 0000000E
    lh      t8, 0x0026($sp)
    sh      t8, 0x0010(v0)             # 00000010
    lh      t9, 0x002A($sp)
    sh      t9, 0x0012(v0)             # 00000012
    b       lbl_8007D790
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8007D78C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007D790:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007D7A0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    jal     func_8007D4DC
    nop
    beq     v0, $zero, lbl_8007D7F4
    lh      t6, 0x001E($sp)
    sh      t6, 0x001C(v0)             # 0000001C
    addiu   t7, $sp, 0x0020            # t7 = 00000008
    lw      t9, 0x0000(t7)             # 00000008
    swl     t9, 0x0014(v0)             # 00000014
    swr     t9, 0x0017(v0)             # 00000017
    lhu     t9, 0x0004(t7)             # 0000000C
    sh      t9, 0x0018(v0)             # 00000018
    b       lbl_8007D7F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8007D7F4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007D7F8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007D808:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xBF60             # a0 = 8011BF60
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a1, $zero, 0x0024          # a1 = 00000024
lbl_8007D818:
    multu   v0, a1
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    mflo    t6
    addu    v1, a0, t6
    sw      $zero, 0x0008(v1)          # 00000008
    bne     $at, $zero, lbl_8007D818
    sh      $zero, 0x001E(v1)          # 0000001E
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x800F                # $at = 800F0000
    sh      t7, 0x7D20($at)            # 800F7D20
    lui     $at, 0x800F                # $at = 800F0000
    sh      $zero, 0x7D24($at)         # 800F7D24
    jr      $ra
    nop


func_8007D85C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8007D3FC
    nop
    lh      v0, 0x0000(v0)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007D880:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      $ra, 0x0014($sp)
    jal     func_8007D4DC
    nop
    beq     v0, $zero, lbl_8007D8B4
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_8007D4B4
    nop
    b       lbl_8007D8B8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8007D8B4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007D8B8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007D8C8:
    addiu   $sp, $sp, 0xFF48           # $sp -= 0xB8
    sw      s0, 0x0038($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a0, 0x00B8($sp)
    lw      t6, 0x00B8($sp)
    lui     t8, 0x800F                 # t8 = 800F0000
    lui     s1, 0x8012                 # s1 = 80120000
    lw      t7, 0x008C(t6)             # 0000008C
    swc1    $f0, 0x0068($sp)
    swc1    $f0, 0x006C($sp)
    swc1    $f0, 0x0070($sp)
    sw      t7, 0x0064($sp)
    swc1    $f0, 0x0000(s0)            # 00000000
    swc1    $f0, 0x0004(s0)            # 00000004
    swc1    $f0, 0x0008(s0)            # 00000008
    swc1    $f0, 0x000C(s0)            # 0000000C
    swc1    $f0, 0x0010(s0)            # 00000010
    swc1    $f0, 0x0014(s0)            # 00000014
    sh      $zero, 0x0018(s0)          # 00000018
    sh      $zero, 0x001A(s0)          # 0000001A
    sh      $zero, 0x001C(s0)          # 0000001C
    swc1    $f0, 0x0020(s0)            # 00000020
    lh      t8, 0x7D24(t8)             # 800F7D24
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s1, s1, 0xBF60             # s1 = 8011BF60
    bne     t8, $zero, lbl_8007D964
    lui     $at, 0x8011                # $at = 80110000
    b       lbl_8007DC04
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007D964:
    lwc1    $f26, -0x7600($at)         # 80108A00
    addiu   s4, $sp, 0x0068            # s4 = FFFFFFB0
    addiu   s3, $sp, 0x008C            # s3 = FFFFFFD4
    lw      a2, 0x0008(s1)             # 8011BF68
lbl_8007D974:
    beq     a2, $zero, lbl_8007DBE8
    nop
    lh      t0, 0x0020(s1)             # 8011BF80
    lw      t9, 0x0064($sp)
    lw      t6, 0x00B8($sp)
    sll     t1, t0,  2
    addu    t2, t9, t1
    lw      t3, 0x0790(t2)             # 00000790
    bnel    t3, $zero, lbl_8007D9B0
    lw      t4, 0x0004(s1)             # 8011BF64
    jal     func_8007D4B4
    or      a0, s1, $zero              # a0 = 8011BF60
    b       lbl_8007DBE8
    nop
    lw      t4, 0x0004(s1)             # 8011BF64
lbl_8007D9B0:
    lh      t7, 0x0164(t6)             # 00000164
    lh      v0, 0x001A(s1)             # 8011BF7A
    lh      t5, 0x0164(t4)             # 00000164
    subu    v1, $zero, v0
    xor     a3, t5, t7
    bltz    v0, lbl_8007D9D4
    sltu    a3, $zero, a3
    b       lbl_8007D9D4
    or      v1, v0, $zero              # v1 = 00000000
lbl_8007D9D4:
    mtc1    v1, $f4                    # $f4 = 0.00
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f8                   # $f8 = 32768.00
    cvt.s.w $f6, $f4
    sll     t8, a2,  2
    lui     t9, 0x800F                 # t9 = 800F0000
    addu    t9, t9, t8
    lw      t9, 0x7D28(t9)             # 800F7D28
    or      a0, s1, $zero              # a0 = 8011BF60
    div.s   $f22, $f6, $f8
    or      a1, s3, $zero              # a1 = FFFFFFD4
    sw      a3, 0x0074($sp)
    jalr    $ra, t9
    mov.s   $f24, $f22
    bne     v0, $zero, lbl_8007DA24
    lw      a3, 0x0074($sp)
    jal     func_8007D4B4
    or      a0, s1, $zero              # a0 = 8011BF60
    b       lbl_8007DBE8
    nop
lbl_8007DA24:
    bne     a3, $zero, lbl_8007DBE8
    or      a0, s3, $zero              # a0 = FFFFFFD4
    lwc1    $f0, 0x0000(s0)            # 00000000
    lwc1    $f10, 0x008C($sp)
    abs.s   $f2, $f0
    abs.s   $f0, $f10
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_8007DA54
    lwc1    $f0, 0x0004(s0)            # 00000004
    swc1    $f10, 0x0000(s0)           # 00000000
    lwc1    $f0, 0x0004(s0)            # 00000004
lbl_8007DA54:
    lwc1    $f16, 0x0090($sp)
    abs.s   $f2, $f0
    abs.s   $f0, $f16
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_8007DA78
    lwc1    $f0, 0x0008(s0)            # 00000008
    swc1    $f16, 0x0004(s0)           # 00000004
    lwc1    $f0, 0x0008(s0)            # 00000008
lbl_8007DA78:
    lwc1    $f18, 0x0094($sp)
    abs.s   $f2, $f0
    abs.s   $f0, $f18
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_8007DA9C
    lwc1    $f0, 0x000C(s0)            # 0000000C
    swc1    $f18, 0x0008(s0)           # 00000008
    lwc1    $f0, 0x000C(s0)            # 0000000C
lbl_8007DA9C:
    lwc1    $f4, 0x0098($sp)
    abs.s   $f2, $f0
    abs.s   $f0, $f4
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_8007DAC0
    lwc1    $f0, 0x0010(s0)            # 00000010
    swc1    $f4, 0x000C(s0)            # 0000000C
    lwc1    $f0, 0x0010(s0)            # 00000010
lbl_8007DAC0:
    lwc1    $f6, 0x009C($sp)
    abs.s   $f2, $f0
    abs.s   $f0, $f6
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_8007DAE4
    lwc1    $f0, 0x0014(s0)            # 00000014
    swc1    $f6, 0x0010(s0)            # 00000010
    lwc1    $f0, 0x0014(s0)            # 00000014
lbl_8007DAE4:
    lwc1    $f8, 0x00A0($sp)
    abs.s   $f2, $f0
    abs.s   $f0, $f8
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_8007DB08
    lh      t0, 0x0018(s0)             # 00000018
    swc1    $f8, 0x0014(s0)            # 00000014
    lh      t0, 0x0018(s0)             # 00000018
lbl_8007DB08:
    lh      t1, 0x00A4($sp)
    slt     $at, t0, t1
    beql    $at, $zero, lbl_8007DB28
    lh      t3, 0x001C(s0)             # 0000001C
    sh      t1, 0x0018(s0)             # 00000018
    lh      t2, 0x00A6($sp)
    sh      t2, 0x001A(s0)             # 0000001A
    lh      t3, 0x001C(s0)             # 0000001C
lbl_8007DB28:
    lh      t4, 0x00A8($sp)
    slt     $at, t3, t4
    beq     $at, $zero, lbl_8007DB3C
    nop
    sh      t4, 0x001C(s0)             # 0000001C
lbl_8007DB3C:
    jal     func_80067580
    or      a1, s4, $zero              # a1 = FFFFFFB0
    mul.s   $f20, $f0, $f22
    addiu   a0, $sp, 0x0098            # a0 = FFFFFFE0
    jal     func_80067580
    or      a1, s4, $zero              # a1 = FFFFFFB0
    mul.s   $f2, $f0, $f22
    addiu   s2, s2, 0x0001             # s2 = 00000001
    c.lt.s  $f20, $f2
    nop
    bc1fl   lbl_8007DB74
    lh      t6, 0x0018(s0)             # 00000018
    mov.s   $f20, $f2
    lh      t6, 0x0018(s0)             # 00000018
lbl_8007DB74:
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f26
    nop
    mul.s   $f0, $f18, $f24
    c.lt.s  $f20, $f0
    nop
    bc1f    lbl_8007DBA0
    nop
    mov.s   $f20, $f0
lbl_8007DBA0:
    lh      t5, 0x001C(s0)             # 0000001C
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f26
    nop
    mul.s   $f0, $f8, $f24
    c.lt.s  $f20, $f0
    nop
    bc1f    lbl_8007DBD0
    nop
    mov.s   $f20, $f0
lbl_8007DBD0:
    lwc1    $f10, 0x0020(s0)           # 00000020
    c.lt.s  $f10, $f20
    nop
    bc1f    lbl_8007DBE8
    nop
    swc1    $f20, 0x0020(s0)           # 00000020
lbl_8007DBE8:
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   t7, t7, 0xBFF0             # t7 = 8011BFF0
    addiu   s1, s1, 0x0024             # s1 = 8011BF84
    bnel    s1, t7, lbl_8007D974
    lw      a2, 0x0008(s1)             # 8011BF8C
    sll     v0, s2, 16
    sra     v0, v0, 16
lbl_8007DC04:
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B8           # $sp += 0xB8
    nop
    nop
    nop
