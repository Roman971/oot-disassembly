# "Demo (Cutscene) Frame Buffer" part of the code file
#
# The purpose of this file's content is unclear but it supposedly handles the cutscene frame buffer.
#
# General Documentation about Cutscenes:
# https://wiki.cloudmodding.com/oot/Cutscenes
#
# Starts at VRAM: 800981E0 / VROM: B0E140
#

.section .text
func_800981E0:
    lw      v0, 0x000C(a0)             # 0000000C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_800981F4
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80098204
lbl_800981F4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    jr      $ra
    swc1    $f4, 0x0004(a0)            # 00000004
lbl_80098204:
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x73A0($at)          # 80108C60
    swc1    $f6, 0x0004(a0)            # 00000004
    jr      $ra
    nop


func_80098218:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x01E0          # a1 = 000001E0
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f6                   # $f6 = -1000.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    addiu   a0, s0, 0x0018             # a0 = 00000018
    lui     a1, 0xC320                 # a1 = C3200000
    lui     a2, 0x4320                 # a2 = 43200000
    lui     a3, 0xC2F0                 # a3 = C2F00000
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_800D2C64
    swc1    $f10, 0x001C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x000C(s0)             # 0000000C
    lui     $at, 0x8011                # $at = 80110000
    swc1    $f16, 0x0004(s0)           # 00000004
    lwc1    $f18, -0x739C($at)         # 80108C64
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0010(s0)             # 00000010
    or      v0, s0, $zero              # v0 = 00000000
    swc1    $f18, 0x0008(s0)           # 00000008
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_800982B8:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_800982C4:
    blez    a1, lbl_800983D0
    or      v0, a1, $zero              # v0 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f12, -0x7398($at)         # 80108C68
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      v1, 0x000C(a0)             # 0000000C
lbl_800982F0:
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    bne     a1, v1, lbl_8009832C
    nop
    lwc1    $f6, 0x0008(a0)            # 00000008
    lwc1    $f4, 0x0004(a0)            # 00000004
    sub.s   $f8, $f2, $f6
    mul.s   $f0, $f4, $f8
    c.lt.s  $f0, $f12
    nop
    bc1f    lbl_80098324
    nop
    beq     $zero, $zero, lbl_800983C8
    swc1    $f12, 0x0004(a0)           # 00000004
lbl_80098324:
    beq     $zero, $zero, lbl_800983C8
    swc1    $f0, 0x0004(a0)            # 00000004
lbl_8009832C:
    bne     a2, v1, lbl_80098360
    nop
    lwc1    $f10, 0x0004(a0)           # 00000004
    lwc1    $f16, 0x0008(a0)           # 00000008
    sub.s   $f0, $f10, $f16
    c.lt.s  $f0, $f12
    nop
    bc1f    lbl_80098358
    nop
    beq     $zero, $zero, lbl_800983C8
    swc1    $f12, 0x0004(a0)           # 00000004
lbl_80098358:
    beq     $zero, $zero, lbl_800983C8
    swc1    $f0, 0x0004(a0)            # 00000004
lbl_80098360:
    bne     a3, v1, lbl_80098398
    nop
    lwc1    $f6, 0x0008(a0)            # 00000008
    lwc1    $f18, 0x0004(a0)           # 00000004
    sub.s   $f4, $f2, $f6
    div.s   $f0, $f18, $f4
    c.lt.s  $f2, $f0
    nop
    bc1f    lbl_80098390
    nop
    beq     $zero, $zero, lbl_800983C8
    swc1    $f2, 0x0004(a0)            # 00000004
lbl_80098390:
    beq     $zero, $zero, lbl_800983C8
    swc1    $f0, 0x0004(a0)            # 00000004
lbl_80098398:
    bne     t0, v1, lbl_800983C8
    nop
    lwc1    $f8, 0x0004(a0)            # 00000004
    lwc1    $f10, 0x0008(a0)           # 00000008
    add.s   $f0, $f8, $f10
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_800983C8
    swc1    $f0, 0x0004(a0)            # 00000004
    beq     $zero, $zero, lbl_800983C8
    swc1    $f2, 0x0004(a0)            # 00000004
    swc1    $f0, 0x0004(a0)            # 00000004
lbl_800983C8:
    bnel    v0, $zero, lbl_800982F0
    lw      v1, 0x000C(a0)             # 0000000C
lbl_800983D0:
    jr      $ra
    nop


func_800983D8:
    sw      a1, 0x0000(a0)             # 00000000
    jr      $ra
    nop


func_800983E4:
    sw      a1, 0x0010(a0)             # 00000010
    jr      $ra
    nop


func_800983F0:
    sw      a1, 0x000C(a0)             # 0000000C
    jr      $ra
    nop


func_800983FC:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s1, 0x0024($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s0, 0x0020($sp)
    sw      a1, 0x009C($sp)
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f4                   # $f4 = 360.00
    lwc1    $f0, 0x0004(s1)            # 00000004
    lw      t6, 0x009C($sp)
    lui     $at, 0x3F20                # $at = 3F200000
    mul.s   $f6, $f0, $f4
    mtc1    $at, $f8                   # $f8 = 0.63
    lw      s0, 0x0000(t6)             # 00000000
    lui     a3, 0x3F80                 # a3 = 3F800000
    mul.s   $f2, $f0, $f8
    swc1    $f6, 0x0080($sp)
    lw      v0, 0x0058(s1)             # 00000058
    sll     t7, v0,  2
    subu    t7, t7, v0
    sll     t7, t7,  6
    addu    s2, s1, t7
    addiu   s2, s2, 0x0060             # s2 = 00000060
    mfc1    a1, $f2
    mfc1    a2, $f2
    xori    t8, v0, 0x0001             # t8 = 00000001
    sw      t8, 0x0058(s1)             # 00000058
    jal     func_800CF424
    or      a0, s2, $zero              # a0 = 00000060
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    addiu   a0, s2, 0x0040             # a0 = 000000A0
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      a0, 0x0034($sp)
    lw      a1, 0x0080($sp)
    jal     func_800D28A4
    swc1    $f10, 0x0010($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s2, 0x0080             # a0 = 000000E0
    sw      a0, 0x0030($sp)
    mfc1    a1, $f0
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_800D3338
    nop
    or      v0, s0, $zero              # v0 = 00000000
    lui     t9, 0xE700                 # t9 = E7000000
    sw      t9, 0x0000(v0)             # 00000000
    sw      $zero, 0x0004(v0)          # 00000004
    addiu   s0, s0, 0x0008             # s0 = 00000008
    or      v1, s0, $zero              # v1 = 00000008
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   t1, t1, 0xC5D0             # t1 = 800FC5D0
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      t0, 0x0000(v1)             # 00000008
    sw      t1, 0x0004(v1)             # 0000000C
    addiu   s0, s0, 0x0008             # s0 = 00000010
    or      a0, s0, $zero              # a0 = 00000010
    lui     t2, 0xFA00                 # t2 = FA000000
    sw      t2, 0x0000(a0)             # 00000010
    lw      t3, 0x0000(s1)             # 00000000
    addiu   s0, s0, 0x0008             # s0 = 00000018
    or      a1, s0, $zero              # a1 = 00000018
    sw      t3, 0x0004(a0)             # 00000014
    lui     t4, 0xFCFF                 # t4 = FCFF0000
    lui     t5, 0xFFFD                 # t5 = FFFD0000
    ori     t5, t5, 0xF6FB             # t5 = FFFDF6FB
    ori     t4, t4, 0xFFFF             # t4 = FCFFFFFF
    sw      t4, 0x0000(a1)             # 00000018
    sw      t5, 0x0004(a1)             # 0000001C
    addiu   s0, s0, 0x0008             # s0 = 00000020
    or      a2, s0, $zero              # a2 = 00000020
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0007             # t6 = DA380007
    lui     a3, 0xDA38                 # a3 = DA380000
    addiu   t7, s1, 0x0018             # t7 = 00000018
    sw      t7, 0x0004(a2)             # 00000024
    ori     a3, a3, 0x0001             # a3 = DA380001
    sw      t6, 0x0000(a2)             # 00000020
    addiu   s0, s0, 0x0008             # s0 = 00000028
    or      v0, s0, $zero              # v0 = 00000028
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    sw      t8, 0x0000(v0)             # 00000028
    sw      s2, 0x0004(v0)             # 0000002C
    addiu   s0, s0, 0x0008             # s0 = 00000030
    or      v1, s0, $zero              # v1 = 00000030
    sw      a3, 0x0000(v1)             # 00000030
    lw      t9, 0x0034($sp)
    addiu   s0, s0, 0x0008             # s0 = 00000038
    or      a0, s0, $zero              # a0 = 00000038
    sw      t9, 0x0004(v1)             # 00000034
    sw      a3, 0x0000(a0)             # 00000038
    lw      t0, 0x0030($sp)
    addiu   s0, s0, 0x0008             # s0 = 00000040
    or      a1, s0, $zero              # a1 = 00000040
    sw      t0, 0x0004(a0)             # 0000003C
    lui     t1, 0x0100                 # t1 = 01000000
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0xC600             # t2 = 800FC600
    ori     t1, t1, 0xA014             # t1 = 0100A014
    sw      t1, 0x0000(a1)             # 00000040
    sw      t2, 0x0004(a1)             # 00000044
    addiu   s0, s0, 0x0008             # s0 = 00000048
    jal     func_80098700
    or      a0, s1, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_8009869C
    lw      v0, 0x0010(s1)             # 00000010
    lw      v0, 0x0010(s1)             # 00000010
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t3, 0x0600                 # t3 = 06000000
    beq     v0, $at, lbl_800985E0
    ori     t3, t3, 0x080A             # t3 = 0600080A
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80098618
    lui     t6, 0x0606                 # t6 = 06060000
    beq     $zero, $zero, lbl_800986D0
    or      v0, s0, $zero              # v0 = 00000048
lbl_800985E0:
    or      v0, s0, $zero              # v0 = 00000048
    lui     t4, 0x0008                 # t4 = 00080000
    ori     t4, t4, 0x0206             # t4 = 00080206
    sw      t4, 0x0004(v0)             # 0000004C
    sw      t3, 0x0000(v0)             # 00000048
    addiu   s0, s0, 0x0008             # s0 = 00000050
    or      v1, s0, $zero              # v1 = 00000050
    lui     t5, 0x050A                 # t5 = 050A0000
    ori     t5, t5, 0x0604             # t5 = 050A0604
    sw      t5, 0x0000(v1)             # 00000050
    sw      $zero, 0x0004(v1)          # 00000054
    addiu   s0, s0, 0x0008             # s0 = 00000058
    beq     $zero, $zero, lbl_800986D0
    or      v0, s0, $zero              # v0 = 00000058
lbl_80098618:
    or      v0, s0, $zero              # v0 = 00000058
    ori     t6, t6, 0x080A             # t6 = 0606080A
    addiu   t7, $zero, 0x040C          # t7 = 0000040C
    sw      t7, 0x0004(v0)             # 0000005C
    sw      t6, 0x0000(v0)             # 00000058
    addiu   s0, s0, 0x0008             # s0 = 00000060
    or      v1, s0, $zero              # v1 = 00000060
    lui     t8, 0x0600                 # t8 = 06000000
    lui     t9, 0x0002                 # t9 = 00020000
    ori     t9, t9, 0x000E             # t9 = 0002000E
    ori     t8, t8, 0x0C0E             # t8 = 06000C0E
    sw      t8, 0x0000(v1)             # 00000060
    sw      t9, 0x0004(v1)             # 00000064
    addiu   s0, s0, 0x0008             # s0 = 00000068
    or      a0, s0, $zero              # a0 = 00000068
    lui     t0, 0x0602                 # t0 = 06020000
    lui     t1, 0x0002                 # t1 = 00020000
    ori     t1, t1, 0x1012             # t1 = 00021012
    ori     t0, t0, 0x0E10             # t0 = 06020E10
    sw      t0, 0x0000(a0)             # 00000068
    sw      t1, 0x0004(a0)             # 0000006C
    addiu   s0, s0, 0x0008             # s0 = 00000070
    or      a1, s0, $zero              # a1 = 00000070
    lui     t2, 0x0602                 # t2 = 06020000
    lui     t3, 0x0004                 # t3 = 00040000
    ori     t3, t3, 0x120C             # t3 = 0004120C
    ori     t2, t2, 0x1204             # t2 = 06021204
    sw      t2, 0x0000(a1)             # 00000070
    sw      t3, 0x0004(a1)             # 00000074
    addiu   s0, s0, 0x0008             # s0 = 00000078
    beq     $zero, $zero, lbl_800986D0
    or      v0, s0, $zero              # v0 = 00000078
    lw      v0, 0x0010(s1)             # 00000010
lbl_8009869C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_800986CC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_800986CC
    lui     t4, 0x070C                 # t4 = 070C0000
    or      v0, s0, $zero              # v0 = 00000078
    lui     t5, 0x000C                 # t5 = 000C0000
    ori     t5, t5, 0x1012             # t5 = 000C1012
    ori     t4, t4, 0x0E10             # t4 = 070C0E10
    sw      t4, 0x0000(v0)             # 00000078
    sw      t5, 0x0004(v0)             # 0000007C
    addiu   s0, s0, 0x0008             # s0 = 00000080
lbl_800986CC:
    or      v0, s0, $zero              # v0 = 00000080
lbl_800986D0:
    lui     t6, 0xE700                 # t6 = E7000000
    sw      t6, 0x0000(v0)             # 00000080
    sw      $zero, 0x0004(v0)          # 00000084
    addiu   s0, s0, 0x0008             # s0 = 00000088
    lw      t7, 0x009C($sp)
    sw      s0, 0x0000(t7)             # 0000040C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_80098700:
    lw      v0, 0x000C(a0)             # 0000000C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80098714
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80098740
lbl_80098714:
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7394($at)          # 80108C6C
    lwc1    $f6, 0x0004(a0)            # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
    c.le.s  $f6, $f4
    nop
    bc1f    lbl_80098738
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80098738:
    jr      $ra
    nop
lbl_80098740:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80098750
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_8009877C
lbl_80098750:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lwc1    $f8, 0x0004(a0)            # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
    c.le.s  $f10, $f8
    nop
    bc1f    lbl_80098774
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80098774:
    jr      $ra
    nop
lbl_8009877C:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop
    nop
    nop


func_80098790:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    lbu     t6, 0x0008(s0)             # 00000008
    sb      $zero, 0x000A(s0)          # 0000000A
    addiu   a0, s0, 0x0018             # a0 = 00000018
    beq     t6, $zero, lbl_800987C0
    addiu   a1, s0, 0x0010             # a1 = 00000010
    addiu   t7, $zero, 0x014D          # t7 = 0000014D
    beq     $zero, $zero, lbl_800987C8
    sh      t7, 0x000E(s0)             # 0000000E
lbl_800987C0:
    addiu   t8, $zero, 0x0264          # t8 = 00000264
    sh      t8, 0x000E(s0)             # 0000000E
lbl_800987C8:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x4648                # $at = 46480000
    mtc1    $at, $f6                   # $f6 = 12800.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     a3, 0x3FAA                 # a3 = 3FAA0000
    ori     a3, a3, 0xAAAB             # a3 = 3FAAAAAB
    lui     a2, 0x4270                 # a2 = 42700000
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_800D0570
    swc1    $f8, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mfc1    a1, $f0
    mfc1    a2, $f0
    addiu   a0, s0, 0x0058             # a0 = 00000058
    lui     a3, 0x43C8                 # a3 = 43C80000
    swc1    $f0, 0x0010($sp)
    swc1    $f0, 0x0014($sp)
    swc1    $f0, 0x0018($sp)
    swc1    $f0, 0x001C($sp)
    swc1    $f0, 0x0024($sp)
    jal     func_800D0C58
    swc1    $f10, 0x0020($sp)
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80098848:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0218          # a1 = 00000218
    lw      v0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80098874:
# Store A0 on stack
# A0 = ?
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_80098880:
    lbu     t6, 0x0008(a0)             # 00000008
    lui     v0, 0x8012                 # v0 = 80120000
    beq     t6, $zero, lbl_800988F8
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    lbu     v0, -0x4617(v0)            # 8011B9E9
    lhu     t7, 0x000E(a0)             # 0000000E
    addiu   t2, $zero, 0x0264          # t2 = 00000264
    sll     t8, v0,  2
    subu    t8, t8, v0
    div     $zero, t8, a1
    bne     a1, $zero, lbl_800988B8
    nop
    break   # 0x01C00
lbl_800988B8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_800988D0
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_800988D0
    nop
    break   # 0x01800
lbl_800988D0:
    mflo    t9
    addu    t0, t7, t9
    andi    t1, t0, 0xFFFF             # t1 = 00000000
    slti    $at, t1, 0x0264
    bne     $at, $zero, lbl_80098958
    sh      t0, 0x000E(a0)             # 0000000E
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sh      t2, 0x000E(a0)             # 0000000E
    jr      $ra
    sb      t3, 0x000A(a0)             # 0000000A
lbl_800988F8:
    lbu     v0, -0x4617(v0)            # 8011B9E9
    lhu     t4, 0x000E(a0)             # 0000000E
    addiu   t9, $zero, 0x014D          # t9 = 0000014D
    sll     t5, v0,  2
    subu    t5, t5, v0
    div     $zero, t5, a1
    bne     a1, $zero, lbl_8009891C
    nop
    break   # 0x01C00
lbl_8009891C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_80098934
    lui     $at, 0x8000                # $at = 80000000
    bne     t5, $at, lbl_80098934
    nop
    break   # 0x01800
lbl_80098934:
    mflo    t6
    subu    t8, t4, t6
    andi    t7, t8, 0xFFFF             # t7 = 00000000
    slti    $at, t7, 0x014E
    beq     $at, $zero, lbl_80098958
    sh      t8, 0x000E(a0)             # 0000000E
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t9, 0x000E(a0)             # 0000000E
    sb      t0, 0x000A(a0)             # 0000000A
lbl_80098958:
    jr      $ra
    nop


func_80098960:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s0, 0x001C($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f0, -0x7390($at)          # 80108C70
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a1, 0x0084($sp)
    lw      t6, 0x0084($sp)
    mfc1    a1, $f0
    mfc1    a2, $f0
    lw      t7, 0x0000(t6)             # 00000000
    lui     a3, 0x3F80                 # a3 = 3F800000
    sw      t7, 0x007C($sp)
    lbu     v0, 0x0009(s0)             # 00000009
    sll     t8, v0,  2
    subu    t8, t8, v0
    sll     t8, t8,  6
    addu    s1, s0, t8
    addiu   s1, s1, 0x0098             # s1 = 00000098
    xori    t9, v0, 0x0001             # t9 = 00000001
    sb      t9, 0x0009(s0)             # 00000009
    jal     func_800CF424
    or      a0, s1, $zero              # a0 = 00000098
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    addiu   a0, s1, 0x0040             # a0 = 000000D8
    mfc1    a1, $f0
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      a0, 0x0030($sp)
    jal     func_800D28A4
    swc1    $f4, 0x0010($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s1, 0x0080             # a0 = 00000118
    sw      a0, 0x002C($sp)
    mfc1    a1, $f0
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_800D3338
    nop
    lw      t0, 0x007C($sp)
    lui     t2, 0xE700                 # t2 = E7000000
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFFC
    addiu   t1, t0, 0x0008             # t1 = 00000008
    sw      t1, 0x007C($sp)
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lhu     a1, 0x000C(s0)             # 0000000C
    lhu     a2, 0x000E(s0)             # 0000000E
    sw      $zero, 0x0010($sp)
    jal     func_8007EA1C
    or      a3, $zero, $zero           # a3 = 00000000
    lw      t3, 0x007C($sp)
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t4, t3, 0x0008             # t4 = 00000008
    sw      t4, 0x007C($sp)
    sw      v0, 0x0004(t3)             # 00000004
    sw      t5, 0x0000(t3)             # 00000000
    lw      a0, 0x007C($sp)
    lui     t8, 0xFA00                 # t8 = FA000000
    ori     t8, t8, 0x0080             # t8 = FA000080
    addiu   t7, a0, 0x0008             # t7 = 00000008
    sw      t7, 0x007C($sp)
    sw      t8, 0x0000(a0)             # 00000000
    lbu     t3, 0x0001(s0)             # 00000001
    lbu     t0, 0x0000(s0)             # 00000000
    lbu     t7, 0x0002(s0)             # 00000002
    sll     t4, t3, 16
    sll     t1, t0, 24
    or      t5, t1, t4                 # t5 = 00000008
    sll     t8, t7,  8
    or      t9, t5, t8                 # t9 = FA000088
    ori     t0, t9, 0x00FF             # t0 = FA0000FF
    sw      t0, 0x0004(a0)             # 00000004
    lw      t2, 0x007C($sp)
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0007             # t1 = DA380007
    addiu   t3, t2, 0x0008             # t3 = 00000008
    sw      t3, 0x007C($sp)
    addiu   t4, s0, 0x0018             # t4 = 00000018
    sw      t4, 0x0004(t2)             # 00000004
    sw      t1, 0x0000(t2)             # 00000000
    lw      t6, 0x007C($sp)
    lui     t5, 0xDB0E                 # t5 = DB0E0000
    lui     a2, 0xDA38                 # a2 = DA380000
    addiu   t7, t6, 0x0008             # t7 = 00000008
    sw      t7, 0x007C($sp)
    sw      t5, 0x0000(t6)             # 00000000
    lhu     t8, 0x0010(s0)             # 00000010
    ori     a2, a2, 0x0001             # a2 = DA380001
    lui     t2, 0xDA38                 # t2 = DA380000
    sw      t8, 0x0004(t6)             # 00000004
    lw      t9, 0x007C($sp)
    ori     t2, t2, 0x0005             # t2 = DA380005
    addiu   t3, s0, 0x0058             # t3 = 00000058
    addiu   t0, t9, 0x0008             # t0 = FA000090
    sw      t0, 0x007C($sp)
    sw      t3, 0x0004(t9)             # FA00008C
    sw      t2, 0x0000(t9)             # FA000088
    lw      t1, 0x007C($sp)
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t4, t1, 0x0008             # t4 = DA38000F
    sw      t4, 0x007C($sp)
    sw      s1, 0x0004(t1)             # DA38000B
    sw      t6, 0x0000(t1)             # DA380007
    lw      t7, 0x007C($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    addiu   t5, t7, 0x0008             # t5 = 00000010
    sw      t5, 0x007C($sp)
    sw      a2, 0x0000(t7)             # 00000008
    lw      t8, 0x0030($sp)
    sw      t8, 0x0004(t7)             # 0000000C
    lw      t9, 0x007C($sp)
    addiu   t0, t9, 0x0008             # t0 = FA000090
    sw      t0, 0x007C($sp)
    sw      a2, 0x0000(t9)             # FA000088
    lw      t2, 0x002C($sp)
    sw      t2, 0x0004(t9)             # FA00008C
    lw      t3, 0x007C($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0xD030             # t6 = 800FD030
    addiu   t1, t3, 0x0008             # t1 = 00000060
    sw      t1, 0x007C($sp)
    sw      t6, 0x0004(t3)             # 0000005C
    sw      t4, 0x0000(t3)             # 00000058
    lw      t7, 0x007C($sp)
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t5, t7, 0x0008             # t5 = 00000010
    sw      t5, 0x007C($sp)
    sw      $zero, 0x0004(t7)          # 0000000C
    sw      t8, 0x0000(t7)             # 00000008
    lw      t9, 0x007C($sp)
    lw      t0, 0x0084($sp)
    sw      t9, 0x0000(t0)             # FA000090
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_80098B9C:
# Return u8 0x000A(A0)
# A0 = ?
# V0 = LBU 0x000A(A0)
    lbu     v0, 0x000A(a0)             # 0000000A
    jr      $ra
    nop


func_80098BA8:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_80098BBC
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    beq     $zero, $zero, lbl_80098BC0
    sb      t6, 0x0008(a0)             # 00000008
lbl_80098BBC:
    sb      $zero, 0x0008(a0)          # 00000008
lbl_80098BC0:
    lbu     t7, 0x0008(a0)             # 00000008
    addiu   t8, $zero, 0x014D          # t8 = 0000014D
    addiu   t9, $zero, 0x0264          # t9 = 00000264
    beql    t7, $zero, lbl_80098BE0
    sh      t9, 0x000E(a0)             # 0000000E
    jr      $ra
    sh      t8, 0x000E(a0)             # 0000000E
lbl_80098BDC:
    sh      t9, 0x000E(a0)             # 0000000E
lbl_80098BE0:
    jr      $ra
    nop


func_80098BE8:
    sw      a1, 0x0000(a0)             # 00000000
    jr      $ra
    nop


func_80098BF4:
    sw      a1, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_80098C00:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lbu     v0, 0x0017(s0)             # 00000017
    lui     t7, 0x8010                 # t7 = 80100000
    sb      $zero, 0x0018(s0)          # 00000018
    beq     v0, v1, lbl_80098C50
    addiu   t7, t7, 0xD548             # t7 = 800FD548
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    beq     v0, a0, lbl_80098C5C
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80098C68
    lui     t9, 0x8010                 # t9 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0xD148             # t6 = 800FD148
    beq     $zero, $zero, lbl_80098C70
    sw      t6, 0x00A0(s0)             # 000000A0
lbl_80098C50:
    sw      t7, 0x00A0(s0)             # 000000A0
    beq     $zero, $zero, lbl_80098C70
    addiu   a0, $zero, 0x0002          # a0 = 00000002
lbl_80098C5C:
    addiu   t8, t8, 0xD948             # t8 = 800FD948
    beq     $zero, $zero, lbl_80098C70
    sw      t8, 0x00A0(s0)             # 000000A0
lbl_80098C68:
    addiu   t9, t9, 0xDD48             # t9 = 800FDD48
    sw      t9, 0x00A0(s0)             # 000000A0
lbl_80098C70:
    lbu     t0, 0x0016(s0)             # 00000016
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    bne     t0, $zero, lbl_80098C8C
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    beq     $zero, $zero, lbl_80098C90
    sw      t1, 0x0010(s0)             # 00000010
lbl_80098C8C:
    sw      t2, 0x0010(s0)             # 00000010
lbl_80098C90:
    lbu     v0, 0x0015(s0)             # 00000015
    bne     v0, $zero, lbl_80098CA4
    nop
    beq     $zero, $zero, lbl_80098D00
    sw      t3, 0x0000(s0)             # 00000000
lbl_80098CA4:
    bne     v1, v0, lbl_80098CB8
    lui     t4, 0xA0A0                 # t4 = A0A00000
    ori     t4, t4, 0xA0FF             # t4 = A0A0A0FF
    beq     $zero, $zero, lbl_80098D00
    sw      t4, 0x0000(s0)             # 00000000
lbl_80098CB8:
    bne     a0, v0, lbl_80098CD8
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   v0, $zero, 0x0064          # v0 = 00000064
    sb      v0, 0x0000(s0)             # 00000000
    sb      v0, 0x0001(s0)             # 00000001
    sb      v0, 0x0002(s0)             # 00000002
    beq     $zero, $zero, lbl_80098D00
    sb      t5, 0x0003(s0)             # 00000003
lbl_80098CD8:
    lbu     t7, 0x0017(s0)             # 00000017
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    sw      t6, 0x0010(s0)             # 00000010
    bne     v1, t7, lbl_80098CF8
    lui     t9, 0xA0A0                 # t9 = A0A00000
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    beq     $zero, $zero, lbl_80098D00
    sw      t8, 0x0000(s0)             # 00000000
lbl_80098CF8:
    ori     t9, t9, 0xA0FF             # t9 = A0A0A0FF
    sw      t9, 0x0000(s0)             # 00000000
lbl_80098D00:
    lbu     t0, 0x0014(s0)             # 00000014
    beql    t0, $zero, lbl_80098D2C
    lbu     t4, 0x0017(s0)             # 00000017
    lbu     t1, 0x0015(s0)             # 00000015
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sw      $zero, 0x000C(s0)          # 0000000C
    bne     t1, $at, lbl_80098D64
    addiu   t2, $zero, 0x00FA          # t2 = 000000FA
    beq     $zero, $zero, lbl_80098D64
    sw      t2, 0x000C(s0)             # 0000000C
    lbu     t4, 0x0017(s0)             # 00000017
lbl_80098D2C:
    addiu   t3, $zero, 0x01F4          # t3 = 000001F4
    sw      t3, 0x000C(s0)             # 0000000C
    bne     a0, t4, lbl_80098D64
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t5, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x5804          # a0 = 00005804
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_80098D64:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x4648                # $at = 46480000
    mtc1    $at, $f6                   # $f6 = 12800.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     a3, 0x3FAA                 # a3 = 3FAA0000
    ori     a3, a3, 0xAAAB             # a3 = 3FAAAAAB
    addiu   a0, s0, 0x0020             # a0 = 00000020
    addiu   a1, s0, 0x001A             # a1 = 0000001A
    lui     a2, 0x4270                 # a2 = 42700000
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_800D0570
    swc1    $f8, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mfc1    a1, $f0
    mfc1    a2, $f0
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a3, 0x43C8                 # a3 = 43C80000
    swc1    $f0, 0x0010($sp)
    swc1    $f0, 0x0014($sp)
    swc1    $f0, 0x0018($sp)
    swc1    $f0, 0x001C($sp)
    swc1    $f0, 0x0024($sp)
    jal     func_800D0C58
    swc1    $f10, 0x0020($sp)
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80098DEC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0228          # a1 = 00000228
    lw      v0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80098E18:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_80098E24:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lbu     t6, 0x0014(s0)             # 00000014
    beql    t6, $zero, lbl_80098F04
    lw      t7, 0x0010(s0)             # 00000010
    lw      v0, 0x000C(s0)             # 0000000C
    bnel    v0, $zero, lbl_80098E94
    lw      t9, 0x0010(s0)             # 00000010
    lbu     t7, 0x0017(s0)             # 00000017
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t7, $at, lbl_80098E94
    lw      t9, 0x0010(s0)             # 00000010
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x5803          # a0 = 00005803
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      v0, 0x000C(s0)             # 0000000C
    lw      t9, 0x0010(s0)             # 00000010
lbl_80098E94:
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    lw      t1, 0x002C($sp)
    multu   t9, v1
    addiu   t5, $zero, 0x01F4          # t5 = 000001F4
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    mflo    t0
    nop
    nop
    div     $zero, t0, t1
    bne     t1, $zero, lbl_80098EC4
    nop
    break   # 0x01C00
lbl_80098EC4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_80098EDC
    lui     $at, 0x8000                # $at = 80000000
    bne     t0, $at, lbl_80098EDC
    nop
    break   # 0x01800
lbl_80098EDC:
    mflo    t2
    addu    t3, v0, t2
    slti    $at, t3, 0x01F4
    sw      t3, 0x000C(s0)             # 0000000C
    bne     $at, $zero, lbl_80098F94
    or      t4, t3, $zero              # t4 = 00000000
    sw      t5, 0x000C(s0)             # 0000000C
    beq     $zero, $zero, lbl_80098F94
    sb      t6, 0x0018(s0)             # 00000018
    lw      t7, 0x0010(s0)             # 00000010
lbl_80098F04:
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    lw      t9, 0x002C($sp)
    multu   t7, v1
    lw      t1, 0x000C(s0)             # 0000000C
    lbu     t3, 0x0015(s0)             # 00000015
    mflo    t8
    nop
    nop
    div     $zero, t8, t9
    mflo    t0
    subu    t2, t1, t0
    bne     t9, $zero, lbl_80098F3C
    nop
    break   # 0x01C00
lbl_80098F3C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t9, $at, lbl_80098F54
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_80098F54
    nop
    break   # 0x01800
lbl_80098F54:
    sw      t2, 0x000C(s0)             # 0000000C
    beql    v1, t3, lbl_80098F78
    lw      t6, 0x000C(s0)             # 0000000C
    bgtz    t2, lbl_80098F94
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      $zero, 0x000C(s0)          # 0000000C
    beq     $zero, $zero, lbl_80098F94
    sb      t5, 0x0018(s0)             # 00000018
    lw      t6, 0x000C(s0)             # 0000000C
lbl_80098F78:
    addiu   t7, $zero, 0x00FA          # t7 = 000000FA
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    slti    $at, t6, 0x00FB
    beql    $at, $zero, lbl_80098F98
    lw      $ra, 0x0024($sp)
    sw      t7, 0x000C(s0)             # 0000000C
    sb      t8, 0x0018(s0)             # 00000018
lbl_80098F94:
    lw      $ra, 0x0024($sp)
lbl_80098F98:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80098FA8:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a1, 0x0084($sp)
    lw      t6, 0x0084($sp)
    lui     t2, 0xE700                 # t2 = E7000000
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFFC
    lw      t7, 0x0000(t6)             # 00000000
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    sw      t7, 0x007C($sp)
    lbu     v0, 0x0019(s0)             # 00000019
    sll     t8, v0,  2
    subu    t8, t8, v0
    sll     t8, t8,  6
    xori    t9, v0, 0x0001             # t9 = 00000001
    addu    s1, s0, t8
    sb      t9, 0x0019(s0)             # 00000019
    addiu   s1, s1, 0x00A8             # s1 = 000000A8
    lw      t0, 0x007C($sp)
    addiu   t1, t0, 0x0008             # t1 = 00000008
    sw      t1, 0x007C($sp)
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      a1, 0x0008(s0)             # 00000008
    lw      a2, 0x000C(s0)             # 0000000C
    jal     func_8007EA1C
    sw      t3, 0x0010($sp)
    lw      t4, 0x007C($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t5, t4, 0x0008             # t5 = 00000008
    sw      t5, 0x007C($sp)
    sw      v0, 0x0004(t4)             # 00000004
    sw      t6, 0x0000(t4)             # 00000000
    lw      t7, 0x007C($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, t7, 0x0008             # t8 = 00000008
    sw      t8, 0x007C($sp)
    sw      t9, 0x0000(t7)             # 00000000
    lw      t0, 0x00A0(s0)             # 000000A0
    lui     t3, 0xFA00                 # t3 = FA000000
    sw      t0, 0x0004(t7)             # 00000004
    lw      t1, 0x007C($sp)
    addiu   t2, t1, 0x0008             # t2 = 00000008
    sw      t2, 0x007C($sp)
    sw      t3, 0x0000(t1)             # 00000000
    lw      t4, 0x0000(s0)             # 00000000
    lui     t7, 0xFB00                 # t7 = FB000000
    addiu   t2, s0, 0x0020             # t2 = 00000020
    sw      t4, 0x0004(t1)             # 00000004
    lw      t5, 0x007C($sp)
    addiu   t6, t5, 0x0008             # t6 = 00000010
    sw      t6, 0x007C($sp)
    sw      t7, 0x0000(t5)             # 00000008
    lw      t8, 0x0000(s0)             # 00000000
    lui     $at, 0x8011                # $at = 80110000
    lui     t1, 0xDA38                 # t1 = DA380000
    sw      t8, 0x0004(t5)             # 0000000C
    lwc1    $f0, -0x7380($at)          # 80108C80
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lw      t9, 0x007C($sp)
    addiu   t0, t9, 0x0008             # t0 = DB060028
    sw      t0, 0x007C($sp)
    ori     t1, t1, 0x0007             # t1 = DA380007
    sw      t1, 0x0000(t9)             # DB060020
    sw      t2, 0x0004(t9)             # DB060024
    lw      t3, 0x007C($sp)
    lui     t5, 0xDB0E                 # t5 = DB0E0000
    lui     t9, 0xDA38                 # t9 = DA380000
    addiu   t4, t3, 0x0008             # t4 = FA000008
    sw      t4, 0x007C($sp)
    sw      t5, 0x0000(t3)             # FA000000
    lhu     t6, 0x001A(s0)             # 0000001A
    sw      t6, 0x0004(t3)             # FA000004
    lw      t7, 0x007C($sp)
    ori     t9, t9, 0x0005             # t9 = DA380005
    addiu   t0, s0, 0x0060             # t0 = 00000060
    addiu   t8, t7, 0x0008             # t8 = FB000008
    sw      t8, 0x007C($sp)
    sw      t0, 0x0004(t7)             # FB000004
    sw      t9, 0x0000(t7)             # FB000000
    c.eq.s  $f0, $f2
    nop
    bc1tl   lbl_80099150
    mtc1    $zero, $f0                 # $f0 = 0.00
    mfc1    a1, $f0
    mfc1    a2, $f0
    mfc1    a3, $f2
    jal     func_800CF424
    or      a0, s1, $zero              # a0 = 000000A8
    lw      t1, 0x007C($sp)
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, t1, 0x0008             # t2 = 00000008
    sw      t2, 0x007C($sp)
    sw      s1, 0x0004(t1)             # 00000004
    sw      t3, 0x0000(t1)             # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    nop
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80099150:
    addiu   s0, s1, 0x0040             # s0 = 000000E8
    or      a0, s0, $zero              # a0 = 000000E8
    c.eq.s  $f0, $f0
    nop
    bc1tl   lbl_800991A0
    c.eq.s  $f0, $f0
    mfc1    a1, $f0
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_800D28A4
    swc1    $f2, 0x0010($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      t4, 0x007C($sp)
    addiu   t5, t4, 0x0008             # t5 = 00000008
    sw      t5, 0x007C($sp)
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0001             # t6 = DA380001
    sw      t6, 0x0000(t4)             # 00000000
    sw      s0, 0x0004(t4)             # 00000004
    c.eq.s  $f0, $f0
lbl_800991A0:
    addiu   s0, s1, 0x0080             # s0 = 00000128
    bc1fl   lbl_800991C0
    mfc1    a1, $f0
    c.eq.s  $f0, $f0
    nop
    bc1tl   lbl_800991F0
    lw      t0, 0x007C($sp)
    mfc1    a1, $f0
lbl_800991C0:
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_800D3338
    or      a0, s0, $zero              # a0 = 00000128
    lw      t7, 0x007C($sp)
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0001             # t9 = DA380001
    addiu   t8, t7, 0x0008             # t8 = 00000008
    sw      t8, 0x007C($sp)
    sw      s0, 0x0004(t7)             # 00000004
    sw      t9, 0x0000(t7)             # 00000000
    lw      t0, 0x007C($sp)
lbl_800991F0:
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0xE368             # t3 = 800FE368
    addiu   t1, t0, 0x0008             # t1 = 00000008
    sw      t1, 0x007C($sp)
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      t2, 0x0000(t0)             # 00000000
    sw      t3, 0x0004(t0)             # 00000004
    lw      t4, 0x007C($sp)
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t5, t4, 0x0008             # t5 = 00000008
    sw      t5, 0x007C($sp)
    sw      $zero, 0x0004(t4)          # 00000004
    sw      t6, 0x0000(t4)             # 00000000
    lw      t7, 0x007C($sp)
    lw      t8, 0x0084($sp)
    sw      t7, 0x0000(t8)             # 00000008
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_80099244:
    lbu     v0, 0x0018(a0)             # 00000018
    jr      $ra
    nop


func_80099250:
    andi    t6, a1, 0x0080             # t6 = 00000000
    beq     t6, $zero, lbl_8009928C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     t7, a1,  5
    sra     t9, a1,  3
    sra     t2, a1,  1
    andi    t8, t7, 0x0001             # t8 = 00000000
    andi    t0, t9, 0x0003             # t0 = 00000000
    andi    t1, a1, 0x0001             # t1 = 00000000
    andi    t3, t2, 0x0003             # t3 = 00000000
    sb      t8, 0x0014(a0)             # 00000014
    sb      t0, 0x0015(a0)             # 00000015
    sb      t1, 0x0016(a0)             # 00000016
    jr      $ra
    sb      t3, 0x0017(a0)             # 00000017
lbl_8009928C:
    bne     a1, $at, lbl_8009929C
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    jr      $ra
    sb      t4, 0x0014(a0)             # 00000014
lbl_8009929C:
    sb      $zero, 0x0014(a0)          # 00000014
    jr      $ra
    nop


func_800992A8:
    sw      a1, 0x0000(a0)             # 00000000
    jr      $ra
    nop


func_800992B4:
    sw      a1, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_800992C0:
# Transition Animation 5 ?
# A0 = Data Start (Global Context + 0x121C8)
    lbu     v0, 0x0000(a0)             # 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $zero, lbl_80099314
    sb      $zero, 0x0001(a0)          # 00000001
    beq     v0, $at, lbl_800992E8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80099310
    sb      $zero, 0x0007(a0)          # 00000007
    beq     $zero, $zero, lbl_80099314
    sb      $zero, 0x0001(a0)          # 00000001
lbl_800992E8:
    lbu     t6, 0x0002(a0)             # 00000002
    sh      $zero, 0x0008(a0)          # 00000008
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    beq     t6, $zero, lbl_80099304
    nop
    beq     $zero, $zero, lbl_80099310
    sb      t7, 0x0007(a0)             # 00000007
lbl_80099304:
    beq     $zero, $zero, lbl_80099310
    sb      $zero, 0x0007(a0)          # 00000007
    sb      $zero, 0x0007(a0)          # 00000007
lbl_80099310:
    sb      $zero, 0x0001(a0)          # 00000001
lbl_80099314:
    jr      $ra
    nop


func_8009931C:
# Transition Animation 5 Init
# Blanks 0xC bytes at A0
# A0 = Data Start (Global Context + 0x121C8)
# V0 = Allocated Data (A0)?
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    lw      v0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80099348:
# Transition Animation 5 ?
# A0 = ?
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_80099354:
# Transition Animation 5 Update Function?
# A0 = Data Start (Global Context + 0x121C8)
# A1 = Framerate Divisor (s16)
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lbu     v0, 0x0000(a3)             # 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $zero, lbl_800994D8
    lw      $ra, 0x0014($sp)
    beq     v0, $at, lbl_80099388
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80099438
    lbu     t3, 0x0007(a3)             # 00000007
    beq     $zero, $zero, lbl_800994D8
    lw      $ra, 0x0014($sp)
lbl_80099388:
    lhu     t6, 0x0008(a3)             # 00000008
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addu    t7, t6, a1
    sh      t7, 0x0008(a3)             # 00000008
    lbu     v0, -0x4618(v0)            # 8011B9E8
    andi    v1, t7, 0xFFFF             # v1 = 00000000
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    slt     $at, v1, v0
    bnel    $at, $zero, lbl_800993CC
    mtc1    v1, $f6                    # $f6 = 0.00
    sh      v0, 0x0008(a3)             # 00000008
    andi    v1, v0, 0xFFFF             # v1 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    sb      t8, 0x0001(a3)             # 00000001
    lbu     v0, -0x4618(v0)            # 8011B9E8
    mtc1    v1, $f6                    # $f6 = 0.00
lbl_800993CC:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    bgez    v1, lbl_800993EC
    cvt.s.w $f8, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_800993EC:
    mtc1    v0, $f18                   # $f18 = 0.00
    mul.s   $f16, $f4, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    v0, lbl_8009940C
    cvt.s.w $f6, $f18
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f6, $f6, $f10
lbl_8009940C:
    div.s   $f4, $f16, $f6
    lbu     t0, 0x0002(a3)             # 00000002
    trunc.w.s $f8, $f4
    mfc1    a0, $f8
    beq     t0, $zero, lbl_8009942C
    subu    t2, t1, a0
    beq     $zero, $zero, lbl_800994D4
    sb      t2, 0x0007(a3)             # 00000007
lbl_8009942C:
    beq     $zero, $zero, lbl_800994D4
    sb      a0, 0x0007(a3)             # 00000007
    lbu     t3, 0x0007(a3)             # 00000007
lbl_80099438:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    sh      t3, 0x002A($sp)
    lh      v1, 0x0D38(v0)             # 80120D38
    beql    v1, $zero, lbl_800994D0
    lh      t9, 0x002A($sp)
    bgez    v1, lbl_80099488
    addiu   a0, v0, 0x0D38             # a0 = 80120D38
    addiu   a0, $sp, 0x002A            # a0 = FFFFFFFA
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_800637D4
    sw      a3, 0x0030($sp)
    beq     v0, $zero, lbl_800994CC
    lw      a3, 0x0030($sp)
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x4600(t5)            # 8011BA00
    addiu   t4, $zero, 0x0096          # t4 = 00000096
    beq     $zero, $zero, lbl_800994CC
    sh      t4, 0x0D38(t5)             # 80120D38
lbl_80099488:
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    jal     func_800637D4
    sw      a3, 0x0030($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    addiu   a0, $sp, 0x002A            # a0 = FFFFFFFA
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800637D4
    lh      a2, 0x0D38(t6)             # 80120D38
    beq     v0, $zero, lbl_800994CC
    lw      a3, 0x0030($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      $zero, 0x0D38(t7)          # 80120D38
    sb      t8, 0x0001(a3)             # 00000001
lbl_800994CC:
    lh      t9, 0x002A($sp)
lbl_800994D0:
    sb      t9, 0x0007(a3)             # 00000007
lbl_800994D4:
    lw      $ra, 0x0014($sp)
lbl_800994D8:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_800994E4:
# Transition Animation 5 Draw Function?
    lbu     t6, 0x0007(a0)             # 00000007
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0xE440             # t8 = 800FE440
    beq     t6, $zero, lbl_800995A8
    lui     t7, 0xDE00                 # t7 = DE000000
    lw      v1, 0x0000(a1)             # 00000000
    or      a2, v1, $zero              # a2 = 00000000
    sw      t7, 0x0000(a2)             # 00000000
    sw      t8, 0x0004(a2)             # 00000004
    addiu   v1, v1, 0x0008             # v1 = 00000008
    or      a3, v1, $zero              # a3 = 00000008
    lui     t9, 0xFA00                 # t9 = FA000000
    sw      t9, 0x0000(a3)             # 00000008
    addiu   v0, a0, 0x0004             # v0 = 00000004
    lbu     t3, 0x0000(v0)             # 00000004
    lbu     t6, 0x0001(v0)             # 00000005
    lbu     t2, 0x0002(v0)             # 00000006
    sll     t4, t3, 24
    sll     t7, t6, 16
    or      t8, t4, t7                 # t8 = DE000000
    lbu     t4, 0x0003(v0)             # 00000007
    sll     t3, t2,  8
    or      t5, t8, t3                 # t5 = DE000000
    or      t7, t5, t4                 # t7 = DE000000
    sw      t7, 0x0004(a3)             # 0000000C
    addiu   v1, v1, 0x0008             # v1 = 00000010
    lui     t9, 0x8010                 # t9 = 80100000
    lw      t9, -0x1B00(t9)            # 800FE500
    lui     t5, 0x8010                 # t5 = 80100000
    lw      t5, -0x1AFC(t5)            # 800FE504
    addiu   t2, t9, 0xFFFF             # t2 = 800FFFFF
    andi    t8, t2, 0x03FF             # t8 = 000003FF
    addiu   t4, t5, 0xFFFF             # t4 = 800FFFFF
    andi    t7, t4, 0x03FF             # t7 = 000003FF
    sll     t3, t8, 14
    or      t0, v1, $zero              # t0 = 00000010
    lui     $at, 0xF600                # $at = F6000000
    or      t6, t3, $at                # t6 = F6000000
    sll     t9, t7,  2
    or      t2, t6, t9                 # t2 = F6100000
    sw      t2, 0x0000(t0)             # 00000010
    sw      $zero, 0x0004(t0)          # 00000014
    addiu   v1, v1, 0x0008             # v1 = 00000018
    or      t1, v1, $zero              # t1 = 00000018
    lui     t8, 0xE700                 # t8 = E7000000
    sw      t8, 0x0000(t1)             # 00000018
    sw      $zero, 0x0004(t1)          # 0000001C
    addiu   v1, v1, 0x0008             # v1 = 00000020
    sw      v1, 0x0000(a1)             # 00000000
lbl_800995A8:
    jr      $ra
    nop


func_800995B0:
# Transition Animation 5 ?
# A0 = Data Start (Global Context + 0x121C8)
# V0 = lbu 0x0001(A0)
    lbu     v0, 0x0001(a0)             # 00000001
    jr      $ra
    nop


func_800995BC:
# Transition Animation 5 ?
# A0 = Data Start (Global Context + 0x121C8)
# A1 = ?
# Writes sw A1 to 0x0004(A0)
    sw      a1, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_800995C8:
# Transition Animation 5 ?
# A0 = Data Start (Global Context + 0x121C8)
# A1 = ? (1 if fading out, 2 if fading in)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_800995E0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      v0, 0x0000(a0)             # 00000000
    jr      $ra
    sb      v0, 0x0002(a0)             # 00000002
lbl_800995E0:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a1, $at, lbl_800995F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      v0, 0x0000(a0)             # 00000000
    jr      $ra
    sb      $zero, 0x0002(a0)          # 00000002
lbl_800995F8:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a1, $at, lbl_8009960C
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    jr      $ra
    sb      t6, 0x0000(a0)             # 00000000
lbl_8009960C:
    sb      $zero, 0x0000(a0)          # 00000000
    jr      $ra
    nop
    nop
    nop


func_80099620:
# sw A0, 800FE474($zero)
    lui     $at, 0x8010                # $at = 80100000
    sw      a0, -0x1B8C($at)           # 800FE474
    jr      $ra
    nop


func_80099630:
# lw V0, 800FE474($zero)
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, -0x1B8C(v0)            # 800FE474
    jr      $ra
    nop


func_80099640:
# sw A0, 800FE478($zero)
    lui     $at, 0x8010                # $at = 80100000
    sw      a0, -0x1B88($at)           # 800FE478
    jr      $ra
    nop


func_80099650:
# lw V0, 800FE478($zero)
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, -0x1B88(v0)            # 800FE478
    jr      $ra
    nop


func_80099660:
    lui     $at, 0x8010                # $at = 80100000
    sw      $zero, -0x1B90($at)        # 800FE470
    lui     $at, 0x8010                # $at = 80100000
    sw      $zero, -0x1B8C($at)        # 800FE474
    lui     $at, 0x8010                # $at = 80100000
    sw      $zero, -0x1B88($at)        # 800FE478
    jr      $ra
    nop


func_80099680:
# sw $zero, 800FE478
    lui     $at, 0x8010                # $at = 80100000
    sw      $zero, -0x1B88($at)        # 800FE478
    jr      $ra
    nop


func_80099690:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a0, $at, lbl_800996A4
    lui     a2, 0x8010                 # a2 = 80100000
    beq     $zero, $zero, lbl_800996D4
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
lbl_800996A4:
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    div     $zero, t6, a0
    mflo    v0
    bne     a0, $zero, lbl_800996BC
    nop
    break   # 0x01C00
lbl_800996BC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a0, $at, lbl_800996D4
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_800996D4
    nop
    break   # 0x01800
lbl_800996D4:
    addiu   a2, a2, 0xE478             # a2 = 800FE478
    lui     a0, 0x8010                 # a0 = 80100000
    lw      a0, -0x1B8C(a0)            # 800FE474
    lw      v1, 0x0000(a2)             # 800FE478
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0xE470             # a3 = 800FE470
    slt     $at, v1, a0
    beql    $at, $zero, lbl_80099730
    slt     $at, a0, v1
    lw      t7, 0x0000(a3)             # 800FE470
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beql    a1, t7, lbl_80099710
    addu    a1, v1, v0
    sw      a1, 0x0000(a3)             # 800FE470
    addu    a1, v1, v0
lbl_80099710:
    slt     $at, a1, a0
    beq     $at, $zero, lbl_80099724
    nop
    jr      $ra
    sw      a1, 0x0000(a2)             # 800FE478
lbl_80099724:
    jr      $ra
    sw      a0, 0x0000(a2)             # 800FE478
lbl_8009972C:
    slt     $at, a0, v1
lbl_80099730:
    beq     $at, $zero, lbl_80099774
    lui     a3, 0x8010                 # a3 = 80100000
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0xE470             # a3 = 800FE470
    lw      t8, 0x0000(a3)             # 800FE470
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beql    a1, t8, lbl_80099758
    subu    a1, v1, v0
    sw      a1, 0x0000(a3)             # 800FE470
    subu    a1, v1, v0
lbl_80099758:
    slt     $at, a0, a1
    beq     $at, $zero, lbl_8009976C
    nop
    jr      $ra
    sw      a1, 0x0000(a2)             # 800FE478
lbl_8009976C:
    jr      $ra
    sw      a0, 0x0000(a2)             # 800FE478
lbl_80099774:
    addiu   a3, a3, 0xE470             # a3 = 800FC8E0
    sw      $zero, 0x0000(a3)          # 800FC8E0
    jr      $ra
    nop
    nop
    nop
    nop


func_80099790:
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   $sp, $sp, 0xFFF0           # $sp = FFFFFFF0
    mtc1    $at, $f16                  # $f16 = 1.00
    sw      a2, 0x0018($sp)
    c.lt.s  $f16, $f12
    nop
    bc1fl   lbl_800997B8
    sub.s   $f0, $f16, $f12
    mov.s   $f12, $f16
    sub.s   $f0, $f16, $f12
lbl_800997B8:
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    lui     $at, 0x3F00                # $at = 3F000000
    mul.s   $f4, $f0, $f0
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x8011                # $at = 80110000
    lw      v1, 0x0020($sp)
    lw      a0, 0x0024($sp)
    lw      a2, 0x0028($sp)
    lw      v0, 0x002C($sp)
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f2, $f12, $f12
    div.s   $f8, $f6, $f18
    mul.s   $f14, $f2, $f12
    nop
    mul.s   $f4, $f14, $f10
    lwc1    $f10, -0x7370($at)         # 80108C90
    lui     $at, 0x3F00                # $at = 3F000000
    swc1    $f8, 0x0000($sp)
    sub.s   $f6, $f4, $f2
    add.s   $f4, $f6, $f10
    neg.s   $f6, $f12
    swc1    $f4, 0x0004($sp)
    mul.s   $f10, $f6, $f12
    nop
    mul.s   $f6, $f10, $f12
    mtc1    $at, $f10                  # $f10 = 0.50
    nop
    mul.s   $f6, $f6, $f10
    mtc1    $at, $f10                  # $f10 = 0.50
    nop
    mul.s   $f10, $f2, $f10
    add.s   $f6, $f6, $f10
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x8011                # $at = 80110000
    mul.s   $f10, $f12, $f10
    add.s   $f6, $f6, $f10
    lwc1    $f10, -0x736C($at)         # 80108C94
    add.s   $f6, $f6, $f10
    div.s   $f10, $f14, $f18
    swc1    $f6, 0x0008($sp)
    swc1    $f10, 0x000C($sp)
    lwc1    $f10, 0x0000(v1)           # 00000000
    mul.s   $f8, $f8, $f10
    lwc1    $f10, 0x0000(a0)           # 00000000
    mul.s   $f4, $f4, $f10
    add.s   $f10, $f8, $f4
    lwc1    $f8, 0x0000(a2)            # 00000000
    mul.s   $f4, $f6, $f8
    lwc1    $f8, 0x0000(v0)            # 00000000
    add.s   $f6, $f10, $f4
    lwc1    $f10, 0x000C($sp)
    mul.s   $f4, $f8, $f10
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0000(a1)            # 00000000
    lwc1    $f10, 0x0000($sp)
    lwc1    $f4, 0x0004(v1)            # 00000004
    lwc1    $f8, 0x0004($sp)
    mul.s   $f6, $f10, $f4
    lwc1    $f10, 0x0004(a0)           # 00000004
    mul.s   $f4, $f8, $f10
    lwc1    $f10, 0x0008($sp)
    add.s   $f8, $f6, $f4
    lwc1    $f6, 0x0004(a2)            # 00000004
    mul.s   $f4, $f10, $f6
    lwc1    $f6, 0x0004(v0)            # 00000004
    add.s   $f10, $f8, $f4
    lwc1    $f8, 0x000C($sp)
    mul.s   $f4, $f6, $f8
    add.s   $f6, $f4, $f10
    swc1    $f6, 0x0004(a1)            # 00000004
    lwc1    $f8, 0x0000($sp)
    lwc1    $f4, 0x0008(v1)            # 00000008
    lwc1    $f6, 0x0004($sp)
    mul.s   $f10, $f8, $f4
    lwc1    $f8, 0x0008(a0)            # 00000008
    mul.s   $f4, $f6, $f8
    lwc1    $f8, 0x0008($sp)
    add.s   $f6, $f10, $f4
    lwc1    $f10, 0x0008(a2)           # 00000008
    mul.s   $f4, $f8, $f10
    lwc1    $f10, 0x0008(v0)           # 00000008
    add.s   $f8, $f6, $f4
    lwc1    $f6, 0x000C($sp)
    mul.s   $f4, $f10, $f6
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0008(a1)           # 00000008
    lwc1    $f6, 0x0000($sp)
    lwc1    $f4, 0x000C(v1)            # 0000000C
    lwc1    $f10, 0x0004($sp)
    lw      t6, 0x0018($sp)
    mul.s   $f8, $f6, $f4
    lwc1    $f6, 0x000C(a0)            # 0000000C
    mul.s   $f4, $f10, $f6
    lwc1    $f6, 0x0008($sp)
    add.s   $f10, $f8, $f4
    lwc1    $f8, 0x000C(a2)            # 0000000C
    mul.s   $f4, $f6, $f8
    lwc1    $f8, 0x000C(v0)            # 0000000C
    add.s   $f6, $f10, $f4
    lwc1    $f10, 0x000C($sp)
    mul.s   $f4, $f8, $f10
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0000(t6)            # 00000000
    lwc1    $f10, 0x0000($sp)
    lwc1    $f4, 0x0010(v1)            # 00000010
    lwc1    $f8, 0x0004($sp)
    mul.s   $f6, $f10, $f4
    lwc1    $f10, 0x0010(a0)           # 00000010
    mul.s   $f4, $f8, $f10
    lwc1    $f10, 0x0008($sp)
    add.s   $f8, $f6, $f4
    lwc1    $f6, 0x0010(a2)            # 00000010
    mul.s   $f4, $f10, $f6
    lwc1    $f6, 0x0010(v0)            # 00000010
    add.s   $f10, $f8, $f4
    lwc1    $f8, 0x000C($sp)
    mul.s   $f4, $f6, $f8
    add.s   $f6, $f4, $f10
    swc1    $f6, 0x0000(a3)            # 00000000
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp = 00000000


func_800999A4:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    mtc1    $zero, $f18                # $f18 = 0.00
    sw      $ra, 0x0024($sp)
    sw      a0, 0x00A0($sp)
    sw      a1, 0x00A4($sp)
    sw      a2, 0x00A8($sp)
    sw      a3, 0x00AC($sp)
    lw      t7, 0x00B0($sp)
    lw      t6, 0x00B4($sp)
    or      t2, $zero, $zero           # t2 = 00000000
    lh      t0, 0x0000(t7)             # 00000000
    mov.s   $f14, $f18
    mov.s   $f16, $f18
    bgez    t0, lbl_800999E4
    lwc1    $f12, 0x0000(t6)           # 00000000
    mov.s   $f12, $f18
lbl_800999E4:
    lw      t8, 0x00AC($sp)
    sll     t9, t0,  4
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    addu    v0, t8, t9
    lb      t3, 0x0000(v0)             # 00000000
    beq     t1, t3, lbl_80099A20
    nop
    lb      t4, 0x0010(v0)             # 00000010
    beq     t1, t4, lbl_80099A20
    nop
    lb      t5, 0x0020(v0)             # 00000020
    addiu   v0, $sp, 0x004C            # v0 = FFFFFFAC
    or      a0, $zero, $zero           # a0 = 00000000
    bne     t1, t5, lbl_80099A28
    lw      t6, 0x00AC($sp)
lbl_80099A20:
    beq     $zero, $zero, lbl_80099C50
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80099A28:
    sll     t7, t0,  4
    addu    v1, t6, t7
    addiu   a1, $zero, 0x0040          # a1 = 00000040
    addiu   a0, a0, 0x0010             # a0 = 00000010
    beq     a0, a1, lbl_80099AA4
    lh      t8, 0x0008(v1)             # 00000008
lbl_80099A40:
    mtc1    t8, $f18                   # $f18 = 0.00
    addiu   a0, a0, 0x0010             # a0 = 00000020
    addiu   v0, v0, 0x0014             # v0 = 00000015
    cvt.s.w $f18, $f18
    addiu   v1, v1, 0x0010             # v1 = 00000010
    swc1    $f18, -0x0014(v0)          # 00000001
    lh      t9, -0x0006(v1)            # 0000000A
    mtc1    t9, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    swc1    $f18, -0x0010(v0)          # 00000005
    lh      t3, -0x0004(v1)            # 0000000C
    mtc1    t3, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    swc1    $f18, -0x000C(v0)          # 00000009
    lb      t4, -0x000F(v1)            # 00000001
    mtc1    t4, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    swc1    $f18, -0x0008(v0)          # 0000000D
    lwc1    $f18, -0x000C(v1)          # 00000004
    swc1    $f18, -0x0004(v0)          # 00000011
    bne     a0, a1, lbl_80099A40
    lh      t8, 0x0008(v1)             # 00000018
lbl_80099AA4:
    mtc1    t8, $f18                   # $f18 = 0.00
    addiu   v0, v0, 0x0014             # v0 = 00000029
    addiu   v1, v1, 0x0010             # v1 = 00000020
    cvt.s.w $f18, $f18
    swc1    $f18, -0x0014(v0)          # 00000015
    lh      t9, -0x0006(v1)            # 0000001A
    mtc1    t9, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    swc1    $f18, -0x0010(v0)          # 00000019
    lh      t3, -0x0004(v1)            # 0000001C
    mtc1    t3, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    swc1    $f18, -0x000C(v0)          # 0000001D
    lb      t4, -0x000F(v1)            # 00000011
    mtc1    t4, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    swc1    $f18, -0x0008(v0)          # 00000021
    lwc1    $f18, -0x000C(v1)          # 00000014
    swc1    $f18, -0x0004(v0)          # 00000025
    addiu   t5, $sp, 0x004C            # t5 = FFFFFFAC
    addiu   t6, $sp, 0x0060            # t6 = FFFFFFC0
    addiu   t7, $sp, 0x0074            # t7 = FFFFFFD4
    addiu   t8, $sp, 0x0088            # t8 = FFFFFFE8
    sw      t8, 0x001C($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    lw      a1, 0x00A0($sp)
    lw      a2, 0x00A4($sp)
    lw      a3, 0x00A8($sp)
    sw      t2, 0x009C($sp)
    swc1    $f14, 0x003C($sp)
    jal     func_80099790
    swc1    $f16, 0x0038($sp)
    lw      a1, 0x00B0($sp)
    lw      a2, 0x00AC($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    lh      t9, 0x0000(a1)             # 00000000
    lw      a0, 0x00B4($sp)
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    sll     t3, t9,  4
    addu    v0, a2, t3
    lhu     v1, 0x0012(v0)             # 00000012
    lw      t2, 0x009C($sp)
    lwc1    $f14, 0x003C($sp)
    beq     v1, $zero, lbl_80099B94
    lwc1    $f16, 0x0038($sp)
    mtc1    v1, $f8                    # $f8 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    bgez    v1, lbl_80099B90
    cvt.s.w $f10, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f10, $f10, $f4
lbl_80099B90:
    div.s   $f14, $f6, $f10
lbl_80099B94:
    lhu     v1, 0x0022(v0)             # 00000022
    lui     $at, 0x3F80                # $at = 3F800000
    beql    v1, $zero, lbl_80099BCC
    sub.s   $f4, $f16, $f14
    mtc1    v1, $f4                    # $f4 = 0.00
    mtc1    $at, $f8                   # $f8 = 1.00
    bgez    v1, lbl_80099BC4
    cvt.s.w $f6, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f6, $f6, $f10
lbl_80099BC4:
    div.s   $f16, $f8, $f6
    sub.s   $f4, $f16, $f14
lbl_80099BCC:
    lwc1    $f2, 0x0000(a0)            # 00000000
    mul.s   $f10, $f2, $f4
    add.s   $f0, $f10, $f14
    c.lt.s  $f0, $f18
    nop
    bc1fl   lbl_80099BF4
    add.s   $f8, $f2, $f0
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    add.s   $f8, $f2, $f0
lbl_80099BF4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    swc1    $f8, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    c.le.s  $f12, $f6
    nop
    bc1fl   lbl_80099C50
    or      v0, t2, $zero              # v0 = 00000000
    lh      t4, 0x0000(a1)             # 00000000
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x0000(a1)             # 00000000
    lh      t6, 0x0000(a1)             # 00000000
    sll     t7, t6,  4
    addu    t8, a2, t7
    lb      t9, 0x0030(t8)             # 00000030
    bnel    t1, t9, lbl_80099C44
    lwc1    $f4, 0x0000(a0)            # 00000000
    sh      $zero, 0x0000(a1)          # 00000000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lwc1    $f4, 0x0000(a0)            # 00000000
lbl_80099C44:
    sub.s   $f10, $f4, $f12
    swc1    $f10, 0x0000(a0)           # 00000000
    or      v0, t2, $zero              # v0 = 00000001
lbl_80099C50:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000
    jr      $ra
    nop
