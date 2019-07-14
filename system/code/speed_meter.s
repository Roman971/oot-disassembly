# "Speed Meter" part of the code file
#
# The purpose of this file's content is unclear but it supposedly handles the speed at which the game runs.
#
# Starts at VRAM: 800A38B0 / VROM: B19810
#

.section .text
func_800A38B0:
    sw      a1, 0x0018(a0)             # 00000018
    sw      a2, 0x001C(a0)             # 0000001C
    jr      $ra
    nop


func_800A38C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    jal     func_800A38B0
    addiu   a2, $zero, 0x0016          # a2 = 00000016
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800A38E4:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_800A38F0:
    addiu   $sp, $sp, 0xFDE8           # $sp = FFFFFDE8
    sw      s3, 0x0030($sp)
    lui     s3, 0x8010                 # s3 = 80100000
    addiu   s3, s3, 0xEE60             # s3 = 800FEE60
    sw      $ra, 0x0034($sp)
    sw      s2, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    sw      a1, 0x021C($sp)
    lw      v0, 0x001C(a0)             # 0000001C
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0x0FC8             # s0 = 80120FC8
    sw      v0, 0x0200($sp)
    addiu   s2, v0, 0x0002             # s2 = 00000002
    lw      t6, 0x0000(s3)             # 800FEE60
    lui     t8, 0x8010                 # t8 = 80100000
    lw      t7, 0x0004(s3)             # 800FEE64
    bne     t6, $zero, lbl_800A3948
    addiu   t8, t8, 0xE530             # t8 = 800FE530
    beq     t7, $zero, lbl_800A3D90
lbl_800A3948:
    lui     $at, 0x4050                # $at = 40500000
    mtc1    $at, $f23                  # $f23 = 3.25
    mtc1    $zero, $f22                # $f22 = 0.00
    sw      t8, 0x0000(s0)             # 80120FC8
    or      s1, $zero, $zero           # s1 = 00000000
lbl_800A395C:
    lw      t9, 0x0000(s0)             # 80120FC8
    lw      t5, 0x0000(t9)             # 00000000
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800D5C84
    lw      a1, 0x0004(t5)             # 00000004
    lw      a0, 0x0000(s3)             # 800FEE60
    lw      a1, 0x0004(s3)             # 800FEE64
    jal     func_800D5C84
    mov.d   $f20, $f0
    div.d   $f4, $f20, $f0
    lw      t9, 0x0000(s0)             # 80120FC8
    addiu   s1, s1, 0x0001             # s1 = 00000001
    slti    $at, s1, 0x0006
    mul.d   $f6, $f4, $f22
    trunc.w.d $f8, $f6
    mfc1    t7, $f8
    nop
    addiu   t8, t7, 0x0020             # t8 = 00000020
    sb      t8, 0x0004(t9)             # 00000004
    lw      t5, 0x0000(s0)             # 80120FC8
    addiu   t6, t5, 0x0008             # t6 = 00000008
    bne     $at, $zero, lbl_800A395C
    sw      t6, 0x0000(s0)             # 80120FC8
    addiu   s1, $sp, 0x00D0            # s1 = FFFFFEB8
    or      a0, s1, $zero              # a0 = FFFFFEB8
    jal     func_80091858
    lw      a1, 0x021C($sp)
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sw      t7, 0x01F0($sp)
    addiu   t8, $zero, 0x00F0          # t8 = 000000F0
    addiu   t9, $zero, 0x0140          # t9 = 00000140
    sw      t9, 0x00B4($sp)
    sw      t8, 0x00AC($sp)
    sw      $zero, 0x00A8($sp)
    sw      $zero, 0x00B0($sp)
    or      a0, s1, $zero              # a0 = FFFFFEB8
    jal     func_80091AE0
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFE90
    lw      t5, 0x021C($sp)
    or      a0, s1, $zero              # a0 = FFFFFEB8
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    lw      t6, 0x02B0(t5)             # 000002B0
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFEA8
    jal     func_80092A88
    sw      t6, 0x00C0($sp)
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t4, 0xF700                 # t4 = F7000000
    lw      t7, 0x00C0($sp)
    lui     t6, 0xEF30                 # t6 = EF300000
    andi    a2, s2, 0x03FF             # a2 = 00000002
    addiu   t8, t7, 0x0008             # t8 = 00000008
    sw      t8, 0x00C0($sp)
    sw      $zero, 0x0004(t7)          # 00000004
    sw      t1, 0x0000(t7)             # 00000000
    lw      t9, 0x00C0($sp)
    addiu   t5, t9, 0x0008             # t5 = 00000008
    sw      t5, 0x00C0($sp)
    sw      $zero, 0x0004(t9)          # 00000004
    sw      t6, 0x0000(t9)             # 00000000
    lw      t7, 0x00C0($sp)
    sll     a2, a2,  2
    addiu   t8, t7, 0x0008             # t8 = 00000008
    sw      t8, 0x00C0($sp)
    sw      $zero, 0x0004(t7)          # 00000004
    sw      t1, 0x0000(t7)             # 00000000
    lw      t9, 0x00C0($sp)
    lui     t6, 0x003F                 # t6 = 003F0000
    ori     t6, t6, 0x003F             # t6 = 003F003F
    addiu   t5, t9, 0x0008             # t5 = 00000008
    sw      t5, 0x00C0($sp)
    sw      t6, 0x0004(t9)             # 00000004
    sw      t4, 0x0000(t9)             # 00000000
    lw      t7, 0x00C0($sp)
    lui     $at, 0xF618                # $at = F6180000
    or      t9, a2, $at                # t9 = F6180002
    addiu   t8, t7, 0x0008             # t8 = 00000008
    sw      t8, 0x00C0($sp)
    sw      t9, 0x0000(t7)             # 00000000
    lw      a1, 0x0200($sp)
    lui     t2, 0x0008                 # t2 = 00080000
    lui     $at, 0xF628                # $at = F6280000
    andi    a1, a1, 0x03FF             # a1 = 00000000
    sll     a1, a1,  2
    or      t5, t2, a1                 # t5 = 00080000
    sw      t5, 0x0004(t7)             # 00000004
    lw      t6, 0x00C0($sp)
    addiu   t7, t6, 0x0008             # t7 = 003F0047
    sw      t7, 0x00C0($sp)
    sw      $zero, 0x0004(t6)          # 003F0043
    sw      t1, 0x0000(t6)             # 003F003F
    lw      t8, 0x00C0($sp)
    addiu   t9, t8, 0x0008             # t9 = 00000010
    sw      t9, 0x00C0($sp)
    sw      $zero, 0x0004(t8)          # 0000000C
    sw      t1, 0x0000(t8)             # 00000008
    lw      t5, 0x00C0($sp)
    lui     t7, 0x07C1                 # t7 = 07C10000
    ori     t7, t7, 0x07C1             # t7 = 07C107C1
    addiu   t6, t5, 0x0008             # t6 = 00080008
    sw      t6, 0x00C0($sp)
    sw      t7, 0x0004(t5)             # 00080004
    sw      t4, 0x0000(t5)             # 00080000
    lw      t8, 0x00C0($sp)
    or      t5, a2, $at                # t5 = F6280002
    lui     $at, 0x0018                # $at = 00180000
    addiu   t9, t8, 0x0008             # t9 = 00000010
    sw      t9, 0x00C0($sp)
    or      t6, a1, $at                # t6 = 00180000
    sw      t6, 0x0004(t8)             # 0000000C
    sw      t5, 0x0000(t8)             # 00000008
    lw      t7, 0x00C0($sp)
    lui     $at, 0xF638                # $at = F6380000
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   t8, t7, 0x0008             # t8 = 07C107C9
    sw      t8, 0x00C0($sp)
    sw      $zero, 0x0004(t7)          # 07C107C5
    sw      t1, 0x0000(t7)             # 07C107C1
    lw      t9, 0x00C0($sp)
    addiu   t5, t9, 0x0008             # t5 = 00000018
    sw      t5, 0x00C0($sp)
    sw      $zero, 0x0004(t9)          # 00000014
    sw      t1, 0x0000(t9)             # 00000010
    lw      t6, 0x00C0($sp)
    lui     t8, 0xF801                 # t8 = F8010000
    ori     t8, t8, 0xF801             # t8 = F801F801
    addiu   t7, t6, 0x0008             # t7 = 00180008
    sw      t7, 0x00C0($sp)
    sw      t8, 0x0004(t6)             # 00180004
    sw      t4, 0x0000(t6)             # 00180000
    lw      t9, 0x00C0($sp)
    or      t6, a2, $at                # t6 = F6380002
    lui     $at, 0x0028                # $at = 00280000
    addiu   t5, t9, 0x0008             # t5 = 00000018
    sw      t5, 0x00C0($sp)
    or      t7, a1, $at                # t7 = 00280000
    sw      t7, 0x0004(t9)             # 00000014
    sw      t6, 0x0000(t9)             # 00000010
    lw      t8, 0x00C0($sp)
    lui     $at, 0xF648                # $at = F6480000
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    addiu   t9, t8, 0x0008             # t9 = F801F809
    sw      t9, 0x00C0($sp)
    sw      $zero, 0x0004(t8)          # F801F805
    sw      t1, 0x0000(t8)             # F801F801
    lw      t5, 0x00C0($sp)
    addiu   t6, t5, 0x0008             # t6 = 00000020
    sw      t6, 0x00C0($sp)
    sw      $zero, 0x0004(t5)          # 0000001C
    sw      t1, 0x0000(t5)             # 00000018
    lw      t7, 0x00C0($sp)
    lui     t9, 0xF83F                 # t9 = F83F0000
    ori     t9, t9, 0xF83F             # t9 = F83FF83F
    addiu   t8, t7, 0x0008             # t8 = 00280008
    sw      t8, 0x00C0($sp)
    sw      t9, 0x0004(t7)             # 00280004
    sw      t4, 0x0000(t7)             # 00280000
    lw      t5, 0x00C0($sp)
    or      t7, a2, $at                # t7 = F6480002
    lui     $at, 0x0038                # $at = 00380000
    addiu   t6, t5, 0x0008             # t6 = 00000020
    sw      t6, 0x00C0($sp)
    or      t8, a1, $at                # t8 = 00380000
    sw      t8, 0x0004(t5)             # 0000001C
    sw      t7, 0x0000(t5)             # 00000018
    lw      t9, 0x00C0($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0xE530             # t6 = 800FE530
    addiu   t5, t9, 0x0008             # t5 = F83FF847
    sw      t5, 0x00C0($sp)
    sw      $zero, 0x0004(t9)          # F83FF843
    sw      t1, 0x0000(t9)             # F83FF83F
    sw      t6, 0x0000(s0)             # 80120FC8
    lui     t0, 0xF600                 # t0 = F6000000
lbl_800A3C10:
    lw      t7, 0x00C0($sp)
    addiu   t8, t7, 0x0008             # t8 = F648000A
    sw      t8, 0x00C0($sp)
    sw      $zero, 0x0004(t7)          # F6480006
    sw      t1, 0x0000(t7)             # F6480002
    lw      t9, 0x00C0($sp)
    addiu   t5, t9, 0x0008             # t5 = F83FF847
    sw      t5, 0x00C0($sp)
    sw      t4, 0x0000(t9)             # F83FF83F
    lw      t6, 0x0000(s0)             # 80120FC8
    lhu     a1, 0x0006(t6)             # 800FE536
    sll     t7, a1, 16
    or      t8, t7, a1                 # t8 = F6480002
    sw      t8, 0x0004(t9)             # F83FF843
    lw      a2, 0x00C0($sp)
    lw      v0, 0x0000(s0)             # 80120FC8
    addiu   t5, a2, 0x0008             # t5 = 0000000A
    sw      t5, 0x00C0($sp)
    lbu     t7, 0x0004(v0)             # 00000004
    lbu     t5, 0x0005(v0)             # 00000005
    sll     t8, t7, 14
    addu    t6, s2, t5
    addiu   t7, t6, 0x0001             # t7 = 800FE531
    or      t9, t8, t0                 # t9 = F6480002
    andi    t8, t7, 0x03FF             # t8 = 00000131
    sll     t5, t8,  2
    or      t6, t9, t5                 # t6 = F648000A
    sw      t6, 0x0000(a2)             # 00000002
    lw      t7, 0x0000(s0)             # 80120FC8
    lbu     t8, 0x0005(t7)             # 800FE536
    addu    t9, s2, t8
    andi    t5, t9, 0x03FF             # t5 = 00000002
    sll     t6, t5,  2
    or      t7, t2, t6                 # t7 = F648000A
    sw      t7, 0x0004(a2)             # 00000006
    lw      t8, 0x00C0($sp)
    addiu   t9, t8, 0x0008             # t9 = 00000139
    sw      t9, 0x00C0($sp)
    sw      $zero, 0x0004(t8)          # 00000135
    sw      t1, 0x0000(t8)             # 00000131
    lw      t7, 0x00C0($sp)
    lw      t5, 0x0000(s0)             # 80120FC8
    addiu   s1, s1, 0x0002             # s1 = 00000002
    addiu   t8, t7, 0x0008             # t8 = F6480012
    addiu   t6, t5, 0x0008             # t6 = 0000000A
    sw      t8, 0x00C0($sp)
    sw      t6, 0x0000(s0)             # 80120FC8
    sw      $zero, 0x0004(t7)          # F648000E
    sw      t1, 0x0000(t7)             # F648000A
    lw      t9, 0x00C0($sp)
    addiu   t5, t9, 0x0008             # t5 = 00000141
    sw      t5, 0x00C0($sp)
    sw      t4, 0x0000(t9)             # 00000139
    lw      t6, 0x0000(s0)             # 80120FC8
    lhu     a1, 0x0006(t6)             # 00000010
    sll     t7, a1, 16
    or      t8, t7, a1                 # t8 = F648000A
    sw      t8, 0x0004(t9)             # 0000013D
    lw      a2, 0x00C0($sp)
    lw      v0, 0x0000(s0)             # 80120FC8
    addiu   t5, a2, 0x0008             # t5 = 0000000A
    sw      t5, 0x00C0($sp)
    lbu     t7, 0x0004(v0)             # 00000004
    lbu     t5, 0x0005(v0)             # 00000005
    sll     t8, t7, 14
    addu    t6, s2, t5
    addiu   t7, t6, 0x0001             # t7 = 0000000B
    or      t9, t8, t0                 # t9 = F648000A
    andi    t8, t7, 0x03FF             # t8 = 0000000B
    sll     t5, t8,  2
    or      t6, t9, t5                 # t6 = F648000A
    sw      t6, 0x0000(a2)             # 00000002
    lw      t7, 0x0000(s0)             # 80120FC8
    lbu     t8, 0x0005(t7)             # 00000010
    addu    t9, s2, t8
    andi    t5, t9, 0x03FF             # t5 = 0000000A
    sll     t6, t5,  2
    or      t7, t2, t6                 # t7 = F648000A
    sw      t7, 0x0004(a2)             # 00000006
    lw      t8, 0x00C0($sp)
    addiu   t9, t8, 0x0008             # t9 = 00000013
    sw      t9, 0x00C0($sp)
    sw      $zero, 0x0004(t8)          # 0000000F
    sw      t1, 0x0000(t8)             # 0000000B
    lw      t5, 0x0000(s0)             # 80120FC8
    addiu   t6, t5, 0x0008             # t6 = 00000012
    bne     s1, t3, lbl_800A3C10
    sw      t6, 0x0000(s0)             # 80120FC8
    lw      t7, 0x00C0($sp)
    addiu   t8, t7, 0x0008             # t8 = F6480012
    sw      t8, 0x00C0($sp)
    sw      $zero, 0x0004(t7)          # F648000E
    sw      t1, 0x0000(t7)             # F648000A
    lw      t9, 0x00C0($sp)
    lw      t5, 0x021C($sp)
    sw      t9, 0x02B0(t5)             # 000002BA
lbl_800A3D90:
    lw      $ra, 0x0034($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0218           # $sp = 00000000


func_800A3DB4:
    sw      a3, 0x000C($sp)
    andi    a3, a3, 0xFFFF             # a3 = 00000000
    sw      a1, 0x0000(a0)             # 00000000
    sw      a2, 0x0004(a0)             # 00000004
    sh      a3, 0x0008(a0)             # 00000008
    lhu     t6, 0x0012($sp)
    sh      t6, 0x000A(a0)             # 0000000A
    lw      t7, 0x0014($sp)
    sw      t7, 0x000C(a0)             # 0000000C
    lw      t8, 0x0018($sp)
    sw      t8, 0x0010(a0)             # 00000010
    lw      t9, 0x001C($sp)
    sw      t9, 0x0014(a0)             # 00000014
    lw      t0, 0x0020($sp)
    sw      t0, 0x0018(a0)             # 00000018
    jr      $ra
    nop


func_800A3DF8:
    addiu   $sp, $sp, 0xFE68           # $sp = FFFFFE68
    sw      $ra, 0x0014($sp)
    sw      a1, 0x019C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0000(a3)             # 00000000
    addiu   a0, $sp, 0x0068            # a0 = FFFFFED0
    lw      a1, 0x019C($sp)
    beql    t6, $zero, lbl_800A4040
    lw      $ra, 0x0014($sp)
    jal     func_80091858
    sw      a3, 0x0198($sp)
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sw      t7, 0x0188($sp)
    addiu   t8, $zero, 0x00F0          # t8 = 000000F0
    addiu   t9, $zero, 0x0140          # t9 = 00000140
    sw      t9, 0x0058($sp)
    sw      t8, 0x0050($sp)
    sw      $zero, 0x004C($sp)
    sw      $zero, 0x0054($sp)
    addiu   a0, $sp, 0x0068            # a0 = FFFFFED0
    jal     func_80091AE0
    addiu   a1, $sp, 0x004C            # a1 = FFFFFEB4
    lw      t6, 0x019C($sp)
    addiu   a0, $sp, 0x0068            # a0 = FFFFFED0
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    lw      t7, 0x02B0(t6)             # 000002B0
    addiu   a2, $sp, 0x0064            # a2 = FFFFFECC
    jal     func_80092A88
    sw      t7, 0x0064($sp)
    lui     a2, 0xE700                 # a2 = E7000000
    lw      a3, 0x0198($sp)
    lui     t4, 0xF700                 # t4 = F7000000
    lw      v0, 0x0064($sp)
    lui     t8, 0xEF30                 # t8 = EF300000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x0064($sp)
    sw      $zero, 0x0004(v0)          # 00000004
    sw      a2, 0x0000(v0)             # 00000000
    lw      v1, 0x0064($sp)
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x0064($sp)
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x000C(a3)             # 0000000C
    lw      t9, 0x0010(a3)             # 00000010
    lw      t7, 0x0004(a3)             # 00000004
    subu    t6, t9, a0
    multu   t6, t7
    lw      t9, 0x0000(a3)             # 00000000
    lw      t7, 0x0064($sp)
    mflo    t8
    nop
    nop
    div     $zero, t8, t9
    mflo    t6
    addu    t3, t6, a0
    bne     t9, $zero, lbl_800A3EE4
    nop
    break   # 0x01C00
lbl_800A3EE4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t9, $at, lbl_800A3EFC
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_800A3EFC
    nop
    break   # 0x01800
lbl_800A3EFC:
    addiu   t8, t7, 0x0008             # t8 = 00000010
    sw      t8, 0x0064($sp)
    sw      $zero, 0x0004(t7)          # 0000000C
    sw      a2, 0x0000(t7)             # 00000008
    lw      t9, 0x0064($sp)
    lui     t5, 0xF600                 # t5 = F6000000
    addiu   t6, t9, 0x0008             # t6 = 00000010
    sw      t6, 0x0064($sp)
    sw      t4, 0x0000(t9)             # 00000008
    lhu     v0, 0x0008(a3)             # 00000008
    sll     t7, v0, 16
    or      t8, t7, v0                 # t8 = 00000008
    sw      t8, 0x0004(t9)             # 0000000C
    lw      v1, 0x0064($sp)
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x0064($sp)
    lw      t7, 0x0010(a3)             # 00000010
    andi    t1, t3, 0x03FF             # t1 = 00000000
    sll     t1, t1, 14
    andi    t8, t7, 0x03FF             # t8 = 00000008
    lw      t7, 0x0018(a3)             # 00000018
    sll     t9, t8, 14
    or      t6, t9, t5                 # t6 = F6000008
    andi    t8, t7, 0x03FF             # t8 = 00000008
    sll     t9, t8,  2
    or      t7, t6, t9                 # t7 = F6000008
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0014(a3)             # 00000014
    andi    t6, t8, 0x03FF             # t6 = 00000008
    sll     t9, t6,  2
    or      t7, t1, t9                 # t7 = 00000008
    sw      t7, 0x0004(v1)             # 00000004
    lw      t8, 0x0064($sp)
    addiu   t6, t8, 0x0008             # t6 = 00000010
    sw      t6, 0x0064($sp)
    sw      $zero, 0x0004(t8)          # 0000000C
    sw      a2, 0x0000(t8)             # 00000008
    lw      t9, 0x0064($sp)
    addiu   t7, t9, 0x0008             # t7 = 00000010
    sw      t7, 0x0064($sp)
    sw      $zero, 0x0004(t9)          # 0000000C
    sw      a2, 0x0000(t9)             # 00000008
    lw      t8, 0x0064($sp)
    addiu   t6, t8, 0x0008             # t6 = 00000010
    sw      t6, 0x0064($sp)
    sw      t4, 0x0000(t8)             # 00000008
    lhu     v0, 0x000A(a3)             # 0000000A
    sll     t9, v0, 16
    or      t7, t9, v0                 # t7 = 00000008
    sw      t7, 0x0004(t8)             # 0000000C
    lw      v1, 0x0064($sp)
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x0064($sp)
    lw      t7, 0x0018(a3)             # 00000018
    or      t9, t1, t5                 # t9 = F6000000
    andi    t8, t7, 0x03FF             # t8 = 00000008
    sll     t6, t8,  2
    or      t7, t9, t6                 # t7 = F6000008
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x000C(a3)             # 0000000C
    lw      t7, 0x0014(a3)             # 00000014
    andi    t9, t8, 0x03FF             # t9 = 00000008
    sll     t6, t9, 14
    andi    t8, t7, 0x03FF             # t8 = 00000008
    sll     t9, t8,  2
    or      t7, t6, t9                 # t7 = 00000008
    sw      t7, 0x0004(v1)             # 00000004
    lw      t8, 0x0064($sp)
    addiu   t6, t8, 0x0008             # t6 = 00000010
    sw      t6, 0x0064($sp)
    sw      $zero, 0x0004(t8)          # 0000000C
    sw      a2, 0x0000(t8)             # 00000008
    lw      t9, 0x0064($sp)
    addiu   t7, t9, 0x0008             # t7 = 00000010
    sw      t7, 0x0064($sp)
    sw      $zero, 0x0004(t9)          # 0000000C
    sw      a2, 0x0000(t9)             # 00000008
    lw      t8, 0x0064($sp)
    lw      t6, 0x019C($sp)
    sw      t8, 0x02B0(t6)             # 000002C0
    lw      $ra, 0x0014($sp)
lbl_800A4040:
    addiu   $sp, $sp, 0x0198           # $sp = 00000000
    jr      $ra
    nop


func_800A404C:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s2, 0x0038($sp)
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sw      a0, 0x0098($sp)
    sw      a2, 0x00A0($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    addiu   s0, $zero, 0x00D4          # s0 = 000000D4
    lh      t7, 0x00D4(t6)             # 801200D4
    slti    $at, t7, 0x0003
    bne     $at, $zero, lbl_800A40FC
    nop
    jal     func_80066DC0
    nop
    beq     v0, $zero, lbl_800A40FC
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFC4
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFC0
    jal     func_80066D10
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFBC
    lw      a2, 0x0054($sp)
    lw      t8, 0x0058($sp)
    addiu   s1, $sp, 0x006C            # s1 = FFFFFFD4
    ori     t9, $zero, 0xFFFF          # t9 = 0000FFFF
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    addiu   t1, $zero, 0x0122          # t1 = 00000122
    addiu   t2, $zero, 0x00D4          # t2 = 000000D4
    addiu   t3, $zero, 0x00D5          # t3 = 000000D5
    sw      t3, 0x0020($sp)
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    or      a0, s1, $zero              # a0 = FFFFFFD4
    addiu   a3, $zero, 0x003F          # a3 = 0000003F
    jal     func_800A3DB4
    addu    a1, t8, a2
    or      a0, s1, $zero              # a0 = FFFFFFD4
    jal     func_800A3DF8
    or      a1, s2, $zero              # a1 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s0, s0, 0x00D6             # s0 = 000000D6
lbl_800A40FC:
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4600(t4)            # 8011BA00
    addiu   s1, $sp, 0x006C            # s1 = FFFFFFD4
    lh      t5, 0x00D4(t4)             # 801200D4
    slti    $at, t5, 0x0002
    bne     $at, $zero, lbl_800A417C
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFB8
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFB4
    jal     func_800CDBB8
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFB0
    lw      t6, 0x00A0($sp)
    lw      t7, 0x004C($sp)
    lw      t8, 0x0048($sp)
    lw      v0, 0x0074(t6)             # 00000074
    ori     t1, $zero, 0xFC21          # t1 = 0000FC21
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    addiu   t3, $zero, 0x0122          # t3 = 00000122
    addu    t9, t7, t8
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    sw      s0, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      a0, s1, $zero              # a0 = FFFFFFD4
    addiu   a3, $zero, 0x003F          # a3 = 0000003F
    subu    a1, t9, v0
    jal     func_800A3DB4
    subu    a2, t8, v0
    or      a0, s1, $zero              # a0 = FFFFFFD4
    jal     func_800A3DF8
    or      a1, s2, $zero              # a1 = 00000000
    addiu   s0, s0, 0x0001             # s0 = 000000D7
lbl_800A417C:
    lw      a0, 0x00A0($sp)
    addiu   a0, a0, 0x0074             # a0 = 00000074
    jal     func_800A01F4
    sw      a0, 0x0040($sp)
    lw      t4, 0x0040($sp)
    addiu   t5, $zero, 0x07C1          # t5 = 000007C1
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    lw      a1, 0x0000(t4)             # 00000000
    addiu   t7, $zero, 0x0122          # t7 = 00000122
    sw      t7, 0x0018($sp)
    sw      s0, 0x0020($sp)
    sw      s0, 0x001C($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    or      a0, s1, $zero              # a0 = FFFFFFD4
    addiu   a3, $zero, 0x003F          # a3 = 0000003F
    jal     func_800A3DB4
    subu    a2, a1, v0
    or      a0, s1, $zero              # a0 = FFFFFFD4
    jal     func_800A3DF8
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a0, s2, 0x02B8             # a0 = 000002B8
    addiu   s0, s0, 0x0001             # s0 = 000000D8
    jal     func_8009FF40
    sw      a0, 0x0040($sp)
    lw      t8, 0x0040($sp)
    ori     t9, $zero, 0xF83F          # t9 = 0000F83F
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    lw      a1, 0x0000(t8)             # 00000000
    addiu   t1, $zero, 0x0122          # t1 = 00000122
    sw      t1, 0x0018($sp)
    sw      s0, 0x0020($sp)
    sw      s0, 0x001C($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    or      a0, s1, $zero              # a0 = FFFFFFD4
    addiu   a3, $zero, 0x003F          # a3 = 0000003F
    jal     func_800A3DB4
    subu    a2, a1, v0
    or      a0, s1, $zero              # a0 = FFFFFFD4
    jal     func_800A3DF8
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a0, s2, 0x02C8             # a0 = 000002C8
    addiu   s0, s0, 0x0001             # s0 = 000000D9
    jal     func_8009FF40
    sw      a0, 0x0040($sp)
    lw      t2, 0x0040($sp)
    ori     t3, $zero, 0xFFC1          # t3 = 0000FFC1
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    lw      a1, 0x0000(t2)             # 00000000
    addiu   t5, $zero, 0x0122          # t5 = 00000122
    sw      t5, 0x0018($sp)
    sw      s0, 0x0020($sp)
    sw      s0, 0x001C($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    or      a0, s1, $zero              # a0 = FFFFFFD4
    addiu   a3, $zero, 0x003F          # a3 = 0000003F
    jal     func_800A3DB4
    subu    a2, a1, v0
    or      a0, s1, $zero              # a0 = FFFFFFD4
    jal     func_800A3DF8
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a0, s2, 0x02A8             # a0 = 000002A8
    addiu   s0, s0, 0x0001             # s0 = 000000DA
    jal     func_8009FF40
    sw      a0, 0x0040($sp)
    lw      t6, 0x0040($sp)
    ori     t7, $zero, 0xF801          # t7 = 0000F801
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    lw      a1, 0x0000(t6)             # 00000000
    addiu   t9, $zero, 0x0122          # t9 = 00000122
    sw      t9, 0x0018($sp)
    sw      s0, 0x0020($sp)
    sw      s0, 0x001C($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    or      a0, s1, $zero              # a0 = FFFFFFD4
    addiu   a3, $zero, 0x003F          # a3 = 0000003F
    jal     func_800A3DB4
    subu    a2, a1, v0
    or      a0, s1, $zero              # a0 = FFFFFFD4
    jal     func_800A3DF8
    or      a1, s2, $zero              # a1 = 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp = 00000000
    nop
    nop
    nop
