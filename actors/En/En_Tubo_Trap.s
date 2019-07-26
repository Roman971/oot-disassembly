.section .text
func_80A77B30:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4000                 # a3 = 40000000
    addiu   a1, s0, 0x0150             # a1 = 00000150
    sw      a1, 0x0020($sp)
    jal     func_8004AB7C
    lw      a0, 0x002C($sp)
    lui     a3, %hi(var_80A786C0)      # a3 = 80A80000
    lw      a1, 0x0020($sp)
    addiu   a3, a3, %lo(var_80A786C0)  # a3 = 80A786C0
    lw      a0, 0x002C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(func_80A7835C)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A7835C) # t6 = 80A7835C
    sw      t6, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A77BB4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0150             # a1 = 00000150
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A77BE0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v1, 0x001C(a3)             # 0000001C
    sra     v0, v1,  6
    andi    v0, v0, 0x03FF             # v0 = 00000000
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80A77C30
    slti    $at, v0, 0x001A
    beq     $at, $zero, lbl_80A77C30
    lw      a0, 0x001C($sp)
    andi    t6, v1, 0x003F             # t6 = 00000000
    sll     t7, t6,  8
    or      a2, v0, t7                 # a2 = 00000000
    sll     a2, a2, 16
    sra     a2, a2, 16
    jal     func_80013678
    addiu   a1, a3, 0x0024             # a1 = 00000024
lbl_80A77C30:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A77C40:
    addiu   $sp, $sp, 0xFF20           # $sp -= 0xE0
    sw      s8, 0x0098($sp)
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x009C($sp)
    sw      s7, 0x0094($sp)
    sw      s6, 0x0090($sp)
    sw      s5, 0x008C($sp)
    sw      s4, 0x0088($sp)
    sw      s3, 0x0084($sp)
    sw      s2, 0x0080($sp)
    sw      s1, 0x007C($sp)
    sw      s0, 0x0078($sp)
    sdc1    $f30, 0x0070($sp)
    sdc1    $f28, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    lui     $at, %hi(var_80A78710)     # $at = 80A80000
    lwc1    $f30, %lo(var_80A78710)($at)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f28                  # $f28 = 2.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f26                  # $f26 = 5.00
    lui     $at, 0x4100                # $at = 41000000
    lui     s6, 0x0501                 # s6 = 05010000
    mtc1    $at, $f24                  # $f24 = 8.00
    addiu   s6, s6, 0x7A60             # s6 = 05017A60
    or      s3, $zero, $zero           # s3 = 00000000
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s1, a0, 0x0024             # s1 = 00000024
    addiu   s7, $zero, 0x000F          # s7 = 0000000F
    addiu   s5, $sp, 0x00BC            # s5 = FFFFFFDC
    addiu   s4, $sp, 0x00C8            # s4 = FFFFFFE8
lbl_80A77CC8:
    sll     a0, s2, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    sll     a0, s2, 16
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    mul.s   $f4, $f20, $f24
    mov.s   $f22, $f0
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00C8($sp)
    mul.s   $f6, $f0, $f26
    lwc1    $f16, 0x00C8($sp)
    mul.s   $f10, $f22, $f24
    nop
    mul.s   $f18, $f16, $f30
    add.s   $f8, $f6, $f28
    swc1    $f10, 0x00D0($sp)
    swc1    $f8, 0x00CC($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00BC($sp)
    mul.s   $f4, $f0, $f26
    lwc1    $f8, 0x00D0($sp)
    lwc1    $f16, 0x00C8($sp)
    mul.s   $f10, $f8, $f30
    add.s   $f6, $f4, $f28
    swc1    $f10, 0x00C4($sp)
    swc1    $f6, 0x00C0($sp)
    lwc1    $f18, 0x0000(s1)           # 00000024
    lwc1    $f6, 0x00CC($sp)
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x00C8($sp)
    lwc1    $f10, 0x0004(s1)           # 00000028
    add.s   $f16, $f6, $f10
    swc1    $f16, 0x00CC($sp)
    lwc1    $f18, 0x0008(s1)           # 0000002C
    add.s   $f4, $f8, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00D0($sp)
    lui     $at, %hi(var_80A78714)     # $at = 80A80000
    lwc1    $f6, %lo(var_80A78714)($at)
    lui     $at, %hi(var_80A78718)     # $at = 80A80000
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_80A77D88
    nop
    b       lbl_80A77DA8
    addiu   s0, $zero, 0x0060          # s0 = 00000060
lbl_80A77D88:
    lwc1    $f10, %lo(var_80A78718)($at)
    addiu   s0, $zero, 0x0020          # s0 = 00000020
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_80A77DA8
    nop
    b       lbl_80A77DA8
    addiu   s0, $zero, 0x0040          # s0 = 00000040
lbl_80A77DA8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4282                # $at = 42820000
    mtc1    $at, $f16                  # $f16 = 65.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f18                  # $f18 = 15.00
    mul.s   $f8, $f0, $f16
    addiu   t6, $zero, 0xFF10          # t6 = FFFFFF10
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x003C          # t2 = 0000003C
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    add.s   $f4, $f8, $f18
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sw      t4, 0x0038($sp)
    sw      t3, 0x0034($sp)
    trunc.w.s $f6, $f4
    sw      t2, 0x0030($sp)
    sw      t1, 0x002C($sp)
    sw      t8, 0x001C($sp)
    mfc1    t0, $f6
    sw      t7, 0x0018($sp)
    sw      t6, 0x0010($sp)
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFE8
    or      a2, s5, $zero              # a2 = FFFFFFDC
    or      a3, s1, $zero              # a3 = 00000024
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0028($sp)
    sw      s6, 0x003C($sp)
    jal     func_8001D998
    sw      t0, 0x0024($sp)
    addiu   s2, s2, 0x4E20             # s2 = 00004E20
    sll     s2, s2, 16
    addiu   s3, s3, 0x0001             # s3 = 00000001
    bne     s3, s7, lbl_80A77CC8
    sra     s2, s2, 16
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000024
    lui     a2, 0x41F0                 # a2 = 41F00000
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    jal     func_80026308
    sw      $zero, 0x0018($sp)
    lw      $ra, 0x009C($sp)
    ldc1    $f20, 0x0048($sp)
    ldc1    $f22, 0x0050($sp)
    ldc1    $f24, 0x0058($sp)
    ldc1    $f26, 0x0060($sp)
    ldc1    $f28, 0x0068($sp)
    ldc1    $f30, 0x0070($sp)
    lw      s0, 0x0078($sp)
    lw      s1, 0x007C($sp)
    lw      s2, 0x0080($sp)
    lw      s3, 0x0084($sp)
    lw      s4, 0x0088($sp)
    lw      s5, 0x008C($sp)
    lw      s6, 0x0090($sp)
    lw      s7, 0x0094($sp)
    lw      s8, 0x0098($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00E0           # $sp += 0xE0


func_80A77EB4:
    addiu   $sp, $sp, 0xFF20           # $sp -= 0xE0
    sw      s5, 0x008C($sp)
    sw      s4, 0x0088($sp)
    sw      s0, 0x0078($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    addiu   s5, $sp, 0x00C8            # s5 = FFFFFFE8
    sw      $ra, 0x009C($sp)
    sw      s8, 0x0098($sp)
    sw      s7, 0x0094($sp)
    sw      s6, 0x0090($sp)
    sw      s3, 0x0084($sp)
    sw      s2, 0x0080($sp)
    sw      s1, 0x007C($sp)
    sdc1    $f30, 0x0070($sp)
    sdc1    $f28, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    addiu   s1, s0, 0x0024             # s1 = 00000024
    lw      t7, 0x0000(s1)             # 00000024
    addiu   t8, $zero, 0x0190          # t8 = 00000190
    or      a0, s4, $zero              # a0 = 00000000
    sw      t7, 0x0000(s5)             # FFFFFFE8
    lw      t6, 0x0004(s1)             # 00000028
    or      a1, s5, $zero              # a1 = FFFFFFE8
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t6, 0x0004(s5)             # FFFFFFEC
    lw      t7, 0x0008(s1)             # 0000002C
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t7, 0x0008(s5)             # FFFFFFF0
    lwc1    $f4, 0x00CC($sp)
    lwc1    $f6, 0x0084(s0)            # 00000084
    sw      t8, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    add.s   $f8, $f4, $f6
    jal     func_8001CF94
    swc1    $f8, 0x00CC($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f30                  # $f30 = 5.00
    lui     $at, %hi(var_80A7871C)     # $at = 80A80000
    lwc1    $f28, %lo(var_80A7871C)($at)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f26                  # $f26 = 2.00
    lui     $at, 0x4100                # $at = 41000000
    lui     s7, 0x0501                 # s7 = 05010000
    mtc1    $at, $f24                  # $f24 = 8.00
    addiu   s7, s7, 0x7A60             # s7 = 05017A60
    or      s3, $zero, $zero           # s3 = 00000000
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s8, $zero, 0x000F          # s8 = 0000000F
    addiu   s6, $sp, 0x00BC            # s6 = FFFFFFDC
lbl_80A77F88:
    sll     a0, s2, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    sll     a0, s2, 16
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    mul.s   $f10, $f20, $f24
    mov.s   $f22, $f0
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00C8($sp)
    mul.s   $f16, $f0, $f30
    lwc1    $f6, 0x00C8($sp)
    mul.s   $f4, $f22, $f24
    nop
    mul.s   $f8, $f6, $f28
    add.s   $f18, $f16, $f26
    swc1    $f4, 0x00D0($sp)
    swc1    $f18, 0x00CC($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00BC($sp)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    lwc1    $f4, 0x00D0($sp)
    lwc1    $f8, 0x00C8($sp)
    mul.s   $f16, $f0, $f10
    add.s   $f18, $f16, $f26
    mul.s   $f6, $f4, $f28
    swc1    $f18, 0x00C0($sp)
    lwc1    $f18, 0x00CC($sp)
    swc1    $f6, 0x00C4($sp)
    lwc1    $f10, 0x0000(s1)           # 00000024
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x00C8($sp)
    lwc1    $f6, 0x0004(s1)            # 00000028
    add.s   $f8, $f18, $f6
    swc1    $f8, 0x00CC($sp)
    lwc1    $f10, 0x0008(s1)           # 0000002C
    add.s   $f16, $f4, $f10
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00D0($sp)
    lui     $at, %hi(var_80A78720)     # $at = 80A80000
    lwc1    $f18, %lo(var_80A78720)($at)
    addiu   s0, $zero, 0x0020          # s0 = 00000020
    c.lt.s  $f0, $f18
    nop
    bc1f    lbl_80A78050
    nop
    b       lbl_80A78050
    addiu   s0, $zero, 0x0040          # s0 = 00000040
lbl_80A78050:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4282                # $at = 42820000
    mtc1    $at, $f6                   # $f6 = 65.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    mul.s   $f8, $f0, $f6
    addiu   t9, $zero, 0xFF4C          # t9 = FFFFFF4C
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0046          # t5 = 00000046
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    add.s   $f10, $f8, $f4
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sw      t7, 0x0038($sp)
    sw      t6, 0x0034($sp)
    trunc.w.s $f16, $f10
    sw      t5, 0x0030($sp)
    sw      t4, 0x002C($sp)
    sw      t1, 0x001C($sp)
    mfc1    t3, $f16
    sw      t0, 0x0018($sp)
    sw      t9, 0x0010($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFE8
    or      a2, s6, $zero              # a2 = FFFFFFDC
    or      a3, s1, $zero              # a3 = 00000024
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0028($sp)
    sw      s7, 0x003C($sp)
    jal     func_8001D998
    sw      t3, 0x0024($sp)
    addiu   s2, s2, 0x4E20             # s2 = 00004E20
    sll     s2, s2, 16
    addiu   s3, s3, 0x0001             # s3 = 00000001
    bne     s3, s8, lbl_80A77F88
    sra     s2, s2, 16
    lw      $ra, 0x009C($sp)
    ldc1    $f20, 0x0048($sp)
    ldc1    $f22, 0x0050($sp)
    ldc1    $f24, 0x0058($sp)
    ldc1    $f26, 0x0060($sp)
    ldc1    $f28, 0x0068($sp)
    ldc1    $f30, 0x0070($sp)
    lw      s0, 0x0078($sp)
    lw      s1, 0x007C($sp)
    lw      s2, 0x0080($sp)
    lw      s3, 0x0084($sp)
    lw      s4, 0x0088($sp)
    lw      s5, 0x008C($sp)
    lw      s6, 0x0090($sp)
    lw      s7, 0x0094($sp)
    lw      s8, 0x0098($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00E0           # $sp += 0xE0


func_80A78134:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lw      a2, 0x1C44(s1)             # 00001C44
    lui     $at, 0x4170                # $at = 41700000
    sw      a2, 0x0028($sp)
    lhu     t6, 0x0088(s0)             # 00000088
    andi    t7, t6, 0x0020             # t7 = 00000000
    beql    t7, $zero, lbl_80A781C0
    lbu     v0, 0x0160(s0)             # 00000160
    mtc1    $at, $f4                   # $f4 = 15.00
    lwc1    $f6, 0x0084(s0)            # 00000084
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A781C0
    lbu     v0, 0x0160(s0)             # 00000160
    jal     func_80A77EB4
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x2817          # a3 = 00002817
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A77BE0
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80A7834C
    lw      $ra, 0x001C($sp)
    lbu     v0, 0x0160(s0)             # 00000160
lbl_80A781C0:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    andi    t8, v0, 0x0004             # t8 = 00000000
    beq     t8, $zero, lbl_80A78224
    andi    t9, v0, 0xFFFB             # t9 = 00000000
    jal     func_80A77C40
    sb      t9, 0x0160(s0)             # 00000160
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sw      a1, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x1808          # a3 = 00001808
    lw      a1, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x2887          # a3 = 00002887
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A77BE0
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80A7834C
    lw      $ra, 0x001C($sp)
lbl_80A78224:
    lbu     v1, 0x0161(s0)             # 00000161
    or      a0, s0, $zero              # a0 = 00000000
    andi    t2, v0, 0x0002             # t2 = 00000000
    andi    t0, v1, 0x0002             # t0 = 00000000
    beq     t0, $zero, lbl_80A78290
    andi    t1, v1, 0xFFFD             # t1 = 00000000
    sb      t1, 0x0161(s0)             # 00000161
    jal     func_80A77C40
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sw      a1, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x2802          # a3 = 00002802
    lw      a1, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x2887          # a3 = 00002887
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A77BE0
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80A7834C
    lw      $ra, 0x001C($sp)
lbl_80A78290:
    beql    t2, $zero, lbl_80A78300
    lhu     v0, 0x0088(s0)             # 00000088
    lw      t4, 0x0154(s0)             # 00000154
    andi    t3, v0, 0xFFFD             # t3 = 00000000
    sb      t3, 0x0160(s0)             # 00000160
    bne     a2, t4, lbl_80A782FC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A77C40
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x2887          # a3 = 00002887
    lw      a1, 0x0028($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    addiu   a3, $zero, 0x083E          # a3 = 0000083E
    jal     func_80058FF8
    addiu   a1, a1, 0x0024             # a1 = 00000024
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A77BE0
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80A7834C
    lw      $ra, 0x001C($sp)
lbl_80A782FC:
    lhu     v0, 0x0088(s0)             # 00000088
lbl_80A78300:
    or      a0, s0, $zero              # a0 = 00000000
    andi    t5, v0, 0x0008             # t5 = 00000000
    bne     t5, $zero, lbl_80A78318
    andi    t6, v0, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_80A7834C
    lw      $ra, 0x001C($sp)
lbl_80A78318:
    jal     func_80A77C40
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x2887          # a3 = 00002887
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A77BE0
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80A7834C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80A7835C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x0090(a2)            # 00000090
    lw      t6, 0x0024($sp)
    c.lt.s  $f4, $f6
    lw      v0, 0x1C44(t6)             # 00001C44
    bc1fl   lbl_80A7845C
    lw      $ra, 0x0014($sp)
    lwc1    $f8, 0x0028(v0)            # 00000028
    lwc1    $f10, 0x0028(a2)           # 00000028
    lw      a0, 0x0024($sp)
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    c.le.s  $f10, $f8
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    bc1fl   lbl_80A7845C
    lw      $ra, 0x0014($sp)
    sw      v0, 0x001C($sp)
    jal     func_800265D4
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lw      v0, 0x001C($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t8, 0x0004(a2)             # 00000004
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f4                   # $f4 = -10.00
    ori     t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0004(a2)             # 00000004
    lw      t0, -0x5A2C(t0)            # 8011A5D4
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    mtc1    t0, $f16                   # $f16 = 0.00
    lwc1    $f10, 0x0028(v0)           # 00000028
    lwc1    $f0, 0x0028(a2)            # 00000028
    cvt.s.w $f18, $f16
    mul.s   $f6, $f18, $f4
    add.s   $f2, $f6, $f8
    add.s   $f16, $f10, $f2
    swc1    $f16, 0x0140(a2)           # 00000140
    lwc1    $f18, 0x0140(a2)           # 00000140
    c.lt.s  $f18, $f0
    nop
    bc1fl   lbl_80A78424
    lw      t2, 0x0024(a2)             # 00000024
    add.s   $f4, $f0, $f2
    swc1    $f4, 0x0140(a2)            # 00000140
    lw      t2, 0x0024(a2)             # 00000024
lbl_80A78424:
    lw      t1, 0x0028(a2)             # 00000028
    or      a0, a2, $zero              # a0 = 00000000
    sw      t2, 0x0144(a2)             # 00000144
    lw      t2, 0x002C(a2)             # 0000002C
    sw      t1, 0x0148(a2)             # 00000148
    addiu   a1, $zero, 0x28C4          # a1 = 000028C4
    sw      t2, 0x014C(a2)             # 0000014C
    jal     func_80022FD0
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lui     t3, %hi(func_80A78468)     # t3 = 80A80000
    addiu   t3, t3, %lo(func_80A78468) # t3 = 80A78468
    sw      t3, 0x013C(a2)             # 0000013C
    lw      $ra, 0x0014($sp)
lbl_80A7845C:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A78468:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x00B6(s0)             # 000000B6
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    addiu   t7, t6, 0x1388             # t7 = 00001388
    sh      t7, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x0140(s0)             # 00000140
    jal     func_80064280
    lui     a3, 0x4040                 # a3 = 40400000
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x0140(s0)            # 00000140
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    sub.s   $f0, $f4, $f6
    lui     t9, %hi(func_80A784F4)     # t9 = 80A80000
    addiu   t9, t9, %lo(func_80A784F4) # t9 = 80A784F4
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80A784E4
    lw      $ra, 0x001C($sp)
    lh      t8, 0x008A(s0)             # 0000008A
    swc1    $f2, 0x0068(s0)            # 00000068
    sw      t9, 0x013C(s0)             # 0000013C
    sh      t8, 0x0032(s0)             # 00000032
    lw      $ra, 0x001C($sp)
lbl_80A784E4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A784F4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lwc1    $f18, 0x0144(s0)           # 00000144
    lwc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f14, 0x0148(s0)           # 00000148
    lwc1    $f12, 0x0028(s0)           # 00000028
    sub.s   $f16, $f18, $f16
    lwc1    $f18, 0x014C(s0)           # 0000014C
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sub.s   $f12, $f14, $f12
    swc1    $f16, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    sub.s   $f10, $f18, $f10
    swc1    $f12, 0x0028($sp)
    addiu   a1, $zero, 0x3037          # a1 = 00003037
    jal     func_80022FD0
    swc1    $f10, 0x0024($sp)
    lwc1    $f2, 0x002C($sp)
    lwc1    $f12, 0x0028($sp)
    lwc1    $f14, 0x0024($sp)
    mul.s   $f4, $f2, $f2
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f16                  # $f16 = 240.00
    mul.s   $f6, $f12, $f12
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    mul.s   $f10, $f14, $f14
    addiu   a0, s0, 0x006C             # a0 = 0000006C
    lui     a1, 0xC040                 # a1 = C0400000
    add.s   $f8, $f4, $f6
    add.s   $f0, $f8, $f10
    sqrt.s  $f0, $f0
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_80A7859C
    lh      t6, 0x00B6(s0)             # 000000B6
    jal     func_80064280
    lui     a3, 0x3F00                 # a3 = 3F000000
    lh      t6, 0x00B6(s0)             # 000000B6
lbl_80A7859C:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, t6, 0x1388             # t7 = 00001388
    sh      t7, 0x00B6(s0)             # 000000B6
    jal     func_80A78134
    lw      a1, 0x0034($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80A785C4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    addiu   t6, $zero, 0x001D          # t6 = 0000001D
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    addiu   a1, s0, 0x0150             # a1 = 00000150
    sw      a1, 0x0028($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    sw      a1, 0x002C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0028($sp)
    lw      a1, 0x002C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0028($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80A78684:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0501                 # a1 = 05010000
    addiu   a1, a1, 0x7870             # a1 = 05017870
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80A786C0: .word \
0x0A110900, 0x20010000, 0x00000000, 0xFFCFFFFF, \
0x00040000, 0xFFCFFFFF, 0x00000000, 0x01010000, \
0x00090017, 0x00000000, 0x00000000
var_80A786EC: .word 0x011D0600, 0x00000010, 0x00030000, 0x0000019C
.word func_80A77B30
.word func_80A77BB4
.word func_80A785C4
.word func_80A78684
.word 0x00000000

.section .rodata

var_80A78710: .word 0x3E6B851F
var_80A78714: .word 0x3E4CCCCD
var_80A78718: .word 0x3F19999A
var_80A7871C: .word 0x3E4CCCCD
var_80A78720: .word 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000

