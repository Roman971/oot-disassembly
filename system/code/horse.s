# "Horse" part of the code file
#
# Handles Epona spawning and horseback riding.
#
# Starts at VRAM: 8005A3C0 / VROM: AD0320
#

.section .text
func_8005A3C0:
# ROM st: do_action_static
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    addiu   a1, $sp, 0x000C            # a1 = FFFFFFEC
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x1460             # t6 = 800F1460
    lw      t8, 0x0000(t6)             # 800F1460
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sll     t0, v0,  2
    sw      t8, 0x0000(a1)             # FFFFFFEC
    lw      t7, 0x0004(t6)             # 800F1464
    addu    v1, a1, t0
    sw      t7, 0x0004(a1)             # FFFFFFF0
    lw      t8, 0x0008(t6)             # 800F1468
    sw      t8, 0x0008(a1)             # FFFFFFF4
    lw      t7, 0x000C(t6)             # 800F146C
    sw      t7, 0x000C(a1)             # FFFFFFF8
    lw      t8, 0x0010(t6)             # 800F1470
    sw      t8, 0x0010(a1)             # FFFFFFFC
    lw      t9, 0x000C($sp)
    bnel    a0, t9, lbl_8005A41C
    lw      t1, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_8005A46C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t1, 0x0000(v1)             # 00000000
lbl_8005A41C:
    bnel    a0, t1, lbl_8005A430
    lw      t2, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_8005A46C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t2, 0x0004(v1)             # 00000004
lbl_8005A430:
    bnel    a0, t2, lbl_8005A444
    lw      t3, 0x0008(v1)             # 00000008
    beq     $zero, $zero, lbl_8005A46C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t3, 0x0008(v1)             # 00000008
lbl_8005A444:
    bnel    a0, t3, lbl_8005A458
    lw      t4, 0x000C(v1)             # 0000000C
    beq     $zero, $zero, lbl_8005A46C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t4, 0x000C(v1)             # 0000000C
lbl_8005A458:
    or      v0, $zero, $zero           # v0 = 00000000
    bne     a0, t4, lbl_8005A46C
    nop
    beq     $zero, $zero, lbl_8005A46C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8005A46C:
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_8005A474:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a0, 0x0000($sp)
    addiu   t6, $zero, 0x0051          # t6 = 00000051
    addiu   t7, $zero, 0xF8D0          # t7 = FFFFF8D0
    addiu   t8, $zero, 0x0048          # t8 = 00000048
    addiu   t9, $zero, 0x1579          # t9 = 00001579
    addiu   t0, $zero, 0x9527          # t0 = FFFF9527
    sh      t6, 0x1348(v0)             # 8011B918
    sh      t7, 0x134A(v0)             # 8011B91A
    sh      t8, 0x134C(v0)             # 8011B91C
    sh      t9, 0x134E(v0)             # 8011B91E
    sh      t0, 0x1350(v0)             # 8011B920
    jr      $ra
    nop


func_8005A4B0:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      a0, 0x0000($sp)
    addiu   v0, $zero, 0x0057          # v0 = 00000057
    lh      t6, 0x1348(v1)             # 8011B918
    addiu   t7, $zero, 0xF7EF          # t7 = FFFFF7EF
    addiu   t8, $zero, 0xFCA1          # t8 = FFFFFCA1
    bne     v0, t6, lbl_8005A4E8
    addiu   t9, $zero, 0x072F          # t9 = 0000072F
    sh      v0, 0x1348(v1)             # 8011B918
    sh      t7, 0x134A(v1)             # 8011B91A
    sh      t8, 0x134C(v1)             # 8011B91C
    sh      t9, 0x134E(v1)             # 8011B91E
    sh      $zero, 0x1350(v1)          # 8011B920
lbl_8005A4E8:
    jr      $ra
    nop


func_8005A4F0:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x009C($sp)
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x1474             # t7 = 800F1474
    addiu   t0, t7, 0x003C             # t0 = 800F14B0
    addiu   t6, $sp, 0x0058            # t6 = FFFFFFC0
lbl_8005A514:
    lw      t9, 0x0000(t7)             # 800F1474
    addiu   t7, t7, 0x000C             # t7 = 800F1480
    addiu   t6, t6, 0x000C             # t6 = FFFFFFCC
    sw      t9, -0x000C(t6)            # FFFFFFC0
    lw      t8, -0x0008(t7)            # 800F1478
    sw      t8, -0x0008(t6)            # FFFFFFC4
    lw      t9, -0x0004(t7)            # 800F147C
    bne     t7, t0, lbl_8005A514
    sw      t9, -0x0004(t6)            # FFFFFFC8
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x4600(t1)            # 8011BA00
    lh      t2, 0x0E60(t1)             # 80120E60
    beql    t2, $zero, lbl_8005A60C
    lh      a0, 0x00A4(s0)             # 000000A4
    jal     func_800288B4
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    bne     v0, $zero, lbl_8005A56C
    lui     t3, 0x8012                 # t3 = 80120000
    lw      t3, -0x4600(t3)            # 8011BA00
    lh      t4, 0x0556(t3)             # 80120556
    beql    t4, $zero, lbl_8005A60C
    lh      a0, 0x00A4(s0)             # 000000A4
lbl_8005A56C:
    lw      v0, 0x009C($sp)
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    lwc1    $f4, 0x0028(v0)            # 00000028
    lw      a3, 0x0024(v0)             # 00000024
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(v0)            # 0000002C
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    swc1    $f6, 0x0014($sp)
    lh      t5, 0x00B4(v0)             # 000000B4
    sw      t5, 0x0018($sp)
    lh      t0, 0x00B6(v0)             # 000000B6
    sw      t0, 0x001C($sp)
    lh      t7, 0x00B8(v0)             # 000000B8
    sw      t6, 0x0024($sp)
    jal     func_80025110              # ActorSpawn
    sw      t7, 0x0020($sp)
    lw      a1, 0x009C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, v0, $zero              # a2 = 00000000
    jal     func_80021858
    sw      v0, 0x0430(a1)             # 00000430
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021800
    lw      a1, 0x009C($sp)
    lh      t8, 0x00A4(s0)             # 000000A4
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sh      t8, 0x1348(v1)             # 8011B918
    lh      t9, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x005D         # $at = 0000005D
    lw      t2, 0x009C($sp)
    bnel    t9, $at, lbl_8005A978
    lw      $ra, 0x0034($sp)
    lw      t3, 0x0430(t2)             # 00000430
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    beq     $zero, $zero, lbl_8005A974
    sb      t1, 0x0003(t3)             # 00000003
    lh      a0, 0x00A4(s0)             # 000000A4
lbl_8005A60C:
    addiu   $at, $zero, 0x005D         # $at = 0000005D
    lui     v1, 0x8012                 # v1 = 80120000
    bne     a0, $at, lbl_8005A684
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t4, 0x1404(v1)             # 8011B9D4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a1, s0, $zero              # a1 = 00000000
    bne     t4, $at, lbl_8005A684
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    sh      $zero, 0x1404(v1)          # 8011B9D4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x7910($at)           # 80107910
    lui     $at, 0xC3C9                # $at = C3C90000
    mtc1    $at, $f10                  # $f10 = -402.00
    lui     a3, 0x4560                 # a3 = 45600000
    addiu   t5, $zero, 0x4000          # t5 = 00004000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0024($sp)
    sw      t5, 0x001C($sp)
    ori     a3, a3, 0x2000             # a3 = 45602000
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f8, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sb      t7, 0x0003(v0)             # 00000003
    beq     $zero, $zero, lbl_8005A978
    lw      $ra, 0x0034($sp)
lbl_8005A684:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t6, 0x0000(v1)             # 8011A5D0
    addiu   $at, $zero, 0x04CE         # $at = 000004CE
    bnel    t6, $at, lbl_8005A6F4
    lh      t3, 0x1348(v1)             # 8011B918
    lhu     t8, 0x0ED6(v1)             # 8011B4A6
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    andi    t9, t8, 0x0100             # t9 = 00000000
    beq     t9, $zero, lbl_8005A6F0
    lui     a3, 0xC1C8                 # a3 = C1C80000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    lui     $at, 0xC4C8                # $at = C4C80000
    mtc1    $at, $f16                  # $f16 = -1600.00
    addiu   t2, $zero, 0xC000          # t2 = FFFFC000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0024($sp)
    sw      t2, 0x001C($sp)
    swc1    $f0, 0x0010($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)
    beq     $zero, $zero, lbl_8005A978
    lw      $ra, 0x0034($sp)
lbl_8005A6F0:
    lh      t3, 0x1348(v1)             # 00001348
lbl_8005A6F4:
    bnel    t3, a0, lbl_8005A7C4
    lh      t3, 0x00A4(s0)             # 000000A4
    jal     func_800288B4
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    lui     v1, 0x8012                 # v1 = 80120000
    bne     v0, $zero, lbl_8005A724
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4600(t4)            # 8011BA00
    lh      t5, 0x0556(t4)             # 80120556
    beql    t5, $zero, lbl_8005A7C4
    lh      t3, 0x00A4(s0)             # 000000A4
lbl_8005A724:
    jal     func_8005A3C0
    lh      a0, 0x1348(v1)             # 8011B918
    lui     v1, 0x8012                 # v1 = 80120000
    beq     v0, $zero, lbl_8005A7B0
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lh      t0, 0x134A(v1)             # 8011B91A
    lh      t7, 0x134C(v1)             # 8011B91C
    lh      t6, 0x134E(v1)             # 8011B91E
    mtc1    t0, $f18                   # $f18 = 0.00
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t6, $f8                    # $f8 = 0.00
    cvt.s.w $f18, $f18
    lh      t8, 0x1350(v1)             # 8011B920
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0024($sp)
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    cvt.s.w $f6, $f4
    mfc1    a3, $f18
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    sw      $zero, 0x0018($sp)
    cvt.s.w $f10, $f8
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0020($sp)
    sw      t8, 0x001C($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    lh      t2, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x005D         # $at = 0000005D
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    bnel    t2, $at, lbl_8005A978
    lw      $ra, 0x0034($sp)
    sb      t1, 0x0003(v0)             # 00000003
    beq     $zero, $zero, lbl_8005A978
    lw      $ra, 0x0034($sp)
lbl_8005A7B0:
    jal     func_8005A474
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8005A978
    lw      $ra, 0x0034($sp)
    lh      t3, 0x00A4(s0)             # 000000A4
lbl_8005A7C4:
    addiu   $at, $zero, 0x0063         # $at = 00000063
    bne     t3, $at, lbl_8005A834
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    bne     v0, $zero, lbl_8005A834
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4600(t4)            # 8011BA00
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    lh      t5, 0x0556(t4)             # 80120556
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    lui     $at, 0xC3FA                # $at = C3FA0000
    bne     t5, $zero, lbl_8005A834
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    mtc1    $at, $f16                  # $f16 = -500.00
    mfc1    a3, $f0
    swc1    $f0, 0x0010($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      t0, 0x0024($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)
    beq     $zero, $zero, lbl_8005A978
    lw      $ra, 0x0034($sp)
lbl_8005A834:
    jal     func_800288B4
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    bne     v0, $zero, lbl_8005A854
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lh      t6, 0x0556(t7)             # 80120556
    beq     t6, $zero, lbl_8005A8F4
    nop
lbl_8005A854:
    lh      a0, 0x00A4(s0)             # 000000A4
    addiu   v0, $sp, 0x0058            # v0 = FFFFFFC0
    addiu   v1, $sp, 0x0094            # v1 = FFFFFFFC
    lh      t8, 0x0000(v0)             # FFFFFFC0
lbl_8005A864:
    bnel    a0, t8, lbl_8005A8E4
    addiu   v0, v0, 0x000C             # v0 = FFFFFFCC
    lh      t2, 0x0004(v0)             # FFFFFFD0
    lh      t9, 0x0002(v0)             # FFFFFFCE
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    mtc1    t2, $f4                    # $f4 = 0.00
    mtc1    t9, $f18                   # $f18 = 0.00
    or      a1, s0, $zero              # a1 = 00000000
    cvt.s.w $f6, $f4
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    cvt.s.w $f18, $f18
    swc1    $f6, 0x0010($sp)
    lh      t1, 0x0006(v0)             # FFFFFFD2
    sw      $zero, 0x0018($sp)
    mtc1    t1, $f8                    # $f8 = 0.00
    mfc1    a3, $f18
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0014($sp)
    lh      t3, 0x0008(v0)             # FFFFFFD4
    sw      $zero, 0x0020($sp)
    sw      t3, 0x001C($sp)
    lh      t4, 0x000A(v0)             # FFFFFFD6
    jal     func_80025110              # ActorSpawn
    sw      t4, 0x0024($sp)
    lh      t5, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x005D         # $at = 0000005D
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    bnel    t5, $at, lbl_8005A978
    lw      $ra, 0x0034($sp)
    beq     $zero, $zero, lbl_8005A974
    sb      t0, 0x0003(v0)             # 00000003
    addiu   v0, v0, 0x000C             # v0 = 0000000C
lbl_8005A8E4:
    bnel    v0, v1, lbl_8005A864
    lh      t8, 0x0000(v0)             # 0000000C
    beq     $zero, $zero, lbl_8005A978
    lw      $ra, 0x0034($sp)
lbl_8005A8F4:
    jal     func_800288B4
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    lui     v1, 0x8012                 # v1 = 80120000
    bne     v0, $zero, lbl_8005A974
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lh      t6, 0x0556(t7)             # 80120556
    bnel    t6, $zero, lbl_8005A978
    lw      $ra, 0x0034($sp)
    lh      t8, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    bnel    t8, $at, lbl_8005A978
    lw      $ra, 0x0034($sp)
    lw      t9, 0x0010(v1)             # 8011A5E0
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    beq     t9, $zero, lbl_8005A974
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC270                # $at = C2700000
    mtc1    $at, $f16                  # $f16 = -60.00
    addiu   t2, $zero, 0x7360          # t2 = 00007360
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    mfc1    a3, $f0
    sw      t1, 0x0024($sp)
    sw      t2, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f0, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)
lbl_8005A974:
    lw      $ra, 0x0034($sp)
lbl_8005A978:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0098           # $sp = 00000000
    jr      $ra
    nop


func_8005A988:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xA5D0             # t1 = 8011A5D0
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    addiu   a2, $zero, 0x028A          # a2 = 0000028A
    lw      v0, 0x0000(t1)             # 8011A5D0
    addiu   $at, $zero, 0x028E         # $at = 0000028E
    beql    a2, v0, lbl_8005A9D8
    lw      t6, 0x1364(t1)             # 8011B934
    beq     v0, $at, lbl_8005A9D4
    addiu   $at, $zero, 0x0292         # $at = 00000292
    beq     v0, $at, lbl_8005A9D4
    addiu   $at, $zero, 0x0476         # $at = 00000476
    bnel    v0, $at, lbl_8005AB3C
    lh      t7, 0x00A4(s1)             # 000000A4
lbl_8005A9D4:
    lw      t6, 0x1364(t1)             # 8011B934
lbl_8005A9D8:
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   v1, $sp, 0x0060            # v1 = FFFFFFD8
    bne     t6, $zero, lbl_8005AB38
    addiu   t7, t7, 0x14B0             # t7 = 800F14B0
    lw      t9, 0x0000(t7)             # 800F14B0
    sw      t9, 0x0000(v1)             # FFFFFFD8
    lw      t8, 0x0004(t7)             # 800F14B4
    sw      t8, 0x0004(v1)             # FFFFFFDC
    lw      t9, 0x0008(t7)             # 800F14B8
    sw      t9, 0x0008(v1)             # FFFFFFE0
    lw      t8, 0x000C(t7)             # 800F14BC
    sw      t8, 0x000C(v1)             # FFFFFFE4
    lw      t9, 0x0010(t7)             # 800F14C0
    sw      t9, 0x0010(v1)             # FFFFFFE8
    lw      t8, 0x0014(t7)             # 800F14C4
    bne     a2, v0, lbl_8005AA38
    sw      t8, 0x0014(v1)             # FFFFFFEC
    lwl     t4, 0x0000(v1)             # FFFFFFD8
    lwr     t4, 0x0003(v1)             # FFFFFFDB
    addiu   t2, $sp, 0x0078            # t2 = FFFFFFF0
    sw      t4, 0x0000(t2)             # FFFFFFF0
    lhu     t4, 0x0004(v1)             # FFFFFFDC
    beq     $zero, $zero, lbl_8005AAA4
    sh      t4, 0x0004(t2)             # FFFFFFF4
lbl_8005AA38:
    addiu   $at, $zero, 0x028E         # $at = 0000028E
    bne     v0, $at, lbl_8005AA60
    addiu   t6, $sp, 0x0066            # t6 = FFFFFFDE
    lwl     t8, 0x0000(t6)             # FFFFFFDE
    lwr     t8, 0x0003(t6)             # FFFFFFE1
    addiu   t5, $sp, 0x0078            # t5 = FFFFFFF0
    sw      t8, 0x0000(t5)             # FFFFFFF0
    lhu     t8, 0x0004(t6)             # FFFFFFE2
    beq     $zero, $zero, lbl_8005AAA4
    sh      t8, 0x0004(t5)             # FFFFFFF4
lbl_8005AA60:
    addiu   $at, $zero, 0x0292         # $at = 00000292
    bne     v0, $at, lbl_8005AA8C
    addiu   t6, $sp, 0x0072            # t6 = FFFFFFEA
    addiu   t2, $sp, 0x006C            # t2 = FFFFFFE4
    lwl     t4, 0x0000(t2)             # FFFFFFE4
    lwr     t4, 0x0003(t2)             # FFFFFFE7
    addiu   t9, $sp, 0x0078            # t9 = FFFFFFF0
    sw      t4, 0x0000(t9)             # FFFFFFF0
    lhu     t4, 0x0004(t2)             # FFFFFFE8
    beq     $zero, $zero, lbl_8005AAA4
    sh      t4, 0x0004(t9)             # FFFFFFF4
lbl_8005AA8C:
    lwl     t8, 0x0000(t6)             # FFFFFFEA
    lwr     t8, 0x0003(t6)             # FFFFFFED
    addiu   t5, $sp, 0x0078            # t5 = FFFFFFF0
    sw      t8, 0x0000(t5)             # FFFFFFF0
    lhu     t8, 0x0004(t6)             # FFFFFFEE
    sh      t8, 0x0004(t5)             # FFFFFFF4
lbl_8005AAA4:
    lh      t2, 0x007A($sp)
    lh      t3, 0x007C($sp)
    lh      t9, 0x0078($sp)
    mtc1    t2, $f6                    # $f6 = NaN
    mtc1    t3, $f10                   # $f10 = 0.00
    mtc1    t9, $f4                    # $f4 = NaN
    cvt.s.w $f8, $f6
    sw      $zero, 0x0018($sp)
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    cvt.s.w $f16, $f10
    swc1    $f8, 0x0010($sp)
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    cvt.s.w $f4, $f4
    swc1    $f16, 0x0014($sp)
    lh      t4, 0x0032(s0)             # 00000032
    sw      t5, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      t4, 0x001C($sp)
    mfc1    a3, $f4
    jal     func_80025110              # ActorSpawn
    nop
    sw      v0, 0x0430(s0)             # 00000430
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021858
    or      a2, v0, $zero              # a2 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80021800
    or      a1, s0, $zero              # a1 = 00000000
    lh      t6, 0x00A4(s1)             # 000000A4
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xA5D0             # t1 = 8011A5D0
    sh      t6, 0x1348(t1)             # 8011B918
    beq     $zero, $zero, lbl_8005AEEC
    lw      $ra, 0x0034($sp)
lbl_8005AB38:
    lh      t7, 0x00A4(s1)             # 000000A4
lbl_8005AB3C:
    addiu   $at, $zero, 0x0063         # $at = 00000063
    bne     t7, $at, lbl_8005AC14
    nop
    lhu     t8, 0x13FA(t1)             # 8011B9CA
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    andi    t9, t8, 0x000F             # t9 = 00000000
    bne     a3, t9, lbl_8005AC14
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    lui     t1, 0x8012                 # t1 = 80120000
    bne     v0, $zero, lbl_8005AC14
    addiu   t1, t1, 0xA5D0             # t1 = 8011A5D0
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t2, -0x4600(t2)            # 8011BA00
    lui     a3, 0x445F                 # a3 = 445F0000
    ori     a3, a3, 0x8000             # a3 = 445F8000
    lh      t3, 0x0556(t2)             # 80120556
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    bne     t3, $zero, lbl_8005AC14
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x7914($at)           # 80107914
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t4, $zero, 0x8001          # t4 = FFFF8001
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    sw      t5, 0x0024($sp)
    sw      t4, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f4, 0x0014($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f18, 0x0010($sp)
    sw      v0, 0x0430(s0)             # 00000430
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021858
    or      a2, v0, $zero              # a2 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80021800
    or      a1, s0, $zero              # a1 = 00000000
    lh      t6, 0x00A4(s1)             # 000000A4
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xA5D0             # t1 = 8011A5D0
    sh      t6, 0x1348(t1)             # 8011B918
    lh      t7, 0x00A4(s1)             # 000000A4
    addiu   $at, $zero, 0x005D         # $at = 0000005D
    bnel    t7, $at, lbl_8005AEEC
    lw      $ra, 0x0034($sp)
    lw      t9, 0x0430(s0)             # 00000430
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_8005AEE8
    sb      t8, 0x0003(t9)             # 00000003
lbl_8005AC14:
    lui     v1, 0x800F                 # v1 = 800F0000
    lui     a1, 0x800F                 # a1 = 800F0000
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    addiu   a1, a1, 0x1568             # a1 = 800F1568
    addiu   v1, v1, 0x14C8             # v1 = 800F14C8
    lh      a2, 0x00A4(s1)             # 000000A4
    lh      t2, 0x0000(v1)             # 800F14C8
lbl_8005AC30:
    bnel    a2, t2, lbl_8005AEE0
    addiu   v1, v1, 0x0014             # v1 = 800F14DC
    lw      a0, 0x0008(t1)             # 8011A5D8
    lw      t3, 0x0004(v1)             # 800F14E0
    bnel    a0, t3, lbl_8005AEE0
    addiu   v1, v1, 0x0014             # v1 = 800F14F0
    lh      v0, 0x0010(v1)             # 800F1500
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_8005AD28
    addiu   $at, $zero, 0x0063         # $at = 00000063
    bne     a2, $at, lbl_8005ACA8
    ori     $at, $zero, 0xFFF1         # $at = 0000FFF1
    bnel    a0, $at, lbl_8005ACAC
    lh      t3, 0x000A(v1)             # 800F14FA
    lwc1    $f6, 0x0024(s0)            # 00000024
    lh      v0, 0x0010(v1)             # 800F1500
    trunc.w.s $f8, $f6
    mfc1    t5, $f8
    nop
    sh      t5, 0x0008(v1)             # 800F14F8
    lwc1    $f10, 0x0028(s0)           # 00000028
    trunc.w.s $f16, $f10
    mfc1    t7, $f16
    nop
    sh      t7, 0x000A(v1)             # 800F14FA
    lwc1    $f18, 0x002C(s0)           # 0000002C
    trunc.w.s $f4, $f18
    mfc1    t9, $f4
    nop
    sh      t9, 0x000C(v1)             # 800F14FC
lbl_8005ACA8:
    lh      t3, 0x000A(v1)             # 800F14FA
lbl_8005ACAC:
    lh      t4, 0x000C(v1)             # 800F14FC
    lh      t2, 0x0008(v1)             # 800F14F8
    mtc1    t3, $f8                    # $f8 = 0.00
    mtc1    t4, $f16                   # $f16 = 0.00
    mtc1    t2, $f6                    # $f6 = 0.00
    cvt.s.w $f10, $f8
    sw      $zero, 0x0018($sp)
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    cvt.s.w $f18, $f16
    swc1    $f10, 0x0010($sp)
    cvt.s.w $f6, $f6
    swc1    $f18, 0x0014($sp)
    lh      t5, 0x0032(s0)             # 00000032
    sw      v0, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      t5, 0x001C($sp)
    mfc1    a3, $f6
    jal     func_80025110              # ActorSpawn
    nop
    sw      v0, 0x0430(s0)             # 00000430
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021858
    or      a2, v0, $zero              # a2 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80021800
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8005AEEC
    lw      $ra, 0x0034($sp)
lbl_8005AD28:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beql    v0, $at, lbl_8005AD48
    lhu     t6, 0x13FA(t1)             # 000013FA
    beq     a3, v0, lbl_8005AD44
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    v0, $at, lbl_8005AE84
    lh      t3, 0x0008(v1)             # 00000008
lbl_8005AD44:
    lhu     t6, 0x13FA(t1)             # 000013FA
lbl_8005AD48:
    or      t0, $zero, $zero           # t0 = 00000000
    andi    t7, t6, 0x0010             # t7 = 00000000
    sra     t8, t7,  4
    beql    t8, $zero, lbl_8005AD6C
    lh      t9, 0x0008(v1)             # 00000008
    bnel    a3, v0, lbl_8005AD6C
    lh      t9, 0x0008(v1)             # 00000008
    ori     t0, $zero, 0x8000          # t0 = 00008000
    lh      t9, 0x0008(v1)             # 00000008
lbl_8005AD6C:
    lh      t2, 0x000A(v1)             # 0000000A
    lh      t3, 0x000C(v1)             # 0000000C
    mtc1    t9, $f4                    # $f4 = 0.00
    mtc1    t2, $f6                    # $f6 = 0.00
    mtc1    t3, $f10                   # $f10 = 0.00
    cvt.s.w $f4, $f4
    lh      t4, 0x000E(v1)             # 0000000E
    or      t5, v0, t0                 # t5 = 00008000
    sw      t5, 0x0024($sp)
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    cvt.s.w $f8, $f6
    mfc1    a3, $f4
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    sw      $zero, 0x0018($sp)
    cvt.s.w $f16, $f10
    swc1    $f8, 0x0010($sp)
    sw      $zero, 0x0020($sp)
    sw      v1, 0x0044($sp)
    sw      t4, 0x001C($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)
    lw      v1, 0x0044($sp)
    sw      v0, 0x0430(s0)             # 00000430
    or      a0, s1, $zero              # a0 = 00000000
    lh      t6, 0x0008(v1)             # 00000008
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, v0, $zero              # a2 = 00000000
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0024(s0)            # 00000024
    lh      t7, 0x000A(v1)             # 0000000A
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0028(s0)            # 00000028
    lh      t8, 0x000C(v1)             # 0000000C
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      t9, 0x00B8(s0)             # 000000B8
    mtc1    t8, $f10                   # $f10 = 0.00
    sh      t9, 0x00B4(s0)             # 000000B4
    cvt.s.w $f16, $f10
    swc1    $f16, 0x002C(s0)           # 0000002C
    lh      t2, 0x000E(v1)             # 0000000E
    jal     func_80021858
    sh      t2, 0x00B6(s0)             # 000000B6
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80021800
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f18, 0x0024(s0)           # 00000024
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    sub.s   $f6, $f18, $f4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    addiu   a3, $sp, 0x0054            # a3 = FFFFFFCC
    swc1    $f6, 0x0054($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0058($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    swc1    $f18, 0x005C($sp)
    jal     func_8009D328
    lh      a1, 0x07A0(s1)             # 000007A0
    beq     $zero, $zero, lbl_8005AEEC
    lw      $ra, 0x0034($sp)
    lh      t3, 0x0008(v1)             # 00000008
lbl_8005AE84:
    lh      t4, 0x000A(v1)             # 0000000A
    lh      t5, 0x000C(v1)             # 0000000C
    mtc1    t3, $f4                    # $f4 = 0.00
    mtc1    t4, $f6                    # $f6 = 0.00
    mtc1    t5, $f10                   # $f10 = 0.00
    cvt.s.w $f4, $f4
    lh      t6, 0x000E(v1)             # 0000000E
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    cvt.s.w $f8, $f6
    mfc1    a3, $f4
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    sw      v0, 0x0024($sp)
    cvt.s.w $f16, $f10
    swc1    $f8, 0x0010($sp)
    sw      t6, 0x001C($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)
    beq     $zero, $zero, lbl_8005AEEC
    lw      $ra, 0x0034($sp)
    addiu   v1, v1, 0x0014             # v1 = 00000014
lbl_8005AEE0:
    bnel    v1, a1, lbl_8005AC30
    lh      t2, 0x0000(v1)             # 00000014
lbl_8005AEE8:
    lw      $ra, 0x0034($sp)
lbl_8005AEEC:
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_8005AEFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0004(v1)             # 8011A5D4
    bnel    t6, $zero, lbl_8005B000
    lw      $ra, 0x0014($sp)
    jal     func_8005A3C0
    lh      a0, 0x1348(v1)             # 8011B918
    bnel    v0, $zero, lbl_8005AF3C
    lw      t7, 0x0018($sp)
    jal     func_8005A474
    lw      a0, 0x0018($sp)
    lw      t7, 0x0018($sp)
lbl_8005AF3C:
    jal     func_8005A3C0
    lh      a0, 0x00A4(t7)             # 000000A4
    lui     v1, 0x8012                 # v1 = 80120000
    beq     v0, $zero, lbl_8005AFFC
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t8, 0x1360(v1)             # 8011B930
    slti    $at, t8, 0x0004
    beql    $at, $zero, lbl_8005AFE0
    lw      a0, 0x0018($sp)
    lw      v0, 0x0000(v1)             # 8011A5D0
    addiu   $at, $zero, 0x028A         # $at = 0000028A
    beq     v0, $at, lbl_8005AF88
    addiu   $at, $zero, 0x028E         # $at = 0000028E
    beq     v0, $at, lbl_8005AF88
    addiu   $at, $zero, 0x0292         # $at = 00000292
    beq     v0, $at, lbl_8005AF88
    addiu   $at, $zero, 0x0476         # $at = 00000476
    bnel    v0, $at, lbl_8005AF98
    lw      t0, 0x0018($sp)
lbl_8005AF88:
    lw      t9, 0x1364(v1)             # 8011B934
    beql    t9, $zero, lbl_8005AFE0
    lw      a0, 0x0018($sp)
    lw      t0, 0x0018($sp)
lbl_8005AF98:
    addiu   $at, $zero, 0x0063         # $at = 00000063
    lh      t1, 0x00A4(t0)             # 000000A4
    bnel    t1, $at, lbl_8005AFF4
    lw      a0, 0x0018($sp)
    lhu     t2, 0x13FA(v1)             # 8011B9CA
    addiu   $at, $zero, 0x0006         # $at = 00000006
    andi    t3, t2, 0x000F             # t3 = 00000000
    bnel    t3, $at, lbl_8005AFF4
    lw      a0, 0x0018($sp)
    jal     func_800288B4
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    bne     v0, $zero, lbl_8005AFF0
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4600(t4)            # 8011BA00
    lh      t5, 0x0556(t4)             # 80120556
    bnel    t5, $zero, lbl_8005AFF4
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
lbl_8005AFE0:
    jal     func_8005A988
    lw      a1, 0x001C($sp)
    beq     $zero, $zero, lbl_8005B000
    lw      $ra, 0x0014($sp)
lbl_8005AFF0:
    lw      a0, 0x0018($sp)
lbl_8005AFF4:
    jal     func_8005A4F0
    lw      a1, 0x001C($sp)
lbl_8005AFFC:
    lw      $ra, 0x0014($sp)
lbl_8005B000:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8005B00C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a2, 0x0020($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x0024             # a0 = 00000024
    sh      a2, 0x0022($sp)
    jal     func_80063F00
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lh      a2, 0x0022($sp)
    lh      v1, 0x0032(a3)             # 00000032
    subu    t7, $zero, a2
    subu    a0, v0, v1
    sll     a0, a0, 16
    sra     a0, a0, 16
    slt     $at, a2, a0
    beq     $at, $zero, lbl_8005B064
    addu    t6, v1, a2
    beq     $zero, $zero, lbl_8005B080
    sh      t6, 0x0032(a3)             # 00000032
lbl_8005B064:
    slt     $at, a0, t7
    beq     $at, $zero, lbl_8005B07C
    addu    t9, v1, a0
    subu    t8, v1, a2
    beq     $zero, $zero, lbl_8005B080
    sh      t8, 0x0032(a3)             # 00000032
lbl_8005B07C:
    sh      t9, 0x0032(a3)             # 00000032
lbl_8005B080:
    lh      t0, 0x0032(a3)             # 00000032
    sh      t0, 0x00B6(a3)             # 000000B6
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    nop
    nop
    nop
