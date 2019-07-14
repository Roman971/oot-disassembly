# "VIEW" part of the code file
#
# Handles the "VIEW" structure/variables, which is used for the active camera.
#
# General Documentation about the camera "VIEW" structure:
# https://wiki.cloudmodding.com/oot/Cameras#VIEW_Structure
#
# Starts at VRAM: 800914E0 / VROM: B07440
#

.section .text
func_800914E0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800ACB00
    addiu   a0, a0, 0xCF10             # a0 = 8011CF10
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xCF10             # a1 = 8011CF10
    jal     func_800A23CC
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8009151C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a3, 0x0024($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x74B0($at)          # 80108B50
    c.lt.s  $f4, $f12
    nop
    bc1f    lbl_80091554
    nop
    beq     $zero, $zero, lbl_8009156C
    addiu   a0, $zero, 0x03E8          # a0 = 000003E8
lbl_80091554:
    jal     func_800D0DC0
    sb      a3, 0x0027($sp)
    trunc.w.s $f6, $f0
    lbu     a3, 0x0027($sp)
    mfc1    a0, $f6
    nop
lbl_8009156C:
    slti    $at, a0, 0x03E8
    beq     $at, $zero, lbl_800915BC
    lbu     v0, 0x001F($sp)
    beql    v0, $zero, lbl_800915C0
    lw      $ra, 0x0014($sp)
    beq     a3, $zero, lbl_800915BC
    sll     t7, a0,  8
    subu    t7, t7, a0
    addiu   $at, $zero, 0x03E8         # $at = 000003E8
    div     $zero, t7, $at
    mflo    t8
    subu    v1, v0, t8
    blez    v1, lbl_800915BC
    lui     v0, 0x8012                 # v0 = 80120000
    lbu     t9, 0x0023($sp)
    lui     $at, 0x8012                # $at = 80120000
    addiu   v0, v0, 0xCF10             # v0 = 8011CF10
    sb      v1, -0x2FE6($at)           # 8011D01A
    sb      a3, 0x010C(v0)             # 8011D01C
    sb      t9, 0x010B(v0)             # 8011D01B
lbl_800915BC:
    lw      $ra, 0x0014($sp)
lbl_800915C0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800915CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a3, 0x0024($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x74AC($at)          # 80108B54
    c.lt.s  $f4, $f12
    nop
    bc1f    lbl_80091604
    nop
    beq     $zero, $zero, lbl_8009161C
    addiu   a0, $zero, 0x03E8          # a0 = 000003E8
lbl_80091604:
    jal     func_800D0DC0
    sb      a3, 0x0027($sp)
    trunc.w.s $f6, $f0
    lbu     a3, 0x0027($sp)
    mfc1    a0, $f6
    nop
lbl_8009161C:
    slti    $at, a0, 0x03E8
    beq     $at, $zero, lbl_8009168C
    lbu     a1, 0x001F($sp)
    beql    a1, $zero, lbl_80091690
    lw      $ra, 0x0014($sp)
    beq     a3, $zero, lbl_8009168C
    lui     v0, 0x8012                 # v0 = 80120000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xCF50             # v1 = 8011CF50
    addiu   v0, v0, 0xCF10             # v0 = 8011CF10
    lbu     t7, 0x0004(v0)             # 8011CF14
lbl_80091648:
    bne     t7, $zero, lbl_80091680
    sll     t8, a0,  8
    subu    t8, t8, a0
    addiu   $at, $zero, 0x03E8         # $at = 000003E8
    div     $zero, t8, $at
    mflo    t9
    subu    v1, a1, t9
    blezl   v1, lbl_80091690
    lw      $ra, 0x0014($sp)
    lbu     t0, 0x0023($sp)
    sb      v1, 0x0004(v0)             # 8011CF14
    sb      a3, 0x0084(v0)             # 8011CF94
    beq     $zero, $zero, lbl_8009168C
    sb      t0, 0x0044(v0)             # 8011CF54
lbl_80091680:
    addiu   v0, v0, 0x0001             # v0 = 8011CF11
    bnel    v0, v1, lbl_80091648
    lbu     t7, 0x0004(v0)             # 8011CF15
lbl_8009168C:
    lw      $ra, 0x0014($sp)
lbl_80091690:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8009169C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800ACE10
    addiu   a0, a0, 0xCF10             # a0 = 8011CF10
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xD500             # v0 = 8011D500
    lui     t6, 0x8009                 # t6 = 80090000
    addiu   t6, t6, 0x14E0             # t6 = 800914E0
    sw      t6, 0x0460(v0)             # 8011D960
    sw      $zero, 0x0464(v0)          # 8011D964
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800916D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x26A0(t7)            # 8011D960
    lui     t6, 0x8009                 # t6 = 80090000
    addiu   t6, t6, 0x14E0             # t6 = 800914E0
    bne     t6, t7, lbl_80091718
    lui     a0, 0x8012                 # a0 = 80120000
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x269C(t8)            # 8011D964
    lui     $at, 0x8012                # $at = 80120000
    bne     t8, $zero, lbl_80091718
    nop
    sw      $zero, -0x26A0($at)        # 8011D960
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x269C($at)        # 8011D964
lbl_80091718:
    jal     func_800ACE48
    addiu   a0, a0, 0xCF10             # a0 = 8011CF10
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80091730:
    lui     v0, 0x8012                 # v0 = 80120000
    lbu     v0, -0x2852(v0)            # 8011D7AE
    xori    v0, v0, 0x0001             # v0 = 80120001
    sltiu   v0, v0, 0x0001
    jr      $ra
    nop


func_80091748:
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    lui     $at, 0x8012                # $at = 80120000
    sb      t6, -0x2FEC($at)           # 8011D014
    jr      $ra
    nop


func_8009175C:
    lui     $at, 0x8012                # $at = 80120000
    sb      $zero, -0x2FEC($at)        # 8011D014
    jr      $ra
    nop


func_8009176C:
    sltu    t6, $zero, a0
    lui     $at, 0x8012                # $at = 80120000
    sb      t6, -0x2FEB($at)           # 8011D015
    jr      $ra
    nop


func_80091780:
    addiu   a2, $zero, 0x01FF          # a2 = 000001FF
    lw      t6, 0x000C(a1)             # 0000000C
    lw      t7, 0x0008(a1)             # 00000008
    lw      t8, 0x0004(a1)             # 00000004
    lw      t9, 0x0000(a1)             # 00000000
    subu    v0, t6, t7
    sll     t0, v0,  1
    subu    v1, t8, t9
    sll     t1, v1,  1
    sh      t0, 0x0000(a0)             # 00000000
    sh      t1, 0x0002(a0)             # 00000002
    sh      a2, 0x0004(a0)             # 00000004
    sh      $zero, 0x0006(a0)          # 00000006
    lw      t2, 0x0008(a1)             # 00000008
    sll     t3, t2,  1
    addu    t4, t3, v0
    sll     t5, t4,  1
    sh      t5, 0x0008(a0)             # 00000008
    lw      t6, 0x0000(a1)             # 00000000
    sh      a2, 0x000C(a0)             # 0000000C
    sh      $zero, 0x000E(a0)          # 0000000E
    sll     t7, t6,  1
    addu    t8, t7, v1
    sll     t9, t8,  1
    sh      t9, 0x000A(a0)             # 0000000A
    jr      $ra
    nop


func_800917EC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_800CDA20
    addiu   a0, $zero, 0x0128          # a0 = 00000128
    beq     v0, $zero, lbl_80091824
    sw      v0, 0x001C($sp)
    or      a0, v0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800D5E30
    addiu   a2, $zero, 0x0128          # a2 = 00000128
    lw      a0, 0x001C($sp)
    jal     func_80091858
    lw      a1, 0x0020($sp)
lbl_80091824:
    lw      v0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80091838:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_800CDB00
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80091858:
# Initializes the "VIEW" variables
# A0 = "VIEW" struct ptr
# A1 = Graphics Context ptr
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   v0, v0, 0xC190             # v0 = 800FC190
    sw      $ra, 0x0014($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     $at, 0x4648                # $at = 46480000
    mtc1    $at, $f8                   # $f8 = 12800.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f10                  # $f10 = -1.00
    lui     t8, 0x5649                 # t8 = 56490000
    addiu   t6, $zero, 0x00F0          # t6 = 000000F0
    addiu   t7, $zero, 0x0140          # t7 = 00000140
    ori     t8, t8, 0x4557             # t8 = 56494557
    sw      a1, 0x0004(a0)             # 00000004
    sw      $zero, 0x0008(a0)          # 00000008
    sw      t6, 0x000C(a0)             # 0000000C
    sw      $zero, 0x0010(a0)          # 00000010
    sw      t7, 0x0014(a0)             # 00000014
    sw      t8, 0x0000(a0)             # 00000000
    swc1    $f2, 0x0024(a0)            # 00000024
    swc1    $f2, 0x0044(a0)            # 00000044
    swc1    $f4, 0x0018(a0)            # 00000018
    swc1    $f0, 0x0028(a0)            # 00000028
    swc1    $f0, 0x002C(a0)            # 0000002C
    swc1    $f0, 0x0034(a0)            # 00000034
    swc1    $f0, 0x0040(a0)            # 00000040
    swc1    $f0, 0x0048(a0)            # 00000048
    swc1    $f6, 0x001C(a0)            # 0000001C
    swc1    $f8, 0x0020(a0)            # 00000020
    swc1    $f10, 0x0030(a0)           # 00000030
    lw      t9, 0x0000(v0)             # 800FC190
    addiu   t0, $zero, 0x0007          # t0 = 00000007
    beql    t9, $zero, lbl_80091900
    sw      $zero, 0x0124(a0)          # 00000124
    sw      $zero, 0x0000(v0)          # 800FC190
    sw      $zero, 0x0124(a0)          # 00000124
lbl_80091900:
    jal     func_80091CF0
    sw      t0, 0x0120(a0)             # 00000120
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80091918:
    lwc1    $f0, 0x0000(a1)            # 00000000
    lwc1    $f4, 0x0000(a2)            # 00000000
    c.eq.s  $f4, $f0
    nop
    bc1fl   lbl_8009195C
    lw      t7, 0x0000(a1)             # 00000000
    lwc1    $f6, 0x0008(a2)            # 00000008
    lwc1    $f8, 0x0008(a1)            # 00000008
    lui     $at, 0x8011                # $at = 80110000
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_8009195C
    lw      t7, 0x0000(a1)             # 00000000
    lwc1    $f10, -0x74A0($at)         # 80108B60
    add.s   $f16, $f0, $f10
    swc1    $f16, 0x0000(a1)           # 00000000
    lw      t7, 0x0000(a1)             # 00000000
lbl_8009195C:
    lw      t2, 0x0120(a0)             # 00000120
    sw      t7, 0x0028(a0)             # 00000028
    lw      t6, 0x0004(a1)             # 00000004
    ori     t3, t2, 0x0001             # t3 = 00000001
    sw      t6, 0x002C(a0)             # 0000002C
    lw      t7, 0x0008(a1)             # 00000008
    sw      t7, 0x0030(a0)             # 00000030
    lw      t9, 0x0000(a2)             # 00000000
    sw      t9, 0x0034(a0)             # 00000034
    lw      t8, 0x0004(a2)             # 00000004
    sw      t8, 0x0038(a0)             # 00000038
    lw      t9, 0x0008(a2)             # 00000008
    sw      t9, 0x003C(a0)             # 0000003C
    lw      t1, 0x0000(a3)             # 00000000
    sw      t1, 0x0040(a0)             # 00000040
    lw      t0, 0x0004(a3)             # 00000004
    sw      t0, 0x0044(a0)             # 00000044
    lw      t1, 0x0008(a3)             # 00000008
    sw      t3, 0x0120(a0)             # 00000120
    sw      t1, 0x0048(a0)             # 00000048
    jr      $ra
    nop


func_800919B4:
    lw      t7, 0x0000(a1)             # 00000000
    sw      t7, 0x0028(a0)             # 00000028
    lw      t6, 0x0004(a1)             # 00000004
    sw      t6, 0x002C(a0)             # 0000002C
    lw      t7, 0x0008(a1)             # 00000008
    sw      t7, 0x0030(a0)             # 00000030
    lw      t9, 0x0000(a2)             # 00000000
    sw      t9, 0x0034(a0)             # 00000034
    lw      t8, 0x0004(a2)             # 00000004
    sw      t8, 0x0038(a0)             # 00000038
    lw      t9, 0x0008(a2)             # 00000008
    sw      t9, 0x003C(a0)             # 0000003C
    lw      t1, 0x0000(a3)             # 00000000
    sw      t1, 0x0040(a0)             # 00000040
    lw      t0, 0x0004(a3)             # 00000004
    sw      t0, 0x0044(a0)             # 00000044
    lw      t1, 0x0008(a3)             # 00000008
    sw      t1, 0x0048(a0)             # 00000048
    jr      $ra
    nop


func_80091A04:
    mtc1    a1, $f12                   # $f12 = 0.00
    nop
    lw      t6, 0x0120(a0)             # 00000120
    swc1    $f12, 0x0024(a0)           # 00000024
    ori     t7, t6, 0x0004             # t7 = 00000004
    sw      t7, 0x0120(a0)             # 00000120
    jr      $ra
    nop


func_80091A24:
    lwc1    $f4, 0x0024(a0)            # 00000024
    swc1    $f4, 0x0000(a1)            # 00000000
    jr      $ra
    nop


func_80091A34:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      a3, 0x000C($sp)
    lw      t6, 0x0120(a0)             # 00000120
    swc1    $f12, 0x0018(a0)           # 00000018
    swc1    $f14, 0x001C(a0)           # 0000001C
    lwc1    $f4, 0x000C($sp)
    ori     t7, t6, 0x0004             # t7 = 00000004
    sw      t7, 0x0120(a0)             # 00000120
    swc1    $f4, 0x0020(a0)            # 00000020
    jr      $ra
    nop


func_80091A64:
    lwc1    $f4, 0x0018(a0)            # 00000018
    swc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x001C(a0)            # 0000001C
    swc1    $f6, 0x0000(a2)            # 00000000
    lwc1    $f8, 0x0020(a0)            # 00000020
    swc1    $f8, 0x0000(a3)            # 00000000
    jr      $ra
    nop


func_80091A84:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      a3, 0x000C($sp)
    lw      t6, 0x0120(a0)             # 00000120
    swc1    $f12, 0x0018(a0)           # 00000018
    swc1    $f14, 0x001C(a0)           # 0000001C
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f4, 0x000C($sp)
    mtc1    $at, $f6                   # $f6 = 1.00
    ori     t7, t6, 0x0008             # t7 = 00000008
    sw      t7, 0x0120(a0)             # 00000120
    swc1    $f4, 0x0020(a0)            # 00000020
    swc1    $f6, 0x0024(a0)            # 00000024
    jr      $ra
    nop


func_80091AC0:
    lwc1    $f4, 0x0018(a0)            # 00000018
    swc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x001C(a0)            # 0000001C
    swc1    $f6, 0x0000(a2)            # 00000000
    lwc1    $f8, 0x0020(a0)            # 00000020
    swc1    $f8, 0x0000(a3)            # 00000000
    jr      $ra
    nop


func_80091AE0:
    lw      t7, 0x0000(a1)             # 00000000
    lw      t8, 0x0120(a0)             # 00000120
    sw      t7, 0x0008(a0)             # 00000008
    lw      t6, 0x0004(a1)             # 00000004
    ori     t9, t8, 0x0002             # t9 = 00000002
    sw      t6, 0x000C(a0)             # 0000000C
    lw      t7, 0x0008(a1)             # 00000008
    sw      t7, 0x0010(a0)             # 00000010
    lw      t6, 0x000C(a1)             # 0000000C
    sw      t9, 0x0120(a0)             # 00000120
    sw      t6, 0x0014(a0)             # 00000014
    jr      $ra
    nop


func_80091B14:
    lw      t7, 0x0008(a0)             # 00000008
    sw      t7, 0x0000(a1)             # 00000000
    lw      t6, 0x000C(a0)             # 0000000C
    sw      t6, 0x0004(a1)             # 00000004
    lw      t7, 0x0010(a0)             # 00000010
    sw      t7, 0x0008(a1)             # 00000008
    lw      t6, 0x0014(a0)             # 00000014
    sw      t6, 0x000C(a1)             # 0000000C
    jr      $ra
    nop


func_80091B3C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t0, 0x0004(s0)             # 00000004
    jal     func_80099650
    sw      t0, 0x0054($sp)
    lw      t0, 0x0054($sp)
    or      t1, v0, $zero              # t1 = 00000000
    bgez    v0, lbl_80091B6C
    sw      $zero, 0x0050($sp)
    or      t1, $zero, $zero           # t1 = 00000000
lbl_80091B6C:
    slti    $at, t1, 0x0079
    bne     $at, $zero, lbl_80091B7C
    lw      t7, 0x0050($sp)
    addiu   t1, $zero, 0x0078          # t1 = 00000078
lbl_80091B7C:
    lw      t6, 0x0010(s0)             # 00000010
    lw      t8, 0x0008(s0)             # 00000008
    lw      t9, 0x0014(s0)             # 00000014
    addu    t2, t6, t7
    lw      t6, 0x000C(s0)             # 0000000C
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f0                   # $f0 = 4.00
    addu    t3, t8, t1
    subu    t4, t9, t7
    subu    t5, t6, t1
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t9, 0xE700                 # t9 = E7000000
    mtc1    t2, $f4                    # $f4 = 0.00
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    cvt.s.w $f6, $f4
    mtc1    t3, $f16                   # $f16 = 0.00
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     $at, 0xED00                # $at = ED000000
    cvt.s.w $f18, $f16
    mul.s   $f8, $f6, $f0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    mul.s   $f4, $f18, $f0
    trunc.w.s $f10, $f8
    mtc1    t4, $f8                    # $f8 = 0.00
    trunc.w.s $f6, $f4
    mfc1    t8, $f10
    mtc1    t5, $f4                    # $f4 = 0.00
    cvt.s.w $f10, $f8
    andi    t9, t8, 0x0FFF             # t9 = 00000008
    sll     t7, t9, 12
    mfc1    t9, $f6
    or      t6, t7, $at                # t6 = ED000008
    cvt.s.w $f6, $f4
    mul.s   $f16, $f10, $f0
    andi    t7, t9, 0x0FFF             # t7 = 00000008
    or      a2, t6, t7                 # a2 = ED000008
    sw      a2, 0x0000(v0)             # 00000000
    mul.s   $f8, $f6, $f0
    trunc.w.s $f18, $f16
    trunc.w.s $f10, $f8
    mfc1    t9, $f18
    nop
    andi    t6, t9, 0x0FFF             # t6 = 00000008
    mfc1    t9, $f10
    sll     t7, t6, 12
    andi    t6, t9, 0x0FFF             # t6 = 00000008
    or      $ra, t7, t6                # $ra = 00000008
    sw      $ra, 0x0004(v0)            # 00000004
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    sw      v1, 0x0020($sp)
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    lw      t6, 0x0020($sp)
    sw      a2, 0x0000(t6)             # 00000008
    lw      t8, 0x0020($sp)
    sw      $ra, 0x0004(t8)            # 0000000C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80091C94:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      a3, 0x000C($sp)
    swc1    $f12, 0x00E8(a0)           # 000000E8
    swc1    $f14, 0x00EC(a0)           # 000000EC
    lwc1    $f4, 0x000C($sp)
    swc1    $f4, 0x00F0(a0)            # 000000F0
    jr      $ra
    nop


func_80091CB8:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      a3, 0x000C($sp)
    swc1    $f12, 0x00F4(a0)           # 000000F4
    swc1    $f14, 0x00F8(a0)           # 000000F8
    lwc1    $f4, 0x000C($sp)
    swc1    $f4, 0x00FC(a0)            # 000000FC
    jr      $ra
    nop


func_80091CDC:
    mtc1    a1, $f12                   # $f12 = 0.00
    nop
    swc1    $f12, 0x0100(a0)           # 00000100
    jr      $ra
    nop


func_80091CF0:
# Initializes more variables related to the "VIEW"
# A0 = "VIEW" struct ptr
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x00E8(a0)            # 000000E8
    swc1    $f2, 0x00F4(a0)            # 000000F4
    lw      t7, 0x00E8(a0)             # 000000E8
    lw      t9, 0x00F4(a0)             # 000000F4
    swc1    $f0, 0x00EC(a0)            # 000000EC
    swc1    $f0, 0x00F0(a0)            # 000000F0
    swc1    $f2, 0x00F8(a0)            # 000000F8
    swc1    $f2, 0x00FC(a0)            # 000000FC
    sw      t7, 0x0104(a0)             # 00000104
    sw      t9, 0x0110(a0)             # 00000110
    lw      t7, 0x00F0(a0)             # 000000F0
    lw      t6, 0x00EC(a0)             # 000000EC
    lw      t9, 0x00FC(a0)             # 000000FC
    lw      t8, 0x00F8(a0)             # 000000F8
    swc1    $f0, 0x0100(a0)            # 00000100
    sw      t7, 0x010C(a0)             # 0000010C
    sw      t6, 0x0108(a0)             # 00000108
    sw      t9, 0x0118(a0)             # 00000118
    sw      t8, 0x0114(a0)             # 00000114
    jr      $ra
    nop


func_80091D54:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x00E8(a0)            # 000000E8
    swc1    $f0, 0x00EC(a0)            # 000000EC
    swc1    $f0, 0x00F0(a0)            # 000000F0
    swc1    $f2, 0x00F4(a0)            # 000000F4
    swc1    $f2, 0x00F8(a0)            # 000000F8
    swc1    $f2, 0x00FC(a0)            # 000000FC
    swc1    $f2, 0x0100(a0)            # 00000100
    jr      $ra
    nop


func_80091D88:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   t6, $sp, 0x0004            # t6 = 00000004
    lw      t8, 0x0000(t6)             # 00000004
    addiu   t9, $sp, 0x0010            # t9 = 00000010
    sw      t8, 0x00E8(a0)             # 000000E8
    lw      t7, 0x0004(t6)             # 00000008
    sw      t7, 0x00EC(a0)             # 000000EC
    lw      t8, 0x0008(t6)             # 0000000C
    sw      t8, 0x00F0(a0)             # 000000F0
    lw      t1, 0x0000(t9)             # 00000010
    sw      t1, 0x00F4(a0)             # 000000F4
    lw      t0, 0x0004(t9)             # 00000014
    sw      t0, 0x00F8(a0)             # 000000F8
    lw      t1, 0x0008(t9)             # 00000018
    sw      t1, 0x00FC(a0)             # 000000FC
    lwc1    $f4, 0x001C($sp)
    swc1    $f4, 0x0100(a0)            # 00000100
    jr      $ra
    nop


func_80091DDC:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s0, 0x0018($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x006C($sp)
    lwc1    $f0, 0x0100(s0)            # 00000100
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFC0
    c.eq.s  $f2, $f0
    nop
    bc1fl   lbl_80091E1C
    mtc1    $at, $f4                   # $f4 = 1.00
    beq     $zero, $zero, lbl_80091F80
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f4                   # $f4 = 1.00
lbl_80091E1C:
    nop
    c.eq.s  $f4, $f0
    nop
    bc1fl   lbl_80091E6C
    lwc1    $f2, 0x0104(s0)            # 00000104
    lw      t7, 0x00E8(s0)             # 000000E8
    lw      t9, 0x00F4(s0)             # 000000F4
    lw      t6, 0x00EC(s0)             # 000000EC
    sw      t7, 0x0104(s0)             # 00000104
    sw      t9, 0x0110(s0)             # 00000110
    lw      t7, 0x00F0(s0)             # 000000F0
    lw      t9, 0x00FC(s0)             # 000000FC
    lw      t8, 0x00F8(s0)             # 000000F8
    swc1    $f2, 0x0100(s0)            # 00000100
    sw      t6, 0x0108(s0)             # 00000108
    sw      t7, 0x010C(s0)             # 0000010C
    sw      t9, 0x0118(s0)             # 00000118
    beq     $zero, $zero, lbl_80091EFC
    sw      t8, 0x0114(s0)             # 00000114
    lwc1    $f2, 0x0104(s0)            # 00000104
lbl_80091E6C:
    lwc1    $f6, 0x00E8(s0)            # 000000E8
    lwc1    $f12, 0x0108(s0)           # 00000108
    lwc1    $f4, 0x00EC(s0)            # 000000EC
    sub.s   $f8, $f6, $f2
    lwc1    $f14, 0x010C(s0)           # 0000010C
    lwc1    $f16, 0x0110(s0)           # 00000110
    sub.s   $f6, $f4, $f12
    mul.s   $f10, $f8, $f0
    add.s   $f18, $f2, $f10
    mul.s   $f8, $f6, $f0
    lwc1    $f2, 0x0114(s0)            # 00000114
    swc1    $f18, 0x0104(s0)           # 00000104
    lwc1    $f18, 0x00F0(s0)           # 000000F0
    add.s   $f10, $f12, $f8
    lwc1    $f12, 0x0118(s0)           # 00000118
    sub.s   $f4, $f18, $f14
    swc1    $f10, 0x0108(s0)           # 00000108
    lwc1    $f10, 0x00F4(s0)           # 000000F4
    mul.s   $f6, $f4, $f0
    sub.s   $f18, $f10, $f16
    mul.s   $f4, $f18, $f0
    add.s   $f8, $f14, $f6
    swc1    $f8, 0x010C(s0)            # 0000010C
    add.s   $f6, $f16, $f4
    lwc1    $f8, 0x00F8(s0)            # 000000F8
    swc1    $f6, 0x0110(s0)            # 00000110
    sub.s   $f10, $f8, $f2
    lwc1    $f6, 0x00FC(s0)            # 000000FC
    sub.s   $f8, $f6, $f12
    mul.s   $f18, $f10, $f0
    nop
    mul.s   $f10, $f8, $f0
    add.s   $f4, $f2, $f18
    add.s   $f18, $f12, $f10
    swc1    $f4, 0x0114(s0)            # 00000114
    swc1    $f18, 0x0118(s0)           # 00000118
lbl_80091EFC:
    jal     func_800ABB18
    lw      a0, 0x006C($sp)
    jal     func_800AA764
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFC0
    lwc1    $f12, 0x0104(s0)           # 00000104
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0108(s0)           # 00000108
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x010C(s0)           # 0000010C
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0110(s0)           # 00000110
    lwc1    $f14, 0x0114(s0)           # 00000114
    lw      a2, 0x0118(s0)             # 00000118
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x010C(s0)           # 0000010C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAD4C
    neg.s   $f12, $f12
    lwc1    $f12, 0x0108(s0)           # 00000108
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAB94
    neg.s   $f12, $f12
    lwc1    $f12, 0x0104(s0)           # 00000104
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0
    neg.s   $f12, $f12
    jal     func_800AB8D8
    lw      a0, 0x006C($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80091F80:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    jr      $ra
    nop


func_80091F94:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t6, 0x0120(a0)             # 00000120
    sra     t8, a1,  4
    and     t7, t6, a1
    or      a1, t7, t8                 # a1 = 00000000
    andi    t9, a1, 0x0008             # t9 = 00000000
    beq     t9, $zero, lbl_80091FC8
    nop
    jal     func_800922D4
    nop
    beq     $zero, $zero, lbl_80091FD4
    lw      $ra, 0x0014($sp)
lbl_80091FC8:
    jal     func_80091FE0
    nop
    lw      $ra, 0x0014($sp)
lbl_80091FD4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80091FE0:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    lw      s1, 0x0004(s0)             # 00000004
    lw      s2, 0x02C4(s1)             # 000002C4
    addiu   a1, s0, 0x0008             # a1 = 00000008
    addiu   s2, s2, 0xFFF0             # s2 = FFFFFFF0
    sw      s2, 0x02C4(s1)             # 000002C4
    sw      s2, 0x0048($sp)
    jal     func_80091780
    or      a0, s2, $zero              # a0 = FFFFFFF0
    lw      t7, 0x0000(s2)             # FFFFFFF0
    or      a0, s0, $zero              # a0 = 00000000
    sw      t7, 0x0050(s0)             # 00000050
    lw      t6, 0x0004(s2)             # FFFFFFF4
    sw      t6, 0x0054(s0)             # 00000054
    lw      t7, 0x0008(s2)             # FFFFFFF8
    sw      t7, 0x0058(s0)             # 00000058
    lw      t6, 0x000C(s2)             # FFFFFFFC
    jal     func_80091B3C
    sw      t6, 0x005C(s0)             # 0000005C
    lui     a2, 0xDC08                 # a2 = DC080000
    ori     a2, a2, 0x0008             # a2 = DC080008
    lw      a3, 0x0048($sp)
    lw      v0, 0x02C0(s1)             # 000002C0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      a3, 0x0004(v0)             # 00000004
    sw      a2, 0x0000(v0)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      a3, 0x0004(v1)             # 00000004
    sw      a2, 0x0000(v1)             # 00000000
    lw      s2, 0x02C4(s1)             # 000002C4
    addiu   a1, s0, 0x011C             # a1 = 0000011C
    addiu   s2, s2, 0xFFC0             # s2 = FFFFFFB0
    sw      s2, 0x02C4(s1)             # 000002C4
    sw      s2, 0x0044($sp)
    lw      t3, 0x0010(s0)             # 00000010
    lw      t2, 0x0014(s0)             # 00000014
    lw      t5, 0x0008(s0)             # 00000008
    lw      t4, 0x000C(s0)             # 0000000C
    subu    t0, t2, t3
    mtc1    t0, $f4                    # $f4 = 0.00
    subu    t1, t4, t5
    mtc1    t1, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    lwc1    $f4, 0x001C(s0)            # 0000001C
    sw      s2, 0x00E0(s0)             # 000000E0
    lw      a2, 0x0018(s0)             # 00000018
    swc1    $f4, 0x0010($sp)
    cvt.s.w $f10, $f8
    lwc1    $f8, 0x0020(s0)            # 00000020
    or      a0, s2, $zero              # a0 = FFFFFFB0
    swc1    $f8, 0x0014($sp)
    div.s   $f18, $f6, $f10
    lwc1    $f6, 0x0024(s0)            # 00000024
    swc1    $f6, 0x0018($sp)
    mfc1    a3, $f18
    jal     func_800D0570
    nop
    or      t8, s2, $zero              # t8 = FFFFFFB0
    or      t9, s0, $zero              # t9 = 00000000
    addiu   t2, s2, 0x003C             # t2 = FFFFFFEC
lbl_800920F0:
    lw      t7, 0x0000(t8)             # FFFFFFB0
    addiu   t8, t8, 0x000C             # t8 = FFFFFFBC
    addiu   t9, t9, 0x000C             # t9 = 0000000C
    sw      t7, 0x0054(t9)             # 00000060
    lw      t6, -0x0008(t8)            # FFFFFFB4
    sw      t6, 0x0058(t9)             # 00000064
    lw      t7, -0x0004(t8)            # FFFFFFB8
    bne     t8, t2, lbl_800920F0
    sw      t7, 0x005C(t9)             # 00000068
    lw      t7, 0x0000(t8)             # FFFFFFBC
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFB0
    jal     func_80091DDC
    sw      t7, 0x0060(t9)             # 0000006C
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0007             # t1 = DA380007
    lui     t0, 0xDB0E                 # t0 = DB0E0000
    lw      v0, 0x02C0(s1)             # 000002C0
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t0, 0x0000(v0)             # 00000000
    lhu     t4, 0x011C(s0)             # 0000011C
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s1)             # 000002C0
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      s2, 0x0004(v0)             # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lhu     t8, 0x011C(s0)             # 0000011C
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t6, 0x0044($sp)
    sw      t6, 0x0004(v1)             # 00000004
    lw      s2, 0x02C4(s1)             # 000002C4
    addiu   s2, s2, 0xFFC0             # s2 = FFFFFF70
    sw      s2, 0x02C4(s1)             # 000002C4
    lwc1    $f0, 0x0028(s0)            # 00000028
    lwc1    $f2, 0x0034(s0)            # 00000034
    sw      s2, 0x00E4(s0)             # 000000E4
    c.eq.s  $f2, $f0
    nop
    bc1fl   lbl_80092214
    lw      a2, 0x002C(s0)             # 0000002C
    lwc1    $f14, 0x002C(s0)           # 0000002C
    lwc1    $f10, 0x0038(s0)           # 00000038
    c.eq.s  $f10, $f14
    nop
    bc1fl   lbl_80092214
    lw      a2, 0x002C(s0)             # 0000002C
    lwc1    $f16, 0x0030(s0)           # 00000030
    lwc1    $f18, 0x003C(s0)           # 0000003C
    lui     $at, 0x3F80                # $at = 3F800000
    c.eq.s  $f18, $f16
    nop
    bc1fl   lbl_80092214
    lw      a2, 0x002C(s0)             # 0000002C
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f2, 0x0034(s0)            # 00000034
    add.s   $f4, $f0, $f12
    add.s   $f8, $f14, $f12
    swc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0028(s0)            # 00000028
    add.s   $f6, $f16, $f12
    swc1    $f8, 0x002C(s0)            # 0000002C
    swc1    $f6, 0x0030(s0)            # 00000030
    lw      a2, 0x002C(s0)             # 0000002C
lbl_80092214:
    lw      a3, 0x0030(s0)             # 00000030
    swc1    $f2, 0x0010($sp)
    lwc1    $f10, 0x0038(s0)           # 00000038
    mfc1    a1, $f0
    or      a0, s2, $zero              # a0 = FFFFFF70
    swc1    $f10, 0x0014($sp)
    lwc1    $f18, 0x003C(s0)           # 0000003C
    swc1    $f18, 0x0018($sp)
    lwc1    $f4, 0x0040(s0)            # 00000040
    swc1    $f4, 0x001C($sp)
    lwc1    $f8, 0x0044(s0)            # 00000044
    swc1    $f8, 0x0020($sp)
    lwc1    $f6, 0x0048(s0)            # 00000048
    jal     func_800D0C58
    swc1    $f6, 0x0024($sp)
    lui     a2, 0xDA38                 # a2 = DA380000
    ori     a2, a2, 0x0005             # a2 = DA380005
    or      t4, s2, $zero              # t4 = FFFFFF70
    or      t5, s0, $zero              # t5 = 00000000
    addiu   t2, s2, 0x003C             # t2 = FFFFFFAC
lbl_80092264:
    lw      t3, 0x0000(t4)             # FFFFFF70
    addiu   t4, t4, 0x000C             # t4 = FFFFFF7C
    addiu   t5, t5, 0x000C             # t5 = 0000000C
    sw      t3, 0x0094(t5)             # 000000A0
    lw      t7, -0x0008(t4)            # FFFFFF74
    sw      t7, 0x0098(t5)             # 000000A4
    lw      t3, -0x0004(t4)            # FFFFFF78
    bne     t4, t2, lbl_80092264
    sw      t3, 0x009C(t5)             # 000000A8
    lw      t3, 0x0000(t4)             # FFFFFF7C
    sw      t3, 0x00A0(t5)             # 000000AC
    lw      v0, 0x02C0(s1)             # 000002C0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      s2, 0x0004(v0)             # 00000004
    sw      a2, 0x0000(v0)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      s2, 0x0004(v1)             # 00000004
    sw      a2, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_800922D4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0028($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0024($sp)
    lw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02C4(v0)             # 000002C4
    addiu   a1, s1, 0x0008             # a1 = 00000008
    addiu   s0, s0, 0xFFF0             # s0 = FFFFFFF0
    sw      s0, 0x02C4(v0)             # 000002C4
    sw      s0, 0x0030($sp)
    sw      v0, 0x0034($sp)
    jal     func_80091780
    or      a0, s0, $zero              # a0 = FFFFFFF0
    lw      t7, 0x0000(s0)             # FFFFFFF0
    or      a0, s1, $zero              # a0 = 00000000
    sw      t7, 0x0050(s1)             # 00000050
    lw      t6, 0x0004(s0)             # FFFFFFF4
    sw      t6, 0x0054(s1)             # 00000054
    lw      t7, 0x0008(s0)             # FFFFFFF8
    sw      t7, 0x0058(s1)             # 00000058
    lw      t6, 0x000C(s0)             # FFFFFFFC
    jal     func_80091B3C
    sw      t6, 0x005C(s1)             # 0000005C
    lui     t2, 0xDC08                 # t2 = DC080000
    ori     t2, t2, 0x0008             # t2 = DC080008
    lw      v0, 0x0034($sp)
    lw      t1, 0x0030($sp)
    lw      a2, 0x02C0(v0)             # 000002C0
    addiu   t8, a2, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v0)             # 000002C0
    sw      t1, 0x0004(a2)             # 00000004
    sw      t2, 0x0000(a2)             # 00000000
    lw      a3, 0x02D0(v0)             # 000002D0
    addiu   t9, a3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v0)             # 000002D0
    sw      t1, 0x0004(a3)             # 00000004
    sw      t2, 0x0000(a3)             # 00000000
    lw      t0, 0x02B0(v0)             # 000002B0
    addiu   t3, t0, 0x0008             # t3 = 00000008
    sw      t3, 0x02B0(v0)             # 000002B0
    sw      t1, 0x0004(t0)             # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      s0, 0x02C4(v0)             # 000002C4
    lui     t4, 0x8010                 # t4 = 80100000
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   s0, s0, 0xFFC0             # s0 = FFFFFFB0
    sw      s0, 0x02C4(v0)             # 000002C4
    sw      s0, 0x00E0(s1)             # 000000E0
    lw      t4, -0x1B00(t4)            # 800FE500
    lw      t5, -0x1AFC(t5)            # 800FE504
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t4, $f4                    # $f4 = 0.00
    mtc1    t5, $f16                   # $f16 = 0.00
    mtc1    $at, $f12                  # $f12 = 0.50
    cvt.s.w $f0, $f4
    or      a0, s0, $zero              # a0 = FFFFFFB0
    cvt.s.w $f2, $f16
    neg.s   $f6, $f0
    neg.s   $f18, $f2
    mul.s   $f8, $f6, $f12
    nop
    mul.s   $f10, $f0, $f12
    nop
    mul.s   $f4, $f18, $f12
    mfc1    a1, $f8
    mul.s   $f6, $f2, $f12
    mfc1    a2, $f10
    mfc1    a3, $f4
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x001C(s1)            # 0000001C
    swc1    $f8, 0x0014($sp)
    lwc1    $f10, 0x0020(s1)           # 00000020
    swc1    $f10, 0x0018($sp)
    lwc1    $f16, 0x0024(s1)           # 00000024
    sw      v0, 0x0034($sp)
    jal     func_800D2C64
    swc1    $f16, 0x001C($sp)
    lui     a1, 0xDA38                 # a1 = DA380000
    ori     a1, a1, 0x0007             # a1 = DA380007
    lw      v0, 0x0034($sp)
    or      t8, s0, $zero              # t8 = FFFFFFB0
    or      t9, s1, $zero              # t9 = 00000000
    addiu   t3, s0, 0x003C             # t3 = FFFFFFEC
lbl_80092424:
    lw      t7, 0x0000(t8)             # FFFFFFB0
    addiu   t8, t8, 0x000C             # t8 = FFFFFFBC
    addiu   t9, t9, 0x000C             # t9 = 0000000C
    sw      t7, 0x0054(t9)             # 00000060
    lw      t6, -0x0008(t8)            # FFFFFFB4
    sw      t6, 0x0058(t9)             # 00000064
    lw      t7, -0x0004(t8)            # FFFFFFB8
    bne     t8, t3, lbl_80092424
    sw      t7, 0x005C(t9)             # 00000068
    lw      t7, 0x0000(t8)             # FFFFFFBC
    sw      t7, 0x0060(t9)             # 0000006C
    lw      a2, 0x02C0(v0)             # 000002C0
    addiu   t4, a2, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(v0)             # 000002C0
    sw      s0, 0x0004(a2)             # 00000004
    sw      a1, 0x0000(a2)             # 00000000
    lw      a3, 0x02D0(v0)             # 000002D0
    addiu   t5, a3, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(v0)             # 000002D0
    sw      s0, 0x0004(a3)             # 00000004
    sw      a1, 0x0000(a3)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80092490:
# Possibly draw VIEW struct?
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lw      v0, 0x0004(s0)             # 00000004
    lw      a0, 0x02C4(v0)             # 000002C4
    addiu   a1, s0, 0x0008             # a1 = 00000008
    addiu   a0, a0, 0xFFF0             # a0 = FFFFFFF0
    sw      a0, 0x02C4(v0)             # 000002C4
    sw      a0, 0x0050($sp)
    sw      a0, 0x0030($sp)
    jal     func_80091780
    sw      v0, 0x0054($sp)
    lw      a0, 0x0030($sp)
    lw      v0, 0x0054($sp)
    lui     $at, 0x4080                # $at = 40800000
    lw      t7, 0x0000(a0)             # 00000000
    mtc1    $at, $f0                   # $f0 = 4.00
    sw      t7, 0x0050(s0)             # 00000050
    lw      t6, 0x0004(a0)             # 00000004
    sw      t6, 0x0054(s0)             # 00000054
    lw      t7, 0x0008(a0)             # 00000008
    sw      t7, 0x0058(s0)             # 00000058
    lw      t6, 0x000C(a0)             # 0000000C
    sw      t6, 0x005C(s0)             # 0000005C
    lw      v1, 0x02B0(v0)             # 000002B0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(v0)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(v0)             # 000002B0
    lui     $at, 0xED00                # $at = ED000000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02B0(v0)             # 000002B0
    lw      t2, 0x0010(s0)             # 00000010
    lw      t8, 0x0008(s0)             # 00000008
    mtc1    t2, $f4                    # $f4 = 0.00
    mtc1    t8, $f16                   # $f16 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f18, $f16
    mul.s   $f8, $f6, $f0
    nop
    mul.s   $f4, $f18, $f0
    trunc.w.s $f10, $f8
    trunc.w.s $f6, $f4
    mfc1    t4, $f10
    mfc1    t1, $f6
    andi    t5, t4, 0x0FFF             # t5 = 00000000
    sll     t6, t5, 12
    or      t7, t6, $at                # t7 = ED000000
    andi    t2, t1, 0x0FFF             # t2 = 00000008
    or      t3, t7, t2                 # t3 = ED000008
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0014(s0)             # 00000014
    lw      t1, 0x000C(s0)             # 0000000C
    mtc1    t4, $f8                    # $f8 = 0.00
    mtc1    t1, $f4                    # $f4 = 0.00
    cvt.s.w $f10, $f8
    cvt.s.w $f6, $f4
    mul.s   $f16, $f10, $f0
    nop
    mul.s   $f8, $f6, $f0
    trunc.w.s $f18, $f16
    trunc.w.s $f10, $f8
    mfc1    t6, $f18
    mfc1    t2, $f10
    andi    t8, t6, 0x0FFF             # t8 = 00000000
    sll     t9, t8, 12
    andi    t3, t2, 0x0FFF             # t3 = 00000008
    or      t4, t9, t3                 # t4 = E7000008
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(v0)             # 000002B0
    lui     t6, 0xDC08                 # t6 = DC080000
    ori     t6, t6, 0x0008             # t6 = DC080008
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(v0)             # 000002B0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t8, 0x0050($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    sw      t8, 0x0004(v1)             # 00000004
    lw      a0, 0x02C4(v0)             # 000002C4
    lui     t1, 0x8010                 # t1 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a0, a0, 0xFFC0             # a0 = FFFFFFC0
    sw      a0, 0x02C4(v0)             # 000002C4
    sw      a0, 0x00E0(s0)             # 000000E0
    lw      t1, -0x1B00(t1)            # 800FE500
    lw      t7, -0x1AFC(t7)            # 800FE504
    mtc1    t1, $f16                   # $f16 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    cvt.s.w $f0, $f16
    cvt.s.w $f2, $f8
    neg.s   $f18, $f0
    neg.s   $f10, $f2
    mul.s   $f4, $f18, $f12
    nop
    mul.s   $f6, $f0, $f12
    nop
    mul.s   $f16, $f10, $f12
    mfc1    a1, $f4
    mul.s   $f18, $f2, $f12
    mfc1    a2, $f6
    mfc1    a3, $f16
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x001C(s0)            # 0000001C
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x0020(s0)            # 00000020
    swc1    $f6, 0x0018($sp)
    lwc1    $f8, 0x0024(s0)            # 00000024
    sw      a0, 0x0030($sp)
    sw      v0, 0x0054($sp)
    jal     func_800D2C64
    swc1    $f8, 0x001C($sp)
    lw      a0, 0x0030($sp)
    lw      v0, 0x0054($sp)
    or      t4, s0, $zero              # t4 = 00000000
    or      t3, a0, $zero              # t3 = 00000000
    addiu   t5, a0, 0x003C             # t5 = 0000003C
lbl_80092670:
    lw      t9, 0x0000(t3)             # 00000000
    addiu   t3, t3, 0x000C             # t3 = 0000000C
    addiu   t4, t4, 0x000C             # t4 = 0000000C
    sw      t9, 0x0054(t4)             # 00000060
    lw      t2, -0x0008(t3)            # 00000004
    sw      t2, 0x0058(t4)             # 00000064
    lw      t9, -0x0004(t3)            # 00000008
    bne     t3, t5, lbl_80092670
    sw      t9, 0x005C(t4)             # 00000068
    lw      t9, 0x0000(t3)             # 0000000C
    sw      t9, 0x0060(t4)             # 0000006C
    lw      v1, 0x02B0(v0)             # 000002B0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0007             # t8 = DA380007
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(v0)             # 000002B0
    sw      a0, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_800926D0:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    lw      s1, 0x0004(s0)             # 00000004
    lw      s2, 0x02C4(s1)             # 000002C4
    addiu   a1, s0, 0x0008             # a1 = 00000008
    addiu   s2, s2, 0xFFF0             # s2 = FFFFFFF0
    sw      s2, 0x02C4(s1)             # 000002C4
    sw      s2, 0x0048($sp)
    jal     func_80091780
    or      a0, s2, $zero              # a0 = FFFFFFF0
    lw      t7, 0x0000(s2)             # FFFFFFF0
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f0                   # $f0 = 4.00
    sw      t7, 0x0050(s0)             # 00000050
    lw      t6, 0x0004(s2)             # FFFFFFF4
    sw      t6, 0x0054(s0)             # 00000054
    lw      t7, 0x0008(s2)             # FFFFFFF8
    sw      t7, 0x0058(s0)             # 00000058
    lw      t6, 0x000C(s2)             # FFFFFFFC
    sw      t6, 0x005C(s0)             # 0000005C
    lw      v0, 0x02B0(s1)             # 000002B0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s1)             # 000002B0
    lui     $at, 0xED00                # $at = ED000000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02B0(s1)             # 000002B0
    lw      t3, 0x0010(s0)             # 00000010
    lw      t9, 0x0008(s0)             # 00000008
    mtc1    t3, $f4                    # $f4 = 0.00
    mtc1    t9, $f18                   # $f18 = -604462900000000000000000.00
    cvt.s.w $f6, $f4
    cvt.s.w $f4, $f18
    mul.s   $f8, $f6, $f0
    nop
    mul.s   $f6, $f4, $f0
    trunc.w.s $f10, $f8
    trunc.w.s $f8, $f6
    mfc1    t5, $f10
    mfc1    t3, $f8
    andi    t6, t5, 0x0FFF             # t6 = 00000000
    sll     t7, t6, 12
    or      t8, t7, $at                # t8 = ED000000
    andi    t4, t3, 0x0FFF             # t4 = 00000000
    or      t5, t8, t4                 # t5 = ED000000
    sw      t5, 0x0000(v0)             # 00000000
    lw      t6, 0x0014(s0)             # 00000014
    lw      t8, 0x000C(s0)             # 0000000C
    mtc1    t6, $f10                   # $f10 = 0.00
    mtc1    t8, $f8                    # $f8 = -2475880000000000000000000000.00
    cvt.s.w $f18, $f10
    cvt.s.w $f10, $f8
    mul.s   $f4, $f18, $f0
    nop
    mul.s   $f18, $f10, $f0
    trunc.w.s $f6, $f4
    trunc.w.s $f4, $f18
    mfc1    t9, $f6
    mfc1    t5, $f4
    andi    t2, t9, 0x0FFF             # t2 = 00000000
    sll     t3, t2, 12
    andi    t6, t5, 0x0FFF             # t6 = 00000000
    or      t7, t3, t6                 # t7 = 00000000
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s1)             # 000002B0
    lui     t2, 0xDC08                 # t2 = DC080000
    ori     t2, t2, 0x0008             # t2 = DC080008
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t8, 0x0048($sp)
    sw      t8, 0x0004(v0)             # 00000004
    lw      s2, 0x02C4(s1)             # 000002C4
    addiu   a1, s0, 0x011C             # a1 = 0000011C
    addiu   a0, s2, 0xFFC0             # a0 = FFFFFFB0
    sw      a0, 0x02C4(s1)             # 000002C4
    lw      t5, 0x0010(s0)             # 00000010
    lw      t4, 0x0014(s0)             # 00000014
    lw      t6, 0x0008(s0)             # 00000008
    lw      t3, 0x000C(s0)             # 0000000C
    subu    v0, t4, t5
    mtc1    v0, $f6                    # $f6 = 0.00
    subu    v1, t3, t6
    mtc1    v1, $f10                   # $f10 = 0.00
    cvt.s.w $f8, $f6
    lwc1    $f6, 0x001C(s0)            # 0000001C
    sw      a0, 0x00E0(s0)             # 000000E0
    lw      a2, 0x0018(s0)             # 00000018
    swc1    $f6, 0x0010($sp)
    cvt.s.w $f18, $f10
    lwc1    $f10, 0x0020(s0)           # 00000020
    swc1    $f10, 0x0014($sp)
    div.s   $f4, $f8, $f18
    lwc1    $f8, 0x0024(s0)            # 00000024
    sw      a0, 0x0044($sp)
    swc1    $f8, 0x0018($sp)
    mfc1    a3, $f4
    jal     func_800D0570
    nop
    lw      t1, 0x0044($sp)
    or      t8, s0, $zero              # t8 = 00000000
    or      t2, t1, $zero              # t2 = 00000000
    addiu   t4, t1, 0x003C             # t4 = 0000003C
lbl_80092888:
    lw      t9, 0x0000(t2)             # 00000000
    addiu   t2, t2, 0x000C             # t2 = 0000000C
    addiu   t8, t8, 0x000C             # t8 = 0000000C
    sw      t9, 0x0054(t8)             # 00000060
    lw      t7, -0x0008(t2)            # 00000004
    sw      t7, 0x0058(t8)             # 00000064
    lw      t9, -0x0004(t2)            # 00000008
    bne     t2, t4, lbl_80092888
    sw      t9, 0x005C(t8)             # 00000068
    lw      t9, 0x0000(t2)             # 0000000C
    sw      t9, 0x0060(t8)             # 0000006C
    lw      v0, 0x02B0(s1)             # 000002B0
    lui     t3, 0xDB0E                 # t3 = DB0E0000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s1)             # 000002B0
    sw      t3, 0x0000(v0)             # 00000000
    lhu     t6, 0x011C(s0)             # 0000011C
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s1)             # 000002B0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0007             # t2 = DA380007
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s1)             # 000002B0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lw      s2, 0x02C4(s1)             # 000002C4
    addiu   s2, s2, 0xFFC0             # s2 = FFFFFFB0
    sw      s2, 0x02C4(s1)             # 000002C4
    lwc1    $f0, 0x0028(s0)            # 00000028
    lwc1    $f2, 0x0034(s0)            # 00000034
    sw      s2, 0x00E4(s0)             # 000000E4
    c.eq.s  $f2, $f0
    nop
    bc1fl   lbl_80092970
    lw      a2, 0x002C(s0)             # 0000002C
    lwc1    $f14, 0x002C(s0)           # 0000002C
    lwc1    $f18, 0x0038(s0)           # 00000038
    c.eq.s  $f18, $f14
    nop
    bc1fl   lbl_80092970
    lw      a2, 0x002C(s0)             # 0000002C
    lwc1    $f16, 0x0030(s0)           # 00000030
    lwc1    $f4, 0x003C(s0)            # 0000003C
    lui     $at, 0x3F80                # $at = 3F800000
    c.eq.s  $f4, $f16
    nop
    bc1fl   lbl_80092970
    lw      a2, 0x002C(s0)             # 0000002C
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f2, 0x0034(s0)            # 00000034
    add.s   $f6, $f0, $f12
    add.s   $f10, $f14, $f12
    swc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0028(s0)            # 00000028
    add.s   $f8, $f16, $f12
    swc1    $f10, 0x002C(s0)           # 0000002C
    swc1    $f8, 0x0030(s0)            # 00000030
    lw      a2, 0x002C(s0)             # 0000002C
lbl_80092970:
    lw      a3, 0x0030(s0)             # 00000030
    swc1    $f2, 0x0010($sp)
    lwc1    $f18, 0x0038(s0)           # 00000038
    mfc1    a1, $f0
    or      a0, s2, $zero              # a0 = FFFFFFB0
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x003C(s0)            # 0000003C
    swc1    $f4, 0x0018($sp)
    lwc1    $f6, 0x0040(s0)            # 00000040
    swc1    $f6, 0x001C($sp)
    lwc1    $f10, 0x0044(s0)           # 00000044
    swc1    $f10, 0x0020($sp)
    lwc1    $f8, 0x0048(s0)            # 00000048
    jal     func_800D0C58
    swc1    $f8, 0x0024($sp)
    or      t9, s2, $zero              # t9 = FFFFFFB0
    or      t5, s0, $zero              # t5 = 00000000
    addiu   t3, s2, 0x003C             # t3 = FFFFFFEC
lbl_800929B8:
    lw      t7, 0x0000(t9)             # FFFFFFB0
    addiu   t9, t9, 0x000C             # t9 = FFFFFFBC
    addiu   t5, t5, 0x000C             # t5 = 0000000C
    sw      t7, 0x0094(t5)             # 000000A0
    lw      t8, -0x0008(t9)            # FFFFFFB4
    sw      t8, 0x0098(t5)             # 000000A4
    lw      t7, -0x0004(t9)            # FFFFFFB8
    bne     t9, t3, lbl_800929B8
    sw      t7, 0x009C(t5)             # 000000A8
    lw      t7, 0x0000(t9)             # FFFFFFBC
    sw      t7, 0x00A0(t5)             # 000000AC
    lw      v0, 0x02B0(s1)             # 000002B0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0005             # t4 = DA380005
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s1)             # 000002B0
    sw      s2, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_80092A1C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    lwc1    $f4, 0x0034(s0)            # 00000034
    lw      a0, 0x00E4(s0)             # 000000E4
    lw      a1, 0x0028(s0)             # 00000028
    lw      a2, 0x002C(s0)             # 0000002C
    lw      a3, 0x0030(s0)             # 00000030
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0038(s0)            # 00000038
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x003C(s0)            # 0000003C
    swc1    $f8, 0x0018($sp)
    lwc1    $f10, 0x0040(s0)           # 00000040
    swc1    $f10, 0x001C($sp)
    lwc1    $f16, 0x0044(s0)           # 00000044
    swc1    $f16, 0x0020($sp)
    lwc1    $f18, 0x0048(s0)           # 00000048
    jal     func_800D0C58
    swc1    $f18, 0x0024($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80092A88:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s3, 0x0038($sp)
    sw      s0, 0x002C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s2, 0x0034($sp)
    sw      s1, 0x0030($sp)
    sw      a2, 0x0050($sp)
    lw      t7, 0x0120(s0)             # 00000120
    sra     t9, s3,  4
    lw      t6, 0x0050($sp)
    and     t8, t7, s3
    or      s3, t8, t9                 # s3 = 00000000
    andi    t1, s3, 0x0002             # t1 = 00000000
    lw      s2, 0x0004(s0)             # 00000004
    beq     t1, $zero, lbl_80092BE4
    lw      v1, 0x0000(t6)             # 00000000
    lw      s1, 0x02C4(s2)             # 000002C4
    addiu   a1, s0, 0x0008             # a1 = 00000008
    addiu   s1, s1, 0xFFF0             # s1 = FFFFFFF0
    sw      s1, 0x02C4(s2)             # 000002C4
    sw      v1, 0x0044($sp)
    jal     func_80091780
    or      a0, s1, $zero              # a0 = FFFFFFF0
    lw      t3, 0x0000(s1)             # FFFFFFF0
    lw      v1, 0x0044($sp)
    lui     $at, 0x4080                # $at = 40800000
    sw      t3, 0x0050(s0)             # 00000050
    lw      t2, 0x0004(s1)             # FFFFFFF4
    or      v0, v1, $zero              # v0 = 00000000
    mtc1    $at, $f0                   # $f0 = 4.00
    sw      t2, 0x0054(s0)             # 00000054
    lw      t3, 0x0008(s1)             # FFFFFFF8
    lui     t4, 0xE700                 # t4 = E7000000
    addiu   v1, v1, 0x0008             # v1 = 00000008
    sw      t3, 0x0058(s0)             # 00000058
    lw      t2, 0x000C(s1)             # FFFFFFFC
    sw      t2, 0x005C(s0)             # 0000005C
    sw      t4, 0x0000(v0)             # 00000000
    sw      $zero, 0x0004(v0)          # 00000004
    lw      t5, 0x0010(s0)             # 00000010
    lw      t2, 0x0008(s0)             # 00000008
    lui     $at, 0xED00                # $at = ED000000
    mtc1    t5, $f4                    # $f4 = 0.00
    mtc1    t2, $f16                   # $f16 = 0.00
    or      a0, v1, $zero              # a0 = 00000008
    cvt.s.w $f6, $f4
    addiu   v1, v1, 0x0008             # v1 = 00000010
    or      a1, v1, $zero              # a1 = 00000010
    addiu   v1, v1, 0x0008             # v1 = 00000018
    cvt.s.w $f18, $f16
    mul.s   $f8, $f6, $f0
    nop
    mul.s   $f4, $f18, $f0
    trunc.w.s $f10, $f8
    trunc.w.s $f6, $f4
    mfc1    t7, $f10
    mfc1    t4, $f6
    andi    t8, t7, 0x0FFF             # t8 = 00000000
    sll     t9, t8, 12
    or      t1, t9, $at                # t1 = ED000000
    andi    t5, t4, 0x0FFF             # t5 = 00000000
    or      t6, t1, t5                 # t6 = ED000000
    sw      t6, 0x0000(a0)             # 00000008
    lw      t7, 0x0014(s0)             # 00000014
    lw      t4, 0x000C(s0)             # 0000000C
    lui     t8, 0xDC08                 # t8 = DC080000
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    t4, $f4                    # $f4 = -604462900000000000000000.00
    ori     t8, t8, 0x0008             # t8 = DC080008
    cvt.s.w $f10, $f8
    cvt.s.w $f6, $f4
    mul.s   $f16, $f10, $f0
    nop
    mul.s   $f8, $f6, $f0
    trunc.w.s $f18, $f16
    trunc.w.s $f10, $f8
    mfc1    t9, $f18
    mfc1    t5, $f10
    andi    t2, t9, 0x0FFF             # t2 = 00000000
    sll     t3, t2, 12
    andi    t6, t5, 0x0FFF             # t6 = 00000000
    or      t7, t3, t6                 # t7 = 00000000
    sw      t7, 0x0004(a0)             # 0000000C
    sw      t8, 0x0000(a1)             # 00000010
    sw      s1, 0x0004(a1)             # 00000014
lbl_80092BE4:
    andi    t9, s3, 0x0008             # t9 = 00000000
    beql    t9, $zero, lbl_80092CDC
    andi    t9, s3, 0x0006             # t9 = 00000000
    lw      s1, 0x02C4(s2)             # 000002C4
    lui     t2, 0x8010                 # t2 = 80100000
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   s1, s1, 0xFFC0             # s1 = FFFFFFB0
    sw      s1, 0x02C4(s2)             # 000002C4
    sw      s1, 0x00E0(s0)             # 000000E0
    lw      t2, -0x1B00(t2)            # 800FE500
    lw      t4, -0x1AFC(t4)            # 800FE504
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t2, $f16                   # $f16 = 0.00
    mtc1    t4, $f8                    # $f8 = 0.00
    mtc1    $at, $f12                  # $f12 = 0.50
    cvt.s.w $f0, $f16
    or      a0, s1, $zero              # a0 = FFFFFFB0
    cvt.s.w $f2, $f8
    neg.s   $f18, $f0
    neg.s   $f10, $f2
    mul.s   $f4, $f18, $f12
    nop
    mul.s   $f6, $f0, $f12
    nop
    mul.s   $f16, $f10, $f12
    mfc1    a1, $f4
    mul.s   $f18, $f2, $f12
    mfc1    a2, $f6
    mfc1    a3, $f16
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x001C(s0)            # 0000001C
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x0020(s0)            # 00000020
    swc1    $f6, 0x0018($sp)
    lwc1    $f8, 0x0024(s0)            # 00000024
    sw      v1, 0x0044($sp)
    jal     func_800D2C64
    swc1    $f8, 0x001C($sp)
    lw      v1, 0x0044($sp)
    or      t3, s1, $zero              # t3 = FFFFFFB0
    or      t6, s0, $zero              # t6 = 00000000
    addiu   t7, s1, 0x003C             # t7 = FFFFFFEC
lbl_80092C8C:
    lw      t5, 0x0000(t3)             # FFFFFFB0
    addiu   t3, t3, 0x000C             # t3 = FFFFFFBC
    addiu   t6, t6, 0x000C             # t6 = 0000000C
    sw      t5, 0x0054(t6)             # 00000060
    lw      t1, -0x0008(t3)            # FFFFFFB4
    sw      t1, 0x0058(t6)             # 00000064
    lw      t5, -0x0004(t3)            # FFFFFFB8
    bne     t3, t7, lbl_80092C8C
    sw      t5, 0x005C(t6)             # 00000068
    lw      t5, 0x0000(t3)             # FFFFFFBC
    or      v0, v1, $zero              # v0 = 00000000
    addiu   v1, v1, 0x0008             # v1 = 00000008
    sw      t5, 0x0060(t6)             # 0000006C
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0007             # t8 = DA380007
    sw      t8, 0x0000(v0)             # 00000000
    sw      s1, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_80092DC4
    andi    t3, s3, 0x0001             # t3 = 00000000
    andi    t9, s3, 0x0006             # t9 = 00000000
lbl_80092CDC:
    beql    t9, $zero, lbl_80092DC4
    andi    t3, s3, 0x0001             # t3 = 00000000
    lw      s1, 0x02C4(s2)             # 000002C4
    addiu   a1, s0, 0x011C             # a1 = 0000011C
    addiu   s1, s1, 0xFFC0             # s1 = FFFFFF70
    sw      s1, 0x02C4(s2)             # 000002C4
    lw      t4, 0x0010(s0)             # 00000010
    lw      t2, 0x0014(s0)             # 00000014
    lw      t3, 0x0008(s0)             # 00000008
    lw      t7, 0x000C(s0)             # 0000000C
    subu    v0, t2, t4
    mtc1    v0, $f10                   # $f10 = 0.00
    subu    t0, t7, t3
    mtc1    t0, $f18                   # $f18 = 0.00
    cvt.s.w $f16, $f10
    lwc1    $f8, 0x001C(s0)            # 0000001C
    sw      s1, 0x00E0(s0)             # 000000E0
    lw      a2, 0x0018(s0)             # 00000018
    swc1    $f8, 0x0010($sp)
    cvt.s.w $f4, $f18
    lwc1    $f10, 0x0020(s0)           # 00000020
    or      a0, s1, $zero              # a0 = FFFFFF70
    swc1    $f10, 0x0014($sp)
    lwc1    $f18, 0x0024(s0)           # 00000024
    div.s   $f6, $f16, $f4
    sw      v1, 0x0044($sp)
    swc1    $f18, 0x0018($sp)
    mfc1    a3, $f6
    jal     func_800D0570
    nop
    lw      v1, 0x0044($sp)
    or      t5, s1, $zero              # t5 = FFFFFF70
    or      t8, s0, $zero              # t8 = 00000000
    addiu   t9, s1, 0x003C             # t9 = FFFFFFAC
lbl_80092D64:
    lw      t1, 0x0000(t5)             # FFFFFF70
    addiu   t5, t5, 0x000C             # t5 = FFFFFF7C
    addiu   t8, t8, 0x000C             # t8 = 0000000C
    sw      t1, 0x0054(t8)             # 00000060
    lw      t6, -0x0008(t5)            # FFFFFF74
    sw      t6, 0x0058(t8)             # 00000064
    lw      t1, -0x0004(t5)            # FFFFFF78
    bne     t5, t9, lbl_80092D64
    sw      t1, 0x005C(t8)             # 00000068
    lw      t1, 0x0000(t5)             # FFFFFF7C
    or      v0, v1, $zero              # v0 = 00000000
    lui     t2, 0xDB0E                 # t2 = DB0E0000
    sw      t1, 0x0060(t8)             # 0000006C
    sw      t2, 0x0000(v0)             # 00000000
    lhu     t4, 0x011C(s0)             # 0000011C
    addiu   v1, v1, 0x0008             # v1 = 00000008
    or      a0, v1, $zero              # a0 = 00000008
    sw      t4, 0x0004(v0)             # 00000004
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0007             # t7 = DA380007
    sw      t7, 0x0000(a0)             # 00000008
    addiu   v1, v1, 0x0008             # v1 = 00000010
    sw      s1, 0x0004(a0)             # 0000000C
    andi    t3, s3, 0x0001             # t3 = 00000000
lbl_80092DC4:
    beql    t3, $zero, lbl_80092E7C
    sw      $zero, 0x0120(s0)          # 00000120
    lw      s1, 0x02C4(s2)             # 000002C4
    addiu   s1, s1, 0xFFC0             # s1 = FFFFFF30
    sw      s1, 0x02C4(s2)             # 000002C4
    lwc1    $f16, 0x0034(s0)           # 00000034
    sw      s1, 0x00E4(s0)             # 000000E4
    lw      a3, 0x0030(s0)             # 00000030
    lw      a2, 0x002C(s0)             # 0000002C
    lw      a1, 0x0028(s0)             # 00000028
    swc1    $f16, 0x0010($sp)
    lwc1    $f4, 0x0038(s0)            # 00000038
    or      a0, s1, $zero              # a0 = FFFFFF30
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x003C(s0)            # 0000003C
    swc1    $f6, 0x0018($sp)
    lwc1    $f8, 0x0040(s0)            # 00000040
    swc1    $f8, 0x001C($sp)
    lwc1    $f10, 0x0044(s0)           # 00000044
    swc1    $f10, 0x0020($sp)
    lwc1    $f18, 0x0048(s0)           # 00000048
    sw      v1, 0x0044($sp)
    jal     func_800D0C58
    swc1    $f18, 0x0024($sp)
    lw      v1, 0x0044($sp)
    or      t8, s1, $zero              # t8 = FFFFFF30
    or      t6, s0, $zero              # t6 = 00000000
    addiu   t1, s1, 0x003C             # t1 = FFFFFF6C
lbl_80092E34:
    lw      t5, 0x0000(t8)             # FFFFFF30
    addiu   t8, t8, 0x000C             # t8 = FFFFFF3C
    addiu   t6, t6, 0x000C             # t6 = 0000000C
    sw      t5, 0x0094(t6)             # 000000A0
    lw      t9, -0x0008(t8)            # FFFFFF34
    sw      t9, 0x0098(t6)             # 000000A4
    lw      t5, -0x0004(t8)            # FFFFFF38
    bne     t8, t1, lbl_80092E34
    sw      t5, 0x009C(t6)             # 000000A8
    lw      t5, 0x0000(t8)             # FFFFFF3C
    or      v0, v1, $zero              # v0 = 00000000
    addiu   v1, v1, 0x0008             # v1 = 00000008
    sw      t5, 0x00A0(t6)             # 000000AC
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0005             # t2 = DA380005
    sw      t2, 0x0000(v0)             # 00000000
    sw      s1, 0x0004(v0)             # 00000004
    sw      $zero, 0x0120(s0)          # 00000120
lbl_80092E7C:
    lw      t4, 0x0050($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      v1, 0x0000(t4)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    lw      s2, 0x0034($sp)
    lw      s3, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    nop
    nop
    nop
