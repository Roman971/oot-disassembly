.section .text
func_80803720:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x135C(v0)             # 8011B92C
    sw      $zero, 0x0098(a0)          # 00000098
    sw      $zero, 0x0004(v0)          # 8011A5D4
    jal     func_800900EC
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    ori     t7, $zero, 0xFFF3          # t7 = 0000FFF3
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    lw      a0, 0x0018($sp)
    sw      t7, 0x0008(v0)             # 8011A5D8
    sw      t8, 0x1360(v0)             # 8011B930
    lui     t9, 0x800A                 # t9 = 800A0000
    lui     t0, 0x0001                 # t0 = 00010000
    ori     t0, t0, 0x2518             # t0 = 00012518
    addiu   t9, t9, 0xA750             # t9 = 8009A750
    sw      t9, 0x000C(a0)             # 0000000C
    sw      t0, 0x0010(a0)             # 00000010
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8080378C:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_80803798:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EE5C
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_80803720
    lw      a0, 0x0018($sp)
    jal     func_8080378C
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808037DC:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_808037E8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    or      a0, a2, $zero              # a0 = 00000000
    sh      t6, 0x0110(t7)             # 80120110
    jal     func_800AA6B0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   a0, a2, 0x00A8             # a0 = 000000A8
    jal     func_80091858
    lw      a1, 0x0000(a2)             # 00000000
    lw      a2, 0x0018($sp)
    lui     t8, %hi(func_80803798)     # t8 = 80800000
    lui     t9, %hi(func_808037DC)     # t9 = 80800000
    addiu   t8, t8, %lo(func_80803798) # t8 = 80803798
    addiu   t9, t9, %lo(func_808037DC) # t9 = 808037DC
    sw      t8, 0x0004(a2)             # 00000004
    sw      t9, 0x0008(a2)             # 00000008
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop

.section .data


.section .rodata


