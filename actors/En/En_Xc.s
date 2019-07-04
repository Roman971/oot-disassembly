.section .text
func_808DDA00:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x02B0             # a1 = 000002B0
    sw      a1, 0x0018($sp)
    lw      a0, 0x0024($sp)
    jal     func_8004AB7C
    sw      a2, 0x0020($sp)
    lui     a3, %hi(var_808E3490)      # a3 = 808E0000
    lw      a1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    addiu   a3, a3, %lo(var_808E3490)  # a3 = 808E3490
    jal     func_8004AC84
    lw      a0, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DDA4C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0034($sp)
    addiu   a2, a0, 0x02B0             # a2 = 000002B0
    or      a1, a2, $zero              # a1 = 000002B0
    jal     func_80050B00
    sw      a2, 0x0018($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0018($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_808DDA90:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x02B0             # a1 = 000002B0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DDABC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x001C($sp)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lw      v0, 0x1C44(t6)             # 00001C44
    addiu   a1, a0, 0x0304             # a1 = 00000304
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lw      t8, 0x0024(v0)             # 00000024
    sw      t8, 0x031C(a0)             # 0000031C
    lw      t7, 0x0028(v0)             # 00000028
    sw      t7, 0x0320(a0)             # 00000320
    lw      t8, 0x002C(v0)             # 0000002C
    sw      t8, 0x0324(a0)             # 00000324
    lw      t9, 0x0000(v1)             # 8011BA00
    lh      t0, 0x1474(t9)             # 00001474
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x0318(a0)           # 00000318
    lw      t1, 0x0000(v1)             # 8011BA00
    lh      a2, 0x1476(t1)             # 00001476
    addiu   a2, a2, 0x000C             # a2 = 0000000C
    sll     a2, a2, 16
    jal     func_80027854
    sra     a2, a2, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DDB44:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x024E(a2)             # 0000024E
    addiu   v1, a2, 0x024E             # v1 = 0000024E
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $zero, lbl_808DDB6C
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    beq     $zero, $zero, lbl_808DDB7C
    addiu   v1, a2, 0x024E             # v1 = 0000024E
lbl_808DDB6C:
    lh      t7, 0x0000(v1)             # 0000024E
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             # 0000024E
    lh      v0, 0x0000(v1)             # 0000024E
lbl_808DDB7C:
    bne     v0, $zero, lbl_808DDB9C
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    sw      v1, 0x001C($sp)
    jal     func_80063BF0
    sw      a2, 0x0038($sp)
    lw      v1, 0x001C($sp)
    lw      a2, 0x0038($sp)
    sh      v0, 0x0000(v1)             # 00000000
lbl_808DDB9C:
    lh      t9, 0x0000(v1)             # 00000000
    addiu   v0, a2, 0x024C             # v0 = 0000024C
    sh      t9, 0x0000(v0)             # 0000024C
    lh      t0, 0x0000(v0)             # 0000024C
    slti    $at, t0, 0x0003
    bnel    $at, $zero, lbl_808DDBC0
    lw      $ra, 0x0014($sp)
    sh      $zero, 0x0000(v0)          # 0000024C
    lw      $ra, 0x0014($sp)
lbl_808DDBC0:
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_808DDBCC:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    lw      t6, 0x0050($sp)
    lh      a0, 0x00B6(t6)             # 000000B6
    jal     func_800636C4              # sins?
    sh      a0, 0x0046($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lw      v0, 0x0050($sp)
    lui     $at, 0x4040                # $at = 40400000
    mul.s   $f6, $f0, $f4
    lwc1    $f8, 0x0024(v0)            # 00000024
    mtc1    $at, $f18                  # $f18 = 3.00
    addiu   v0, v0, 0x0024             # v0 = 00000024
    lh      a0, 0x0046($sp)
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0040($sp)
    lwc1    $f16, 0x0004(v0)           # 00000028
    sw      v0, 0x0034($sp)
    add.s   $f4, $f16, $f18
    jal     func_80063684              # coss?
    swc1    $f4, 0x003C($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lw      v0, 0x0034($sp)
    lwc1    $f16, 0x003C($sp)
    mul.s   $f8, $f0, $f6
    lwc1    $f10, 0x0008(v0)           # 00000008
    lw      t8, 0x0050($sp)
    addiu   t7, $zero, 0x0FA0          # t7 = 00000FA0
    sw      t7, 0x0018($sp)
    swc1    $f16, 0x0010($sp)
    lw      a1, 0x0054($sp)
    add.s   $f2, $f8, $f10
    addiu   t0, $zero, 0xFFF6          # t0 = FFFFFFF6
    addiu   a2, $zero, 0x0016          # a2 = 00000016
    lw      a3, 0x0040($sp)
    swc1    $f2, 0x0014($sp)
    lh      t9, 0x00B6(t8)             # 000000B6
    sw      t0, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    jal     func_80025110              # ActorSpawn
    sw      t9, 0x001C($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_808DDC94:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     $at, 0x41F0                # $at = 41F00000
    sw      a1, 0x0024($sp)
    mtc1    $at, $f0                   # $f0 = 30.00
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    mfc1    a3, $f0
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)
    lw      a0, 0x0024($sp)
    lui     a2, 0x4296                 # a2 = 42960000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DDCDC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_8008C9C0
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DDD00:
    lbu     t6, 0x1D6C(a0)             # 00001D6C
    sll     t7, a1,  2
    or      v1, $zero, $zero           # v1 = 00000000
    beq     t6, $zero, lbl_808DDD18
    addu    t8, a0, t7
    lw      v1, 0x1D8C(t8)             # 00001D8C
lbl_808DDD18:
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    nop


func_808DDD24:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_808DDD00
    or      a1, a3, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_808DDD64
    lw      $ra, 0x0014($sp)
    lhu     t6, 0x0022($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    bnel    t6, t7, lbl_808DDD68
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_808DDD68
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808DDD64:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808DDD68:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_808DDD70:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_808DDD00
    or      a1, a3, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_808DDDB0
    lw      $ra, 0x0014($sp)
    lhu     t6, 0x0022($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    beql    t6, t7, lbl_808DDDB4
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_808DDDB4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808DDDB0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808DDDB4:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_808DDDBC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x001C($sp)
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_808DDD00
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_808DDE44
    lw      a3, 0x0018($sp)
    lw      t6, 0x000C(v0)             # 0000000C
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0024(a3)            # 00000024
    lw      t7, 0x0010(v0)             # 00000010
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0028(a3)           # 00000028
    lw      t8, 0x0014(v0)             # 00000014
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x002C(a3)           # 0000002C
    lh      v1, 0x0006(v0)             # 00000006
    sh      v1, 0x00B4(a3)             # 000000B4
    sh      v1, 0x0030(a3)             # 00000030
    lh      v1, 0x0008(v0)             # 00000008
    sh      v1, 0x00B6(a3)             # 000000B6
    sh      v1, 0x0032(a3)             # 00000032
    lh      v1, 0x000A(v0)             # 0000000A
    sh      v1, 0x00B8(a3)             # 000000B8
    sh      v1, 0x0034(a3)             # 00000034
lbl_808DDE44:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DDE54:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    lw      a0, 0x0044($sp)
    jal     func_808DDD00
    or      a1, a2, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_808DDF24
    lw      t6, 0x0044($sp)
    lhu     a0, 0x0004(v0)             # 00000004
    lhu     a1, 0x0002(v0)             # 00000002
    lhu     a2, 0x1D74(t6)             # 00001D74
    sw      v0, 0x003C($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8005C714
    or      a3, $zero, $zero           # a3 = 00000000
    lw      v1, 0x003C($sp)
    lw      v0, 0x0040($sp)
    lw      t8, 0x0010(v1)             # 00000010
    lw      t7, 0x000C(v1)             # 0000000C
    lw      t0, 0x0018(v1)             # 00000018
    lw      t9, 0x0014(v1)             # 00000014
    mtc1    t8, $f6                    # $f6 = 0.00
    lw      t2, 0x0020(v1)             # 00000020
    mtc1    t7, $f4                    # $f4 = 0.00
    lw      t1, 0x001C(v1)             # 0000001C
    mtc1    t0, $f10                   # $f10 = 0.00
    cvt.s.w $f12, $f6
    mtc1    t9, $f8                    # $f8 = 0.00
    mtc1    t2, $f6                    # $f6 = 0.00
    addiu   v0, v0, 0x0024             # v0 = 00000024
    cvt.s.w $f2, $f4
    mtc1    t1, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f10
    cvt.s.w $f14, $f8
    cvt.s.w $f8, $f6
    cvt.s.w $f18, $f4
    swc1    $f8, 0x0020($sp)
    sub.s   $f10, $f16, $f2
    sub.s   $f8, $f18, $f12
    mul.s   $f4, $f10, $f0
    nop
    mul.s   $f10, $f8, $f0
    add.s   $f6, $f4, $f2
    add.s   $f4, $f10, $f12
    swc1    $f6, 0x0000(v0)            # 00000024
    swc1    $f4, 0x0004(v0)            # 00000028
    lwc1    $f6, 0x0020($sp)
    sub.s   $f8, $f6, $f14
    mul.s   $f10, $f8, $f0
    add.s   $f4, $f10, $f14
    swc1    $f4, 0x0008(v0)            # 0000002C
lbl_808DDF24:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_808DDF34:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    sll     t6, a1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    a0, t9, t0
    addu    a0, a0, $at
    jal     func_8008A194
    sw      a0, 0x002C($sp)
    lw      t1, 0x0048($sp)
    lw      a0, 0x0038($sp)
    lw      a1, 0x002C($sp)
    bne     t1, $zero, lbl_808DDFAC
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f12                  # $f12 = 1.00
    beq     $zero, $zero, lbl_808DDFC0
    cvt.s.w $f2, $f4
lbl_808DDFAC:
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f12                  # $f12 = -1.00
    cvt.s.w $f0, $f6
lbl_808DDFC0:
    lbu     t2, 0x0043($sp)
    lwc1    $f8, 0x0044($sp)
    mfc1    a2, $f12
    mfc1    a3, $f0
    swc1    $f2, 0x0010($sp)
    sw      t2, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_808DDFF0:
    lw      t6, 0x0250(a0)             # 00000250
    beq     a1, t6, lbl_808DE000
    nop
    sw      a2, 0x0250(a0)             # 00000250
lbl_808DE000:
    jr      $ra
    nop


func_808DE008:
    lw      v0, 0x0250(a0)             # 00000250
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     a1, v0, lbl_808DE02C
    nop
    bnel    v0, $at, lbl_808DE02C
    sw      a3, 0x0250(a0)             # 00000250
    jr      $ra
    sw      a2, 0x0250(a0)             # 00000250
lbl_808DE028:
    sw      a3, 0x0250(a0)             # 00000250
lbl_808DE02C:
    jr      $ra
    nop


func_808DE034:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      t7, 0x015C(t6)             # 0000015C
    lh      t9, 0x017C(t6)             # 0000017C
    addiu   a2, t6, 0x013C             # a2 = 0000013C
    lh      t8, 0x0002(t7)             # 00000002
    slt     $at, t8, t9
    bnel    $at, $zero, lbl_808DE084
    lw      $ra, 0x0014($sp)
    lbu     t0, 0x0035(a2)             # 00000171
    lui     a3, 0x3F80                 # a3 = 3F800000
    ori     t1, t0, 0x0003             # t1 = 00000003
    sb      t1, 0x0035(a2)             # 00000171
    lw      a1, 0x0018($sp)
    jal     func_8008B778
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_808DE084:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DE090:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lbu     t6, 0x0171(a1)             # 00000171
    addiu   a2, a1, 0x013C             # a2 = 0000013C
    lui     a3, 0x3F80                 # a3 = 3F800000
    ori     t7, t6, 0x0003             # t7 = 00000003
    sb      t7, 0x0171(a1)             # 00000171
    jal     func_8008B778
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DE0D0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x015C(a1)             # 0000015C
    lw      t9, 0x015C(a1)             # 0000015C
    lbu     t2, 0x0171(a1)             # 00000171
    lwl     t8, 0x0000(t6)             # 00000000
    lwr     t8, 0x0003(t6)             # 00000003
    ori     t3, t2, 0x0003             # t3 = 00000003
    addiu   a2, a1, 0x013C             # a2 = 0000013C
    swl     t8, 0x017A(a1)             # 0000017A
    swr     t8, 0x017D(a1)             # 0000017D
    lhu     t8, 0x0004(t6)             # 00000004
    lui     a3, 0x3F80                 # a3 = 3F800000
    sh      t8, 0x017E(a1)             # 0000017E
    lwl     t1, 0x0000(t9)             # 00000000
    lwr     t1, 0x0003(t9)             # 00000003
    swl     t1, 0x0174(a1)             # 00000174
    swr     t1, 0x0177(a1)             # 00000177
    lhu     t1, 0x0004(t9)             # 00000004
    sb      t3, 0x0171(a1)             # 00000171
    sh      t1, 0x0178(a1)             # 00000178
    jal     func_8008B778
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DE148:
    lbu     t6, 0x0171(a0)             # 00000171
    andi    t7, t6, 0xFFFC             # t7 = 00000000
    sb      t7, 0x0171(a0)             # 00000171
    jr      $ra
    nop


func_808DE15C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x44C4             # a1 = 060144C4
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_808DDF34
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t6, $zero, 0x004F          # t6 = 0000004F
    sw      t6, 0x0250(a0)             # 00000250
    sw      v0, 0x0254(a0)             # 00000254
    sw      v0, 0x02FC(a0)             # 000002FC
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DE1A8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lhu     t6, 0x0EDE(v0)             # 8011B4AE
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_808DE1E4
    nop
    lw      t8, 0x0004(v0)             # 8011A5D4
    bne     t8, $zero, lbl_808DE1E4
    nop
    sw      $zero, 0x0250(a0)          # 00000250
    beq     $zero, $zero, lbl_808DE1F0
    lw      $ra, 0x0014($sp)
lbl_808DE1E4:
    jal     func_80020EB4
    nop
    lw      $ra, 0x0014($sp)
lbl_808DE1F0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DE1FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bne     t6, $at, lbl_808DE2C4
    nop
    lw      v0, 0x1C44(a2)             # 00001C44
    lui     $at, %hi(var_808E36A0)     # $at = 808E0000
    lwc1    $f4, %lo(var_808E36A0)($at)
    lwc1    $f0, 0x002C(v0)            # 0000002D
    or      a0, a2, $zero              # a0 = 00000000
    c.lt.s  $f0, $f4
    nop
    bc1f    lbl_808DE2BC
    nop
    jal     func_8009CB08
    sw      a2, 0x001C($sp)
    bne     v0, $zero, lbl_808DE2BC
    lw      a2, 0x001C($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x3F80             # v0 = 02003F80
    sll     t7, v0,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    lui     t0, 0x8012                 # t0 = 80120000
    addu    t0, t0, t9
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t0, 0x0C38(t0)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t0, t1
    addu    t3, t2, $at
    sw      t3, 0x1D68(a2)             # 00001D68
    lhu     t5, 0x0EDE(v1)             # 8011B4AE
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      t4, 0x1414(v1)             # 8011B9E4
    ori     t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x0EDE(v1)             # 8011B4AE
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x005A          # a1 = 0000005A
    beq     $zero, $zero, lbl_808DE2C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808DE2BC:
    beq     $zero, $zero, lbl_808DE2C4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808DE2C4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DE2D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lhu     t6, 0x0EDE(v0)             # 8011B4AE
    andi    t7, t6, 0x0002             # t7 = 00000000
    bne     t7, $zero, lbl_808DE310
    nop
    lw      t8, 0x0004(v0)             # 8011A5D4
    bne     t8, $zero, lbl_808DE310
    nop
    sw      $zero, 0x0250(a0)          # 00000250
    beq     $zero, $zero, lbl_808DE31C
    lw      $ra, 0x0014($sp)
lbl_808DE310:
    jal     func_80020EB4
    nop
    lw      $ra, 0x0014($sp)
lbl_808DE31C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DE328:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bne     t6, $at, lbl_808DE478
    nop
    lw      v1, 0x1C44(a2)             # 00001C44
    lui     $at, 0xC444                # $at = C4440000
    mtc1    $at, $f4                   # $f4 = -784.00
    lwc1    $f6, 0x0024(v1)            # 00000024
    lui     $at, 0xC412                # $at = C4120000
    addiu   v0, v1, 0x0024             # v0 = 00000024
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_808DE470
    nop
    lwc1    $f8, 0x0000(v0)            # 00000024
    mtc1    $at, $f10                  # $f10 = -584.00
    lui     $at, %hi(var_808E36A4)     # $at = 808E0000
    c.lt.s  $f8, $f10
    nop
    bc1f    lbl_808DE470
    nop
    lwc1    $f0, 0x0004(v0)            # 00000028
    lwc1    $f16, %lo(var_808E36A4)($at)
    lui     $at, %hi(var_808E36A8)     # $at = 808E0000
    c.lt.s  $f16, $f0
    nop
    bc1f    lbl_808DE470
    nop
    lwc1    $f18, %lo(var_808E36A8)($at)
    lui     $at, 0xC3DF                # $at = C3DF0000
    c.lt.s  $f0, $f18
    nop
    bc1f    lbl_808DE470
    nop
    lwc1    $f0, 0x0008(v0)            # 0000002C
    mtc1    $at, $f4                   # $f4 = -446.00
    lui     $at, 0xC376                # $at = C3760000
    c.lt.s  $f4, $f0
    nop
    bc1f    lbl_808DE470
    nop
    mtc1    $at, $f6                   # $f6 = -246.00
    or      a0, a2, $zero              # a0 = 00000000
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_808DE470
    nop
    jal     func_8009CB08
    sw      a2, 0x001C($sp)
    bne     v0, $zero, lbl_808DE470
    lw      a2, 0x001C($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x45D0             # v0 = 020045D0
    sll     t7, v0,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    lui     t0, 0x8012                 # t0 = 80120000
    addu    t0, t0, t9
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t0, 0x0C38(t0)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t0, t1
    addu    t3, t2, $at
    sw      t3, 0x1D68(a2)             # 00001D68
    lhu     t5, 0x0EDE(v1)             # 8011B4AE
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      t4, 0x1414(v1)             # 8011B9E4
    ori     t6, t5, 0x0002             # t6 = 00000002
    sh      t6, 0x0EDE(v1)             # 8011B4AE
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x005B          # a1 = 0000005B
    beq     $zero, $zero, lbl_808DE478
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808DE470:
    beq     $zero, $zero, lbl_808DE478
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808DE478:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DE488:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lhu     t6, 0x0EDE(v0)             # 8011B4AE
    andi    t7, t6, 0x0004             # t7 = 00000000
    bne     t7, $zero, lbl_808DE4C8
    nop
    lw      t8, 0x0004(v0)             # 8011A5D4
    addiu   t9, $zero, 0x001D          # t9 = 0000001D
    bne     t8, $zero, lbl_808DE4C8
    nop
    sw      t9, 0x0250(a0)             # 00000250
    beq     $zero, $zero, lbl_808DE4D4
    lw      $ra, 0x0014($sp)
lbl_808DE4C8:
    jal     func_80020EB4
    nop
    lw      $ra, 0x0014($sp)
lbl_808DE4D4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DE4E0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lui     v1, 0x8012                 # v1 = 80120000
    bne     t6, $at, lbl_808DE598
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t7, 0x8010                 # t7 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    lbu     t8, -0x733D(t8)            # 800F8CC3
    lw      t7, -0x740C(t7)            # 800F8BF4
    lhu     t0, 0x009C(v1)             # 8011A66C
    lw      v0, 0x1C44(a1)             # 00001C44
    sllv    t9, t7, t8
    and     t1, t9, t0
    beq     t1, $zero, lbl_808DE590
    lw      a0, 0x066C(v0)             # 0000066D
    lhu     t2, 0x0EDE(v1)             # 8011B4AE
    sll     t4, a0,  2
    andi    t3, t2, 0x0004             # t3 = 00000000
    bne     t3, $zero, lbl_808DE590
    nop
    bltz    t4, lbl_808DE590
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_8009CB08
    sw      a1, 0x001C($sp)
    bne     v0, $zero, lbl_808DE590
    lw      a0, 0x001C($sp)
    lui     a1, 0x0200                 # a1 = 02000000
    jal     func_80056F98
    addiu   a1, a1, 0x0250             # a1 = 02000250
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t6, 0x0EDE(v1)             # 8011B4AE
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t5, 0x1414(v1)             # 8011B9E4
    ori     t7, t6, 0x0004             # t7 = 00000004
    sh      t7, 0x0EDE(v1)             # 8011B4AE
    lw      a0, 0x001C($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x005C          # a1 = 0000005C
    beq     $zero, $zero, lbl_808DE598
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808DE590:
    beq     $zero, $zero, lbl_808DE598
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808DE598:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DE5A8:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_808DE5B8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      a0, 0x0020($sp)
    jal     func_8008D6A8
    lui     a1, 0x4130                 # a1 = 41300000
    bne     v0, $zero, lbl_808DE5F4
    lw      a0, 0x0020($sp)
    jal     func_8008D6A8
    lui     a1, 0x41B8                 # a1 = 41B80000
    beql    v0, $zero, lbl_808DE628
    lw      $ra, 0x001C($sp)
lbl_808DE5F4:
    lhu     t6, 0x0088(s0)             # 00000088
    lw      a0, 0x003C($sp)
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_808DE624
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_800345DC
    lbu     a2, 0x007D(s0)             # 0000007D
    addiu   v1, v0, 0x0800             # v1 = 00000800
    andi    a1, v1, 0xFFFF             # a1 = 00000800
    jal     func_80064780
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
lbl_808DE624:
    lw      $ra, 0x001C($sp)
lbl_808DE628:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_808DE638:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      a0, 0x0020($sp)
    jal     func_8008D6A8
    lui     a1, 0x40E0                 # a1 = 40E00000
    beql    v0, $zero, lbl_808DE698
    lw      a0, 0x0020($sp)
    lhu     t6, 0x0088(s0)             # 00000088
    lw      a0, 0x003C($sp)
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_808DE694
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_800345DC
    lbu     a2, 0x007D(s0)             # 0000007D
    addiu   v1, v0, 0x0800             # v1 = 00000800
    andi    a1, v1, 0xFFFF             # a1 = 00000800
    jal     func_80064780
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
lbl_808DE694:
    lw      a0, 0x0020($sp)
lbl_808DE698:
    jal     func_8008D6A8
    lui     a1, 0x41A0                 # a1 = 41A00000
    beq     v0, $zero, lbl_808DE6B0
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x6874          # a1 = 00006874
lbl_808DE6B0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_808DE6C4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x46D0(t6)            # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lh      v0, 0x00A4(a3)             # 000000A4
    bne     t6, $at, lbl_808DE6F4
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0x005C         # $at = 0000005C
    beq     v0, $at, lbl_808DE734
lbl_808DE6F4:
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lui     a1, 0x4130                 # a1 = 41300000
    jal     func_8008D6A8
    sw      a3, 0x001C($sp)
    beq     v0, $zero, lbl_808DE734
    lw      a3, 0x001C($sp)
    lw      v0, 0x0018($sp)
    addiu   a0, a3, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(v0)             # 00000078
    jal     func_800345DC
    lbu     a2, 0x007D(v0)             # 0000007D
    lw      a0, 0x0018($sp)
    addiu   v1, v0, 0x0800             # v1 = 00000800
    andi    a1, v1, 0xFFFF             # a1 = 00000800
    jal     func_80064780
    addiu   a0, a0, 0x00E4             # a0 = 000000E4
lbl_808DE734:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DE744:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x46D0(t6)            # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      t7, 0x0054($sp)
    bnel    t6, $at, lbl_808DE844
    lw      $ra, 0x0014($sp)
    lh      v0, 0x00A4(t7)             # 000000A4
    addiu   $at, $zero, 0x005C         # $at = 0000005C
    bnel    v0, $at, lbl_808DE844
    lw      $ra, 0x0014($sp)
    lhu     v1, 0x1D74(t7)             # 00001D74
    addiu   $at, $zero, 0x0077         # $at = 00000077
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFE0
    bne     v1, $at, lbl_808DE7E4
    lui     t8, %hi(var_808E34C8)      # t8 = 808E0000
    addiu   t8, t8, %lo(var_808E34C8)  # t8 = 808E34C8
    lw      t0, 0x0000(t8)             # 808E34C8
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    sw      t0, 0x0000(a1)             # FFFFFFE0
    lw      t9, 0x0004(t8)             # 808E34CC
    lui     a2, %hi(var_808E4160)      # a2 = 808E0000
    addiu   a2, a2, %lo(var_808E4160)  # a2 = 808E4160
    sw      t9, 0x0004(a1)             # FFFFFFE4
    lw      t0, 0x0008(t8)             # 808E34D0
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFEC
    sw      t0, 0x0008(a1)             # FFFFFFE8
    lw      a0, 0x0054($sp)
    jal     func_8008EC20
    addu    a0, a0, $at
    lui     a0, %hi(var_808E4160)      # a0 = 808E0000
    addiu   a0, a0, %lo(var_808E4160)  # a0 = 808E4160
    jal     func_80064780
    addiu   a1, $zero, 0x28A1          # a1 = 000028A1
    beq     $zero, $zero, lbl_808DE844
    lw      $ra, 0x0014($sp)
lbl_808DE7E4:
    addiu   $at, $zero, 0x00A4         # $at = 000000A4
    bne     v1, $at, lbl_808DE840
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFD4
    lui     t1, %hi(var_808E34D4)      # t1 = 808E0000
    addiu   t1, t1, %lo(var_808E34D4)  # t1 = 808E34D4
    lw      t3, 0x0000(t1)             # 808E34D4
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    sw      t3, 0x0000(a1)             # FFFFFFD4
    lw      t2, 0x0004(t1)             # 808E34D8
    lui     a2, %hi(var_808E4160)      # a2 = 808E0000
    addiu   a2, a2, %lo(var_808E4160)  # a2 = 808E4160
    sw      t2, 0x0004(a1)             # FFFFFFD8
    lw      t3, 0x0008(t1)             # 808E34DC
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFEC
    sw      t3, 0x0008(a1)             # FFFFFFDC
    lw      a0, 0x0054($sp)
    jal     func_8008EC20
    addu    a0, a0, $at
    lui     a0, %hi(var_808E4160)      # a0 = 808E0000
    addiu   a0, a0, %lo(var_808E4160)  # a0 = 808E4160
    jal     func_80064780
    addiu   a1, $zero, 0x0802          # a1 = 00000802
lbl_808DE840:
    lw      $ra, 0x0014($sp)
lbl_808DE844:
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_808DE850:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x46D0(t6)            # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     t6, $at, lbl_808DE87C
    nop
    lh      v0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x005C         # $at = 0000005C
    beql    v0, $at, lbl_808DE888
    lw      $ra, 0x0014($sp)
lbl_808DE87C:
    jal     func_80064738
    addiu   a0, $zero, 0x083D          # a0 = 0000083D
    lw      $ra, 0x0014($sp)
lbl_808DE888:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DE894:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x46D0(t6)            # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t6, $at, lbl_808DE990
    lw      $ra, 0x0014($sp)
    lh      v0, 0x00A4(a3)             # 000000A4
    addiu   $at, $zero, 0x005C         # $at = 0000005C
    bnel    v0, $at, lbl_808DE990
    lw      $ra, 0x0014($sp)
    lhu     v0, 0x1D74(a3)             # 00001D74
    slti    $at, v0, 0x0078
    bne     $at, $zero, lbl_808DE98C
    slti    $at, v0, 0x00A4
    beq     $at, $zero, lbl_808DE98C
    lui     t7, %hi(var_808E34E0)      # t7 = 808E0000
    lw      t7, %lo(var_808E34E0)(t7)
    lui     a0, %hi(var_808E4170)      # a0 = 808E0000
    addiu   a0, a0, %lo(var_808E4170)  # a0 = 808E4170
    beq     t7, $zero, lbl_808DE95C
    addiu   a1, a3, 0x00E0             # a1 = 000000E0
    jal     func_800A5560
    sw      a3, 0x0018($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f14                  # $f14 = 2.00
    lui     $at, %hi(var_808E36AC)     # $at = 808E0000
    lwc1    $f4, %lo(var_808E36AC)($at)
    lw      a3, 0x0018($sp)
    lui     $at, %hi(var_808E36B0)     # $at = 808E0000
    div.s   $f12, $f0, $f4
    c.lt.s  $f14, $f12
    nop
    bc1f    lbl_808DE928
    nop
    mov.s   $f12, $f14
lbl_808DE928:
    lwc1    $f6, %lo(var_808E36B0)($at)
    lui     $at, %hi(var_808E36B4)     # $at = 808E0000
    lwc1    $f10, %lo(var_808E36B4)($at)
    mul.s   $f8, $f6, $f12
    lui     a0, %hi(var_808E34E4)      # a0 = 808E0000
    addiu   a0, a0, %lo(var_808E34E4)  # a0 = 808E34E4
    addiu   a1, $zero, 0x20BD          # a1 = 000020BD
    sw      a3, 0x0018($sp)
    add.s   $f16, $f8, $f10
    mfc1    a2, $f16
    jal     func_800C50AC
    nop
    lw      a3, 0x0018($sp)
lbl_808DE95C:
    addiu   v0, a3, 0x00E0             # v0 = 000000E0
    lwc1    $f18, 0x0000(v0)           # 000000E0
    lui     $at, %hi(var_808E4170)     # $at = 808E0000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    swc1    $f18, %lo(var_808E4170)($at)
    lwc1    $f4, 0x0004(v0)            # 000000E4
    swc1    $f4, %lo(var_808E4174)($at)
    lwc1    $f6, 0x0008(v0)            # 000000E8
    lui     $at, %hi(var_808E4178)     # $at = 808E0000
    swc1    $f6, %lo(var_808E4178)($at)
    lui     $at, %hi(var_808E34E0)     # $at = 808E0000
    sw      t8, %lo(var_808E34E0)($at)
lbl_808DE98C:
    lw      $ra, 0x0014($sp)
lbl_808DE990:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DE99C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lui     t6, %hi(var_808E34F0)      # t6 = 808E0000
    lw      t6, %lo(var_808E34F0)(t6)
    lw      a0, 0x0034($sp)
    bnel    t6, $zero, lbl_808DEA34
    lw      $ra, 0x002C($sp)
    jal     func_808DDD00
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t7, 0x000C(v0)             # 0000000C
    lw      t8, 0x0010(v0)             # 00000010
    lw      t9, 0x0014(v0)             # 00000014
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t8, $f6                    # $f6 = 0.00
    mtc1    t9, $f8                    # $f8 = 0.00
    cvt.s.w $f0, $f4
    lw      a1, 0x0034($sp)
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    sw      t0, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    cvt.s.w $f2, $f6
    mfc1    a3, $f0
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    cvt.s.w $f12, $f8
    swc1    $f2, 0x0010($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    jal     func_80025110              # ActorSpawn
    swc1    $f12, 0x0014($sp)
    lw      t1, 0x0030($sp)
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, %hi(var_808E34F0)     # $at = 808E0000
    sw      v0, 0x0300(t1)             # 00000300
    sw      t2, %lo(var_808E34F0)($at)
    lw      $ra, 0x002C($sp)
lbl_808DEA34:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_808DEA40:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_808DDD00
    or      a1, $zero, $zero           # a1 = 00000000
    lw      a1, 0x0018($sp)
    lw      a0, 0x0300(a1)             # 00000300
    beql    a0, $zero, lbl_808DEAB0
    lw      $ra, 0x0014($sp)
    lw      t6, 0x000C(v0)             # 0000000C
    addiu   v1, a0, 0x0024             # v1 = 00000024
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(v1)            # 00000024
    lw      t7, 0x0010(v0)             # 00000010
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(v1)           # 00000028
    lw      t8, 0x0014(v0)             # 00000014
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0008(v1)           # 0000002C
    lw      $ra, 0x0014($sp)
lbl_808DEAB0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DEABC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lw      a2, 0x0300(a1)             # 00000300
    beq     a2, $zero, lbl_808DEAE4
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80020EB4
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    sw      $zero, 0x0300(a1)          # 00000300
lbl_808DEAE4:
    jal     func_80020EB4
    or      a0, a1, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DEAFC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      v0, 0x00A4(a2)             # 000000A4
    addiu   $at, $zero, 0x0061         # $at = 00000061
    or      a0, a2, $zero              # a0 = 00000000
    bne     v0, $at, lbl_808DEB88
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_808DDD00
    sw      a2, 0x002C($sp)
    beq     v0, $zero, lbl_808DEB88
    lui     t6, %hi(var_808E34F4)      # t6 = 808E0000
    lhu     v1, 0x0000(v0)             # 00000000
    lw      t6, %lo(var_808E34F4)(t6)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t6, v1, lbl_808DEB80
    lw      a0, 0x0028($sp)
    beq     v1, $at, lbl_808DEB5C
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    jal     func_808DE99C
    sw      v1, 0x0018($sp)
    lw      v1, 0x0018($sp)
lbl_808DEB5C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_808DEB74
    lw      a0, 0x0028($sp)
    jal     func_808DEABC
    sw      v1, 0x0018($sp)
    lw      v1, 0x0018($sp)
lbl_808DEB74:
    lui     $at, %hi(var_808E34F4)     # $at = 808E0000
    sw      v1, %lo(var_808E34F4)($at)
    lw      a0, 0x0028($sp)
lbl_808DEB80:
    jal     func_808DEA40
    lw      a1, 0x002C($sp)
lbl_808DEB88:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808DEB98:
    lw      v0, 0x1D88(a1)             # 00001D88
    beql    v0, $zero, lbl_808DEBC0
    lw      v0, 0x1C44(a1)             # 00001C44
    lhu     v1, 0x0008(v0)             # 00000008
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v1, v1, $at
    sll     v1, v1, 16
    beq     $zero, $zero, lbl_808DEBD4
    sra     v1, v1, 16
    lw      v0, 0x1C44(a1)             # 00001C44
lbl_808DEBC0:
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      v1, 0x0032(v0)             # 00000032
    addu    v1, v1, $at
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_808DEBD4:
    sh      v1, 0x0032(a0)             # 00000032
    lh      t6, 0x0032(a0)             # 00000032
    sh      t6, 0x00B6(a0)             # 000000B6
    jr      $ra
    nop


func_808DEBE8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0602                 # a2 = 06020000
    addiu   a2, a2, 0x8218             # a2 = 06018218
    jal     func_808DDD00
    sw      a2, 0x001C($sp)
    beq     v0, $zero, lbl_808DEC68
    lw      a2, 0x001C($sp)
    lhu     v1, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bnel    v1, $at, lbl_808DEC28
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    lui     a2, 0x0600                 # a2 = 06000000
    beq     $zero, $zero, lbl_808DEC68
    addiu   a2, a2, 0x3CE8             # a2 = 06003CE8
    addiu   $at, $zero, 0x000C         # $at = 0000000C
lbl_808DEC28:
    bnel    v1, $at, lbl_808DEC40
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    lui     a2, 0x0600                 # a2 = 06000000
    beq     $zero, $zero, lbl_808DEC68
    addiu   a2, a2, 0x2D38             # a2 = 06002D38
    addiu   $at, $zero, 0x000D         # $at = 0000000D
lbl_808DEC40:
    bnel    v1, $at, lbl_808DEC58
    addiu   $at, $zero, 0x0017         # $at = 00000017
    lui     a2, 0x0600                 # a2 = 06000000
    beq     $zero, $zero, lbl_808DEC68
    addiu   a2, a2, 0x4F90             # a2 = 06004F90
    addiu   $at, $zero, 0x0017         # $at = 00000017
lbl_808DEC58:
    bnel    v1, $at, lbl_808DEC6C
    or      v0, a2, $zero              # v0 = 06004F90
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x0DB8             # a2 = 06000DB8
lbl_808DEC68:
    or      v0, a2, $zero              # v0 = 06000DB8
lbl_808DEC6C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DEC7C:
    lui     $at, 0x4110                # $at = 41100000
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $at, $f2                   # $f2 = 9.00
    sw      $ra, 0x0014($sp)
    lwc1    $f0, 0x0258(a0)            # 00000258
    lui     $at, 0x4040                # $at = 40400000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808DECB4
    mtc1    $at, $f12                  # $f12 = 3.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    beq     $zero, $zero, lbl_808DED3C
    swc1    $f4, 0x0068(a0)            # 00000068
    mtc1    $at, $f12                  # $f12 = 3.00
lbl_808DECB4:
    lui     t6, 0x8012                 # t6 = 80120000
    lui     t8, 0x8012                 # t8 = 80120000
    c.lt.s  $f0, $f12
    nop
    bc1f    lbl_808DED0C
    nop
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, %hi(var_808E36B8)     # $at = 808E0000
    lwc1    $f10, %lo(var_808E36B8)($at)
    lh      t7, 0x1458(t6)             # 80121458
    lui     $at, %hi(var_808E36BC)     # $at = 808E0000
    lwc1    $f18, %lo(var_808E36BC)($at)
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f16, $f8, $f10
    sub.s   $f8, $f0, $f2
    add.s   $f4, $f16, $f18
    div.s   $f6, $f4, $f12
    mul.s   $f10, $f6, $f8
    beq     $zero, $zero, lbl_808DED3C
    swc1    $f10, 0x0068(a0)           # 00000068
lbl_808DED0C:
    lw      t8, -0x4600(t8)            # 8011BA00
    lui     $at, %hi(var_808E36C0)     # $at = 808E0000
    lwc1    $f4, %lo(var_808E36C0)($at)
    lh      t9, 0x1458(t8)             # 80121458
    lui     $at, %hi(var_808E36C4)     # $at = 808E0000
    lwc1    $f8, %lo(var_808E36C4)($at)
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f6, $f18, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0068(a0)           # 00000068
lbl_808DED3C:
    jal     func_8002121C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DED54:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_8002121C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DED74:
    lui     $at, 0x4040                # $at = 40400000
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $at, $f2                   # $f2 = 3.00
    sw      $ra, 0x0014($sp)
    lwc1    $f0, 0x0258(a0)            # 00000258
    lui     t6, 0x8012                 # t6 = 80120000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808DEDE0
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, %hi(var_808E36C8)     # $at = 808E0000
    lwc1    $f8, %lo(var_808E36C8)($at)
    lh      t7, 0x1458(t6)             # 80121458
    lui     $at, %hi(var_808E36CC)     # $at = 808E0000
    lwc1    $f16, %lo(var_808E36CC)($at)
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    sub.s   $f6, $f2, $f0
    add.s   $f18, $f10, $f16
    div.s   $f4, $f18, $f2
    mul.s   $f8, $f4, $f6
    beq     $zero, $zero, lbl_808DEDE8
    swc1    $f8, 0x0068(a0)            # 00000068
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_808DEDE0:
    nop
    swc1    $f10, 0x0068(a0)           # 00000068
lbl_808DEDE8:
    jal     func_8002121C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DEE00:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_808DEC7C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DEE20:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_8002121C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DEE40:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_808DED74
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DEE60:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DE1FC
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_808DEE9C
    lw      a0, 0x0018($sp)
    jal     func_808DE328
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_808DEE9C
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0250(t7)             # 00000250
lbl_808DEE9C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DEEAC:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lbu     t6, 0x1D6C(s1)             # 00001D6C
    beql    t6, $zero, lbl_808DEFAC
    lw      $ra, 0x002C($sp)
    lw      a2, 0x1D9C(s1)             # 00001D9C
    beql    a2, $zero, lbl_808DEFAC
    lw      $ra, 0x002C($sp)
    lhu     t7, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a0, 0x0602                 # a0 = 06020000
    bne     t7, $at, lbl_808DEFA8
    addiu   a0, a0, 0xCB08             # a0 = 0601CB08
    jal     func_8008A194
    sw      a2, 0x0044($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a2, 0x0044($sp)
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    cvt.s.w $f6, $f4
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   v1, s0, 0x0024             # v1 = 00000024
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f6, 0x0034($sp)
    sw      t8, 0x0250(s0)             # 00000250
    sw      t9, 0x0254(s0)             # 00000254
    lw      t0, 0x000C(a2)             # 0000000C
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0000(v1)           # 00000024
    lw      t1, 0x0010(a2)             # 00000010
    mtc1    t1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0004(v1)           # 00000028
    lw      t2, 0x0014(a2)             # 00000014
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    jal     func_808DEB98
    swc1    $f6, 0x0008(v1)            # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE0D0
    or      a1, s1, $zero              # a1 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x0034($sp)
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    mfc1    a3, $f0
    sw      t3, 0x0014($sp)
    addiu   a1, a1, 0xCB08             # a1 = 0601CB08
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f8, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    jal     func_808DE850
    or      a0, s1, $zero              # a0 = 00000000
lbl_808DEFA8:
    lw      $ra, 0x002C($sp)
lbl_808DEFAC:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_808DEFBC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    beq     a2, $zero, lbl_808DF090
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x39F0             # a0 = 060139F0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x39F0             # a1 = 060139F0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t6, 0x0250(s0)             # 00000250
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE148
    swc1    $f10, 0x0258(s0)           # 00000258
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t7, 0x0000(v0)             # 8011BA00
    lui     $at, %hi(var_808E36D0)     # $at = 808E0000
    lwc1    $f0, %lo(var_808E36D0)($at)
    lh      t8, 0x1456(t7)             # 00001456
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f2                   # $f2 = 13.00
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f4, $f18, $f0
    add.s   $f6, $f4, $f2
    neg.s   $f8, $f6
    swc1    $f8, 0x006C(s0)            # 0000006C
    lw      t9, 0x0000(v0)             # 8011BA00
    lh      t0, 0x1456(t9)             # 00001456
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    add.s   $f4, $f18, $f2
    neg.s   $f6, $f4
    swc1    $f6, 0x0070(s0)            # 00000070
    beq     $zero, $zero, lbl_808DF09C
    lw      $ra, 0x002C($sp)
lbl_808DF090:
    jal     func_808DE034
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
lbl_808DF09C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_808DF0AC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0258(a0)            # 00000258
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f16                  # $f16 = 12.00
    add.s   $f8, $f4, $f6
    lui     t6, 0x8012                 # t6 = 80120000
    swc1    $f8, 0x0258(a0)            # 00000258
    lwc1    $f10, 0x0258(a0)           # 00000258
    c.le.s  $f16, $f10
    nop
    bc1f    lbl_808DF114
    nop
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, %hi(var_808E36D4)     # $at = 808E0000
    lwc1    $f6, %lo(var_808E36D4)($at)
    lh      t7, 0x1458(t6)             # 80121458
    lui     $at, %hi(var_808E36D8)     # $at = 808E0000
    lwc1    $f10, %lo(var_808E36D8)($at)
    mtc1    t7, $f18                   # $f18 = 0.00
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sw      t8, 0x0250(a0)             # 00000250
    cvt.s.w $f4, $f18
    mul.s   $f8, $f4, $f6
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0068(a0)           # 00000068
lbl_808DF114:
    jr      $ra
    nop


func_808DF11C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lui     $at, 0x42BE                # $at = 42BE0000
    mtc1    $at, $f8                   # $f8 = 95.00
    lh      t8, 0x145A(t7)             # 8012145A
    lw      t6, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    mtc1    t8, $f4                    # $f4 = 0.00
    lwc1    $f0, 0x0090(t6)            # 00000090
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    c.le.s  $f0, $f10
    nop
    bc1fl   lbl_808DF1BC
    lw      $ra, 0x0024($sp)
    jal     func_8008A194
    addiu   a0, a0, 0x5248             # a0 = 06005248
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0xC140                # $at = C1400000
    mtc1    $at, $f4                   # $f4 = -12.00
    cvt.s.w $f18, $f16
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5248             # a1 = 06005248
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f18, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f4, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0028($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sw      t9, 0x0250(v0)             # 00000250
    swc1    $f6, 0x0258(v0)            # 00000258
    lw      $ra, 0x0024($sp)
lbl_808DF1BC:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808DF1C8:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0258(a0)            # 00000258
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f16                  # $f16 = 12.00
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0258(a0)            # 00000258
    lwc1    $f10, 0x0258(a0)           # 00000258
    c.le.s  $f16, $f10
    nop
    bc1f    lbl_808DF208
    nop
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sw      t6, 0x0250(a0)             # 00000250
    swc1    $f18, 0x0068(a0)           # 00000068
lbl_808DF208:
    jr      $ra
    nop


func_808DF210:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_808DDD00
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    beql    v0, $zero, lbl_808DF2C4
    lw      $ra, 0x0024($sp)
    lhu     a0, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a0, $at, lbl_808DF260
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     a0, $at, lbl_808DF260
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     a0, $at, lbl_808DF260
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     a0, $at, lbl_808DF260
    addiu   $at, $zero, 0x0017         # $at = 00000017
    bne     a0, $at, lbl_808DF2C0
lbl_808DF260:
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194
    addiu   a0, a0, 0xBBBC             # a0 = 0601BBBC
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0xBBBC             # a1 = 0601BBBC
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t8, 0x0028($sp)
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sw      t7, 0x0250(t8)             # 00000250
    lw      t0, 0x0028($sp)
    sw      t9, 0x0254(t0)             # 00000254
lbl_808DF2C0:
    lw      $ra, 0x0024($sp)
lbl_808DF2C4:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808DF2D0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    beq     a1, $zero, lbl_808DF338
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194
    addiu   a0, a0, 0x8674             # a0 = 06018674
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f6, $f4
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x8674             # a1 = 06018674
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      v0, 0x0028($sp)
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sw      t7, 0x0250(v0)             # 00000250
    sw      t8, 0x0254(v0)             # 00000254
lbl_808DF338:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808DF348:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0038($sp)
    or      a3, a1, $zero              # a3 = 00000000
    beq     a2, $zero, lbl_808DF3C0
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_808DEBE8
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    sw      v0, 0x002C($sp)
    jal     func_8008A194
    or      a0, v0, $zero              # a0 = 00000000
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0038($sp)
    lw      a1, 0x002C($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0038($sp)
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sw      t6, 0x0250(t7)             # 00000250
    lw      t9, 0x0038($sp)
    sw      t8, 0x0254(t9)             # 00000254
lbl_808DF3C0:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_808DF3D0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_808DF458
    lw      $ra, 0x0024($sp)
    lw      v0, 0x1D9C(a1)             # 00001D9C
    beql    v0, $zero, lbl_808DF458
    lw      $ra, 0x0024($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lui     a0, 0x0602                 # a0 = 06020000
    bnel    t7, $at, lbl_808DF458
    lw      $ra, 0x0024($sp)
    jal     func_8008A194
    addiu   a0, a0, 0x8674             # a0 = 06018674
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f6                   # $f6 = -8.00
    cvt.s.w $f0, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   a1, a1, 0x8674             # a1 = 06018674
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    sw      $zero, 0x0014($sp)
    mfc1    a3, $f0
    swc1    $f0, 0x0010($sp)
    swc1    $f6, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t9, 0x0028($sp)
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sw      t8, 0x0250(t9)             # 00000250
    lw      $ra, 0x0024($sp)
lbl_808DF458:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808DF464:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_808DDD24
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    beq     v0, $zero, lbl_808DF4FC
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f0, 0x0154(s0)            # 00000154
    lwc1    $f2, 0x014C(s0)            # 0000014C
    lui     a0, 0x0602                 # a0 = 06020000
    c.le.s  $f2, $f0
    nop
    bc1fl   lbl_808DF524
    lw      $ra, 0x002C($sp)
    jal     func_8008A194
    addiu   a0, a0, 0x8674             # a0 = 06018674
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0602                 # a1 = 06020000
    cvt.s.w $f4, $f4
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x8674             # a1 = 06018674
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0xBF80                 # a2 = BF800000
    mfc1    a3, $f4
    swc1    $f0, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    addiu   t7, $zero, 0x000B          # t7 = 0000000B
    sw      t7, 0x0250(s0)             # 00000250
    beq     $zero, $zero, lbl_808DF524
    lw      $ra, 0x002C($sp)
lbl_808DF4FC:
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_808DDD70
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    beq     v0, $zero, lbl_808DF520
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_808DF348
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_808DF520:
    lw      $ra, 0x002C($sp)
lbl_808DF524:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_808DF534:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    beq     a1, $zero, lbl_808DF59C
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194
    addiu   a0, a0, 0xBBBC             # a0 = 0601BBBC
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f4, $f4
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0xBBBC             # a1 = 0601BBBC
    lui     a2, 0xBF80                 # a2 = BF800000
    mfc1    a3, $f4
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    swc1    $f0, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      v0, 0x0028($sp)
    addiu   t7, $zero, 0x000C          # t7 = 0000000C
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t7, 0x0250(v0)             # 00000250
    sw      t8, 0x0254(v0)             # 00000254
lbl_808DF59C:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808DF5AC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    beq     a1, $zero, lbl_808DF618
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5248             # a0 = 06005248
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      v1, 0x0028($sp)
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x5248             # a1 = 06005248
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      v1, 0x0028($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0250(v1)             # 00000250
    sw      t7, 0x0254(v1)             # 00000254
    swc1    $f8, 0x0258(v1)            # 00000258
lbl_808DF618:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808DF628:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_808DF6C8
    lw      $ra, 0x002C($sp)
    lw      v0, 0x1D9C(a1)             # 00001D9C
    beql    v0, $zero, lbl_808DF6C8
    lw      $ra, 0x002C($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     a0, 0x0601                 # a0 = 06010000
    bnel    t7, $at, lbl_808DF6C8
    lw      $ra, 0x002C($sp)
    jal     func_8008A194
    addiu   a0, a0, 0x39F0             # a0 = 060139F0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC140                # $at = C1400000
    mtc1    $at, $f8                   # $f8 = -12.00
    cvt.s.w $f4, $f4
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x39F0             # a1 = 060139F0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0xBF80                 # a2 = BF800000
    mfc1    a3, $f4
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    swc1    $f6, 0x0010($sp)
    lh      t9, 0x0032(s0)             # 00000032
    mtc1    $zero, $f10                # $f10 = 0.00
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t8, $zero, 0x000E          # t8 = 0000000E
    addu    t0, t9, $at
    sw      t8, 0x0250(s0)             # 00000250
    sh      t0, 0x0032(s0)             # 00000032
    swc1    $f10, 0x0258(s0)           # 00000258
    lw      $ra, 0x002C($sp)
lbl_808DF6C8:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_808DF6D8:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0258(a0)            # 00000258
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f16                  # $f16 = 12.00
    add.s   $f8, $f4, $f6
    lui     t6, 0x8012                 # t6 = 80120000
    swc1    $f8, 0x0258(a0)            # 00000258
    lwc1    $f10, 0x0258(a0)           # 00000258
    c.le.s  $f16, $f10
    nop
    bc1f    lbl_808DF740
    nop
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, %hi(var_808E36DC)     # $at = 808E0000
    lwc1    $f6, %lo(var_808E36DC)($at)
    lh      t7, 0x1458(t6)             # 80121458
    lui     $at, %hi(var_808E36E0)     # $at = 808E0000
    lwc1    $f10, %lo(var_808E36E0)($at)
    mtc1    t7, $f18                   # $f18 = 0.00
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    sw      t8, 0x0250(a0)             # 00000250
    cvt.s.w $f4, $f18
    mul.s   $f8, $f4, $f6
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0068(a0)           # 00000068
lbl_808DF740:
    jr      $ra
    nop


func_808DF748:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f8                   # $f8 = 140.00
    lh      t8, 0x145E(t7)             # 8012145E
    lw      t6, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    mtc1    t8, $f4                    # $f4 = 0.00
    lwc1    $f0, 0x0090(t6)            # 00000090
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    c.le.s  $f10, $f0
    nop
    bc1fl   lbl_808DF7E8
    lw      $ra, 0x0024($sp)
    jal     func_8008A194
    addiu   a0, a0, 0x5248             # a0 = 06005248
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0xC140                # $at = C1400000
    mtc1    $at, $f4                   # $f4 = -12.00
    cvt.s.w $f18, $f16
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5248             # a1 = 06005248
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f18, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f4, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0028($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    sw      t9, 0x0250(v0)             # 00000250
    swc1    $f6, 0x0258(v0)            # 00000258
    lw      $ra, 0x0024($sp)
lbl_808DF7E8:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808DF7F4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0258(s0)            # 00000258
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f16                  # $f16 = 12.00
    add.s   $f8, $f4, $f6
    lui     a0, 0x0602                 # a0 = 06020000
    swc1    $f8, 0x0258(s0)            # 00000258
    lwc1    $f10, 0x0258(s0)           # 00000258
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_808DF88C
    lw      $ra, 0x002C($sp)
    jal     func_8008A194
    addiu   a0, a0, 0x9FB8             # a0 = 06019FB8
    mtc1    v0, $f18                   # $f18 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0602                 # a1 = 06020000
    cvt.s.w $f4, $f18
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x9FB8             # a1 = 06019FB8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f4, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t7, $zero, 0x0011          # t7 = 00000011
    sw      t7, 0x0250(s0)             # 00000250
    swc1    $f0, 0x0258(s0)            # 00000258
    swc1    $f0, 0x0068(s0)            # 00000068
    lw      $ra, 0x002C($sp)
lbl_808DF88C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_808DF89C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0258(a0)            # 00000258
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    add.s   $f8, $f4, $f6
    addiu   t6, $zero, 0x0012          # t6 = 00000012
    swc1    $f8, 0x0258(a0)            # 00000258
    lwc1    $f10, 0x0258(a0)           # 00000258
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_808DF8E4
    lw      $ra, 0x0014($sp)
    jal     func_808DDBCC
    sw      t6, 0x0250(a0)             # 00000250
    lw      $ra, 0x0014($sp)
lbl_808DF8E4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DF8F0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_808DF954
    lw      $ra, 0x0014($sp)
    lw      v0, 0x1D9C(a1)             # 00001D9C
    beql    v0, $zero, lbl_808DF954
    lw      $ra, 0x0014($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bnel    t7, $at, lbl_808DF954
    lw      $ra, 0x0014($sp)
    lh      v0, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x0061         # $at = 00000061
    addiu   t8, $zero, 0x0013          # t8 = 00000013
    bne     v0, $at, lbl_808DF948
    nop
    sw      t8, 0x0250(a0)             # 00000250
    sw      $zero, 0x0254(a0)          # 00000254
    sb      $zero, 0x00C8(a0)          # 000000C8
    beq     $zero, $zero, lbl_808DF954
    lw      $ra, 0x0014($sp)
lbl_808DF948:
    jal     func_80020EB4
    nop
    lw      $ra, 0x0014($sp)
lbl_808DF954:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DF960:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DE744
    lw      a1, 0x001C($sp)
    jal     func_808DE894
    lw      a0, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DEE60
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DF9A0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DE744
    lw      a1, 0x001C($sp)
    jal     func_808DE894
    lw      a0, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DEEAC
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DF9E0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE6C4
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE744
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808DE894
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808DEFBC
    lw      a2, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_808DFA5C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DEC7C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE5B8
    lw      a1, 0x0024($sp)
    jal     func_808DF0AC
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFABC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DED54
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE5B8
    lw      a1, 0x0024($sp)
    jal     func_808DF11C
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFB1C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DED74
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE5B8
    lw      a1, 0x0024($sp)
    jal     func_808DF1C8
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFB7C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_808DDCDC
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DDC94
    lw      a1, 0x001C($sp)
    jal     func_808DDB44
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DF210
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DFBC4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DDCDC
    lw      a0, 0x0020($sp)
    sw      v0, 0x001C($sp)
    lw      a0, 0x0020($sp)
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    lw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_808DF2D0
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFC10:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DDCDC
    lw      a0, 0x0020($sp)
    sw      v0, 0x001C($sp)
    lw      a0, 0x0020($sp)
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    lw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    jal     func_808DF348
    lw      a2, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFC60:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_808DDCDC
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DDC94
    lw      a1, 0x001C($sp)
    jal     func_808DDB44
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DF3D0
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DFCA8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_808DDCDC
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DDC94
    lw      a1, 0x001C($sp)
    jal     func_808DDB44
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DF464
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808DFCF0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DDCDC
    lw      a0, 0x0020($sp)
    sw      v0, 0x001C($sp)
    lw      a0, 0x0020($sp)
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    lw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_808DF534
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFD3C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DDCDC
    lw      a0, 0x0020($sp)
    sw      v0, 0x001C($sp)
    lw      a0, 0x0020($sp)
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    lw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_808DF5AC
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFD88:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DEAFC
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DF628
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFDE4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DEE00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE5B8
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DEAFC
    lw      a1, 0x0024($sp)
    jal     func_808DF6D8
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFE50:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DEE20
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE5B8
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DEAFC
    lw      a1, 0x0024($sp)
    jal     func_808DF748
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFEBC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DEE40
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE5B8
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DEAFC
    lw      a1, 0x0024($sp)
    jal     func_808DF7F4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFF28:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE638
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DEAFC
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DF89C
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFF90:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DEAFC
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DF8F0
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808DFFEC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_808DEAFC
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E000C:
    lui     $at, 0x4208                # $at = 42080000
    lwc1    $f0, 0x0154(a1)            # 00000154
    mtc1    $at, $f4                   # $f4 = 34.00
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x1B70             # t6 = 06011B70
    c.le.s  $f4, $f0
    nop
    bc1f    lbl_808E0034
    nop
    sw      t6, 0x0000(a0)             # 00000000
lbl_808E0034:
    jr      $ra
    nop


func_808E003C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a0, 0x0018($sp)
    or      a0, a2, $zero              # a0 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bnel    a1, $at, lbl_808E0068
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_808E000C
    lw      a1, 0x002C($sp)
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808E0068:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0078:
    sw      a0, 0x0000($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     a1, $at, lbl_808E0098
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x1B70             # t6 = 06011B70
    sw      t6, 0x0000(a2)             # 00000000
lbl_808E0098:
    jr      $ra
    nop


func_808E00A0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     t5, 0x8000                 # t5 = 80000000
    lw      t6, 0x0028($sp)
    lw      t8, 0x002C($sp)
    lui     v1, %hi(var_808E34BC)      # v1 = 808E0000
    lh      t4, 0x024C(t6)             # 0000024C
    lui     t6, 0xDB06                 # t6 = DB060000
    lw      a0, 0x0000(t8)             # 00000000
    sll     t7, t4,  2
    addu    v1, v1, t7
    lw      v1, %lo(var_808E34BC)(v1)
    lw      v0, 0x02C0(a0)             # 000002C0
    ori     t6, t6, 0x0020             # t6 = DB060020
    sll     t7, v1,  4
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    srl     t8, t7, 28
    sll     t9, t8,  2
    addiu   t6, t6, 0x0C38             # t6 = 80120C38
    addu    a3, t9, t6
    lw      t7, 0x0000(a3)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v1, $at
    addu    t8, t7, t0
    addu    t9, t8, t5
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lw      t8, 0x0000(a3)             # 00000000
    addu    t9, t8, t0
    addu    t6, t9, t5
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(a0)             # 000002C0
    lui     t9, 0xFFFF                 # t9 = FFFF0000
    ori     t9, t9, 0x1400             # t9 = FFFF1400
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a0)             # 000002C0
    lui     t8, 0xFA00                 # t8 = FA000000
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(a0)             # 000002C0
    lui     t7, 0xFB00                 # t7 = FB000000
    lui     t8, 0x3C00                 # t8 = 3C000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    jal     func_8007E298
    nop
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x0028($sp)
    lui     t9, %hi(func_808E003C)     # t9 = 808E0000
    addiu   t9, t9, %lo(func_808E003C) # t9 = 808E003C
    addiu   v0, v1, 0x013C             # v0 = 0000013C
    lw      a1, 0x0004(v0)             # 00000140
    lw      a2, 0x0020(v0)             # 0000015C
    lbu     a3, 0x0002(v0)             # 0000013E
    sw      $zero, 0x0014($sp)
    sw      t9, 0x0010($sp)
    lw      a0, 0x002C($sp)
    jal     func_80089D8C
    sw      v1, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808E01DC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     t5, 0x8000                 # t5 = 80000000
    lw      t6, 0x0028($sp)
    lw      t8, 0x002C($sp)
    lui     v1, %hi(var_808E34BC)      # v1 = 808E0000
    lh      t4, 0x024C(t6)             # 0000024C
    lui     t6, 0xDB06                 # t6 = DB060000
    lw      a0, 0x0000(t8)             # 00000000
    sll     t7, t4,  2
    addu    v1, v1, t7
    lw      v1, %lo(var_808E34BC)(v1)
    lw      v0, 0x02C0(a0)             # 000002C0
    ori     t6, t6, 0x0020             # t6 = DB060020
    sll     t7, v1,  4
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    srl     t8, t7, 28
    sll     t9, t8,  2
    addiu   t6, t6, 0x0C38             # t6 = 80120C38
    addu    a3, t9, t6
    lw      t7, 0x0000(a3)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v1, $at
    addu    t8, t7, t0
    addu    t9, t8, t5
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lw      t8, 0x0000(a3)             # 00000000
    addu    t9, t8, t0
    addu    t6, t9, t5
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(a0)             # 000002C0
    lui     t9, 0xFFFF                 # t9 = FFFF0000
    ori     t9, t9, 0x1400             # t9 = FFFF1400
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a0)             # 000002C0
    lui     t8, 0xFA00                 # t8 = FA000000
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(a0)             # 000002C0
    lui     t7, 0xFB00                 # t7 = FB000000
    lui     t8, 0x3C00                 # t8 = 3C000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    jal     func_8007E298
    nop
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x0028($sp)
    lui     t9, %hi(func_808E0078)     # t9 = 808E0000
    addiu   t9, t9, %lo(func_808E0078) # t9 = 808E0078
    addiu   v0, v1, 0x013C             # v0 = 0000013C
    lw      a1, 0x0004(v0)             # 00000140
    lw      a2, 0x0020(v0)             # 0000015C
    lbu     a3, 0x0002(v0)             # 0000013E
    sw      $zero, 0x0014($sp)
    sw      t9, 0x0010($sp)
    lw      a0, 0x002C($sp)
    jal     func_80089D8C
    sw      v1, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808E0318:
    sw      a1, 0x0004($sp)
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sw      t6, 0x0250(a0)             # 00000250
    jr      $ra
    nop


func_808E032C:
    addiu   t6, $zero, 0x0015          # t6 = 00000015
    sw      t6, 0x0250(a0)             # 00000250
    jr      $ra
    nop


func_808E033C:
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beq     t6, $zero, lbl_808E03B8
    nop
    lw      v0, 0x1D9C(a1)             # 00001D9C
    beq     v0, $zero, lbl_808E03B8
    nop
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     a1, t7, lbl_808E03B8
    nop
    lw      t8, 0x000C(v0)             # 0000000C
    addiu   t1, $zero, 0x0016          # t1 = 00000016
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0024(a0)            # 00000024
    lw      t9, 0x0010(v0)             # 00000010
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0028(a0)           # 00000028
    lw      t0, 0x0014(v0)             # 00000014
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x002C(a0)           # 0000002C
    lh      v1, 0x0008(v0)             # 00000008
    sw      t1, 0x0250(a0)             # 00000250
    sw      a1, 0x0254(a0)             # 00000254
    sh      v1, 0x00B6(a0)             # 000000B6
    sh      v1, 0x0032(a0)             # 00000032
lbl_808E03B8:
    jr      $ra
    nop


func_808E03C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_808E03FC
    lw      $ra, 0x0014($sp)
    lw      v0, 0x1D9C(a1)             # 00001D9C
    beql    v0, $zero, lbl_808E03FC
    lw      $ra, 0x0014($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    t7, $at, lbl_808E03FC
    lw      $ra, 0x0014($sp)
    jal     func_808DE15C
    nop
    lw      $ra, 0x0014($sp)
lbl_808E03FC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0408:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0258(a0)            # 00000258
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f16                  # $f16 = 12.00
    add.s   $f8, $f4, $f6
    lui     t6, 0x8012                 # t6 = 80120000
    swc1    $f8, 0x0258(a0)            # 00000258
    lwc1    $f10, 0x0258(a0)           # 00000258
    c.le.s  $f16, $f10
    nop
    bc1f    lbl_808E0470
    nop
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, %hi(var_808E36E4)     # $at = 808E0000
    lwc1    $f6, %lo(var_808E36E4)($at)
    lh      t7, 0x1458(t6)             # 80121458
    lui     $at, %hi(var_808E36E8)     # $at = 808E0000
    lwc1    $f10, %lo(var_808E36E8)($at)
    mtc1    t7, $f18                   # $f18 = 0.00
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    sw      t8, 0x0250(a0)             # 00000250
    cvt.s.w $f4, $f18
    mul.s   $f8, $f4, $f6
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0068(a0)           # 00000068
lbl_808E0470:
    jr      $ra
    nop


func_808E0478:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_808E032C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E049C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_808E033C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E04BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_808DDCDC
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DDC94
    lw      a1, 0x001C($sp)
    jal     func_808DDB44
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808E03C0
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0504:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DEE00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE5B8
    lw      a1, 0x0024($sp)
    jal     func_808E0408
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E0564:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_808E0574:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_808E0584:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_808E0594:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_808E05A4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_808E05B4:
    sw      a1, 0x0004($sp)
    addiu   t6, $zero, 0x001D          # t6 = 0000001D
    sw      t6, 0x0250(a0)             # 00000250
    jr      $ra
    nop


func_808E05C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DE4E0
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_808E05EC
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    sw      t6, 0x0250(t7)             # 00000250
lbl_808E05EC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E05FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    jal     func_808DDFF0
    addiu   a2, $zero, 0x001F          # a2 = 0000001F
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0620:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x001F          # a1 = 0000001F
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0644:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0021          # a2 = 00000021
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0668:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0021          # a1 = 00000021
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E068C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0022          # a1 = 00000022
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0023          # a2 = 00000023
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E06B0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0023          # a1 = 00000023
    addiu   a2, $zero, 0x0024          # a2 = 00000024
    jal     func_808DE008
    addiu   a3, $zero, 0x0022          # a3 = 00000022
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E06D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0024          # a1 = 00000024
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0025          # a2 = 00000025
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E06FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0025          # a1 = 00000025
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0026          # a2 = 00000026
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0720:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0026          # a1 = 00000026
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0027          # a2 = 00000027
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0744:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0027          # a1 = 00000027
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0768:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f8                   # $f8 = 140.00
    lh      t8, 0x145E(t7)             # 8012145E
    lw      t6, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    mtc1    t8, $f4                    # $f4 = 0.00
    lwc1    $f0, 0x0090(t6)            # 00000090
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    c.le.s  $f10, $f0
    nop
    bc1fl   lbl_808E0808
    lw      $ra, 0x0024($sp)
    jal     func_8008A194
    addiu   a0, a0, 0x5248             # a0 = 06005248
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0xC140                # $at = C1400000
    mtc1    $at, $f4                   # $f4 = -12.00
    cvt.s.w $f18, $f16
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5248             # a1 = 06005248
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f18, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f4, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0028($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t9, $zero, 0x0029          # t9 = 00000029
    sw      t9, 0x0250(v0)             # 00000250
    swc1    $f6, 0x0258(v0)            # 00000258
    lw      $ra, 0x0024($sp)
lbl_808E0808:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808E0814:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0029          # a1 = 00000029
    jal     func_808DDFF0
    addiu   a2, $zero, 0x002A          # a2 = 0000002A
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0838:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x002A          # a1 = 0000002A
    jal     func_808DDFF0
    addiu   a2, $zero, 0x002B          # a2 = 0000002B
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E085C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x002B          # a1 = 0000002B
    jal     func_808DDFF0
    addiu   a2, $zero, 0x002C          # a2 = 0000002C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0880:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_808E05C8
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E08A0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808E049C
    lw      a0, 0x0018($sp)
    jal     func_808E05FC
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E08CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DFB7C
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_808DDDBC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_808E0620
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0910:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFBC4
    lw      a0, 0x0018($sp)
    jal     func_808E0644
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E093C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFC10
    lw      a0, 0x0018($sp)
    jal     func_808E0668
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0968:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFC60
    lw      a0, 0x0018($sp)
    jal     func_808E068C
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0994:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFCA8
    lw      a0, 0x0018($sp)
    jal     func_808E06B0
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E09C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFCF0
    lw      a0, 0x0018($sp)
    jal     func_808E06D8
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E09EC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFD3C
    lw      a0, 0x0018($sp)
    jal     func_808E06FC
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0A18:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFD88
    lw      a0, 0x0018($sp)
    jal     func_808E0720
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0A44:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFDE4
    lw      a0, 0x0018($sp)
    jal     func_808E0744
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0A70:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DEE20
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE5B8
    lw      a1, 0x0024($sp)
    jal     func_808E0768
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E0AD0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFEBC
    lw      a0, 0x0018($sp)
    jal     func_808E0814
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0AFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFF28
    lw      a0, 0x0018($sp)
    jal     func_808E0838
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0B28:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFF90
    lw      a0, 0x0018($sp)
    jal     func_808E085C
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0B54:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_808E0B64:
    sw      a1, 0x0004($sp)
    addiu   t6, $zero, 0x002D          # t6 = 0000002D
    sw      t6, 0x0250(a0)             # 00000250
    jr      $ra
    nop


func_808E0B78:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80064738
    addiu   a0, $zero, 0x083D          # a0 = 0000083D
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0B98:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      a1, 0x0024($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    lui     a2, %hi(var_808E4180)      # a2 = 808E0000
    addiu   a2, a2, %lo(var_808E4180)  # a2 = 808E4180
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFF8
    jal     func_8008EC20
    addu    a0, a0, $at
    lui     a0, %hi(var_808E4180)      # a0 = 808E0000
    addiu   a0, a0, %lo(var_808E4180)  # a0 = 808E4180
    jal     func_80064780
    addiu   a1, $zero, 0x2889          # a1 = 00002889
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E0BEC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDD00
    or      a1, $zero, $zero           # a1 = 00000000
    beql    v0, $zero, lbl_808E0CC8
    lw      $ra, 0x0024($sp)
    lw      t6, 0x000C(v0)             # 0000000C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0028($sp)
    lw      t7, 0x0010(v0)             # 00000010
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x002C($sp)
    lw      t8, 0x0014(v0)             # 00000014
    sw      $zero, 0x0010($sp)
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jal     func_8001CF3C
    swc1    $f18, 0x0030($sp)
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sw      t9, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    jal     func_8001CF3C
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sw      t0, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    jal     func_8001CF3C
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001CF94
    sw      $zero, 0x0014($sp)
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    jal     func_808E0B98
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x0024($sp)
lbl_808E0CC8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_808E0CD8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lhu     v0, 0x1D74(a1)             # 00001D74
    addiu   $at, $zero, 0x0136         # $at = 00000136
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    bne     v0, $at, lbl_808E0D30
    addiu   a2, $zero, 0x005D          # a2 = 0000005D
    lui     $at, %hi(var_808E36EC)     # $at = 808E0000
    lwc1    $f4, %lo(var_808E36EC)($at)
    lui     $at, %hi(var_808E36F0)     # $at = 808E0000
    lwc1    $f6, %lo(var_808E36F0)($at)
    lui     a3, 0xC482                 # a3 = C4820000
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sw      t6, 0x0024($sp)
    ori     a3, a3, 0x8000             # a3 = C4828000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
lbl_808E0D30:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_808E0D40:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_808DDD00
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, $zero, lbl_808E0DB4
    lui     t6, %hi(var_808E34F8)      # t6 = 808E0000
    lhu     v1, 0x0000(v0)             # 00000000
    lw      t6, %lo(var_808E34F8)(t6)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v1, t6, lbl_808E0DB8
    lw      $ra, 0x0014($sp)
    beq     v1, $at, lbl_808E0D90
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_808E0DA0
    lw      a0, 0x0024($sp)
    beq     $zero, $zero, lbl_808E0DAC
    nop
lbl_808E0D90:
    jal     func_808E0B78
    sw      v1, 0x0018($sp)
    beq     $zero, $zero, lbl_808E0DAC
    lw      v1, 0x0018($sp)
lbl_808E0DA0:
    jal     func_808E0BEC
    sw      v1, 0x0018($sp)
    lw      v1, 0x0018($sp)
lbl_808E0DAC:
    lui     $at, %hi(var_808E34F8)     # $at = 808E0000
    sw      v1, %lo(var_808E34F8)($at)
lbl_808E0DB4:
    lw      $ra, 0x0014($sp)
lbl_808E0DB8:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E0DC4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x002D          # a1 = 0000002D
    jal     func_808DDFF0
    addiu   a2, $zero, 0x002E          # a2 = 0000002E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0DE8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x002E          # a1 = 0000002E
    jal     func_808DDFF0
    addiu   a2, $zero, 0x002F          # a2 = 0000002F
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0E0C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    jal     func_808DDD24
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_808E0E70
    lw      a0, 0x0020($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    addiu   a1, a1, 0x39F0             # a1 = 060139F0
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC140                 # a3 = C1400000
    jal     func_808DDF34
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      t8, 0x0032(a0)             # 00000032
    addiu   t7, $zero, 0x0030          # t7 = 00000030
    sw      t7, 0x0250(a0)             # 00000250
    addu    t9, t8, $at
    sh      t9, 0x0032(a0)             # 00000032
    swc1    $f4, 0x0258(a0)            # 00000258
lbl_808E0E70:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E0E80:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0030          # a1 = 00000030
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0031          # a2 = 00000031
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0EA4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    jal     func_808DDD24
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    beq     v0, $zero, lbl_808E0EEC
    lw      a0, 0x0020($sp)
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   a1, a1, 0xA650             # a1 = 0601A650
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_808DDF34
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    sw      t6, 0x0250(t7)             # 00000250
lbl_808E0EEC:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E0EFC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0016          # a2 = 00000016
    jal     func_808DDD24
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    beq     v0, $zero, lbl_808E0F5C
    lw      a0, 0x0020($sp)
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   a1, a1, 0xAA68             # a1 = 0601AA68
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_808DDF34
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0033          # t6 = 00000033
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      t6, 0x0250(t7)             # 00000250
    lw      a1, 0x0024($sp)
    jal     func_808DDDBC
    lw      a0, 0x0020($sp)
lbl_808E0F5C:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E0F6C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    jal     func_808DDD24
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_808E0F98
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x0034          # t6 = 00000034
    sw      t6, 0x0250(a0)             # 00000250
    sw      $zero, 0x0254(a0)          # 00000254
lbl_808E0F98:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0FA8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808E0478
    lw      a0, 0x0018($sp)
    jal     func_808E0DC4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E0FD4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808E049C
    lw      a0, 0x0018($sp)
    jal     func_808E0DE8
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E1000:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_808E0CD8
    lw      a0, 0x001C($sp)
    jal     func_808DDCDC
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DDC94
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_808DDDBC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      a0, 0x0018($sp)
    jal     func_808E0E0C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E1058:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808E0504
    lw      a0, 0x0018($sp)
    jal     func_808E0E80
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E1084:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DEE20
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE5B8
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E0EA4
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E10E8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E0D40
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_808DDDBC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E0EFC
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E114C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E0D40
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_808DDE54
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E0F6C
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E11B0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_808E0D40
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E11D0:
    sw      a1, 0x0004($sp)
    addiu   t6, $zero, 0x0035          # t6 = 00000035
    sw      t6, 0x0250(a0)             # 00000250
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lh      t8, 0x1484(t7)             # 80121484
    addiu   t9, t8, 0x53FC             # t9 = 000053FC
    sh      t9, 0x0294(a0)             # 00000294
    jr      $ra
    nop


func_808E11F8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_800C4C84
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E1218:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x0048($sp)
    lui     t8, %hi(var_808E34FC)      # t8 = 808E0000
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFD4
    lw      t7, 0x0298(t6)             # 00000298
    addiu   t8, t8, %lo(var_808E34FC)  # t8 = 808E34FC
    beql    t7, $zero, lbl_808E12A4
    lw      $ra, 0x0014($sp)
    lw      t0, 0x0000(t8)             # 808E34FC
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFEC
    sw      t0, 0x0000(a0)             # FFFFFFD4
    lw      t9, 0x0004(t8)             # 808E3500
    sw      t9, 0x0004(a0)             # FFFFFFD8
    lw      t0, 0x0008(t8)             # 808E3504
    jal     func_800AB958
    sw      t0, 0x0008(a0)             # FFFFFFDC
    lw      a0, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFEC
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFD0
    jal     func_8008EC20
    addu    a0, a0, $at
    lw      a0, 0x004C($sp)
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE0
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_80058FF8
    addiu   a3, $zero, 0x28C1          # a3 = 000028C1
    lw      t1, 0x0048($sp)
    sw      $zero, 0x0298(t1)          # 00000298
    lw      $ra, 0x0014($sp)
lbl_808E12A4:
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_808E12B0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     a1, 0x4218                 # a1 = 42180000
    jal     func_8008D6A8
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_808E12E8
    lw      a0, 0x0018($sp)
    addiu   a0, a0, 0x00E4             # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x6874          # a1 = 00006874
    jal     func_808E11F8
    nop
lbl_808E12E8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E12F8:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x0064($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0064($sp)
    addiu   a2, $zero, 0x0015          # a2 = 00000015
    jal     func_808DDD24
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    beq     v0, $zero, lbl_808E1350
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x029C(s0)             # 0000029C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sw      v1, 0x0264(s0)             # 00000264
    bnel    t6, $zero, lbl_808E1370
    lw      v0, 0x0264(s0)             # 00000264
    sw      v1, 0x029C(s0)             # 0000029C
    beq     $zero, $zero, lbl_808E136C
    sw      v1, 0x0298(s0)             # 00000298
lbl_808E1350:
    lw      a1, 0x0064($sp)
    addiu   a2, $zero, 0x0013          # a2 = 00000013
    jal     func_808DDD24
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    beq     v0, $zero, lbl_808E136C
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0264(s0)             # 00000264
lbl_808E136C:
    lw      v0, 0x0264(s0)             # 00000264
lbl_808E1370:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beql    v0, $zero, lbl_808E16DC
    lw      $ra, 0x002C($sp)
    bne     v1, v0, lbl_808E14C8
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBA00             # a1 = 8011BA00
    lw      t8, 0x0000(a1)             # 8011BA00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f20                  # $f20 = 40.00
    lh      t9, 0x1486(t8)             # 00001486
    addiu   a0, s0, 0x0258             # a0 = 00000258
    lwc1    $f18, 0x0000(a0)           # 00000258
    mtc1    t9, $f4                    # $f4 = 0.00
    addiu   v0, s0, 0x0268             # v0 = 00000268
    addiu   t6, $zero, 0x00AA          # t6 = 000000AA
    cvt.s.w $f6, $f4
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00C8          # t8 = 000000C8
    add.s   $f2, $f6, $f20
    c.lt.s  $f18, $f2
    nop
    bc1fl   lbl_808E1450
    sw      t6, 0x0008(v0)             # 00000270
    div.s   $f0, $f18, $f2
    lui     $at, 0xC2AA                # $at = C2AA0000
    mtc1    $at, $f8                   # $f8 = -85.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    addiu   v0, s0, 0x0268             # v0 = 00000268
    mul.s   $f10, $f8, $f0
    add.s   $f6, $f10, $f4
    mtc1    $at, $f10                  # $f10 = 255.00
    lui     $at, 0x42C8                # $at = 42C80000
    trunc.w.s $f8, $f6
    mul.s   $f4, $f10, $f0
    mfc1    t1, $f8
    mtc1    $at, $f8                   # $f8 = 100.00
    sw      t1, 0x0008(v0)             # 00000270
    mul.s   $f10, $f8, $f0
    trunc.w.s $f6, $f4
    mtc1    $at, $f4                   # $f4 = 100.00
    lui     $at, 0x3F80                # $at = 3F800000
    mfc1    t3, $f6
    add.s   $f6, $f10, $f4
    sw      t3, 0x000C(v0)             # 00000274
    mtc1    $at, $f4                   # $f4 = 1.00
    trunc.w.s $f8, $f6
    mfc1    t5, $f8
    nop
    sw      t5, 0x027C(s0)             # 0000027C
    lwc1    $f10, 0x0000(a0)           # 00000258
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0000(a0)            # 00000258
    beq     $zero, $zero, lbl_808E145C
    lw      t9, 0x0000(a1)             # 8011BA00
    sw      t6, 0x0008(v0)             # 00000270
lbl_808E1450:
    sw      t7, 0x000C(v0)             # 00000274
    sw      t8, 0x027C(s0)             # 0000027C
    lw      t9, 0x0000(a1)             # 8011BA00
lbl_808E145C:
    lui     $at, %hi(var_808E36F4)     # $at = 808E0000
    lwc1    $f22, %lo(var_808E36F4)($at)
    lh      t0, 0x147A(t9)             # 0000147A
    addiu   v1, s0, 0x0288             # v1 = 00000288
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f4, $f10, $f22
    add.s   $f6, $f4, $f20
    swc1    $f6, 0x0000(v1)            # 00000288
    lw      t1, 0x0000(a1)             # 8011BA00
    lh      t2, 0x147C(t1)             # 0000147C
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f4, $f10, $f22
    add.s   $f6, $f4, $f20
    swc1    $f6, 0x0004(v1)            # 0000028C
    lw      t3, 0x0000(a1)             # 8011BA00
    lh      t4, 0x147E(t3)             # 0000147E
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f4, $f10, $f22
    add.s   $f6, $f4, $f20
    beq     $zero, $zero, lbl_808E16D8
    swc1    $f6, 0x0008(v1)            # 00000290
lbl_808E14C8:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_808E16D8
    lui     $at, 0x4220                # $at = 42200000
    lui     a1, 0x8012                 # a1 = 80120000
    mtc1    $at, $f20                  # $f20 = 40.00
    addiu   a1, a1, 0xBA00             # a1 = 8011BA00
    lw      v0, 0x0000(a1)             # 8011BA00
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f4                   # $f4 = 90.00
    lh      t5, 0x148A(v0)             # 000016F2
    lh      t6, 0x1486(v0)             # 000016EE
    addiu   a0, s0, 0x0258             # a0 = 00000258
    mtc1    t5, $f8                    # $f8 = 0.00
    mtc1    t6, $f6                    # $f6 = 0.00
    lwc1    $f18, 0x0000(a0)           # 00000258
    cvt.s.w $f10, $f8
    lui     $at, %hi(var_808E36F8)     # $at = 808E0000
    cvt.s.w $f8, $f6
    add.s   $f12, $f10, $f4
    add.s   $f2, $f8, $f20
    swc1    $f12, 0x0034($sp)
    add.s   $f0, $f12, $f2
    c.lt.s  $f18, $f0
    nop
    bc1fl   lbl_808E1624
    lh      t3, 0x1488(v0)             # 000016F0
    lwc1    $f22, %lo(var_808E36F8)($at)
    lh      t7, 0x147A(v0)             # 000016E2
    sub.s   $f10, $f18, $f2
    lwc1    $f4, 0x0034($sp)
    mtc1    t7, $f6                    # $f6 = 0.00
    lh      t8, 0x1488(v0)             # 000016F0
    div.s   $f0, $f10, $f4
    lui     $at, 0x4248                # $at = 42480000
    mtc1    t8, $f4                    # $f4 = 0.00
    addiu   v1, s0, 0x0288             # v1 = 00000288
    cvt.s.w $f8, $f6
    cvt.s.w $f6, $f4
    mul.s   $f10, $f8, $f22
    mtc1    $at, $f8                   # $f8 = 50.00
    add.s   $f12, $f10, $f20
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f12, $f10
    nop
    mul.s   $f6, $f4, $f0
    add.s   $f8, $f6, $f12
    swc1    $f8, 0x0000(v1)            # 00000288
    lw      v0, 0x0000(a1)             # 8011BA00
    lh      t9, 0x147C(v0)             # 000016E4
    lh      t0, 0x1488(v0)             # 000016F0
    mtc1    t9, $f10                   # $f10 = 0.00
    mtc1    t0, $f8                    # $f8 = 0.00
    cvt.s.w $f4, $f10
    cvt.s.w $f10, $f8
    mul.s   $f6, $f4, $f22
    mtc1    $at, $f4                   # $f4 = 50.00
    add.s   $f14, $f6, $f20
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f14, $f6
    nop
    mul.s   $f10, $f8, $f0
    add.s   $f4, $f10, $f14
    swc1    $f4, 0x0004(v1)            # 0000028C
    lw      v0, 0x0000(a1)             # 8011BA00
    lh      t1, 0x147E(v0)             # 000016E6
    lh      t2, 0x1488(v0)             # 000016F0
    mtc1    t1, $f6                    # $f6 = 0.00
    mtc1    t2, $f4                    # $f4 = 0.00
    cvt.s.w $f8, $f6
    cvt.s.w $f6, $f4
    mul.s   $f10, $f8, $f22
    mtc1    $at, $f8                   # $f8 = 50.00
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f16, $f10, $f20
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f16, $f10
    nop
    mul.s   $f6, $f4, $f0
    mtc1    $at, $f4                   # $f4 = 1.00
    add.s   $f8, $f6, $f16
    swc1    $f8, 0x0008(v1)            # 00000290
    lwc1    $f10, 0x0000(a0)           # 00000258
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0000(a0)            # 00000258
    beq     $zero, $zero, lbl_808E16C4
    lw      t0, 0x0000(a1)             # 8011BA00
    lh      t3, 0x1488(v0)             # 000016F0
lbl_808E1624:
    lh      t4, 0x147A(v0)             # 000016E2
    lui     $at, 0x4248                # $at = 42480000
    mtc1    t3, $f8                    # $f8 = 0.00
    mtc1    t4, $f6                    # $f6 = 0.00
    mtc1    $at, $f0                   # $f0 = 50.00
    cvt.s.w $f10, $f8
    lui     $at, %hi(var_808E36FC)     # $at = 808E0000
    lwc1    $f22, %lo(var_808E36FC)($at)
    addiu   v1, s0, 0x0288             # v1 = 00000288
    cvt.s.w $f8, $f6
    add.s   $f4, $f10, $f0
    mul.s   $f10, $f8, $f22
    add.s   $f6, $f10, $f20
    mul.s   $f8, $f4, $f6
    swc1    $f8, 0x0000(v1)            # 00000288
    lw      v0, 0x0000(a1)             # 8011BA00
    lh      t5, 0x1488(v0)             # 000016F0
    lh      t6, 0x147C(v0)             # 000016E4
    mtc1    t5, $f10                   # $f10 = 0.00
    mtc1    t6, $f8                    # $f8 = 0.00
    cvt.s.w $f4, $f10
    cvt.s.w $f10, $f8
    add.s   $f6, $f4, $f0
    mul.s   $f4, $f10, $f22
    add.s   $f8, $f4, $f20
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0004(v1)           # 0000028C
    lw      v0, 0x0000(a1)             # 8011BA00
    lh      t7, 0x1488(v0)             # 000016F0
    lh      t8, 0x147E(v0)             # 000016E6
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t8, $f10                   # $f10 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f4, $f10
    add.s   $f8, $f6, $f0
    mul.s   $f6, $f4, $f22
    add.s   $f10, $f6, $f20
    mul.s   $f4, $f8, $f10
    swc1    $f4, 0x0008(v1)            # 00000290
    lw      t0, 0x0000(a1)             # 8011BA00
lbl_808E16C4:
    lh      t9, 0x0294(s0)             # 00000294
    lh      t1, 0x148C(t0)             # 0000148C
    addiu   t4, t1, 0x2EE0             # t4 = 00002EE0
    addu    t5, t9, t4
    sh      t5, 0x0294(s0)             # 00000294
lbl_808E16D8:
    lw      $ra, 0x002C($sp)
lbl_808E16DC:
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_808E16F0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    sw      a0, 0x0018($sp)
    jal     func_808DDD70
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_808E1788
    lw      a1, 0x001C($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    addiu   t0, $zero, 0x0036          # t0 = 00000036
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    beql    t6, $zero, lbl_808E1784
    sw      t0, 0x0250(a0)             # 00000250
    lw      v0, 0x1D9C(a1)             # 00001D9C
    beql    v0, $zero, lbl_808E1784
    sw      t0, 0x0250(a0)             # 00000250
    lw      t7, 0x000C(v0)             # 0000000C
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0024(a0)            # 00000024
    lw      t8, 0x0010(v0)             # 00000010
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0028(a0)           # 00000028
    lw      t9, 0x0014(v0)             # 00000014
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x002C(a0)           # 0000002C
    lh      v1, 0x0008(v0)             # 00000008
    sh      v1, 0x00B6(a0)             # 000000B6
    sh      v1, 0x0032(a0)             # 00000032
    sw      t0, 0x0250(a0)             # 00000250
lbl_808E1784:
    sw      t1, 0x0254(a0)             # 00000254
lbl_808E1788:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E1798:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lw      a0, 0x0028($sp)
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_808DDD24
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    beq     v0, $zero, lbl_808E1818
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x1C58             # a0 = 06001C58
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x1C58             # a1 = 06001C58
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t8, 0x0028($sp)
    addiu   t7, $zero, 0x0037          # t7 = 00000037
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sw      t7, 0x0250(t8)             # 00000250
    lw      t0, 0x0028($sp)
    sw      t9, 0x0254(t0)             # 00000254
lbl_808E1818:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808E1828:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    beq     a1, $zero, lbl_808E1884
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x1F64             # a0 = 06001F64
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x1F64             # a1 = 06001F64
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      t7, 0x0028($sp)
    addiu   t6, $zero, 0x0038          # t6 = 00000038
    sw      t6, 0x0250(t7)             # 00000250
lbl_808E1884:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808E1894:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    jal     func_808DDD24
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    beql    v0, $zero, lbl_808E18C4
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_808E18C4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E18D0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_808E16F0
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E18F0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_808DDCDC
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DDC94
    lw      a1, 0x001C($sp)
    jal     func_808DDB44
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808E1798
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E1938:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x002C($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E12F8
    lw      a1, 0x002C($sp)
    jal     func_808E12B0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E1828
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808E19A0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E12F8
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E1894
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E19FC:
    sw      a0, 0x0000($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_808E1A1C
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x2040             # t6 = 06012040
    sw      t6, 0x0000(a2)             # 00000000
lbl_808E1A1C:
    jr      $ra
    nop


func_808E1A24:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      a2, 0x0038($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a3, 0x003C($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_808E1A90
    lui     t7, %hi(var_808E3508)      # t7 = 808E0000
    addiu   t7, t7, %lo(var_808E3508)  # t7 = 808E3508
    lw      t9, 0x0000(t7)             # 808E3508
    addiu   t6, $sp, 0x0018            # t6 = FFFFFFE8
    lw      t8, 0x0004(t7)             # 808E350C
    sw      t9, 0x0000(t6)             # FFFFFFE8
    lw      t9, 0x0008(t7)             # 808E3510
    sw      t8, 0x0004(t6)             # FFFFFFEC
    or      a1, a2, $zero              # a1 = 00000000
    sw      t9, 0x0008(t6)             # FFFFFFF0
    jal     func_808E1218
    lw      a0, 0x0040($sp)
    lw      a1, 0x0040($sp)
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFE8
    jal     func_800AB958
    addiu   a1, a1, 0x02A0             # a1 = 000002A0
    lw      t1, 0x0040($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x02AC(t1)             # 000002AC
lbl_808E1A90:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_808E1AA0:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s1, 0x0028($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0024($sp)
    sw      a1, 0x0084($sp)
    lh      v0, 0x024C(s1)             # 0000024C
    lui     t7, %hi(var_808E34BC)      # t7 = 808E0000
    lw      t8, 0x0084($sp)
    sll     t6, v0,  2
    addu    t7, t7, t6
    lw      t7, %lo(var_808E34BC)(t7)
    sw      t7, 0x0070($sp)
    lw      s0, 0x0000(t8)             # 00000000
    lw      t9, 0x02AC(s1)             # 000002AC
    beql    t9, $zero, lbl_808E1C58
    or      a0, s1, $zero              # a0 = 00000000
    lw      v0, 0x02C4(s0)             # 000002C4
    addiu   v0, v0, 0xFFC0             # v0 = FFFFFFC0
    sw      v0, 0x02C4(s0)             # 000002C4
    jal     func_800AA6EC
    sw      v0, 0x0030($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lh      t5, 0x1474(v0)             # 80121474
    lh      t7, 0x1478(v0)             # 80121478
    lh      t6, 0x1476(v0)             # 80121476
    mtc1    t5, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_808E3700)     # $at = 808E0000
    lwc1    $f18, %lo(var_808E3700)($at)
    cvt.s.w $f6, $f4
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t6, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_808E3704)     # $at = 808E0000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f16, $f10
    add.s   $f12, $f6, $f8
    lwc1    $f8, %lo(var_808E3704)($at)
    cvt.s.w $f6, $f4
    add.s   $f14, $f16, $f18
    add.s   $f10, $f6, $f8
    mfc1    a2, $f10
    jal     func_800AA7F4
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lh      a2, 0x0294(s1)             # 00000294
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      a0, 0x1480(v0)             # 80121480
    jal     func_800AAF00
    lh      a1, 0x1482(v0)             # 80121482
    addiu   v0, s1, 0x0288             # v0 = 00000288
    lwc1    $f12, 0x0000(v0)           # 00000288
    lwc1    $f14, 0x0004(v0)           # 0000028C
    lw      a2, 0x0008(v0)             # 00000290
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    lw      a0, 0x0030($sp)
    jal     func_800AA724
    nop
    jal     func_8007E2C0
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    ori     t9, t9, 0x0080             # t9 = FA000080
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    addiu   a2, s1, 0x0268             # a2 = 00000268
    sw      t9, 0x0000(v0)             # 00000000
    lw      t5, 0x000C(a2)             # 00000274
    lw      t8, 0x0008(a2)             # 00000270
    lui     $at, 0xFFFF                # $at = FFFF0000
    andi    t6, t5, 0x00FF             # t6 = 00000000
    andi    t9, t8, 0x00FF             # t9 = 00000008
    sll     t5, t9,  8
    or      t7, t6, $at                # t7 = FFFF0000
    or      t6, t7, t5                 # t6 = FFFF0000
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    lui     $at, 0xFF00                # $at = FF000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t7, 0x027C(s1)             # 0000027C
    andi    t5, t7, 0x00FF             # t5 = 00000000
    sll     t6, t5, 16
    or      t8, t6, $at                # t8 = FFFF0000
    ori     t9, t8, 0x0080             # t9 = FFFF0080
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v0)             # 00000000
    lw      t6, 0x0030($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0x3390             # t7 = 06013390
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
lbl_808E1C58:
    lw      a1, 0x0084($sp)
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t5, 0x0084($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t5)             # 00000000
    lui     t4, 0x8000                 # t4 = 80000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0070($sp)
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t8, t8, 0x0C38             # t8 = 80120C38
    sll     t7, t9,  4
    srl     t5, t7, 28
    sll     t6, t5,  2
    addu    t1, t6, t8
    lw      t7, 0x0000(t1)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t2, t9, $at
    addu    t5, t7, t2
    addu    t6, t5, t4
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(t1)             # 00000000
    lui     t8, %hi(func_808E19FC)     # t8 = 808E0000
    addiu   v1, s1, 0x013C             # v1 = 0000013C
    addu    t5, t7, t2
    addu    t6, t5, t4
    sw      t6, 0x0004(v0)             # 00000004
    lw      a1, 0x0004(v1)             # 00000140
    lw      a2, 0x0020(v1)             # 0000015C
    lbu     a3, 0x0002(v1)             # 0000013E
    lui     t9, %hi(func_808E1A24)     # t9 = 808E0000
    addiu   t9, t9, %lo(func_808E1A24) # t9 = 808E1A24
    addiu   t8, t8, %lo(func_808E19FC) # t8 = 808E19FC
    sw      t8, 0x0010($sp)
    sw      t9, 0x0014($sp)
    sw      s1, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x0084($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_808E1D34:
    sw      a1, 0x0004($sp)
    addiu   t6, $zero, 0x0039          # t6 = 00000039
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sw      t6, 0x0250(a0)             # 00000250
    sw      t7, 0x0254(a0)             # 00000254
    jr      $ra
    nop


func_808E1D50:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    addiu   s0, s1, 0x013C             # s0 = 0000013C
    or      a0, s0, $zero              # a0 = 0000013C
    jal     func_8008D6A8
    lui     a1, 0x4110                 # a1 = 41100000
    beq     v0, $zero, lbl_808E1DA0
    or      a0, s0, $zero              # a0 = 0000013C
    addiu   s0, s1, 0x00E4             # s0 = 000000E4
    or      a0, s0, $zero              # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x0858          # a1 = 00000858
    or      a0, s0, $zero              # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x6872          # a1 = 00006872
    beq     $zero, $zero, lbl_808E1E04
    lw      $ra, 0x001C($sp)
lbl_808E1DA0:
    jal     func_8008D6A8
    lui     a1, 0x41D0                 # a1 = 41D00000
    beq     v0, $zero, lbl_808E1DC4
    or      a0, s0, $zero              # a0 = 000000E4
    addiu   a0, s1, 0x00E4             # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x0858          # a1 = 00000858
    beq     $zero, $zero, lbl_808E1E04
    lw      $ra, 0x001C($sp)
lbl_808E1DC4:
    jal     func_8008D6A8
    lui     a1, 0x41E0                 # a1 = 41E00000
    beq     v0, $zero, lbl_808E1DE8
    or      a0, s0, $zero              # a0 = 000000E4
    addiu   a0, s1, 0x00E4             # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x0808          # a1 = 00000808
    beq     $zero, $zero, lbl_808E1E04
    lw      $ra, 0x001C($sp)
lbl_808E1DE8:
    jal     func_8008D6A8
    lui     a1, 0x4208                 # a1 = 42080000
    beq     v0, $zero, lbl_808E1E00
    addiu   a0, s1, 0x00E4             # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x0808          # a1 = 00000808
lbl_808E1E00:
    lw      $ra, 0x001C($sp)
lbl_808E1E04:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_808E1E14:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lhu     t6, 0x1D74(a1)             # 00001D74
    addiu   $at, $zero, 0x05AF         # $at = 000005AF
    bnel    t6, $at, lbl_808E1E3C
    lw      $ra, 0x0014($sp)
    jal     func_800C4C84
    addiu   a0, $zero, 0x0007          # a0 = 00000007
    lw      $ra, 0x0014($sp)
lbl_808E1E3C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E1E48:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lhu     t6, 0x1D74(a1)             # 00001D74
    addiu   $at, $zero, 0x0365         # $at = 00000365
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    bnel    t6, $at, lbl_808E1E7C
    lhu     t7, 0x1D74(a1)             # 00001D74
    jal     func_80064780
    addiu   a1, $zero, 0x6870          # a1 = 00006870
    beq     $zero, $zero, lbl_808E1E98
    lw      $ra, 0x0014($sp)
    lhu     t7, 0x1D74(a1)             # 00001D74
lbl_808E1E7C:
    addiu   $at, $zero, 0x03AB         # $at = 000003AB
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    bnel    t7, $at, lbl_808E1E98
    lw      $ra, 0x0014($sp)
    jal     func_80064780
    addiu   a1, $zero, 0x6871          # a1 = 00006871
    lw      $ra, 0x0014($sp)
lbl_808E1E98:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E1EA4:
    addiu   t6, $zero, 0x0039          # t6 = 00000039
    sw      t6, 0x0250(a0)             # 00000250
    sw      $zero, 0x0254(a0)          # 00000254
    sb      $zero, 0x00C8(a0)          # 000000C8
    jr      $ra
    nop


func_808E1EBC:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5248             # a0 = 06005248
    mtc1    v0, $f4                    # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f6, $f4
    jal     func_808DE148
    swc1    $f6, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jal     func_808DDDBC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x0030($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x5248             # a1 = 06005248
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    addiu   t6, $zero, 0x003A          # t6 = 0000003A
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x0250(s0)             # 00000250
    sw      t7, 0x0254(s0)             # 00000254
    sb      t8, 0x00C8(s0)             # 000000C8
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_808E1F58:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194
    addiu   a0, a0, 0x9520             # a0 = 06019520
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x9520             # a1 = 06019520
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0028($sp)
    addiu   t7, $zero, 0x003B          # t7 = 0000003B
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t7, 0x0250(v0)             # 00000250
    sw      t8, 0x0254(v0)             # 00000254
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808E1FD0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_808DDDBC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE0D0
    lw      a1, 0x0034($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x7408             # a0 = 06017408
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f6, $f4
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x7408             # a1 = 06017408
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sw      t7, 0x0250(s0)             # 00000250
    sw      t8, 0x0254(s0)             # 00000254
    sb      t9, 0x00C8(s0)             # 000000C8
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_808E206C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5248             # a0 = 06005248
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x5248             # a1 = 06005248
    sw      a0, 0x0034($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)
    jal     func_808DDDBC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE0D0
    lw      a1, 0x004C($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x5404             # a0 = 06015404
    mtc1    v0, $f8                    # $f8 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f10, $f8
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x5404             # a1 = 06015404
    lw      a0, 0x0034($sp)
    swc1    $f10, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    addiu   t7, $zero, 0x003D          # t7 = 0000003D
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sw      t7, 0x0250(s0)             # 00000250
    sw      t8, 0x0254(s0)             # 00000254
    sb      t9, 0x00C8(s0)             # 000000C8
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_808E2148:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194
    addiu   a0, a0, 0xA998             # a0 = 0601A998
    mtc1    v0, $f4                    # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f6, $f4
    jal     func_808DE148
    swc1    $f6, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jal     func_808DDDBC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x0030($sp)
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0xA998             # a1 = 0601A998
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f8, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    addiu   t7, $zero, 0x003E          # t7 = 0000003E
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sw      t7, 0x0250(s0)             # 00000250
    sw      t8, 0x0254(s0)             # 00000254
    sb      t9, 0x00C8(s0)             # 000000C8
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_808E21E8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194
    addiu   a0, a0, 0xA998             # a0 = 0601A998
    mtc1    v0, $f4                    # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f6, $f4
    jal     func_808DE148
    swc1    $f6, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jal     func_808DDDBC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x0030($sp)
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0xA998             # a1 = 0601A998
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f8, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    addiu   t7, $zero, 0x003F          # t7 = 0000003F
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sw      t7, 0x0250(s0)             # 00000250
    sw      t8, 0x0254(s0)             # 00000254
    sb      t9, 0x00C8(s0)             # 000000C8
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_808E2288:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194
    addiu   a0, a0, 0xA650             # a0 = 0601A650
    mtc1    v0, $f4                    # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f6, $f4
    jal     func_808DE148
    swc1    $f6, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jal     func_808DDDBC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x0030($sp)
    lui     a1, 0x0602                 # a1 = 06020000
    mfc1    a3, $f0
    addiu   a1, a1, 0xA650             # a1 = 0601A650
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x0250(s0)             # 00000250
    sw      t7, 0x0254(s0)             # 00000254
    sb      t8, 0x00C8(s0)             # 000000C8
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_808E2324:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5248             # a0 = 06005248
    mtc1    v0, $f4                    # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f6, $f4
    jal     func_808DE148
    swc1    $f6, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jal     func_808DDDBC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x0030($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x5248             # a1 = 06005248
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    addiu   t6, $zero, 0x0041          # t6 = 00000041
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x0250(s0)             # 00000250
    sw      t7, 0x0254(s0)             # 00000254
    sb      t8, 0x00C8(s0)             # 000000C8
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_808E23C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0041          # a1 = 00000041
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0042          # a2 = 00000042
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E23E4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0042          # a1 = 00000042
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0043          # a2 = 00000043
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2408:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0043          # a1 = 00000043
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0044          # a2 = 00000044
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E242C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0044          # a1 = 00000044
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0045          # a2 = 00000045
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2450:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0045          # a1 = 00000045
    addiu   a2, $zero, 0x0046          # a2 = 00000046
    jal     func_808DE008
    addiu   a3, $zero, 0x0044          # a3 = 00000044
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2478:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0046          # a1 = 00000046
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0047          # a2 = 00000047
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E249C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0047          # a1 = 00000047
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0048          # a2 = 00000048
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E24C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0048          # a1 = 00000048
    jal     func_808DDFF0
    addiu   a2, $zero, 0x0049          # a2 = 00000049
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E24E4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0049          # a1 = 00000049
    jal     func_808DDFF0
    addiu   a2, $zero, 0x004A          # a2 = 0000004A
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2508:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f8                   # $f8 = 140.00
    lh      t8, 0x145E(t7)             # 8012145E
    lw      t6, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    mtc1    t8, $f4                    # $f4 = 0.00
    lwc1    $f0, 0x0090(t6)            # 00000090
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    c.le.s  $f10, $f0
    nop
    bc1fl   lbl_808E25A8
    lw      $ra, 0x0024($sp)
    jal     func_8008A194
    addiu   a0, a0, 0x5248             # a0 = 06005248
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0xC140                # $at = C1400000
    mtc1    $at, $f4                   # $f4 = -12.00
    cvt.s.w $f18, $f16
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5248             # a1 = 06005248
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f18, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f4, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0028($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t9, $zero, 0x004B          # t9 = 0000004B
    sw      t9, 0x0250(v0)             # 00000250
    swc1    $f6, 0x0258(v0)            # 00000258
    lw      $ra, 0x0024($sp)
lbl_808E25A8:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808E25B4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x004B          # a1 = 0000004B
    jal     func_808DDFF0
    addiu   a2, $zero, 0x004C          # a2 = 0000004C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E25D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x004C          # a1 = 0000004C
    jal     func_808DDFF0
    addiu   a2, $zero, 0x004D          # a2 = 0000004D
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E25FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x004D          # a1 = 0000004D
    jal     func_808DDFF0
    addiu   a2, $zero, 0x004E          # a2 = 0000004E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2620:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_808DDD00
    sw      a2, 0x002C($sp)
    beq     v0, $zero, lbl_808E2748
    lw      a2, 0x002C($sp)
    lhu     t6, 0x0000(v0)             # 00000000
    sw      t6, 0x0020($sp)
    lw      v1, 0x025C(s0)             # 0000025C
    addiu   t8, t6, 0xFFFF             # t8 = FFFFFFFF
    sltiu   $at, t8, 0x0014
    beql    t6, v1, lbl_808E274C
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $at, $zero, lbl_808E2738
    sll     t8, t8,  2
    lui     $at, %hi(var_808E3708)     # $at = 808E0000
    addu    $at, $at, t8
    lw      t8, %lo(var_808E3708)($at)
    jr      t8
    nop
var_808E2684:
    jal     func_808E1EA4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808E273C
    lw      t9, 0x0020($sp)
var_808E2694:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E1EBC
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E273C
    lw      t9, 0x0020($sp)
var_808E26A8:
    jal     func_808E1F58
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808E273C
    lw      t9, 0x0020($sp)
var_808E26B8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E1FD0
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E273C
    lw      t9, 0x0020($sp)
var_808E26CC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E206C
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E273C
    lw      t9, 0x0020($sp)
var_808E26E0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E2148
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E273C
    lw      t9, 0x0020($sp)
var_808E26F4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E21E8
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E273C
    lw      t9, 0x0020($sp)
var_808E2708:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E2288
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E273C
    lw      t9, 0x0020($sp)
var_808E271C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E2324
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E273C
    lw      t9, 0x0020($sp)
var_808E2730:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_808E2738:
    lw      t9, 0x0020($sp)
lbl_808E273C:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_808E274C
    sw      t9, 0x025C(s0)             # 0000025C
lbl_808E2748:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808E274C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808E2760:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_808E2620
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2780:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_808DDDBC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_808DDCDC
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DDC94
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_808E2620
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E27D0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_808DDCDC
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DDC94
    lw      a1, 0x001C($sp)
    jal     func_808DDB44
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808E2620
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2818:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E1E48
    lw      a1, 0x0024($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E2620
    lw      a1, 0x0024($sp)
    bne     v0, $zero, lbl_808E2870
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE090
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
lbl_808E2870:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E2884:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E1D50
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E2620
    lw      a1, 0x0024($sp)
    bne     v0, $zero, lbl_808E28D8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE034
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
lbl_808E28D8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E28EC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DDC94
    lw      a1, 0x001C($sp)
    jal     func_808DDB44
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808E2620
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E292C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E1E14
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E2620
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E2988:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_808DDCDC
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DDC94
    lw      a1, 0x001C($sp)
    jal     func_808DDB44
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808E2620
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E29D0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_808DFB7C
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_808DDDBC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_808E23C0
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2A14:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFBC4
    lw      a0, 0x0018($sp)
    jal     func_808E23E4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2A40:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFC10
    lw      a0, 0x0018($sp)
    jal     func_808E2408
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2A6C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFC60
    lw      a0, 0x0018($sp)
    jal     func_808E242C
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2A98:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFCA8
    lw      a0, 0x0018($sp)
    jal     func_808E2450
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2AC4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFCF0
    lw      a0, 0x0018($sp)
    jal     func_808E2478
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2AF0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFD3C
    lw      a0, 0x0018($sp)
    jal     func_808E249C
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2B1C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFD88
    lw      a0, 0x0018($sp)
    jal     func_808E24C0
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2B48:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFDE4
    lw      a0, 0x0018($sp)
    jal     func_808E24E4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2B74:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808DEE20
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E2508
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E2BC8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFEBC
    lw      a0, 0x0018($sp)
    jal     func_808E25B4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2BF4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFF28
    lw      a0, 0x0018($sp)
    jal     func_808E25D8
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2C20:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_808DFF90
    lw      a0, 0x0018($sp)
    jal     func_808E25FC
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2C4C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_80020EB4
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2C70:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lw      s0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lui     t5, 0x8000                 # t5 = 80000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    lui     t1, 0x0600                 # t1 = 06000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    addiu   t1, t1, 0x62E0             # t1 = 060062E0
    ori     t8, t8, 0x0020             # t8 = DB060020
    sll     t9, t1,  4
    sw      t8, 0x0000(v0)             # 00000000
    lui     t8, 0x8012                 # t8 = 80120000
    srl     t6, t9, 28
    sll     t7, t6,  2
    addiu   t8, t8, 0x0C38             # t8 = 80120C38
    addu    t2, t7, t8
    lw      t9, 0x0000(t2)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, t1, $at
    addu    t6, t9, t3
    addu    t7, t6, t5
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(t2)             # 00000000
    addu    t7, t6, t3
    addu    t8, t7, t5
    sw      t8, 0x0004(v0)             # 00000004
    lw      v1, 0x0030($sp)
    lw      a1, 0x0140(v1)             # 00000140
    lw      a2, 0x015C(v1)             # 0000015C
    lbu     a3, 0x013E(v1)             # 0000013E
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0034($sp)
    jal     func_80089D8C
    addiu   v1, v1, 0x013C             # v1 = 0000013C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_808E2D50:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0004(v1)             # 8011A5D4
    bne     t6, $zero, lbl_808E2EA0
    nop
    lhu     a2, 0x0EEC(v1)             # 8011B4BC
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x46F0             # v0 = 020046F0
    andi    t7, a2, 0x0020             # t7 = 00000000
    bne     t7, $zero, lbl_808E2DE4
    ori     t8, a2, 0x0020             # t8 = 00000020
    sll     t9, v0,  4
    srl     t0, t9, 28
    sll     t1, t0,  2
    lui     t2, 0x8012                 # t2 = 80120000
    sh      t8, 0x0EEC(v1)             # 8011B4BC
    addu    t2, t2, t1
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t2, t3
    addu    t5, t4, $at
    sw      t5, 0x1D68(a3)             # 00001D68
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x1414(v1)             # 8011B9E4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E0318
    or      a1, a3, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E2EAC
    lw      $ra, 0x001C($sp)
lbl_808E2DE4:
    lhu     v0, 0x0EDE(v1)             # 00000EDE
    andi    a0, v0, 0x0020             # a0 = 00000000
    bne     a0, $zero, lbl_808E2E78
    nop
    lhu     t7, 0x0EDC(v1)             # 00000EDC
    ori     t9, v0, 0x0020             # t9 = 00000020
    addiu   a1, $zero, 0x005F          # a1 = 0000005F
    andi    t8, t7, 0x0100             # t8 = 00000000
    beq     t8, $zero, lbl_808E2E78
    nop
    sh      t9, 0x0EDE(v1)             # 00000EDE
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8006FDCC
    sw      a3, 0x0024($sp)
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x6D20             # v0 = 02006D20
    sll     t0, v0,  4
    srl     t1, t0, 28
    sll     t2, t1,  2
    lui     t3, 0x8012                 # t3 = 80120000
    addu    t3, t3, t2
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, v0, $at
    lw      a3, 0x0024($sp)
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t3, t4
    lui     v1, 0x8012                 # v1 = 80120000
    addu    t6, t5, $at
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x1D68(a3)             # 00001D68
    sb      t7, 0x1414(v1)             # 8011B9E4
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    beq     $zero, $zero, lbl_808E2EA8
    sw      t8, 0x0250(s0)             # 00000250
lbl_808E2E78:
    bne     a0, $zero, lbl_808E2E90
    nop
    jal     func_808DE15C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808E2EAC
    lw      $ra, 0x001C($sp)
lbl_808E2E90:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808E2EAC
    lw      $ra, 0x001C($sp)
lbl_808E2EA0:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_808E2EA8:
    lw      $ra, 0x001C($sp)
lbl_808E2EAC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E2EBC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_808E2EEC
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sw      t6, 0x0250(a0)             # 00000250
    beq     $zero, $zero, lbl_808E2F38
    lw      $ra, 0x0014($sp)
lbl_808E2EEC:
    lw      t7, 0x0004(a0)             # 00000004
    lui     t9, 0x8010                 # t9 = 80100000
    lui     t0, 0x8012                 # t0 = 80120000
    ori     t8, t7, 0x0009             # t8 = 00000009
    sw      t8, 0x0004(a0)             # 00000004
    lbu     t9, -0x70C2(t9)            # 800F8F3E
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    addiu   t1, $zero, 0x7010          # t1 = 00007010
    addu    t0, t0, t9
    lbu     t0, -0x59BC(t0)            # 8011A644
    addiu   t2, $zero, 0x700F          # t2 = 0000700F
    beql    t0, $at, lbl_808E2F2C
    sh      t2, 0x010E(a0)             # 0000010E
    beq     $zero, $zero, lbl_808E2F2C
    sh      t1, 0x010E(a0)             # 0000010E
    sh      t2, 0x010E(a0)             # 0000010E
lbl_808E2F2C:
    jal     func_80022A90
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_808E2F38:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2F44:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a2, 0x0018($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_808E2F80
    lw      a2, 0x0018($sp)
    lw      t7, 0x0004(a2)             # 00000004
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    addiu   t6, $zero, 0x004F          # t6 = 0000004F
    and     t8, t7, $at
    sw      t6, 0x0250(a2)             # 00000250
    sw      t8, 0x0004(a2)             # 00000004
lbl_808E2F80:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E2F90:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDA4C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDABC
    lw      a1, 0x0024($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E2EBC
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E2FF8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDC94
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDA4C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDABC
    lw      a1, 0x0024($sp)
    jal     func_808DDCDC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E2F44
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808E3060:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0250(a0)             # 00000250
    bltz    v0, lbl_808E3098
    slti    $at, v0, 0x0051
    beq     $at, $zero, lbl_808E3098
    sll     t6, v0,  2
    lui     v1, %hi(var_808E3514)      # v1 = 808E0000
    addu    v1, v1, t6
    lw      v1, %lo(var_808E3514)(v1)
    beql    v1, $zero, lbl_808E309C
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_808E3098:
    lw      $ra, 0x0014($sp)
lbl_808E309C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808E30A8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41F0                 # a3 = 41F00000
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x01E6             # t7 = 000001E6
    addiu   t8, $zero, 0x0011          # t8 = 00000011
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x5248             # a3 = 06005248
    addiu   a2, a2, 0x3510             # a2 = 06013510
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DDA00
    or      a1, s1, $zero              # a1 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    addiu   t0, t9, 0xFFFF             # t0 = FFFFFFFF
    sltiu   $at, t0, 0x0009
    beq     $at, $zero, lbl_808E31F4
    sll     t0, t0,  2
    lui     $at, %hi(var_808E3758)     # $at = 808E0000
    addu    $at, $at, t0
    lw      t0, %lo(var_808E3758)($at)
    jr      t0
    nop
var_808E3140:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E0318
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E3204
    lw      $ra, 0x002C($sp)
var_808E3154:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E05B4
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E3204
    lw      $ra, 0x002C($sp)
var_808E3168:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E0B64
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E3204
    lw      $ra, 0x002C($sp)
var_808E317C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E11D0
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E3204
    lw      $ra, 0x002C($sp)
var_808E3190:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E1D34
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E3204
    lw      $ra, 0x002C($sp)
var_808E31A4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE1A8
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E3204
    lw      $ra, 0x002C($sp)
var_808E31B8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE2D4
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E3204
    lw      $ra, 0x002C($sp)
var_808E31CC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE488
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E3204
    lw      $ra, 0x002C($sp)
var_808E31E0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808E2D50
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808E3204
    lw      $ra, 0x002C($sp)
lbl_808E31F4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808DE5A8
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
lbl_808E3204:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_808E3214:
    sw      a0, 0x0000($sp)
    lw      a0, 0x0014($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    lw      t6, 0x02FC(a0)             # 000002FC
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beql    t6, $zero, lbl_808E3294
    or      v0, $zero, $zero           # v0 = 00000000
    bne     a1, $at, lbl_808E3264
    lw      v0, 0x0010($sp)
    lh      t7, 0x0000(v0)             # 00000000
    lh      t8, 0x0314(a0)             # 00000314
    lh      t0, 0x0002(v0)             # 00000002
    addu    t9, t7, t8
    sh      t9, 0x0000(v0)             # 00000000
    lh      t1, 0x0312(a0)             # 00000312
    subu    t2, t0, t1
    sh      t2, 0x0002(v0)             # 00000002
    beq     $zero, $zero, lbl_808E3294
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808E3264:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     a1, $at, lbl_808E3290
    lw      v0, 0x0010($sp)
    lh      t3, 0x0000(v0)             # 00000000
    lh      t4, 0x030E(a0)             # 0000030E
    lh      t6, 0x0004(v0)             # 00000004
    addu    t5, t3, t4
    sh      t5, 0x0000(v0)             # 00000000
    lh      t7, 0x030C(a0)             # 0000030C
    addu    t8, t6, t7
    sh      t8, 0x0004(v0)             # 00000004
lbl_808E3290:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808E3294:
    jr      $ra
    nop


func_808E329C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     a1, $at, lbl_808E3318
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    lui     t6, %hi(var_808E3658)      # t6 = 808E0000
    addiu   t6, t6, %lo(var_808E3658)  # t6 = 808E3658
    lw      t8, 0x0000(t6)             # 808E3658
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFE4
    sw      t8, 0x0000(a0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 808E365C
    sw      t7, 0x0004(a0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 808E3660
    jal     func_800AB958
    sw      t8, 0x0008(a0)             # FFFFFFF8
    lw      v0, 0x0048($sp)
    lwc1    $f4, 0x001C($sp)
    lh      t9, 0x0030(v0)             # 00000030
    swc1    $f4, 0x0038(v0)            # 00000038
    lwc1    $f6, 0x0020($sp)
    lh      t0, 0x0032(v0)             # 00000032
    lh      t1, 0x0034(v0)             # 00000034
    swc1    $f6, 0x003C(v0)            # 0000003C
    lwc1    $f8, 0x0024($sp)
    sh      t9, 0x0044(v0)             # 00000044
    sh      t0, 0x0046(v0)             # 00000046
    sh      t1, 0x0048(v0)             # 00000048
    swc1    $f8, 0x0040(v0)            # 00000040
lbl_808E3318:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_808E3328:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_808E3338:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    lh      v0, 0x024C(a0)             # 0000024C
    lui     t7, %hi(var_808E34BC)      # t7 = 808E0000
    or      a2, $zero, $zero           # a2 = 00000000
    sll     t6, v0,  2
    addu    t7, t7, t6
    lw      t7, %lo(var_808E34BC)(t7)
    sw      t7, 0x0030($sp)
    lw      s0, 0x0000(a1)             # 00000000
    sw      a0, 0x0040($sp)
    jal     func_80022438
    sw      a1, 0x0044($sp)
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lui     t4, 0x8000                 # t4 = 80000000
    lw      t5, 0x0040($sp)
    lw      $ra, 0x0030($sp)
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sll     t6, $ra,  4
    sw      t9, 0x0000(v0)             # 00000000
    lui     t9, 0x8012                 # t9 = 80120000
    srl     t7, t6, 28
    sll     t8, t7,  2
    addiu   t9, t9, 0x0C38             # t9 = 80120C38
    addu    t1, t8, t9
    lw      t6, 0x0000(t1)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t2, $ra, $at
    addu    t7, t6, t2
    addu    t8, t7, t4
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(t1)             # 00000000
    lui     t6, %hi(func_808E3214)     # t6 = 808E0000
    addiu   v1, t5, 0x013C             # v1 = 0000013C
    addu    t8, t7, t2
    addu    t9, t8, t4
    sw      t9, 0x0004(v0)             # 00000004
    lw      a1, 0x0004(v1)             # 00000140
    lw      a2, 0x0020(v1)             # 0000015C
    lbu     a3, 0x0002(v1)             # 0000013E
    lui     t7, %hi(func_808E329C)     # t7 = 808E0000
    addiu   t7, t7, %lo(func_808E329C) # t7 = 808E329C
    addiu   t6, t6, %lo(func_808E3214) # t6 = 808E3214
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t5, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x0044($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_808E3440:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0254(a0)             # 00000254
    bltz    v0, lbl_808E3478
    slti    $at, v0, 0x0006
    beq     $at, $zero, lbl_808E3478
    sll     t6, v0,  2
    lui     v1, %hi(var_808E3664)      # v1 = 808E0000
    addu    v1, v1, t6
    lw      v1, %lo(var_808E3664)(v1)
    beql    v1, $zero, lbl_808E347C
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_808E3478:
    lw      $ra, 0x0014($sp)
lbl_808E347C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop

.section .data

var_808E3490: .word \
0x00000009, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00190050, 0x00000000, 0x00000000
var_808E34BC: .word 0x060056E0, 0x06005AE0, 0x06005EE0
var_808E34C8: .word 0xC418C000, 0x44360000, 0xC0000000
var_808E34D4: .word 0xC485A000, 0x42180000, 0x00000000
var_808E34E0: .word 0x00000000
var_808E34E4: .word 0x00000000, 0x00000000, 0x00000000
var_808E34F0: .word 0x00000000
var_808E34F4: .word 0x00000001
var_808E34F8: .word 0x00000001
var_808E34FC: .word 0x00000000, 0x00000000, 0x00000000
var_808E3508: .word 0x00000000, 0x00000000, 0x00000000
var_808E3514: .word func_808DF960
.word func_808DF9A0
.word func_808DF9E0
.word func_808DFA5C
.word func_808DFABC
.word func_808DFB1C
.word func_808DFB7C
.word func_808DFBC4
.word func_808DFC10
.word func_808DFC60
.word func_808DFCA8
.word func_808DFCF0
.word func_808DFD3C
.word func_808DFD88
.word func_808DFDE4
.word func_808DFE50
.word func_808DFEBC
.word func_808DFF28
.word func_808DFF90
.word func_808DFFEC
.word func_808E0478
.word func_808E049C
.word func_808E04BC
.word func_808E0504
.word func_808E0564
.word func_808E0574
.word func_808E0584
.word func_808E0594
.word func_808E05A4
.word func_808E0880
.word func_808E08A0
.word func_808E08CC
.word func_808E0910
.word func_808E093C
.word func_808E0968
.word func_808E0994
.word func_808E09C0
.word func_808E09EC
.word func_808E0A18
.word func_808E0A44
.word func_808E0A70
.word func_808E0AD0
.word func_808E0AFC
.word func_808E0B28
.word func_808E0B54
.word func_808E0FA8
.word func_808E0FD4
.word func_808E1000
.word func_808E1058
.word func_808E1084
.word func_808E10E8
.word func_808E114C
.word func_808E11B0
.word func_808E18D0
.word func_808E18F0
.word func_808E1938
.word func_808E19A0
.word func_808E2760
.word func_808E2780
.word func_808E27D0
.word func_808E2818
.word func_808E2884
.word func_808E28EC
.word func_808E292C
.word func_808E2988
.word func_808E29D0
.word func_808E2A14
.word func_808E2A40
.word func_808E2A6C
.word func_808E2A98
.word func_808E2AC4
.word func_808E2AF0
.word func_808E2B1C
.word func_808E2B48
.word func_808E2B74
.word func_808E2BC8
.word func_808E2BF4
.word func_808E2C20
.word func_808E2C4C
.word func_808E2F90
.word func_808E2FF8
var_808E3658: .word 0x00000000, 0x41200000, 0x00000000
var_808E3664: .word func_808E3328
.word func_808E3338
.word func_808E00A0
.word func_808E01DC
.word func_808E1AA0
.word func_808E2C70
var_808E367C: .word 0x00480400, 0x00000010, 0x008A0000, 0x0000032C
.word func_808E30A8
.word func_808DDA90
.word func_808E3060
.word func_808E3440
.word 0x00000000

.section .rodata

var_808E36A0: .word 0xC50B1000
var_808E36A4: .word 0x43DF8000
var_808E36A8: .word 0x4421C000
var_808E36AC: .word 0x40E1E2B0
var_808E36B0: .word 0x3ECCCCCD
var_808E36B4: .word 0x3F19999A
var_808E36B8: .word 0x3C23D70A
var_808E36BC: .word 0x3F99999A
var_808E36C0: .word 0x3C23D70A
var_808E36C4: .word 0x3F99999A
var_808E36C8: .word 0x3C23D70A
var_808E36CC: .word 0x3F99999A
var_808E36D0: .word 0x3C23D70A
var_808E36D4: .word 0x3C23D70A
var_808E36D8: .word 0x3F99999A
var_808E36DC: .word 0x3C23D70A
var_808E36E0: .word 0x3F99999A
var_808E36E4: .word 0x3C23D70A
var_808E36E8: .word 0x3F99999A
var_808E36EC: .word 0xC49B6000
var_808E36F0: .word 0x45E91000
var_808E36F4: .word 0x3DCCCCCD
var_808E36F8: .word 0x3DCCCCCD
var_808E36FC: .word 0x3DCCCCCD
var_808E3700: .word 0x458B6000
var_808E3704: .word 0x4494C000
var_808E3708: .word var_808E2684
.word lbl_808E2738
.word lbl_808E2738
.word lbl_808E2738
.word lbl_808E2738
.word var_808E2694
.word lbl_808E2738
.word lbl_808E2738
.word var_808E2730
.word lbl_808E2738
.word lbl_808E2738
.word lbl_808E2738
.word lbl_808E2738
.word var_808E26CC
.word var_808E26F4
.word var_808E2708
.word var_808E271C
.word var_808E26B8
.word var_808E26E0
.word var_808E26A8
var_808E3758: .word var_808E3140
.word var_808E3154
.word var_808E3168
.word var_808E317C
.word var_808E3190
.word var_808E31A4
.word var_808E31B8
.word var_808E31CC
.word var_808E31E0
.word 0x00000000

.bss

var_808E4160: .space 0x10
var_808E4170: .space 0x04
var_808E4174: .space 0x04
var_808E4178: .space 0x08
var_808E4180: .space 0x10
