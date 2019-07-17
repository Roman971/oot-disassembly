# "Static Context" part of the code file
#
# Handles the Static Context.
#
# General Documentation about the Static Context:
# - https://wiki.cloudmodding.com/oot/Static_Context
# - https://docs.google.com/spreadsheets/d/1lh8JcUcuXg7GR4DTWMhmfk42Y0H6nJvUg-zRn8-8bPk/edit#gid=537874687
#
# Starts at VRAM: 80051B50 / VROM: AC7AB0
#

.section .text
func_80051B50:
# Initializes the "Static Context" on the main heap
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CDA20
    addiu   a0, $zero, 0x15D4          # a0 = 000015D4
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xBA00             # a0 = 8011BA00
    sw      v0, 0x0000(a0)             # 8011BA00
    sw      $zero, 0x0000(v0)          # 00000000
    lw      t7, 0x0000(a0)             # 8011BA00
    addiu   v0, $zero, 0x15C0          # v0 = 000015C0
    or      v1, $zero, $zero           # v1 = 00000000
    sw      $zero, 0x0004(t7)          # 00000004
    lw      t8, 0x0000(a0)             # 8011BA00
    sw      $zero, 0x0008(t8)          # 00000008
    lw      t9, 0x0000(a0)             # 8011BA00
    sw      $zero, 0x000C(t9)          # 0000000C
    lw      t0, 0x0000(a0)             # 8011BA00
    sw      $zero, 0x0010(t0)          # 00000010
lbl_80051B98:
    lw      t1, 0x0000(a0)             # 8011BA00
    addu    t2, t1, v1
    sh      $zero, 0x0014(t2)          # 00000014
    lw      t3, 0x0000(a0)             # 8011BA00
    addu    t4, t3, v1
    sh      $zero, 0x0016(t4)          # 00000016
    lw      t5, 0x0000(a0)             # 8011BA00
    addu    t6, t5, v1
    sh      $zero, 0x0018(t6)          # 00000018
    lw      t7, 0x0000(a0)             # 8011BA00
    addu    t8, t7, v1
    addiu   v1, v1, 0x0008             # v1 = 00000008
    bne     v1, v0, lbl_80051B98
    sh      $zero, 0x001A(t8)          # 0000001A
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80051BE0:
# SW a0, a1, a2 on SP+0x00, 0x04, 0x08
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    jr      $ra
    nop


func_80051BF4:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      s0, 0x0004($sp)
    sw      a0, 0x0008($sp)
    sw      a1, 0x000C($sp)
    sw      a2, 0x0010($sp)
    lui     t1, 0x800F                 # t1 = 800F0000
    addiu   t1, t1, 0xFC50             # t1 = 800EFC50
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    andi    a0, a0, 0x00FF             # a0 = 00000000
    or      s0, a3, $zero              # s0 = 00000000
    lh      v1, 0x0000(t1)             # 800EFC50
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   t7, t7, 0xBA08             # t7 = 8011BA08
    sll     t6, v1,  2
    subu    t6, t6, v1
    sll     t6, t6,  3
    slti    $at, v1, 0x0016
    beq     $at, $zero, lbl_80051CA4
    addu    v0, t6, t7
    sb      a0, 0x0000(v0)             # 00000000
    sb      a1, 0x0001(v0)             # 00000001
    sb      a2, 0x0002(v0)             # 00000002
    lbu     a3, 0x0000(s0)             # 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   t0, v0, 0x0004             # t0 = 00000004
    addiu   s0, s0, 0x0001             # s0 = 00000001
    beq     a3, $zero, lbl_80051C94
    sb      a3, 0x0003(v0)             # 00000003
lbl_80051C68:
    slti    v0, v1, 0x0015
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    xori    v0, v0, 0x0001             # v0 = 00000001
    bne     v0, $zero, lbl_80051C94
    sra     v1, v1, 16
    lbu     a3, 0x0000(s0)             # 00000001
    addiu   t0, t0, 0x0001             # t0 = 00000005
    addiu   s0, s0, 0x0001             # s0 = 00000002
    bne     a3, $zero, lbl_80051C68
    sb      a3, -0x0001(t0)            # 00000004
lbl_80051C94:
    sb      $zero, 0x0000(t0)          # 00000005
    lh      t8, 0x0000(t1)             # 800EFC50
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x0000(t1)             # 800EFC50
lbl_80051CA4:
    lw      s0, 0x0004($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_80051CB0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s6, 0x0038($sp)
    lui     s6, 0x800F                 # s6 = 800F0000
    sw      s3, 0x002C($sp)
    or      s3, a0, $zero              # s3 = 00000000
    addiu   s6, s6, 0xFC50             # s6 = 800EFC50
    sw      $ra, 0x003C($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    lh      t6, 0x0000(s6)             # 800EFC50
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA08             # s0 = 8011BA08
    blez    t6, lbl_80051D6C
    or      s2, $zero, $zero           # s2 = 00000000
    lui     s1, 0x8012                 # s1 = 80120000
    lui     s5, 0x8010                 # s5 = 80100000
    lui     s4, 0x800F                 # s4 = 800F0000
    addiu   s4, s4, 0xFC54             # s4 = 800EFC54
    addiu   s5, s5, 0x72D0             # s5 = 801072D0
    addiu   s1, s1, 0xBA0B             # s1 = 8011BA0B
lbl_80051D0C:
    lbu     t7, 0x0002(s0)             # 8011BA0A
    or      a0, s3, $zero              # a0 = 00000000
    sll     t8, t7,  2
    addu    v0, s4, t8
    lbu     t9, 0x0003(v0)             # 00000003
    lbu     a1, 0x0000(v0)             # 00000000
    lbu     a2, 0x0001(v0)             # 00000001
    lbu     a3, 0x0002(v0)             # 00000002
    jal     func_800CBE58
    sw      t9, 0x0010($sp)
    or      a0, s3, $zero              # a0 = 00000000
    lbu     a1, 0x0000(s0)             # 8011BA08
    jal     func_800CBEC8
    lbu     a2, 0x0001(s0)             # 8011BA09
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 801072D0
    jal     func_800CC588
    or      a2, s1, $zero              # a2 = 8011BA0B
    lh      t0, 0x0000(s6)             # 800EFC50
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   s0, s0, 0x0018             # s0 = 8011BA20
    slt     $at, s2, t0
    bne     $at, $zero, lbl_80051D0C
    addiu   s1, s1, 0x0018             # s1 = 8011BA23
lbl_80051D6C:
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


func_80051D94:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0068($sp)
    jal     func_800CC4AC
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFC8
    lw      t6, 0x0068($sp)
    lw      a0, 0x02C0(t6)             # 000002C0
    jal     func_800A1AA0
    sw      a0, 0x0060($sp)
    lw      a3, 0x0068($sp)
    lw      a2, 0x02B0(a3)             # 000002B0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFC8
    addiu   t7, a2, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a3)             # 000002B0
    sw      v0, 0x0004(a2)             # 00000004
    sw      t8, 0x0000(a2)             # 00000000
    jal     func_800CC508
    or      a1, v0, $zero              # a1 = 00000000
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      v0, 0x0194(t9)             # 80120194
    beq     v0, $at, lbl_80051E00
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_80051E08
    nop
lbl_80051E00:
    jal     func_80051CB0
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFC8
lbl_80051E08:
    lui     $at, 0x800F                # $at = 800F0000
    sh      $zero, -0x03B0($at)        # 800EFC50
    jal     func_800CC550
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFC8
    addiu   a1, v0, 0x0008             # a1 = 00000008
    sw      a1, 0x0064($sp)
    lui     t0, 0xDF00                 # t0 = DF000000
    sw      t0, 0x0000(v0)             # 00000000
    sw      $zero, 0x0004(v0)          # 00000004
    jal     func_800A1AAC
    lw      a0, 0x0060($sp)
    lw      t1, 0x0064($sp)
    lw      t2, 0x0068($sp)
    sw      t1, 0x02C0(t2)             # 000002C0
    jal     func_800CC500
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFC8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop
    nop
    nop
