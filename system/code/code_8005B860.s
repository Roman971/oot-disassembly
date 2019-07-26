# Unknown part of the code file
#
# The purpose of this file's content is currently unknown until further investigation.
#
# Starts at VRAM: 8005B860 / VROM: AD17C0
#

.section .text
func_8005B860:
# Pausing related
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a0, $at
    lhu     t6, 0x0934(v1)             # 00000934
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0760           # $at = 00010760
    bne     t6, $zero, lbl_8005BABC
    addu    a2, a0, $at
    lhu     t7, 0x01D6(a2)             # 000001D6
    bnel    t7, $zero, lbl_8005BAC0
    lw      $ra, 0x0014($sp)
    lhu     t8, 0x0A20(v1)             # 00000A20
    bnel    t8, $zero, lbl_8005BAC0
    lw      $ra, 0x0014($sp)
    lb      t9, 0x1E15(v1)             # 00001E15
    bnel    t9, $zero, lbl_8005BAC0
    lw      $ra, 0x0014($sp)
    lbu     t0, 0x241B(v1)             # 0000241B
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    bnel    t0, $zero, lbl_8005BAC0
    lw      $ra, 0x0014($sp)
    lw      t1, 0x0008(a3)             # 8011A5D8
    ori     v0, $zero, 0xFFF0          # v0 = 0000FFF0
    slt     $at, t1, v0
    beql    $at, $zero, lbl_8005BAC0
    lw      $ra, 0x0014($sp)
    lhu     t2, 0x1412(a3)             # 8011B9E2
    slt     $at, t2, v0
    beql    $at, $zero, lbl_8005BAC0
    lw      $ra, 0x0014($sp)
    sw      v1, 0x001C($sp)
    sw      a0, 0x0030($sp)
    jal     func_8009CB08
    sw      a2, 0x0020($sp)
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    lw      v1, 0x001C($sp)
    lw      a0, 0x0030($sp)
    bne     v0, $zero, lbl_8005BABC
    lw      a2, 0x0020($sp)
    lb      t3, 0x1E5C(v1)             # 00001E5C
    slti    $at, t3, 0x0002
    beql    $at, $zero, lbl_8005BAC0
    lw      $ra, 0x0014($sp)
    lh      v0, 0x13F0(a3)             # 8011B9C0
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_8005BABC
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beql    v0, $at, lbl_8005BAC0
    lw      $ra, 0x0014($sp)
    lh      t4, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    bnel    t4, $at, lbl_8005B968
    addiu   v0, a0, 0x0014             # v0 = 00000014
    sw      a0, 0x0030($sp)
    jal     func_8002049C
    sw      a2, 0x0020($sp)
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    lw      a0, 0x0030($sp)
    bne     v0, $zero, lbl_8005BABC
    lw      a2, 0x0020($sp)
    addiu   v0, a0, 0x0014             # v0 = 00000014
lbl_8005B968:
    lhu     t5, 0x0000(v0)             # 00000014
    addiu   $at, $zero, 0x0020         # $at = 00000020
    andi    t6, t5, 0x0020             # t6 = 00000000
    bnel    t6, $at, lbl_8005B994
    lhu     t9, 0x000C(v0)             # 00000020
    lhu     t7, 0x000C(v0)             # 00000020
    addiu   $at, $zero, 0x0008         # $at = 00000008
    andi    t8, t7, 0x0008             # t8 = 00000000
    beql    t8, $at, lbl_8005BA78
    lhu     t6, 0x01D4(a2)             # 000001D4
    lhu     t9, 0x000C(v0)             # 00000020
lbl_8005B994:
    addiu   $at, $zero, 0x1000         # $at = 00001000
    lui     a0, 0x8012                 # a0 = 80120000
    andi    t0, t9, 0x1000             # t0 = 00000000
    bne     t0, $at, lbl_8005BA74
    addiu   a0, a0, 0xBA00             # a0 = 8011BA00
    lhu     t1, 0x13EA(a3)             # 8011B9BA
    lw      t3, 0x0000(a0)             # 8011BA00
    addiu   t2, $zero, 0xFF51          # t2 = FFFFFF51
    sh      t1, 0x13EE(a3)             # 8011B9BE
    sh      t2, 0x0DB4(t3)             # 00000DB4
    lw      t5, 0x0000(a0)             # 8011BA00
    addiu   t4, $zero, 0x009B          # t4 = 0000009B
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      t4, 0x0DB6(t5)             # 00000DB6
    sh      $zero, 0x01EA(a2)          # 000001EA
    sh      a1, 0x01E4(a2)             # 000001E4
    lw      t6, 0x0000(a0)             # 8011BA00
    lh      t7, 0x07F4(t6)             # 000007F4
    bnel    t7, $zero, lbl_8005BA28
    lhu     v0, 0x01E8(a2)             # 000001E8
    lhu     v0, 0x01E8(a2)             # 000001E8
    lui     $at, 0x800F                # $at = 800F0000
    lui     t9, 0x800F                 # t9 = 800F0000
    sll     v1, v0,  2
    addu    $at, $at, v1
    lwc1    $f4, 0x15B8($at)           # 800F15B8
    lui     $at, 0x800F                # $at = 800F0000
    addu    $at, $at, v1
    swc1    $f4, 0x01D8(a2)            # 000001D8
    lwc1    $f6, 0x15C8($at)           # 800F15C8
    sll     t8, v0,  1
    addu    t9, t9, t8
    swc1    $f6, 0x01E0(a2)            # 000001E0
    lh      t9, 0x15B0(t9)             # 800F15B0
    b       lbl_8005BA60
    sh      t9, 0x01E8(a2)             # 000001E8
    lhu     v0, 0x01E8(a2)             # 000001E8
lbl_8005BA28:
    lui     $at, 0x800F                # $at = 800F0000
    lui     t1, 0x800F                 # t1 = 800F0000
    sll     v1, v0,  2
    addu    $at, $at, v1
    lwc1    $f8, 0x15E0($at)           # 800F15E0
    lui     $at, 0x800F                # $at = 800F0000
    addu    $at, $at, v1
    swc1    $f8, 0x01D8(a2)            # 000001D8
    lwc1    $f10, 0x15F0($at)          # 800F15F0
    sll     t0, v0,  1
    addu    t1, t1, t0
    swc1    $f10, 0x01E0(a2)           # 000001E0
    lh      t1, 0x15D8(t1)             # 800F15D8
    sh      t1, 0x01E8(a2)             # 000001E8
lbl_8005BA60:
    lhu     t2, 0x01E8(a2)             # 000001E8
    sh      a1, 0x01D4(a2)             # 000001D4
    sll     t4, t2,  1
    addiu   t5, t4, 0x0001             # t5 = 0000009C
    sh      t5, 0x01E6(a2)             # 000001E6
lbl_8005BA74:
    lhu     t6, 0x01D4(a2)             # 000001D4
lbl_8005BA78:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t6, $at, lbl_8005BABC
    addiu   a0, a0, 0xBA00             # a0 = 8011BA00
    lw      t8, 0x0000(a0)             # 8011BA00
    addiu   t7, $zero, 0xE7A0          # t7 = FFFFE7A0
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sh      t7, 0x0D98(t8)             # 00000D98
    lw      t0, 0x0000(a0)             # 8011BA00
    jal     func_80099630
    sh      t9, 0x0110(t0)             # 00000110
    beq     v0, $zero, lbl_8005BAB4
    nop
    jal     func_80099620
    or      a0, $zero, $zero           # a0 = 00000000
lbl_8005BAB4:
    jal     func_800C7200
    addiu   a0, $zero, 0x0001          # a0 = 00000001
lbl_8005BABC:
    lw      $ra, 0x0014($sp)
lbl_8005BAC0:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8005BACC:
    lui     $at, 0x4320                # $at = 43200000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     a3, 0x8012                 # a3 = 80120000
    mtc1    $at, $f0                   # $f0 = 160.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   a3, a3, 0xBA00             # a3 = 8011BA00
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x03E7          # t1 = 000003E7
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a2, $at
    lui     $at, 0x4280                # $at = 42800000
    mtc1    $at, $f4                   # $f4 = 64.00
    lui     $at, 0x446A                # $at = 446A0000
    mtc1    $at, $f6                   # $f6 = 936.00
    lui     $at, 0xC39D                # $at = C39D0000
    mtc1    $at, $f8                   # $f8 = -314.00
    sh      $zero, 0x0934(v0)          # 00000934
    sh      $zero, 0x0936(v0)          # 00000936
    swc1    $f2, 0x093C(v0)            # 0000093C
    swc1    $f2, 0x0938(v0)            # 00000938
    swc1    $f0, 0x0960(v0)            # 00000960
    swc1    $f0, 0x095C(v0)            # 0000095C
    swc1    $f0, 0x0958(v0)            # 00000958
    swc1    $f0, 0x0954(v0)            # 00000954
    sh      $zero, 0x0968(v0)          # 00000968
    sh      $zero, 0x0948(v0)          # 00000948
    sh      $zero, 0x0946(v0)          # 00000946
    sh      $zero, 0x0944(v0)          # 00000944
    sh      $zero, 0x094A(v0)          # 0000094A
    sh      $zero, 0x0978(v0)          # 00000978
    swc1    $f4, 0x0940(v0)            # 00000940
    swc1    $f6, 0x0950(v0)            # 00000950
    swc1    $f8, 0x0964(v0)            # 00000964
    lw      t6, 0x0000(a3)             # 8011BA00
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   t5, $zero, 0x003B          # t5 = 0000003B
    lh      t7, 0x0F50(t6)             # 00000F50
    sh      $zero, 0x097C(v0)          # 0000097C
    sh      t0, 0x097E(v0)             # 0000097E
    addiu   t8, t7, 0x0003             # t8 = 00000003
    sh      t8, 0x097A(v0)             # 0000097A
    sh      t9, 0x0980(v0)             # 00000980
    sh      $zero, 0x0982(v0)          # 00000982
    sh      $zero, 0x098C(v0)          # 0000098C
    sh      $zero, 0x0984(v0)          # 00000984
    sh      $zero, 0x098E(v0)          # 0000098E
    sh      $zero, 0x0986(v0)          # 00000986
    sh      $zero, 0x0990(v0)          # 00000990
    sh      t0, 0x0988(v0)             # 00000988
    sh      $zero, 0x0992(v0)          # 00000992
    sh      t1, 0x099E(v0)             # 0000099E
    lw      t2, 0x0000(a3)             # 8011BA00
    lh      t9, 0x097E(v0)             # 0000097E
    lui     $at, 0x0001                # $at = 00010000
    lh      t3, 0x0F50(t2)             # 00000F50
    sh      t1, 0x09A2(v0)             # 000009A2
    sh      t5, 0x09A4(v0)             # 000009A4
    addiu   t4, t3, 0x0003             # t4 = 00000003
    sh      t4, 0x09A0(v0)             # 000009A0
    sh      $zero, 0x09A6(v0)          # 000009A6
    lw      t6, 0x0000(a3)             # 8011BA00
    addiu   t2, $zero, 0xFFD8          # t2 = FFFFFFD8
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    lh      t7, 0x0F50(t6)             # 00000F50
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    sh      $zero, 0x09AA(v0)          # 000009AA
    addiu   t8, t7, 0x0003             # t8 = 00000003
    sh      t8, 0x09A8(v0)             # 000009A8
    sh      t2, 0x09BA(v0)             # 000009BA
    sh      $zero, 0x09BC(v0)          # 000009BC
    sh      $zero, 0x09BE(v0)          # 000009BE
    sh      t3, 0x09C0(v0)             # 000009C0
    sh      t4, 0x09C4(v0)             # 000009C4
    sh      $zero, 0x0998(v0)          # 00000998
    ori     $at, $at, 0x0760           # $at = 00010760
    sh      t9, 0x09AC(v0)             # 000009AC
    lw      a1, 0x0000(a2)             # 00000000
    jal     func_80091858
    addu    a0, a2, $at
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beql    v0, $zero, lbl_8005BC38
    lw      $ra, 0x0014($sp)
    lw      v1, 0x003C(v0)             # 8012003C
    beql    v1, $zero, lbl_8005BC38
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
    lw      $ra, 0x0014($sp)
lbl_8005BC38:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8005BC44:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beql    v0, $zero, lbl_8005BC78
    lw      $ra, 0x0014($sp)
    lw      v1, 0x0040(v0)             # 80120040
    beql    v1, $zero, lbl_8005BC78
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
    lw      $ra, 0x0014($sp)
lbl_8005BC78:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop
