# "VR Box (Skybox) Draw" part of the code file
#
# Handles the drawing of skyboxes.
#
# Starts at VRAM: 80096F50 / VROM: B0CEB0
#

.section .text
func_80096F50:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a3, 0x0024($sp)
    lw      a2, 0x0024($sp)
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      t6, 0x0018($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0
    lwc1    $f12, 0x0144(t6)           # 00000144
    lw      t7, 0x0018($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAB94
    lwc1    $f12, 0x0148(t7)           # 00000148
    lw      t8, 0x0018($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAD4C
    lwc1    $f12, 0x014C(t8)           # 0000014C
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800AB8D8
    lw      a0, -0x2FE0(a0)            # 8011D020
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80096FD8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    jal     func_8007E668
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x001C             # t7 = DB06001C
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lw      t8, 0x0128(s1)             # 00000128
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x012C(s1)             # 0000012C
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t6, 0x0130(s1)             # 00000130
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lh      t9, 0x002E($sp)
    lui     t8, 0xD700                 # t8 = D7000000
    ori     t8, t8, 0x0002             # t8 = D7000002
    andi    t6, t9, 0x00FF             # t6 = 00000024
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t9, 0x8000                 # t9 = 80000000
    ori     t9, t9, 0x8000             # t9 = 80008000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      a0, 0x02C4(s0)             # 000002C4
    lui     $at, 0x8012                # $at = 80120000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a0, a0, 0xFFC0             # a0 = FFFFFFC0
    sw      a0, 0x02C4(s0)             # 000002C4
    sw      a0, -0x2FE0($at)           # 8011D020
    lw      a2, 0x0038($sp)
    lwc1    $f14, 0x0034($sp)
    jal     func_800AA7F4
    lwc1    $f12, 0x0030($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lwc1    $f12, 0x0144(s1)           # 00000144
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0148(s1)           # 00000148
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x014C(s1)           # 0000014C
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800AB8D8
    lw      a0, -0x2FE0(a0)            # 8011D020
    lui     t2, 0xFD10                 # t2 = FD100000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    lui     t8, 0x8012                 # t8 = 80120000
    sw      t7, 0x0000(v0)             # 00000000
    lw      t8, -0x2FE0(t8)            # 8011D020
    lui     t3, 0xE800                 # t3 = E8000000
    lui     t1, 0xE700                 # t1 = E7000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t6, 0xE300                 # t6 = E3000000
    ori     t6, t6, 0x1801             # t6 = E3001801
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xE300                 # t8 = E3000000
    ori     t8, t8, 0x1201             # t8 = E3001201
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    addiu   t9, $zero, 0x2000          # t9 = 00002000
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t4, 0xF500                 # t4 = F5000000
    ori     t4, t4, 0x0100             # t4 = F5000100
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t7, 0x0130(s1)             # 00000130
    lui     t5, 0x0700                 # t5 = 07000000
    lui     $ra, 0xE600                # $ra = E6000000
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     a2, 0xDE00                 # a2 = DE000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xF000                 # t8 = F0000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      $ra, 0x0000(v0)            # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t9, 0x073F                 # t9 = 073F0000
    ori     t9, t9, 0xC000             # t9 = 073FC000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xE300                 # t8 = E3000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    ori     t8, t8, 0x1001             # t8 = E3001001
    ori     t9, $zero, 0x8000          # t9 = 00008000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xE300                 # t7 = E3000000
    ori     t7, t7, 0x1402             # t7 = E3001402
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    addiu   t8, $zero, 0x0C00          # t8 = 00000C00
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lh      t9, 0x0140(s1)             # 00000140
    beq     t9, $zero, lbl_80097560
    nop
    lui     a2, 0xDE00                 # a2 = DE000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t7, 0x0134(s1)             # 00000134
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t9, 0x0134(s1)             # 00000134
    addiu   t6, t9, 0x04B0             # t6 = 000084B0
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t9, 0x0130(s1)             # 00000130
    addiu   t6, t9, 0x0200             # t6 = 00008200
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xF000                 # t7 = F0000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      $ra, 0x0000(v0)            # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0x073F                 # t8 = 073F0000
    ori     t8, t8, 0xC000             # t8 = 073FC000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t7, 0x0134(s1)             # 00000134
    addiu   t8, t7, 0x0960             # t8 = F0000960
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t6, 0x0134(s1)             # 00000134
    addiu   t7, t6, 0x0E10             # t7 = 00000E18
    sw      t7, 0x0004(v0)             # 00000004
    lh      t8, 0x002A($sp)
    beq     t8, $at, lbl_80097614
    slti    $at, t8, 0x0011
    bne     $at, $zero, lbl_80097398
    slti    $at, t8, 0x0019
    bnel    $at, $zero, lbl_80097618
    lw      v0, 0x02C0(s0)             # 000002C0
lbl_80097398:
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t7, 0x0130(s1)             # 00000130
    addiu   t8, t7, 0x0400             # t8 = 00001218
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t9, 0xF000                 # t9 = F0000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      $ra, 0x0000(v0)            # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t6, 0x073F                 # t6 = 073F0000
    ori     t6, t6, 0xC000             # t6 = 073FC000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t9, 0x0134(s1)             # 00000134
    addiu   t6, t9, 0x12C0             # t6 = F00012C0
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t8, 0x0134(s1)             # 00000134
    addiu   t9, t8, 0x1770             # t9 = 00001778
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lh      t7, 0x0140(s1)             # 00000140
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    t7, $at, lbl_80097618
    lw      v0, 0x02C0(s0)             # 000002C0
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t9, 0x0130(s1)             # 00000130
    addiu   t6, t9, 0x0600             # t6 = 00001D78
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xF000                 # t7 = F0000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      $ra, 0x0000(v0)            # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0x073F                 # t8 = 073F0000
    ori     t8, t8, 0xC000             # t8 = 073FC000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t7, 0x0134(s1)             # 00000134
    addiu   t8, t7, 0x1C20             # t8 = F0001C20
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t6, 0x0134(s1)             # 00000134
    addiu   t7, t6, 0x20D0             # t7 = 000020D8
    sw      t7, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_80097618
    lw      v0, 0x02C0(s0)             # 000002C0
lbl_80097560:
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t9, 0x0134(s1)             # 00000134
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t7, 0x0134(s1)             # 00000134
    addiu   t8, t7, 0x0960             # t8 = 00002A38
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t6, 0x0134(s1)             # 00000134
    addiu   t7, t6, 0x12C0             # t7 = 000012C8
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t9, 0x0134(s1)             # 00000134
    addiu   t6, t9, 0x1C20             # t6 = 00001C28
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t8, 0x0134(s1)             # 00000134
    addiu   t9, t8, 0x2580             # t9 = 00002588
    sw      t9, 0x0004(v0)             # 00000004
    lh      t6, 0x002A($sp)
    bnel    t6, $at, lbl_80097618
    lw      v0, 0x02C0(s0)             # 000002C0
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(v0)             # 00000000
    lw      t8, 0x0134(s1)             # 00000134
    addiu   t9, t8, 0x2EE0             # t9 = 00002EE8
    sw      t9, 0x0004(v0)             # 00000004
lbl_80097614:
    lw      v0, 0x02C0(s0)             # 000002C0
lbl_80097618:
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_8009763C:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop
    nop
    nop
