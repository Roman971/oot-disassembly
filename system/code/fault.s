# "Crash Debugger Thread" part of the code file
#
# Handles the "fault" thread.
#
# Starts at VRAM: 800AD590 / VROM: B234F0
#

.section .text
func_800AD590:
    jr      $ra
    nop


func_800AD598:
# Store A0, A1, A2 on the stack
# A0 = s32
# A1 = s32
# A2 = s32
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    jr      $ra
    nop
    nop
    nop
    nop
    nop
    nop


func_800AD5C0:
    lui     t6, 0xFFFA                 # t6 = FFFA0000
    or      t7, $sp, $zero             # t7 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t6, t6, 0x5A5A             # t6 = FFFA5A5A
lbl_800AD5D0:
    addiu   t7, t7, 0xFFF8             # t7 = FFFFFFF8
    sw      t6, 0x0000(t7)             # FFFFFFF8
    bne     t7, $sp, lbl_800AD5D0
    sw      t6, 0x0004(t7)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    jal     func_80001CCC
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AD5FC:
    lui     t7, 0xFFFA                 # t7 = FFFA0000
    or      t8, $sp, $zero             # t8 = 00000000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    ori     t7, t7, 0x5A5A             # t7 = FFFA5A5A
lbl_800AD60C:
    addiu   t8, t8, 0xFFF8             # t8 = FFFFFFF8
    sw      t7, 0x0000(t8)             # FFFFFFF8
    bne     t8, $sp, lbl_800AD60C
    sw      t7, 0x0004(t8)             # FFFFFFFC
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lui     s1, 0x8012                 # s1 = 80120000
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xD500             # s0 = 8011D500
    addiu   s1, s1, 0x1230             # s1 = 80121230
lbl_800AD638:
    jal     func_800AD5C0
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    or      a0, s0, $zero              # a0 = 8011D500
    or      a1, s1, $zero              # a1 = 80121230
    jal     func_800A279C
    or      a2, $zero, $zero           # a2 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, 0x123C(v0)             # 8012123C
    andi    t6, v0, 0xD00F             # t6 = 00000000
    beq     t6, $zero, lbl_800AD638
    nop
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_800AD678:
    lui     t6, 0xFFFA                 # t6 = FFFA0000
    or      t7, $sp, $zero             # t7 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t6, t6, 0x5A5A             # t6 = FFFA5A5A
lbl_800AD688:
    addiu   t7, t7, 0xFFF8             # t7 = FFFFFFF8
    sw      t6, 0x0000(t7)             # FFFFFFF8
    bne     t7, $sp, lbl_800AD688
    sw      t6, 0x0004(t7)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    jal     func_800AD5FC
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AD6B4:
# fault, Crash Debugger, Draw Crash Bar Inner
    lui     t5, 0xFFFA                 # t5 = FFFA0000
    or      t6, $sp, $zero             # t6 = 00000000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    ori     t5, t5, 0x5A5A             # t5 = FFFA5A5A
lbl_800AD6C4:
    addiu   t6, t6, 0xFFF8             # t6 = FFFFFFF8
    sw      t5, 0x0000(t6)             # FFFFFFF8
    bne     t6, $sp, lbl_800AD6C4
    sw      t5, 0x0004(t6)             # FFFFFFFC
    sw      s0, 0x0018($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x1290             # v1 = 80121290
    or      s0, a3, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lhu     t0, 0x05D0(v1)             # 80121860
    lw      t8, 0x05CC(v1)             # 8012185C
    sll     t2, a0,  1
    multu   t0, a1
    lhu     a0, 0x0032($sp)
    or      t1, $zero, $zero           # t1 = 00000000
    mflo    t6
    sll     t7, t6,  1
    addu    t9, t7, t8
    blez    s0, lbl_800AD774
    addu    v0, t9, t2
lbl_800AD714:
    blez    a2, lbl_800AD760
    or      v1, $zero, $zero           # v1 = 00000000
    andi    a3, a2, 0x0003             # a3 = 00000000
    beq     a3, $zero, lbl_800AD740
    lui     t0, 0x8012                 # t0 = 80120000
    or      a1, a3, $zero              # a1 = 00000000
lbl_800AD72C:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sh      a0, 0x0000(v0)             # 00000000
    bne     a1, v1, lbl_800AD72C
    addiu   v0, v0, 0x0002             # v0 = 00000002
    beq     v1, a2, lbl_800AD75C
lbl_800AD740:
    addiu   v1, v1, 0x0004             # v1 = 00000005
    sh      a0, 0x0002(v0)             # 00000004
    sh      a0, 0x0004(v0)             # 00000006
    sh      a0, 0x0006(v0)             # 00000008
    addiu   v0, v0, 0x0008             # v0 = 0000000A
    bne     v1, a2, lbl_800AD740
    sh      a0, -0x0008(v0)            # 00000002
lbl_800AD75C:
    lhu     t0, 0x1860(t0)             # 80121860
lbl_800AD760:
    subu    t3, t0, a2
    addiu   t1, t1, 0x0001             # t1 = 00000001
    sll     t4, t3,  1
    bne     t1, s0, lbl_800AD714
    addu    v0, v0, t4
lbl_800AD774:
    jal     func_800D5AA0              # osWritebackDCacheAll
    nop
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800AD790:
    lui     t7, 0xFFFA                 # t7 = FFFA0000
    or      t8, $sp, $zero             # t8 = 00000000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    ori     t7, t7, 0x5A5A             # t7 = FFFA5A5A
lbl_800AD7A0:
    addiu   t8, t8, 0xFFF8             # t8 = FFFFFFF8
    sw      t7, 0x0000(t8)             # FFFFFFF8
    bne     t8, $sp, lbl_800AD7A0
    sw      t7, 0x0004(t8)             # FFFFFFFC
    sw      $ra, 0x001C($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    jal     func_800AD6B4
    sw      t6, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800AD7D0:
    lui     t9, 0xFFFA                 # t9 = FFFA0000
    or      t3, $sp, $zero             # t3 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t9, t9, 0x5A5A             # t9 = FFFA5A5A
lbl_800AD7E0:
    addiu   t3, t3, 0xFFF8             # t3 = FFFFFFF8
    sw      t9, 0x0000(t3)             # FFFFFFF8
    bne     t3, $sp, lbl_800AD7E0
    sw      t9, 0x0004(t3)             # FFFFFFFC
    sw      a2, 0x0020($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x1290             # v1 = 80121290
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      $ra, 0x0014($sp)
    or      v0, a2, $zero              # v0 = 00000000
    bgez    v0, lbl_800AD818
    sra     t6, v0,  3
    addiu   $at, v0, 0x0007            # $at = 00000007
    sra     t6, $at,  3
lbl_800AD818:
    sll     t7, t6,  4
    lhu     t6, 0x05D0(v1)             # 80121860
    andi    t8, v0, 0x0004             # t8 = 00000000
    sra     t9, t8,  2
    multu   t6, a1
    addu    t3, t7, t9
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t5, t5, 0xEF20             # t5 = 800FEF20
    sll     t4, t3,  2
    addu    t0, t4, t5
    lw      t9, 0x05CC(v1)             # 8012185C
    sll     t4, a0,  1
    lui     t6, 0x1000                 # t6 = 10000000
    lui     a2, 0x8010                 # a2 = 80100000
    mflo    t8
    sll     t7, t8,  1
    addu    t3, t7, t9
    addu    a3, t3, t4
    addiu   a2, a2, 0xF380             # a2 = 800FF380
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    or      t1, $zero, $zero           # t1 = 00000000
    bgez    v0, lbl_800AD880
    andi    t5, v0, 0x0003             # t5 = 00000000
    beq     t5, $zero, lbl_800AD880
    nop
    addiu   t5, t5, 0xFFFC             # t5 = FFFFFFFC
lbl_800AD880:
    sllv    t2, t6, t5
    or      v0, t2, $zero              # v0 = 00000000
lbl_800AD888:
    lw      a0, 0x0000(t0)             # 00000000
    or      v1, $zero, $zero           # v1 = 00000000
lbl_800AD890:
    and     t8, v0, a0
    beq     t8, $zero, lbl_800AD8A4
    srl     v0, v0,  4
    lhu     t7, 0x0000(a2)             # 800FF380
    sh      t7, 0x0000(a3)             # 00000000
lbl_800AD8A4:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    bne     v1, a1, lbl_800AD890
    addiu   a3, a3, 0x0002             # a3 = 00000002
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, 0x1860(v0)             # 80121860
    addiu   t1, t1, 0x0001             # t1 = 00000001
    addiu   t0, t0, 0x0008             # t0 = 00000008
    sll     v0, v0,  1
    addu    a3, a3, v0
    addiu   a3, a3, 0xFFF0             # a3 = FFFFFFF2
    bnel    t1, a1, lbl_800AD888
    or      v0, t2, $zero              # v0 = 00000000
    jal     func_800D5AA0              # osWritebackDCacheAll
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AD8EC:
    lui     t6, 0xFFFA                 # t6 = FFFA0000
    or      t7, $sp, $zero             # t7 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t6, t6, 0x5A5A             # t6 = FFFA5A5A
lbl_800AD8FC:
    addiu   t7, t7, 0xFFF8             # t7 = FFFFFFF8
    sw      t6, 0x0000(t7)             # FFFFFFF8
    bne     t7, $sp, lbl_800AD8FC
    sw      t6, 0x0004(t7)             # FFFFFFFC
    sw      a2, 0x0020($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      $ra, 0x0014($sp)
    jal     func_800AD7D0
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AD930:
# fault, Crash Debugger, Draw Crash Bar
    lui     t7, 0xFFFA                 # t7 = FFFA0000
    or      t8, $sp, $zero             # t8 = 00000000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    ori     t7, t7, 0x5A5A             # t7 = FFFA5A5A
lbl_800AD940:
    addiu   t8, t8, 0xFFF8             # t8 = FFFFFFF8
    sw      t7, 0x0000(t8)             # FFFFFFF8
    bne     t8, $sp, lbl_800AD940
    sw      t7, 0x0004(t8)             # FFFFFFFC
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lhu     t6, 0x0022($sp)
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AD6B4
    sw      t6, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800AD984:
# fault, Crash Debugger, Draw Red Crash Bar
    lui     t6, 0xFFFA                 # t6 = FFFA0000
    or      t7, $sp, $zero             # t7 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t6, t6, 0x5A5A             # t6 = FFFA5A5A
lbl_800AD994:
    addiu   t7, t7, 0xFFF8             # t7 = FFFFFFF8
    sw      t6, 0x0000(t7)             # FFFFFFF8
    bne     t7, $sp, lbl_800AD994
    sw      t6, 0x0004(t7)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    jal     func_800AD930
    ori     a0, $zero, 0xF801          # a0 = 0000F801
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AD9C0:
# fault, Crash Debugger, draw Yellow Bar
    lui     t6, 0xFFFA                 # t6 = FFFA0000
    or      t7, $sp, $zero             # t7 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t6, t6, 0x5A5A             # t6 = FFFA5A5A
lbl_800AD9D0:
    addiu   t7, t7, 0xFFF8             # t7 = FFFFFFF8
    sw      t6, 0x0000(t7)             # FFFFFFF8
    bne     t7, $sp, lbl_800AD9D0
    sw      t6, 0x0004(t7)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    jal     func_800AD930
    ori     a0, $zero, 0xFFC1          # a0 = 0000FFC1
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AD9FC:
    jr      $ra
    nop


func_800ADA04:
    lui     t2, 0xFFFA                 # t2 = FFFA0000
    or      t3, $sp, $zero             # t3 = 00000000
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    ori     t2, t2, 0x5A5A             # t2 = FFFA5A5A
lbl_800ADA14:
    addiu   t3, t3, 0xFFF8             # t3 = FFFFFFF8
    sw      t2, 0x0000(t3)             # FFFFFFF8
    bne     t3, $sp, lbl_800ADA14
    sw      t2, 0x0004(t3)             # FFFFFFFC
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a2, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    beq     s1, $zero, lbl_800ADAE4
    addiu   s6, $zero, 0x0010          # s6 = 00000010
    addiu   s5, $zero, 0x0016          # s5 = 00000016
    addiu   s4, $zero, 0x0140          # s4 = 00000140
    addiu   s3, $zero, 0x000A          # s3 = 0000000A
lbl_800ADA64:
    lbu     a2, 0x0000(s2)             # 00000000
    bnel    s3, a2, lbl_800ADA7C
    lw      a0, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_800ADA90
    sw      s4, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
lbl_800ADA7C:
    jal     func_800AD8EC
    lw      a1, 0x0004(s0)             # 00000004
    lw      t6, 0x0000(s0)             # 00000000
    addiu   t7, t6, 0x0006             # t7 = 00000006
    sw      t7, 0x0000(s0)             # 00000000
lbl_800ADA90:
    lw      t8, 0x0000(s0)             # 00000000
    slti    $at, t8, 0x0115
    bnel    $at, $zero, lbl_800ADADC
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFF
    lw      t9, 0x0004(s0)             # 00000004
    sw      s5, 0x0000(s0)             # 00000000
    addiu   t0, t9, 0x0008             # t0 = 00000008
    slti    $at, t0, 0x00D1
    bne     $at, $zero, lbl_800ADAD8
    sw      t0, 0x0004(s0)             # 00000004
    jal     func_800AD5FC
    nop
    or      a0, s5, $zero              # a0 = 00000016
    or      a1, s6, $zero              # a1 = 00000010
    addiu   a2, $zero, 0x0114          # a2 = 00000114
    jal     func_800AD790
    addiu   a3, $zero, 0x00D0          # a3 = 000000D0
    sw      s6, 0x0004(s0)             # 00000004
lbl_800ADAD8:
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFE
lbl_800ADADC:
    bne     s1, $zero, lbl_800ADA64
    addiu   s2, s2, 0x0001             # s2 = 00000001
lbl_800ADAE4:
    or      v0, s0, $zero              # v0 = 00000000
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800ADB10:
    lui     t9, 0xFFFA                 # t9 = FFFA0000
    or      t0, $sp, $zero             # t0 = 00000000
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    ori     t9, t9, 0x5A5A             # t9 = FFFA5A5A
lbl_800ADB20:
    addiu   t0, t0, 0xFFF8             # t0 = FFFFFFF8
    sw      t9, 0x0000(t0)             # FFFFFFF8
    bne     t0, $sp, lbl_800ADB20
    sw      t9, 0x0004(t0)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lw      t6, 0x0028($sp)
    lw      t8, 0x002C($sp)
    lui     a0, 0x800B                 # a0 = 800B0000
    addiu   t7, t6, 0xFFF8             # t7 = FFFFFFF8
    sw      t7, 0x001C($sp)
    addiu   a0, a0, 0xDA04             # a0 = 800ADA04
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    lw      a2, 0x0030($sp)
    addiu   a3, $sp, 0x0034            # a3 = 0000000C
    jal     func_800D1D00
    sw      t8, 0x0020($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800ADB80:
# Printf related?
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x1C88             # v0 = 80121C88
    sw      a0, 0x0000(v0)             # 80121C88
    sw      a1, 0x0004(v0)             # 80121C8C
    jr      $ra
    nop


func_800ADB98:
    lui     t8, 0xFFFA                 # t8 = FFFA0000
    or      t9, $sp, $zero             # t9 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t8, t8, 0x5A5A             # t8 = FFFA5A5A
lbl_800ADBA8:
    addiu   t9, t9, 0xFFF8             # t9 = FFFFFFF8
    sw      t8, 0x0000(t9)             # FFFFFFF8
    bne     t9, $sp, lbl_800ADBA8
    sw      t8, 0x0004(t9)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    addiu   a2, $zero, 0x0114          # a2 = 00000114
    jal     func_800AD790
    addiu   a3, $zero, 0x00D0          # a3 = 000000D0
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x1C88             # v0 = 80121C88
    addiu   t6, $zero, 0x0016          # t6 = 00000016
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sw      t6, 0x0000(v0)             # 80121C88
    sw      t7, 0x0004(v0)             # 80121C8C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800ADBF8:
    lui     t6, 0xFFFA                 # t6 = FFFA0000
    or      t7, $sp, $zero             # t7 = 00000000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    ori     t6, t6, 0x5A5A             # t6 = FFFA5A5A
lbl_800ADC08:
    addiu   t7, t7, 0xFFF8             # t7 = FFFFFFF8
    sw      t6, 0x0000(t7)             # FFFFFFF8
    bne     t7, $sp, lbl_800ADC08
    sw      t6, 0x0004(t7)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lui     a0, 0x800B                 # a0 = 800B0000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x1C88             # a1 = 80121C88
    addiu   a0, a0, 0xDA04             # a0 = 800ADA04
    lw      a2, 0x0020($sp)
    jal     func_800D1D00
    addiu   a3, $sp, 0x0024            # a3 = 00000004
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800ADC58:
    lui     t8, 0xFFFA                 # t8 = FFFA0000
    or      t9, $sp, $zero             # t9 = 00000000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    ori     t8, t8, 0x5A5A             # t8 = FFFA5A5A
lbl_800ADC68:
    addiu   t9, t9, 0xFFF8             # t9 = FFFFFFF8
    sw      t8, 0x0000(t9)             # FFFFFFF8
    bne     t9, $sp, lbl_800ADC68
    sw      t8, 0x0004(t9)             # FFFFFFFC
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lui     $at, 0x7F80                # $at = 7F800000
    lw      v0, 0x0000(t6)             # 00000000
    and     v1, v0, $at
    srl     v1, v1, 23
    addiu   v1, v1, 0xFF81             # v1 = FFFFFF81
    slti    $at, v1, 0xFF82
    bne     $at, $zero, lbl_800ADCB0
    slti    $at, v1, 0x0080
    bnel    $at, $zero, lbl_800ADCBC
    lw      t7, 0x002C($sp)
lbl_800ADCB0:
    bne     v0, $zero, lbl_800ADCE0
    lui     a2, 0x8011                 # a2 = 80110000
    lw      t7, 0x002C($sp)
lbl_800ADCBC:
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x9124             # a2 = 80109124
    lwc1    $f4, 0x0000(t7)            # 00000000
    lw      a3, 0x0028($sp)
    cvt.d.s $f6, $f4
    jal     func_800ADB10
    sdc1    $f6, 0x0010($sp)
    beq     $zero, $zero, lbl_800ADCF0
    lw      $ra, 0x001C($sp)
lbl_800ADCE0:
    addiu   a2, a2, 0x9130             # a2 = FFFF9130
    jal     func_800ADB10
    lw      a3, 0x0028($sp)
    lw      $ra, 0x001C($sp)
lbl_800ADCF0:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800ADCFC:
    lui     t8, 0xFFFA                 # t8 = FFFA0000
    or      t9, $sp, $zero             # t9 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t8, t8, 0x5A5A             # t8 = FFFA5A5A
lbl_800ADD0C:
    addiu   t9, t9, 0xFFF8             # t9 = FFFFFFF8
    sw      t8, 0x0000(t9)             # FFFFFFF8
    bne     t9, $sp, lbl_800ADD0C
    sw      t8, 0x0004(t9)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x001C($sp)
    lui     $at, 0x7F80                # $at = 7F800000
    lw      v0, 0x0000(t6)             # 00000000
    and     v1, v0, $at
    srl     v1, v1, 23
    addiu   v1, v1, 0xFF81             # v1 = FFFFFF81
    slti    $at, v1, 0xFF82
    bne     $at, $zero, lbl_800ADD54
    slti    $at, v1, 0x0080
    bnel    $at, $zero, lbl_800ADD60
    lw      t7, 0x001C($sp)
lbl_800ADD54:
    bne     v0, $zero, lbl_800ADD8C
    lui     a0, 0x8011                 # a0 = 80110000
    lw      t7, 0x001C($sp)
lbl_800ADD60:
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x9144             # a0 = 80109144
    lwc1    $f4, 0x0000(t7)            # 00000000
    lw      a1, 0x0018($sp)
    cvt.d.s $f6, $f4
    mfc1    a3, $f6
    mfc1    a2, $f7
    jal     func_800015BC
    nop
    beq     $zero, $zero, lbl_800ADD9C
    lw      $ra, 0x0014($sp)
lbl_800ADD8C:
    addiu   a0, a0, 0x9154             # a0 = FFFF9154
    jal     func_800015BC
    lw      a1, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_800ADD9C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800ADDA8:
    lui     t8, 0xFFFA                 # t8 = FFFA0000
    or      t9, $sp, $zero             # t9 = 00000000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    ori     t8, t8, 0x5A5A             # t8 = FFFA5A5A
lbl_800ADDB8:
    addiu   t9, t9, 0xFFF8             # t9 = FFFFFFF8
    sw      t8, 0x0000(t9)             # FFFFFFF8
    bne     t9, $sp, lbl_800ADDB8
    sw      t8, 0x0004(t9)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lui     v1, 0x0002                 # v1 = 00020000
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x9170             # a2 = 80109170
    sw      v1, 0x0018($sp)
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    jal     func_800ADB10
    sw      a3, 0x0028($sp)
    lw      v1, 0x0018($sp)
    lw      a3, 0x0028($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a0, $zero, 0x0006          # a0 = 00000006
lbl_800ADE08:
    and     t6, a3, v1
    beql    t6, $zero, lbl_800ADE48
    addiu   v0, v0, 0x0001             # v0 = 00000001
    lw      a0, 0x0020($sp)
    sll     t7, v0,  2
    lui     a3, 0x8010                 # a3 = 80100000
    addu    a3, a3, t7
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x917C             # a2 = 8010917C
    lw      a3, -0x0C98(a3)            # 800FF368
    lw      a1, 0x0024($sp)
    jal     func_800ADB10
    addiu   a0, a0, 0x0064             # a0 = 0000006A
    beq     $zero, $zero, lbl_800ADE54
    lw      $ra, 0x0014($sp)
    addiu   v0, v0, 0x0001             # v0 = 00000001
lbl_800ADE48:
    bne     v0, a0, lbl_800ADE08
    srl     v1, v1,  1
    lw      $ra, 0x0014($sp)
lbl_800ADE54:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800ADE60:
    lui     t8, 0xFFFA                 # t8 = FFFA0000
    or      t9, $sp, $zero             # t9 = 00000000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    ori     t8, t8, 0x5A5A             # t8 = FFFA5A5A
lbl_800ADE70:
    addiu   t9, t9, 0xFFF8             # t9 = FFFFFFF8
    sw      t8, 0x0000(t9)             # FFFFFFF8
    bne     t9, $sp, lbl_800ADE70
    sw      t8, 0x0004(t9)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lui     v1, 0x0002                 # v1 = 00020000
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x9184             # a0 = 80109184
    sw      v1, 0x0018($sp)
    jal     func_800015BC
    sw      a1, 0x0020($sp)
    lw      v1, 0x0018($sp)
    lw      a1, 0x0020($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a0, $zero, 0x0006          # a0 = 00000006
lbl_800ADEB0:
    and     t6, a1, v1
    beq     t6, $zero, lbl_800ADEDC
    sll     t7, v0,  2
    lui     a1, 0x8010                 # a1 = 80100000
    addu    a1, a1, t7
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x9194             # a0 = 80109194
    jal     func_800015BC
    lw      a1, -0x0C98(a1)            # 800FF368
    beq     $zero, $zero, lbl_800ADEEC
    lw      $ra, 0x0014($sp)
lbl_800ADEDC:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bne     v0, a0, lbl_800ADEB0
    srl     v1, v1,  1
    lw      $ra, 0x0014($sp)
lbl_800ADEEC:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800ADEF8:
# Crash Debugger Screen 1?
    lui     t2, 0xFFFA                 # t2 = FFFA0000
    or      t3, $sp, $zero             # t3 = 00000000
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    ori     t2, t2, 0x5A5A             # t2 = FFFA5A5A
lbl_800ADF08:
    addiu   t3, t3, 0xFFF8             # t3 = FFFFFFF8
    sw      t2, 0x0000(t3)             # FFFFFFF8
    bne     t3, $sp, lbl_800ADF08
    sw      t2, 0x0004(t3)             # FFFFFFFC
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    sw      a0, 0x0028($sp)
    lw      t6, 0x0028($sp)
    addiu   $at, $zero, 0x0017         # $at = 00000017
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    lw      s1, 0x0120(t6)             # 00000120
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    addiu   a2, $zero, 0x0114          # a2 = 00000114
    srl     s1, s1,  2
    andi    s1, s1, 0x001F             # s1 = 00000000
    sll     s1, s1, 16
    sra     s1, s1, 16
    bnel    s1, $at, lbl_800ADF60
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    addiu   s1, $zero, 0x0010          # s1 = 00000010
    addiu   $at, $zero, 0x001F         # $at = 0000001F
lbl_800ADF60:
    bne     s1, $at, lbl_800ADF6C
    nop
    addiu   s1, $zero, 0x0011          # s1 = 00000011
lbl_800ADF6C:
    jal     func_800AD790
    addiu   a3, $zero, 0x0018          # a3 = 00000018
    lw      t7, 0x0028($sp)
    sll     t8, s1,  2
    lui     t9, 0x8010                 # t9 = 80100000
    addu    t9, t9, t8
    lw      t9, -0x0CE0(t9)            # 800FF320
    lui     a2, 0x8011                 # a2 = 80110000
    lw      a3, 0x0014(t7)             # 00000014
    sw      s1, 0x0010($sp)
    addiu   a2, a2, 0x919C             # a2 = 8010919C
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    jal     func_800ADB10
    sw      t9, 0x0014($sp)
    lw      s1, 0x0028($sp)
    addiu   s0, $zero, 0x001D          # s0 = 0000001D
    lui     a2, 0x8011                 # a2 = 80110000
    lw      t0, 0x0118(s1)             # 00000129
    lw      a3, 0x011C(s1)             # 0000012D
    addiu   a2, a2, 0x91B0             # a2 = 801091B0
    sw      t0, 0x0010($sp)
    lw      t1, 0x0124(s1)             # 00000135
    or      a1, s0, $zero              # a1 = 0000001D
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   s1, s1, 0x0020             # s1 = 00000031
    jal     func_800ADB10
    sw      t1, 0x0014($sp)
    addiu   s0, s0, 0x000D             # s0 = 0000002A
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    addiu   a1, $zero, 0x0028          # a1 = 00000028
    addiu   a2, $zero, 0x0114          # a2 = 00000114
    jal     func_800AD790
    addiu   a3, $zero, 0x00B8          # a3 = 000000B8
    lw      t5, 0x000C(s1)             # 0000003D
    lw      a3, 0x0004(s1)             # 00000035
    lui     a2, 0x8011                 # a2 = 80110000
    sw      t5, 0x0010($sp)
    lw      t9, 0x0014(s1)             # 00000045
    addiu   a2, a2, 0x91D0             # a2 = 801091D0
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    or      a1, s0, $zero              # a1 = 0000002A
    jal     func_800ADB10
    sw      t9, 0x0014($sp)
    lw      t3, 0x0024(s1)             # 00000055
    lw      a3, 0x001C(s1)             # 0000004D
    addiu   s0, s0, 0x0009             # s0 = 00000033
    sw      t3, 0x0010($sp)
    lw      t7, 0x002C(s1)             # 0000005D
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x91F0             # a2 = 801091F0
    or      a1, s0, $zero              # a1 = 00000033
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_800ADB10
    sw      t7, 0x0014($sp)
    lw      t1, 0x003C(s1)             # 0000006D
    lw      a3, 0x0034(s1)             # 00000065
    addiu   s0, s0, 0x0009             # s0 = 0000003C
    sw      t1, 0x0010($sp)
    lw      t5, 0x0044(s1)             # 00000075
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x9210             # a2 = 80109210
    or      a1, s0, $zero              # a1 = 0000003C
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_800ADB10
    sw      t5, 0x0014($sp)
    lw      t9, 0x0054(s1)             # 00000085
    lw      a3, 0x004C(s1)             # 0000007D
    addiu   s0, s0, 0x0009             # s0 = 00000045
    sw      t9, 0x0010($sp)
    lw      t3, 0x005C(s1)             # 0000008D
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x9230             # a2 = 80109230
    or      a1, s0, $zero              # a1 = 00000045
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_800ADB10
    sw      t3, 0x0014($sp)
    lw      t7, 0x006C(s1)             # 0000009D
    lw      a3, 0x0064(s1)             # 00000095
    addiu   s0, s0, 0x0009             # s0 = 0000004E
    sw      t7, 0x0010($sp)
    lw      t1, 0x0074(s1)             # 000000A5
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x9250             # a2 = 80109250
    or      a1, s0, $zero              # a1 = 0000004E
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_800ADB10
    sw      t1, 0x0014($sp)
    lw      t5, 0x0084(s1)             # 000000B5
    lw      a3, 0x007C(s1)             # 000000AD
    addiu   s0, s0, 0x0009             # s0 = 00000057
    sw      t5, 0x0010($sp)
    lw      t9, 0x008C(s1)             # 000000BD
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x9270             # a2 = 80109270
    or      a1, s0, $zero              # a1 = 00000057
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_800ADB10
    sw      t9, 0x0014($sp)
    lw      t3, 0x009C(s1)             # 000000CD
    lw      a3, 0x0094(s1)             # 000000C5
    addiu   s0, s0, 0x0009             # s0 = 00000060
    sw      t3, 0x0010($sp)
    lw      t7, 0x00A4(s1)             # 000000D5
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x9290             # a2 = 80109290
    or      a1, s0, $zero              # a1 = 00000060
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_800ADB10
    sw      t7, 0x0014($sp)
    lw      t1, 0x00B4(s1)             # 000000E5
    lw      a3, 0x00AC(s1)             # 000000DD
    addiu   s0, s0, 0x0009             # s0 = 00000069
    sw      t1, 0x0010($sp)
    lw      t5, 0x00BC(s1)             # 000000ED
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x92B0             # a2 = 801092B0
    or      a1, s0, $zero              # a1 = 00000069
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_800ADB10
    sw      t5, 0x0014($sp)
    lw      t9, 0x00CC(s1)             # 000000FD
    lw      a3, 0x00C4(s1)             # 000000F5
    addiu   s0, s0, 0x0009             # s0 = 00000072
    sw      t9, 0x0010($sp)
    lw      t3, 0x00D4(s1)             # 00000105
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x92D0             # a2 = 801092D0
    or      a1, s0, $zero              # a1 = 00000072
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_800ADB10
    sw      t3, 0x0014($sp)
    lw      t7, 0x00E4(s1)             # 00000115
    lw      a3, 0x00DC(s1)             # 0000010D
    addiu   s0, s0, 0x0009             # s0 = 0000007B
    sw      t7, 0x0010($sp)
    lw      t1, 0x00EC(s1)             # 0000011D
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x92F0             # a2 = 801092F0
    or      a1, s0, $zero              # a1 = 0000007B
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_800ADB10
    sw      t1, 0x0014($sp)
    addiu   s0, s0, 0x000D             # s0 = 00000088
    or      a1, s0, $zero              # a1 = 00000088
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_800ADDA8
    lw      a2, 0x010C(s1)             # 0000013D
    addiu   s0, s0, 0x000D             # s0 = 00000095
    or      a1, s0, $zero              # a1 = 00000095
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800ADC58
    addiu   a3, s1, 0x0114             # a3 = 00000145
    addiu   a0, $zero, 0x00A0          # a0 = 000000A0
    or      a1, s0, $zero              # a1 = 00000095
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_800ADC58
    addiu   a3, s1, 0x011C             # a3 = 0000014D
    addiu   s0, s0, 0x0009             # s0 = 0000009E
    or      a1, s0, $zero              # a1 = 0000009E
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800ADC58
    addiu   a3, s1, 0x0124             # a3 = 00000155
    addiu   a0, $zero, 0x00A0          # a0 = 000000A0
    or      a1, s0, $zero              # a1 = 0000009E
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_800ADC58
    addiu   a3, s1, 0x012C             # a3 = 0000015D
    addiu   s0, s0, 0x0009             # s0 = 000000A7
    or      a1, s0, $zero              # a1 = 000000A7
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800ADC58
    addiu   a3, s1, 0x0134             # a3 = 00000165
    addiu   a0, $zero, 0x00A0          # a0 = 000000A0
    or      a1, s0, $zero              # a1 = 000000A7
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_800ADC58
    addiu   a3, s1, 0x013C             # a3 = 0000016D
    addiu   s0, s0, 0x0009             # s0 = 000000B0
    or      a1, s0, $zero              # a1 = 000000B0
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    jal     func_800ADC58
    addiu   a3, s1, 0x0144             # a3 = 00000175
    addiu   a0, $zero, 0x00A0          # a0 = 000000A0
    or      a1, s0, $zero              # a1 = 000000B0
    addiu   a2, $zero, 0x000E          # a2 = 0000000E
    jal     func_800ADC58
    addiu   a3, s1, 0x014C             # a3 = 0000017D
    addiu   s0, s0, 0x0009             # s0 = 000000B9
    or      a1, s0, $zero              # a1 = 000000B9
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    jal     func_800ADC58
    addiu   a3, s1, 0x0154             # a3 = 00000185
    addiu   a0, $zero, 0x00A0          # a0 = 000000A0
    or      a1, s0, $zero              # a1 = 000000B9
    addiu   a2, $zero, 0x0012          # a2 = 00000012
    jal     func_800ADC58
    addiu   a3, s1, 0x015C             # a3 = 0000018D
    addiu   s0, s0, 0x0009             # s0 = 000000C2
    or      a1, s0, $zero              # a1 = 000000C2
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800ADC58
    addiu   a3, s1, 0x0164             # a3 = 00000195
    addiu   a0, $zero, 0x00A0          # a0 = 000000A0
    or      a1, s0, $zero              # a1 = 000000C2
    addiu   a2, $zero, 0x0016          # a2 = 00000016
    jal     func_800ADC58
    addiu   a3, s1, 0x016C             # a3 = 0000019D
    addiu   s0, s0, 0x0009             # s0 = 000000CB
    or      a1, s0, $zero              # a1 = 000000CB
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    jal     func_800ADC58
    addiu   a3, s1, 0x0174             # a3 = 000001A5
    addiu   a0, $zero, 0x00A0          # a0 = 000000A0
    or      a1, s0, $zero              # a1 = 000000CB
    addiu   a2, $zero, 0x001A          # a2 = 0000001A
    jal     func_800ADC58
    addiu   a3, s1, 0x017C             # a3 = 000001AD
    addiu   s0, s0, 0x0009             # s0 = 000000D4
    or      a1, s0, $zero              # a1 = 000000D4
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a2, $zero, 0x001C          # a2 = 0000001C
    jal     func_800ADC58
    addiu   a3, s1, 0x0184             # a3 = 000001B5
    addiu   a0, $zero, 0x00A0          # a0 = 000000A0
    or      a1, s0, $zero              # a1 = 000000D4
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    jal     func_800ADC58
    addiu   a3, s1, 0x018C             # a3 = 000001BD
    jal     func_800D5AA0              # osWritebackDCacheAll
    nop
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800AE338:
    lui     t0, 0xFFFA                 # t0 = FFFA0000
    or      t1, $sp, $zero             # t1 = 00000000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    ori     t0, t0, 0x5A5A             # t0 = FFFA5A5A
lbl_800AE348:
    addiu   t1, t1, 0xFFF8             # t1 = FFFFFFF8
    sw      t0, 0x0000(t1)             # FFFFFFF8
    bne     t1, $sp, lbl_800AE348
    sw      t0, 0x0004(t1)             # FFFFFFFC
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    addiu   $at, $zero, 0x0017         # $at = 00000017
    lui     a0, 0x8011                 # a0 = 80110000
    lw      s0, 0x0120(t6)             # 00000120
    srl     s0, s0,  2
    andi    s0, s0, 0x001F             # s0 = 00000000
    sll     s0, s0, 16
    sra     s0, s0, 16
    bnel    s0, $at, lbl_800AE394
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    addiu   s0, $zero, 0x0010          # s0 = 00000010
    addiu   $at, $zero, 0x001F         # $at = 0000001F
lbl_800AE394:
    bne     s0, $at, lbl_800AE3A0
    nop
    addiu   s0, $zero, 0x0011          # s0 = 00000011
lbl_800AE3A0:
    jal     func_800015BC
    addiu   a0, a0, 0x9310             # a0 = 80109310
    lw      t7, 0x0020($sp)
    sll     t8, s0,  2
    lui     a3, 0x8010                 # a3 = 80100000
    addu    a3, a3, t8
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x9314             # a0 = 80109314
    lw      a3, -0x0CE0(a3)            # 800FF320
    or      a2, s0, $zero              # a2 = 00000011
    jal     func_800015BC
    lw      a1, 0x0014(t7)             # 00000014
    lw      s0, 0x0020($sp)
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x932C             # a0 = 8010932C
    addiu   s0, s0, 0x0020             # s0 = 00000031
    lw      a3, 0x0104(s0)             # 00000135
    lw      a2, 0x00F8(s0)             # 00000129
    jal     func_800015BC
    lw      a1, 0x00FC(s0)             # 0000012D
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x934C             # a0 = 8010934C
    lw      a1, 0x0004(s0)             # 00000035
    lw      a2, 0x000C(s0)             # 0000003D
    jal     func_800015BC
    lw      a3, 0x0014(s0)             # 00000045
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x936C             # a0 = 8010936C
    lw      a1, 0x001C(s0)             # 0000004D
    lw      a2, 0x0024(s0)             # 00000055
    jal     func_800015BC
    lw      a3, 0x002C(s0)             # 0000005D
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x938C             # a0 = 8010938C
    lw      a1, 0x0034(s0)             # 00000065
    lw      a2, 0x003C(s0)             # 0000006D
    jal     func_800015BC
    lw      a3, 0x0044(s0)             # 00000075
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x93AC             # a0 = 801093AC
    lw      a1, 0x004C(s0)             # 0000007D
    lw      a2, 0x0054(s0)             # 00000085
    jal     func_800015BC
    lw      a3, 0x005C(s0)             # 0000008D
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x93CC             # a0 = 801093CC
    lw      a1, 0x0064(s0)             # 00000095
    lw      a2, 0x006C(s0)             # 0000009D
    jal     func_800015BC
    lw      a3, 0x0074(s0)             # 000000A5
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x93EC             # a0 = 801093EC
    lw      a1, 0x007C(s0)             # 000000AD
    lw      a2, 0x0084(s0)             # 000000B5
    jal     func_800015BC
    lw      a3, 0x008C(s0)             # 000000BD
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x940C             # a0 = 8010940C
    lw      a1, 0x0094(s0)             # 000000C5
    lw      a2, 0x009C(s0)             # 000000CD
    jal     func_800015BC
    lw      a3, 0x00A4(s0)             # 000000D5
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x942C             # a0 = 8010942C
    lw      a1, 0x00AC(s0)             # 000000DD
    lw      a2, 0x00B4(s0)             # 000000E5
    jal     func_800015BC
    lw      a3, 0x00BC(s0)             # 000000ED
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x944C             # a0 = 8010944C
    lw      a1, 0x00C4(s0)             # 000000F5
    lw      a2, 0x00CC(s0)             # 000000FD
    jal     func_800015BC
    lw      a3, 0x00D4(s0)             # 00000105
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x946C             # a0 = 8010946C
    lw      a1, 0x00DC(s0)             # 0000010D
    lw      a2, 0x00E4(s0)             # 00000115
    jal     func_800015BC
    lw      a3, 0x00EC(s0)             # 0000011D
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0x948C             # a0 = 8010948C
    jal     func_800ADE60
    lw      a0, 0x010C(s0)             # 0000013D
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0x9490             # a0 = 80109490
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_800ADCFC
    addiu   a1, s0, 0x0114             # a1 = 00000145
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    jal     func_800ADCFC
    addiu   a1, s0, 0x011C             # a1 = 0000014D
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0x9494             # a0 = 80109494
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    jal     func_800ADCFC
    addiu   a1, s0, 0x0124             # a1 = 00000155
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    jal     func_800ADCFC
    addiu   a1, s0, 0x012C             # a1 = 0000015D
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0x9498             # a0 = 80109498
    addiu   a0, $zero, 0x0008          # a0 = 00000008
    jal     func_800ADCFC
    addiu   a1, s0, 0x0134             # a1 = 00000165
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    jal     func_800ADCFC
    addiu   a1, s0, 0x013C             # a1 = 0000016D
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0x949C             # a0 = 8010949C
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    jal     func_800ADCFC
    addiu   a1, s0, 0x0144             # a1 = 00000175
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    jal     func_800ADCFC
    addiu   a1, s0, 0x014C             # a1 = 0000017D
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0x94A0             # a0 = 801094A0
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    jal     func_800ADCFC
    addiu   a1, s0, 0x0154             # a1 = 00000185
    addiu   a0, $zero, 0x0012          # a0 = 00000012
    jal     func_800ADCFC
    addiu   a1, s0, 0x015C             # a1 = 0000018D
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0x94A4             # a0 = 801094A4
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    jal     func_800ADCFC
    addiu   a1, s0, 0x0164             # a1 = 00000195
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    jal     func_800ADCFC
    addiu   a1, s0, 0x016C             # a1 = 0000019D
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0x94A8             # a0 = 801094A8
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    jal     func_800ADCFC
    addiu   a1, s0, 0x0174             # a1 = 000001A5
    addiu   a0, $zero, 0x001A          # a0 = 0000001A
    jal     func_800ADCFC
    addiu   a1, s0, 0x017C             # a1 = 000001AD
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0x94AC             # a0 = 801094AC
    addiu   a0, $zero, 0x001C          # a0 = 0000001C
    jal     func_800ADCFC
    addiu   a1, s0, 0x0184             # a1 = 000001B5
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_800ADCFC
    addiu   a1, s0, 0x018C             # a1 = 000001BD
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0x94B0             # a0 = 801094B0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800AE634:
    lui     t9, 0xFFFA                 # t9 = FFFA0000
    or      t0, $sp, $zero             # t0 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t9, t9, 0x5A5A             # t9 = FFFA5A5A
lbl_800AE644:
    addiu   t0, t0, 0xFFF8             # t0 = FFFFFFF8
    sw      t9, 0x0000(t0)             # FFFFFFF8
    bne     t0, $sp, lbl_800AE644
    sw      t9, 0x0004(t0)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    jal     func_800D2A50
    nop
    lw      t6, 0x0004(v0)             # 00000004
    addiu   a0, $zero, 0xFFFF          # a0 = FFFFFFFF
    or      v1, v0, $zero              # v1 = 00000000
    beq     a0, t6, lbl_800AE6B0
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0004(v0)             # 00000004
lbl_800AE678:
    blez    v0, lbl_800AE6A0
    slti    $at, v0, 0x007F
    beql    $at, $zero, lbl_800AE6A4
    lw      v1, 0x000C(v1)             # 0000000C
    lhu     t7, 0x0012(v1)             # 00000012
    andi    t8, t7, 0x0003             # t8 = 00000000
    beql    t8, $zero, lbl_800AE6A4
    lw      v1, 0x000C(v1)             # 0000000C
    beq     $zero, $zero, lbl_800AE6B4
    or      v0, v1, $zero              # v0 = 00000000
lbl_800AE6A0:
    lw      v1, 0x000C(v1)             # 0000000C
lbl_800AE6A4:
    lw      v0, 0x0004(v1)             # 00000004
    bne     a0, v0, lbl_800AE678
    nop
lbl_800AE6B0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800AE6B4:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800AE6BC:
# Crash debugger related?
    lui     t7, 0xFFFA                 # t7 = FFFA0000
    or      t0, $sp, $zero             # t0 = 00000000
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    ori     t7, t7, 0x5A5A             # t7 = FFFA5A5A
lbl_800AE6CC:
    addiu   t0, t0, 0xFFF8             # t0 = FFFFFFF8
    sw      t7, 0x0000(t0)             # FFFFFFF8
    bne     t0, $sp, lbl_800AE6CC
    sw      t7, 0x0004(t0)             # FFFFFFFC
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0x94B4             # a0 = 801094B4
    or      s0, $zero, $zero           # s0 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s2, $zero, 0x0001          # s2 = 00000001
    addiu   $at, $zero, 0x001E         # $at = 0000001E
lbl_800AE710:
    div     $zero, s3, $at
    mfhi    v0
    bnel    v0, $zero, lbl_800AE72C
    addiu   s3, s3, 0x0001             # s3 = 00000001
    jal     func_800AD9C0
    nop
    addiu   s3, s3, 0x0001             # s3 = 00000002
lbl_800AE72C:
    jal     func_800AD5C0
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x1230             # a1 = 80121230
    addiu   a0, a0, 0xD500             # a0 = 8011D500
    jal     func_800A279C
    or      a2, $zero, $zero           # a2 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    lhu     v1, 0x1230(v1)             # 80121230
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, 0x123C(v0)             # 8012123C
    bne     v1, $zero, lbl_800AE788
    nop
    bne     s1, s2, lbl_800AE788
    lui     a0, 0x8011                 # a0 = 80110000
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   a0, a0, 0x952C             # a0 = 8010952C
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800015BC
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_800AEA5C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
lbl_800AE788:
    beql    v0, $zero, lbl_800AEA5C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     s1, s2, lbl_800AE7BC
    lui     a0, 0x8011                 # a0 = 80110000
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   a0, a0, 0x9538             # a0 = 80109538
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    sw      v0, 0x0058($sp)
    jal     func_800015BC
    sw      v1, 0x0054($sp)
    lw      v0, 0x0058($sp)
    lw      v1, 0x0054($sp)
lbl_800AE7BC:
    slti    $at, s0, 0x005C
    bne     $at, $zero, lbl_800AE7D8
    addiu   $at, $zero, 0x005C         # $at = 0000005C
    beql    s0, $at, lbl_800AE980
    ori     $at, $zero, 0x8000         # $at = 00008000
    beq     $zero, $zero, lbl_800AEA5C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
lbl_800AE7D8:
    slti    $at, s0, 0x000B
    bne     $at, $zero, lbl_800AE7F4
    addiu   $at, $zero, 0x005B         # $at = 0000005B
    beql    s0, $at, lbl_800AE964
    addiu   $at, $zero, 0x4000         # $at = 00004000
    beq     $zero, $zero, lbl_800AEA5C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
lbl_800AE7F4:
    sltiu   $at, s0, 0x000B
    beq     $at, $zero, lbl_800AEA58
    sll     t6, s0,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t6
    lw      t6, -0x6884($at)           # 8010977C
    jr      t6
    nop
    addiu   $at, $zero, 0x2030         # $at = 00002030
    bne     v1, $at, lbl_800AEA58
    addiu   $at, $zero, 0x2000         # $at = 00002000
    bnel    v0, $at, lbl_800AEA5C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    or      s0, s2, $zero              # s0 = 00000001
    jal     func_800048C0              # osGetTime
    or      s1, s2, $zero              # s1 = 00000001
    sw      v0, 0x0048($sp)
    beq     $zero, $zero, lbl_800AEA58
    sw      v1, 0x004C($sp)
    addiu   $at, $zero, 0x0800         # $at = 00000800
    bne     v0, $at, lbl_800AE854
    nop
    beq     $zero, $zero, lbl_800AEA58
    addiu   s0, $zero, 0x0002          # s0 = 00000002
lbl_800AE854:
    beq     $zero, $zero, lbl_800AEA58
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_800AE870
    addiu   s0, $zero, 0x0003          # s0 = 00000003
    beq     $zero, $zero, lbl_800AEA58
    or      s1, s2, $zero              # s1 = 00000001
lbl_800AE870:
    beq     $zero, $zero, lbl_800AEA58
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_800AE88C
    nop
    beq     $zero, $zero, lbl_800AEA58
    addiu   s0, $zero, 0x0004          # s0 = 00000004
lbl_800AE88C:
    beq     $zero, $zero, lbl_800AEA58
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   $at, $zero, 0x0400         # $at = 00000400
    bne     v0, $at, lbl_800AE8A8
    addiu   s0, $zero, 0x0005          # s0 = 00000005
    beq     $zero, $zero, lbl_800AEA58
    or      s1, s2, $zero              # s1 = 00000001
lbl_800AE8A8:
    beq     $zero, $zero, lbl_800AEA58
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   $at, $zero, 0x0200         # $at = 00000200
    bne     v0, $at, lbl_800AE8C4
    nop
    beq     $zero, $zero, lbl_800AEA58
    addiu   s0, $zero, 0x0006          # s0 = 00000006
lbl_800AE8C4:
    beq     $zero, $zero, lbl_800AEA58
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_800AE8E0
    addiu   s0, $zero, 0x0007          # s0 = 00000007
    beq     $zero, $zero, lbl_800AEA58
    or      s1, s2, $zero              # s1 = 00000001
lbl_800AE8E0:
    beq     $zero, $zero, lbl_800AEA58
    or      s0, $zero, $zero           # s0 = 00000000
    bne     v0, s2, lbl_800AE8F8
    nop
    beq     $zero, $zero, lbl_800AEA58
    addiu   s0, $zero, 0x0008          # s0 = 00000008
lbl_800AE8F8:
    beq     $zero, $zero, lbl_800AEA58
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   $at, $zero, 0x0100         # $at = 00000100
    bne     v0, $at, lbl_800AE914
    addiu   s0, $zero, 0x0009          # s0 = 00000009
    beq     $zero, $zero, lbl_800AEA58
    or      s1, s2, $zero              # s1 = 00000001
lbl_800AE914:
    beq     $zero, $zero, lbl_800AEA58
    or      s0, $zero, $zero           # s0 = 00000000
    ori     $at, $zero, 0xC000         # $at = 0000C000
    bnel    v0, $at, lbl_800AE934
    ori     $at, $zero, 0x8000         # $at = 00008000
    beq     $zero, $zero, lbl_800AEA58
    addiu   s0, $zero, 0x000A          # s0 = 0000000A
    ori     $at, $zero, 0x8000         # $at = 00008000
lbl_800AE934:
    bnel    v0, $at, lbl_800AE948
    addiu   $at, $zero, 0x4000         # $at = 00004000
    beq     $zero, $zero, lbl_800AEA58
    addiu   s0, $zero, 0x005B          # s0 = 0000005B
    addiu   $at, $zero, 0x4000         # $at = 00004000
lbl_800AE948:
    bne     v0, $at, lbl_800AE958
    nop
    beq     $zero, $zero, lbl_800AEA58
    addiu   s0, $zero, 0x005C          # s0 = 0000005C
lbl_800AE958:
    beq     $zero, $zero, lbl_800AEA58
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   $at, $zero, 0x4000         # $at = 00004000
lbl_800AE964:
    bne     v0, $at, lbl_800AE974
    nop
    beq     $zero, $zero, lbl_800AEA58
    addiu   s0, $zero, 0x000A          # s0 = 0000000A
lbl_800AE974:
    beq     $zero, $zero, lbl_800AEA58
    or      s0, $zero, $zero           # s0 = 00000000
    ori     $at, $zero, 0x8000         # $at = 00008000
lbl_800AE980:
    bne     v0, $at, lbl_800AE990
    nop
    beq     $zero, $zero, lbl_800AEA58
    addiu   s0, $zero, 0x000A          # s0 = 0000000A
lbl_800AE990:
    beq     $zero, $zero, lbl_800AEA58
    or      s0, $zero, $zero           # s0 = 00000000
    ori     $at, $zero, 0xD000         # $at = 0000D000
    bne     v1, $at, lbl_800AEA58
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   $at, $zero, 0x1000         # $at = 00001000
    bne     v0, $at, lbl_800AEA58
    nop
    jal     func_800048C0              # osGetTime
    nop
    lw      t8, 0x0048($sp)
    lw      t9, 0x004C($sp)
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    subu    a0, v0, t8
    sltu    $at, v1, t9
    subu    a0, a0, $at
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    jal     func_800022D8
    subu    a1, v1, t9
    or      a0, v0, $zero              # a0 = 00000000
    or      a1, v1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800021D8
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_800D5CB8
    or      a1, v1, $zero              # a1 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x6858($at)          # 801097A8
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x9544             # a0 = 80109544
    div.s   $f2, $f0, $f4
    cvt.d.s $f6, $f2
    swc1    $f2, 0x0028($sp)
    mfc1    a3, $f6
    mfc1    a2, $f7
    jal     func_800015BC
    nop
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f10, 0x0028($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    c.le.s  $f10, $f8
    nop
    bc1f    lbl_800AEA50
    nop
    beq     $zero, $zero, lbl_800AEA58
    addiu   s0, $zero, 0x000B          # s0 = 0000000B
lbl_800AEA50:
    beq     $zero, $zero, lbl_800AEA5C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
lbl_800AEA58:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
lbl_800AEA5C:
    bnel    s0, $at, lbl_800AE710
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_800AEA80:
    lui     t7, 0xFFFA                 # t7 = FFFA0000
    or      t8, $sp, $zero             # t8 = 00000000
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    ori     t7, t7, 0x5A5A             # t7 = FFFA5A5A
lbl_800AEA90:
    addiu   t8, t8, 0xFFF8             # t8 = FFFFFFF8
    sw      t7, 0x0000(t8)             # FFFFFFF8
    bne     t8, $sp, lbl_800AEA90
    sw      t7, 0x0004(t8)             # FFFFFFFC
    sw      $ra, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    addiu   a2, $zero, 0x0114          # a2 = 00000114
    jal     func_800AD790
    addiu   a3, $zero, 0x00D0          # a3 = 000000D0
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x9554             # a2 = 80109554
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    jal     func_800ADB10
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    lui     s2, 0x8012                 # s2 = 80120000
    lui     s3, 0x8011                 # s3 = 80110000
    addiu   s3, s3, 0x9568             # s3 = 80109568
    addiu   s2, s2, 0x0C38             # s2 = 80120C38
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, $zero, 0x0028          # s1 = 00000028
    addiu   s4, $zero, 0x0010          # s4 = 00000010
lbl_800AEAFC:
    lw      t6, 0x0000(s2)             # 80120C38
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    or      a1, s1, $zero              # a1 = 00000028
    or      a2, s3, $zero              # a2 = 80109568
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_800ADB10
    sw      t6, 0x0010($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   s1, s1, 0x0008             # s1 = 00000030
    bne     s0, s4, lbl_800AEAFC
    addiu   s2, s2, 0x0004             # s2 = 80120C3C
    lui     a2, 0x8011                 # a2 = 80110000
    lui     a3, 0x8010                 # a3 = 80100000
    lw      a3, 0x5450(a3)             # 80105450
    addiu   a2, a2, 0x9574             # a2 = 80109574
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    jal     func_800ADB10
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800AEB64:
    lui     t6, 0xFFFA                 # t6 = FFFA0000
    or      t7, $sp, $zero             # t7 = 00000000
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    ori     t6, t6, 0x5A5A             # t6 = FFFA5A5A
lbl_800AEB74:
    addiu   t7, t7, 0xFFF8             # t7 = FFFFFFF8
    sw      t6, 0x0000(t7)             # FFFFFFF8
    bne     t7, $sp, lbl_800AEB74
    sw      t6, 0x0004(t7)             # FFFFFFFC
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a2, 0x0048($sp)
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    and     s0, s2, $at
    or      s1, s0, $zero              # s1 = 00000000
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    addiu   a2, $zero, 0x0114          # a2 = 00000114
    jal     func_800AD790
    addiu   a3, $zero, 0x00D0          # a3 = 000000D0
    beq     s3, $zero, lbl_800AEBE0
    addiu   a0, $zero, 0x0024          # a0 = 00000024
    beq     $zero, $zero, lbl_800AEBE8
    or      a3, s3, $zero              # a3 = 00000000
lbl_800AEBE0:
    lui     a3, 0x8011                 # a3 = 80110000
    addiu   a3, a3, 0x9590             # a3 = 80109590
lbl_800AEBE8:
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x9588             # a2 = 80109588
    addiu   a1, $zero, 0x0012          # a1 = 00000012
    jal     func_800ADB10
    sw      s0, 0x0010($sp)
    lui     $at, 0x8000                # $at = 80000000
    sltu    $at, s0, $at
    bne     $at, $zero, lbl_800AEC7C
    lui     $at, 0x8040                # $at = 80400000
    ori     $at, $at, 0x0001           # $at = 80400001
    sltu    $at, s0, $at
    beq     $at, $zero, lbl_800AEC7C
    addiu   s2, $zero, 0x001C          # s2 = 0000001C
    lui     s5, 0x8011                 # s5 = 80110000
    lui     s3, 0x8011                 # s3 = 80110000
    addiu   s3, s3, 0x95A4             # s3 = 801095A4
    addiu   s5, s5, 0x959C             # s5 = 8010959C
    addiu   s6, $zero, 0x00E2          # s6 = 000000E2
    addiu   s4, $zero, 0x0122          # s4 = 00000122
    addiu   a0, $zero, 0x001C          # a0 = 0000001C
lbl_800AEC38:
    or      a1, s2, $zero              # a1 = 0000001C
    or      a2, s5, $zero              # a2 = 8010959C
    jal     func_800ADB10
    or      a3, s1, $zero              # a3 = 00000000
    addiu   s0, $zero, 0x0052          # s0 = 00000052
    or      a0, s0, $zero              # a0 = 00000052
lbl_800AEC50:
    or      a1, s2, $zero              # a1 = 0000001C
    or      a2, s3, $zero              # a2 = 801095A4
    lw      a3, 0x0000(s1)             # 00000000
    jal     func_800ADB10
    addiu   s1, s1, 0x0004             # s1 = 00000004
    addiu   s0, s0, 0x0034             # s0 = 00000086
    bnel    s0, s4, lbl_800AEC50
    or      a0, s0, $zero              # a0 = 00000086
    addiu   s2, s2, 0x0009             # s2 = 00000025
    bnel    s2, s6, lbl_800AEC38
    addiu   a0, $zero, 0x001C          # a0 = 0000001C
lbl_800AEC7C:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_800AECA4:
    lui     t6, 0xFFFA                 # t6 = FFFA0000
    or      t7, $sp, $zero             # t7 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t6, t6, 0x5A5A             # t6 = FFFA5A5A
lbl_800AECB4:
    addiu   t7, t7, 0xFFF8             # t7 = FFFFFFF8
    sw      t6, 0x0000(t7)             # FFFFFFF8
    bne     t7, $sp, lbl_800AECB4
    sw      t6, 0x0004(t7)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    lw      v0, 0x011C(a0)             # 0000011C
    lui     $at, 0x8000                # $at = 80000000
    ori     $at, $at, 0x0020           # $at = 80000020
    sltu    $at, v0, $at
    bne     $at, $zero, lbl_800AED00
    lui     $at, 0x8040                # $at = 80400000
    ori     $at, $at, 0x0001           # $at = 80400001
    sltu    $at, v0, $at
    beq     $at, $zero, lbl_800AED00
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x95AC             # a0 = 801095AC
    addiu   a1, v0, 0xFF80             # a1 = FFFFFF80
    jal     func_800AEB64
    or      a2, $zero, $zero           # a2 = 00000000
lbl_800AED00:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AED10:
    lui     t8, 0xFFFA                 # t8 = FFFA0000
    or      t9, $sp, $zero             # t9 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t8, t8, 0x5A5A             # t8 = FFFA5A5A
lbl_800AED20:
    addiu   t9, t9, 0xFFF8             # t9 = FFFFFFF8
    sw      t8, 0x0000(t9)             # FFFFFFF8
    bne     t9, $sp, lbl_800AED20
    sw      t8, 0x0004(t9)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    lw      t7, 0x00F4(a0)             # 000000F4
    lui     $at, 0x8000                # $at = 80000000
    ori     $at, $at, 0x0020           # $at = 80000020
    sltu    $at, t7, $at
    bne     $at, $zero, lbl_800AED6C
    or      a1, t7, $zero              # a1 = 00000000
    lui     $at, 0x8040                # $at = 80400000
    ori     $at, $at, 0x0001           # $at = 80400001
    sltu    $at, t7, $at
    beq     $at, $zero, lbl_800AED6C
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x95B8             # a0 = 801095B8
    jal     func_800AEB64
    or      a2, $zero, $zero           # a2 = 00000000
lbl_800AED6C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AED7C:
    lui     t8, 0xFFFA                 # t8 = FFFA0000
    or      t9, $sp, $zero             # t9 = 00000000
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    ori     t8, t8, 0x5A5A             # t8 = FFFA5A5A
lbl_800AED8C:
    addiu   t9, t9, 0xFFF8             # t9 = FFFFFFF8
    sw      t8, 0x0000(t9)             # FFFFFFF8
    bne     t9, $sp, lbl_800AED8C
    sw      t8, 0x0004(t9)             # FFFFFFFC
    sw      $ra, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    addiu   a2, $zero, 0x0114          # a2 = 00000114
    jal     func_800AD790
    addiu   a3, $zero, 0x00D0          # a3 = 000000D0
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x95C4             # a2 = 801095C4
    addiu   a0, $zero, 0x0024          # a0 = 00000024
    jal     func_800ADB10
    addiu   a1, $zero, 0x0012          # a1 = 00000012
    lui     s1, 0x8012                 # s1 = 80120000
    lui     s4, 0x8011                 # s4 = 80110000
    addiu   s4, s4, 0x95D0             # s4 = 801095D0
    addiu   s1, s1, 0x1CA0             # s1 = 80121CA0
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s5, $zero, 0x0010          # s5 = 00000010
    addiu   s3, $zero, 0x0009          # s3 = 00000009
    addiu   s2, $zero, 0x0034          # s2 = 00000034
lbl_800AEE00:
    bgez    s0, lbl_800AEE14
    andi    t6, s0, 0x0003             # t6 = 00000000
    beq     t6, $zero, lbl_800AEE14
    nop
    addiu   t6, t6, 0xFFFC             # t6 = FFFFFFFC
lbl_800AEE14:
    multu   t6, s2
    or      a2, s4, $zero              # a2 = 801095D0
    lw      a3, 0x0000(s1)             # 80121CA0
    mflo    a0
    addiu   a0, a0, 0x0052             # a0 = 00000052
    bgez    s0, lbl_800AEE38
    sra     t7, s0,  2
    addiu   $at, s0, 0x0003            # $at = 00000003
    sra     t7, $at,  2
lbl_800AEE38:
    multu   t7, s3
    mflo    a1
    addiu   a1, a1, 0x001C             # a1 = 0000001C
    jal     func_800ADB10
    nop
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s5, lbl_800AEE00
    addiu   s1, s1, 0x0004             # s1 = 80121CA4
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800AEE7C:
    lui     t0, 0xFFFA                 # t0 = FFFA0000
    or      t1, $sp, $zero             # t1 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t0, t0, 0x5A5A             # t0 = FFFA5A5A
lbl_800AEE8C:
    addiu   t1, t1, 0xFFF8             # t1 = FFFFFFF8
    sw      t0, 0x0000(t1)             # FFFFFFF8
    bne     t1, $sp, lbl_800AEE8C
    sw      t0, 0x0004(t1)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x011C(a2)             # 0000011C
    sw      $zero, 0x0120(a2)          # 00000120
    sw      $zero, 0x012C(a2)          # 0000012C
    addiu   t7, t6, 0x0004             # t7 = 00000004
    sw      t7, 0x011C(a2)             # 0000011C
    addiu   t8, $zero, 0x000D          # t8 = 0000000D
    sw      t8, 0x0000(t7)             # 00000004
    lw      a0, 0x011C(a2)             # 0000011C
    sw      a2, 0x0018($sp)
    jal     func_80003440              # osWritebackDCache
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lw      a2, 0x0018($sp)
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_800041A0              # osInvalICache
    lw      a0, 0x011C(a2)             # 0000011C
    jal     func_80005EC0              # osStartThread
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AEEF8:
    lui     t9, 0xFFFA                 # t9 = FFFA0000
    or      t0, $sp, $zero             # t0 = 00000000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    ori     t9, t9, 0x5A5A             # t9 = FFFA5A5A
lbl_800AEF08:
    addiu   t0, t0, 0xFFF8             # t0 = FFFFFFF8
    sw      t9, 0x0000(t0)             # FFFFFFF8
    bne     t0, $sp, lbl_800AEF08
    sw      t9, 0x0004(t0)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    jal     func_80003BE0
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_800D5D50
    nop
    lui     $at, 0x8010                # $at = 80100000
    sltu    $at, v0, $at
    bne     $at, $zero, lbl_800AEF54
    lui     v1, 0x8012                 # v1 = 80120000
    jal     func_800D5D50
    nop
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x1290             # v1 = 80121290
    beq     $zero, $zero, lbl_800AEF7C
    sw      v0, 0x05CC(v1)             # 8012185C
lbl_800AEF54:
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x0318(t6)             # 80000318
    lui     $at, 0x8000                # $at = 80000000
    addiu   v1, v1, 0x1290             # v1 = 80122520
    or      t7, t6, $at                # t7 = 80000000
    lui     $at, 0xFFFD                # $at = FFFD0000
    ori     $at, $at, 0xA800           # $at = FFFDA800
    addu    a0, t7, $at
    jal     func_800D2420
    sw      a0, 0x05CC(v1)             # 80122AEC
lbl_800AEF7C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AEF8C:
# Textlog, printf related?
    lui     t0, 0xFFFA                 # t0 = FFFA0000
    or      t1, $sp, $zero             # t1 = 00000000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    ori     t0, t0, 0x5A5A             # t0 = FFFA5A5A
lbl_800AEF9C:
    addiu   t1, t1, 0xFFF8             # t1 = FFFFFFF8
    sw      t0, 0x0000(t1)             # FFFFFFF8
    bne     t1, $sp, lbl_800AEF9C
    sw      t0, 0x0004(t1)             # FFFFFFFC
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      t6, 0x0024($sp)
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x8012                # $at = 80120000
    sw      t6, 0x0004(s0)             # 00000004
    lw      t7, 0x0028($sp)
    or      a0, v0, $zero              # a0 = 00000000
    sw      t7, 0x0008(s0)             # 00000008
    lw      t8, 0x002C($sp)
    sw      t8, 0x000C(s0)             # 0000000C
    lw      t9, 0x1864(t9)             # 80121864
    sw      t9, 0x0000(s0)             # 00000000
    jal     func_80003CC0              # osSetIntMask
    sw      s0, 0x1864($at)            # 80121864
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800AF014:
    lui     t8, 0xFFFA                 # t8 = FFFA0000
    or      t9, $sp, $zero             # t9 = 00000000
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    ori     t8, t8, 0x5A5A             # t8 = FFFA5A5A
lbl_800AF024:
    addiu   t9, t9, 0xFFF8             # t9 = FFFFFFF8
    sw      t8, 0x0000(t9)             # FFFFFFF8
    bne     t9, $sp, lbl_800AF024
    sw      t8, 0x0004(t9)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, 0x1864(v1)             # 80121864
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    sw      $zero, 0x001C($sp)
    sw      a2, 0x0028($sp)
    jal     func_80003CC0              # osSetIntMask
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0028($sp)
    beq     v1, $zero, lbl_800AF0A8
    or      a0, v0, $zero              # a0 = 00000000
lbl_800AF06C:
    bnel    v1, a2, lbl_800AF09C
    or      a1, v1, $zero              # a1 = 00000000
    beql    a1, $zero, lbl_800AF08C
    lw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_800AF0A8
    sw      t6, 0x0000(a1)             # 00000000
    lw      t7, 0x0000(a2)             # 00000000
lbl_800AF08C:
    lui     $at, 0x8012                # $at = 80120000
    beq     $zero, $zero, lbl_800AF0A8
    sw      t7, 0x1864($at)            # 80121864
    or      a1, v1, $zero              # a1 = 00000000
lbl_800AF09C:
    lw      v1, 0x0000(v1)             # 00000000
    bne     v1, $zero, lbl_800AF06C
    nop
lbl_800AF0A8:
    jal     func_80003CC0              # osSetIntMask
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800AF0C0:
    lui     t0, 0xFFFA                 # t0 = FFFA0000
    or      t1, $sp, $zero             # t1 = 00000000
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    ori     t0, t0, 0x5A5A             # t0 = FFFA5A5A
lbl_800AF0D0:
    addiu   t1, t1, 0xFFF8             # t1 = FFFFFFF8
    sw      t0, 0x0000(t1)             # FFFFFFF8
    bne     t1, $sp, lbl_800AF0D0
    sw      t0, 0x0004(t1)             # FFFFFFFC
    sw      $ra, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    lui     s0, 0x8012                 # s0 = 80120000
    lw      s0, 0x1864(s0)             # 80121864
    lui     s2, 0x8011                 # s2 = 80110000
    or      s1, $zero, $zero           # s1 = 00000000
    beq     s0, $zero, lbl_800AF178
    addiu   s2, s2, 0x95D8             # s2 = 801095D8
    lw      t6, 0x0004(s0)             # 80120004
lbl_800AF10C:
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    beq     t6, $zero, lbl_800AF16C
    addiu   a2, $zero, 0x0114          # a2 = 00000114
    jal     func_800AD790
    addiu   a3, $zero, 0x00D0          # a3 = 000000D0
    sw      s0, 0x0010($sp)
    lw      t7, 0x0008(s0)             # 80120008
    or      a3, s1, $zero              # a3 = 00000000
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sw      t7, 0x0014($sp)
    lw      t8, 0x000C(s0)             # 8012000C
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    or      a2, s2, $zero              # a2 = 801095D8
    jal     func_800ADB10
    sw      t8, 0x0018($sp)
    lw      t9, 0x0004(s0)             # 80120004
    lw      a0, 0x0008(s0)             # 80120008
    lw      a1, 0x000C(s0)             # 8012000C
    jalr    $ra, t9
    nop
    jal     func_800AD678
    nop
lbl_800AF16C:
    lw      s0, 0x0000(s0)             # 80120000
    bnel    s0, $zero, lbl_800AF10C
    lw      t6, 0x0004(s0)             # 80120004
lbl_800AF178:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800AF190:
# fault thread entrypoint
    lui     t5, 0xFFFA                 # t5 = FFFA0000
    or      t6, $sp, $zero             # t6 = 00000000
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    ori     t5, t5, 0x5A5A             # t5 = FFFA5A5A
lbl_800AF1A0:
    addiu   t6, t6, 0xFFF8             # t6 = FFFFFFF8
    sw      t5, 0x0000(t6)             # FFFFFFF8
    bne     t6, $sp, lbl_800AF1A0
    sw      t5, 0x0004(t6)             # FFFFFFFC
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a0, 0x0058($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x1840             # a1 = 80121840
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    jal     func_80003FB0              # osSetEventMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x1840             # a1 = 80121840
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    jal     func_80003FB0              # osSetEventMesg
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     s8, 0x8011                 # s8 = 80110000
    lui     s7, 0x8011                 # s7 = 80110000
    lui     s3, 0x8012                 # s3 = 80120000
    lui     s2, 0x8012                 # s2 = 80120000
    lui     s1, 0x8012                 # s1 = 80120000
    addiu   s1, s1, 0x1C94             # s1 = 80121C94
    addiu   s2, s2, 0x1C90             # s2 = 80121C90
    addiu   s3, s3, 0x1C98             # s3 = 80121C98
    addiu   s7, s7, 0x95F8             # s7 = 801095F8
    addiu   s8, s8, 0x9698             # s8 = 80109698
    addiu   s6, $zero, 0x0001          # s6 = 00000001
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    addiu   s4, $sp, 0x0054            # s4 = FFFFFFFC
lbl_800AF238:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x1840             # a0 = 80121840
    or      a1, s4, $zero              # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    or      a2, s6, $zero              # a2 = 00000001
    lw      v1, 0x0054($sp)
    or      a0, s7, $zero              # a0 = 801095F8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, s5, lbl_800AF270
    nop
    jal     func_800015BC
    sw      s6, 0x0000(s1)             # 80121C94
    beq     $zero, $zero, lbl_800AF2A4
    nop
lbl_800AF270:
    bne     v1, $at, lbl_800AF294
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    lui     a0, 0x8011                 # a0 = 80110000
    sw      t6, 0x0000(s1)             # 80121C94
    jal     func_800015BC
    addiu   a0, a0, 0x9630             # a0 = 80109630
    beq     $zero, $zero, lbl_800AF2A4
    nop
lbl_800AF294:
    lui     a0, 0x8011                 # a0 = 80110000
    sw      t7, 0x0000(s1)             # 80121C94
    jal     func_800015BC
    addiu   a0, a0, 0x9664             # a0 = 80109664
lbl_800AF2A4:
    jal     func_800D5AD0
    nop
    or      s0, v0, $zero              # s0 = 00000000
    or      a0, s8, $zero              # a0 = 80109698
    jal     func_800015BC
    or      a1, v0, $zero              # a1 = 00000000
    bne     s0, $zero, lbl_800AF2E0
    nop
    jal     func_800AE634
    nop
    lui     a0, 0x8011                 # a0 = 80110000
    or      s0, v0, $zero              # s0 = 00000000
    addiu   a0, a0, 0x96BC             # a0 = 801096BC
    jal     func_800015BC
    or      a1, v0, $zero              # a1 = 00000000
lbl_800AF2E0:
    beq     s0, $zero, lbl_800AF238
    nop
    lui     $at, 0x8012                # $at = 80120000
    sw      s0, 0x1C9C($at)            # 80121C9C
    jal     func_800AE338
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80003CA0              # osGetThreadId
    or      a0, $zero, $zero           # a0 = 00000000
    lw      t9, 0x0000(s3)             # 80121C98
    lui     t8, 0x8011                 # t8 = 80110000
    addiu   t8, t8, 0x96F4             # t8 = 801096F4
    lui     a0, 0x8011                 # a0 = 80110000
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x96EC             # a2 = 801096EC
    addiu   a0, a0, 0x96D8             # a0 = 801096D8
    sw      t8, 0x0010($sp)
    or      a1, v0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x05AE          # a3 = 000005AE
    jal     func_800015BC
    sw      t9, 0x0014($sp)
    lw      t0, 0x0000(s3)             # 80121C98
    bne     t0, $zero, lbl_800AF350
    nop
lbl_800AF33C:
    jal     func_800AD5C0
    addiu   a0, $zero, 0x03E8          # a0 = 000003E8
    lw      t1, 0x0000(s3)             # 80121C98
    beq     t1, $zero, lbl_800AF33C
    nop
lbl_800AF350:
    jal     func_800AD5C0
    addiu   a0, $zero, 0x01F4          # a0 = 000001F4
    jal     func_800AD984
    nop
    jal     func_800AE6BC
    nop
lbl_800AF368:
    jal     func_800AEEF8
    nop
    jal     func_800ADEF8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AD678
    nop
    jal     func_800AEA80
    nop
    jal     func_800AD678
    nop
    jal     func_800AED7C
    nop
    jal     func_800AD678
    nop
    jal     func_800AED10
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AD678
    nop
    jal     func_800AECA4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AD678
    nop
    jal     func_800AF0C0
    nop
    lw      t2, 0x0000(s2)             # 80121C90
    beq     t2, $zero, lbl_800AF368
    nop
    lw      t3, 0x0000(s2)             # 80121C90
    bne     t3, $zero, lbl_800AF3EC
    nop
    lw      t4, 0x0000(s2)             # 80121C90
lbl_800AF3E4:
    beql    t4, $zero, lbl_800AF3E4
    lw      t4, 0x0000(s2)             # 80121C90
lbl_800AF3EC:
    jal     func_800AEE7C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800AF238
    nop
    nop
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    lw      s7, 0x003C($sp)
    lw      s8, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_800AF430:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x1290             # v0 = 80121290
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      a0, 0x05CC(v0)             # 8012185C
    sh      a1, 0x05D0(v0)             # 80121860
    sh      a2, 0x05D2(v0)             # 80121862
    jr      $ra
    nop


func_800AF45C:
# initializes fault thread?
# runs on "main" thread
    lui     t7, 0xFFFA                 # t7 = FFFA0000
    or      t8, $sp, $zero             # t8 = 00000000
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    ori     t7, t7, 0x5A5A             # t7 = FFFA5A5A
lbl_800AF46C:
    addiu   t8, t8, 0xFFF8             # t8 = FFFFFFF8
    sw      t7, 0x0000(t8)             # FFFFFFF8
    bne     t8, $sp, lbl_800AF46C
    sw      t7, 0x0004(t8)             # FFFFFFFC
    sw      s0, 0x0020($sp)
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0x1290             # s0 = 80121290
    sw      $ra, 0x0024($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   t7, t7, 0x1C98             # t7 = 80121C98
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0000(t7)             # 80121C98
    lui     t8, 0x8000                 # t8 = 80000000
    lw      t8, 0x0318(t8)             # 80000318
    lui     $at, 0x8000                # $at = 80000000
    addiu   t1, $zero, 0x0140          # t1 = 00000140
    or      t9, t8, $at                # t9 = 80000000
    lui     $at, 0xFFFD                # $at = FFFD0000
    ori     $at, $at, 0xA800           # $at = FFFDA800
    addu    t0, t9, $at
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    sw      t0, 0x05CC(s0)             # 8012185C
    sh      t1, 0x05D0(s0)             # 80121860
    sh      t2, 0x05D2(s0)             # 80121862
    sw      $zero, 0x05D4(s0)          # 80121864
    addiu   a1, a1, 0x1858             # a1 = 80121858
    addiu   a0, a0, 0x1840             # a0 = 80121840
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     t4, 0x8011                 # t4 = 80110000
    addiu   t4, t4, 0x970C             # t4 = 8010970C
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   t3, $zero, 0x0100          # t3 = 00000100
    sw      t3, 0x0010($sp)
    addiu   a2, a2, 0x1C68             # a2 = 80121C68
    addiu   a1, a1, 0x1868             # a1 = 80121868
    addiu   a0, a0, 0x1C68             # a0 = 80121C68
    sw      t4, 0x0014($sp)
    jal     func_80001890              # __osInitStack
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x1C68             # t5 = 80121C68
    lui     a2, 0x800B                 # a2 = 800B0000
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    sw      t6, 0x0014($sp)
    addiu   a2, a2, 0xF190             # a2 = 800AF190
    sw      t5, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 80121290
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80002F20              # osCreateThread
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80005EC0              # osStartThread
    or      a0, s0, $zero              # a0 = 80121290
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800AF564:
# Crash Debugger Entrypoint
# Displays small box exception
# A0 = Str Pointer 1
# A1 = Str Pointer 2 (can be null)
    lui     t0, 0xFFFA                 # t0 = FFFA0000
    or      t1, $sp, $zero             # t1 = 00000000
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    ori     t0, t0, 0x5A5A             # t0 = FFFA5A5A
lbl_800AF574:
    addiu   t1, t1, 0xFFF8             # t1 = FFFFFFF8
    sw      t0, 0x0000(t1)             # FFFFFFF8
    bne     t1, $sp, lbl_800AF574
    sw      t0, 0x0004(t1)             # FFFFFFFC
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s0, 0x0018($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   t7, t7, 0x1C94             # t7 = 80121C94
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0000(t7)             # 80121C94
    jal     func_80003CA0              # osGetThreadId
    or      a0, $zero, $zero           # a0 = 00000000
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x9714             # a0 = 80109714
    jal     func_800015BC
    or      a1, v0, $zero              # a1 = 00000000
    beq     s1, $zero, lbl_800AF5E4
    lui     a0, 0x8011                 # a0 = 80110000
    beq     $zero, $zero, lbl_800AF5EC
    or      a3, s1, $zero              # a3 = 00000000
lbl_800AF5E4:
    lui     a3, 0x8011                 # a3 = 80110000
    addiu   a3, a3, 0x972C             # a3 = 8010972C
lbl_800AF5EC:
    addiu   a0, a0, 0x9728             # a0 = 80109728
    jal     func_800015BC
    or      a1, a3, $zero              # a1 = 8010972C
    beq     s2, $zero, lbl_800AF608
    lui     a0, 0x8011                 # a0 = 80110000
    beq     $zero, $zero, lbl_800AF610
    or      a3, s2, $zero              # a3 = 00000000
lbl_800AF608:
    lui     a3, 0x8011                 # a3 = 80110000
    addiu   a3, a3, 0x9738             # a3 = 80109738
lbl_800AF610:
    addiu   a0, a0, 0x9734             # a0 = 80109734
    jal     func_800015BC
    or      a1, a3, $zero              # a1 = 80109738
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0x1C98             # s0 = 80121C98
    lw      t8, 0x0000(s0)             # 80121C98
    bne     t8, $zero, lbl_800AF644
    nop
lbl_800AF630:
    jal     func_800AD5C0
    addiu   a0, $zero, 0x03E8          # a0 = 000003E8
    lw      t9, 0x0000(s0)             # 80121C98
    beq     t9, $zero, lbl_800AF630
    nop
lbl_800AF644:
    jal     func_800AD5C0
    addiu   a0, $zero, 0x01F4          # a0 = 000001F4
    jal     func_800AE6BC
    nop
    lui     s6, 0x8011                 # s6 = 80110000
    lui     s5, 0x8011                 # s5 = 80110000
    lui     s4, 0x8011                 # s4 = 80110000
    lui     s3, 0x8011                 # s3 = 80110000
    lui     s0, 0x8011                 # s0 = 80110000
    addiu   s0, s0, 0x9740             # s0 = 80109740
    addiu   s3, s3, 0x9754             # s3 = 80109754
    addiu   s4, s4, 0x9760             # s4 = 80109760
    addiu   s5, s5, 0x9764             # s5 = 80109764
    addiu   s6, s6, 0x9758             # s6 = 80109758
lbl_800AF67C:
    jal     func_800AEEF8
    nop
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    addiu   a2, $zero, 0x0114          # a2 = 00000114
    jal     func_800AD790
    addiu   a3, $zero, 0x0022          # a3 = 00000022
    jal     func_80003CA0              # osGetThreadId
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    addiu   a1, $zero, 0x0012          # a1 = 00000012
    or      a2, s0, $zero              # a2 = 80109740
    jal     func_800ADB10
    or      a3, v0, $zero              # a3 = 00000000
    beq     s1, $zero, lbl_800AF6C4
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    beq     $zero, $zero, lbl_800AF6C8
    or      a3, s1, $zero              # a3 = 00000000
lbl_800AF6C4:
    or      a3, s6, $zero              # a3 = 80109758
lbl_800AF6C8:
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    jal     func_800ADB10
    or      a2, s3, $zero              # a2 = 80109754
    beq     s2, $zero, lbl_800AF6E4
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    beq     $zero, $zero, lbl_800AF6E8
    or      a3, s2, $zero              # a3 = 00000000
lbl_800AF6E4:
    or      a3, s5, $zero              # a3 = 80109764
lbl_800AF6E8:
    addiu   a1, $zero, 0x0026          # a1 = 00000026
    jal     func_800ADB10
    or      a2, s4, $zero              # a2 = 80109760
    jal     func_800AD678
    nop
    jal     func_800AF0C0
    nop
    beq     $zero, $zero, lbl_800AF67C
    nop
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800AF734:
# Crash Debugger Entrypoint, Displays source + line of exception
# A0 = source file str pointer
# A1 = line the exception occurred
    lui     t6, 0xFFFA                 # t6 = FFFA0000
    or      t7, $sp, $zero             # t7 = 00000000
    addiu   $sp, $sp, 0xFEE8           # $sp -= 0x118
    ori     t6, t6, 0x5A5A             # t6 = FFFA5A5A
lbl_800AF744:
    addiu   t7, t7, 0xFFF8             # t7 = FFFFFFF8
    sw      t6, 0x0000(t7)             # FFFFFFF8
    bne     t7, $sp, lbl_800AF744
    sw      t6, 0x0004(t7)             # FFFFFFFC
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     a1, 0x8011                 # a1 = 80110000
    addiu   a1, a1, 0x976C             # a1 = 8010976C
    jal     func_800CE7B4
    addiu   a0, $sp, 0x0018            # a0 = FFFFFF00
    addiu   a0, $sp, 0x0018            # a0 = FFFFFF00
    jal     func_800AF564
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0118           # $sp += 0x118
    jr      $ra
    nop
    nop
