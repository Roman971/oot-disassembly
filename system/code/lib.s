# "General Library" part of the code file
#
# Provides various functions commonly used in a lot of game and actor routines.
#
# Starts at VRAM: 80063630 / VROM: AD9590
#

.section .text
func_80063630:
# memset byte
# A0 = Address
# A1 = Size
# A2 = u8 value
    sw      a2, 0x0008($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    beq     a1, $zero, lbl_8006367C
    or      v0, $zero, $zero           # v0 = 00000000
    andi    a3, a1, 0x0003             # a3 = 00000000
    beq     a3, $zero, lbl_80063660
    or      v1, a3, $zero              # v1 = 00000000
lbl_8006364C:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sb      a2, 0x0000(a0)             # 00000000
    bne     v1, v0, lbl_8006364C
    addiu   a0, a0, 0x0001             # a0 = 00000001
    beq     v0, a1, lbl_8006367C
lbl_80063660:
    addiu   v0, v0, 0x0004             # v0 = 00000005
    sb      a2, 0x0000(a0)             # 00000001
    sb      a2, 0x0001(a0)             # 00000002
    sb      a2, 0x0002(a0)             # 00000003
    sb      a2, 0x0003(a0)             # 00000004
    bne     v0, a1, lbl_80063660
    addiu   a0, a0, 0x0004             # a0 = 00000005
lbl_8006367C:
    jr      $ra
    nop


func_80063684:
# fcoss?
# Math, Get cosine of short rotation angle
# A0 = s16 rotation
# F0 = cosine of A0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sll     a1, a0, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800D2FA0
    andi    a0, a1, 0xFFFF             # a0 = 00000000
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x7A60($at)           # 80107A60
    cvt.s.w $f6, $f4
    lw      $ra, 0x0014($sp)
    mul.s   $f0, $f6, $f8
    nop
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800636C4:
# fsins?
# Math, Get sine of short rotation angle
# A0 = s16 rotation
# F0 = sine of A0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sll     a1, a0, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800CF630
    andi    a0, a1, 0xFFFF             # a0 = 00000000
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x7A64($at)           # 80107A64
    cvt.s.w $f6, $f4
    lw      $ra, 0x0014($sp)
    mul.s   $f0, $f6, $f8
    nop
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80063704:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    beq     a2, $zero, lbl_800637B4
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lh      v0, 0x0000(a0)             # 00000000
    lui     $at, 0x3F00                # $at = 3F000000
    lh      t7, 0x0110(t6)             # 80120110
    mtc1    $at, $f8                   # $f8 = 0.50
    subu    t8, v0, a1
    mtc1    t7, $f4                    # $f4 = 0.00
    sll     t9, t8, 16
    sra     t0, t9, 16
    cvt.s.w $f6, $f4
    mul.s   $f0, $f6, $f8
    blezl   t0, lbl_80063768
    mtc1    a2, $f10                   # $f10 = 0.00
    subu    a2, $zero, a2
    sll     a2, a2, 16
    sra     a2, a2, 16
    mtc1    a2, $f10                   # $f10 = 0.00
lbl_80063768:
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    trunc.w.s $f4, $f18
    mfc1    t4, $f4
    nop
    addu    t5, v0, t4
    sh      t5, 0x0000(a0)             # 00000000
    lh      t6, 0x0000(a0)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    subu    t7, t6, a1
    sll     t8, t7, 16
    sra     t9, t8, 16
    multu   t9, a2
    mflo    t0
    bltzl   t0, lbl_800637CC
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    sh      a1, 0x0000(a0)             # 00000000
lbl_800637B4:
    lh      t1, 0x0000(a0)             # 00000000
    bnel    a1, t1, lbl_800637CC
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800637C8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800637CC:
    jr      $ra
    nop


func_800637D4:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    beql    a2, $zero, lbl_80063840
    lh      t0, 0x0000(a0)             # 00000000
    lh      v0, 0x0000(a0)             # 00000000
    slt     $at, a1, v0
    beql    $at, $zero, lbl_80063814
    addu    t6, v0, a2
    subu    a2, $zero, a2
    sll     a2, a2, 16
    sra     a2, a2, 16
    addu    t6, v0, a2
lbl_80063814:
    sh      t6, 0x0000(a0)             # 00000000
    lh      t7, 0x0000(a0)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    subu    t8, t7, a1
    multu   t8, a2
    mflo    t9
    bltzl   t9, lbl_80063854
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    sh      a1, 0x0000(a0)             # 00000000
lbl_8006383C:
    lh      t0, 0x0000(a0)             # 00000000
lbl_80063840:
    bnel    a1, t0, lbl_80063854
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80063850:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80063854:
    jr      $ra
    nop


func_8006385C:
# Performs some sort of physics related calculation (float approximation?)
# A0 = float* velocity y component
# A1 = float target? (value to reach?)
# A2 = float delta (increments or decrements the y velocity by this value, trying to reach the target float?)
# V0 = 1 if it target was reached?, else 0
    mtc1    a1, $f14                   # $f14 = 0.00
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    c.eq.s  $f12, $f4
    nop
    bc1tl   lbl_800638CC
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f0, 0x0000(a0)            # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    c.lt.s  $f14, $f0
    nop
    bc1fl   lbl_8006389C
    add.s   $f6, $f0, $f12
    neg.s   $f12, $f12
    add.s   $f6, $f0, $f12
lbl_8006389C:
    mtc1    $zero, $f18                # $f18 = 0.00
    swc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0000(a0)            # 00000000
    sub.s   $f10, $f8, $f14
    mul.s   $f16, $f10, $f12
    c.le.s  $f18, $f16
    nop
    bc1fl   lbl_800638E8
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    swc1    $f14, 0x0000(a0)           # 00000000
lbl_800638C8:
    lwc1    $f4, 0x0000(a0)            # 00000000
lbl_800638CC:
    c.eq.s  $f14, $f4
    nop
    bc1fl   lbl_800638E8
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800638E4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800638E8:
    jr      $ra
    nop


func_800638F0:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    lh      v0, 0x0000(a0)             # 00000000
    addu    t6, v0, a2
    sh      t6, 0x0000(a0)             # 00000000
    lh      t7, 0x0000(a0)             # 00000000
    subu    t1, v0, a1
    sll     t2, t1, 16
    subu    t8, t7, a1
    sll     t9, t8, 16
    sra     t0, t9, 16
    sra     t3, t2, 16
    multu   t0, t3
    or      v0, $zero, $zero           # v0 = 00000000
    mflo    t4
    bgtz    t4, lbl_80063950
    nop
    sh      a1, 0x0000(a0)             # 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80063950:
    jr      $ra
    nop


func_80063958:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    lh      v1, 0x0000(a0)             # 00000000
    addu    t6, v1, a2
    sh      t6, 0x0000(a0)             # 00000000
    lh      t7, 0x0000(a0)             # 00000000
    sll     v0, v1, 16
    sra     v0, v0, 16
    subu    t9, v0, a1
    subu    t8, t7, a1
    multu   t8, t9
    or      v0, $zero, $zero           # v0 = 00000000
    mflo    t0
    bgtz    t0, lbl_800639B0
    nop
    sh      a1, 0x0000(a0)             # 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800639B0:
    jr      $ra
    nop


func_800639B8:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    lh      v1, 0x0000(a0)             # 00000000
    ori     $at, $zero, 0x8000         # $at = 00008000
    lui     t7, 0xFFFF                 # t7 = FFFF0000
    subu    v0, a1, v1
    bgez    v0, lbl_800639F4
    slt     $at, v0, $at
    subu    a2, $zero, a2
    sll     a2, a2, 16
    sra     a2, a2, 16
lbl_800639F4:
    bne     $at, $zero, lbl_80063A14
    subu    t6, $zero, v0
    subu    a2, $zero, a2
    sll     a2, a2, 16
    ori     t7, t7, 0x0001             # t7 = FFFF0001
    sra     a2, a2, 16
    beq     $zero, $zero, lbl_80063A34
    subu    v0, t7, t6
lbl_80063A14:
    slti    $at, v0, 0x8001
    beq     $at, $zero, lbl_80063A34
    nop
    subu    a2, $zero, a2
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    sll     a2, a2, 16
    addu    v0, v0, $at
    sra     a2, a2, 16
lbl_80063A34:
    beq     a2, $zero, lbl_80063A60
    nop
    multu   a2, v0
    addu    t8, v1, a2
    sh      t8, 0x0000(a0)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mflo    t9
    bgtzl   t9, lbl_80063A74
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    sh      a1, 0x0000(a0)             # 00000000
lbl_80063A60:
    bnel    a1, v1, lbl_80063A74
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80063A70:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80063A74:
    jr      $ra
    nop


func_80063A7C:
    mtc1    a1, $f14                   # $f14 = 0.00
    mtc1    a2, $f12                   # $f12 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f2, 0x0000(a0)            # 00000000
    mtc1    $zero, $f6                 # $f6 = 0.00
    add.s   $f4, $f2, $f12
    sub.s   $f16, $f2, $f14
    swc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0000(a0)            # 00000000
    sub.s   $f10, $f8, $f14
    mul.s   $f18, $f10, $f16
    c.le.s  $f18, $f6
    nop
    bc1f    lbl_80063AC4
    nop
    swc1    $f14, 0x0000(a0)           # 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80063AC4:
    jr      $ra
    nop


func_80063ACC:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      a3, 0x000C($sp)
    lwc1    $f0, 0x0000(a0)            # 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f2, 0x000C($sp)
    c.le.s  $f0, $f12
    nop
    bc1f    lbl_80063AFC
    nop
    beq     $zero, $zero, lbl_80063AFC
    mov.s   $f2, $f14
lbl_80063AFC:
    c.eq.s  $f2, $f4
    nop
    bc1tl   lbl_80063B54
    c.eq.s  $f12, $f0
    c.lt.s  $f12, $f0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bc1fl   lbl_80063B24
    add.s   $f6, $f0, $f2
    neg.s   $f2, $f2
    add.s   $f6, $f0, $f2
lbl_80063B24:
    mtc1    $zero, $f18                # $f18 = 0.00
    swc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0000(a0)            # 00000000
    sub.s   $f10, $f8, $f12
    mul.s   $f16, $f10, $f2
    c.le.s  $f18, $f16
    nop
    bc1fl   lbl_80063B6C
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    swc1    $f12, 0x0000(a0)           # 00000000
lbl_80063B50:
    c.eq.s  $f12, $f0
lbl_80063B54:
    nop
    bc1fl   lbl_80063B6C
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80063B68:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80063B6C:
    jr      $ra
    nop


func_80063B74:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f14                  # $f14 = 60.00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lb      t6, 0x0014(a2)             # 00000014
    lb      t7, 0x0015(a2)             # 00000015
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f6                    # $f6 = 0.00
    cvt.s.w $f2, $f4
    cvt.s.w $f12, $f6
    mul.s   $f8, $f2, $f2
    nop
    mul.s   $f10, $f12, $f12
    add.s   $f0, $f8, $f10
    sqrt.s  $f0, $f0
    c.lt.s  $f14, $f0
    swc1    $f0, 0x0000(a0)            # 00000000
    bc1f    lbl_80063BCC
    nop
    beq     $zero, $zero, lbl_80063BD4
    swc1    $f14, 0x0000(a0)           # 00000000
lbl_80063BCC:
    lwc1    $f16, 0x0000(a0)           # 00000000
    swc1    $f16, 0x0000(a0)           # 00000000
lbl_80063BD4:
    jal     func_800AA4F8
    neg.s   $f14, $f2
    lw      t8, 0x001C($sp)
    sh      v0, 0x0000(t8)             # 00000000
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80063BF0:
# Generates random s16 number
# Generates random integer between 0 and range (exlusive), and adds Offset
# A0 = s16 Offset
# A1 = s16 Range
# V0 = s16 Result
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lh      t6, 0x001E($sp)
    lh      t1, 0x001A($sp)
    lw      $ra, 0x0014($sp)
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    t0, $f10
    nop
    addu    v0, t0, t1
    sll     v0, v0, 16
    sra     v0, v0, 16
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80063C44:
# Generates random s16 number
# Generates random integer between 0 and range (exlusive), integer multiplies that by Multiplier, adds Offset
# A0 = s16 Offset
# A1 = s16 Multiplier
# A2 = s16 Range
# V0 = result
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lh      t6, 0x0022($sp)
    lh      t1, 0x001E($sp)
    lh      t3, 0x001A($sp)
    mtc1    t6, $f4                    # $f4 = 0.00
    lw      $ra, 0x0014($sp)
    cvt.s.w $f6, $f4
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    t8, $f10
    nop
    sll     t9, t8, 16
    sra     t0, t9, 16
    multu   t0, t1
    mflo    t2
    addu    v0, t2, t3
    sll     v0, v0, 16
    sra     v0, v0, 16
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80063CAC:
# Vec3f_Copy
# Copy Float Coordinates
# A0 = out vector3_f32* result
# A1 = vector3_f32* source
    lwc1    $f4, 0x0000(a1)            # 00000000
    swc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0004(a1)            # 00000004
    swc1    $f6, 0x0004(a0)            # 00000004
    lwc1    $f8, 0x0008(a1)            # 00000008
    swc1    $f8, 0x0008(a0)            # 00000008
    jr      $ra
    nop


func_80063CCC:
# Vec3f_CopyVec3s
# Convert s16 Coordinates to Float Coordinates
# A0 = out vector3_f32* result
# A1 = vector3_s16* source
    lh      t6, 0x0000(a1)             # 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(a0)            # 00000000
    lh      t7, 0x0002(a1)             # 00000002
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(a0)           # 00000004
    lh      t8, 0x0004(a1)             # 00000004
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0008(a0)           # 00000008
    jr      $ra
    nop


func_80063D10:
# Vec3f_Add
# Adds XYZ Float Coordinates
# A0 = Coord A ptr
# A1 = Coord B ptr
# A2 = Result ptr (A + B)
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0000(a1)            # 00000000
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0000(a2)            # 00000000
    lwc1    $f16, 0x0004(a1)           # 00000004
    lwc1    $f10, 0x0004(a0)           # 00000004
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0004(a2)           # 00000004
    lwc1    $f6, 0x0008(a1)            # 00000008
    lwc1    $f4, 0x0008(a0)            # 00000008
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0008(a2)            # 00000008
    jr      $ra
    nop


func_80063D48:
# Vec3f_Sub
# Calculates XYZ Difference Between Float Coordinates
# A0 = Coord A ptr
# A1 = Coord B ptr
# A2 = Result ptr (A - B)
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0000(a1)            # 00000000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0000(a2)            # 00000000
    lwc1    $f16, 0x0004(a1)           # 00000004
    lwc1    $f10, 0x0004(a0)           # 00000004
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0004(a2)           # 00000004
    lwc1    $f6, 0x0008(a1)            # 00000008
    lwc1    $f4, 0x0008(a0)            # 00000008
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0008(a2)            # 00000008
    jr      $ra
    nop


func_80063D80:
# Calculates XYZ Difference Between s16 Coordinates
# A0 = Result Float Coord ptr (A - B)
# A1 = s16 coord A ptr
# A2 = s16 coord B ptr
    lh      t6, 0x0000(a1)             # 00000000
    lh      t7, 0x0000(a2)             # 00000000
    subu    t8, t6, t7
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(a0)            # 00000000
    lh      t0, 0x0002(a2)             # 00000002
    lh      t9, 0x0002(a1)             # 00000002
    subu    t1, t9, t0
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(a0)           # 00000004
    lh      t3, 0x0004(a2)             # 00000004
    lh      t2, 0x0004(a1)             # 00000004
    subu    t4, t2, t3
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0008(a0)           # 00000008
    jr      $ra
    nop


func_80063DDC:
# Multiply XYZ Float Coordinates By Scalar
# A0 = Coord ptr
# A1 = Scalar Value
    mtc1    a1, $f12                   # $f12 = 0.00
    nop
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0004(a0)            # 00000004
    lwc1    $f16, 0x0008(a0)           # 00000008
    mul.s   $f6, $f4, $f12
    nop
    mul.s   $f10, $f8, $f12
    nop
    mul.s   $f18, $f16, $f12
    swc1    $f6, 0x0000(a0)            # 00000000
    swc1    $f10, 0x0004(a0)           # 00000004
    swc1    $f18, 0x0008(a0)           # 00000008
    jr      $ra
    nop


func_80063E18:
# Calculates XYZ Distance Between Float Coordinates
# A0 = Coord A ptr
# A1 = Coord B ptr
# F0 = result
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f10, 0x0004(a0)           # 00000004
    sub.s   $f2, $f4, $f6
    lwc1    $f16, 0x0008(a1)           # 00000008
    lwc1    $f18, 0x0008(a0)           # 00000008
    sub.s   $f12, $f8, $f10
    mul.s   $f4, $f2, $f2
    sub.s   $f14, $f16, $f18
    mul.s   $f6, $f12, $f12
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f14, $f14
    add.s   $f0, $f8, $f10
    sqrt.s  $f0, $f0
    jr      $ra
    nop


func_80063E5C:
# Calculates XYZ Distance Between Float Coordinates
# A0 = Coord A ptr
# A1 = Coord B ptr
# A2 = Result B - A ptr
# F0 = Distance
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0000(a2)            # 00000000
    lwc1    $f16, 0x0004(a0)           # 00000004
    lwc1    $f10, 0x0004(a1)           # 00000004
    lwc1    $f2, 0x0000(a2)            # 00000000
    sub.s   $f18, $f10, $f16
    mul.s   $f10, $f2, $f2
    swc1    $f18, 0x0004(a2)           # 00000004
    lwc1    $f6, 0x0008(a0)            # 00000008
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f12, 0x0004(a2)           # 00000004
    sub.s   $f8, $f4, $f6
    mul.s   $f16, $f12, $f12
    swc1    $f8, 0x0008(a2)            # 00000008
    lwc1    $f14, 0x0008(a2)           # 00000008
    mul.s   $f4, $f14, $f14
    add.s   $f18, $f10, $f16
    add.s   $f0, $f18, $f4
    sqrt.s  $f0, $f0
    jr      $ra
    nop


func_80063EB8:
# Calculates XZ Distance Between Float Coordinates
# A0 = Coord A ptr
# A1 = Coord B ptr
# F0 = Result
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x0008(a0)           # 00000008
    sub.s   $f2, $f4, $f6
    sub.s   $f12, $f8, $f10
    mul.s   $f16, $f2, $f2
    nop
    mul.s   $f18, $f12, $f12
    add.s   $f0, $f16, $f18
    sqrt.s  $f0, $f0
    jr      $ra
    nop


func_80063EEC:
# Calculates Y Difference Between Float Coordinates
# A0 = Coord A ptr
# A1 = Coord B ptr
# F0 = B - A
    lwc1    $f4, 0x0004(a1)            # 00000004
    lwc1    $f6, 0x0004(a0)            # 00000004
    sub.s   $f0, $f4, $f6
    jr      $ra
    nop


func_80063F00:
# Calculates Arctan2 (X,Z) of two coordinates (A-B)
# Wrapper for 800AA4F8
# A0 = Coord A ptr
# A1 = Coord B ptr
# V0 = s16 rotation
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x0008(a0)           # 00000008
    sub.s   $f14, $f4, $f6
    jal     func_800AA4F8
    sub.s   $f12, $f8, $f10
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80063F34:
# Calculates Arctan2 (distance(XZ), Y) of two coordinates
# (A-B for Y coordinate)
# A0 = Coord A ptr
# A1 = Coord B ptr
# V0 = s16 rotation
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80063EB8
    lw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      t7, 0x001C($sp)
    mov.s   $f12, $f0
    lwc1    $f4, 0x0004(t6)            # 00000004
    lwc1    $f6, 0x0004(t7)            # 00000004
    jal     func_800AA4F8
    sub.s   $f14, $f4, $f6
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80063F7C:
# Instance Init, Initialize Variable Chain
# A0 = Actor Instance
# A1 = Variable Initializer List ptr
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s2, 0x0020($sp)
    lui     s2, 0x800F                 # s2 = 800F0000
    addiu   s2, s2, 0x19F0             # s2 = 800F19F0
    lw      t6, 0x0000(s0)             # 00000000
lbl_80063FA4:
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sll     t7, t6,  1
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t0, s2, t9
    lw      t9, 0x0000(t0)             # 00000000
    jalr    $ra, t9
    nop
    lw      v0, 0x0000(s0)             # 00000000
    addiu   s0, s0, 0x0004             # s0 = 00000004
    srl     v0, v0, 31
    bnel    v0, $zero, lbl_80063FA4
    lw      t6, 0x0000(s0)             # 00000004
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80063FF4:
# Instance Init 0, Set Byte
# A0 = Actor Instance
# A1 = Instance Initializer Data
    lhu     t7, 0x0000(a1)             # 00000000
    lh      t6, 0x0002(a1)             # 00000002
    andi    t8, t7, 0x07FF             # t8 = 00000000
    addu    t9, a0, t8
    sb      t6, 0x0000(t9)             # 00000000
    jr      $ra
    nop


func_80064010:
# Instance Init 1, Set Byte
# A0 = Actor Instance
# A1 = Instance Initializer Data
    lhu     t7, 0x0000(a1)             # 00000000
    lh      t6, 0x0002(a1)             # 00000002
    andi    t8, t7, 0x07FF             # t8 = 00000000
    addu    t9, a0, t8
    sb      t6, 0x0000(t9)             # 00000000
    jr      $ra
    nop


func_8006402C:
# Instance Init 2, Set Halfword
# A0 = Actor Instance
# A1 = Instance Initializer Data
    lhu     t7, 0x0000(a1)             # 00000000
    lh      t6, 0x0002(a1)             # 00000002
    andi    t8, t7, 0x07FF             # t8 = 00000000
    addu    t9, a0, t8
    sh      t6, 0x0000(t9)             # 00000000
    jr      $ra
    nop


func_80064048:
# Instance Init 3, Set Halfword
# A0 = Actor Instance
# A1 = Instance Initializer Data
    lhu     t7, 0x0000(a1)             # 00000000
    lh      t6, 0x0002(a1)             # 00000002
    andi    t8, t7, 0x07FF             # t8 = 00000000
    addu    t9, a0, t8
    sh      t6, 0x0000(t9)             # 00000000
    jr      $ra
    nop


func_80064064:
# Instance Init 4, Set Word
# A0 = Actor Instance
# A1 = Instance Initializer Data
    lhu     t7, 0x0000(a1)             # 00000000
    lh      t6, 0x0002(a1)             # 00000002
    andi    t8, t7, 0x07FF             # t8 = 00000000
    addu    t9, a0, t8
    sw      t6, 0x0000(t9)             # 00000000
    jr      $ra
    nop


func_80064080:
# Instance Init 5, Set Word
# A0 = Actor Instance
# A1 = Instance Initializer Data
    lhu     t7, 0x0000(a1)             # 00000000
    lh      t6, 0x0002(a1)             # 00000002
    andi    t8, t7, 0x07FF             # t8 = 00000000
    addu    t9, a0, t8
    sw      t6, 0x0000(t9)             # 00000000
    jr      $ra
    nop


func_8006409C:
# Instance Init 6, Set Float (int to float)
# A0 = Actor Instance
# A1 = Instance Initializer Data
    lh      t6, 0x0002(a1)             # 00000002
    lhu     t7, 0x0000(a1)             # 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    andi    t8, t7, 0x07FF             # t8 = 00000000
    addu    t9, a0, t8
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(t9)            # 00000000
    jr      $ra
    nop


func_800640C0:
# Instance Init 7, Set Float (int to float / 1000)
# A0 = Actor Instance
# A1 = Instance Initializer Data
    lh      t6, 0x0002(a1)             # 00000002
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    mtc1    t6, $f4                    # $f4 = 0.00
    lhu     t7, 0x0000(a1)             # 00000000
    cvt.s.w $f6, $f4
    andi    t8, t7, 0x07FF             # t8 = 00000000
    addu    t9, a0, t8
    div.s   $f10, $f6, $f8
    swc1    $f10, 0x0000(t9)           # 00000000
    jr      $ra
    nop


func_800640F0:
# Instance Init 8, Set vector3_f32 (int to float)
# A0 = Actor Instance
# A1 = Instance Initializer Data
    lh      t8, 0x0002(a1)             # 00000002
    lhu     t6, 0x0000(a1)             # 00000000
    mtc1    t8, $f4                    # $f4 = 0.00
    andi    t7, t6, 0x07FF             # t7 = 00000000
    addu    v0, t7, a0
    cvt.s.w $f0, $f4
    swc1    $f0, 0x0008(v0)            # 00000008
    swc1    $f0, 0x0004(v0)            # 00000004
    swc1    $f0, 0x0000(v0)            # 00000000
    jr      $ra
    nop


func_8006411C:
# Instance Init 9, Set vector3_f32 (int to float)/1000)
# A0 = Actor Instance
# A1 = Instance Initializer Data
    lh      t8, 0x0002(a1)             # 00000002
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    mtc1    t8, $f4                    # $f4 = 0.00
    lhu     t6, 0x0000(a1)             # 00000000
    cvt.s.w $f6, $f4
    andi    t7, t6, 0x07FF             # t7 = 00000000
    addu    v0, t7, a0
    div.s   $f0, $f6, $f8
    swc1    $f0, 0x0008(v0)            # 00000008
    swc1    $f0, 0x0004(v0)            # 00000004
    swc1    $f0, 0x0000(v0)            # 00000000
    jr      $ra
    nop


func_80064154:
# Instance Init A, Set vector3_s16
# A0 = Actor Instance
# A1 = Instance Initializer Data
    lhu     t6, 0x0000(a1)             # 00000000
    lh      v1, 0x0002(a1)             # 00000002
    andi    t7, t6, 0x07FF             # t7 = 00000000
    addu    v0, t7, a0
    sh      v1, 0x0004(v0)             # 00000004
    sh      v1, 0x0002(v0)             # 00000002
    sh      v1, 0x0000(v0)             # 00000000
    jr      $ra
    nop


func_80064178:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      a3, 0x000C($sp)
    lwc1    $f2, 0x0000(a0)            # 00000000
    c.eq.s  $f12, $f2
    nop
    bc1tl   lbl_80064274
    sub.s   $f0, $f12, $f2
    sub.s   $f4, $f12, $f2
    lwc1    $f16, 0x0010($sp)
    lwc1    $f6, 0x000C($sp)
    mul.s   $f0, $f4, $f14
    c.le.s  $f16, $f0
    nop
    bc1tl   lbl_800641D0
    c.lt.s  $f6, $f0
    neg.s   $f14, $f16
    c.le.s  $f0, $f14
    nop
    bc1fl   lbl_80064208
    c.lt.s  $f0, $f16
    c.lt.s  $f6, $f0
lbl_800641D0:
    lwc1    $f14, 0x000C($sp)
    bc1f    lbl_800641E0
    neg.s   $f14, $f14
    mov.s   $f0, $f6
lbl_800641E0:
    c.lt.s  $f0, $f14
    nop
    bc1fl   lbl_800641F8
    add.s   $f8, $f2, $f0
    mov.s   $f0, $f14
    add.s   $f8, $f2, $f0
lbl_800641F8:
    swc1    $f8, 0x0000(a0)            # 00000000
    beq     $zero, $zero, lbl_80064270
    lwc1    $f2, 0x0000(a0)            # 00000000
    c.lt.s  $f0, $f16
lbl_80064208:
    nop
    bc1fl   lbl_80064240
    c.lt.s  $f14, $f0
    add.s   $f10, $f2, $f16
    mov.s   $f0, $f16
    swc1    $f10, 0x0000(a0)           # 00000000
    lwc1    $f2, 0x0000(a0)            # 00000000
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_80064240
    c.lt.s  $f14, $f0
    swc1    $f12, 0x0000(a0)           # 00000000
    lwc1    $f2, 0x0000(a0)            # 00000000
    c.lt.s  $f14, $f0
lbl_80064240:
    nop
    bc1fl   lbl_80064274
    sub.s   $f0, $f12, $f2
    add.s   $f18, $f2, $f14
    swc1    $f18, 0x0000(a0)           # 00000000
    lwc1    $f2, 0x0000(a0)            # 00000000
    c.lt.s  $f2, $f12
    nop
    bc1fl   lbl_80064274
    sub.s   $f0, $f12, $f2
    swc1    $f12, 0x0000(a0)           # 00000000
    lwc1    $f2, 0x0000(a0)            # 00000000
lbl_80064270:
    sub.s   $f0, $f12, $f2
lbl_80064274:
    abs.s   $f0, $f0
    jr      $ra
    nop


func_80064280:
# Smoothly aproximates A0 to A1, commonly used for smooth movement
# A0 = float* value to change
# A1 = float target
# A2 = float ? (amount?)
# A3 = float ? (smaller than A2?)
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      a3, 0x000C($sp)
    lwc1    $f0, 0x0000(a0)            # 00000000
    c.eq.s  $f12, $f0
    nop
    bc1t    lbl_800642E8
    nop
    sub.s   $f4, $f12, $f0
    lwc1    $f6, 0x000C($sp)
    lwc1    $f12, 0x000C($sp)
    mul.s   $f2, $f4, $f14
    c.lt.s  $f6, $f2
    nop
    bc1fl   lbl_800642CC
    neg.s   $f12, $f12
    beq     $zero, $zero, lbl_800642E0
    mov.s   $f2, $f6
    neg.s   $f12, $f12
lbl_800642CC:
    c.lt.s  $f2, $f12
    nop
    bc1fl   lbl_800642E4
    add.s   $f8, $f0, $f2
    mov.s   $f2, $f12
lbl_800642E0:
    add.s   $f8, $f0, $f2
lbl_800642E4:
    swc1    $f8, 0x0000(a0)            # 00000000
lbl_800642E8:
    jr      $ra
    nop


func_800642F0:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    nop
    lwc1    $f2, 0x0000(a0)            # 00000000
    mul.s   $f0, $f2, $f12
    c.lt.s  $f14, $f0
    nop
    bc1fl   lbl_80064320
    neg.s   $f12, $f14
    beq     $zero, $zero, lbl_80064334
    mov.s   $f0, $f14
    neg.s   $f12, $f14
lbl_80064320:
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_80064338
    sub.s   $f4, $f2, $f0
    mov.s   $f0, $f12
lbl_80064334:
    sub.s   $f4, $f2, $f0
lbl_80064338:
    swc1    $f4, 0x0000(a0)            # 00000000
    jr      $ra
    nop


func_80064344:
    addiu   $sp, $sp, 0xFFF0           # $sp -= 0x10
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    sw      a2, 0x0018($sp)
    lwc1    $f0, 0x0000(a0)            # 00000000
    mov.s   $f16, $f2
    lui     $at, 0x4334                # $at = 43340000
    c.eq.s  $f12, $f0
    sub.s   $f18, $f12, $f0
    bc1tl   lbl_800644B0
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f4                   # $f4 = 360.00
    lui     $at, 0xC334                # $at = C3340000
    c.lt.s  $f4, $f18
    lwc1    $f4, 0x0018($sp)
    bc1fl   lbl_800643A8
    mtc1    $at, $f8                   # $f8 = -180.00
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f6                   # $f6 = 360.00
    nop
    sub.s   $f18, $f6, $f18
    beq     $zero, $zero, lbl_800643C8
    neg.s   $f18, $f18
    mtc1    $at, $f8                   # $f8 = 360.00
lbl_800643A8:
    lui     $at, 0x43B4                # $at = 43B40000
    c.lt.s  $f18, $f8
    nop
    bc1f    lbl_800643C8
    nop
    mtc1    $at, $f10                  # $f10 = 360.00
    nop
    add.s   $f18, $f10, $f18
lbl_800643C8:
    mul.s   $f6, $f18, $f4
    lwc1    $f10, 0x0020($sp)
    swc1    $f6, 0x0000($sp)
    lwc1    $f8, 0x0000($sp)
    lwc1    $f4, 0x0000($sp)
    c.le.s  $f10, $f8
    mov.s   $f16, $f8
    bc1tl   lbl_80064408
    c.lt.s  $f14, $f4
    neg.s   $f18, $f10
    lwc1    $f10, 0x0000($sp)
    c.le.s  $f8, $f18
    lwc1    $f8, 0x0020($sp)
    bc1fl   lbl_80064440
    c.lt.s  $f10, $f8
    c.lt.s  $f14, $f4
lbl_80064408:
    neg.s   $f12, $f14
    bc1fl   lbl_8006441C
    c.lt.s  $f16, $f12
    mov.s   $f16, $f14
    c.lt.s  $f16, $f12
lbl_8006441C:
    nop
    bc1fl   lbl_80064430
    add.s   $f6, $f0, $f16
    mov.s   $f16, $f12
    add.s   $f6, $f0, $f16
lbl_80064430:
    swc1    $f6, 0x0000(a0)            # 00000000
    beq     $zero, $zero, lbl_800644AC
    lwc1    $f0, 0x0000(a0)            # 00000000
    c.lt.s  $f10, $f8
lbl_80064440:
    nop
    bc1fl   lbl_80064478
    c.lt.s  $f18, $f16
    add.s   $f4, $f0, $f8
    mov.s   $f16, $f8
    swc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f0, 0x0000(a0)            # 00000000
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_80064478
    c.lt.s  $f18, $f16
    swc1    $f12, 0x0000(a0)           # 00000000
    lwc1    $f0, 0x0000(a0)            # 00000000
    c.lt.s  $f18, $f16
lbl_80064478:
    nop
    bc1fl   lbl_800644B0
    lui     $at, 0x43B4                # $at = 43B40000
    add.s   $f6, $f0, $f18
    mov.s   $f16, $f18
    swc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f0, 0x0000(a0)            # 00000000
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_800644B0
    lui     $at, 0x43B4                # $at = 43B40000
    swc1    $f12, 0x0000(a0)           # 00000000
    lwc1    $f0, 0x0000(a0)            # 00000000
lbl_800644AC:
    lui     $at, 0x43B4                # $at = 43B40000
lbl_800644B0:
    mtc1    $at, $f10                  # $f10 = 360.00
    lui     $at, 0x43B4                # $at = 43B40000
    c.le.s  $f10, $f0
    nop
    bc1fl   lbl_800644E0
    c.lt.s  $f0, $f2
    mtc1    $at, $f8                   # $f8 = 360.00
    nop
    sub.s   $f4, $f0, $f8
    swc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f0, 0x0000(a0)            # 00000000
    c.lt.s  $f0, $f2
lbl_800644E0:
    lui     $at, 0x43B4                # $at = 43B40000
    bc1fl   lbl_80064500
    mov.s   $f0, $f16
    mtc1    $at, $f6                   # $f6 = 360.00
    nop
    add.s   $f10, $f0, $f6
    swc1    $f10, 0x0000(a0)           # 00000000
    mov.s   $f0, $f16
lbl_80064500:
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp += 0x10


func_80064508:
# A0 = s16 Rotation Pointer
# A1 = s16 ?
# A2 = ?
# A3 = ?
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sw      a3, 0x000C($sp)
    lh      t0, 0x0000(a0)             # 00000000
    lh      t1, 0x0012($sp)
    subu    v1, a1, t0
    sll     v1, v1, 16
    beq     a1, t0, lbl_80064618
    sra     v1, v1, 16
    div     $zero, v1, a2
    bne     a2, $zero, lbl_8006454C
    nop
    break   # 0x01C00
lbl_8006454C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a2, $at, lbl_80064564
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_80064564
    nop
    break   # 0x01800
lbl_80064564:
    mflo    a3
    sll     t2, a3, 16
    sra     t2, t2, 16
    sll     v0, a3, 16
    slt     $at, t1, t2
    bne     $at, $zero, lbl_80064590
    sra     v0, v0, 16
    subu    t6, $zero, t1
    slt     $at, t2, t6
    beq     $at, $zero, lbl_800645C8
    nop
lbl_80064590:
    lh      t7, 0x000E($sp)
    lh      a1, 0x000E($sp)
    slt     $at, t7, t2
    beq     $at, $zero, lbl_800645A8
    subu    a1, $zero, a1
    or      v0, t7, $zero              # v0 = 00000000
lbl_800645A8:
    slt     $at, v0, a1
    beql    $at, $zero, lbl_800645C0
    addu    t8, t0, v0
    sll     v0, a1, 16
    sra     v0, v0, 16
    addu    t8, t0, v0
lbl_800645C0:
    beq     $zero, $zero, lbl_80064618
    sh      t8, 0x0000(a0)             # 00000000
lbl_800645C8:
    bltz    v1, lbl_800645F8
    subu    t7, t0, t1
    addu    t9, t0, t1
    sh      t9, 0x0000(a0)             # 00000000
    lh      t3, 0x0000(a0)             # 00000000
    subu    t4, a1, t3
    sll     t5, t4, 16
    sra     t6, t5, 16
    bgtzl   t6, lbl_8006461C
    or      v0, v1, $zero              # v0 = 00000000
    beq     $zero, $zero, lbl_80064618
    sh      a1, 0x0000(a0)             # 00000000
lbl_800645F8:
    sh      t7, 0x0000(a0)             # 00000000
    lh      t8, 0x0000(a0)             # 00000000
    subu    t9, a1, t8
    sll     t3, t9, 16
    sra     t4, t3, 16
    bltzl   t4, lbl_8006461C
    or      v0, v1, $zero              # v0 = 00000000
    sh      a1, 0x0000(a0)             # 00000000
lbl_80064618:
    or      v0, v1, $zero              # v0 = 00000000
lbl_8006461C:
    jr      $ra
    nop


func_80064624:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    sll     a3, a3, 16
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sra     a3, a3, 16
    lh      v1, 0x0000(a0)             # 00000000
    subu    t7, $zero, a3
    subu    v0, a1, v1
    sll     v0, v0, 16
    sra     v0, v0, 16
    div     $zero, v0, a2
    bne     a2, $zero, lbl_8006466C
    nop
    break   # 0x01C00
lbl_8006466C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a2, $at, lbl_80064684
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_80064684
    nop
    break   # 0x01800
lbl_80064684:
    mflo    v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    slt     $at, a3, v0
    beq     $at, $zero, lbl_800646A4
    addu    t6, v1, a3
    jr      $ra
    sh      t6, 0x0000(a0)             # 00000000
lbl_800646A4:
    slt     $at, v0, t7
    beq     $at, $zero, lbl_800646BC
    addu    t9, v1, v0
    subu    t8, v1, a3
    jr      $ra
    sh      t8, 0x0000(a0)             # 00000000
lbl_800646BC:
    sh      t9, 0x0000(a0)             # 00000000
    jr      $ra
    nop


func_800646C8:
# Copy u8[4] array
# A0 = Destination ptr
# A1 = Source ptr
    lbu     t6, 0x0000(a1)             # 00000000
    sb      t6, 0x0000(a0)             # 00000000
    lbu     t7, 0x0001(a1)             # 00000001
    sb      t7, 0x0001(a0)             # 00000001
    lbu     t8, 0x0002(a1)             # 00000002
    sb      t8, 0x0002(a0)             # 00000002
    lbu     t9, 0x0003(a1)             # 00000003
    sb      t9, 0x0003(a0)             # 00000003
    jr      $ra
    nop


func_800646F0:
# Play SFX (limited set, identical to 80064738)
# A0 = SFX
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a0, 0x0020($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80064738:
# Play SFX (limited set, Identical to 800646F0)
# A0 = SFX
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a0, 0x0020($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80064780:
# Play SFX (limited set)
# Used by medallions
# A0 = SFX
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a1, 0x0024($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)
    lhu     a0, 0x0026($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
