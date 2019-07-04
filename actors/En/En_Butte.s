.section .text
func_80A598A0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lbu     t6, 0x0246(a2)             # 00000246
    bnel    t6, $zero, lbl_80A59900
    sb      $zero, 0x0246(a2)          # 00000246
    sw      a2, 0x0018($sp)
    jal     func_800CDCCC              # Rand.Next() float
    sw      a3, 0x001C($sp)
    lui     $at, %hi(var_80A5AC20)     # $at = 80A60000
    lwc1    $f4, %lo(var_80A5AC20)($at)
    lw      a2, 0x0018($sp)
    lw      a3, 0x001C($sp)
    c.lt.s  $f0, $f4
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    bc1f    lbl_80A598F4
    nop
    beq     $zero, $zero, lbl_80A59900
    sb      t7, 0x0246(a2)             # 00000246
lbl_80A598F4:
    beq     $zero, $zero, lbl_80A59900
    sb      t8, 0x0246(a2)             # 00000246
    sb      $zero, 0x0246(a2)          # 00000246
lbl_80A59900:
    lh      a0, 0x0000(a3)             # 00000000
    lh      a1, 0x0002(a3)             # 00000002
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sh      v0, 0x0244(a2)             # 00000244
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A59924:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_80A5ABBC)     # $at = 80A60000
    swc1    $f4, %lo(var_80A5ABBC)($at)
    lui     $at, %hi(var_80A5ABC0)     # $at = 80A60000
    sh      $zero, %lo(var_80A5ABC0)($at)
    jr      $ra
    nop


func_80A59940:
    lui     v0, %hi(var_80A5ABBC)      # v0 = 80A60000
    lui     v1, %hi(var_80A5ABC0)      # v1 = 80A60000
    addiu   v1, v1, %lo(var_80A5ABC0)  # v1 = 80A5ABC0
    addiu   v0, v0, %lo(var_80A5ABBC)  # v0 = 80A5ABBC
    lui     $at, %hi(var_80A5AC24)     # $at = 80A60000
    lwc1    $f6, %lo(var_80A5AC24)($at)
    lwc1    $f4, 0x0000(v0)            # 80A5ABBC
    lh      t6, 0x0000(v1)             # 80A5ABC0
    add.s   $f8, $f4, $f6
    addiu   t7, t6, 0x0FA0             # t7 = 00000FA0
    sh      t7, 0x0000(v1)             # 80A5ABC0
    swc1    $f8, 0x0000(v0)            # 80A5ABBC
    jr      $ra
    nop


func_80A59978:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x005C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E204
    or      s0, a0, $zero              # s0 = 00000000
    lui     a0, %hi(var_80A5ABC0)      # a0 = 80A60000
    jal     func_800636C4              # sins?
    lh      a0, %lo(var_80A5ABC0)(a0)
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f4                   # $f4 = 250.00
    nop
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    v0, $f8
    nop
    bgezl   v0, lbl_80A599D8
    slti    $at, v0, 0x0100
    beq     $zero, $zero, lbl_80A599EC
    sw      $zero, 0x0048($sp)
    slti    $at, v0, 0x0100
lbl_80A599D8:
    bne     $at, $zero, lbl_80A599E8
    or      v1, v0, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_80A599E8
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
lbl_80A599E8:
    sw      v1, 0x0048($sp)
lbl_80A599EC:
    lw      v0, 0x005C($sp)
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFE8
    lh      t8, 0x07A0(v0)             # 000007A0
    sll     t9, t8,  2
    addu    t1, v0, t9
    jal     func_80049730
    lw      a1, 0x0790(t1)             # 00000790
    lh      t2, 0x0042($sp)
    lui     $at, %hi(var_80A5AC28)     # $at = 80A60000
    lwc1    $f18, %lo(var_80A5AC28)($at)
    mtc1    t2, $f10                   # $f10 = 0.00
    or      a1, $zero, $zero           # a1 = 00000000
    cvt.s.w $f16, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800AAB94
    nop
    lh      t3, 0x0040($sp)
    lui     $at, %hi(var_80A5AC2C)     # $at = 80A60000
    lwc1    $f8, %lo(var_80A5AC2C)($at)
    mtc1    t3, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AA9E0
    nop
    lh      t4, 0x0044($sp)
    lui     $at, %hi(var_80A5AC30)     # $at = 80A60000
    lwc1    $f18, %lo(var_80A5AC30)($at)
    mtc1    t4, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800AAD4C
    nop
    lui     a0, %hi(var_80A5ABC4)      # a0 = 80A60000
    addiu   a0, a0, %lo(var_80A5ABC4)  # a0 = 80A5ABC4
    jal     func_800AB958
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFF4
    lw      v0, 0x0058($sp)
    lwc1    $f18, 0x0054($sp)
    lwc1    $f16, 0x004C($sp)
    lwc1    $f10, 0x0040(v0)           # 00000040
    lwc1    $f8, 0x0038(v0)            # 00000038
    lwc1    $f6, 0x003C(v0)            # 0000003C
    add.s   $f18, $f10, $f18
    lwc1    $f10, 0x0050($sp)
    addiu   a3, $sp, 0x0040            # a3 = FFFFFFE8
    add.s   $f12, $f8, $f16
    mfc1    a2, $f18
    jal     func_800AB510
    add.s   $f14, $f6, $f10
    lui     $at, %hi(var_80A5ABBC)     # $at = 80A60000
    lwc1    $f12, %lo(var_80A5ABBC)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x005C($sp)
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0034($sp)
    lw      t0, 0x0034($sp)
    lui     t5, 0xFB00                 # t5 = FB000000
    lui     a3, 0x0401                 # a3 = 04010000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    ori     t9, t9, 0x8080             # t9 = FA008080
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t1, 0x0048($sp)
    lui     $at, 0xC8C8                # $at = C8C80000
    ori     $at, $at, 0xB400           # $at = C8C8B400
    andi    t2, t1, 0x00FF             # t2 = 00000000
    or      t3, t2, $at                # t3 = C8C8B400
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xC8C8                 # t6 = C8C80000
    ori     t6, t6, 0xD2FF             # t6 = C8C8D2FF
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   a3, a3, 0x05D0             # a3 = 040105D0
    sll     t9, a3,  4
    srl     t1, t9, 28
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sll     t2, t1,  2
    lui     t8, 0xDE00                 # t8 = DE000000
    lui     t3, 0x8012                 # t3 = 80120000
    addu    t3, t3, t2
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t8, 0x0000(v1)             # 00000000
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, a3, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t3, t4
    addu    t6, t5, $at
    sw      t6, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_80A59BB4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $at, lbl_80A59BE0
    lui     a1, %hi(var_80A5ABD0)      # a1 = 80A60000
    sh      $zero, 0x001C(s0)          # 0000001C
lbl_80A59BE0:
    jal     func_80063F7C
    addiu   a1, a1, %lo(var_80A5ABD0)  # a1 = 80A5ABD0
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a1, s0, 0x019C             # a1 = 0000019C
    andi    t8, t7, 0x0001             # t8 = 00000000
    bne     t8, $at, lbl_80A59C10
    lui     a2, 0x0500                 # a2 = 05000000
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    nop
    swc1    $f4, 0x00F8(s0)            # 000000F8
lbl_80A59C10:
    lui     a3, 0x0500                 # a3 = 05000000
    addiu   t9, s0, 0x01E0             # t9 = 000001E0
    addiu   t0, s0, 0x0210             # t0 = 00000210
    addiu   t1, $zero, 0x0008          # t1 = 00000008
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    addiu   a3, a3, 0x2470             # a3 = 05002470
    lw      a0, 0x0044($sp)
    addiu   a2, a2, 0x36F0             # a2 = 050036F0
    jal     func_8008C684
    sw      a1, 0x0038($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x0034($sp)
    jal     func_8004A484
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_80A5AB14)      # a3 = 80A60000
    addiu   t2, s0, 0x015C             # t2 = 0000015C
    lw      a1, 0x0034($sp)
    sw      t2, 0x0010($sp)
    addiu   a3, a3, %lo(var_80A5AB14)  # a3 = 80A5AB14
    lw      a0, 0x0044($sp)
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    sb      $zero, 0x00AE(s0)          # 000000AE
    lui     $at, %hi(var_80A5AC34)     # $at = 80A60000
    lwc1    $f6, %lo(var_80A5AC34)($at)
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    t4, $f10
    jal     func_800CDCCC              # Rand.Next() float
    sh      t4, 0x024C(s0)             # 0000024C
    lui     $at, %hi(var_80A5AC38)     # $at = 80A60000
    lwc1    $f16, %lo(var_80A5AC38)($at)
    mul.s   $f18, $f0, $f16
    trunc.w.s $f4, $f18
    mfc1    t6, $f4
    jal     func_800CDCCC              # Rand.Next() float
    sh      t6, 0x024E(s0)             # 0000024E
    lui     $at, %hi(var_80A5AC3C)     # $at = 80A60000
    lwc1    $f6, %lo(var_80A5AC3C)($at)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     a1, 0x0500                 # a1 = 05000000
    mul.s   $f8, $f0, $f6
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    mfc1    a3, $f2
    addiu   a1, a1, 0x2470             # a1 = 05002470
    lui     a2, 0x3F80                 # a2 = 3F800000
    trunc.w.s $f10, $f8
    mfc1    t8, $f10
    nop
    sh      t8, 0x0250(s0)             # 00000250
    sw      t9, 0x0014($sp)
    lw      a0, 0x0038($sp)
    swc1    $f2, 0x0018($sp)
    jal     func_8008D17C
    swc1    $f2, 0x0010($sp)
    jal     func_80A59F80
    or      a0, s0, $zero              # a0 = 00000000
    lh      t0, 0x00B4(s0)             # 000000B4
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x0248(s0)             # 00000248
    addiu   t1, t0, 0xDCE0             # t1 = FFFFDCE0
    sh      t1, 0x00B4(s0)             # 000000B4
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80A59D28:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8004A550
    addiu   a1, a3, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A59D54:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lh      a0, 0x024E(a1)             # 0000024E
    jal     func_800636C4              # sins?
    sw      a1, 0x0020($sp)
    lw      a1, 0x0020($sp)
    swc1    $f0, 0x0018($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x024C(a1)             # 0000024C
    lw      a1, 0x0020($sp)
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f12                  # $f12 = -2000.00
    lbu     v0, 0x0246(a1)             # 00000246
    lui     $at, %hi(var_80A5ABEC)     # $at = 80A60000
    lwc1    $f4, 0x0018($sp)
    sll     v0, v0,  2
    addu    $at, $at, v0
    lwc1    $f6, %lo(var_80A5ABEC)($at)
    lui     $at, %hi(var_80A5ABE0)     # $at = 80A60000
    addu    $at, $at, v0
    mul.s   $f8, $f4, $f6
    lwc1    $f10, %lo(var_80A5ABE0)($at)
    lwc1    $f4, 0x00BC(a1)            # 000000BC
    lui     $at, 0x44FA                # $at = 44FA0000
    mul.s   $f16, $f0, $f10
    add.s   $f18, $f16, $f8
    add.s   $f6, $f4, $f18
    swc1    $f6, 0x00BC(a1)            # 000000BC
    lwc1    $f2, 0x00BC(a1)            # 000000BC
    c.lt.s  $f2, $f12
    nop
    bc1fl   lbl_80A59DE8
    mtc1    $at, $f12                  # $f12 = 2000.00
    beq     $zero, $zero, lbl_80A59E0C
    swc1    $f12, 0x00BC(a1)           # 000000BC
    mtc1    $at, $f12                  # $f12 = 2000.00
lbl_80A59DE8:
    nop
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_80A59E08
    mov.s   $f0, $f2
    beq     $zero, $zero, lbl_80A59E08
    mov.s   $f0, $f12
    mov.s   $f0, $f2
lbl_80A59E08:
    swc1    $f0, 0x00BC(a1)            # 000000BC
lbl_80A59E0C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A59E1C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lh      a0, 0x024E(a1)             # 0000024E
    jal     func_800636C4              # sins?
    sw      a1, 0x0020($sp)
    lw      a1, 0x0020($sp)
    swc1    $f0, 0x0018($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x024C(a1)             # 0000024C
    lw      a1, 0x0020($sp)
    lui     $at, 0xC3FA                # $at = C3FA0000
    mtc1    $at, $f12                  # $f12 = -500.00
    lbu     v0, 0x0246(a1)             # 00000246
    lui     $at, %hi(var_80A5AC04)     # $at = 80A60000
    lwc1    $f4, 0x0018($sp)
    sll     v0, v0,  2
    addu    $at, $at, v0
    lwc1    $f6, %lo(var_80A5AC04)($at)
    lui     $at, %hi(var_80A5ABF8)     # $at = 80A60000
    addu    $at, $at, v0
    mul.s   $f8, $f4, $f6
    lwc1    $f10, %lo(var_80A5ABF8)($at)
    lwc1    $f4, 0x00BC(a1)            # 000000BC
    lui     $at, 0x43FA                # $at = 43FA0000
    mul.s   $f16, $f0, $f10
    add.s   $f18, $f16, $f8
    add.s   $f6, $f4, $f18
    swc1    $f6, 0x00BC(a1)            # 000000BC
    lwc1    $f2, 0x00BC(a1)            # 000000BC
    c.lt.s  $f2, $f12
    nop
    bc1fl   lbl_80A59EB0
    mtc1    $at, $f12                  # $f12 = 500.00
    beq     $zero, $zero, lbl_80A59ED4
    swc1    $f12, 0x00BC(a1)           # 000000BC
    mtc1    $at, $f12                  # $f12 = 500.00
lbl_80A59EB0:
    nop
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_80A59ED0
    mov.s   $f0, $f2
    beq     $zero, $zero, lbl_80A59ED0
    mov.s   $f0, $f12
    mov.s   $f0, $f2
lbl_80A59ED0:
    swc1    $f0, 0x00BC(a1)            # 000000BC
lbl_80A59ED4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A59EE4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      a1, 0x0032(a3)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      t6, 0x00B6(a3)             # 000000B6
    addu    a1, a1, $at
    sll     a1, a1, 16
    sra     a1, a1, 16
    subu    v0, a1, t6
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80A59F24
    addiu   a0, a3, 0x00B6             # a0 = 000000B6
    beq     $zero, $zero, lbl_80A59F28
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A59F24:
    subu    v1, $zero, v0
lbl_80A59F28:
    sra     a2, v1,  3
    sll     a2, a2, 16
    sra     a2, a2, 16
    jal     func_80063704
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lh      t7, 0x0250(a3)             # 00000250
    mtc1    t7, $f4                    # $f4 = 0.00
    jal     func_800CF470
    cvt.s.w $f12, $f4
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f6                   # $f6 = 600.00
    lw      a3, 0x0018($sp)
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    t1, $f10
    nop
    addiu   t2, t1, 0xDCE0             # t2 = FFFFDCE0
    sh      t2, 0x00B4(a3)             # 000000B4
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A59F80:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x0246(a0)             # 00000246
    lui     t8, %hi(var_80A5AB44)      # t8 = 80A60000
    addiu   t8, t8, %lo(var_80A5AB44)  # t8 = 80A5AB44
    sll     t7, t6,  2
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    a1, t7, t8
    jal     func_80A598A0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t9, %hi(func_80A59FCC)     # t9 = 80A60000
    addiu   t9, t9, %lo(func_80A59FCC) # t9 = 80A59FCC
    sw      t9, 0x0240(a0)             # 00000240
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A59FCC:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lbu     t6, 0x0246(s0)             # 00000246
    lui     t8, %hi(var_80A5AB44)      # t8 = 80A60000
    addiu   t8, t8, %lo(var_80A5AB44)  # t8 = 80A5AB44
    sll     t7, t6,  2
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    t9, t7, t8
    sw      t9, 0x004C($sp)
    lw      t0, 0x1C44(a1)             # 00001C44
    sw      t0, 0x0044($sp)
    lw      a3, 0x0010(s0)             # 00000010
    lw      a2, 0x0008(s0)             # 00000008
    lwc1    $f14, 0x002C(s0)           # 0000002C
    jal     func_800A5470
    lwc1    $f12, 0x0024(s0)           # 00000024
    swc1    $f0, 0x0040($sp)
    jal     func_80A59D54
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x004C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lw      a1, 0x0004(v0)             # 00000004
    lw      a2, 0x0008(v0)             # 00000008
    lw      a3, 0x000C(v0)             # 0000000C
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lbu     t1, 0x0247(s0)             # 00000247
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mtc1    $zero, $f6                 # $f6 = 0.00
    bne     a3, t1, lbl_80A5A068
    lui     $at, %hi(var_80A5AC44)     # $at = 80A60000
    lui     $at, %hi(var_80A5AC40)     # $at = 80A60000
    lwc1    $f0, %lo(var_80A5AC40)($at)
    beq     $zero, $zero, lbl_80A5A070
    addiu   a2, $zero, 0x03E8          # a2 = 000003E8
lbl_80A5A068:
    lwc1    $f0, %lo(var_80A5AC44)($at)
    addiu   a2, $zero, 0x0258          # a2 = 00000258
lbl_80A5A070:
    swc1    $f6, 0x0038($sp)
    lbu     t2, 0x0246(s0)             # 00000246
    lwc1    $f8, 0x000C(s0)            # 0000000C
    beq     t2, $zero, lbl_80A5A0E0
    swc1    $f8, 0x0254(s0)            # 00000254
    lwc1    $f10, 0x0040($sp)
    addiu   a0, s0, 0x0024             # a0 = 00000024
    c.lt.s  $f0, $f10
    nop
    bc1t    lbl_80A5A0AC
    nop
    lh      t3, 0x0244(s0)             # 00000244
    slti    $at, t3, 0x0004
    beql    $at, $zero, lbl_80A5A0E4
    lbu     v1, 0x0247(s0)             # 00000247
lbl_80A5A0AC:
    jal     func_80063F00
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lw      t4, 0x004C($sp)
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    jal     func_80063704
    lh      a2, 0x0010(t4)             # 00000010
    bne     v0, $zero, lbl_80A5A1D4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    beq     $zero, $zero, lbl_80A5A1D4
    swc1    $f18, 0x0038($sp)
lbl_80A5A0E0:
    lbu     v1, 0x0247(s0)             # 00000247
lbl_80A5A0E4:
    bne     v1, $zero, lbl_80A5A134
    nop
    lw      v0, 0x011C(s0)             # 0000011C
    beq     v0, $zero, lbl_80A5A134
    nop
    beq     s0, v0, lbl_80A5A134
    addiu   a0, s0, 0x0024             # a0 = 00000024
    addiu   a1, v0, 0x0024             # a1 = 00000024
    jal     func_80063F00
    sh      a2, 0x0032($sp)
    sll     a1, v0, 16
    lh      a2, 0x0032($sp)
    sra     a1, a1, 16
    jal     func_80063704
    addiu   a0, s0, 0x0032             # a0 = 00000032
    bne     v0, $zero, lbl_80A5A1D4
    lui     $at, %hi(var_80A5AC48)     # $at = 80A60000
    lwc1    $f4, %lo(var_80A5AC48)($at)
    beq     $zero, $zero, lbl_80A5A1D4
    swc1    $f4, 0x0038($sp)
lbl_80A5A134:
    bnel    a3, v1, lbl_80A5A1A4
    lh      t0, 0x024C(s0)             # 0000024C
    jal     func_800CDCCC              # Rand.Next() float
    sh      a2, 0x0032($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, 0x46C0                # $at = 46C00000
    mtc1    $at, $f10                  # $f10 = 24576.00
    sub.s   $f8, $f0, $f6
    lh      t9, 0x008A(s0)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      a2, 0x0032($sp)
    mul.s   $f18, $f8, $f10
    addiu   a0, s0, 0x0032             # a0 = 00000032
    trunc.w.s $f4, $f18
    mfc1    t8, $f4
    nop
    addu    a1, t8, t9
    addu    a1, a1, $at
    sll     a1, a1, 16
    jal     func_80063704
    sra     a1, a1, 16
    bne     v0, $zero, lbl_80A5A1D4
    lui     $at, %hi(var_80A5AC4C)     # $at = 80A60000
    lwc1    $f6, %lo(var_80A5AC4C)($at)
    beq     $zero, $zero, lbl_80A5A1D4
    swc1    $f6, 0x0038($sp)
    lh      t0, 0x024C(s0)             # 0000024C
lbl_80A5A1A4:
    mtc1    t0, $f8                    # $f8 = 0.00
    jal     func_800CF470
    cvt.s.w $f12, $f8
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lh      t1, 0x0032(s0)             # 00000032
    mul.s   $f18, $f0, $f10
    trunc.w.s $f4, $f18
    mfc1    t5, $f4
    nop
    addu    t6, t1, t5
    sh      t6, 0x0032(s0)             # 00000032
lbl_80A5A1D4:
    jal     func_80A59EE4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800636C4              # sins?
    lh      a0, 0x0250(s0)             # 00000250
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0028($sp)
    lh      a0, 0x024E(s0)             # 0000024E
    jal     func_800636C4              # sins?
    swc1    $f0, 0x002C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lui     $at, %hi(var_80A5AC50)     # $at = 80A60000
    lwc1    $f16, %lo(var_80A5AC50)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lwc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f2, 0x002C($sp)
    lui     $at, %hi(var_80A5AC54)     # $at = 80A60000
    mul.s   $f10, $f6, $f8
    lwc1    $f6, 0x0028($sp)
    mul.s   $f18, $f2, $f16
    sub.s   $f8, $f14, $f6
    add.s   $f4, $f10, $f18
    lwc1    $f10, %lo(var_80A5AC54)($at)
    lui     $at, %hi(var_80A5AC58)     # $at = 80A60000
    mul.s   $f18, $f8, $f10
    sub.s   $f8, $f14, $f0
    lwc1    $f10, %lo(var_80A5AC58)($at)
    lui     $at, 0x3FC0                # $at = 3FC00000
    add.s   $f6, $f4, $f18
    mul.s   $f4, $f8, $f10
    lwc1    $f8, 0x0038($sp)
    add.s   $f18, $f4, $f6
    add.s   $f12, $f18, $f8
    c.lt.s  $f12, $f16
    nop
    bc1fl   lbl_80A5A278
    mtc1    $at, $f0                   # $f0 = 1.50
    beq     $zero, $zero, lbl_80A5A29C
    swc1    $f16, 0x01B8(s0)           # 000001B8
    mtc1    $at, $f0                   # $f0 = 1.50
lbl_80A5A278:
    nop
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_80A5A298
    mov.s   $f2, $f12
    beq     $zero, $zero, lbl_80A5A298
    mov.s   $f2, $f0
    mov.s   $f2, $f12
lbl_80A5A298:
    swc1    $f2, 0x01B8(s0)            # 000001B8
lbl_80A5A29C:
    jal     func_8008C9C0
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lh      t7, 0x0244(s0)             # 00000244
    or      a0, s0, $zero              # a0 = 00000000
    bgtzl   t7, lbl_80A5A2D8
    lh      t2, 0x001C(s0)             # 0000001C
    lbu     t8, 0x0246(s0)             # 00000246
    lui     t0, %hi(var_80A5AB44)      # t0 = 80A60000
    addiu   t0, t0, %lo(var_80A5AB44)  # t0 = 80A5AB44
    sll     t9, t8,  2
    addu    t9, t9, t8
    sll     t9, t9,  2
    jal     func_80A598A0
    addu    a1, t9, t0
    lh      t2, 0x001C(s0)             # 0000001C
lbl_80A5A2D8:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      v0, 0x0044($sp)
    andi    t3, t2, 0x0001             # t3 = 00000000
    bnel    t3, $at, lbl_80A5A36C
    lwc1    $f18, 0x0090(s0)           # 00000090
    lb      t4, 0x0141(v0)             # 00000141
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    t4, $at, lbl_80A5A36C
    lwc1    $f18, 0x0090(s0)           # 00000090
    lh      t1, 0x024A(s0)             # 0000024A
    bgtzl   t1, lbl_80A5A36C
    lwc1    $f18, 0x0090(s0)           # 00000090
    lwc1    $f12, 0x0024(v0)           # 00000024
    lwc1    $f14, 0x002C(v0)           # 0000002C
    lw      a2, 0x0008(s0)             # 00000008
    jal     func_800A5470
    lw      a3, 0x0010(s0)             # 00000010
    lui     $at, 0x4661                # $at = 46610000
    mtc1    $at, $f10                  # $f10 = 14400.00
    lui     $at, 0x4270                # $at = 42700000
    c.lt.s  $f0, $f10
    nop
    bc1t    lbl_80A5A354
    nop
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 60.00
    nop
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A5A36C
    lwc1    $f18, 0x0090(s0)           # 00000090
lbl_80A5A354:
    jal     func_80A5A3B0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    beq     $zero, $zero, lbl_80A5A39C
    sb      t5, 0x0247(s0)             # 00000247
    lwc1    $f18, 0x0090(s0)           # 00000090
lbl_80A5A36C:
    lui     $at, 0x405E                # $at = 405E0000
    mtc1    $at, $f11                  # $f11 = 3.47
    mtc1    $zero, $f10                # $f10 = 0.00
    cvt.d.s $f8, $f18
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    c.lt.d  $f8, $f10
    nop
    bc1fl   lbl_80A5A39C
    sb      $zero, 0x0247(s0)          # 00000247
    beq     $zero, $zero, lbl_80A5A39C
    sb      t6, 0x0247(s0)             # 00000247
    sb      $zero, 0x0247(s0)          # 00000247
lbl_80A5A39C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_80A5A3B0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x0246(a0)             # 00000246
    lui     t8, %hi(var_80A5AB80)      # t8 = 80A60000
    addiu   t8, t8, %lo(var_80A5AB80)  # t8 = 80A5AB80
    sll     t7, t6,  2
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    a1, t7, t8
    jal     func_80A598A0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t9, %hi(func_80A5A3FC)     # t9 = 80A60000
    addiu   t9, t9, %lo(func_80A5A3FC) # t9 = 80A5A3FC
    sw      t9, 0x0240(a0)             # 00000240
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A5A3FC:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a1, 0x0064($sp)
    lbu     t6, 0x0246(s0)             # 00000246
    lw      t9, 0x0064($sp)
    lui     t8, %hi(var_80A5AB80)      # t8 = 80A60000
    sll     t7, t6,  2
    addu    t7, t7, t6
    sll     t7, t7,  2
    addiu   t8, t8, %lo(var_80A5AB80)  # t8 = 80A5AB80
    addu    v0, t7, t8
    lw      s1, 0x1C44(t9)             # 00001C44
    sw      v0, 0x005C($sp)
    jal     func_80A59E1C
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x005C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lw      a1, 0x0004(v0)             # 00000004
    lw      a2, 0x0008(v0)             # 00000008
    lw      a3, 0x000C(v0)             # 0000000C
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    swc1    $f6, 0x0040($sp)
    lbu     t0, 0x0246(s0)             # 00000246
    beql    t0, $zero, lbl_80A5A58C
    lui     $at, 0x41F0                # $at = 41F00000
    lh      t1, 0x0244(s0)             # 00000244
    slti    $at, t1, 0x000C
    beql    $at, $zero, lbl_80A5A58C
    lui     $at, 0x41F0                # $at = 41F00000
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s1)             # 000000B6
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lwc1    $f18, 0x08A8(s1)           # 000008A8
    mul.s   $f10, $f0, $f8
    add.s   $f4, $f10, $f18
    swc1    $f4, 0x0048($sp)
    lwc1    $f6, 0x08AC(s1)            # 000008AC
    swc1    $f6, 0x004C($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s1)             # 000000B6
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lwc1    $f18, 0x08B0(s1)           # 000008B0
    addiu   a0, s0, 0x0024             # a0 = 00000024
    mul.s   $f10, $f0, $f8
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFE8
    add.s   $f4, $f10, $f18
    jal     func_80063F00
    swc1    $f4, 0x0050($sp)
    jal     func_800CDCCC              # Rand.Next() float
    sh      v0, 0x0038($sp)
    lui     t2, %hi(var_80A5AC10)      # t2 = 80A60000
    lw      t2, %lo(var_80A5AC10)(t2)
    lh      t7, 0x0038($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    mtc1    t2, $f6                    # $f6 = 0.00
    addiu   a2, $zero, 0x07D0          # a2 = 000007D0
    cvt.s.w $f8, $f6
    mul.s   $f10, $f0, $f8
    trunc.w.s $f18, $f10
    mfc1    t6, $f18
    nop
    addu    a1, t6, t7
    sll     a1, a1, 16
    jal     func_80063704
    sra     a1, a1, 16
    beq     v0, $zero, lbl_80A5A580
    lui     $at, %hi(var_80A5AC5C)     # $at = 80A60000
    lw      t8, 0x0064($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, t8
    lw      t9, 0x1DE4(t9)             # 00011DE4
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80A5A58C
    lui     $at, 0x41F0                # $at = 41F00000
    lh      t1, 0x024C(s0)             # 0000024C
    mtc1    t1, $f4                    # $f4 = 0.00
    jal     func_800CF470
    cvt.s.w $f12, $f4
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lh      t2, 0x0032(s0)             # 00000032
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    t6, $f10
    nop
    addu    t7, t2, t6
    beq     $zero, $zero, lbl_80A5A588
    sh      t7, 0x0032(s0)             # 00000032
lbl_80A5A580:
    lwc1    $f18, %lo(var_80A5AC5C)($at)
    swc1    $f18, 0x0040($sp)
lbl_80A5A588:
    lui     $at, 0x41F0                # $at = 41F00000
lbl_80A5A58C:
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f4, 0x0028(s1)            # 00000028
    lwc1    $f0, 0x08AC(s1)            # 000008AC
    add.s   $f2, $f4, $f6
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80A5A5B8
    swc1    $f0, 0x0254(s0)            # 00000254
    beq     $zero, $zero, lbl_80A5A5B8
    swc1    $f2, 0x0254(s0)            # 00000254
    swc1    $f0, 0x0254(s0)            # 00000254
lbl_80A5A5B8:
    jal     func_80A59EE4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800636C4              # sins?
    lh      a0, 0x0250(s0)             # 00000250
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0030($sp)
    lh      a0, 0x024E(s0)             # 0000024E
    jal     func_800636C4              # sins?
    swc1    $f0, 0x0034($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lui     $at, %hi(var_80A5AC60)     # $at = 80A60000
    lwc1    $f16, %lo(var_80A5AC60)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lwc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f2, 0x0034($sp)
    lui     $at, %hi(var_80A5AC64)     # $at = 80A60000
    mul.s   $f18, $f8, $f10
    lwc1    $f8, 0x0030($sp)
    mul.s   $f4, $f2, $f16
    sub.s   $f10, $f14, $f8
    add.s   $f6, $f18, $f4
    lwc1    $f18, %lo(var_80A5AC64)($at)
    lui     $at, %hi(var_80A5AC68)     # $at = 80A60000
    mul.s   $f4, $f10, $f18
    sub.s   $f10, $f14, $f0
    lwc1    $f18, %lo(var_80A5AC68)($at)
    lui     $at, 0x3FC0                # $at = 3FC00000
    add.s   $f8, $f6, $f4
    mul.s   $f6, $f10, $f18
    lwc1    $f10, 0x0040($sp)
    add.s   $f4, $f6, $f8
    add.s   $f12, $f4, $f10
    c.lt.s  $f12, $f16
    nop
    bc1fl   lbl_80A5A65C
    mtc1    $at, $f0                   # $f0 = 1.50
    beq     $zero, $zero, lbl_80A5A680
    swc1    $f16, 0x01B8(s0)           # 000001B8
    mtc1    $at, $f0                   # $f0 = 1.50
lbl_80A5A65C:
    nop
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_80A5A67C
    mov.s   $f2, $f12
    beq     $zero, $zero, lbl_80A5A67C
    mov.s   $f2, $f0
    mov.s   $f2, $f12
lbl_80A5A67C:
    swc1    $f2, 0x01B8(s0)            # 000001B8
lbl_80A5A680:
    jal     func_8008C9C0
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lh      t8, 0x0244(s0)             # 00000244
    or      a0, s0, $zero              # a0 = 00000000
    bgtzl   t8, lbl_80A5A6D0
    lwc1    $f12, 0x0024(s0)           # 00000024
    lbu     t9, 0x0246(s0)             # 00000246
    lui     t1, %hi(var_80A5AB80)      # t1 = 80A60000
    addiu   t1, t1, %lo(var_80A5AB80)  # t1 = 80A5AB80
    sll     t0, t9,  2
    addu    t0, t0, t9
    sll     t0, t0,  2
    jal     func_80A598A0
    addu    a1, t0, t1
    lui     t3, %hi(var_80A5AC10)      # t3 = 80A60000
    lw      t3, %lo(var_80A5AC10)(t3)
    lui     $at, %hi(var_80A5AC10)     # $at = 80A60000
    subu    t4, $zero, t3
    sw      t4, %lo(var_80A5AC10)($at)
    lwc1    $f12, 0x0024(s0)           # 00000024
lbl_80A5A6D0:
    lwc1    $f14, 0x002C(s0)           # 0000002C
    lw      a2, 0x0008(s0)             # 00000008
    jal     func_800A5470
    lw      a3, 0x0010(s0)             # 00000010
    lb      t5, 0x0141(s1)             # 00000141
    addiu   $at, $zero, 0x0006         # $at = 00000006
    mov.s   $f2, $f0
    bne     t5, $at, lbl_80A5A73C
    nop
    lwc1    $f0, 0x0068(s1)            # 00000068
    lui     $at, %hi(var_80A5AC6C)     # $at = 80A60000
    lwc1    $f18, %lo(var_80A5AC6C)($at)
    abs.s   $f0, $f0
    c.lt.s  $f0, $f18
    nop
    bc1f    lbl_80A5A73C
    nop
    lh      t2, 0x024A(s0)             # 0000024A
    lui     $at, 0x47C8                # $at = 47C80000
    bgtz    t2, lbl_80A5A73C
    nop
    mtc1    $at, $f6                   # $f6 = 102400.00
    lui     $at, 0x4761                # $at = 47610000
    c.lt.s  $f2, $f6
    nop
    bc1tl   lbl_80A5A750
    mtc1    $at, $f8                   # $f8 = 57600.00
lbl_80A5A73C:
    jal     func_80A59F80
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A5A7A0
    lw      $ra, 0x0024($sp)
    mtc1    $at, $f8                   # $f8 = 0.00
lbl_80A5A750:
    nop
    c.lt.s  $f8, $f2
    nop
    bc1fl   lbl_80A5A7A0
    lw      $ra, 0x0024($sp)
    lwc1    $f12, 0x08A8(s1)           # 000008A8
    lwc1    $f14, 0x08B0(s1)           # 000008B0
    lw      a2, 0x0024(s0)             # 00000024
    jal     func_800A5470
    lw      a3, 0x002C(s0)             # 0000002C
    lui     $at, 0x4561                # $at = 45610000
    mtc1    $at, $f4                   # $f4 = 3600.00
    nop
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80A5A7A0
    lw      $ra, 0x0024($sp)
    jal     func_80A5A7B0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80A5A7A0:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_80A5A7B0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t7, 0x0004(a0)             # 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    ori     t8, t7, 0x0010             # t8 = 00000010
    sh      t6, 0x0244(a0)             # 00000244
    sw      t8, 0x0004(a0)             # 00000004
    swc1    $f4, 0x01B8(a0)            # 000001B8
    jal     func_80A59924
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t9, %hi(func_80A5A800)     # t9 = 80A60000
    addiu   t9, t9, %lo(func_80A5A800) # t9 = 80A5A800
    sw      t9, 0x0240(a0)             # 00000240
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A5A800:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    jal     func_80A59940
    nop
    lh      v0, 0x0244(s0)             # 00000244
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      a0, 0x003C($sp)
    bne     v0, $at, lbl_80A5A84C
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    jal     func_80058FF8
    addiu   a3, $zero, 0x28E7          # a3 = 000028E7
    beq     $zero, $zero, lbl_80A5A8AC
    lw      $ra, 0x0034($sp)
lbl_80A5A84C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80A5A898
    lw      a1, 0x003C($sp)
    lwc1    $f4, 0x003C(s0)            # 0000003C
    lw      a3, 0x0038(s0)             # 00000038
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0040(s0)            # 00000040
    sw      $zero, 0x0018($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f6, 0x0014($sp)
    lh      t6, 0x00B6(s0)             # 000000B6
    sw      t7, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    jal     func_80025110              # ActorSpawn
    sw      t6, 0x001C($sp)
    beq     $zero, $zero, lbl_80A5A8A8
    sb      $zero, 0x0248(s0)          # 00000248
lbl_80A5A898:
    bgtzl   v0, lbl_80A5A8AC
    lw      $ra, 0x0034($sp)
    jal     func_80A5A8BC
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A5A8A8:
    lw      $ra, 0x0034($sp)
lbl_80A5A8AC:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80A5A8BC:
    lui     t7, %hi(func_80A5A8DC)     # t7 = 80A60000
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t7, t7, %lo(func_80A5A8DC) # t7 = 80A5A8DC
    sh      t6, 0x0244(a0)             # 00000244
    sw      t7, 0x0240(a0)             # 00000240
    sw      $zero, 0x0134(a0)          # 00000134
    jr      $ra
    nop


func_80A5A8DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x0244(a0)             # 00000244
    bgtzl   t6, lbl_80A5A900
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    nop
    lw      $ra, 0x0014($sp)
lbl_80A5A900:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A5A90C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      v0, 0x011C(s0)             # 0000011C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $zero, lbl_80A5A948
    lh      v0, 0x0244(s0)             # 00000244
    lw      t6, 0x0130(v0)             # 00000130
    bnel    t6, $zero, lbl_80A5A948
    lh      v0, 0x0244(s0)             # 00000244
    beql    s0, v0, lbl_80A5A948
    lh      v0, 0x0244(s0)             # 00000244
    sw      $zero, 0x011C(s0)          # 0000011C
    lh      v0, 0x0244(s0)             # 00000244
lbl_80A5A948:
    blez    v0, lbl_80A5A954
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0244(s0)             # 00000244
lbl_80A5A954:
    lh      t8, 0x024C(s0)             # 0000024C
    lh      t0, 0x024E(s0)             # 0000024E
    lh      t2, 0x0250(s0)             # 00000250
    lh      t4, 0x001C(s0)             # 0000001C
    addiu   t9, t8, 0x0222             # t9 = 00000222
    addiu   t1, t0, 0x1000             # t1 = 00001000
    addiu   t3, t2, 0x0600             # t3 = 00000600
    andi    t5, t4, 0x0001             # t5 = 00000000
    sh      t9, 0x024C(s0)             # 0000024C
    sh      t1, 0x024E(s0)             # 0000024E
    bne     t5, $at, lbl_80A5A9B0
    sh      t3, 0x0250(s0)             # 00000250
    lw      t6, 0x1C44(a1)             # 00001C44
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    lb      t7, 0x0833(t6)             # 00000833
    bnel    t7, $zero, lbl_80A5A9B0
    sh      t9, 0x024A(s0)             # 0000024A
    lh      v0, 0x024A(s0)             # 0000024A
    blez    v0, lbl_80A5A9B0
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_80A5A9B0
    sh      t8, 0x024A(s0)             # 0000024A
    sh      t9, 0x024A(s0)             # 0000024A
lbl_80A5A9B0:
    sw      a1, 0x0024($sp)
    lw      t9, 0x0240(s0)             # 00000240
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    lw      t0, 0x0130(s0)             # 00000130
    beql    t0, $zero, lbl_80A5AA3C
    lw      $ra, 0x001C($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x3F19                 # a2 = 3F190000
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    jal     func_8006385C
    lw      a1, 0x0254(s0)             # 00000254
    lui     $at, %hi(var_80A5AC70)     # $at = 80A60000
    lwc1    $f6, %lo(var_80A5AC70)($at)
    lwc1    $f4, 0x008C(s0)            # 0000008C
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    c.lt.s  $f4, $f6
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    bc1fl   lbl_80A5AA20
    lwc1    $f8, 0x00BC(s0)            # 000000BC
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    lwc1    $f8, 0x00BC(s0)            # 000000BC
lbl_80A5AA20:
    lwc1    $f10, 0x0054(s0)           # 00000054
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f16, $f8, $f10
    mfc1    a1, $f16
    jal     func_80020F04
    nop
    lw      $ra, 0x001C($sp)
lbl_80A5AA3C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A5AA4C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lbu     t6, 0x0248(s0)             # 00000248
    lw      t7, 0x002C($sp)
    beql    t6, $zero, lbl_80A5AAA4
    lh      t8, 0x001C(s0)             # 0000001C
    jal     func_8007E298
    lw      a0, 0x0000(t7)             # 00000000
    lw      a1, 0x01A0(s0)             # 000001A0
    lw      a2, 0x01BC(s0)             # 000001BC
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lw      a0, 0x002C($sp)
    jal     func_8008993C
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80050CE4
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lh      t8, 0x001C(s0)             # 0000001C
lbl_80A5AAA4:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    t9, t8, 0x0001             # t9 = 00000000
    bnel    t9, $at, lbl_80A5AAD4
    lw      $ra, 0x0024($sp)
    lw      t1, 0x0240(s0)             # 00000240
    lui     t0, %hi(func_80A5A800)     # t0 = 80A60000
    addiu   t0, t0, %lo(func_80A5A800) # t0 = 80A5A800
    bne     t0, t1, lbl_80A5AAD0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A59978
    lw      a1, 0x002C($sp)
lbl_80A5AAD0:
    lw      $ra, 0x0024($sp)
lbl_80A5AAD4:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80A5AAF0: .word \
0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00000100, 0x00000000, 0x00000000, \
0x00050064
var_80A5AB14: .word 0x0A000019, 0x10000000, 0x00000001
.word var_80A5AAF0
var_80A5AB24: .word 0x001E0700, 0x00000000, 0x00020000, 0x00000258
.word func_80A59BB4
.word func_80A59D28
.word func_80A5A90C
.word func_80A5AA4C
var_80A5AB44: .word \
0x00050023, 0x00000000, 0x3DCCCCCD, 0x3F000000, \
0x00000000, 0x000A002D, 0x3F8CCCCD, 0x3DCCCCCD, \
0x3E800000, 0x03E80000, 0x000A0028, 0x3FC00000, \
0x3DCCCCCD, 0x3E99999A, 0x07D00000
var_80A5AB80: .word \
0x00030003, 0x3F4CCCCD, 0x3DCCCCCD, 0x3E4CCCCD, \
0x00000000, 0x000A0014, 0x40000000, 0x3E99999A, \
0x3F800000, 0x00000000, 0x000A0014, 0x4019999A, \
0x3E99999A, 0x3F800000, 0x00000000
var_80A5ABBC: .word 0x00000000
var_80A5ABC0: .word 0x00000000
var_80A5ABC4: .word 0x00000000, 0x00000000, 0xC0400000
var_80A5ABD0: .word 0xC850000A, 0xB0F402BC, 0xB0F80014, 0x30FC0258
var_80A5ABE0: .word 0x42480000, 0x42A00000, 0x42C80000
var_80A5ABEC: .word 0x41F00000, 0x42200000, 0x42480000
var_80A5ABF8: .word 0x41700000, 0x41A00000, 0x41C80000
var_80A5AC04: .word 0x40F00000, 0x41200000, 0x41480000
var_80A5AC10: .word 0x000005DC, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80A5AC20: .word 0x3F19999A
var_80A5AC24: .word 0x3B449BA6
var_80A5AC28: .word 0x38C90FDB
var_80A5AC2C: .word 0x38C90FDB
var_80A5AC30: .word 0x38C90FDB
var_80A5AC34: .word 0x477FFF00
var_80A5AC38: .word 0x477FFF00
var_80A5AC3C: .word 0x477FFF00
var_80A5AC40: .word 0x461C4000
var_80A5AC44: .word 0x44992000
var_80A5AC48: .word 0x3E99999A
var_80A5AC4C: .word 0x3ECCCCCD
var_80A5AC50: .word 0x3E4CCCCD
var_80A5AC54: .word 0x3E19999A
var_80A5AC58: .word 0x3E99999A
var_80A5AC5C: .word 0x3E99999A
var_80A5AC60: .word 0x3E4CCCCD
var_80A5AC64: .word 0x3E19999A
var_80A5AC68: .word 0x3E99999A
var_80A5AC6C: .word 0x3FE66666
var_80A5AC70: .word 0x459C4000, 0x00000000, 0x00000000, 0x00000000

