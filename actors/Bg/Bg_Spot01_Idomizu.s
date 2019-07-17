.section .text
func_80A53170:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     a1, %hi(var_80A53410)      # a1 = 80A50000
    addiu   a1, a1, %lo(var_80A53410)  # a1 = 80A53410
    jal     func_80063F7C
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EE0(v0)             # 8011B4B0
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0x0011         # $at = 00000011
    andi    t7, t6, 0x0080             # t7 = 00000000
    bne     t7, $zero, lbl_80A531C8
    lui     t9, %hi(func_80A53218)     # t9 = 80A50000
    lw      t8, 0x0004(v0)             # 8011A5D4
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t8, $zero, lbl_80A531C4
    nop
    beq     $zero, $zero, lbl_80A531C4
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80A531C4:
    bne     v0, $at, lbl_80A531D8
lbl_80A531C8:
    lui     $at, %hi(var_80A53420)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A53420)($at)
    beq     $zero, $zero, lbl_80A531E8
    swc1    $f4, 0x0140(a0)            # 00000140
lbl_80A531D8:
    lui     $at, 0x4250                # $at = 42500000
    mtc1    $at, $f6                   # $f6 = 52.00
    nop
    swc1    $f6, 0x0140(a0)            # 00000140
lbl_80A531E8:
    lwc1    $f8, 0x0140(a0)            # 00000140
    addiu   t9, t9, %lo(func_80A53218) # t9 = 80A53218
    sw      t9, 0x013C(a0)             # 0000013C
    swc1    $f8, 0x0028(a0)            # 00000028
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A53208:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80A53218:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B50(t6)            # 8011B4B0
    lui     a3, 0x8010                 # a3 = 80100000
    lui     $at, %hi(var_80A53424)     # $at = 80A50000
    andi    t7, t6, 0x0080             # t7 = 00000000
    beq     t7, $zero, lbl_80A5324C
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lwc1    $f4, %lo(var_80A53424)($at)
    swc1    $f4, 0x0140(s0)            # 00000140
lbl_80A5324C:
    lwc1    $f6, 0x0028(s0)            # 00000028
    lw      t0, 0x07C0(a1)             # 000007C0
    lui     a1, 0x8010                 # a1 = 80100000
    trunc.w.s $f8, $f6
    lw      t1, 0x0028(t0)             # 00000028
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    mfc1    t9, $f8
    addiu   a1, a1, 0x4394             # a1 = 80104394
    addiu   a0, $zero, 0x205E          # a0 = 0000205E
    sh      t9, 0x0002(t1)             # 00000002
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f0, 0x0140(s0)            # 00000140
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_80A532A8
    mfc1    a1, $f0
    sw      a3, 0x0010($sp)
    jal     func_800C806C
    sw      t2, 0x0014($sp)
    lwc1    $f0, 0x0140(s0)            # 00000140
    mfc1    a1, $f0
lbl_80A532A8:
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A532CC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A532F0:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x005C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x005C($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0048($sp)
    lw      t2, 0x0048($sp)
    lw      t4, 0x005C($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    sw      v0, 0x0004(t2)             # 00000004
    lw      t0, 0x009C(t4)             # 0000009C
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t6, t6, 0x0020             # t6 = DB060020
    andi    t1, t0, 0x007F             # t1 = 00000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(t4)             # 00000000
    addiu   t7, $zero, 0x007F          # t7 = 0000007F
    subu    a2, t7, t1
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    andi    a3, t0, 0x007F             # a3 = 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      a3, 0x0020($sp)
    sw      t5, 0x0018($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      t1, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0044($sp)
    lw      t3, 0x0044($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(t3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x07D0             # t5 = 060007D0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop

.section .data

var_80A533F0: .word 0x01040100, 0x00000020, 0x00F90000, 0x00000148
.word func_80A53170
.word func_80A53208
.word func_80A532CC
.word func_80A532F0
var_80A53410: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80A53420: .word 0xC4098000
var_80A53424: .word 0xC4098000, 0x00000000, 0x00000000

