# "Debugger Display" part of the code file
#
# Handles the debugger display.
#
# Starts at VRAM: 80051E60 / VROM: AC7DC0
#

.section .text
func_80051E60:
# "gameplay" Main Update helper function
# related to drawing Camera Debugger stuff
# Zeros s32 8011BC20
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x43E0($at)        # 8011BC20
    jr      $ra
    nop


func_80051E70:
# related to drawing Camera Debugger stuff
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    sll     a3, a3, 16
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xBC20             # a2 = 8011BC20
    sra     a3, a3, 16
    lw      a1, 0x0038($sp)
    lw      a0, 0x02C4(a1)             # 000002C4
    lw      v1, 0x0000(a2)             # 8011BC20
    addiu   a0, a0, 0xFFD0             # a0 = FFFFFFD0
    sw      a0, 0x02C4(a1)             # 000002C4
    sw      a0, 0x0000(a2)             # 8011BC20
    swc1    $f12, 0x0000(a0)           # FFFFFFD0
    lw      t7, 0x0000(a2)             # 8011BC20
    swc1    $f14, 0x0004(t7)           # 00000004
    lw      t8, 0x0000(a2)             # 8011BC20
    lwc1    $f4, 0x0008($sp)
    swc1    $f4, 0x0008(t8)            # 00000008
    lw      t9, 0x0000(a2)             # 8011BC20
    sh      a3, 0x000C(t9)             # 0000000C
    lw      t1, 0x0000(a2)             # 8011BC20
    lh      t0, 0x0012($sp)
    sh      t0, 0x000E(t1)             # 0000000E
    lw      t3, 0x0000(a2)             # 8011BC20
    lh      t2, 0x0016($sp)
    sh      t2, 0x0010(t3)             # 00000010
    lw      t4, 0x0000(a2)             # 8011BC20
    lwc1    $f6, 0x0018($sp)
    swc1    $f6, 0x0014(t4)            # 00000014
    lw      t5, 0x0000(a2)             # 8011BC20
    lwc1    $f8, 0x001C($sp)
    swc1    $f8, 0x0018(t5)            # 00000018
    lw      t6, 0x0000(a2)             # 8011BC20
    lwc1    $f10, 0x0020($sp)
    swc1    $f10, 0x001C(t6)           # 0000001C
    lw      t8, 0x0000(a2)             # 8011BC20
    lbu     t7, 0x0027($sp)
    sb      t7, 0x0020(t8)             # 00000020
    lw      t0, 0x0000(a2)             # 8011BC20
    lbu     t9, 0x002B($sp)
    sb      t9, 0x0021(t0)             # 00000021
    lw      t2, 0x0000(a2)             # 8011BC20
    lbu     t1, 0x002F($sp)
    sb      t1, 0x0022(t2)             # 00000022
    lw      t4, 0x0000(a2)             # 8011BC20
    lbu     t3, 0x0033($sp)
    sb      t3, 0x0023(t4)             # 00000023
    lw      t6, 0x0000(a2)             # 8011BC20
    lh      t5, 0x0036($sp)
    sh      t5, 0x0024(t6)             # 00000024
    lw      t7, 0x0000(a2)             # 8011BC20
    sw      v1, 0x0028(t7)             # 00000028
    lw      v0, 0x0000(a2)             # 8011BC20
    jr      $ra
    nop


func_80051F4C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lui     s0, 0x8012                 # s0 = 80120000
    lw      s0, -0x43E0(s0)            # 8011BC20
    lui     s3, 0x800F                 # s3 = 800F0000
    addiu   s3, s3, 0xFC80             # s3 = 800EFC80
    beq     s0, $zero, lbl_80051FC0
    lui     s2, 0x800F                 # s2 = 800F0000
    addiu   s2, s2, 0xFC88             # s2 = 800EFC88
    lh      t6, 0x0024(s0)             # 80120024
lbl_80051F88:
    or      a0, s0, $zero              # a0 = 80120000
    or      a2, s1, $zero              # a2 = 00000000
    sll     t7, t6,  3
    addu    v0, s2, t7
    lh      t8, 0x0000(v0)             # 00000000
    lw      a1, 0x0004(v0)             # 00000004
    sll     t9, t8,  2
    addu    t0, s3, t9
    lw      t9, 0x0000(t0)             # 00000000
    jalr    $ra, t9
    nop
    lw      s0, 0x0028(s0)             # 80120028
    bnel    s0, $zero, lbl_80051F88
    lh      t6, 0x0024(s0)             # 80120024
lbl_80051FC0:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80051FDC:
# gameplay_keep d. list: 4298
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E6B8
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t3, 0x0021(s1)             # 00000021
    lbu     t0, 0x0020(s1)             # 00000020
    lbu     t7, 0x0022(s1)             # 00000022
    lbu     t2, 0x0023(s1)             # 00000023
    sll     t4, t3, 16
    sll     t1, t0, 24
    or      t5, t1, t4                 # t5 = 00000000
    sll     t8, t7,  8
    or      t9, t5, t8                 # t9 = FA000000
    or      t3, t9, t2                 # t3 = FA000000
    sw      t3, 0x0004(v1)             # 00000004
    lwc1    $f12, 0x0000(s1)           # 00000000
    lwc1    $f14, 0x0004(s1)           # 00000004
    jal     func_800AA7F4
    lw      a2, 0x0008(s1)             # 00000008
    lwc1    $f12, 0x0014(s1)           # 00000014
    lwc1    $f14, 0x0018(s1)           # 00000018
    lw      a2, 0x001C(s1)             # 0000001C
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0028($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA79C
    addu    a0, a0, $at
    lh      a0, 0x000C(s1)             # 0000000C
    lh      a1, 0x000E(s1)             # 0000000E
    lh      a2, 0x0010(s1)             # 00000010
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xFD90                 # t4 = FD900000
    lui     t3, 0xF300                 # t3 = F3000000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t6, 0x0024($sp)
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xF590                 # t5 = F5900000
    lui     t8, 0x0700                 # t8 = 07000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xE600                 # t9 = E6000000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0x0707                 # t1 = 07070000
    ori     t1, t1, 0xF400             # t1 = 0707F400
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xE700                 # t6 = E7000000
    lui     t0, 0xF200                 # t0 = F2000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xF588                 # t5 = F5880000
    ori     t5, t5, 0x0400             # t5 = F5880400
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x0003                 # t9 = 00030000
    ori     t9, t9, 0xC03C             # t9 = 0003C03C
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, s1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(s1)             # 00000000
    lw      t1, 0x0028($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t1)             # 0707F400
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0x0400                 # t7 = 04000000
    addiu   t7, t7, 0x4298             # t7 = 04004298
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_800521BC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E544
    or      s1, a0, $zero              # s1 = 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     t3, 0x800F                 # t3 = 800F0000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t4, 0x0021(s0)             # 00000021
    lbu     t1, 0x0020(s0)             # 00000020
    lbu     t8, 0x0022(s0)             # 00000022
    sll     t5, t4, 16
    lbu     t4, 0x0023(s0)             # 00000023
    sll     t2, t1, 24
    or      t6, t2, t5                 # t6 = 00000000
    sll     t9, t8,  8
    or      t1, t6, t9                 # t1 = 00000000
    or      t2, t1, t4                 # t2 = 00000000
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDB02                 # t7 = DB020000
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDC08                 # t9 = DC080000
    ori     t9, t9, 0x060A             # t9 = DC08060A
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    addiu   t3, t3, 0xFCC0             # t3 = 800EFCC0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDC08                 # t4 = DC080000
    lui     t2, 0x800F                 # t2 = 800F0000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    addiu   t2, t2, 0xFCB8             # t2 = 800EFCB8
    ori     t4, t4, 0x090A             # t4 = DC08090A
    sw      t4, 0x0000(v1)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    lwc1    $f12, 0x0000(s0)           # 00000000
    lwc1    $f14, 0x0004(s0)           # 00000004
    lw      a2, 0x0008(s0)             # 00000008
    jal     func_800AB510
    addiu   a3, s0, 0x000C             # a3 = 0000000C
    lwc1    $f12, 0x0014(s0)           # 00000014
    lwc1    $f14, 0x0018(s0)           # 00000018
    lw      a2, 0x001C(s0)             # 0000001C
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      t8, 0x0028($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t8)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t3, 0x0024($sp)
    sw      t3, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    nop
