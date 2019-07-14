# "Draw Items" part of the code file
#
# Handles drawing get items and maybe other things.
#
# General Documentation about Get Items:
# https://wiki.cloudmodding.com/oot/Ovl_player_actor/Get_Items
#
# Starts at VRAM: 800570C0 / VROM: ACD020
#

.section .text
func_800570C0:
# Draw Get Item?
# A0 = Global Context
# A1 = s16 Get Item Model Id (0 = Bottle)
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    sll     t6, a1,  3
    addu    t6, t6, a1
    sll     t6, t6,  2
    lui     t9, 0x800F                 # t9 = 800F0000
    addu    t9, t9, t6
    lw      t9, -0x01D0(t9)            # 800EFE30
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80057104:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E1DC
    sw      a0, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t4, 0x800F                 # t4 = 800F0000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lh      t2, 0x002E($sp)
    sll     t3, t2,  3
    addu    t3, t3, t2
    sll     t3, t3,  2
    addu    t4, t4, t3
    lw      t4, -0x01CC(t4)            # 800EFE34
    sw      t4, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8005719C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    lw      a2, 0x0000(t6)             # 00000000
    lw      a0, 0x02D0(a2)             # 000002D0
    jal     func_8007DFBC
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0018($sp)
    addiu   t7, v0, 0x0008             # t7 = 00000008
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    sw      t7, 0x02D0(a2)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0028($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t9)             # 00000000
    lw      t0, 0x0018($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(a2)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lh      t3, 0x002E($sp)
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  2
    addu    t5, t5, t4
    lw      t5, -0x01CC(t5)            # 800EFE34
    sw      t5, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80057238:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sw      a1, 0x006C($sp)
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0058($sp)
    lw      a2, 0x0058($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    lui     t3, 0x800F                 # t3 = 800F0000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lh      t1, 0x006E($sp)
    addiu   t3, t3, 0xFE30             # t3 = 800EFE30
    sll     t2, t1,  3
    addu    t2, t2, t1
    sll     t2, t2,  2
    addu    a3, t2, t3
    lw      t4, 0x0004(a3)             # 00000004
    sw      t4, 0x0004(v1)             # 00000004
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E2C0
    sw      a3, 0x0044($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(s1)             # 0000009C
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sll     t1, v0,  3
    subu    t2, $zero, t1
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t3, $zero, 0x0010          # t3 = 00000010
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    sw      t4, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t2, 0x0020($sp)
    sw      t7, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x0050($sp)
    jal     func_8007EB84
    sw      v0, 0x001C($sp)
    lw      t0, 0x0050($sp)
    sw      v0, 0x0004(t0)             # 00000004
    jal     func_800AA6EC
    nop
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f12                  # $f12 = -8.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f14                  # $f14 = -2.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, s1, $at
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x004C($sp)
    lw      a1, 0x004C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0044($sp)
    lw      t1, 0x0008(t9)             # 00000008
    sw      t1, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_800573DC:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s0, 0x0038($sp)
    sw      a1, 0x0074($sp)
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0060($sp)
    lw      a2, 0x0060($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lh      t4, 0x0076($sp)
    addiu   t6, t6, 0xFE30             # t6 = 800EFE30
    sll     t5, t4,  3
    addu    t5, t5, t4
    sll     t5, t5,  2
    addu    s2, t5, t6
    lw      t7, 0x0004(s2)             # 00000004
    sw      t7, 0x0004(v1)             # 00000004
    jal     func_8007E2C0
    lw      a0, 0x0000(s1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0058($sp)
    lw      t2, 0x0058($sp)
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x0008(s2)             # 00000008
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t0, 0x009C(s1)             # 0000009C
    lw      a0, 0x0000(s1)             # 00000000
    sw      t9, 0x0010($sp)
    sll     t6, t0,  2
    subu    t6, t6, t0
    sll     t6, t6,  1
    subu    t7, $zero, t6
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    sw      t8, 0x0024($sp)
    sw      t9, 0x0028($sp)
    sw      t7, 0x0020($sp)
    sw      t4, 0x0014($sp)
    sw      v1, 0x0050($sp)
    jal     func_8007EB84
    sw      t0, 0x001C($sp)
    lw      t3, 0x0050($sp)
    sw      v0, 0x0004(t3)             # 00000004
    jal     func_800AA6EC
    nop
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, s1, $at
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x004C($sp)
    lw      a2, 0x004C($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0010(s2)             # 00000010
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x000C(s2)             # 0000000C
    sw      t5, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_800575D0:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sw      a1, 0x0074($sp)
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0060($sp)
    lw      a2, 0x0060($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lh      t4, 0x0076($sp)
    addiu   t6, t6, 0xFE30             # t6 = 800EFE30
    sll     t5, t4,  3
    addu    t5, t5, t4
    sll     t5, t5,  2
    addu    a3, t5, t6
    lw      t7, 0x0004(a3)             # 00000004
    sw      t7, 0x0004(v1)             # 00000004
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E2C0
    sw      a3, 0x0044($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0058($sp)
    lw      t2, 0x0058($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x0044($sp)
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t7, 0x0008(t6)             # 00000008
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t0, 0x009C(s1)             # 0000009C
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sll     t7, t0,  2
    subu    t7, t7, t0
    sll     t7, t7,  1
    subu    t8, $zero, t7
    sw      t8, 0x0020($sp)
    sw      t9, 0x0024($sp)
    sw      t4, 0x0028($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      v1, 0x0050($sp)
    jal     func_8007EB84
    sw      t0, 0x001C($sp)
    lw      t3, 0x0050($sp)
    sw      v0, 0x0004(t3)             # 00000004
    jal     func_800AA6EC
    nop
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, s1, $at
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x004C($sp)
    lw      a1, 0x004C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0044($sp)
    lw      t4, 0x000C(t9)             # 0000000C
    sw      t4, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_800577A8:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sw      a1, 0x006C($sp)
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(s1)             # 0000009C
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    andi    t3, $zero, 0x007F          # t3 = 00000000
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    sll     a3, v0,  1
    andi    t4, v0, 0x007F             # t4 = 00000000
    sw      t4, 0x0020($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      t5, 0x0024($sp)
    sw      t3, 0x001C($sp)
    sw      t2, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      t6, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      t0, $zero, $zero           # t0 = 00000000
    andi    a2, $zero, 0x00FF          # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0058($sp)
    lw      t1, 0x0058($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0054($sp)
    lw      a2, 0x0054($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lh      t3, 0x006E($sp)
    addiu   t5, t5, 0xFE30             # t5 = 800EFE30
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  2
    addu    a3, t4, t5
    lw      t6, 0x0004(a3)             # 00000004
    sw      t6, 0x0004(v1)             # 00000004
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E2C0
    sw      a3, 0x0044($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x004C($sp)
    lw      a1, 0x004C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x0044($sp)
    lw      t4, 0x0008(t3)             # 00000008
    sw      t4, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80057918:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sw      a1, 0x006C($sp)
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0058($sp)
    lw      a2, 0x0058($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    lui     t3, 0x800F                 # t3 = 800F0000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lh      t1, 0x006E($sp)
    addiu   t3, t3, 0xFE30             # t3 = 800EFE30
    sll     t2, t1,  3
    addu    t2, t2, t1
    sll     t2, t2,  2
    addu    a3, t2, t3
    lw      t4, 0x0004(a3)             # 00000004
    sw      t4, 0x0004(v1)             # 00000004
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E2C0
    sw      a3, 0x0044($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(s1)             # 0000009C
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sll     a3, v0,  2
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    addu    a3, a3, v0
    subu    a3, $zero, a3
    sw      t2, 0x0028($sp)
    sw      t1, 0x0024($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0050($sp)
    lw      t0, 0x0050($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x004C($sp)
    lw      a1, 0x004C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0044($sp)
    lw      t8, 0x0008(t7)             # 00000008
    sw      t8, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80057A80:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E1DC
    sw      a0, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      t0, 0x0018($sp)
    lw      a2, 0x0020($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0xFE30             # t5 = 800EFE30
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(a2)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lh      t3, 0x002E($sp)
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  2
    addu    a0, t4, t5
    lw      t6, 0x0004(a0)             # 00000004
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t8, 0x0008(a0)             # 00000008
    sw      t8, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80057B34:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0040($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0040($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0030($sp)
    lw      a3, 0x0030($sp)
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lh      t3, 0x0046($sp)
    addiu   t5, t5, 0xFE30             # t5 = 800EFE30
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  2
    addu    t0, t4, t5
    lw      t6, 0x0004(t0)             # 00000004
    sw      t6, 0x0004(v1)             # 00000004
    lw      a0, 0x02D0(s0)             # 000002D0
    jal     func_8007DFBC
    sw      t0, 0x0020($sp)
    sw      v0, 0x0028($sp)
    addiu   t7, v0, 0x0008             # t7 = 00000008
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0040($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t9)             # 00000000
    lw      t1, 0x0028($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0020($sp)
    lw      t5, 0x0008(t4)             # 00000008
    sw      t5, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80057C2C:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sw      a1, 0x007C($sp)
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(s1)             # 0000009C
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    subu    a2, $zero, v0
    sw      a2, 0x001C($sp)
    sw      t4, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      t2, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v1, 0x0068($sp)
    sw      v0, 0x0020($sp)
    jal     func_8007EB84
    or      a3, v0, $zero              # a3 = 00000000
    lw      t0, 0x0068($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0064($sp)
    lw      t1, 0x0064($sp)
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t2, 0x800F                 # t2 = 800F0000
    addiu   t2, t2, 0xFE30             # t2 = 800EFE30
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lh      t8, 0x007E($sp)
    sll     t9, t8,  3
    addu    t9, t9, t8
    sll     t9, t9,  2
    addu    a1, t9, t2
    lw      t3, 0x0008(a1)             # 00000008
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t5, 0x0004(a1)             # 00000004
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t7, 0x000C(a1)             # 0000000C
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t9, 0x0010(a1)             # 00000010
    sw      t9, 0x0004(v1)             # 00000004
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E2C0
    sw      a1, 0x0044($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0050($sp)
    lw      a3, 0x0050($sp)
    lw      a1, 0x0044($sp)
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t5, 0x0014(a1)             # 00000014
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t7, 0x0018(a1)             # 00000018
    sw      t7, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80057DEC:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x0058($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      t1, 0x0058($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(t1)             # 0000009C
    lw      a0, 0x0000(t1)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    sw      t5, 0x0028($sp)
    sw      t4, 0x0024($sp)
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x0048($sp)
    jal     func_8007EB84
    or      a2, v0, $zero              # a2 = 00000000
    lw      t0, 0x0048($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0058($sp)
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0044($sp)
    lw      a1, 0x0044($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lh      t3, 0x005E($sp)
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  2
    addu    t5, t5, t4
    lw      t5, -0x01CC(t5)            # 800EFE34
    sw      t5, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80057EF4:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x0058($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v0, 0x0058($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a2, 0x009C(v0)             # 0000009C
    lw      a0, 0x0000(v0)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addu    $at, a2, $zero
    sll     a2, a2,  2
    subu    a2, a2, $at
    sll     a2, a2,  1
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    sw      t4, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    or      a3, a2, $zero              # a3 = 00000000
    sw      a2, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      t9, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0048($sp)
    lw      t0, 0x0048($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0058($sp)
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0044($sp)
    lw      a1, 0x0044($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    lui     t3, 0x800F                 # t3 = 800F0000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lh      t1, 0x005E($sp)
    sll     t2, t1,  3
    addu    t2, t2, t1
    sll     t2, t2,  2
    addu    t3, t3, t2
    lw      t3, -0x01CC(t3)            # 800EFE34
    sw      t3, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80058008:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x0058($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      t1, 0x0058($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(t1)             # 0000009C
    lw      a0, 0x0000(t1)             # 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sll     a3, v0,  2
    sll     t4, v0,  1
    subu    t5, $zero, t4
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    subu    a3, a3, v0
    subu    a3, $zero, a3
    sw      t6, 0x0024($sp)
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      t5, 0x0020($sp)
    sw      t7, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0048($sp)
    lw      t0, 0x0048($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t2, 0x0058($sp)
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0044($sp)
    lw      a1, 0x0044($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lh      t5, 0x005E($sp)
    sll     t6, t5,  3
    addu    t6, t6, t5
    sll     t6, t6,  2
    addu    t7, t7, t6
    lw      t7, -0x01CC(t7)            # 800EFE34
    sw      t7, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80058120:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x0058($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      t1, 0x0058($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(t1)             # 0000009C
    lw      a0, 0x0000(t1)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    sw      t5, 0x0028($sp)
    sw      t4, 0x0024($sp)
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      v1, 0x0048($sp)
    sw      v0, 0x0020($sp)
    jal     func_8007EB84
    or      a3, v0, $zero              # a3 = 00000000
    lw      t0, 0x0048($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0058($sp)
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0044($sp)
    lw      a1, 0x0044($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lh      t3, 0x005E($sp)
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  2
    addu    t5, t5, t4
    lw      t5, -0x01CC(t5)            # 800EFE34
    sw      t5, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80058228:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t4, 0x800F                 # t4 = 800F0000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lh      t2, 0x002E($sp)
    sll     t3, t2,  3
    addu    t3, t3, t2
    sll     t3, t3,  2
    addu    t4, t4, t3
    lw      t4, -0x01CC(t4)            # 800EFE34
    sw      t4, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_800582C0:
# Draw Get Item (two param)
# A0 = Global Context
# A1 = s16 Get Item Model Id
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0040($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0040($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0030($sp)
    lw      a2, 0x0030($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t4, 0x800F                 # t4 = 800F0000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lh      t2, 0x0046($sp)
    addiu   t4, t4, 0xFE30             # t4 = 800EFE30
    sll     t3, t2,  3
    addu    t3, t3, t2
    sll     t3, t3,  2
    addu    a3, t3, t4
    lw      t5, 0x0004(a3)             # 00000004
    sw      t5, 0x0004(v1)             # 00000004
    lw      t6, 0x0040($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    sw      a3, 0x0020($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0040($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0028($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xDE00                 # t1 = DE000000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x0020($sp)
    lw      t3, 0x0008(t2)             # 00000008
    sw      t3, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_800583BC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    sw      a0, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a2)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      t0, 0x0018($sp)
    lw      a2, 0x0020($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0xFE30             # t5 = 800EFE30
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(a2)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lh      t3, 0x002E($sp)
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  2
    addu    a0, t4, t5
    lw      t6, 0x0004(a0)             # 00000004
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a2)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t8, 0x0008(a0)             # 00000008
    sw      t8, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80058470:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x0048($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0048($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0038($sp)
    lw      t0, 0x0038($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0xFE30             # t5 = 800EFE30
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lh      t3, 0x004E($sp)
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  2
    addu    a3, t4, t5
    lw      t6, 0x0008(a3)             # 00000008
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t8, 0x0004(a3)             # 00000004
    sw      t8, 0x0004(v1)             # 00000004
    lw      t9, 0x0048($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_8007E2C0
    sw      a3, 0x0024($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0048($sp)
    lw      a0, 0x0000(t4)             # 00000000
    jal     func_800AB900
    sw      v1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    lw      a3, 0x0024($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x000C(a3)             # 0000000C
    sw      t7, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80058584:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x0048($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0048($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0038($sp)
    lw      a3, 0x0038($sp)
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lh      t3, 0x004E($sp)
    addiu   t5, t5, 0xFE30             # t5 = 800EFE30
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  2
    addu    a2, t4, t5
    lw      t6, 0x0004(a2)             # 00000004
    sw      t6, 0x0004(v1)             # 00000004
    lw      t7, 0x0048($sp)
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_8007E2C0
    sw      a2, 0x0024($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t1, 0x0048($sp)
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0030($sp)
    lw      a3, 0x0030($sp)
    lw      a2, 0x0024($sp)
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t3, 0x0008(a2)             # 00000008
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t5, 0x000C(a2)             # 0000000C
    sw      t5, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80058698:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x0058($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      t2, 0x0058($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(t2)             # 0000009C
    lw      a0, 0x0000(t2)             # 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sll     a3, v0,  2
    subu    a3, a3, v0
    sll     t0, v0,  1
    subu    t5, $zero, t0
    sll     a3, a3,  1
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0024($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t9, 0x0010($sp)
    subu    a3, $zero, a3
    sw      t5, 0x0020($sp)
    or      a2, t0, $zero              # a2 = 00000000
    sw      t7, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v1, 0x0048($sp)
    jal     func_8007EB84
    sw      v0, 0x001C($sp)
    lw      t1, 0x0048($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t3, 0x0058($sp)
    lw      a0, 0x0000(t3)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0044($sp)
    lw      t2, 0x0044($sp)
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0xFE30             # t7 = 800EFE30
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lh      t5, 0x005E($sp)
    sll     t6, t5,  3
    addu    t6, t6, t5
    sll     t6, t6,  2
    addu    a0, t6, t7
    lw      t8, 0x0004(a0)             # 00000004
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t3, 0x0008(a0)             # 00000008
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t5, 0x000C(a0)             # 0000000C
    sw      t5, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_800587E8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      t1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xFE30             # t6 = 800EFE30
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lh      t4, 0x002E($sp)
    sll     t5, t4,  3
    addu    t5, t5, t4
    sll     t5, t5,  2
    addu    t0, t5, t6
    lw      t7, 0x0008(t0)             # 00000008
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t9, 0x0004(t0)             # 00000004
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t4, 0x000C(t0)             # 0000000C
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t6, 0x0010(t0)             # 00000010
    sw      t6, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_800588CC:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x0048($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0048($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0038($sp)
    lw      t0, 0x0038($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0xFE30             # t5 = 800EFE30
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lh      t3, 0x004E($sp)
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  2
    addu    a3, t4, t5
    lw      t6, 0x0008(a3)             # 00000008
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t8, 0x0004(a3)             # 00000004
    sw      t8, 0x0004(v1)             # 00000004
    lw      t9, 0x0048($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_8007E2C0
    sw      a3, 0x0020($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0048($sp)
    lw      a0, 0x0000(t4)             # 00000000
    jal     func_800AB900
    sw      v1, 0x002C($sp)
    lw      a2, 0x002C($sp)
    lw      a3, 0x0020($sp)
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t6, 0x0010(a3)             # 00000010
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t8, 0x000C(a3)             # 0000000C
    sw      t8, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_800589F8:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0018($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x77C0($at)          # 801077C0
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x004C($sp)
    mfc1    a2, $f12
    lw      s0, 0x0000(s1)             # 00000000
    mov.s   $f14, $f12
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_8007E298
    lw      a0, 0x0000(s1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0038($sp)
    lw      t0, 0x0038($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0x800F                 # t3 = 800F0000
    addiu   t3, t3, 0xFE30             # t3 = 800EFE30
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lh      t9, 0x004E($sp)
    sll     t2, t9,  3
    addu    t2, t2, t9
    sll     t2, t2,  2
    addu    a3, t2, t3
    lw      t4, 0x0008(a3)             # 00000008
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t6, 0x0004(a3)             # 00000004
    sw      t6, 0x0004(v1)             # 00000004
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E2C0
    sw      a3, 0x0020($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x002C($sp)
    lw      a2, 0x002C($sp)
    lw      a3, 0x0020($sp)
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t2, 0x0010(a3)             # 00000010
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t4, 0x000C(a3)             # 0000000C
    sw      t4, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80058B34:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x0058($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      t3, 0x0058($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(t3)             # 0000009C
    lw      a0, 0x0000(t3)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sll     t1, v0,  2
    subu    t6, $zero, t1
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sll     t0, v0,  1
    or      a2, t0, $zero              # a2 = 00000000
    subu    a3, $zero, t0
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      t7, 0x0024($sp)
    sw      t6, 0x0020($sp)
    sw      t1, 0x001C($sp)
    sw      t8, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0048($sp)
    lw      t2, 0x0048($sp)
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x0058($sp)
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0044($sp)
    lw      t0, 0x0044($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0xFE30             # t9 = 800EFE30
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lh      t7, 0x005E($sp)
    sll     t8, t7,  3
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    a3, t8, t9
    lw      t4, 0x000C(a3)             # 0000000C
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t6, 0x0010(a3)             # 00000010
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t8, 0x0008(a3)             # 00000008
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t4, 0x0004(a3)             # 00000004
    sw      t4, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80058C94:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    lw      t6, 0x0050($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0050($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0040($sp)
    lw      t1, 0x0040($sp)
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0xFE30             # t5 = 800EFE30
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lh      t3, 0x0056($sp)
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  2
    addu    a1, t4, t5
    lw      t6, 0x0008(a1)             # 00000008
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t8, 0x0004(a1)             # 00000004
    sw      t8, 0x0004(v1)             # 00000004
    lw      t9, 0x0050($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_8007E2C0
    sw      a1, 0x0024($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0050($sp)
    lw      a0, 0x0000(t4)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0034($sp)
    lw      t1, 0x0034($sp)
    lw      a1, 0x0024($sp)
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t6, 0x000C(a1)             # 0000000C
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t8, 0x0010(a1)             # 00000010
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t2, 0x0014(a1)             # 00000014
    sw      t2, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80058DD8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      t2, 0x0018($sp)
    lw      a2, 0x0020($sp)
    lui     a1, 0xDE00                 # a1 = DE000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xFE30             # t6 = 800EFE30
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      a1, 0x0000(v1)             # 00000000
    lh      t4, 0x002E($sp)
    sll     t5, t4,  3
    addu    t5, t5, t4
    sll     t5, t5,  2
    addu    a0, t5, t6
    lw      t7, 0x0008(a0)             # 00000008
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a2)             # 000002C0
    sw      a1, 0x0000(v1)             # 00000000
    lw      t9, 0x0004(a0)             # 00000004
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      a1, 0x0000(v1)             # 00000000
    lw      t4, 0x000C(a0)             # 0000000C
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(a2)             # 000002C0
    sw      a1, 0x0000(v1)             # 00000000
    lw      t6, 0x0010(a0)             # 00000010
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      a1, 0x0000(v1)             # 00000000
    lw      t8, 0x0014(a0)             # 00000014
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a2)             # 000002C0
    sw      a1, 0x0000(v1)             # 00000000
    lw      t3, 0x0018(a0)             # 00000018
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(a2)             # 000002C0
    sw      a1, 0x0000(v1)             # 00000000
    lw      t5, 0x001C(a0)             # 0000001C
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      a1, 0x0000(v1)             # 00000000
    lw      t7, 0x0020(a0)             # 00000020
    sw      t7, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    nop
