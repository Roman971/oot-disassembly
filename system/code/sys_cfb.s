# "System Color Frame Buffer" part of the code file
#
# The purpose of this file's content is unclear but it supposedly handles system frame buffers.
#
# Starts at VRAM: 800A42F0 / VROM: B1A250
#

.section .text
func_800A42F0:
# Initializes Frame Buffers
# ../sys_cfb.c related.
# A0 = Is Disk Drive Detected? 0 = no, 1 = yes
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     v0, 0x8000                 # v0 = 80000000
    lw      v0, 0x0318(v0)             # 80000318
    lui     $at, 0x0080                # $at = 00800000
    sltu    $at, v0, $at
    bne     $at, $zero, lbl_800A433C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a0, $at, lbl_800A432C
    lui     v1, 0x8012                 # v1 = 80120000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x0FD8             # v1 = 80120FD8
    lui     t6, 0x8060                 # t6 = 80600000
    beq     $zero, $zero, lbl_800A4374
    sw      t6, 0x0000(v1)             # 80120FD8
lbl_800A432C:
    addiu   v1, v1, 0x0FD8             # v1 = 80121FB0
    lui     t7, 0x8040                 # t7 = 80400000
    beq     $zero, $zero, lbl_800A4374
    sw      t7, 0x0000(v1)             # 80121FB0
lbl_800A433C:
    lui     $at, 0x0040                # $at = 00400000
    sltu    $at, v0, $at
    bne     $at, $zero, lbl_800A435C
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x0FD8             # v1 = 80120FD8
    lui     t8, 0x8040                 # t8 = 80400000
    beq     $zero, $zero, lbl_800A4374
    sw      t8, 0x0000(v1)             # 80120FD8
lbl_800A435C:
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x8E30             # a0 = 80108E30
    jal     func_80001B38
    addiu   a1, $zero, 0x0131          # a1 = 00000131
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x0FD8             # v1 = 80120FD8
lbl_800A4374:
    lw      t9, 0x0000(v1)             # 80120FD8
    addiu   $at, $zero, 0xFFC0         # $at = FFFFFFC0
    and     t0, t9, $at
    lui     $at, 0xFFFB                # $at = FFFB0000
    ori     $at, $at, 0x5000           # $at = FFFB5000
    addu    t1, t0, $at
    sw      t0, 0x0000(v1)             # 80120FD8
    lui     $at, 0x8012                # $at = 80120000
    sw      t1, 0x0FD0($at)            # 80120FD0
    lui     $at, 0xFFFD                # $at = FFFD0000
    ori     $at, $at, 0xA800           # $at = FFFDA800
    addu    t2, t0, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t2, 0x0FD4($at)            # 80120FD4
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800A43B8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x0FD0             # v0 = 80120FD0
    sw      $zero, 0x0000(v0)          # 80120FD0
    sw      $zero, 0x0004(v0)          # 80120FD4
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, 0x0FD8($at)         # 80120FD8
    jr      $ra
    nop


func_800A43D8:
# Returns Framebuffer address
# A0 = Framebuffer Index
# V0 = Framebuffer address
    slti    $at, a0, 0x0002
    beq     $at, $zero, lbl_800A43F8
    or      v0, $zero, $zero           # v0 = 00000000
    sll     t6, a0,  2
    lui     v0, 0x8012                 # v0 = 80120000
    addu    v0, v0, t6
    jr      $ra
    lw      v0, 0x0FD0(v0)             # 80120FD0
lbl_800A43F8:
    jr      $ra
    nop


func_800A4400:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x0FD8(v0)             # 80120FD8
    jr      $ra
    nop


func_800A4410:
    trunc.w.s $f4, $f12
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mfc1    v1, $f4
    nop
    slti    $at, v1, 0x0002
    bne     $at, $zero, lbl_800A4504
    or      v0, v1, $zero              # v0 = 00000000
    addiu   a1, v1, 0xFFFF             # a1 = FFFFFFFF
    andi    a1, a1, 0x0003             # a1 = 00000003
    subu    a1, $zero, a1
    beq     a1, $zero, lbl_800A4464
    addu    a0, a1, v1
    mtc1    v0, $f6                    # $f6 = 0.00
lbl_800A4448:
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    cvt.s.w $f8, $f6
    mul.s   $f2, $f2, $f8
    bnel    a0, v0, lbl_800A4448
    mtc1    v0, $f6                    # $f6 = NaN
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beq     v0, v1, lbl_800A4504
lbl_800A4464:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    mtc1    v0, $f10                   # $f10 = NaN
    addiu   v1, v1, 0x0004             # v1 = 00000005
    beq     v0, v1, lbl_800A44C0
    cvt.s.w $f18, $f10
lbl_800A4478:
    mul.s   $f2, $f2, $f18
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFE
    mtc1    t7, $f16                   # $f16 = NaN
    addiu   t8, v0, 0xFFFE             # t8 = FFFFFFFD
    mtc1    t8, $f14                   # $f14 = NaN
    addiu   t9, v0, 0xFFFD             # t9 = FFFFFFFC
    cvt.s.w $f16, $f16
    mtc1    t9, $f12                   # $f12 = NaN
    addiu   v0, v0, 0xFFFC             # v0 = FFFFFFFB
    mtc1    v0, $f10                   # $f10 = NaN
    cvt.s.w $f14, $f14
    mul.s   $f2, $f2, $f16
    cvt.s.w $f12, $f12
    mul.s   $f2, $f2, $f14
    cvt.s.w $f18, $f10
    mul.s   $f2, $f2, $f12
    bne     v0, v1, lbl_800A4478
    nop
lbl_800A44C0:
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFA
    mtc1    t7, $f16                   # $f16 = NaN
    mul.s   $f2, $f2, $f18
    addiu   t8, v0, 0xFFFE             # t8 = FFFFFFF9
    mtc1    t8, $f14                   # $f14 = NaN
    addiu   t9, v0, 0xFFFD             # t9 = FFFFFFF8
    mtc1    t9, $f12                   # $f12 = NaN
    addiu   v1, v1, 0xFFFC             # v1 = 00000001
    cvt.s.w $f16, $f16
    addiu   v0, v0, 0xFFFC             # v0 = FFFFFFF7
    cvt.s.w $f14, $f14
    mul.s   $f2, $f2, $f16
    cvt.s.w $f12, $f12
    mul.s   $f2, $f2, $f14
    nop
    mul.s   $f2, $f2, $f12
    nop
lbl_800A4504:
    mov.s   $f0, $f2
    jr      $ra
    nop


func_800A4510:
    sltiu   $at, a0, 0x000D
    bne     $at, $zero, lbl_800A45BC
    sll     t1, a0,  2
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f2, -0x1A70($at)          # 800FE590
    slti    $at, a0, 0x000D
    bne     $at, $zero, lbl_800A45C8
    addiu   v0, $zero, 0x000D          # v0 = 0000000D
    addiu   a1, a0, 0xFFF4             # a1 = FFFFFFF4
    andi    a1, a1, 0x0003             # a1 = 00000000
    beq     a1, $zero, lbl_800A4564
    addiu   v1, a1, 0x000D             # v1 = 0000000D
    mtc1    v0, $f4                    # $f4 = 0.00
lbl_800A4544:
    addiu   v0, v0, 0x0001             # v0 = 0000000E
    cvt.s.w $f6, $f4
    mul.s   $f2, $f2, $f6
    bnel    v1, v0, lbl_800A4544
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   t6, a0, 0x0001             # t6 = 00000001
    beql    t6, v0, lbl_800A45CC
    mov.s   $f0, $f2
lbl_800A4564:
    mtc1    v0, $f8                    # $f8 = 0.00
    addiu   t7, v0, 0x0001             # t7 = 0000000F
    mtc1    t7, $f16                   # $f16 = 0.00
    cvt.s.w $f10, $f8
    addiu   t8, v0, 0x0002             # t8 = 00000010
    mtc1    t8, $f4                    # $f4 = 0.00
    addiu   t9, v0, 0x0003             # t9 = 00000011
    mtc1    t9, $f8                    # $f8 = 0.00
    cvt.s.w $f18, $f16
    mul.s   $f2, $f2, $f10
    addiu   v0, v0, 0x0004             # v0 = 00000012
    addiu   t0, a0, 0x0001             # t0 = 00000001
    cvt.s.w $f6, $f4
    mul.s   $f2, $f2, $f18
    cvt.s.w $f10, $f8
    mul.s   $f2, $f2, $f6
    nop
    mul.s   $f2, $f2, $f10
    bne     t0, v0, lbl_800A4564
    nop
    beq     $zero, $zero, lbl_800A45CC
    mov.s   $f0, $f2
lbl_800A45BC:
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t1
    lwc1    $f2, -0x1AA0($at)          # 800FE560
lbl_800A45C8:
    mov.s   $f0, $f2
lbl_800A45CC:
    jr      $ra
    nop


func_800A45D4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    blez    a1, lbl_800A45F0
    addiu   a1, a1, 0xFFFF             # a1 = FFFFFFFF
lbl_800A45E4:
    mul.s   $f2, $f2, $f12
    bgtzl   a1, lbl_800A45E4
    addiu   a1, a1, 0xFFFF             # a1 = FFFFFFFE
lbl_800A45F0:
    mov.s   $f0, $f2
    jr      $ra
    nop


func_800A45FC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x71C0($at)          # 80108E40
    mul.s   $f6, $f12, $f4
    trunc.w.s $f8, $f6
    mfc1    a0, $f8
    nop
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800CF630
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f18, -0x71BC($at)         # 80108E44
    cvt.s.w $f16, $f10
    lw      $ra, 0x0014($sp)
    mul.s   $f0, $f16, $f18
    nop
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800A4650:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x71B8($at)          # 80108E48
    mul.s   $f6, $f12, $f4
    trunc.w.s $f8, $f6
    mfc1    a0, $f8
    nop
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800D2FA0
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f18, -0x71B4($at)         # 80108E4C
    cvt.s.w $f16, $f10
    lw      $ra, 0x0014($sp)
    mul.s   $f0, $f16, $f18
    nop
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    nop
    nop
    nop
