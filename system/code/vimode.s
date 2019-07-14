# "VI (Video Interface) Mode" part of the code file
#
# The purpose of this file's content is unclear but it supposedly handles the VI mode which generates N64's graphics.
#
# Starts at VRAM: 80092EB0 / VROM: B08E10
#

.section .text
func_80092EB0:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_80092EBC:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      a1, 0x0064($sp)
    sw      a2, 0x0068($sp)
    sltiu   t0, a3, 0x0001
    sltu    v0, $zero, t0
    beq     v0, $zero, lbl_80092EE4
    sltu    a1, $zero, a3
    lw      v1, 0x0074($sp)
    sltiu   v0, v1, 0x0001
    sltu    v0, $zero, v0
lbl_80092EE4:
    lw      v1, 0x0074($sp)
    or      t2, v0, $zero              # t2 = 00000000
    sltu    v0, $zero, t0
    sw      v0, 0x0014($sp)
    beq     v0, $zero, lbl_80092F00
    sltiu   a2, v1, 0x0001
    sltu    v0, $zero, v1
lbl_80092F00:
    sw      v0, 0x0048($sp)
    beq     a1, $zero, lbl_80092F10
    or      v0, a1, $zero              # v0 = 00000000
    sltu    v0, $zero, v1
lbl_80092F10:
    sw      v0, 0x0044($sp)
    beq     a1, $zero, lbl_80092F20
    or      v0, a1, $zero              # v0 = 00000000
    sltu    v0, $zero, a2
lbl_80092F20:
    or      t1, v0, $zero              # t1 = 00000000
    beq     a1, $zero, lbl_80092F54
    or      v0, a1, $zero              # v0 = 00000000
    lw      t3, 0x0070($sp)
    sltiu   a3, t3, 0x0001
    sltu    v0, $zero, a3
    beql    v0, $zero, lbl_80092F58
    lw      t5, 0x0078($sp)
    sltu    v0, $zero, v1
    beq     v0, $zero, lbl_80092F54
    sw      v0, 0x0014($sp)
    lw      t5, 0x0078($sp)
    sltu    v0, $zero, t5
lbl_80092F54:
    lw      t5, 0x0078($sp)
lbl_80092F58:
    lw      t3, 0x0070($sp)
    sw      v0, 0x003C($sp)
    sltu    t6, $zero, t5
    sw      t6, 0x0004($sp)
    or      v0, a1, $zero              # v0 = 00000000
    beq     a1, $zero, lbl_80092F94
    sltiu   t4, t3, 0x0001
    sltu    v0, $zero, t3
    beq     v0, $zero, lbl_80092F94
    sw      v0, 0x000C($sp)
    sltu    v0, $zero, v1
    beq     v0, $zero, lbl_80092F94
    sw      v0, 0x000C($sp)
    sltiu   v0, t5, 0x0001
    sltu    v0, $zero, v0
lbl_80092F94:
    sw      v0, 0x0038($sp)
    sltu    v0, $zero, t0
    sw      v0, 0x0000($sp)
    beq     v0, $zero, lbl_80092FC4
    sltiu   a3, t5, 0x0001
    sltu    v0, $zero, t3
    beq     v0, $zero, lbl_80092FC4
    sw      v0, 0x0018($sp)
    sltu    v0, $zero, v1
    beq     v0, $zero, lbl_80092FC4
    sw      v0, 0x0018($sp)
    sltu    v0, $zero, a3
lbl_80092FC4:
    lw      t9, 0x008C($sp)
    lw      t7, 0x0090($sp)
    addiu   v1, $zero, 0xFFFE          # v1 = FFFFFFFE
    and     t6, t9, v1
    and     t8, t7, v1
    or      t5, v0, $zero              # t5 = 00000000
    sw      t6, 0x008C($sp)
    beq     t2, $zero, lbl_80092FF4
    sw      t8, 0x0090($sp)
    lw      t0, 0x0068($sp)
    beq     $zero, $zero, lbl_80092FFC
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_80092FF4:
    lw      t0, 0x0068($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80092FFC:
    beq     a1, $zero, lbl_8009300C
    lw      t9, 0x0090($sp)
    beq     $zero, $zero, lbl_80093010
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8009300C:
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80093010:
    lw      t6, 0x008C($sp)
    subu    t7, t9, t6
    lw      t9, 0x0080($sp)
    addiu   t8, t7, 0x01E0             # t8 = 000001E0
    sll     t6, t9, 11
    div     $zero, t6, t8
    mflo    t7
    bne     t8, $zero, lbl_80093038
    nop
    break   # 0x01C00
lbl_80093038:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t8, $at, lbl_80093050
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_80093050
    nop
    break   # 0x01800
lbl_80093050:
    div     $zero, t7, v0
    mflo    t9
    lw      t8, 0x0064($sp)
    bne     v0, $zero, lbl_80093068
    nop
    break   # 0x01C00
lbl_80093068:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_80093080
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_80093080
    nop
    break   # 0x01800
lbl_80093080:
    multu   t9, v1
    mflo    t6
    sw      t6, 0x0030($sp)
    beql    a2, $zero, lbl_800930B0
    or      t2, $zero, $zero           # t2 = 00000000
    beq     t1, $zero, lbl_800930A4
    lui     v0, 0x0200                 # v0 = 02000000
    beq     $zero, $zero, lbl_800930B0
    lui     t2, 0x0100                 # t2 = 01000000
lbl_800930A4:
    beq     $zero, $zero, lbl_800930B0
    or      t2, v0, $zero              # t2 = 02000000
    or      t2, $zero, $zero           # t2 = 00000000
lbl_800930B0:
    beql    a2, $zero, lbl_800930D4
    or      t1, $zero, $zero           # t1 = 00000000
    beq     t1, $zero, lbl_800930C8
    lui     v0, 0x0200                 # v0 = 02000000
    beq     $zero, $zero, lbl_800930D4
    lui     t1, 0x0300                 # t1 = 03000000
lbl_800930C8:
    beq     $zero, $zero, lbl_800930D4
    or      t1, v0, $zero              # t1 = 02000000
    or      t1, $zero, $zero           # t1 = 00000000
lbl_800930D4:
    beq     t4, $zero, lbl_800930E4
    sb      t8, 0x0000(a0)             # 00000000
    beq     $zero, $zero, lbl_800930E8
    addiu   a2, $zero, 0x0010          # a2 = 00000010
lbl_800930E4:
    or      a2, $zero, $zero           # a2 = 00000000
lbl_800930E8:
    lw      t7, 0x0044($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    bne     t7, $zero, lbl_80093100
    nop
    beq     $zero, $zero, lbl_80093100
    addiu   v1, $zero, 0x0040          # v1 = 00000040
lbl_80093100:
    beq     a3, $zero, lbl_80093110
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    beq     $zero, $zero, lbl_80093110
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_80093110:
    ori     t9, v0, 0x300C             # t9 = 0000300F
    or      t6, t9, v1                 # t6 = 0000304F
    or      t8, t6, a2                 # t8 = 0000304F
    sw      t8, 0x0004(a0)             # 00000004
    lw      t7, 0x003C($sp)
    ori     t6, t8, 0x0100             # t6 = 0000314F
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beql    t7, $zero, lbl_80093140
    lw      t8, 0x0038($sp)
    beq     $zero, $zero, lbl_8009317C
    sw      t6, 0x0004(a0)             # 00000004
    lw      t8, 0x0038($sp)
lbl_80093140:
    or      t7, t8, t5                 # t7 = 0000304F
    beq     t7, $zero, lbl_8009315C
    nop
    lw      t9, 0x0004(a0)             # 00000004
    ori     t6, t9, 0x0300             # t6 = 0000330F
    beq     $zero, $zero, lbl_8009317C
    sw      t6, 0x0004(a0)             # 00000004
lbl_8009315C:
    beql    t3, $zero, lbl_80093178
    lw      t9, 0x0004(a0)             # 00000004
    lw      t8, 0x0004(a0)             # 00000004
    ori     t7, t8, 0x0200             # t7 = 0000324F
    beq     $zero, $zero, lbl_8009317C
    sw      t7, 0x0004(a0)             # 00000004
    lw      t9, 0x0004(a0)             # 00000004
lbl_80093178:
    sw      t9, 0x0004(a0)             # 00000004
lbl_8009317C:
    lw      t6, 0x0048($sp)
    lui     t7, 0x03E5                 # t7 = 03E50000
    lw      a2, 0x007C($sp)
    beq     t6, $zero, lbl_80093198
    ori     t7, t7, 0x2239             # t7 = 03E52239
    beq     $zero, $zero, lbl_80093198
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80093198:
    multu   v0, a2
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t9, $zero, 0x020C          # t9 = 0000020C
    addiu   t6, $zero, 0x0C15          # t6 = 00000C15
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    mflo    t8
    sw      t8, 0x0008(a0)             # 00000008
    bne     t0, $at, lbl_800931F8
    lui     t8, 0x0C15                 # t8 = 0C150000
    sw      t7, 0x000C(a0)             # 0000000C
    sw      t9, 0x0010(a0)             # 00000010
    sw      t6, 0x0014(a0)             # 00000014
    lui     t7, 0x006C                 # t7 = 006C0000
    lui     t9, 0x0025                 # t9 = 00250000
    lui     t6, 0x000E                 # t6 = 000E0000
    ori     t8, t8, 0x0C15             # t8 = 0C150C15
    ori     t7, t7, 0x02EC             # t7 = 006C02EC
    ori     t9, t9, 0x01FF             # t9 = 002501FF
    ori     t6, t6, 0x0204             # t6 = 000E0204
    sw      t8, 0x0018(a0)             # 00000018
    sw      t7, 0x001C(a0)             # 0000001C
    sw      t9, 0x0030(a0)             # 00000030
    beq     $zero, $zero, lbl_800932A8
    sw      t6, 0x0034(a0)             # 00000034
lbl_800931F8:
    bne     t0, $zero, lbl_80093258
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lui     t8, 0x0404                 # t8 = 04040000
    lui     t9, 0x0015                 # t9 = 00150000
    ori     t8, t8, 0x233A             # t8 = 0404233A
    addiu   t7, $zero, 0x0270          # t7 = 00000270
    ori     t9, t9, 0x0C69             # t9 = 00150C69
    sw      t8, 0x000C(a0)             # 0000000C
    sw      t7, 0x0010(a0)             # 00000010
    sw      t9, 0x0014(a0)             # 00000014
    lui     t6, 0x0C6F                 # t6 = 0C6F0000
    lui     t8, 0x0080                 # t8 = 00800000
    lui     t7, 0x005F                 # t7 = 005F0000
    lui     t9, 0x0009                 # t9 = 00090000
    ori     t6, t6, 0x0C6E             # t6 = 0C6F0C6E
    ori     t8, t8, 0x0300             # t8 = 00800300
    ori     t7, t7, 0x0239             # t7 = 005F0239
    ori     t9, t9, 0x026B             # t9 = 0009026B
    sw      t6, 0x0018(a0)             # 00000018
    sw      t8, 0x001C(a0)             # 0000001C
    sw      t7, 0x0030(a0)             # 00000030
    sw      t9, 0x0034(a0)             # 00000034
    beq     $zero, $zero, lbl_800932A8
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80093258:
    bne     t0, v0, lbl_800932A8
    lui     t6, 0x0465                 # t6 = 04650000
    ori     t6, t6, 0x1E39             # t6 = 04651E39
    addiu   t8, $zero, 0x020C          # t8 = 0000020C
    addiu   t7, $zero, 0x0C10          # t7 = 00000C10
    sw      t6, 0x000C(a0)             # 0000000C
    sw      t8, 0x0010(a0)             # 00000010
    sw      t7, 0x0014(a0)             # 00000014
    lui     t9, 0x0C1C                 # t9 = 0C1C0000
    lui     t6, 0x006C                 # t6 = 006C0000
    lui     t8, 0x0025                 # t8 = 00250000
    lui     t7, 0x000E                 # t7 = 000E0000
    ori     t9, t9, 0x0C1C             # t9 = 0C1C0C1C
    ori     t6, t6, 0x02EC             # t6 = 006C02EC
    ori     t8, t8, 0x01FF             # t8 = 002501FF
    ori     t7, t7, 0x0204             # t7 = 000E0204
    sw      t9, 0x0018(a0)             # 00000018
    sw      t6, 0x001C(a0)             # 0000001C
    sw      t8, 0x0030(a0)             # 00000030
    sw      t7, 0x0034(a0)             # 00000034
lbl_800932A8:
    lw      t3, 0x0088($sp)
    lw      a3, 0x0084($sp)
    lw      v1, 0x0030(a0)             # 00000030
    sll     t6, t3, 16
    sra     t8, t6, 16
    lw      t6, 0x001C(a0)             # 0000001C
    sll     t9, a3, 16
    addu    t7, t9, t8
    addu    t9, t6, t7
    sw      t9, 0x001C(a0)             # 0000001C
    sw      v1, 0x0044(a0)             # 00000044
    lw      t8, 0x008C($sp)
    lh      t7, 0x0092($sp)
    sll     t6, t8, 16
    addu    t4, t6, t7
    lw      t7, 0x0034(a0)             # 00000034
    addu    t9, v1, t4
    addu    t6, v1, t4
    sw      t9, 0x0030(a0)             # 00000030
    sw      t6, 0x0044(a0)             # 00000044
    sw      t7, 0x0048(a0)             # 00000048
    lw      t9, 0x0044($sp)
    beql    t9, $zero, lbl_80093350
    lw      t7, 0x0030(a0)             # 00000030
    lw      t8, 0x0010(a0)             # 00000010
    addiu   t6, t8, 0x0001             # t6 = 00250200
    bne     t0, v0, lbl_8009332C
    sw      t6, 0x0010(a0)             # 00000010
    lw      t7, 0x0014(a0)             # 00000014
    lui     $at, 0x0004                # $at = 00040000
    ori     $at, $at, 0x0001           # $at = 00040001
    addu    t9, t7, $at
    sw      t9, 0x0014(a0)             # 00000014
lbl_8009332C:
    bnel    t0, v0, lbl_80093398
    subu    t6, t3, a3
    lw      t8, 0x0018(a0)             # 00000018
    lui     $at, 0xFFFC                # $at = FFFC0000
    ori     $at, $at, 0xFFFE           # $at = FFFCFFFE
    addu    t6, t8, $at
    beq     $zero, $zero, lbl_80093394
    sw      t6, 0x0018(a0)             # 00000018
    lw      t7, 0x0030(a0)             # 00000030
lbl_80093350:
    lui     $at, 0xFFFD                # $at = FFFD0000
    ori     $at, $at, 0xFFFE           # $at = FFFDFFFE
    addu    t9, t7, $at
    bne     t0, v0, lbl_80093378
    sw      t9, 0x0030(a0)             # 00000030
    lw      t8, 0x0034(a0)             # 00000034
    lui     $at, 0xFFFC                # $at = FFFC0000
    ori     $at, $at, 0xFFFE           # $at = FFFCFFFE
    addu    t6, t8, $at
    sw      t6, 0x0034(a0)             # 00000034
lbl_80093378:
    bnel    t0, $zero, lbl_80093398
    subu    t6, t3, a3
    lw      t7, 0x0048(a0)             # 00000048
    lui     $at, 0x0002                # $at = 00020000
    ori     $at, $at, 0xFFFE           # $at = 0002FFFE
    addu    t9, t7, $at
    sw      t9, 0x0048(a0)             # 00000048
lbl_80093394:
    subu    t6, t3, a3
lbl_80093398:
    addiu   t7, t6, 0x0280             # t7 = 00250480
    sll     t8, a2, 10
    div     $zero, t8, t7
    lw      v1, 0x0004($sp)
    bne     t7, $zero, lbl_800933B4
    nop
    break   # 0x01C00
lbl_800933B4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t7, $at, lbl_800933CC
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_800933CC
    nop
    break   # 0x01800
lbl_800933CC:
    mflo    t9
    sw      t9, 0x0020(a0)             # 00000020
    beq     v1, $zero, lbl_800933E4
    sw      $zero, 0x0024(a0)          # 00000024
    beq     $zero, $zero, lbl_800933E8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800933E4:
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_800933E8:
    multu   v0, a2
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    mflo    t6
    sll     t8, t6,  1
    beq     v1, $zero, lbl_80093408
    sw      t8, 0x0028(a0)             # 00000028
    beq     $zero, $zero, lbl_8009340C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80093408:
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_8009340C:
    beq     a1, $zero, lbl_8009341C
    nop
    beq     $zero, $zero, lbl_8009341C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8009341C:
    multu   v0, a2
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    mflo    t7
    sll     t9, t7,  1
    nop
    multu   t9, v1
    mflo    t6
    sw      t6, 0x003C(a0)             # 0000003C
    lw      t8, 0x0030($sp)
    or      t7, t8, t2                 # t7 = 002501FF
    sw      t7, 0x002C(a0)             # 0000002C
    lw      t9, 0x0030($sp)
    sw      a1, 0x0038(a0)             # 00000038
    sw      a1, 0x004C(a0)             # 0000004C
    or      t6, t9, t1                 # t6 = 0C1C0C1C
    sw      t6, 0x0040(a0)             # 00000040
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_80093464:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t6, 0x0068(a0)             # 00000068
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0134(t7)             # 00000134
    lw      t9, 0x0000(v0)             # 8011BA00
    lw      t8, 0x0054(a0)             # 00000054
    sh      t8, 0x0136(t9)             # 00000136
    lw      t1, 0x0000(v0)             # 8011BA00
    lw      t0, 0x0050(a0)             # 00000050
    sh      t0, 0x0138(t1)             # 00000138
    lw      t3, 0x0000(v0)             # 8011BA00
    lw      t2, 0x0064(a0)             # 00000064
    sh      t2, 0x013A(t3)             # 0000013A
    lw      t5, 0x0000(v0)             # 8011BA00
    lw      t4, 0x0060(a0)             # 00000060
    sh      t4, 0x013C(t5)             # 0000013C
    lw      t7, 0x0000(v0)             # 8011BA00
    lw      t6, 0x005C(a0)             # 0000005C
    sh      t6, 0x013E(t7)             # 0000013E
    lw      t9, 0x0000(v0)             # 8011BA00
    lw      t8, 0x0058(a0)             # 00000058
    sh      t8, 0x0140(t9)             # 00000140
    jr      $ra
    nop


func_800934C8:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBA00             # a1 = 8011BA00
    addiu   a2, $zero, 0xFFFC          # a2 = FFFFFFFC
    lw      v0, 0x0000(a1)             # 8011BA00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      v1, 0x0136(v0)             # 00000136
    and     t6, v1, a2
    bne     t6, $at, lbl_800934F4
    addiu   t7, v1, 0x0004             # t7 = 00000004
    sh      t7, 0x0136(v0)             # 00000136
    lw      v0, 0x0000(a1)             # 8011BA00
lbl_800934F4:
    lh      t8, 0x0134(v0)             # 00000134
    sw      t8, 0x0068(a0)             # 00000068
    lw      t9, 0x0000(a1)             # 8011BA00
    lh      t0, 0x0136(t9)             # 00000136
    and     t1, t0, a2
    sw      t1, 0x0054(a0)             # 00000054
    lw      t2, 0x0000(a1)             # 8011BA00
    lh      t3, 0x0138(t2)             # 00000138
    sw      t3, 0x0050(a0)             # 00000050
    lw      t4, 0x0000(a1)             # 8011BA00
    lh      t5, 0x013A(t4)             # 0000013A
    sw      t5, 0x0064(a0)             # 00000064
    lw      t6, 0x0000(a1)             # 8011BA00
    lh      t7, 0x013C(t6)             # 0000013C
    sw      t7, 0x0060(a0)             # 00000060
    lw      t8, 0x0000(a1)             # 8011BA00
    lh      t9, 0x013E(t8)             # 0000013E
    sw      t9, 0x005C(a0)             # 0000005C
    lw      t0, 0x0000(a1)             # 8011BA00
    lh      t1, 0x0140(t0)             # 00000140
    sw      t1, 0x0058(a0)             # 00000058
    jr      $ra
    nop


func_80093550:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t6, $zero, 0x0140          # t6 = 00000140
    addiu   t7, $zero, 0x00F0          # t7 = 000000F0
    addiu   t8, $zero, 0x0042          # t8 = 00000042
    sw      $zero, 0x0068(a0)          # 00000068
    sw      t6, 0x0054(a0)             # 00000054
    sw      t7, 0x0050(a0)             # 00000050
    sw      $zero, 0x005C(a0)          # 0000005C
    sw      $zero, 0x0058(a0)          # 00000058
    sw      $zero, 0x0064(a0)          # 00000064
    sw      $zero, 0x0060(a0)          # 00000060
    sw      t8, 0x0080(a0)             # 00000080
    lui     t9, 0x8000                 # t9 = 80000000
    lw      t9, 0x0300(t9)             # 80000300
    sw      v0, 0x007C(a0)             # 0000007C
    sw      v0, 0x0078(a0)             # 00000078
    sw      $zero, 0x0074(a0)          # 00000074
    sw      v0, 0x0070(a0)             # 00000070
    jal     func_80093464
    sw      t9, 0x006C(a0)             # 0000006C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800935B8:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_800935C4:
    andi    t6, a1, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_800935D4
    lw      v0, 0x0004(a0)             # 00000004
    ori     v0, v0, 0x0008             # v0 = 00000008
lbl_800935D4:
    andi    t7, a1, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_800935E8
    andi    t8, a1, 0x0004             # t8 = 00000000
    addiu   $at, $zero, 0xFFF7         # $at = FFFFFFF7
    and     v0, v0, $at
lbl_800935E8:
    beq     t8, $zero, lbl_800935F4
    andi    t9, a1, 0x0008             # t9 = 00000000
    ori     v0, v0, 0x0004             # v0 = 0000000C
lbl_800935F4:
    beq     t9, $zero, lbl_80093604
    andi    t0, a1, 0x0010             # t0 = 00000000
    addiu   $at, $zero, 0xFFFB         # $at = FFFFFFFB
    and     v0, v0, $at
lbl_80093604:
    beq     t0, $zero, lbl_80093610
    andi    t1, a1, 0x0020             # t1 = 00000000
    ori     v0, v0, 0x0010             # v0 = 0000001C
lbl_80093610:
    beq     t1, $zero, lbl_8009361C
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     v0, v0, $at
lbl_8009361C:
    sw      v0, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_80093628:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0040($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0044($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800934C8
    sw      a1, 0x004C($sp)
    lw      v0, 0x0068(s0)             # 00000068
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      a1, 0x004C($sp)
    bne     v0, $at, lbl_80093674
    lui     a0, 0x8000                 # a0 = 80000000
    jal     func_80092EB0
    addiu   a0, a0, 0x63C0             # a0 = 800063C0
    jal     func_80092EB0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_8009394C
    sw      t6, 0x0068(s0)             # 00000068
lbl_80093674:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80093688
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_8009394C
    nop
lbl_80093688:
    lw      t7, 0x0054(s0)             # 00000054
    lui     $at, 0x8010                # $at = 80100000
    sw      t7, -0x1B00($at)           # 800FE500
    lw      t8, 0x0050(s0)             # 00000050
    lui     $at, 0x8010                # $at = 80100000
    sw      t8, -0x1AFC($at)           # 800FE504
    lhu     v0, 0x0000(a1)             # 00000000
    addiu   $at, $zero, 0x1009         # $at = 00001009
    andi    t9, v0, 0x1009             # t9 = 00000000
    bne     t9, $at, lbl_800936C4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80093550
    sw      a1, 0x004C($sp)
    lw      a1, 0x004C($sp)
    lhu     v0, 0x0000(a1)             # 00000000
lbl_800936C4:
    andi    t1, v0, 0x0008             # t1 = 00000000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     t1, $at, lbl_80093744
    addiu   a0, $zero, 0x0800          # a0 = 00000800
    andi    t2, v0, 0x0800             # t2 = 00000000
    bne     a0, t2, lbl_800936F0
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    lw      t3, 0x0064(s0)             # 00000064
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    sw      t4, 0x0064(s0)             # 00000064
    lhu     v0, 0x0000(a1)             # 00000000
lbl_800936F0:
    andi    t5, v0, 0x0400             # t5 = 00000000
    bne     a2, t5, lbl_8009370C
    addiu   a3, $zero, 0x0200          # a3 = 00000200
    lw      t6, 0x0064(s0)             # 00000064
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0064(s0)             # 00000064
    lhu     v0, 0x0000(a1)             # 00000000
lbl_8009370C:
    andi    t8, v0, 0x0200             # t8 = 00000000
    bne     a3, t8, lbl_80093728
    addiu   t0, $zero, 0x0100          # t0 = 00000100
    lw      t9, 0x005C(s0)             # 0000005C
    addiu   t1, t9, 0xFFFF             # t1 = FFFFFFFF
    sw      t1, 0x005C(s0)             # 0000005C
    lhu     v0, 0x0000(a1)             # 00000000
lbl_80093728:
    andi    t2, v0, 0x0100             # t2 = 00000000
    bnel    t0, t2, lbl_80093748
    andi    t5, v0, 0x0001             # t5 = 00000000
    lw      t3, 0x005C(s0)             # 0000005C
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sw      t4, 0x005C(s0)             # 0000005C
    lhu     v0, 0x0000(a1)             # 00000000
lbl_80093744:
    andi    t5, v0, 0x0001             # t5 = 00000000
lbl_80093748:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, $zero, 0x0800          # a0 = 00000800
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    addiu   a3, $zero, 0x0200          # a3 = 00000200
    bne     t5, $at, lbl_800937D0
    addiu   t0, $zero, 0x0100          # t0 = 00000100
    andi    t6, v0, 0x0800             # t6 = 00000000
    bnel    a0, t6, lbl_80093780
    andi    t9, v0, 0x0400             # t9 = 00000000
    lw      t7, 0x0060(s0)             # 00000060
    addiu   t8, t7, 0xFFFF             # t8 = 00000000
    sw      t8, 0x0060(s0)             # 00000060
    lhu     v0, 0x0000(a1)             # 00000000
    andi    t9, v0, 0x0400             # t9 = 00000000
lbl_80093780:
    bnel    a2, t9, lbl_8009379C
    andi    t3, v0, 0x0200             # t3 = 00000000
    lw      t1, 0x0060(s0)             # 00000060
    addiu   t2, t1, 0x0001             # t2 = 00000000
    sw      t2, 0x0060(s0)             # 00000060
    lhu     v0, 0x0000(a1)             # 00000000
    andi    t3, v0, 0x0200             # t3 = 00000000
lbl_8009379C:
    bnel    a3, t3, lbl_800937B8
    andi    t6, v0, 0x0100             # t6 = 00000000
    lw      t4, 0x0058(s0)             # 00000058
    addiu   t5, t4, 0xFFFF             # t5 = 00000000
    sw      t5, 0x0058(s0)             # 00000058
    lhu     v0, 0x0000(a1)             # 00000000
    andi    t6, v0, 0x0100             # t6 = 00000000
lbl_800937B8:
    bnel    t0, t6, lbl_800937D4
    andi    t9, v0, 0x0004             # t9 = 00000000
    lw      t7, 0x0058(s0)             # 00000058
    addiu   t8, t7, 0x0001             # t8 = 00000002
    sw      t8, 0x0058(s0)             # 00000058
    lhu     v0, 0x0000(a1)             # 00000000
lbl_800937D0:
    andi    t9, v0, 0x0004             # t9 = 00000000
lbl_800937D4:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t9, $at, lbl_80093854
    lw      t5, 0x005C(s0)             # 0000005C
    lhu     v1, 0x000C(a1)             # 0000000C
    andi    t1, v1, 0x0800             # t1 = 00000000
    bnel    a0, t1, lbl_80093804
    andi    t2, v1, 0x0400             # t2 = 00000000
    lw      v0, 0x0070(s0)             # 00000070
    sltiu   v0, v0, 0x0001
    sw      v0, 0x0070(s0)             # 00000070
    lhu     v1, 0x000C(a1)             # 0000000C
    andi    t2, v1, 0x0400             # t2 = 00000000
lbl_80093804:
    bnel    a2, t2, lbl_80093820
    andi    t3, v1, 0x0200             # t3 = 00000000
    lw      v0, 0x0074(s0)             # 00000074
    sltiu   v0, v0, 0x0001
    sw      v0, 0x0074(s0)             # 00000074
    lhu     v1, 0x000C(a1)             # 0000000C
    andi    t3, v1, 0x0200             # t3 = 00000000
lbl_80093820:
    bnel    a3, t3, lbl_8009383C
    andi    t4, v1, 0x0100             # t4 = 00000000
    lw      v0, 0x0078(s0)             # 00000078
    sltiu   v0, v0, 0x0001
    sw      v0, 0x0078(s0)             # 00000078
    lhu     v1, 0x000C(a1)             # 0000000C
    andi    t4, v1, 0x0100             # t4 = 00000000
lbl_8009383C:
    bnel    t0, t4, lbl_80093854
    lw      t5, 0x005C(s0)             # 0000005C
    lw      v0, 0x007C(s0)             # 0000007C
    sltiu   v0, v0, 0x0001
    sw      v0, 0x007C(s0)             # 0000007C
    lw      t5, 0x005C(s0)             # 0000005C
lbl_80093854:
    bgezl   t5, lbl_80093864
    lw      t6, 0x0064(s0)             # 00000064
    sw      $zero, 0x005C(s0)          # 0000005C
    lw      t6, 0x0064(s0)             # 00000064
lbl_80093864:
    bgezl   t6, lbl_80093874
    lw      t7, 0x0058(s0)             # 00000058
    sw      $zero, 0x0064(s0)          # 00000064
    lw      t7, 0x0058(s0)             # 00000058
lbl_80093874:
    blezl   t7, lbl_80093884
    lw      v0, 0x0060(s0)             # 00000060
    sw      $zero, 0x0058(s0)          # 00000058
    lw      v0, 0x0060(s0)             # 00000060
lbl_80093884:
    blezl   v0, lbl_80093898
    lw      t8, 0x0074(s0)             # 00000074
    sw      $zero, 0x0060(s0)          # 00000060
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t8, 0x0074(s0)             # 00000074
lbl_80093898:
    lw      a3, 0x0070(s0)             # 00000070
    lui     a2, 0x8000                 # a2 = 80000000
    sw      t8, 0x0010($sp)
    lw      t9, 0x0078(s0)             # 00000078
    lw      a2, 0x0300(a2)             # 80000300
    or      a0, s0, $zero              # a0 = 00000000
    sw      t9, 0x0014($sp)
    lw      t1, 0x007C(s0)             # 0000007C
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    sw      t1, 0x0018($sp)
    lw      t2, 0x0054(s0)             # 00000054
    sw      t2, 0x001C($sp)
    lw      t3, 0x0050(s0)             # 00000050
    sw      t3, 0x0020($sp)
    lw      t4, 0x005C(s0)             # 0000005C
    sw      t4, 0x0024($sp)
    lw      t5, 0x0058(s0)             # 00000058
    sw      t5, 0x0028($sp)
    lw      t6, 0x0064(s0)             # 00000064
    sw      v0, 0x0030($sp)
    jal     func_80092EBC
    sw      t6, 0x002C($sp)
    lw      t7, 0x0068(s0)             # 00000068
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a0, 0x8000                 # a0 = 80000000
    bnel    t7, $at, lbl_80093918
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80092EB0
    addiu   a0, a0, 0x63C0             # a0 = 000063C0
    jal     func_80092EB0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80093918:
    jal     func_800935C4
    lw      a1, 0x0080(s0)             # 00000080
    lw      t8, 0x0068(s0)             # 00000068
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a0, 0x8000                 # a0 = 80000000
    bne     t8, $at, lbl_8009394C
    nop
    jal     func_80092EB0
    addiu   a0, a0, 0x63C0             # a0 = 800063C0
    jal     func_80092EB0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0068(s0)             # 00000068
lbl_8009394C:
    jal     func_80093464
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0040($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop


func_80093970:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    sw      $zero, 0x0000(a0)          # 00000000
    sw      $zero, 0x0004(a0)          # 00000004
    sb      v0, 0x0008(a0)             # 00000008
    sb      v0, 0x0009(a0)             # 00000009
    sb      v0, 0x000A(a0)             # 0000000A
    sb      v0, 0x000B(a0)             # 0000000B
    jr      $ra
    nop


func_80093994:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_800939A0:
    lui     v1, 0xE700                 # v1 = E7000000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lw      v0, 0x0000(a1)             # 00000000
    or      a2, v0, $zero              # a2 = 00000000
    sw      v1, 0x0000(a2)             # 00000000
    sw      $zero, 0x0004(a2)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      a3, v0, $zero              # a3 = 00000008
    lui     t6, 0xEE00                 # t6 = EE000000
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sw      t7, 0x0004(a3)             # 0000000C
    sw      t6, 0x0000(a3)             # 00000008
    addiu   v0, v0, 0x0008             # v0 = 00000010
    lw      t8, 0x0004(a0)             # 00000004
    or      a2, v0, $zero              # a2 = 00000010
    lui     t9, 0xED00                 # t9 = ED000000
    bne     t0, t8, lbl_800939F8
    lui     t1, 0x0050                 # t1 = 00500000
    ori     t1, t1, 0x03C0             # t1 = 005003C0
    sw      t1, 0x0004(a2)             # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000018
    sw      t9, 0x0000(a2)             # 00000010
lbl_800939F8:
    lw      a2, 0x0000(a0)             # 00000000
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0xC1E0             # t3 = 800FC1E0
    beq     a2, t0, lbl_80093A38
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a2, $at, lbl_80093A50
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a2, $at, lbl_80093A88
    lui     t8, 0xF900                 # t8 = F9000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a2, $at, lbl_80093AC0
    lui     t3, 0xF800                 # t3 = F8000000
    beq     $zero, $zero, lbl_80093AF4
    or      a0, v0, $zero              # a0 = 00000018
lbl_80093A38:
    or      a0, v0, $zero              # a0 = 00000018
    sw      t2, 0x0000(a0)             # 00000018
    sw      t3, 0x0004(a0)             # 0000001C
    addiu   v0, v0, 0x0008             # v0 = 00000020
    beq     $zero, $zero, lbl_80093AF4
    or      a0, v0, $zero              # a0 = 00000020
lbl_80093A50:
    or      a2, v0, $zero              # a2 = 00000020
    sw      t4, 0x0000(a2)             # 00000020
    lw      t5, 0x0008(a0)             # 00000028
    addiu   v0, v0, 0x0008             # v0 = 00000028
    or      a3, v0, $zero              # a3 = 00000028
    sw      t5, 0x0004(a2)             # 00000024
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0xC1F8             # t7 = 800FC1F8
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(a3)             # 00000028
    sw      t7, 0x0004(a3)             # 0000002C
    addiu   v0, v0, 0x0008             # v0 = 00000030
    beq     $zero, $zero, lbl_80093AF4
    or      a0, v0, $zero              # a0 = 00000030
lbl_80093A88:
    or      a2, v0, $zero              # a2 = 00000030
    sw      t8, 0x0000(a2)             # 00000030
    lw      t9, 0x0008(a0)             # 00000038
    addiu   v0, v0, 0x0008             # v0 = 00000038
    or      a3, v0, $zero              # a3 = 00000038
    sw      t9, 0x0004(a2)             # 00000034
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0xC1A0             # t2 = 800FC1A0
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      t1, 0x0000(a3)             # 00000038
    sw      t2, 0x0004(a3)             # 0000003C
    addiu   v0, v0, 0x0008             # v0 = 00000040
    beq     $zero, $zero, lbl_80093AF4
    or      a0, v0, $zero              # a0 = 00000040
lbl_80093AC0:
    or      a2, v0, $zero              # a2 = 00000040
    sw      t3, 0x0000(a2)             # 00000040
    lw      t4, 0x0008(a0)             # 00000048
    addiu   v0, v0, 0x0008             # v0 = 00000048
    or      a3, v0, $zero              # a3 = 00000048
    sw      t4, 0x0004(a2)             # 00000044
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0xC1C8             # t6 = 800FC1C8
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      t5, 0x0000(a3)             # 00000048
    sw      t6, 0x0004(a3)             # 0000004C
    addiu   v0, v0, 0x0008             # v0 = 00000050
    or      a0, v0, $zero              # a0 = 00000050
lbl_80093AF4:
    sw      v1, 0x0000(a0)             # 00000050
    sw      $zero, 0x0004(a0)          # 00000054
    addiu   v0, v0, 0x0008             # v0 = 00000058
    sw      v0, 0x0000(a1)             # 00000000
    jr      $ra
    nop
    nop


func_80093B10:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    jal     func_80002E80              # bzero
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    sw      $zero, 0x0000(a0)          # 00000000
    sw      $zero, 0x0004(a0)          # 00000004
    sb      v0, 0x0008(a0)             # 00000008
    sb      v0, 0x0009(a0)             # 00000009
    sb      v0, 0x000A(a0)             # 0000000A
    sb      v0, 0x000B(a0)             # 0000000B
    sb      $zero, 0x000C(a0)          # 0000000C
    sb      $zero, 0x000D(a0)          # 0000000D
    sb      $zero, 0x000E(a0)          # 0000000E
    sb      $zero, 0x000F(a0)          # 0000000F
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80093B60:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_800CDB00
    lw      a0, 0x0014(a1)             # 00000014
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80093B84:
    sw      a0, 0x0000($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    or      v1, a1, $zero              # v1 = 00000000
    addiu   t1, $zero, 0x0100          # t1 = 00000100
    addiu   t0, $zero, 0x00D9          # t0 = 000000D9
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    sra     t6, v0,  3
lbl_80093BA0:
    sll     t9, v0,  2
    andi    t2, t9, 0x001F             # t2 = 00000000
    andi    t7, t6, 0x001F             # t7 = 00000000
    sll     t8, t7,  1
    sll     t3, t2,  2
    addu    t4, t8, t3
    multu   t4, a3
    sra     t9, v0,  6
    andi    t2, t9, 0x001F             # t2 = 00000000
    sra     t3, v0,  1
    andi    t4, t3, 0x001F             # t4 = 00000000
    sll     t8, t2,  2
    addiu   a0, v0, 0x0001             # a0 = 00000001
    sra     t3, a0,  3
    addiu   a1, v0, 0x0002             # a1 = 00000002
    addiu   a2, v0, 0x0003             # a2 = 00000003
    mflo    t5
    addiu   v0, v0, 0x0004             # v0 = 00000004
    addiu   v1, v1, 0x0008             # v1 = 00000008
    div     $zero, t5, t0
    mflo    t6
    sll     t7, t6,  8
    bne     t0, $zero, lbl_80093C04
    nop
    break   # 0x01C00
lbl_80093C04:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t0, $at, lbl_80093C1C
    lui     $at, 0x8000                # $at = 80000000
    bne     t5, $at, lbl_80093C1C
    nop
    break   # 0x01800
lbl_80093C1C:
    addu    t5, t8, t4
    multu   t5, a3
    sll     t5, a0,  2
    andi    t8, t3, 0x001F             # t8 = 00000000
    sll     t4, t8,  1
    mflo    t6
    nop
    nop
    div     $zero, t6, t0
    bne     t0, $zero, lbl_80093C4C
    nop
    break   # 0x01C00
lbl_80093C4C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t0, $at, lbl_80093C64
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_80093C64
    nop
    break   # 0x01800
lbl_80093C64:
    mflo    t9
    andi    t6, t5, 0x001F             # t6 = 00000000
    or      t2, t7, t9                 # t2 = 00000000
    sll     t7, t6,  2
    addu    t9, t4, t7
    multu   t9, a3
    sh      t2, -0x0008(v1)            # 00000000
    sra     t5, a0,  6
    andi    t6, t5, 0x001F             # t6 = 00000000
    sra     t7, a0,  1
    andi    t9, t7, 0x001F             # t9 = 00000000
    sll     t4, t6,  2
    sra     t7, a1,  3
    mflo    t2
    nop
    nop
    div     $zero, t2, t0
    mflo    t3
    sll     t8, t3,  8
    bne     t0, $zero, lbl_80093CBC
    nop
    break   # 0x01C00
lbl_80093CBC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t0, $at, lbl_80093CD4
    lui     $at, 0x8000                # $at = 80000000
    bne     t2, $at, lbl_80093CD4
    nop
    break   # 0x01800
lbl_80093CD4:
    addu    t2, t4, t9
    multu   t2, a3
    sll     t2, a1,  2
    andi    t4, t7, 0x001F             # t4 = 00000000
    sll     t9, t4,  1
    mflo    t3
    nop
    nop
    div     $zero, t3, t0
    bne     t0, $zero, lbl_80093D04
    nop
    break   # 0x01C00
lbl_80093D04:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t0, $at, lbl_80093D1C
    lui     $at, 0x8000                # $at = 80000000
    bne     t3, $at, lbl_80093D1C
    nop
    break   # 0x01800
lbl_80093D1C:
    mflo    t5
    or      t6, t8, t5                 # t6 = 00000000
    andi    t3, t2, 0x001F             # t3 = 00000000
    sll     t8, t3,  2
    addu    t5, t9, t8
    multu   t5, a3
    sh      t6, -0x0006(v1)            # 00000002
    sra     t2, a1,  6
    andi    t3, t2, 0x001F             # t3 = 00000000
    sra     t8, a1,  1
    andi    t5, t8, 0x001F             # t5 = 00000000
    sll     t9, t3,  2
    sra     t8, a2,  3
    mflo    t6
    nop
    nop
    div     $zero, t6, t0
    mflo    t7
    sll     t4, t7,  8
    bne     t0, $zero, lbl_80093D74
    nop
    break   # 0x01C00
lbl_80093D74:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t0, $at, lbl_80093D8C
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_80093D8C
    nop
    break   # 0x01800
lbl_80093D8C:
    addu    t6, t9, t5
    multu   t6, a3
    sll     t6, a2,  2
    andi    t9, t8, 0x001F             # t9 = 00000000
    sll     t5, t9,  1
    mflo    t7
    nop
    nop
    div     $zero, t7, t0
    bne     t0, $zero, lbl_80093DBC
    nop
    break   # 0x01C00
lbl_80093DBC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t0, $at, lbl_80093DD4
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_80093DD4
    nop
    break   # 0x01800
lbl_80093DD4:
    mflo    t2
    or      t3, t4, t2                 # t3 = 00000000
    andi    t7, t6, 0x001F             # t7 = 00000000
    sll     t4, t7,  2
    addu    t2, t5, t4
    multu   t2, a3
    sh      t3, -0x0004(v1)            # 00000004
    sra     t6, a2,  6
    andi    t7, t6, 0x001F             # t7 = 00000000
    sra     t4, a2,  1
    andi    t2, t4, 0x001F             # t2 = 00000000
    sll     t5, t7,  2
    mflo    t3
    nop
    nop
    div     $zero, t3, t0
    mflo    t8
    sll     t9, t8,  8
    bne     t0, $zero, lbl_80093E28
    nop
    break   # 0x01C00
lbl_80093E28:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t0, $at, lbl_80093E40
    lui     $at, 0x8000                # $at = 80000000
    bne     t3, $at, lbl_80093E40
    nop
    break   # 0x01800
lbl_80093E40:
    addu    t3, t5, t2
    multu   t3, a3
    mflo    t8
    nop
    nop
    div     $zero, t8, t0
    mflo    t6
    or      t7, t9, t6                 # t7 = 00000000
    bne     t0, $zero, lbl_80093E6C
    nop
    break   # 0x01C00
lbl_80093E6C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t0, $at, lbl_80093E84
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_80093E84
    nop
    break   # 0x01800
lbl_80093E84:
    sh      t7, -0x0002(v1)            # 00000006
    bnel    v0, t1, lbl_80093BA0
    sra     t6, v0,  3
    jr      $ra
    nop


func_80093E98:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0008($sp)
    lui     s0, 0xE700                 # s0 = E7000000
    sw      $ra, 0x002C($sp)
    sw      s8, 0x0028($sp)
    sw      s7, 0x0024($sp)
    sw      s6, 0x0020($sp)
    sw      s5, 0x001C($sp)
    sw      s4, 0x0018($sp)
    sw      s3, 0x0014($sp)
    sw      s2, 0x0010($sp)
    sw      s1, 0x000C($sp)
    sw      a0, 0x0030($sp)
    lui     t3, 0x0F00                 # t3 = 0F000000
    addiu   t3, t3, 0x0000             # t3 = 0F000000
    or      v0, a1, $zero              # v0 = 00000000
    sw      s0, 0x0000(v0)             # 00000000
    sw      $zero, 0x0004(v0)          # 00000004
    addiu   a1, a1, 0x0008             # a1 = 00000008
    or      v1, a1, $zero              # v1 = 00000008
    lui     t6, 0xEF90                 # t6 = EF900000
    lui     t7, 0x0C18                 # t7 = 0C180000
    ori     t7, t7, 0x4344             # t7 = 0C184344
    ori     t6, t6, 0xCCF0             # t6 = EF90CCF0
    sw      t6, 0x0000(v1)             # 00000008
    sw      t7, 0x0004(v1)             # 0000000C
    addiu   a1, a1, 0x0008             # a1 = 00000010
    or      a0, a1, $zero              # a0 = 00000010
    lui     t8, 0xFC64                 # t8 = FC640000
    lui     t9, 0xF5FC                 # t9 = F5FC0000
    ori     t9, t9, 0xFD7B             # t9 = F5FCFD7B
    ori     t8, t8, 0xFE60             # t8 = FC64FE60
    sw      t8, 0x0000(a0)             # 00000010
    sw      t9, 0x0004(a0)             # 00000014
    addiu   a1, a1, 0x0008             # a1 = 00000018
    lui     $ra, 0xF200                # $ra = F2000000
    lui     s8, 0x009F                 # s8 = 009F0000
    lui     s3, 0x0708                 # s3 = 07080000
    lui     t5, 0x0008                 # t5 = 00080000
    lui     t4, 0xF548                 # t4 = F5480000
    ori     t4, t4, 0xA000             # t4 = F548A000
    ori     t5, t5, 0x0200             # t5 = 00080200
    ori     s3, s3, 0x0200             # s3 = 07080200
    ori     s8, s8, 0xC008             # s8 = 009FC008
    ori     $ra, $ra, 0x8000           # $ra = F2008000
    or      t2, $zero, $zero           # t2 = 00000000
    lui     s7, 0xF200                 # s7 = F2000000
    lui     s6, 0x0700                 # s6 = 07000000
    lui     s5, 0xF300                 # s5 = F3000000
    lui     s4, 0xE600                 # s4 = E6000000
    lui     s2, 0xF550                 # s2 = F5500000
    lui     s1, 0xFD50                 # s1 = FD500000
lbl_80093F68:
    or      v0, a1, $zero              # v0 = 00000018
    sw      s1, 0x0000(v0)             # 00000018
    sw      t3, 0x0004(v0)             # 0000001C
    addiu   a1, a1, 0x0008             # a1 = 00000020
    or      v1, a1, $zero              # v1 = 00000020
    sw      s2, 0x0000(v1)             # 00000020
    sw      s3, 0x0004(v1)             # 00000024
    addiu   a1, a1, 0x0008             # a1 = 00000028
    or      a0, a1, $zero              # a0 = 00000028
    sw      s4, 0x0000(a0)             # 00000028
    sw      $zero, 0x0004(a0)          # 0000002C
    addiu   a1, a1, 0x0008             # a1 = 00000030
    addiu   t0, $zero, 0x03BF          # t0 = 000003BF
    andi    t6, t0, 0x0FFF             # t6 = 000003BF
    sll     t7, t6, 12
    or      a3, a1, $zero              # a3 = 00000030
    or      t8, t7, s6                 # t8 = 0F184344
    ori     t9, t8, 0x001A             # t9 = 0F18435E
    sw      t9, 0x0004(a3)             # 00000034
    sw      s5, 0x0000(a3)             # 00000030
    addiu   a1, a1, 0x0008             # a1 = 00000038
    or      v0, a1, $zero              # v0 = 00000038
    sw      s0, 0x0000(v0)             # 00000038
    sw      $zero, 0x0004(v0)          # 0000003C
    addiu   a1, a1, 0x0008             # a1 = 00000040
    or      v1, a1, $zero              # v1 = 00000040
    sw      t4, 0x0000(v1)             # 00000040
    sw      t5, 0x0004(v1)             # 00000044
    addiu   a1, a1, 0x0008             # a1 = 00000048
    or      a0, a1, $zero              # a0 = 00000048
    sw      s7, 0x0000(a0)             # 00000048
    sw      s8, 0x0004(a0)             # 0000004C
    addiu   a1, a1, 0x0008             # a1 = 00000050
    or      a2, a1, $zero              # a2 = 00000050
    sw      t4, 0x0000(a2)             # 00000050
    sw      t5, 0x0004(a2)             # 00000054
    addiu   a1, a1, 0x0008             # a1 = 00000058
    or      t1, a1, $zero              # t1 = 00000058
    lui     t6, 0x00A0                 # t6 = 00A00000
    ori     t6, t6, 0x4008             # t6 = 00A04008
    sw      t6, 0x0004(t1)             # 0000005C
    sw      $ra, 0x0000(t1)            # 00000058
    addiu   a1, a1, 0x0008             # a1 = 00000060
    or      v0, a1, $zero              # v0 = 00000060
    lui     t7, 0x0118                 # t7 = 01180000
    ori     t7, t7, 0x0200             # t7 = 01180200
    sw      t7, 0x0004(v0)             # 00000064
    sw      t4, 0x0000(v0)             # 00000060
    addiu   a1, a1, 0x0008             # a1 = 00000068
    or      v1, a1, $zero              # v1 = 00000068
    lui     t8, 0xF200                 # t8 = F2000000
    lui     t9, 0x01A0                 # t9 = 01A00000
    ori     t9, t9, 0x0008             # t9 = 01A00008
    ori     t8, t8, 0x4000             # t8 = F2004000
    sw      t8, 0x0000(v1)             # 00000068
    sw      t9, 0x0004(v1)             # 0000006C
    addiu   a1, a1, 0x0008             # a1 = 00000070
    addiu   a2, t2, 0x0003             # a2 = 00000003
    sll     t6, a2,  2
    andi    t7, t6, 0x0FFF             # t7 = 00000008
    or      a0, a1, $zero              # a0 = 00000070
    lui     $at, 0xE450                # $at = E4500000
    sll     t9, t2,  2
    andi    t6, t9, 0x0FFF             # t6 = 00000008
    or      t8, t7, $at                # t8 = E4500008
    sw      t8, 0x0000(a0)             # 00000070
    sw      t6, 0x0004(a0)             # 00000074
    addiu   a1, a1, 0x0008             # a1 = 00000078
    or      v0, a1, $zero              # v0 = 00000078
    lui     t7, 0xE100                 # t7 = E1000000
    lui     t8, 0x0040                 # t8 = 00400000
    sw      t8, 0x0004(v0)             # 0000007C
    sw      t7, 0x0000(v0)             # 00000078
    addiu   a1, a1, 0x0008             # a1 = 00000080
    or      v1, a1, $zero              # v1 = 00000080
    lui     t6, 0x0800                 # t6 = 08000000
    ori     t6, t6, 0x0400             # t6 = 08000400
    lui     t9, 0xF100                 # t9 = F1000000
    sw      t9, 0x0000(v1)             # 00000080
    sw      t6, 0x0004(v1)             # 00000084
    addiu   a1, a1, 0x0008             # a1 = 00000088
    slti    $at, a2, 0x00EE
    or      t2, a2, $zero              # t2 = 00000003
    bne     $at, $zero, lbl_80093F68
    addiu   t3, t3, 0x0780             # t3 = 0F000780
    or      v1, a1, $zero              # v1 = 00000088
    sw      s0, 0x0000(v1)             # 00000088
    sw      $zero, 0x0004(v1)          # 0000008C
    addiu   a1, a1, 0x0008             # a1 = 00000090
    or      a0, a1, $zero              # a0 = 00000090
    lui     t7, 0xDF00                 # t7 = DF000000
    sw      t7, 0x0000(a0)             # 00000090
    sw      $zero, 0x0004(a0)          # 00000094
    addiu   a1, a1, 0x0008             # a1 = 00000098
    or      v0, a1, $zero              # v0 = 00000098
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0008($sp)
    lw      s1, 0x000C($sp)
    lw      s2, 0x0010($sp)
    lw      s3, 0x0014($sp)
    lw      s4, 0x0018($sp)
    lw      s5, 0x001C($sp)
    lw      s6, 0x0020($sp)
    lw      s7, 0x0024($sp)
    lw      s8, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80094114:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x006C($sp)
    lw      t6, 0x006C($sp)
    lw      t7, 0x0000(t6)             # 00000000
    sw      t7, 0x0064($sp)
    lw      v0, 0x0010(s0)             # 00000010
    beql    v0, $zero, lbl_8009414C
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFFC
    beq     $zero, $zero, lbl_80094164
    sw      v0, 0x0060($sp)
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFFC
lbl_8009414C:
    jal     func_800A1AC4
    addiu   a1, $zero, 0x0200          # a1 = 00000200
    sw      v0, 0x0060($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80093B84
    or      a1, v0, $zero              # a1 = 00000000
lbl_80094164:
    lw      v0, 0x0014(s0)             # 00000014
    beql    v0, $zero, lbl_8009417C
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFFC
    beq     $zero, $zero, lbl_80094198
    or      a3, v0, $zero              # a3 = 00000000
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFFC
lbl_8009417C:
    jal     func_800A1AC4
    addiu   a1, $zero, 0x2338          # a1 = 00002338
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80093E98
    sw      v0, 0x005C($sp)
    lw      a3, 0x005C($sp)
lbl_80094198:
    lui     t0, 0xE700                 # t0 = E7000000
    lw      t8, 0x0064($sp)
    addiu   t9, t8, 0x0008             # t9 = 00000008
    sw      t9, 0x0064($sp)
    sw      $zero, 0x0004(t8)          # 00000004
    sw      t0, 0x0000(t8)             # 00000000
    lw      t1, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t1, $at, lbl_800941E4
    lw      t6, 0x0064($sp)
    lw      t2, 0x0064($sp)
    lui     t5, 0x0050                 # t5 = 00500000
    ori     t5, t5, 0x03C0             # t5 = 005003C0
    addiu   t3, t2, 0x0008             # t3 = 00000008
    sw      t3, 0x0064($sp)
    lui     t4, 0xED00                 # t4 = ED000000
    sw      t4, 0x0000(t2)             # 00000000
    sw      t5, 0x0004(t2)             # 00000004
    lw      t6, 0x0064($sp)
lbl_800941E4:
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     t3, 0xFB00                 # t3 = FB000000
    addiu   t7, t6, 0x0008             # t7 = 00000008
    sw      t7, 0x0064($sp)
    sw      t8, 0x0000(t6)             # 00000000
    lw      t9, 0x0008(s0)             # 00000008
    sw      t9, 0x0004(t6)             # 00000004
    lw      t1, 0x0064($sp)
    addiu   t2, t1, 0x0008             # t2 = 00000008
    sw      t2, 0x0064($sp)
    sw      t3, 0x0000(t1)             # 00000000
    lw      t4, 0x000C(s0)             # 0000000C
    lui     t7, 0xFD10                 # t7 = FD100000
    sw      t4, 0x0004(t1)             # 00000004
    lw      t5, 0x0064($sp)
    addiu   t6, t5, 0x0008             # t6 = 005003C8
    sw      t6, 0x0064($sp)
    sw      t7, 0x0000(t5)             # 005003C0
    lw      t8, 0x0060($sp)
    lui     t6, 0x0700                 # t6 = 07000000
    lui     t2, 0xE800                 # t2 = E8000000
    sw      t8, 0x0004(t5)             # 005003C4
    lw      t9, 0x0064($sp)
    addiu   t1, t9, 0x0008             # t1 = 00000010
    sw      t1, 0x0064($sp)
    sw      $zero, 0x0004(t9)          # 0000000C
    sw      t2, 0x0000(t9)             # 00000008
    lw      t3, 0x0064($sp)
    lui     t5, 0xF500                 # t5 = F5000000
    ori     t5, t5, 0x0100             # t5 = F5000100
    addiu   t4, t3, 0x0008             # t4 = FB000008
    sw      t4, 0x0064($sp)
    sw      t6, 0x0004(t3)             # FB000004
    sw      t5, 0x0000(t3)             # FB000000
    lw      t7, 0x0064($sp)
    lui     t9, 0xE600                 # t9 = E6000000
    lui     t3, 0xF000                 # t3 = F0000000
    addiu   t8, t7, 0x0008             # t8 = FD100008
    sw      t8, 0x0064($sp)
    sw      $zero, 0x0004(t7)          # FD100004
    sw      t9, 0x0000(t7)             # FD100000
    lw      t1, 0x0064($sp)
    lui     t4, 0x073F                 # t4 = 073F0000
    ori     t4, t4, 0xC000             # t4 = 073FC000
    addiu   t2, t1, 0x0008             # t2 = 00000018
    sw      t2, 0x0064($sp)
    sw      t4, 0x0004(t1)             # 00000014
    sw      t3, 0x0000(t1)             # 00000010
    lw      t5, 0x0064($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t6, t5, 0x0008             # t6 = F5000108
    sw      t6, 0x0064($sp)
    sw      $zero, 0x0004(t5)          # F5000104
    sw      t0, 0x0000(t5)             # F5000100
    lw      t7, 0x0064($sp)
    addiu   t8, t7, 0x0008             # t8 = FD100008
    sw      t8, 0x0064($sp)
    sw      a3, 0x0004(t7)             # FD100004
    sw      t9, 0x0000(t7)             # FD100000
    lw      t1, 0x0064($sp)
    addiu   t2, t1, 0x0008             # t2 = 00000018
    sw      t2, 0x0064($sp)
    sw      $zero, 0x0004(t1)          # 00000014
    sw      t0, 0x0000(t1)             # 00000010
    lw      t3, 0x0064($sp)
    lw      t4, 0x006C($sp)
    sw      t3, 0x0000(t4)             # 073FC000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80094300:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0010(a2)             # 00000010
    addiu   a0, $zero, 0x0200          # a0 = 00000200
    bnel    t6, $zero, lbl_8009433C
    lw      t7, 0x0014(a2)             # 00000014
    jal     func_800CDA20
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80093B84
    sw      v0, 0x0010(a0)             # 00000010
    lw      a2, 0x0018($sp)
    lw      t7, 0x0014(a2)             # 00000014
lbl_8009433C:
    addiu   a0, $zero, 0x2338          # a0 = 00002338
    bnel    t7, $zero, lbl_80094364
    lw      $ra, 0x0014($sp)
    jal     func_800CDA20
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80093E98
    sw      v0, 0x0014(a0)             # 00000014
    lw      $ra, 0x0014($sp)
lbl_80094364:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80094370:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    sw      $zero, 0x0000(a0)          # 00000000
    sw      $zero, 0x0004(a0)          # 00000004
    sb      v0, 0x0008(a0)             # 00000008
    sb      v0, 0x0009(a0)             # 00000009
    sb      v0, 0x000A(a0)             # 0000000A
    sb      v0, 0x000B(a0)             # 0000000B
    sb      $zero, 0x000C(a0)          # 0000000C
    sb      $zero, 0x000D(a0)          # 0000000D
    sb      $zero, 0x000E(a0)          # 0000000E
    sb      v0, 0x000F(a0)             # 0000000F
    jr      $ra
    nop


func_800943A4:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_800943B0:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      $ra, 0x002C($sp)
    sw      s8, 0x0028($sp)
    sw      s7, 0x0024($sp)
    sw      s6, 0x0020($sp)
    sw      s5, 0x001C($sp)
    sw      s4, 0x0018($sp)
    sw      s3, 0x0014($sp)
    sw      s2, 0x0010($sp)
    sw      s1, 0x000C($sp)
    sw      s0, 0x0008($sp)
    sw      a1, 0x00A4($sp)
    lw      t7, 0x0000(a0)             # 00000000
    lw      t6, 0x00A4($sp)
    lui     t3, 0x0E00                 # t3 = 0E000000
    addiu   t3, t3, 0x0000             # t3 = 0E000000
    bne     t7, $zero, lbl_80094400
    lw      v0, 0x0000(t6)             # 00000000
    beq     $zero, $zero, lbl_80094404
    addiu   v1, $zero, 0x0003          # v1 = 00000003
lbl_80094400:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80094404:
    or      a1, v0, $zero              # a1 = 00000000
    lui     t8, 0xE700                 # t8 = E7000000
    sw      t8, 0x0000(a1)             # 00000000
    sw      $zero, 0x0004(a1)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    lw      t9, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t8, 0xEF00                 # t8 = EF000000
    bne     t9, $at, lbl_80094448
    ori     t8, t8, 0x0C30             # t8 = EF000C30
    or      a1, v0, $zero              # a1 = 00000008
    lui     t7, 0x0050                 # t7 = 00500000
    ori     t7, t7, 0x03C0             # t7 = 005003C0
    lui     t6, 0xED00                 # t6 = ED000000
    sw      t6, 0x0000(a1)             # 00000008
    sw      t7, 0x0004(a1)             # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000010
lbl_80094448:
    or      a1, v0, $zero              # a1 = 00000010
    lui     t9, 0x0F0A                 # t9 = 0F0A0000
    ori     t9, t9, 0x4004             # t9 = 0F0A4004
    sw      t9, 0x0004(a1)             # 00000014
    sw      t8, 0x0000(a1)             # 00000010
    addiu   v0, v0, 0x0008             # v0 = 00000018
    or      a2, v0, $zero              # a2 = 00000018
    lui     t6, 0xFC30                 # t6 = FC300000
    lui     t7, 0x5566                 # t7 = 55660000
    ori     t7, t7, 0xDB6D             # t7 = 5566DB6D
    ori     t6, t6, 0xB261             # t6 = FC30B261
    sw      t6, 0x0000(a2)             # 00000018
    sw      t7, 0x0004(a2)             # 0000001C
    addiu   v0, v0, 0x0008             # v0 = 00000020
    or      a3, v0, $zero              # a3 = 00000020
    lui     t8, 0xFA00                 # t8 = FA000000
    sw      t8, 0x0000(a3)             # 00000020
    lw      t9, 0x0008(a0)             # 00000008
    addiu   v0, v0, 0x0008             # v0 = 00000028
    or      t0, v0, $zero              # t0 = 00000028
    sw      t9, 0x0004(a3)             # 00000024
    lui     t6, 0xFB00                 # t6 = FB000000
    sw      t6, 0x0000(t0)             # 00000028
    lw      t7, 0x000C(a0)             # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000030
    or      t2, $zero, $zero           # t2 = 00000000
    sw      t7, 0x0004(t0)             # 0000002C
    andi    a0, v1, 0x0007             # a0 = 00000000
    sll     a0, a0, 21
    lui     $at, 0xFD00                # $at = FD000000
    or      t8, a0, $at                # t8 = FD000000
    lui     $at, 0x0010                # $at = 00100000
    or      t9, t8, $at                # t9 = FD100000
    lui     $at, 0xF500                # $at = F5000000
    or      $ra, a0, $at               # $ra = F5000000
    lui     $at, 0x0010                # $at = 00100000
    or      $ra, $ra, $at              # $ra = F5100000
    ori     t6, $ra, 0xA000            # t6 = F510A000
    lui     s8, 0x0400                 # s8 = 04000000
    lui     s4, 0x004F                 # s4 = 004F0000
    lui     s2, 0x0008                 # s2 = 00080000
    lui     t4, 0x0708                 # t4 = 07080000
    ori     t4, t4, 0x0200             # t4 = 07080200
    ori     s2, s2, 0x0200             # s2 = 00080200
    ori     s4, s4, 0xC014             # s4 = 004FC014
    ori     s8, s8, 0x0400             # s8 = 04000400
    sw      t6, 0x0030($sp)
    sw      t9, 0x0038($sp)
    lui     s7, 0xF100                 # s7 = F1000000
    lui     s6, 0xE100                 # s6 = E1000000
    lui     s5, 0xE450                 # s5 = E4500000
    lui     s3, 0xF200                 # s3 = F2000000
    lui     s1, 0x0700                 # s1 = 07000000
    lui     s0, 0xF300                 # s0 = F3000000
    lui     t5, 0xE600                 # t5 = E6000000
lbl_80094524:
    lw      t7, 0x0038($sp)
    or      v1, v0, $zero              # v1 = 00000030
    sw      t3, 0x0004(v1)             # 00000034
    addiu   v0, v0, 0x0008             # v0 = 00000038
    sw      t7, 0x0000(v1)             # 00000030
    or      a0, v0, $zero              # a0 = 00000038
    sw      $ra, 0x0000(a0)            # 00000038
    sw      t4, 0x0004(a0)             # 0000003C
    addiu   v0, v0, 0x0008             # v0 = 00000040
    or      a1, v0, $zero              # a1 = 00000040
    sw      t5, 0x0000(a1)             # 00000040
    sw      $zero, 0x0004(a1)          # 00000044
    addiu   v0, v0, 0x0008             # v0 = 00000048
    addiu   a3, $zero, 0x077F          # a3 = 0000077F
    andi    t8, a3, 0x0FFF             # t8 = 0000077F
    sll     t9, t8, 12
    or      a2, v0, $zero              # a2 = 00000048
    or      t6, t9, s1                 # t6 = FF100000
    ori     t7, t6, 0x001A             # t7 = FF10001A
    sw      t7, 0x0004(a2)             # 0000004C
    sw      s0, 0x0000(a2)             # 00000048
    addiu   v0, v0, 0x0008             # v0 = 00000050
    or      v1, v0, $zero              # v1 = 00000050
    lui     t8, 0xE700                 # t8 = E7000000
    sw      t8, 0x0000(v1)             # 00000050
    sw      $zero, 0x0004(v1)          # 00000054
    addiu   v0, v0, 0x0008             # v0 = 00000058
    lw      t9, 0x0030($sp)
    or      a0, v0, $zero              # a0 = 00000058
    sw      s2, 0x0004(a0)             # 0000005C
    addiu   v0, v0, 0x0008             # v0 = 00000060
    sw      t9, 0x0000(a0)             # 00000058
    or      a1, v0, $zero              # a1 = 00000060
    sw      s3, 0x0000(a1)             # 00000060
    sw      s4, 0x0004(a1)             # 00000064
    addiu   v0, v0, 0x0008             # v0 = 00000068
    addiu   t1, t2, 0x0006             # t1 = 00000006
    sll     t6, t1,  2
    andi    t7, t6, 0x0FFF             # t7 = 00000000
    or      t0, v0, $zero              # t0 = 00000068
    sll     t9, t2,  2
    andi    t6, t9, 0x0FFF             # t6 = 00000000
    or      t8, t7, s5                 # t8 = E4500000
    sw      t8, 0x0000(t0)             # 00000068
    sw      t6, 0x0004(t0)             # 0000006C
    addiu   v0, v0, 0x0008             # v0 = 00000070
    or      v1, v0, $zero              # v1 = 00000070
    sw      s6, 0x0000(v1)             # 00000070
    sw      $zero, 0x0004(v1)          # 00000074
    addiu   v0, v0, 0x0008             # v0 = 00000078
    or      a0, v0, $zero              # a0 = 00000078
    sw      s7, 0x0000(a0)             # 00000078
    sw      s8, 0x0004(a0)             # 0000007C
    addiu   v0, v0, 0x0008             # v0 = 00000080
    slti    $at, t1, 0x00EB
    or      t2, t1, $zero              # t2 = 00000006
    bne     $at, $zero, lbl_80094524
    addiu   t3, t3, 0x0F00             # t3 = 0E000F00
    or      v1, v0, $zero              # v1 = 00000080
    lui     t7, 0xE700                 # t7 = E7000000
    sw      t7, 0x0000(v1)             # 00000080
    sw      $zero, 0x0004(v1)          # 00000084
    addiu   v0, v0, 0x0008             # v0 = 00000088
    lw      t8, 0x00A4($sp)
    sw      v0, 0x0000(t8)             # E4500000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0008($sp)
    lw      s1, 0x000C($sp)
    lw      s2, 0x0010($sp)
    lw      s3, 0x0014($sp)
    lw      s4, 0x0018($sp)
    lw      s5, 0x001C($sp)
    lw      s6, 0x0020($sp)
    lw      s7, 0x0024($sp)
    lw      s8, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000
    nop
    nop
