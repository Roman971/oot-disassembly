.section .text
func_80B62530:
    lh      v1, 0x001C(a0)             # 0000001C
    sra     v1, v1, 11
    andi    v0, v1, 0x001F             # v0 = 00000000
    jr      $ra
    nop


func_80B62544:
    lh      v1, 0x001C(a0)             # 0000001C
    sra     v1, v1,  8
    andi    v0, v1, 0x0007             # v0 = 00000000
    jr      $ra
    nop


func_80B62558:
    lh      v1, 0x001C(a0)             # 0000001C
    andi    v0, v1, 0x00FF             # v0 = 00000000
    jr      $ra
    nop


func_80B62568:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004AB7C
    lw      a1, 0x0020($sp)
    lw      a0, 0x001C($sp)
    lw      a1, 0x0020($sp)
    lw      a2, 0x0018($sp)
    jal     func_8004AC84
    lw      a3, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B625B0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800264C8
    or      a1, a2, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B625DC
    lw      $ra, 0x0014($sp)
    beq     $zero, $zero, lbl_80B625E0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B625DC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B625E0:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B625E8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80B62558
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0010         # $at = 00000010
    beq     v0, $at, lbl_80B62634
    or      a0, s1, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     v0, $at, lbl_80B6265C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0016         # $at = 00000016
    beq     v0, $at, lbl_80B62684
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B62690
    lw      $ra, 0x001C($sp)
lbl_80B62634:
    jal     func_8004ABCC
    addiu   a1, s0, 0x0174             # a1 = 00000174
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, s0, 0x01C0             # a1 = 000001C0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    beq     $zero, $zero, lbl_80B62690
    lw      $ra, 0x001C($sp)
lbl_80B6265C:
    jal     func_8004ABCC
    addiu   a1, s0, 0x0174             # a1 = 00000174
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, s0, 0x01C0             # a1 = 000001C0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    beq     $zero, $zero, lbl_80B62690
    lw      $ra, 0x001C($sp)
lbl_80B62684:
    jal     func_8004ABCC
    addiu   a1, s0, 0x0174             # a1 = 00000174
    lw      $ra, 0x001C($sp)
lbl_80B62690:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B626A0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      a0, 0x0018($sp)
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_80B625E8
    sw      a3, 0x001C($sp)
    lw      a0, 0x001C($sp)
    lw      t6, 0x0018($sp)
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B626E4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    addiu   a3, $zero, 0x28C2          # a3 = 000028C2
    jal     func_80058FF8
    addiu   a1, a1, 0x0024             # a1 = 00000024
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6271C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    mtc1    a2, $f12                   # $f12 = 0.00
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f12, 0x0038($sp)
    lui     $at, %hi(var_80B65B70)     # $at = 80B60000
    lwc1    $f4, %lo(var_80B65B70)($at)
    lwc1    $f12, 0x0038($sp)
    lui     t6, %hi(var_80B65A5C)      # t6 = 80B60000
    lui     t7, %hi(var_80B65A60)      # t7 = 80B60000
    mul.s   $f6, $f12, $f4
    addiu   t7, t7, %lo(var_80B65A60)  # t7 = 80B65A60
    addiu   t6, t6, %lo(var_80B65A5C)  # t6 = 80B65A5C
    lui     a2, %hi(var_80B65A44)      # a2 = 80B60000
    lui     a3, %hi(var_80B65A50)      # a3 = 80B60000
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    addiu   t1, $zero, 0x005A          # t1 = 0000005A
    mul.s   $f8, $f0, $f6
    sw      t1, 0x0020($sp)
    sw      t0, 0x001C($sp)
    addiu   a3, a3, %lo(var_80B65A50)  # a3 = 80B65A50
    addiu   a2, a2, %lo(var_80B65A44)  # a2 = 80B65A44
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    add.s   $f10, $f8, $f12
    lw      a0, 0x0030($sp)
    lw      a1, 0x0034($sp)
    trunc.w.s $f16, $f10
    mfc1    t9, $f16
    jal     func_8001BECC
    sw      t9, 0x0018($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B627B0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s4, 0x0028($sp)
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0030($sp)
    jal     func_80B62530
    lw      a0, 0x0030($sp)
    sll     s2, v0, 16
    sra     s2, s2, 16
    jal     func_80B62544
    lw      a0, 0x0030($sp)
    or      s3, v0, $zero              # s3 = 00000000
    blez    v0, lbl_80B62824
    or      s0, $zero, $zero           # s0 = 00000000
    lw      s1, 0x0030($sp)
    addiu   s1, s1, 0x0024             # s1 = 00000024
    sll     a2, s2, 16
lbl_80B62804:
    sra     a2, a2, 16
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_80013678
    or      a1, s1, $zero              # a1 = 00000024
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, s0, s3
    bnel    $at, $zero, lbl_80B62804
    sll     a2, s2, 16
lbl_80B62824:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80B62844:
    addiu   $sp, $sp, 0xFF30           # $sp -= 0xD0
    sw      s5, 0x008C($sp)
    sw      s4, 0x0088($sp)
    sw      s2, 0x0080($sp)
    or      s2, a2, $zero              # s2 = 00000000
    or      s4, a3, $zero              # s4 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x009C($sp)
    sw      s8, 0x0098($sp)
    sw      s7, 0x0094($sp)
    sw      s6, 0x0090($sp)
    sw      s3, 0x0084($sp)
    sw      s1, 0x007C($sp)
    sw      s0, 0x0078($sp)
    sdc1    $f30, 0x0070($sp)
    sdc1    $f28, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    sw      a0, 0x00D0($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f30                  # $f30 = 5.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f28                  # $f28 = 20.00
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f26                  # $f26 = 12.00
    lui     $at, %hi(var_80B65B74)     # $at = 80B60000
    lwc1    $f24, %lo(var_80B65B74)($at)
    lui     $at, 0x4180                # $at = 41800000
    lui     s8, 0x0600                 # s8 = 06000000
    mtc1    $at, $f22                  # $f22 = 16.00
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s8, s8, 0x0EA0             # s8 = 06000EA0
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s7, $sp, 0x00B8            # s7 = FFFFFFE8
    addiu   s6, $sp, 0x00C4            # s6 = FFFFFFF4
lbl_80B628D8:
    sll     a0, s1, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f4, $f0, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00C4($sp)
    mul.s   $f6, $f0, $f30
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    sll     a0, s1, 16
    sra     a0, a0, 16
    add.s   $f10, $f6, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x00C8($sp)
    mul.s   $f16, $f0, $f22
    lwc1    $f18, 0x00C4($sp)
    mul.s   $f4, $f18, $f24
    swc1    $f16, 0x00CC($sp)
    lwc1    $f6, 0x0000(s4)            # 00000000
    mul.s   $f8, $f26, $f6
    add.s   $f10, $f4, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00B8($sp)
    lui     $at, 0x4210                # $at = 42100000
    mtc1    $at, $f16                  # $f16 = 36.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    mul.s   $f18, $f0, $f16
    lwc1    $f8, 0x00CC($sp)
    mul.s   $f10, $f8, $f24
    add.s   $f4, $f18, $f6
    swc1    $f4, 0x00BC($sp)
    lwc1    $f16, 0x0008(s4)           # 00000008
    lwc1    $f4, 0x00C4($sp)
    mul.s   $f18, $f26, $f16
    add.s   $f6, $f10, $f18
    lwc1    $f18, 0x00C8($sp)
    swc1    $f6, 0x00C0($sp)
    lwc1    $f16, 0x0000(s2)           # 00000000
    add.s   $f10, $f4, $f16
    swc1    $f10, 0x00C4($sp)
    lwc1    $f6, 0x0004(s2)            # 00000004
    add.s   $f4, $f18, $f6
    swc1    $f4, 0x00C8($sp)
    lwc1    $f16, 0x0008(s2)           # 00000008
    add.s   $f10, $f8, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00CC($sp)
    lui     $at, %hi(var_80B65B78)     # $at = 80B60000
    lwc1    $f18, %lo(var_80B65B78)($at)
    lui     $at, %hi(var_80B65B7C)     # $at = 80B60000
    c.lt.s  $f0, $f18
    nop
    bc1f    lbl_80B629BC
    nop
    beq     $zero, $zero, lbl_80B629DC
    addiu   s0, $zero, 0x0061          # s0 = 00000061
lbl_80B629BC:
    lwc1    $f6, %lo(var_80B65B7C)($at)
    addiu   s0, $zero, 0x0021          # s0 = 00000021
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_80B629DC
    nop
    beq     $zero, $zero, lbl_80B629DC
    addiu   s0, $zero, 0x0041          # s0 = 00000041
lbl_80B629DC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    lui     $at, 0x41F0                # $at = 41F00000
    mul.s   $f4, $f20, $f28
    mtc1    $at, $f10                  # $f10 = 30.00
    addiu   t6, $zero, 0xFF38          # t6 = FFFFFF38
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    mul.s   $f18, $f0, $f10
    sw      t7, 0x0018($sp)
    sw      t6, 0x0010($sp)
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   t7, $zero, 0x0186          # t7 = 00000186
    add.s   $f8, $f4, $f28
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    trunc.w.s $f6, $f18
    addiu   t2, $zero, 0x012C          # t2 = 0000012C
    sw      t2, 0x002C($sp)
    trunc.w.s $f16, $f8
    mfc1    t4, $f6
    sw      t1, 0x0028($sp)
    sw      t8, 0x001C($sp)
    mfc1    t0, $f16
    addiu   t5, t4, 0x001E             # t5 = 0000001E
    sw      t5, 0x0030($sp)
    sw      t7, 0x0038($sp)
    sw      t6, 0x0034($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = FFFFFFF4
    or      a2, s7, $zero              # a2 = FFFFFFE8
    or      a3, s2, $zero              # a3 = 00000000
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0020($sp)
    sw      s8, 0x003C($sp)
    jal     func_8001D998
    sw      t0, 0x0024($sp)
    addiu   s1, s1, 0x2AAA             # s1 = 00002AAA
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   $at, $zero, 0x0006         # $at = 00000006
    sll     s1, s1, 16
    bne     s3, $at, lbl_80B628D8
    sra     s1, s1, 16
    lw      a0, 0x00D0($sp)
    jal     func_80B626E4
    or      a1, s5, $zero              # a1 = 00000000
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
    addiu   $sp, $sp, 0x00D0           # $sp += 0xD0


func_80B62AE0:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x46D0(t6)            # 8011B930
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    slti    $at, t6, 0x0004
    beq     $at, $zero, lbl_80B62B00
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B62B00:
    jr      $ra
    nop


func_80B62B08:
    lw      t6, 0x0168(a0)             # 00000168
    bne     t6, $zero, lbl_80B62B4C
    nop
    lw      v1, 0x1C7C(a1)             # 00001C7C
    addiu   v0, $zero, 0x017A          # v0 = 0000017A
    beql    v1, $zero, lbl_80B62B4C
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t7, 0x0000(v1)             # 00000000
lbl_80B62B28:
    bnel    v0, t7, lbl_80B62B40
    lw      v1, 0x0124(v1)             # 00000124
    sw      v1, 0x0168(a0)             # 00000168
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B62B3C:
    lw      v1, 0x0124(v1)             # 00000124
lbl_80B62B40:
    bnel    v1, $zero, lbl_80B62B28
    lh      t7, 0x0000(v1)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B62B4C:
    jr      $ra
    nop


func_80B62B54:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    lw      t6, 0x0030($sp)
    lw      a0, 0x0028($sp)
    lui     a1, %hi(var_80B65A64)      # a1 = 80B60000
    beql    t6, $zero, lbl_80B62BC0
    lw      $ra, 0x0014($sp)
    jal     func_80063F7C
    addiu   a1, a1, %lo(var_80B65A64)  # a1 = 80B65A64
    lw      a0, 0x0028($sp)
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    sw      $zero, 0x0018($sp)
    lw      a0, 0x0030($sp)
    jal     func_80033EF4
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF0
    lw      a0, 0x002C($sp)
    lw      a2, 0x0028($sp)
    lw      a3, 0x0018($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t7, 0x0028($sp)
    sw      v0, 0x013C(t7)             # 0000013C
    lw      $ra, 0x0014($sp)
lbl_80B62BC0:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B62BCC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    jal     func_80B62AE0
    sw      a0, 0x0018($sp)
    bne     v0, $zero, lbl_80B62C14
    lw      a0, 0x0018($sp)
    lw      t6, 0x0020($sp)
    sw      t6, 0x0154(a0)             # 00000154
    lw      t7, 0x0024($sp)
    sw      t7, 0x0158(a0)             # 00000158
    lw      a2, 0x0028($sp)
    jal     func_80B62B54
    lw      a1, 0x001C($sp)
    beq     $zero, $zero, lbl_80B62C20
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B62C14:
    jal     func_80020EB4
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B62C20:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B62C30:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    lw      a0, 0x0000(a1)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      a0, 0x0024($sp)
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0002             # t7 = DA380002
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lw      a0, 0x0024($sp)
    lui     t2, 0xD838                 # t2 = D8380000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t0, 0x0030($sp)
    sw      t0, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    ori     t2, t2, 0x0002             # t2 = D8380002
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(a0)             # 000002C0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B62CC8:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a2, 0x0058($sp)
    lh      t6, 0x015C(a0)             # 0000015C
    sh      t6, 0x0046($sp)
    lh      t7, 0x015E(a0)             # 0000015E
    sh      t7, 0x0044($sp)
    lh      t8, 0x0160(a0)             # 00000160
    sh      t8, 0x0042($sp)
    lw      s0, 0x0000(a1)             # 00000000
    lw      v0, 0x02C4(s0)             # 000002C4
    addiu   v0, v0, 0xFFC0             # v0 = FFFFFFC0
    sw      v0, 0x02C4(s0)             # 000002C4
    jal     func_800AA6EC
    sw      v0, 0x0020($sp)
    lh      a0, 0x0046($sp)
    lh      a1, 0x0044($sp)
    lh      a2, 0x0042($sp)
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    lw      a0, 0x0020($sp)
    jal     func_800AA724
    nop
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0002             # t0 = DA380002
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v0)             # 00000000
    lw      t1, 0x0020($sp)
    lui     t6, 0xD838                 # t6 = D8380000
    sw      t1, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v0)             # 00000000
    lw      t4, 0x0058($sp)
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    ori     t6, t6, 0x0002             # t6 = D8380002
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80B62DA4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a1, 0x0034($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0024($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    sw      a0, 0x0030($sp)
    lwc1    $f4, 0x0028(a1)            # 00000028
    sw      a1, 0x0030($sp)
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_80B62558
    swc1    $f4, 0x002C($sp)
    addiu   t6, v0, 0xFFF8             # t6 = FFFFFFF8
    sltiu   $at, t6, 0x0007
    beq     $at, $zero, lbl_80B63328
    lw      a1, 0x0030($sp)
    sll     t6, t6,  2
    lui     $at, %hi(var_80B65B80)     # $at = 80B60000
    addu    $at, $at, t6
    lw      t6, %lo(var_80B65B80)($at)
    jr      t6
    nop
var_80B62DFC:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80B65B9C)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65B9C)($at)
    lh      t7, 0x1482(v0)             # 80121482
    lh      t8, 0x1484(v0)             # 80121484
    lh      t9, 0x1486(v0)             # 80121486
    mtc1    t7, $f6                    # $f6 = 0.00
    mtc1    t8, $f8                    # $f8 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f12, $f6
    mtc1    t9, $f6                    # $f6 = 0.00
    mtc1    $at, $f2                   # $f2 = 1.00
    lh      t0, 0x1488(v0)             # 80121488
    lh      t1, 0x148A(v0)             # 8012148A
    cvt.s.w $f10, $f8
    lh      t2, 0x148C(v0)             # 8012148C
    lui     $at, 0xBF80                # $at = BF800000
    cvt.s.w $f8, $f6
    mul.s   $f4, $f10, $f0
    add.s   $f14, $f4, $f2
    mul.s   $f10, $f8, $f0
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f16, $f10, $f2
    mtc1    t1, $f10                   # $f10 = 0.00
    mul.s   $f8, $f6, $f0
    cvt.s.w $f4, $f10
    mtc1    t2, $f10                   # $f10 = 0.00
    add.s   $f18, $f8, $f2
    mul.s   $f6, $f4, $f0
    mtc1    $at, $f8                   # $f8 = -1.00
    cvt.s.w $f4, $f10
    add.s   $f20, $f6, $f8
    mul.s   $f6, $f4, $f0
    beq     $zero, $zero, lbl_80B6322C
    add.s   $f22, $f6, $f2
var_80B62E94:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80B65BA0)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BA0)($at)
    lh      t3, 0x149C(v0)             # 8012149C
    lh      t4, 0x149E(v0)             # 8012149E
    lh      t5, 0x14A0(v0)             # 801214A0
    mtc1    t3, $f8                    # $f8 = 0.00
    mtc1    t4, $f10                   # $f10 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f12, $f8
    mtc1    t5, $f8                    # $f8 = 0.00
    mtc1    $at, $f2                   # $f2 = 1.00
    lh      t6, 0x14A2(v0)             # 801214A2
    lh      t7, 0x14A4(v0)             # 801214A4
    cvt.s.w $f4, $f10
    lh      t8, 0x14A6(v0)             # 801214A6
    lui     $at, 0xBF80                # $at = BF800000
    cvt.s.w $f10, $f8
    mul.s   $f6, $f4, $f0
    add.s   $f14, $f6, $f2
    mul.s   $f4, $f10, $f0
    mtc1    t6, $f6                    # $f6 = NaN
    nop
    cvt.s.w $f8, $f6
    add.s   $f16, $f4, $f2
    mtc1    t7, $f4                    # $f4 = 0.00
    mul.s   $f10, $f8, $f0
    cvt.s.w $f6, $f4
    mtc1    t8, $f4                    # $f4 = 0.00
    add.s   $f18, $f10, $f2
    mul.s   $f8, $f6, $f0
    mtc1    $at, $f10                  # $f10 = -1.00
    cvt.s.w $f6, $f4
    add.s   $f20, $f8, $f10
    mul.s   $f8, $f6, $f0
    beq     $zero, $zero, lbl_80B6322C
    add.s   $f22, $f8, $f2
var_80B62F2C:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80B65BA4)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BA4)($at)
    lh      t9, 0x14B6(v0)             # 801214B6
    lh      t0, 0x14B8(v0)             # 801214B8
    lh      t1, 0x14BA(v0)             # 801214BA
    mtc1    t9, $f10                   # $f10 = 0.00
    mtc1    t0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f12, $f10
    mtc1    t1, $f10                   # $f10 = 0.00
    mtc1    $at, $f2                   # $f2 = 1.00
    lh      t2, 0x14BC(v0)             # 801214BC
    lh      t3, 0x14BE(v0)             # 801214BE
    cvt.s.w $f6, $f4
    lh      t4, 0x14C0(v0)             # 801214C0
    lui     $at, 0xBF80                # $at = BF800000
    cvt.s.w $f4, $f10
    mul.s   $f8, $f6, $f0
    add.s   $f14, $f8, $f2
    mul.s   $f6, $f4, $f0
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f16, $f6, $f2
    mtc1    t3, $f6                    # $f6 = 0.00
    mul.s   $f4, $f10, $f0
    cvt.s.w $f8, $f6
    mtc1    t4, $f6                    # $f6 = 0.00
    add.s   $f18, $f4, $f2
    mul.s   $f10, $f8, $f0
    mtc1    $at, $f4                   # $f4 = -1.00
    cvt.s.w $f8, $f6
    add.s   $f20, $f10, $f4
    mul.s   $f10, $f8, $f0
    beq     $zero, $zero, lbl_80B6322C
    add.s   $f22, $f10, $f2
var_80B62FC4:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80B65BA8)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BA8)($at)
    lh      t5, 0x14D0(v0)             # 801214D0
    lh      t6, 0x14D2(v0)             # 801214D2
    lh      t7, 0x14D4(v0)             # 801214D4
    mtc1    t5, $f4                    # $f4 = 0.00
    mtc1    t6, $f6                    # $f6 = NaN
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f12, $f4
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    $at, $f2                   # $f2 = 1.00
    lh      t8, 0x14D6(v0)             # 801214D6
    lh      t9, 0x14D8(v0)             # 801214D8
    cvt.s.w $f8, $f6
    lh      t0, 0x14DA(v0)             # 801214DA
    lui     $at, 0xBF80                # $at = BF800000
    cvt.s.w $f6, $f4
    mul.s   $f10, $f8, $f0
    add.s   $f14, $f10, $f2
    mul.s   $f8, $f6, $f0
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    add.s   $f16, $f8, $f2
    mtc1    t9, $f8                    # $f8 = 0.00
    mul.s   $f6, $f4, $f0
    cvt.s.w $f10, $f8
    mtc1    t0, $f8                    # $f8 = 0.00
    add.s   $f18, $f6, $f2
    mul.s   $f4, $f10, $f0
    mtc1    $at, $f6                   # $f6 = -1.00
    cvt.s.w $f10, $f8
    add.s   $f20, $f4, $f6
    mul.s   $f4, $f10, $f0
    beq     $zero, $zero, lbl_80B6322C
    add.s   $f22, $f4, $f2
var_80B6305C:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80B65BAC)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BAC)($at)
    lh      t1, 0x14EA(v0)             # 801214EA
    lh      t2, 0x14EC(v0)             # 801214EC
    lh      t3, 0x14EE(v0)             # 801214EE
    mtc1    t1, $f6                    # $f6 = 0.00
    mtc1    t2, $f8                    # $f8 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f12, $f6
    mtc1    t3, $f6                    # $f6 = 0.00
    mtc1    $at, $f2                   # $f2 = 1.00
    lh      t4, 0x14F0(v0)             # 801214F0
    lh      t5, 0x14F2(v0)             # 801214F2
    cvt.s.w $f10, $f8
    lh      t6, 0x14F4(v0)             # 801214F4
    lui     $at, 0xBF80                # $at = BF800000
    cvt.s.w $f8, $f6
    mul.s   $f4, $f10, $f0
    add.s   $f14, $f4, $f2
    mul.s   $f10, $f8, $f0
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f16, $f10, $f2
    mtc1    t5, $f10                   # $f10 = 0.00
    mul.s   $f8, $f6, $f0
    cvt.s.w $f4, $f10
    mtc1    t6, $f10                   # $f10 = NaN
    add.s   $f18, $f8, $f2
    mul.s   $f6, $f4, $f0
    mtc1    $at, $f8                   # $f8 = -1.00
    cvt.s.w $f4, $f10
    add.s   $f20, $f6, $f8
    mul.s   $f6, $f4, $f0
    beq     $zero, $zero, lbl_80B6322C
    add.s   $f22, $f6, $f2
var_80B630F4:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80B65BB0)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BB0)($at)
    lh      t7, 0x1504(v0)             # 80121504
    lh      t8, 0x1506(v0)             # 80121506
    lh      t9, 0x1508(v0)             # 80121508
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    t8, $f10                   # $f10 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f12, $f8
    mtc1    t9, $f8                    # $f8 = 0.00
    mtc1    $at, $f2                   # $f2 = 1.00
    lh      t0, 0x150A(v0)             # 8012150A
    lh      t1, 0x150C(v0)             # 8012150C
    cvt.s.w $f4, $f10
    lh      t2, 0x150E(v0)             # 8012150E
    lui     $at, 0xBF80                # $at = BF800000
    cvt.s.w $f10, $f8
    mul.s   $f6, $f4, $f0
    add.s   $f14, $f6, $f2
    mul.s   $f4, $f10, $f0
    mtc1    t0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    add.s   $f16, $f4, $f2
    mtc1    t1, $f4                    # $f4 = 0.00
    mul.s   $f10, $f8, $f0
    cvt.s.w $f6, $f4
    mtc1    t2, $f4                    # $f4 = 0.00
    add.s   $f18, $f10, $f2
    mul.s   $f8, $f6, $f0
    mtc1    $at, $f10                  # $f10 = -1.00
    cvt.s.w $f6, $f4
    add.s   $f20, $f8, $f10
    mul.s   $f8, $f6, $f0
    beq     $zero, $zero, lbl_80B6322C
    add.s   $f22, $f8, $f2
var_80B6318C:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80B65BB4)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BB4)($at)
    lh      t3, 0x1468(v0)             # 80121468
    lh      t4, 0x1466(v0)             # 80121466
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    t3, $f10                   # $f10 = 0.00
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, 0xC33E                # $at = C33E0000
    cvt.s.w $f4, $f10
    mtc1    $at, $f6                   # $f6 = -190.00
    mtc1    t4, $f8                    # $f8 = 0.00
    lh      t5, 0x1464(v0)             # 80121464
    lh      t6, 0x1462(v0)             # 80121462
    cvt.s.w $f10, $f8
    lh      t7, 0x1460(v0)             # 80121460
    lh      t8, 0x145E(v0)             # 8012145E
    lui     $at, 0xBF80                # $at = BF800000
    add.s   $f12, $f4, $f6
    mtc1    t5, $f6                    # $f6 = 0.00
    mul.s   $f4, $f10, $f0
    cvt.s.w $f8, $f6
    add.s   $f14, $f4, $f2
    mul.s   $f10, $f8, $f0
    mtc1    t6, $f4                    # $f4 = NaN
    nop
    cvt.s.w $f6, $f4
    add.s   $f16, $f10, $f2
    mtc1    t7, $f10                   # $f10 = 0.00
    mul.s   $f8, $f6, $f0
    cvt.s.w $f4, $f10
    mtc1    t8, $f10                   # $f10 = 0.00
    add.s   $f18, $f8, $f2
    mul.s   $f6, $f4, $f0
    mtc1    $at, $f8                   # $f8 = -1.00
    cvt.s.w $f4, $f10
    add.s   $f20, $f6, $f8
    mul.s   $f6, $f4, $f0
    add.s   $f22, $f6, $f2
lbl_80B6322C:
    lwc1    $f0, 0x002C($sp)
    lui     $at, %hi(var_80B65BB8)     # $at = 80B60000
    lwc1    $f8, %lo(var_80B65BB8)($at)
    add.s   $f0, $f0, $f12
    addiu   v1, a1, 0x0060             # v1 = 00000060
    c.le.s  $f0, $f8
    nop
    bc1fl   lbl_80B6332C
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f0, 0x0000(v1)            # 00000060
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80B6332C
    lw      $ra, 0x0024($sp)
    lw      t9, 0x0170(a1)             # 00000170
    bnel    t9, $zero, lbl_80B6332C
    lw      $ra, 0x0024($sp)
    mul.s   $f10, $f0, $f20
    addiu   a0, a1, 0x0068             # a0 = 00000068
    addiu   v0, a1, 0x0162             # v0 = 00000162
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    swc1    $f10, 0x0000(v1)           # 00000060
    lwc1    $f4, 0x0000(a0)            # 00000068
    mul.s   $f6, $f4, $f22
    swc1    $f6, 0x0000(a0)            # 00000068
    lh      t0, 0x0000(v0)             # 00000162
    lh      t3, 0x0002(v0)             # 00000164
    lh      t6, 0x0004(v0)             # 00000166
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mtc1    t3, $f8                    # $f8 = 0.00
    mul.s   $f4, $f10, $f14
    cvt.s.w $f10, $f8
    mtc1    t6, $f8                    # $f8 = NaN
    trunc.w.s $f6, $f4
    mul.s   $f4, $f10, $f16
    mfc1    t2, $f6
    cvt.s.w $f10, $f8
    sh      t2, 0x0000(v0)             # 00000162
    trunc.w.s $f6, $f4
    mul.s   $f4, $f10, $f18
    mfc1    t5, $f6
    nop
    sh      t5, 0x0002(v0)             # 00000164
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    sh      t8, 0x0004(v0)             # 00000166
    lwc1    $f8, 0x006C(a1)            # 0000006C
    lwc1    $f4, 0x0000(v1)            # 00000060
    neg.s   $f10, $f8
    c.le.s  $f4, $f10
    nop
    bc1fl   lbl_80B63328
    sw      t9, 0x0170(a1)             # 00000170
    swc1    $f2, 0x0000(v1)            # 00000060
    swc1    $f2, 0x0000(a0)            # 00000068
    sh      $zero, 0x0000(v0)          # 00000162
    sh      $zero, 0x0002(v0)          # 00000164
    sh      $zero, 0x0004(v0)          # 00000166
    sw      t9, 0x0170(a1)             # 00000170
lbl_80B63328:
    lw      $ra, 0x0024($sp)
lbl_80B6332C:
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80B6333C:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lw      v0, 0x0168(a0)             # 00000168
    beql    v0, $zero, lbl_80B63368
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t6, 0x0304(v0)             # 00000304
    bnel    a1, t6, lbl_80B63368
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B63364:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B63368:
    jr      $ra
    nop


func_80B63370:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_80B6333C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63394:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_80B6333C
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B633B8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0034($sp)
    lw      v0, 0x0168(a0)             # 00000168
    beql    v0, $zero, lbl_80B63AD0
    lw      $ra, 0x0014($sp)
    lwc1    $f4, 0x0024(a0)            # 00000024
    lwc1    $f6, 0x0024(v0)            # 00000024
    lwc1    $f8, 0x002C(a0)            # 0000002C
    lwc1    $f10, 0x002C(v0)           # 0000002C
    sub.s   $f12, $f4, $f6
    sw      a0, 0x0030($sp)
    sub.s   $f14, $f8, $f10
    swc1    $f12, 0x001C($sp)
    jal     func_80B62558
    swc1    $f14, 0x0018($sp)
    addiu   t6, v0, 0xFFF8             # t6 = FFFFFFF8
    sltiu   $at, t6, 0x0007
    lw      a0, 0x0030($sp)
    lwc1    $f12, 0x001C($sp)
    beq     $at, $zero, lbl_80B63A0C
    lwc1    $f14, 0x0018($sp)
    sll     t6, t6,  2
    lui     $at, %hi(var_80B65BBC)     # $at = 80B60000
    addu    $at, $at, t6
    lw      t6, %lo(var_80B65BBC)($at)
    jr      t6
    nop
var_80B63428:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t7, 0x0000(v0)             # 8011BA00
    lui     $at, %hi(var_80B65BD8)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BD8)($at)
    lh      t8, 0x1474(t7)             # 00001474
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    mtc1    t8, $f16                   # $f16 = 0.00
    lui     $at, 0x4220                # $at = 42200000
    addiu   v1, a0, 0x0162             # v1 = 00000162
    cvt.s.w $f18, $f16
    mtc1    $at, $f16                  # $f16 = 40.00
    lui     $at, 0xC1E8                # $at = C1E80000
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0068(a0)            # 00000068
    lw      t9, 0x0000(v0)             # 8011BA00
    lh      t0, 0x1476(t9)             # 00001476
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f18, $f10, $f16
    mtc1    $at, $f10                  # $f10 = -29.00
    lui     $at, 0xC0A0                # $at = C0A00000
    swc1    $f18, 0x0060(a0)           # 00000060
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t2, 0x1478(t1)             # 00001478
    sh      t2, 0x0000(v1)             # 00000162
    lw      t3, 0x0000(v0)             # 8011BA00
    lh      t4, 0x147A(t3)             # 0000147A
    addiu   t5, t4, 0x03E8             # t5 = 000003E8
    sh      t5, 0x0002(v1)             # 00000164
    lw      t6, 0x0000(v0)             # 8011BA00
    lh      t7, 0x147C(t6)             # 00001474
    addiu   t8, t7, 0x0BB8             # t8 = 00000BB8
    sh      t8, 0x0004(v1)             # 00000166
    lw      t9, 0x0000(v0)             # 8011BA00
    lh      t0, 0x147E(t9)             # 0000147E
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    add.s   $f16, $f8, $f10
    mtc1    $at, $f8                   # $f8 = -5.00
    swc1    $f16, 0x0070(a0)           # 00000070
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t2, 0x1480(t1)             # 00001480
    mtc1    t2, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    add.s   $f10, $f6, $f8
    beq     $zero, $zero, lbl_80B63A0C
    swc1    $f10, 0x006C(a0)           # 0000006C
var_80B63500:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t3, 0x0000(v0)             # 8011BA00
    lui     $at, %hi(var_80B65BDC)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BDC)($at)
    lh      t4, 0x148E(t3)             # 0000148E
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    mtc1    t4, $f16                   # $f16 = 0.00
    lui     $at, 0x4220                # $at = 42200000
    addiu   v1, a0, 0x0162             # v1 = 00000162
    cvt.s.w $f18, $f16
    mtc1    $at, $f16                  # $f16 = 40.00
    lui     $at, 0xC1E8                # $at = C1E80000
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0068(a0)            # 00000068
    lw      t5, 0x0000(v0)             # 8011BA00
    lh      t6, 0x1490(t5)             # 00001878
    mtc1    t6, $f8                    # $f8 = NaN
    nop
    cvt.s.w $f10, $f8
    add.s   $f18, $f10, $f16
    mtc1    $at, $f10                  # $f10 = -29.00
    lui     $at, 0xC0A0                # $at = C0A00000
    swc1    $f18, 0x0060(a0)           # 00000060
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t8, 0x1492(t7)             # 00001492
    sh      t8, 0x0000(v1)             # 00000162
    lw      t9, 0x0000(v0)             # 8011BA00
    lh      t0, 0x1494(t9)             # 00001494
    addiu   t1, t0, 0x03E8             # t1 = 000003E8
    sh      t1, 0x0002(v1)             # 00000164
    lw      t2, 0x0000(v0)             # 8011BA00
    lh      t3, 0x1496(t2)             # 00001496
    addiu   t4, t3, 0x0BB8             # t4 = 00000BB8
    sh      t4, 0x0004(v1)             # 00000166
    lw      t5, 0x0000(v0)             # 8011BA00
    lh      t6, 0x1498(t5)             # 00001880
    mtc1    t6, $f4                    # $f4 = NaN
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    add.s   $f16, $f8, $f10
    mtc1    $at, $f8                   # $f8 = -5.00
    swc1    $f16, 0x0070(a0)           # 00000070
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t8, 0x149A(t7)             # 0000149A
    mtc1    t8, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    add.s   $f10, $f6, $f8
    beq     $zero, $zero, lbl_80B63A0C
    swc1    $f10, 0x006C(a0)           # 0000006C
var_80B635D8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t9, 0x0000(v0)             # 8011BA00
    lui     $at, %hi(var_80B65BE0)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BE0)($at)
    lh      t0, 0x14A8(t9)             # 000014A8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    mtc1    t0, $f16                   # $f16 = 0.00
    lui     $at, 0x4220                # $at = 42200000
    addiu   v1, a0, 0x0162             # v1 = 00000162
    cvt.s.w $f18, $f16
    mtc1    $at, $f16                  # $f16 = 40.00
    lui     $at, 0xC1E8                # $at = C1E80000
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0068(a0)            # 00000068
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t2, 0x14AA(t1)             # 00001892
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f18, $f10, $f16
    mtc1    $at, $f10                  # $f10 = -29.00
    lui     $at, 0xC0A0                # $at = C0A00000
    swc1    $f18, 0x0060(a0)           # 00000060
    lw      t3, 0x0000(v0)             # 8011BA00
    lh      t4, 0x14AC(t3)             # 000014AC
    sh      t4, 0x0000(v1)             # 00000162
    lw      t5, 0x0000(v0)             # 8011BA00
    lh      t6, 0x14AE(t5)             # 00001896
    addiu   t7, t6, 0x03E8             # t7 = 000003E0
    sh      t7, 0x0002(v1)             # 00000164
    lw      t8, 0x0000(v0)             # 8011BA00
    lh      t9, 0x14B0(t8)             # 00002068
    addiu   t0, t9, 0x0BB8             # t0 = 00000BB8
    sh      t0, 0x0004(v1)             # 00000166
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t2, 0x14B2(t1)             # 0000189A
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    add.s   $f16, $f8, $f10
    mtc1    $at, $f8                   # $f8 = -5.00
    swc1    $f16, 0x0070(a0)           # 00000070
    lw      t3, 0x0000(v0)             # 8011BA00
    lh      t4, 0x14B4(t3)             # 000014B4
    mtc1    t4, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    add.s   $f10, $f6, $f8
    beq     $zero, $zero, lbl_80B63A0C
    swc1    $f10, 0x006C(a0)           # 0000006C
var_80B636B0:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t5, 0x0000(v0)             # 8011BA00
    lui     $at, %hi(var_80B65BE4)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BE4)($at)
    lh      t6, 0x14C2(t5)             # 000018AA
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    mtc1    t6, $f16                   # $f16 = NaN
    lui     $at, 0x4220                # $at = 42200000
    addiu   v1, a0, 0x0162             # v1 = 00000162
    cvt.s.w $f18, $f16
    mtc1    $at, $f16                  # $f16 = 40.00
    lui     $at, 0xC1E8                # $at = C1E80000
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0068(a0)            # 00000068
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t8, 0x14C4(t7)             # 000018A4
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f18, $f10, $f16
    mtc1    $at, $f10                  # $f10 = -29.00
    lui     $at, 0xC0A0                # $at = C0A00000
    swc1    $f18, 0x0060(a0)           # 00000060
    lw      t9, 0x0000(v0)             # 8011BA00
    lh      t0, 0x14C6(t9)             # 000014C6
    sh      t0, 0x0000(v1)             # 00000162
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t2, 0x14C8(t1)             # 000018B0
    addiu   t3, t2, 0x03E8             # t3 = 000003E8
    sh      t3, 0x0002(v1)             # 00000164
    lw      t4, 0x0000(v0)             # 8011BA00
    lh      t5, 0x14CA(t4)             # 00002082
    addiu   t6, t5, 0x0BB8             # t6 = 00000FA0
    sh      t6, 0x0004(v1)             # 00000166
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t8, 0x14CC(t7)             # 000018AC
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    add.s   $f16, $f8, $f10
    mtc1    $at, $f8                   # $f8 = -5.00
    swc1    $f16, 0x0070(a0)           # 00000070
    lw      t9, 0x0000(v0)             # 8011BA00
    lh      t0, 0x14CE(t9)             # 000014CE
    mtc1    t0, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    add.s   $f10, $f6, $f8
    beq     $zero, $zero, lbl_80B63A0C
    swc1    $f10, 0x006C(a0)           # 0000006C
var_80B63788:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t1, 0x0000(v0)             # 8011BA00
    lui     $at, %hi(var_80B65BE8)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BE8)($at)
    lh      t2, 0x14DC(t1)             # 000018C4
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    mtc1    t2, $f16                   # $f16 = 0.00
    lui     $at, 0x4220                # $at = 42200000
    addiu   v1, a0, 0x0162             # v1 = 00000162
    cvt.s.w $f18, $f16
    mtc1    $at, $f16                  # $f16 = 40.00
    lui     $at, 0xC1E8                # $at = C1E80000
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0068(a0)            # 00000068
    lw      t3, 0x0000(v0)             # 8011BA00
    lh      t4, 0x14DE(t3)             # 000018C6
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f18, $f10, $f16
    mtc1    $at, $f10                  # $f10 = -29.00
    lui     $at, 0xC0A0                # $at = C0A00000
    swc1    $f18, 0x0060(a0)           # 00000060
    lw      t5, 0x0000(v0)             # 8011BA00
    lh      t6, 0x14E0(t5)             # 000018C8
    sh      t6, 0x0000(v1)             # 00000162
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t8, 0x14E2(t7)             # 000018C2
    addiu   t9, t8, 0x03E8             # t9 = 00000FA0
    sh      t9, 0x0002(v1)             # 00000164
    lw      t0, 0x0000(v0)             # 8011BA00
    lh      t1, 0x14E4(t0)             # 0000209C
    addiu   t2, t1, 0x0BB8             # t2 = 00000FA0
    sh      t2, 0x0004(v1)             # 00000166
    lw      t3, 0x0000(v0)             # 8011BA00
    lh      t4, 0x14E6(t3)             # 000018CE
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    add.s   $f16, $f8, $f10
    mtc1    $at, $f8                   # $f8 = -5.00
    swc1    $f16, 0x0070(a0)           # 00000070
    lw      t5, 0x0000(v0)             # 8011BA00
    lh      t6, 0x14E8(t5)             # 000018D0
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    add.s   $f10, $f6, $f8
    beq     $zero, $zero, lbl_80B63A0C
    swc1    $f10, 0x006C(a0)           # 0000006C
var_80B63860:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t7, 0x0000(v0)             # 8011BA00
    lui     $at, %hi(var_80B65BEC)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BEC)($at)
    lh      t8, 0x14F6(t7)             # 000018D6
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    mtc1    t8, $f16                   # $f16 = 0.00
    lui     $at, 0x4220                # $at = 42200000
    addiu   v1, a0, 0x0162             # v1 = 00000162
    cvt.s.w $f18, $f16
    mtc1    $at, $f16                  # $f16 = 40.00
    lui     $at, 0xC1E8                # $at = C1E80000
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0068(a0)            # 00000068
    lw      t9, 0x0000(v0)             # 8011BA00
    lh      t0, 0x14F8(t9)             # 00002498
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f18, $f10, $f16
    mtc1    $at, $f10                  # $f10 = -29.00
    lui     $at, 0xC0A0                # $at = C0A00000
    swc1    $f18, 0x0060(a0)           # 00000060
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t2, 0x14FA(t1)             # 000018E2
    sh      t2, 0x0000(v1)             # 00000162
    lw      t3, 0x0000(v0)             # 8011BA00
    lh      t4, 0x14FC(t3)             # 000018E4
    addiu   t5, t4, 0x03E8             # t5 = 00000FA0
    sh      t5, 0x0002(v1)             # 00000164
    lw      t6, 0x0000(v0)             # 8011BA00
    lh      t7, 0x14FE(t6)             # 0000249E
    addiu   t8, t7, 0x0BB8             # t8 = 00000F98
    sh      t8, 0x0004(v1)             # 00000166
    lw      t9, 0x0000(v0)             # 8011BA00
    lh      t0, 0x1500(t9)             # 000024A0
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    add.s   $f16, $f8, $f10
    mtc1    $at, $f8                   # $f8 = -5.00
    swc1    $f16, 0x0070(a0)           # 00000070
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t2, 0x1502(t1)             # 000018EA
    mtc1    t2, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    add.s   $f10, $f6, $f8
    beq     $zero, $zero, lbl_80B63A0C
    swc1    $f10, 0x006C(a0)           # 0000006C
var_80B63938:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t3, 0x0000(v0)             # 8011BA00
    lui     $at, %hi(var_80B65BF0)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BF0)($at)
    lh      t4, 0x1510(t3)             # 000018F8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    mtc1    t4, $f16                   # $f16 = 0.00
    lui     $at, 0x428C                # $at = 428C0000
    addiu   v1, a0, 0x0162             # v1 = 00000162
    cvt.s.w $f18, $f16
    mtc1    $at, $f16                  # $f16 = 70.00
    lui     $at, 0xC1E8                # $at = C1E80000
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0068(a0)            # 00000068
    lw      t5, 0x0000(v0)             # 8011BA00
    lh      t6, 0x1512(t5)             # 000024B2
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f18, $f10, $f16
    mtc1    $at, $f10                  # $f10 = -29.00
    lui     $at, 0xC0A0                # $at = C0A00000
    swc1    $f18, 0x0060(a0)           # 00000060
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t8, 0x1472(t7)             # 00001852
    sh      t8, 0x0000(v1)             # 00000162
    lw      t9, 0x0000(v0)             # 8011BA00
    lh      t0, 0x1470(t9)             # 00002410
    addiu   t1, t0, 0x03E8             # t1 = 00000FA0
    sh      t1, 0x0002(v1)             # 00000164
    lw      t2, 0x0000(v0)             # 8011BA00
    lh      t3, 0x146E(t2)             # 0000240E
    addiu   t4, t3, 0x0BB8             # t4 = 00000FA0
    sh      t4, 0x0004(v1)             # 00000166
    lw      t5, 0x0000(v0)             # 8011BA00
    lh      t6, 0x146C(t5)             # 0000240C
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    add.s   $f16, $f8, $f10
    mtc1    $at, $f8                   # $f8 = -5.00
    swc1    $f16, 0x0070(a0)           # 00000070
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t8, 0x146A(t7)             # 0000184A
    mtc1    t8, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x006C(a0)           # 0000006C
lbl_80B63A0C:
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    c.eq.s  $f12, $f0
    nop
    bc1f    lbl_80B63AA4
    nop
    c.eq.s  $f14, $f0
    lw      t9, 0x0034($sp)
    bc1f    lbl_80B63AA4
    nop
    lw      v1, 0x1C44(t9)             # 00002BE4
    addiu   v0, a0, 0x0024             # v0 = 00000024
    lwc1    $f18, 0x0000(v0)           # 00000024
    lwc1    $f16, 0x0024(v1)           # 00000186
    lwc1    $f6, 0x0008(v0)            # 0000002C
    lwc1    $f4, 0x002C(v1)            # 0000018E
    sub.s   $f12, $f16, $f18
    sub.s   $f14, $f4, $f6
    c.eq.s  $f12, $f0
    nop
    bc1f    lbl_80B63A74
    nop
    c.eq.s  $f14, $f0
    nop
    bc1tl   lbl_80B63AD0
    lw      $ra, 0x0014($sp)
lbl_80B63A74:
    jal     func_800CD76C
    sw      a0, 0x0030($sp)
    lui     $at, %hi(var_80B65BF4)     # $at = 80B60000
    lwc1    $f8, %lo(var_80B65BF4)($at)
    lw      a0, 0x0030($sp)
    mul.s   $f10, $f0, $f8
    trunc.w.s $f16, $f10
    mfc1    t1, $f16
    nop
    sh      t1, 0x0032(a0)             # 00000032
    beq     $zero, $zero, lbl_80B63AD0
    lw      $ra, 0x0014($sp)
lbl_80B63AA4:
    jal     func_800CD76C
    sw      a0, 0x0030($sp)
    lui     $at, %hi(var_80B65BF8)     # $at = 80B60000
    lwc1    $f18, %lo(var_80B65BF8)($at)
    lw      a0, 0x0030($sp)
    mul.s   $f4, $f0, $f18
    trunc.w.s $f6, $f4
    mfc1    t3, $f6
    nop
    sh      t3, 0x0032(a0)             # 00000032
    lw      $ra, 0x0014($sp)
lbl_80B63AD0:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B63ADC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B6333C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beq     v0, $zero, lbl_80B63B04
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x016C(t7)             # 0000016C
lbl_80B63B04:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63B14:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x1F70             # t6 = 06001F70
    sw      t6, 0x0010($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80B62BCC
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B63B44:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002121C
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      a0, 0x0018($sp)
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t6, 0x015C(a0)             # 0000015C
    lh      t8, 0x1478(t7)             # 00001478
    lh      t0, 0x015E(a0)             # 0000015E
    addu    t9, t6, t8
    sh      t9, 0x015C(a0)             # 0000015C
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t6, 0x0160(a0)             # 00000160
    lh      t2, 0x147A(t1)             # 0000147A
    addiu   t5, t2, 0x03E8             # t5 = 000003E8
    addu    t7, t0, t5
    sh      t7, 0x015E(a0)             # 0000015E
    lw      t8, 0x0000(v0)             # 8011BA00
    lh      t9, 0x147C(t8)             # 0000147C
    addiu   t3, t9, 0x0BB8             # t3 = 00000BB8
    addu    t4, t6, t3
    sh      t4, 0x0160(a0)             # 00000160
    jal     func_80B62DA4
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63BC0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x016C(a3)             # 0000016C
    lw      t7, 0x001C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    bne     t6, $zero, lbl_80B63C1C
    addu    v0, v0, t7
    lw      v0, 0x1DE4(v0)             # 00011DE4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     a1, %hi(var_80B65A68)      # a1 = 80B60000
    divu    $zero, v0, $at
    mfhi    v1
    addiu   a1, a1, %lo(var_80B65A68)  # a1 = 80B65A68
    bne     v1, $zero, lbl_80B63C14
    lw      a0, 0x001C($sp)
    lui     a2, 0x4396                 # a2 = 43960000
    jal     func_80B6271C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_80B63C14:
    jal     func_80B63ADC
    or      a0, a3, $zero              # a0 = 00000000
lbl_80B63C1C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63C2C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63370
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80B63C70
    lw      a0, 0x0018($sp)
    jal     func_80B633B8
    lw      a1, 0x001C($sp)
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    sw      t6, 0x0154(t7)             # 00000154
    lw      t9, 0x0018($sp)
    sw      t8, 0x0158(t9)             # 00000158
lbl_80B63C70:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63C80:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80B63394
    lw      a0, 0x0018($sp)
    beql    v0, $zero, lbl_80B63CA8
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_80B63CA8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63CB4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B62B08
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63C2C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63CEC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63B44
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63C80
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63D24:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62C30
    addiu   a2, a2, 0x1D20             # a2 = 06001D20
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63D48:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62CC8
    addiu   a2, a2, 0x1D20             # a2 = 06001D20
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63D6C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x2448             # t6 = 06002448
    sw      t6, 0x0010($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80B62BCC
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B63D9C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002121C
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      a0, 0x0018($sp)
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t6, 0x015C(a0)             # 0000015C
    lh      t8, 0x1492(t7)             # 00001492
    lh      t0, 0x015E(a0)             # 0000015E
    addu    t9, t6, t8
    sh      t9, 0x015C(a0)             # 0000015C
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t6, 0x0160(a0)             # 00000160
    lh      t2, 0x1494(t1)             # 00001494
    addiu   t5, t2, 0x03E8             # t5 = 000003E8
    addu    t7, t0, t5
    sh      t7, 0x015E(a0)             # 0000015E
    lw      t8, 0x0000(v0)             # 8011BA00
    lh      t9, 0x1496(t8)             # 00001496
    addiu   t3, t9, 0x0BB8             # t3 = 00000BB8
    addu    t4, t6, t3
    sh      t4, 0x0160(a0)             # 00000160
    jal     func_80B62DA4
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63E18:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x016C(a3)             # 0000016C
    lw      t7, 0x001C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    bne     t6, $zero, lbl_80B63E78
    addu    v0, v0, t7
    lw      v0, 0x1DE4(v0)             # 00011DE4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a0, 0x001C($sp)
    divu    $zero, v0, $at
    mfhi    v1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_80B63E70
    lui     a1, %hi(var_80B65A74)      # a1 = 80B60000
    addiu   a1, a1, %lo(var_80B65A74)  # a1 = 80B65A74
    lui     a2, 0x4396                 # a2 = 43960000
    jal     func_80B6271C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_80B63E70:
    jal     func_80B63ADC
    or      a0, a3, $zero              # a0 = 00000000
lbl_80B63E78:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63E88:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63370
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80B63ECC
    lw      a0, 0x0018($sp)
    jal     func_80B633B8
    lw      a1, 0x001C($sp)
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sw      t6, 0x0154(t7)             # 00000154
    lw      t9, 0x0018($sp)
    sw      t8, 0x0158(t9)             # 00000158
lbl_80B63ECC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63EDC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80B63394
    lw      a0, 0x0018($sp)
    beql    v0, $zero, lbl_80B63F04
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_80B63F04:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63F10:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B62B08
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63E88
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63F48:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63D9C
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63EDC
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63F80:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62C30
    addiu   a2, a2, 0x2160             # a2 = 06002160
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63FA4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62CC8
    addiu   a2, a2, 0x2160             # a2 = 06002160
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B63FC8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x2850             # t6 = 06002850
    sw      t6, 0x0010($sp)
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80B62BCC
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B63FF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002121C
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      a0, 0x0018($sp)
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t6, 0x015C(a0)             # 0000015C
    lh      t8, 0x14AC(t7)             # 000014AC
    lh      t0, 0x015E(a0)             # 0000015E
    addu    t9, t6, t8
    sh      t9, 0x015C(a0)             # 0000015C
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t6, 0x0160(a0)             # 00000160
    lh      t2, 0x14AE(t1)             # 000014AE
    addiu   t5, t2, 0x03E8             # t5 = 000003E8
    addu    t7, t0, t5
    sh      t7, 0x015E(a0)             # 0000015E
    lw      t8, 0x0000(v0)             # 8011BA00
    lh      t9, 0x14B0(t8)             # 000014B0
    addiu   t3, t9, 0x0BB8             # t3 = 00000BB8
    addu    t4, t6, t3
    sh      t4, 0x0160(a0)             # 00000160
    jal     func_80B62DA4
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64074:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63370
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80B640B8
    lw      a0, 0x0018($sp)
    jal     func_80B633B8
    lw      a1, 0x001C($sp)
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    sw      t6, 0x0154(t7)             # 00000154
    lw      t9, 0x0018($sp)
    sw      t8, 0x0158(t9)             # 00000158
lbl_80B640B8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B640C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80B63394
    lw      a0, 0x0018($sp)
    beql    v0, $zero, lbl_80B640F0
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_80B640F0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B640FC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B62B08
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B64074
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64134:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63FF8
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B640C8
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6416C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62C30
    addiu   a2, a2, 0x2600             # a2 = 06002600
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64190:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62CC8
    addiu   a2, a2, 0x2600             # a2 = 06002600
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B641B4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x2D28             # t6 = 06002D28
    sw      t6, 0x0010($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80B62BCC
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B641E4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002121C
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      a0, 0x0018($sp)
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t6, 0x015C(a0)             # 0000015C
    lh      t8, 0x14C6(t7)             # 000014C6
    lh      t0, 0x015E(a0)             # 0000015E
    addu    t9, t6, t8
    sh      t9, 0x015C(a0)             # 0000015C
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t6, 0x0160(a0)             # 00000160
    lh      t2, 0x14C8(t1)             # 000014C8
    addiu   t5, t2, 0x03E8             # t5 = 000003E8
    addu    t7, t0, t5
    sh      t7, 0x015E(a0)             # 0000015E
    lw      t8, 0x0000(v0)             # 8011BA00
    lh      t9, 0x14CA(t8)             # 000014CA
    addiu   t3, t9, 0x0BB8             # t3 = 00000BB8
    addu    t4, t6, t3
    sh      t4, 0x0160(a0)             # 00000160
    jal     func_80B62DA4
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64260:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63370
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80B642A4
    lw      a0, 0x0018($sp)
    jal     func_80B633B8
    lw      a1, 0x001C($sp)
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x000B          # t6 = 0000000B
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    sw      t6, 0x0154(t7)             # 00000154
    lw      t9, 0x0018($sp)
    sw      t8, 0x0158(t9)             # 00000158
lbl_80B642A4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B642B4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80B63394
    lw      a0, 0x0018($sp)
    beql    v0, $zero, lbl_80B642DC
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_80B642DC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B642E8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B62B08
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B64260
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64320:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B641E4
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B642B4
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64358:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62C30
    addiu   a2, a2, 0x2A40             # a2 = 06002A40
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6437C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62CC8
    addiu   a2, a2, 0x2A40             # a2 = 06002A40
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B643A0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x2FE4             # t6 = 06002FE4
    sw      t6, 0x0010($sp)
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80B62BCC
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B643D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002121C
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      a0, 0x0018($sp)
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t6, 0x015C(a0)             # 0000015C
    lh      t8, 0x14E0(t7)             # 000014E0
    lh      t0, 0x015E(a0)             # 0000015E
    addu    t9, t6, t8
    sh      t9, 0x015C(a0)             # 0000015C
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t6, 0x0160(a0)             # 00000160
    lh      t2, 0x14E2(t1)             # 000014E2
    addiu   t5, t2, 0x03E8             # t5 = 000003E8
    addu    t7, t0, t5
    sh      t7, 0x015E(a0)             # 0000015E
    lw      t8, 0x0000(v0)             # 8011BA00
    lh      t9, 0x14E4(t8)             # 000014E4
    addiu   t3, t9, 0x0BB8             # t3 = 00000BB8
    addu    t4, t6, t3
    sh      t4, 0x0160(a0)             # 00000160
    jal     func_80B62DA4
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6444C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63370
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80B64490
    lw      a0, 0x0018($sp)
    jal     func_80B633B8
    lw      a1, 0x001C($sp)
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    addiu   t8, $zero, 0x000D          # t8 = 0000000D
    sw      t6, 0x0154(t7)             # 00000154
    lw      t9, 0x0018($sp)
    sw      t8, 0x0158(t9)             # 00000158
lbl_80B64490:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B644A0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80B63394
    lw      a0, 0x0018($sp)
    beql    v0, $zero, lbl_80B644C8
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_80B644C8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B644D4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B62B08
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B6444C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6450C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B643D0
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B644A0
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64544:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62C30
    addiu   a2, a2, 0x2E80             # a2 = 06002E80
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64568:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62CC8
    addiu   a2, a2, 0x2E80             # a2 = 06002E80
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6458C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x33E0             # t6 = 060033E0
    sw      t6, 0x0010($sp)
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80B62BCC
    addiu   a3, $zero, 0x0007          # a3 = 00000007
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B645BC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002121C
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      a0, 0x0018($sp)
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t6, 0x015C(a0)             # 0000015C
    lh      t8, 0x14FA(t7)             # 000014FA
    lh      t0, 0x015E(a0)             # 0000015E
    addu    t9, t6, t8
    sh      t9, 0x015C(a0)             # 0000015C
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t6, 0x0160(a0)             # 00000160
    lh      t2, 0x14FC(t1)             # 000014FC
    addiu   t5, t2, 0x03E8             # t5 = 000003E8
    addu    t7, t0, t5
    sh      t7, 0x015E(a0)             # 0000015E
    lw      t8, 0x0000(v0)             # 8011BA00
    lh      t9, 0x14FE(t8)             # 000014FE
    addiu   t3, t9, 0x0BB8             # t3 = 00000BB8
    addu    t4, t6, t3
    sh      t4, 0x0160(a0)             # 00000160
    jal     func_80B62DA4
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64638:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63370
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80B6467C
    lw      a0, 0x0018($sp)
    jal     func_80B633B8
    lw      a1, 0x001C($sp)
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    addiu   t8, $zero, 0x000E          # t8 = 0000000E
    sw      t6, 0x0154(t7)             # 00000154
    lw      t9, 0x0018($sp)
    sw      t8, 0x0158(t9)             # 00000158
lbl_80B6467C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6468C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80B63394
    lw      a0, 0x0018($sp)
    beql    v0, $zero, lbl_80B646B4
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_80B646B4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B646C0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B62B08
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B64638
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B646F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B645BC
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B6468C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64730:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62C30
    addiu   a2, a2, 0x3190             # a2 = 06003190
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64754:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62CC8
    addiu   a2, a2, 0x3190             # a2 = 06003190
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64778:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x3AF0             # t6 = 06003AF0
    sw      t6, 0x0010($sp)
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_80B62BCC
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B647A8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_8002121C
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      a0, 0x0018($sp)
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t6, 0x015C(a0)             # 0000015C
    lh      t8, 0x1472(t7)             # 00001472
    lh      t0, 0x015E(a0)             # 0000015E
    addu    t9, t6, t8
    sh      t9, 0x015C(a0)             # 0000015C
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t6, 0x0160(a0)             # 00000160
    lh      t2, 0x1470(t1)             # 00001470
    addiu   t5, t2, 0x03E8             # t5 = 000003E8
    addu    t7, t0, t5
    sh      t7, 0x015E(a0)             # 0000015E
    lw      t8, 0x0000(v0)             # 8011BA00
    lh      t9, 0x146E(t8)             # 0000146E
    addiu   t3, t9, 0x0BB8             # t3 = 00000BB8
    addu    t4, t6, t3
    sh      t4, 0x0160(a0)             # 00000160
    jal     func_80B62DA4
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64824:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x016C(a3)             # 0000016C
    lw      t7, 0x001C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    bne     t6, $zero, lbl_80B64884
    addu    v0, v0, t7
    lw      v0, 0x1DE4(v0)             # 00011DE4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a0, 0x001C($sp)
    divu    $zero, v0, $at
    mfhi    v1
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, $at, lbl_80B6487C
    lui     a1, %hi(var_80B65A80)      # a1 = 80B60000
    addiu   a1, a1, %lo(var_80B65A80)  # a1 = 80B65A80
    lui     a2, 0x4396                 # a2 = 43960000
    jal     func_80B6271C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_80B6487C:
    jal     func_80B63ADC
    or      a0, a3, $zero              # a0 = 00000000
lbl_80B64884:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64894:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63370
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80B648D8
    lw      a0, 0x0018($sp)
    jal     func_80B633B8
    lw      a1, 0x001C($sp)
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    sw      t6, 0x0154(t7)             # 00000154
    lw      t9, 0x0018($sp)
    sw      t8, 0x0158(t9)             # 00000158
lbl_80B648D8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B648E8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80B63394
    lw      a0, 0x0018($sp)
    beql    v0, $zero, lbl_80B64910
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_80B64910:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6491C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B62B08
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B64894
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64954:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B647A8
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B648E8
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6498C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62C30
    addiu   a2, a2, 0x3710             # a2 = 06003710
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B649B0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62CC8
    addiu   a2, a2, 0x3710             # a2 = 06003710
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B649D4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x1B70             # t6 = 06001B70
    sw      t6, 0x0010($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80B62BCC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B64A04:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B62B08
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63BC0
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B63E18
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B64824
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64A54:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62C30
    addiu   a2, a2, 0x0DC0             # a2 = 06000DC0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64A78:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    addiu   a2, $zero, 0x000F          # a2 = 0000000F
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80B62BCC
    sw      $zero, 0x0010($sp)
    lui     a3, %hi(var_80B659C0)      # a3 = 80B60000
    addiu   a3, a3, %lo(var_80B659C0)  # a3 = 80B659C0
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80B62568
    addiu   a2, s0, 0x0174             # a2 = 00000174
    lui     a3, %hi(var_80B659C0)      # a3 = 80B60000
    addiu   a3, a3, %lo(var_80B659C0)  # a3 = 80B659C0
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80B62568
    addiu   a2, s0, 0x01C0             # a2 = 000001C0
    lui     a3, %hi(var_80B659C0)      # a3 = 80B60000
    addiu   a3, a3, %lo(var_80B659C0)  # a3 = 80B659C0
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80B62568
    addiu   a2, s0, 0x020C             # a2 = 0000020C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B64B00:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a1, 0x003C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    lh      a0, 0x0032(a1)             # 00000032
    sw      a1, 0x0038($sp)
    jal     func_80063684              # coss?
    sh      a0, 0x0022($sp)
    lh      a0, 0x0022($sp)
    jal     func_800636C4              # sins?
    swc1    $f0, 0x001C($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    lwc1    $f18, 0x001C($sp)
    mtc1    $at, $f4                   # $f4 = 20.00
    lw      a1, 0x0038($sp)
    lui     $at, 0xC1A0                # $at = C1A00000
    mul.s   $f2, $f4, $f18
    mtc1    $at, $f6                   # $f6 = -20.00
    addiu   v0, a1, 0x0024             # v0 = 00000024
    lwc1    $f8, 0x0008(v0)            # 0000002C
    mul.s   $f12, $f6, $f0
    lui     $at, 0x41A0                # $at = 41A00000
    addiu   v1, a1, 0x0174             # v1 = 00000174
    addiu   a0, a1, 0x01C0             # a0 = 000001C0
    addiu   a2, a1, 0x020C             # a2 = 0000020C
    add.s   $f10, $f8, $f2
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     $at, 0xC1A0                # $at = C1A00000
    sub.s   $f4, $f10, $f12
    mul.s   $f14, $f8, $f0
    mtc1    $at, $f10                  # $f10 = -20.00
    lui     $at, 0xC270                # $at = C2700000
    mul.s   $f16, $f10, $f18
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x004A(v1)             # 000001BE
    lwc1    $f4, 0x0000(v0)            # 00000024
    add.s   $f6, $f4, $f14
    add.s   $f8, $f6, $f16
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x0046(v1)             # 000001BA
    lwc1    $f4, 0x0004(v0)            # 00000028
    trunc.w.s $f6, $f4
    mfc1    t1, $f6
    nop
    sh      t1, 0x0048(v1)             # 000001BC
    lwc1    $f8, 0x0008(v0)            # 0000002C
    add.s   $f10, $f8, $f16
    sub.s   $f4, $f10, $f14
    trunc.w.s $f6, $f4
    mfc1    t3, $f6
    nop
    sh      t3, 0x004A(a0)             # 0000020A
    lwc1    $f8, 0x0000(v0)            # 00000024
    add.s   $f10, $f8, $f12
    add.s   $f4, $f10, $f2
    trunc.w.s $f6, $f4
    mfc1    t5, $f6
    mtc1    $at, $f6                   # $f6 = -60.00
    lui     $at, 0x4270                # $at = 42700000
    sh      t5, 0x0046(a0)             # 00000206
    lwc1    $f8, 0x0004(v0)            # 00000028
    trunc.w.s $f10, $f8
    mul.s   $f8, $f6, $f18
    mtc1    $at, $f6                   # $f6 = 60.00
    lui     $at, 0xC270                # $at = C2700000
    mfc1    t7, $f10
    nop
    sh      t7, 0x0048(a0)             # 00000208
    lwc1    $f4, 0x0008(v0)            # 0000002C
    add.s   $f10, $f4, $f8
    mul.s   $f4, $f6, $f0
    sub.s   $f8, $f10, $f4
    mtc1    $at, $f4                   # $f4 = -60.00
    lui     $at, 0x4270                # $at = 42700000
    trunc.w.s $f6, $f8
    mul.s   $f8, $f4, $f0
    mtc1    $at, $f4                   # $f4 = 60.00
    mfc1    t9, $f6
    nop
    sh      t9, 0x004A(a2)             # 00000256
    lwc1    $f10, 0x0000(v0)           # 00000024
    add.s   $f6, $f10, $f8
    mul.s   $f10, $f4, $f18
    add.s   $f8, $f6, $f10
    trunc.w.s $f4, $f8
    mfc1    t1, $f4
    nop
    sh      t1, 0x0046(a2)             # 00000252
    lwc1    $f6, 0x0004(v0)            # 00000028
    trunc.w.s $f10, $f6
    mfc1    t3, $f10
    nop
    sh      t3, 0x0048(a2)             # 00000254
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B64C94:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0040($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    lw      a2, 0x0040($sp)
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a3, $at
    sw      a1, 0x001C($sp)
    or      a0, a3, $zero              # a0 = 00000000
    sw      a3, 0x0044($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, a2, 0x0174             # a2 = 00000174
    lw      a2, 0x0040($sp)
    lw      a0, 0x0044($sp)
    lw      a1, 0x001C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, a2, 0x01C0             # a2 = 000001C0
    lw      a2, 0x0040($sp)
    lw      a0, 0x0044($sp)
    lw      a1, 0x001C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, a2, 0x020C             # a2 = 0000020C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80B64D00:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lwc1    $f4, 0x0024(a0)            # 00000024
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    swc1    $f4, 0x001C($sp)
    lwc1    $f6, 0x0028(a0)            # 00000028
    swc1    $f6, 0x0020($sp)
    lwc1    $f8, 0x002C(a0)            # 0000002C
    jal     func_80B62844
    swc1    $f8, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B64D3C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80B63394
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B64DBC
    lw      a0, 0x0018($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x1F70             # a2 = 06001F70
    lw      a1, 0x001C($sp)
    jal     func_80B62B54
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80B65BFC)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65BFC)($at)
    addiu   t6, $zero, 0x0012          # t6 = 00000012
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sw      t6, 0x0154(a0)             # 00000154
    sw      t7, 0x0158(a0)             # 00000158
    addiu   v0, a0, 0x0050             # v0 = 00000050
    lwc1    $f4, 0x0000(v0)            # 00000050
    lwc1    $f8, 0x0004(v0)            # 00000054
    lwc1    $f16, 0x0008(v0)           # 00000058
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0000(v0)            # 00000050
    swc1    $f10, 0x0004(v0)           # 00000054
    swc1    $f18, 0x0008(v0)           # 00000058
lbl_80B64DBC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64DCC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    addiu   a2, a0, 0x0174             # a2 = 00000174
    jal     func_80B625B0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B64DF8
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_80B64E38
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B64DF8:
    lw      a1, 0x001C($sp)
    addiu   a2, a0, 0x01C0             # a2 = 000001C0
    jal     func_80B625B0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B64E18
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_80B64E38
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B64E18:
    lw      a1, 0x001C($sp)
    jal     func_80B625B0
    addiu   a2, a0, 0x020C             # a2 = 0000020C
    beql    v0, $zero, lbl_80B64E38
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_80B64E38
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B64E38:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64E48:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B6333C
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    beq     v0, $zero, lbl_80B64E84
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B64F38
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B64E84:
    jal     func_80B64DCC
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B64EE0
    addiu   t6, $sp, 0x0030            # t6 = FFFFFFF0
    lui     t7, %hi(var_80B65A8C)      # t7 = 80B60000
    addiu   t7, t7, %lo(var_80B65A8C)  # t7 = 80B65A8C
    lw      t9, 0x0000(t7)             # 80B65A8C
    lw      t8, 0x0004(t7)             # 80B65A90
    or      a0, s0, $zero              # a0 = 00000000
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80B65A94
    or      a1, s1, $zero              # a1 = 00000000
    sw      t8, 0x0004(t6)             # FFFFFFF4
    jal     func_80B627B0
    sw      t9, 0x0008(t6)             # FFFFFFF8
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80B64D00
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFF0
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B64F38
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B64EE0:
    lw      t0, 0x0258(s0)             # 00000258
    beql    t0, $zero, lbl_80B64F38
    or      a0, s0, $zero              # a0 = 00000000
    lw      t3, 0x025C(s0)             # 0000025C
    addiu   t1, $sp, 0x0024            # t1 = FFFFFFE4
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      t3, 0x0000(t1)             # FFFFFFE4
    lw      t2, 0x0260(s0)             # 00000260
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sw      t2, 0x0004(t1)             # FFFFFFE8
    lw      t3, 0x0264(s0)             # 00000264
    sw      t3, 0x0008(t1)             # FFFFFFEC
    jal     func_80B627B0
    swc1    $f4, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80B64D00
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFE4
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B64F38:
    jal     func_80B64B00
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B64C94
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80B64F60:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B62B08
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B64D3C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64F98:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80B64E48
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64FB8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62C30
    addiu   a2, a2, 0x1D20             # a2 = 06001D20
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B64FDC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80B62BCC
    sw      $zero, 0x0010($sp)
    lui     a3, %hi(var_80B659EC)      # a3 = 80B60000
    addiu   a3, a3, %lo(var_80B659EC)  # a3 = 80B659EC
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80B62568
    addiu   a2, s0, 0x0174             # a2 = 00000174
    lui     a3, %hi(var_80B659EC)      # a3 = 80B60000
    addiu   a3, a3, %lo(var_80B659EC)  # a3 = 80B659EC
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80B62568
    addiu   a2, s0, 0x01C0             # a2 = 000001C0
    lui     a3, %hi(var_80B659EC)      # a3 = 80B60000
    addiu   a3, a3, %lo(var_80B659EC)  # a3 = 80B659EC
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80B62568
    addiu   a2, s0, 0x020C             # a2 = 0000020C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B65064:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a1, 0x003C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    lh      a0, 0x0032(a1)             # 00000032
    sw      a1, 0x0038($sp)
    jal     func_80063684              # coss?
    sh      a0, 0x0022($sp)
    lh      a0, 0x0022($sp)
    jal     func_800636C4              # sins?
    swc1    $f0, 0x001C($sp)
    lui     $at, 0x420C                # $at = 420C0000
    mtc1    $at, $f12                  # $f12 = 35.00
    lw      a1, 0x0038($sp)
    lwc1    $f2, 0x001C($sp)
    mul.s   $f6, $f12, $f0
    addiu   v0, a1, 0x0024             # v0 = 00000024
    lwc1    $f4, 0x0008(v0)            # 0000002C
    addiu   v1, a1, 0x0174             # v1 = 00000174
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f14                  # $f14 = -10.00
    addiu   a0, a1, 0x01C0             # a0 = 000001C0
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f12, $f2
    lui     $at, 0xC25C                # $at = C25C0000
    mtc1    $at, $f16                  # $f16 = -55.00
    addiu   a2, a1, 0x020C             # a2 = 0000020C
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    sh      t7, 0x004A(v1)             # 000001BE
    lwc1    $f18, 0x0000(v0)           # 00000024
    add.s   $f6, $f18, $f4
    trunc.w.s $f8, $f6
    mul.s   $f6, $f14, $f0
    mfc1    t9, $f8
    nop
    sh      t9, 0x0046(v1)             # 000001BA
    lwc1    $f10, 0x0004(v0)           # 00000028
    trunc.w.s $f18, $f10
    mfc1    t1, $f18
    nop
    sh      t1, 0x0048(v1)             # 000001BC
    lwc1    $f4, 0x0008(v0)            # 0000002C
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f14, $f2
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    sh      t3, 0x004A(a0)             # 0000020A
    lwc1    $f18, 0x0000(v0)           # 00000024
    add.s   $f6, $f18, $f4
    trunc.w.s $f8, $f6
    mul.s   $f6, $f16, $f0
    mfc1    t5, $f8
    nop
    sh      t5, 0x0046(a0)             # 00000206
    lwc1    $f10, 0x0004(v0)           # 00000028
    trunc.w.s $f18, $f10
    mfc1    t7, $f18
    nop
    sh      t7, 0x0048(a0)             # 00000208
    lwc1    $f4, 0x0008(v0)            # 0000002C
    sub.s   $f8, $f4, $f6
    mul.s   $f4, $f16, $f2
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x004A(a2)             # 00000256
    lwc1    $f18, 0x0000(v0)           # 00000024
    add.s   $f6, $f18, $f4
    trunc.w.s $f8, $f6
    mfc1    t1, $f8
    nop
    sh      t1, 0x0046(a2)             # 00000252
    lwc1    $f10, 0x0004(v0)           # 00000028
    trunc.w.s $f18, $f10
    mfc1    t3, $f18
    nop
    sh      t3, 0x0048(a2)             # 00000254
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B651B4:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0040($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    lw      a2, 0x0040($sp)
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a3, $at
    sw      a1, 0x001C($sp)
    or      a0, a3, $zero              # a0 = 00000000
    sw      a3, 0x0044($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, a2, 0x0174             # a2 = 00000174
    lw      a2, 0x0040($sp)
    lw      a0, 0x0044($sp)
    lw      a1, 0x001C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, a2, 0x01C0             # a2 = 000001C0
    lw      a2, 0x0040($sp)
    lw      a0, 0x0044($sp)
    lw      a1, 0x001C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, a2, 0x020C             # a2 = 0000020C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80B65220:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    addiu   a2, a0, 0x0174             # a2 = 00000174
    jal     func_80B625B0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B6524C
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_80B6528C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B6524C:
    lw      a1, 0x001C($sp)
    addiu   a2, a0, 0x01C0             # a2 = 000001C0
    jal     func_80B625B0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B6526C
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_80B6528C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B6526C:
    lw      a1, 0x001C($sp)
    jal     func_80B625B0
    addiu   a2, a0, 0x020C             # a2 = 0000020C
    beql    v0, $zero, lbl_80B6528C
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_80B6528C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B6528C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6529C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lwc1    $f4, 0x0024(a0)            # 00000024
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    swc1    $f4, 0x001C($sp)
    lwc1    $f6, 0x0028(a0)            # 00000028
    swc1    $f6, 0x0020($sp)
    lwc1    $f8, 0x002C(a0)            # 0000002C
    jal     func_80B62844
    swc1    $f8, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B652D8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80B63394
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B65358
    lw      a0, 0x0018($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x2448             # a2 = 06002448
    lw      a1, 0x001C($sp)
    jal     func_80B62B54
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80B65C00)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65C00)($at)
    addiu   t6, $zero, 0x0013          # t6 = 00000013
    addiu   t7, $zero, 0x0011          # t7 = 00000011
    sw      t6, 0x0154(a0)             # 00000154
    sw      t7, 0x0158(a0)             # 00000158
    addiu   v0, a0, 0x0050             # v0 = 00000050
    lwc1    $f4, 0x0000(v0)            # 00000050
    lwc1    $f8, 0x0004(v0)            # 00000054
    lwc1    $f16, 0x0008(v0)           # 00000058
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0000(v0)            # 00000050
    swc1    $f10, 0x0004(v0)           # 00000054
    swc1    $f18, 0x0008(v0)           # 00000058
lbl_80B65358:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B65368:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B6333C
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    beq     v0, $zero, lbl_80B653A4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B65458
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B653A4:
    jal     func_80B65220
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B65400
    addiu   t6, $sp, 0x0030            # t6 = FFFFFFF0
    lui     t7, %hi(var_80B65A98)      # t7 = 80B60000
    addiu   t7, t7, %lo(var_80B65A98)  # t7 = 80B65A98
    lw      t9, 0x0000(t7)             # 80B65A98
    lw      t8, 0x0004(t7)             # 80B65A9C
    or      a0, s0, $zero              # a0 = 00000000
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80B65AA0
    or      a1, s1, $zero              # a1 = 00000000
    sw      t8, 0x0004(t6)             # FFFFFFF4
    jal     func_80B627B0
    sw      t9, 0x0008(t6)             # FFFFFFF8
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80B6529C
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFF0
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B65458
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B65400:
    lw      t0, 0x0258(s0)             # 00000258
    beql    t0, $zero, lbl_80B65458
    or      a0, s0, $zero              # a0 = 00000000
    lw      t3, 0x025C(s0)             # 0000025C
    addiu   t1, $sp, 0x0024            # t1 = FFFFFFE4
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      t3, 0x0000(t1)             # FFFFFFE4
    lw      t2, 0x0260(s0)             # 00000260
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sw      t2, 0x0004(t1)             # FFFFFFE8
    lw      t3, 0x0264(s0)             # 00000264
    sw      t3, 0x0008(t1)             # FFFFFFEC
    jal     func_80B627B0
    swc1    $f4, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80B6529C
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFE4
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B65458:
    jal     func_80B65064
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B651B4
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80B65480:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B62B08
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B652D8
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B654B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80B65368
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B654D8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62C30
    addiu   a2, a2, 0x2160             # a2 = 06002160
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B654FC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0011          # a2 = 00000011
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_80B62BCC
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    lui     a3, %hi(var_80B65A18)      # a3 = 80B60000
    addiu   a3, a3, %lo(var_80B65A18)  # a3 = 80B65A18
    lw      a1, 0x0024($sp)
    jal     func_80B62568
    addiu   a2, a0, 0x0174             # a2 = 00000174
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B65548:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    lwc1    $f4, 0x0024(a0)            # 00000024
    lw      a1, 0x002C($sp)
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    swc1    $f4, 0x001C($sp)
    lwc1    $f6, 0x0028(a0)            # 00000028
    lw      a3, 0x0030($sp)
    swc1    $f6, 0x0020($sp)
    lwc1    $f8, 0x002C(a0)            # 0000002C
    sw      a0, 0x0028($sp)
    jal     func_80B62844
    swc1    $f8, 0x0024($sp)
    lw      a0, 0x0028($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    lwc1    $f10, 0x0024(a0)           # 00000024
    lw      a1, 0x002C($sp)
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    swc1    $f10, 0x001C($sp)
    lwc1    $f16, 0x0028(a0)           # 00000028
    lw      a3, 0x0030($sp)
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0020($sp)
    lwc1    $f6, 0x002C(a0)            # 0000002C
    jal     func_80B62844
    swc1    $f6, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B655CC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80B63394
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B6564C
    lw      a0, 0x0018($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x3AF0             # a2 = 06003AF0
    lw      a1, 0x001C($sp)
    jal     func_80B62B54
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80B65C04)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B65C04)($at)
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    addiu   t7, $zero, 0x0012          # t7 = 00000012
    sw      t6, 0x0154(a0)             # 00000154
    sw      t7, 0x0158(a0)             # 00000158
    addiu   v0, a0, 0x0050             # v0 = 00000050
    lwc1    $f4, 0x0000(v0)            # 00000050
    lwc1    $f8, 0x0004(v0)            # 00000054
    lwc1    $f16, 0x0008(v0)           # 00000058
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0000(v0)            # 00000050
    swc1    $f10, 0x0004(v0)           # 00000054
    swc1    $f18, 0x0008(v0)           # 00000058
lbl_80B6564C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6565C:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s2, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B6333C
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    beq     v0, $zero, lbl_80B6569C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B65754
    addiu   s2, s0, 0x0174             # s2 = 00000174
lbl_80B6569C:
    addiu   s2, s0, 0x0174             # s2 = 00000174
    or      a2, s2, $zero              # a2 = 00000174
    jal     func_80B625B0
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B65700
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFE4
    lui     t7, %hi(var_80B65AA4)      # t7 = 80B60000
    addiu   t7, t7, %lo(var_80B65AA4)  # t7 = 80B65AA4
    lw      t9, 0x0000(t7)             # 80B65AA4
    lw      t8, 0x0004(t7)             # 80B65AA8
    or      a0, s0, $zero              # a0 = 00000000
    sw      t9, 0x0000(t6)             # FFFFFFE4
    lw      t9, 0x0008(t7)             # 80B65AAC
    or      a1, s1, $zero              # a1 = 00000000
    sw      t8, 0x0004(t6)             # FFFFFFE8
    jal     func_80B627B0
    sw      t9, 0x0008(t6)             # FFFFFFEC
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80B65548
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFE4
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B65758
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B65700:
    lw      t0, 0x0258(s0)             # 00000258
    beql    t0, $zero, lbl_80B65758
    or      a0, s0, $zero              # a0 = 00000000
    lw      t3, 0x025C(s0)             # 0000025C
    addiu   t1, $sp, 0x0030            # t1 = FFFFFFD8
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      t3, 0x0000(t1)             # FFFFFFD8
    lw      t2, 0x0260(s0)             # 00000260
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sw      t2, 0x0004(t1)             # FFFFFFDC
    lw      t3, 0x0264(s0)             # 00000264
    sw      t3, 0x0008(t1)             # FFFFFFE0
    jal     func_80B627B0
    swc1    $f4, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80B65548
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFD8
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B65754:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B65758:
    jal     func_80050B00
    or      a1, s2, $zero              # a1 = 00000174
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s2, $zero              # a2 = 00000174
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_80B65790:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B62B08
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B655CC
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B657C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80B6565C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B657E8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    jal     func_80B62C30
    addiu   a2, a2, 0x3710             # a2 = 06003710
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6580C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0154(a0)             # 00000154
    bltz    v0, lbl_80B65844
    slti    $at, v0, 0x0015
    beq     $at, $zero, lbl_80B65844
    sll     t6, v0,  2
    lui     v1, %hi(var_80B65AB0)      # v1 = 80B60000
    addu    v1, v1, t6
    lw      v1, %lo(var_80B65AB0)(v1)
    beql    v1, $zero, lbl_80B65848
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_80B65844:
    lw      $ra, 0x0014($sp)
lbl_80B65848:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B65854:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80B62558
    sw      a1, 0x001C($sp)
    addiu   t6, v0, 0xFFFC             # t6 = FFFFFFFC
    sltiu   $at, t6, 0x0013
    lw      a0, 0x0018($sp)
    beq     $at, $zero, lbl_80B65944
    lw      a1, 0x001C($sp)
    sll     t6, t6,  2
    lui     $at, %hi(var_80B65C08)     # $at = 80B60000
    addu    $at, $at, t6
    lw      t6, %lo(var_80B65C08)($at)
    jr      t6
    nop
var_80B65894:
    jal     func_80B649D4
    nop
    beq     $zero, $zero, lbl_80B65950
    lw      $ra, 0x0014($sp)
var_80B658A4:
    jal     func_80B63B14
    nop
    beq     $zero, $zero, lbl_80B65950
    lw      $ra, 0x0014($sp)
var_80B658B4:
    jal     func_80B63D6C
    nop
    beq     $zero, $zero, lbl_80B65950
    lw      $ra, 0x0014($sp)
var_80B658C4:
    jal     func_80B63FC8
    nop
    beq     $zero, $zero, lbl_80B65950
    lw      $ra, 0x0014($sp)
var_80B658D4:
    jal     func_80B641B4
    nop
    beq     $zero, $zero, lbl_80B65950
    lw      $ra, 0x0014($sp)
var_80B658E4:
    jal     func_80B643A0
    nop
    beq     $zero, $zero, lbl_80B65950
    lw      $ra, 0x0014($sp)
var_80B658F4:
    jal     func_80B6458C
    nop
    beq     $zero, $zero, lbl_80B65950
    lw      $ra, 0x0014($sp)
var_80B65904:
    jal     func_80B64778
    nop
    beq     $zero, $zero, lbl_80B65950
    lw      $ra, 0x0014($sp)
var_80B65914:
    jal     func_80B64A78
    nop
    beq     $zero, $zero, lbl_80B65950
    lw      $ra, 0x0014($sp)
var_80B65924:
    jal     func_80B64FDC
    nop
    beq     $zero, $zero, lbl_80B65950
    lw      $ra, 0x0014($sp)
var_80B65934:
    jal     func_80B654FC
    nop
    beq     $zero, $zero, lbl_80B65950
    lw      $ra, 0x0014($sp)
lbl_80B65944:
    jal     func_80020EB4
    nop
    lw      $ra, 0x0014($sp)
lbl_80B65950:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6595C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B6596C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0158(a0)             # 00000158
    bltz    v0, lbl_80B659A4
    slti    $at, v0, 0x0013
    beq     $at, $zero, lbl_80B659A4
    sll     t6, v0,  2
    lui     v1, %hi(var_80B65B04)      # v1 = 80B60000
    addu    v1, v1, t6
    lw      v1, %lo(var_80B65B04)(v1)
    beql    v1, $zero, lbl_80B659A8
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_80B659A4:
    lw      $ra, 0x0014($sp)
lbl_80B659A8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80B659C0: .word \
0x00000900, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000008, 0x00000000, 0x00010000, \
0x001E0064, 0x00000000, 0x00000000
var_80B659EC: .word \
0x00000900, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000008, 0x00000000, 0x00010000, \
0x0019006E, 0x00000000, 0x00000000
var_80B65A18: .word \
0x00000900, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000008, 0x00000000, 0x00010000, \
0x001900C8, 0x00000000, 0x00000000
var_80B65A44: .word 0x00000000, 0x40C00000, 0x00000000
var_80B65A50: .word 0x00000000, 0x00000000, 0x00000000
var_80B65A5C: .word 0x00000000
var_80B65A60: .word 0x00000000
var_80B65A64: .word 0x48500064
var_80B65A68: .word 0xC3B98000, 0x44948000, 0xC3978000
var_80B65A74: .word 0xC2EE0000, 0x44840000, 0xC3130000
var_80B65A80: .word 0xC0C00000, 0x4483A000, 0xC3EC8000
var_80B65A8C: .word 0x00000000, 0x00000000, 0x00000000
var_80B65A98: .word 0x00000000, 0x00000000, 0x00000000
var_80B65AA4: .word 0x00000000, 0x00000000, 0x00000000
var_80B65AB0: .word func_80B64A04
.word func_80B63CB4
.word func_80B63F10
.word func_80B640FC
.word func_80B642E8
.word func_80B644D4
.word func_80B646C0
.word func_80B6491C
.word func_80B63CEC
.word func_80B63F48
.word func_80B64134
.word func_80B64320
.word func_80B6450C
.word func_80B646F8
.word func_80B64954
.word func_80B64F60
.word func_80B65480
.word func_80B65790
.word func_80B64F98
.word func_80B654B8
.word func_80B657C8
var_80B65B04: .word func_80B6595C
.word func_80B64A54
.word func_80B63D24
.word func_80B63F80
.word func_80B6416C
.word func_80B64358
.word func_80B64544
.word func_80B64730
.word func_80B6498C
.word func_80B63D48
.word func_80B63FA4
.word func_80B64190
.word func_80B6437C
.word func_80B64568
.word func_80B64754
.word func_80B649B0
.word func_80B64FB8
.word func_80B654D8
.word func_80B657E8
var_80B65B50: .word 0x01B10600, 0x00000030, 0x01850000, 0x00000268
.word func_80B65854
.word func_80B626A0
.word func_80B6580C
.word func_80B6596C

.section .rodata

var_80B65B70: .word 0x3E4CCCCD
var_80B65B74: .word 0x3F19999A
var_80B65B78: .word 0x3DCCCCCD
var_80B65B7C: .word 0x3F333333
var_80B65B80: .word var_80B62DFC
.word var_80B62E94
.word var_80B62F2C
.word var_80B62FC4
.word var_80B6305C
.word var_80B630F4
.word var_80B6318C
var_80B65B9C: .word 0x3C23D70A
var_80B65BA0: .word 0x3C23D70A
var_80B65BA4: .word 0x3C23D70A
var_80B65BA8: .word 0x3C23D70A
var_80B65BAC: .word 0x3C23D70A
var_80B65BB0: .word 0x3C23D70A
var_80B65BB4: .word 0x3C23D70A
var_80B65BB8: .word 0x4487C000
var_80B65BBC: .word var_80B63428
.word var_80B63500
.word var_80B635D8
.word var_80B636B0
.word var_80B63788
.word var_80B63860
.word var_80B63938
var_80B65BD8: .word 0x3C23D70A
var_80B65BDC: .word 0x3C23D70A
var_80B65BE0: .word 0x3C23D70A
var_80B65BE4: .word 0x3C23D70A
var_80B65BE8: .word 0x3C23D70A
var_80B65BEC: .word 0x3C23D70A
var_80B65BF0: .word 0x3C23D70A
var_80B65BF4: .word 0x4622F983
var_80B65BF8: .word 0x4622F983
var_80B65BFC: .word 0x3F4CCCCD
var_80B65C00: .word 0x3F4CCCCD
var_80B65C04: .word 0x3F4CCCCD
var_80B65C08: .word var_80B65894
.word lbl_80B65944
.word lbl_80B65944
.word lbl_80B65944
.word var_80B658A4
.word var_80B658B4
.word var_80B658C4
.word var_80B658D4
.word var_80B658E4
.word var_80B658F4
.word var_80B65904
.word lbl_80B65944
.word var_80B65914
.word var_80B65924
.word lbl_80B65944
.word lbl_80B65944
.word lbl_80B65944
.word lbl_80B65944
.word var_80B65934
.word 0x00000000, 0x00000000, 0x00000000

