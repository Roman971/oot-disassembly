.section .text
func_80AAB9C0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4210                 # a3 = 42100000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x01A4             # t7 = 000001A4
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x039C             # a3 = 0600039C
    addiu   a2, a2, 0x4768             # a2 = 06004768
    sw      a1, 0x0030($sp)
    jal     func_8008C788
    lw      a0, 0x003C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x039C             # a1 = 0600039C
    jal     func_8008D1C4
    lw      a0, 0x0030($sp)
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    lui     a1, 0x3C54                 # a1 = 3C540000
    sb      t9, 0x00AE(s0)             # 000000AE
    ori     a1, a1, 0xFDF4             # a1 = 3C54FDF4
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lw      t2, 0x0004(s0)             # 00000004
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t0, %hi(func_80AAC154)     # t0 = 80AB0000
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t0, t0, %lo(func_80AAC154) # t0 = 80AAC154
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    and     t3, t2, $at
    sw      t0, 0x01DC(s0)             # 000001DC
    sb      t1, 0x001F(s0)             # 0000001F
    sh      $zero, 0x01D8(s0)          # 000001D8
    sw      t3, 0x0004(s0)             # 00000004
    swc1    $f4, 0x01D4(s0)            # 000001D4
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AABA90:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AABAA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80022AD0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80AABAD8
    lw      a0, 0x0018($sp)
    lw      t7, 0x0004(a0)             # 00000004
    lui     $at, 0xFFFE                # $at = FFFE0000
    lui     t6, %hi(func_80AAC154)     # t6 = 80AB0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    addiu   t6, t6, %lo(func_80AAC154) # t6 = 80AAC154
    and     t8, t7, $at
    sw      t6, 0x01DC(a0)             # 000001DC
    sw      t8, 0x0004(a0)             # 00000004
lbl_80AABAD8:
    lhu     t9, 0x01D8(a0)             # 000001D8
    ori     t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x01D8(a0)             # 000001D8
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80AABAF0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80AABB44
    lw      v0, 0x0018($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beql    v0, $zero, lbl_80AABB44
    lw      v0, 0x0018($sp)
    jal     func_800D6218
    lw      a0, 0x001C($sp)
    lw      v0, 0x0018($sp)
    lui     t6, %hi(func_80AAC154)     # t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAC154) # t6 = 80AAC154
    sw      t6, 0x01DC(v0)             # 000001DC
    lw      v0, 0x0018($sp)
lbl_80AABB44:
    lhu     t7, 0x01D8(v0)             # 000001D8
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x01D8(v0)             # 000001D8
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80AABB5C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80AABB8C
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_80AABAA0)     # t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AABAA0) # t6 = 80AABAA0
    b       lbl_80AABBA8
    sw      t6, 0x01DC(a0)             # 000001DC
lbl_80AABB8C:
    lw      t7, 0x0004(a0)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    lui     a2, 0x447A                 # a2 = 447A0000
    or      t8, t7, $at                # t8 = 00010000
    sw      t8, 0x0004(a0)             # 00000004
    jal     func_80022A68
    lw      a1, 0x001C($sp)
lbl_80AABBA8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AABBB8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80022AD0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80AABC08
    lw      a0, 0x0018($sp)
    lw      t8, 0x0004(a0)             # 00000004
    lui     t7, %hi(func_80AABB5C)     # t7 = 80AB0000
    addiu   $at, $zero, 0xFEFF         # $at = FFFFFEFF
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   t6, $zero, 0x504F          # t6 = 0000504F
    addiu   t7, t7, %lo(func_80AABB5C) # t7 = 80AABB5C
    and     t9, t8, $at
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sh      t6, 0x010E(a0)             # 0000010E
    sw      t7, 0x01DC(a0)             # 000001DC
    sw      t9, 0x0004(a0)             # 00000004
    lhu     t0, 0x0EF6(v0)             # 8011B4C6
    ori     t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0EF6(v0)             # 8011B4C6
lbl_80AABC08:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AABC18:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BB0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AABC54
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80AABBB8)     # t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AABBB8) # t6 = 80AABBB8
    sw      $zero, 0x0118(a0)          # 00000118
    sw      t6, 0x01DC(a0)             # 000001DC
    lui     $at, 0x8012                # $at = 80120000
    b       lbl_80AABC74
    sh      $zero, -0x465E($at)        # 8011B9A2
lbl_80AABC54:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_80AABC74:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AABC84:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80AABCF8
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    lw      a0, 0x0024($sp)
    beql    v0, $zero, lbl_80AABCF8
    lw      $ra, 0x001C($sp)
    jal     func_800D6218
    lw      a0, 0x0024($sp)
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80AABC18)     # t6 = 80AB0000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    addiu   t6, t6, %lo(func_80AABC18) # t6 = 80AABC18
    lui     a3, 0x461C                 # a3 = 461C0000
    sw      t6, 0x01DC(a0)             # 000001DC
    lw      a1, 0x0024($sp)
    ori     a3, a3, 0x4000             # a3 = 461C4000
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x001C($sp)
lbl_80AABCF8:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AABD04:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lhu     v0, 0x01DA(s0)             # 000001DA
    lui     t7, %hi(func_80AABC84)     # t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AABC84) # t7 = 80AABC84
    blez    v0, lbl_80AABD38
    addiu   a1, $zero, 0x504D          # a1 = 0000504D
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80AABD44
    sh      t6, 0x01DA(s0)             # 000001DA
lbl_80AABD38:
    sw      t7, 0x01DC(s0)             # 000001DC
    jal     func_800DCE80
    lw      a0, 0x002C($sp)
lbl_80AABD44:
    lui     a2, 0x3CF5                 # a2 = 3CF50000
    ori     a2, a2, 0xC28F             # a2 = 3CF5C28F
    addiu   a0, s0, 0x01D4             # a0 = 000001D4
    jal     func_8006385C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    lwc1    $f0, 0x01D4(s0)            # 000001D4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    sub.s   $f6, $f4, $f0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lw      a0, 0x002C($sp)
    mul.s   $f8, $f0, $f6
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    swc1    $f10, 0x0010($sp)
    mfc1    a1, $f8
    jal     func_800631D8
    nop
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AABDA8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lhu     v0, 0x01DA(a2)             # 000001DA
    lui     t7, %hi(func_80AABD04)     # t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AABD04) # t7 = 80AABD04
    blez    v0, lbl_80AABDD8
    addiu   t8, $zero, 0x003C          # t8 = 0000003C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80AABDEC
    sh      t6, 0x01DA(a2)             # 000001DA
lbl_80AABDD8:
    sw      t7, 0x01DC(a2)             # 000001DC
    sh      t8, 0x01DA(a2)             # 000001DA
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x003F          # a1 = 0000003F
lbl_80AABDEC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AABDFC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lhu     v0, 0x01DA(s0)             # 000001DA
    addiu   a0, s0, 0x01D4             # a0 = 000001D4
    lui     a1, 0x3F80                 # a1 = 3F800000
    blez    v0, lbl_80AABE30
    lui     a2, 0x3C23                 # a2 = 3C230000
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80AABE44
    sh      t6, 0x01DA(s0)             # 000001DA
lbl_80AABE30:
    lui     t7, %hi(func_80AABDA8)     # t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AABDA8) # t7 = 80AABDA8
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sw      t7, 0x01DC(s0)             # 000001DC
    sh      t8, 0x01DA(s0)             # 000001DA
lbl_80AABE44:
    jal     func_8006385C
    ori     a2, a2, 0xD70A             # a2 = 3C23D70A
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    lwc1    $f0, 0x01D4(s0)            # 000001D4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    sub.s   $f6, $f4, $f0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lw      a0, 0x002C($sp)
    mul.s   $f8, $f0, $f6
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    swc1    $f10, 0x0010($sp)
    mfc1    a1, $f8
    jal     func_800631D8
    nop
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AABE9C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    lw      t6, 0x1C44(s0)             # 00001C44
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      t6, 0x0024($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80AABF58
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80AABF54
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0
    lbu     v0, 0x04BD(v0)             # 000104BD
    lui     t7, %hi(func_80AABDFC)     # t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AABDFC) # t7 = 80AABDFC
    beq     v0, $zero, lbl_80AABF08
    addiu   t8, $zero, 0x003C          # t8 = 0000003C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80AABF3C
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AABF58
    lw      $ra, 0x001C($sp)
lbl_80AABF08:
    lw      v0, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x003F          # a1 = 0000003F
    sw      t7, 0x01DC(v0)             # 000101DC
    jal     func_800204D0
    sh      t8, 0x01DA(v0)             # 000101DA
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0037          # t9 = 00000037
    sb      t9, 0x03DC($at)            # 000103DC
    lw      t0, 0x0024($sp)
    b       lbl_80AABF54
    sb      $zero, 0x0683(t0)          # 00000683
lbl_80AABF3C:
    jal     func_800DCE80
    addiu   a1, $zero, 0x504C          # a1 = 0000504C
    lw      t2, 0x0028($sp)
    lui     t1, %hi(func_80AABAA0)     # t1 = 80AB0000
    addiu   t1, t1, %lo(func_80AABAA0) # t1 = 80AABAA0
    sw      t1, 0x01DC(t2)             # 000001DC
lbl_80AABF54:
    lw      $ra, 0x001C($sp)
lbl_80AABF58:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AABF68:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    slti    $at, t6, 0x0064
    beq     $at, $zero, lbl_80AABF8C
    nop
    b       lbl_80AABFA8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AABF8C:
    jal     func_80071A94
    nop
    bnel    v0, $zero, lbl_80AABFA8
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    b       lbl_80AABFA8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80AABFA8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AABFB8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BB0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AABFEC
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80AABAA0)     # t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AABAA0) # t6 = 80AABAA0
    sw      $zero, 0x0118(a0)          # 00000118
    b       lbl_80AAC00C
    sw      t6, 0x01DC(a0)             # 000001DC
lbl_80AABFEC:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0012          # a2 = 00000012
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_80AAC00C:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AAC01C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80AAC144
    lw      $ra, 0x0024($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80AAC140
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80AAC078
    nop
    beq     v0, $at, lbl_80AAC128
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AAC134
    lw      t3, 0x0028($sp)
lbl_80AAC078:
    jal     func_80AABF68
    nop
    beq     v0, $zero, lbl_80AAC0A8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80AAC0B8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80AAC0D4
    nop
    b       lbl_80AAC134
    lw      t3, 0x0028($sp)
lbl_80AAC0A8:
    jal     func_800DCE80
    addiu   a1, $zero, 0x500E          # a1 = 0000500E
    b       lbl_80AAC134
    lw      t3, 0x0028($sp)
lbl_80AAC0B8:
    jal     func_800DCE80
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    lw      t7, 0x0028($sp)
    lui     t6, %hi(func_80AABAF0)     # t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AABAF0) # t6 = 80AABAF0
    b       lbl_80AAC140
    sw      t6, 0x01DC(t7)             # 000001DC
lbl_80AAC0D4:
    jal     func_800721CC
    addiu   a0, $zero, 0xFF9C          # a0 = FFFFFF9C
    lw      a0, 0x0028($sp)
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    lw      t8, 0x0004(a0)             # 00000004
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    and     t9, t8, $at
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    sw      t9, 0x0004(a0)             # 00000004
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0012          # a2 = 00000012
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lw      t1, 0x0028($sp)
    lui     t0, %hi(func_80AABFB8)     # t0 = 80AB0000
    addiu   t0, t0, %lo(func_80AABFB8) # t0 = 80AABFB8
    b       lbl_80AAC140
    sw      t0, 0x01DC(t1)             # 000001DC
lbl_80AAC128:
    jal     func_800DCE80
    addiu   a1, $zero, 0x500D          # a1 = 0000500D
    lw      t3, 0x0028($sp)
lbl_80AAC134:
    lui     t2, %hi(func_80AABAA0)     # t2 = 80AB0000
    addiu   t2, t2, %lo(func_80AABAA0) # t2 = 80AABAA0
    sw      t2, 0x01DC(t3)             # 000001DC
lbl_80AAC140:
    lw      $ra, 0x0024($sp)
lbl_80AAC144:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AAC154:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      v1, 0x1C44(a1)             # 00001C44
    sw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    sw      v1, 0x002C($sp)
    lw      v1, 0x002C($sp)
    beq     v0, $zero, lbl_80AAC258
    lw      a1, 0x0034($sp)
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_80022B04
    sw      v1, 0x002C($sp)
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_80AAC1E8
    lw      v1, 0x002C($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      v1, 0x002C($sp)
    lw      v1, 0x002C($sp)
    addiu   t7, $zero, 0x504A          # t7 = 0000504A
    lui     t8, %hi(func_80AABE9C)     # t8 = 80AB0000
    addiu   t8, t8, %lo(func_80AABE9C) # t8 = 80AABE9C
    sh      t7, 0x010E(v1)             # 0000010E
    b       lbl_80AAC2C4
    sw      t8, 0x01DC(s0)             # 000001DC
lbl_80AAC1E8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t9, 0x0EF6(v0)             # 8011B4C6
    lui     t8, %hi(func_80AABAA0)     # t8 = 80AB0000
    lui     t3, 0x8010                 # t3 = 80100000
    andi    t0, t9, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_80AAC220
    addiu   t8, t8, %lo(func_80AABAA0) # t8 = 80AABAA0
    addiu   t1, $zero, 0x500C          # t1 = 0000500C
    lui     t2, %hi(func_80AAC01C)     # t2 = 80AB0000
    sh      t1, 0x010E(v1)             # 0000010E
    addiu   t2, t2, %lo(func_80AAC01C) # t2 = 80AAC01C
    b       lbl_80AAC2C4
    sw      t2, 0x01DC(s0)             # 000001DC
lbl_80AAC220:
    lbu     t3, -0x709C(t3)            # 800F8F64
    addiu   $at, $zero, 0x0030         # $at = 00000030
    addiu   t6, $zero, 0x5049          # t6 = 00005049
    addu    t4, v0, t3
    lbu     t5, 0x0074(t4)             # 00000074
    addiu   t7, $zero, 0x5048          # t7 = 00005048
    bnel    t5, $at, lbl_80AAC24C
    sh      t7, 0x010E(v1)             # 0000010E
    b       lbl_80AAC24C
    sh      t6, 0x010E(v1)             # 0000010E
    sh      t7, 0x010E(v1)             # 0000010E
lbl_80AAC24C:
    sw      t8, 0x01DC(s0)             # 000001DC
    b       lbl_80AAC2C8
    lw      $ra, 0x0024($sp)
lbl_80AAC258:
    lh      t9, 0x008A(s0)             # 0000008A
    lh      t0, 0x00B6(s0)             # 000000B6
    addiu   t1, $zero, 0x5048          # t1 = 00005048
    sh      t1, 0x010E(s0)             # 0000010E
    subu    v0, t9, t0
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80AAC284
    subu    v1, $zero, v0
    b       lbl_80AAC284
    or      v1, v0, $zero              # v1 = 8011A5D0
lbl_80AAC284:
    slti    $at, v1, 0x2151
    beq     $at, $zero, lbl_80AAC2C4
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x42C8                 # a2 = 42C80000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80AAC2C8
    lw      $ra, 0x0024($sp)
    jal     func_80022A34
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    lhu     t2, 0x01D8(s0)             # 000001D8
    ori     t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x01D8(s0)             # 000001D8
lbl_80AAC2C4:
    lw      $ra, 0x0024($sp)
lbl_80AAC2C8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AAC2D8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80AAC30C
    lw      t9, 0x01DC(s0)             # 000001DC
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x0154(s0)            # 00000154
    lw      t9, 0x01DC(s0)             # 000001DC
lbl_80AAC30C:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jalr    $ra, t9
    nop
    lhu     t6, 0x01D8(s0)             # 000001D8
    addiu   a0, s0, 0x01C8             # a0 = 000001C8
    or      a1, $zero, $zero           # a1 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80AAC368
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lw      t0, 0x0038(s0)             # 00000038
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sw      t0, 0x0010($sp)
    lw      t8, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x01C8             # a2 = 000001C8
    addiu   a3, s0, 0x01CE             # a3 = 000001CE
    sw      t8, 0x0014($sp)
    lw      t0, 0x0040(s0)             # 00000040
    jal     func_8002B024
    sw      t0, 0x0018($sp)
    b       lbl_80AAC3D0
    lw      $ra, 0x002C($sp)
lbl_80AAC368:
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    sw      t1, 0x0010($sp)
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    sw      t2, 0x0010($sp)
    addiu   a0, s0, 0x01CA             # a0 = 000001CA
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    sw      t3, 0x0010($sp)
    addiu   a0, s0, 0x01CE             # a0 = 000001CE
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    sw      t4, 0x0010($sp)
    addiu   a0, s0, 0x01D0             # a0 = 000001D0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lw      $ra, 0x002C($sp)
lbl_80AAC3D0:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AAC3E0:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a1, $at, lbl_80AAC41C
    lw      v0, 0x0014($sp)
    lw      v1, 0x0010($sp)
    lh      t7, 0x01CA(v0)             # 000001CA
    lh      t6, 0x0000(v1)             # 00000000
    lh      t9, 0x0004(v1)             # 00000004
    addu    t8, t6, t7
    sh      t8, 0x0000(v1)             # 00000000
    lh      t0, 0x01C8(v0)             # 000001C8
    addu    t1, t9, t0
    sh      t1, 0x0004(v1)             # 00000004
lbl_80AAC41C:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80AAC428:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a1, $at, lbl_80AAC458
    lui     a0, %hi(var_80AAC4F0)      # a0 = 80AB0000
    lw      a1, 0x0028($sp)
    addiu   a0, a0, %lo(var_80AAC4F0)  # a0 = 80AAC4F0
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80AAC458:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AAC468:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    jal     func_8007E56C
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0028($sp)
    lui     t7, %hi(func_80AAC3E0)     # t7 = 80AB0000
    lui     t8, %hi(func_80AAC428)     # t8 = 80AB0000
    lw      a1, 0x0140(v0)             # 00000140
    lw      a2, 0x015C(v0)             # 0000015C
    lbu     a3, 0x013E(v0)             # 0000013E
    addiu   t8, t8, %lo(func_80AAC428) # t8 = 80AAC428
    addiu   t7, t7, %lo(func_80AAC3E0) # t7 = 80AAC3E0
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    lw      a0, 0x002C($sp)
    jal     func_80089D8C
    sw      v0, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop

.section .data

var_80AAC4D0: .word 0x01490400, 0x00000009, 0x010F0000, 0x000001E0
.word func_80AAB9C0
.word func_80AABA90
.word func_80AAC2D8
.word func_80AAC468
var_80AAC4F0: .word 0x44898000, 0x43FA0000, 0x00000000, 0x00000000

.section .rodata


