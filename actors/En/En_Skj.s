.section .text
func_80A6CA90:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lbu     t6, 0x0037($sp)
    lui     t8, %hi(var_80A6FD04)      # t8 = 80A70000
    addiu   t8, t8, %lo(var_80A6FD04)  # t8 = 80A6FD04
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    addu    v1, t7, t8
    lw      a0, 0x0000(v1)             # 00000000
    jal     func_8008A194
    sw      v1, 0x0028($sp)
    lw      t0, 0x0030($sp)
    lbu     t9, 0x0037($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0028($sp)
    sb      t9, 0x02C0(t0)             # 000002C0
    cvt.s.w $f6, $f4
    lwc1    $f8, 0x0008(v1)            # 00000008
    lbu     t1, 0x0004(v1)             # 00000004
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, t0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lw      a1, 0x0000(v1)             # 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    sw      t1, 0x0014($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A6CB18:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sll     t6, a1,  2
    lui     t7, %hi(var_80A6FD7C)      # t7 = 80A70000
    sb      a1, 0x02C1(a0)             # 000002C1
    addu    t7, t7, t6
    lw      t7, %lo(var_80A6FD7C)(t7)
    sltiu   $at, a1, 0x001D
    beq     $at, $zero, lbl_80A6CB60
    sw      t7, 0x0264(a0)             # 00000264
    sll     t8, a1,  2
    lui     $at, %hi(var_80A6FE00)     # $at = 80A70000
    addu    $at, $at, t8
    lw      t8, %lo(var_80A6FE00)($at)
    jr      t8
    nop
var_80A6CB58:
    jr      $ra
    sb      $zero, 0x02C3(a0)          # 000002C3
lbl_80A6CB60:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x02C3(a0)             # 000002C3
    jr      $ra
    nop


func_80A6CB70:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    swc1    $f0, 0x001C($sp)
    swc1    $f0, 0x0020($sp)
    swc1    $f4, 0x0024($sp)
    lh      t6, 0x00B6(a2)             # 000000B6
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f10                  # $f10 = 32768.00
    mtc1    t6, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80A6FE74)     # $at = 80A70000
    lwc1    $f18, %lo(var_80A6FE74)($at)
    cvt.s.w $f8, $f6
    sw      a2, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f16, $f8, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800AAB94
    nop
    lw      a2, 0x0028($sp)
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, a2, 0x02D0             # a1 = 000002D0
    lw      a2, 0x0028($sp)
    lwc1    $f4, 0x02D0(a2)            # 000002D0
    lwc1    $f6, 0x0024(a2)            # 00000024
    lwc1    $f10, 0x02D8(a2)           # 000002D8
    lwc1    $f16, 0x002C(a2)           # 0000002C
    add.s   $f8, $f4, $f6
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x02D0(a2)            # 000002D0
    swc1    $f18, 0x02D8(a2)           # 000002D8
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80A6CC08:
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80A6CC34
    nop
    beq     v0, $at, lbl_80A6CC80
    addiu   t4, $zero, 0x003F          # t4 = 0000003F
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A6CC80
    addiu   t6, $zero, 0x0036          # t6 = 00000036
    jr      $ra
    sb      t6, 0x0117(a0)             # 00000117
lbl_80A6CC34:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x0EF6(v0)             # 8011B4C6
    addiu   t9, $zero, 0x0041          # t9 = 00000041
    andi    t8, t7, 0x0200             # t8 = 00000000
    beql    t8, $zero, lbl_80A6CC5C
    lhu     t0, 0x0EF2(v0)             # 8011B4C2
    jr      $ra
    sb      t9, 0x0117(a0)             # 00000117
lbl_80A6CC58:
    lhu     t0, 0x0EF2(v0)             # 8011B4C2
lbl_80A6CC5C:
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    addiu   t3, $zero, 0x003F          # t3 = 0000003F
    andi    t1, t0, 0x0040             # t1 = 00000000
    beq     t1, $zero, lbl_80A6CC78
    nop
    jr      $ra
    sb      t2, 0x0117(a0)             # 00000117
lbl_80A6CC78:
    jr      $ra
    sb      t3, 0x0117(a0)             # 00000117
lbl_80A6CC80:
    sb      t4, 0x0117(a0)             # 00000117
    jr      $ra
    nop


func_80A6CC8C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    lh      v1, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A6FDF0)      # a1 = 80A70000
    addiu   a1, a1, %lo(var_80A6FDF0)  # a1 = 80A6FDF0
    sra     v1, v1, 10
    andi    v1, v1, 0x003F             # v1 = 00000000
    sll     v1, v1, 16
    sra     v1, v1, 16
    sh      v1, 0x0046($sp)
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      v1, 0x0046($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     v0, %hi(var_80A6FC70)      # v0 = 80A70000
    beq     v1, $at, lbl_80A6CCF0
    addiu   v0, v0, %lo(var_80A6FC70)  # v0 = 80A6FC70
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v1, $at, lbl_80A6CD40
    lui     v0, %hi(var_80A6FC70)      # v0 = 80A70000
    beq     $zero, $zero, lbl_80A6CDC0
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80A6CCF0:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x0000(v0)             # 80A70000
    sw      s0, 0x0004(v0)             # 80A70004
    lw      t8, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFA         # $at = FFFFFFFA
    lui     t7, %hi(func_80A6F0F4)     # t7 = 80A70000
    and     t9, t8, $at
    addiu   t7, t7, %lo(func_80A6F0F4) # t7 = 80A6F0F4
    sw      t9, 0x0004(s0)             # 00000004
    sw      $zero, 0x012C(s0)          # 0000012C
    sw      $zero, 0x0134(s0)          # 00000134
    sw      t7, 0x0130(s0)             # 00000130
    sw      t9, 0x0004(s0)             # 00000004
    lw      a0, 0x004C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    jal     func_800265D4
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    beq     $zero, $zero, lbl_80A6CFC8
    lw      $ra, 0x002C($sp)
lbl_80A6CD40:
    addiu   v0, v0, %lo(var_80A6FC70)  # v0 = FFFFFC70
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x0000(v0)             # FFFFFC70
    sw      s0, 0x0004(v0)             # FFFFFC74
    lw      t4, 0x0004(s0)             # 00000004
    lw      a0, 0x004C($sp)
    addiu   $at, $zero, 0xFFFA         # $at = FFFFFFFA
    lui     t3, %hi(func_80A6F990)     # t3 = 80A70000
    and     t5, t4, $at
    addiu   t3, t3, %lo(func_80A6F990) # t3 = 80A6F990
    sw      t5, 0x0004(s0)             # 00000004
    sw      $zero, 0x012C(s0)          # 0000012C
    sw      $zero, 0x0134(s0)          # 00000134
    sw      t3, 0x0130(s0)             # 00000130
    sw      t5, 0x0004(s0)             # 00000004
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    jal     func_800265D4
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    lui     $at, %hi(var_80A6FE78)     # $at = 80A70000
    lwc1    $f4, %lo(var_80A6FE78)($at)
    lui     $at, 0xC2B4                # $at = C2B40000
    mtc1    $at, $f6                   # $f6 = -90.00
    lui     $at, 0x43E1                # $at = 43E10000
    mtc1    $at, $f8                   # $f8 = 450.00
    lui     t7, %hi(func_80A6F168)     # t7 = 80A70000
    addiu   t7, t7, %lo(func_80A6F168) # t7 = 80A6F168
    sw      t7, 0x0264(s0)             # 00000264
    swc1    $f4, 0x0038(s0)            # 00000038
    swc1    $f6, 0x003C(s0)            # 0000003C
    beq     $zero, $zero, lbl_80A6CFC4
    swc1    $f8, 0x0040(s0)            # 00000040
lbl_80A6CDC0:
    sh      v1, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A6CE10
    nop
    beq     v0, $at, lbl_80A6CE10
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A6CE10
    lui     t8, 0x8010                 # t8 = 80100000
    lbu     t8, -0x709F(t8)            # 800F8F61
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lbu     t9, -0x59BC(t9)            # 8011A644
    slti    $at, t9, 0x0032
    beq     $at, $zero, lbl_80A6CE10
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6CFC8
    lw      $ra, 0x002C($sp)
lbl_80A6CE10:
    jal     func_80A6CC08
    sh      v1, 0x0046($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t0, s0, 0x0180             # t0 = 00000180
    addiu   t1, s0, 0x01F2             # t1 = 000001F2
    addiu   t2, $zero, 0x0013          # t2 = 00000013
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    addiu   a3, a3, 0x0E10             # a3 = 06000E10
    addiu   a2, a2, 0x5F40             # a2 = 06005F40
    lw      a0, 0x004C($sp)
    jal     func_8008C788
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lh      v1, 0x0046($sp)
    bltz    v1, lbl_80A6CE90
    slti    $at, v1, 0x0003
    beq     $at, $zero, lbl_80A6CE90
    lw      a0, 0x004C($sp)
    lw      t3, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFA         # $at = FFFFFFFA
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    and     t4, t3, $at
    sw      t4, 0x0004(s0)             # 00000004
    ori     t6, t4, 0x0009             # t6 = 00000009
    sw      t6, 0x0004(s0)             # 00000004
    sh      v1, 0x0046($sp)
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800265D4
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lh      v1, 0x0046($sp)
lbl_80A6CE90:
    bltz    v1, lbl_80A6CEA0
    slti    $at, v1, 0x0007
    bne     $at, $zero, lbl_80A6CEB4
    nop
lbl_80A6CEA0:
    lw      t7, 0x0004(s0)             # 00000004
    lui     $at, 0xFDFF                # $at = FDFF0000
    ori     $at, $at, 0xFFFF           # $at = FDFFFFFF
    and     t8, t7, $at
    sw      t8, 0x0004(s0)             # 00000004
lbl_80A6CEB4:
    blez    v1, lbl_80A6CF14
    slti    $at, v1, 0x0003
    beq     $at, $zero, lbl_80A6CF14
    addiu   t9, $zero, 0x0007          # t9 = 00000007
    lw      t1, 0x0024(s0)             # 00000024
    lw      t0, 0x0028(s0)             # 00000028
    lui     t3, %hi(var_80A6FC78)      # t3 = 80A70000
    sw      t1, 0x02E4(s0)             # 000002E4
    lw      t1, 0x002C(s0)             # 0000002C
    addiu   t3, t3, %lo(var_80A6FC78)  # t3 = 80A6FC78
    sll     t2, v1,  3
    sb      t9, 0x001F(s0)             # 0000001F
    addu    v0, t2, t3
    sw      t0, 0x02E8(s0)             # 000002E8
    sw      t1, 0x02EC(s0)             # 000002EC
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      t4, -0x0008(v0)            # FFFFFFF8
    sw      s0, -0x0004(v0)            # FFFFFFFC
    sb      $zero, 0x02C8(s0)          # 000002C8
    sw      $zero, 0x02CC(s0)          # 000002CC
    jal     func_80A6EC8C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6CF24
    nop
lbl_80A6CF14:
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    sw      t5, 0x02CC(s0)             # 000002CC
    jal     func_80A6D760
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A6CF24:
    lui     t6, %hi(var_80A6FCD4)      # t6 = 80A70000
    addiu   t6, t6, %lo(var_80A6FCD4)  # t6 = 80A6FCD4
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sw      t6, 0x0098(s0)             # 00000098
    sb      t7, 0x00AF(s0)             # 000000AF
    addiu   a1, s0, 0x0268             # a1 = 00000268
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    lw      a0, 0x004C($sp)
    lui     a3, %hi(var_80A6FCA8)      # a3 = 80A70000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_80A6FCA8)  # a3 = 80A6FCA8
    lw      a0, 0x004C($sp)
    jal     func_8004AC84
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4220                 # a3 = 42200000
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f10                  # $f10 = -1.00
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    sh      $zero, 0x02B4(s0)          # 000002B4
    sh      $zero, 0x010E(s0)          # 0000010E
    sh      $zero, 0x02BA(s0)          # 000002BA
    sb      $zero, 0x02C2(s0)          # 000002C2
    sb      v0, 0x02C4(s0)             # 000002C4
    sb      v0, 0x02C5(s0)             # 000002C5
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0060(s0)            # 00000060
    jal     func_80A6CB70
    swc1    $f10, 0x006C(s0)           # 0000006C
lbl_80A6CFC4:
    lw      $ra, 0x002C($sp)
lbl_80A6CFC8:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_80A6CFD8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0268             # a1 = 00000268
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6D004:
    lwc1    $f4, 0x0024(a0)            # 00000024
    lwc1    $f6, 0x0024(a1)            # 00000024
    lwc1    $f8, 0x002C(a0)            # 0000002C
    lwc1    $f10, 0x002C(a1)           # 0000002C
    sub.s   $f0, $f4, $f6
    lui     $at, 0x4429                # $at = 44290000
    lwc1    $f16, 0x0028(a0)           # 00000028
    sub.s   $f2, $f8, $f10
    mul.s   $f4, $f0, $f0
    mtc1    $at, $f10                  # $f10 = 676.00
    lwc1    $f18, 0x0028(a1)           # 00000028
    mul.s   $f6, $f2, $f2
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f12, $f16, $f18
    add.s   $f8, $f4, $f6
    c.le.s  $f8, $f10
    nop
    bc1f    lbl_80A6D054
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A6D054:
    beq     v0, $zero, lbl_80A6D078
    nop
    mtc1    $zero, $f16                # $f16 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    c.le.s  $f16, $f12
    nop
    bc1f    lbl_80A6D078
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A6D078:
    jr      $ra
    nop


func_80A6D080:
    lui     v0, %hi(var_80A6FC74)      # v0 = 80A70000
    lw      v0, %lo(var_80A6FC74)(v0)
    lwc1    $f6, 0x0024(a0)            # 00000024
    lwc1    $f10, 0x002C(a0)           # 0000002C
    lwc1    $f4, 0x0024(v0)            # 80A70024
    lwc1    $f8, 0x002C(v0)            # 80A7002C
    lui     $at, 0x41D0                # $at = 41D00000
    sub.s   $f2, $f4, $f6
    mtc1    $at, $f4                   # $f4 = 26.00
    sub.s   $f12, $f8, $f10
    mul.s   $f16, $f2, $f2
    nop
    mul.s   $f18, $f12, $f12
    add.s   $f0, $f16, $f18
    sqrt.s  $f0, $f0
    add.s   $f0, $f0, $f4
    jr      $ra
    nop


func_80A6D0C8:
    lui     t6, %hi(var_80A6FC74)      # t6 = 80A70000
    lw      t6, %lo(var_80A6FC74)(t6)
    lwc1    $f6, 0x0028(a0)            # 00000028
    lui     $at, 0x4120                # $at = 41200000
    lwc1    $f4, 0x0028(t6)            # 80A70028
    mtc1    $at, $f8                   # $f8 = 10.00
    sub.s   $f0, $f4, $f6
    abs.s   $f0, $f0
    add.s   $f0, $f0, $f8
    jr      $ra
    nop


func_80A6D0F4:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x005C($sp)
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f8                   # $f8 = 40.00
    swc1    $f4, 0x0048($sp)
    swc1    $f6, 0x004C($sp)
    swc1    $f8, 0x0050($sp)
    lh      t6, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t6, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80A6FE7C)     # $at = 80A70000
    lwc1    $f6, %lo(var_80A6FE7C)($at)
    cvt.s.w $f16, $f10
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f4, $f16, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AAB94
    nop
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFF0
    jal     func_800AB958
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFE4
    lwc1    $f8, 0x003C($sp)
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f18, 0x0044($sp)
    lui     $at, 0x41D8                # $at = 41D80000
    add.s   $f16, $f8, $f10
    mtc1    $at, $f10                  # $f10 = 27.00
    lw      a1, 0x005C($sp)
    addiu   a2, $zero, 0x0116          # a2 = 00000116
    swc1    $f16, 0x003C($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    mfc1    a3, $f16
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0044($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    swc1    $f6, 0x0014($sp)
    add.s   $f18, $f8, $f10
    swc1    $f18, 0x0040($sp)
    lwc1    $f4, 0x0040($sp)
    swc1    $f4, 0x0010($sp)
    lh      t7, 0x00B4(s0)             # 000000B4
    sw      t7, 0x0018($sp)
    lh      t8, 0x00B6(s0)             # 000000B6
    sw      t8, 0x001C($sp)
    lh      t9, 0x00B8(s0)             # 000000B8
    sw      $zero, 0x0024($sp)
    jal     func_80025110              # ActorSpawn
    sw      t9, 0x0020($sp)
    beq     v0, $zero, lbl_80A6D1F4
    lui     $at, 0x41C0                # $at = 41C00000
    mtc1    $at, $f8                   # $f8 = 24.00
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    sh      t0, 0x01D2(v0)             # 000001D2
    swc1    $f8, 0x0068(v0)            # 00000068
    beq     $zero, $zero, lbl_80A6D1F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A6D1F4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A6D1F8:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_80A6D20C:
    addiu   $sp, $sp, 0xFB18           # $sp = FFFFFB18
    sw      $ra, 0x001C($sp)
    sw      a1, 0x04EC($sp)
    lw      t6, 0x04EC($sp)
    lui     $at, 0x4100                # $at = 41000000
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    lwc1    $f4, 0x0000(t6)            # 00000000
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    addiu   t5, $zero, 0x0080          # t5 = 00000080
    trunc.w.s $f6, $f4
    mtc1    $at, $f4                   # $f4 = 8.00
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    mfc1    t8, $f6
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    sh      t8, 0x0024($sp)
    lwc1    $f8, 0x0004(t6)            # 00000004
    addiu   t8, $zero, 0x0080          # t8 = 00000080
    addiu   t1, $zero, 0x0080          # t1 = 00000080
    trunc.w.s $f10, $f8
    addiu   a1, $sp, 0x0020            # a1 = FFFFFB38
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    t0, $f10
    nop
    sh      t0, 0x0026($sp)
    lwc1    $f16, 0x0008(t6)           # 00000008
    addiu   t0, $zero, 0x0080          # t0 = 00000080
    sw      t3, 0x04B8($sp)
    trunc.w.s $f18, $f16
    sw      t4, 0x04BC($sp)
    sb      t5, 0x04C2($sp)
    sb      t7, 0x04C3($sp)
    mfc1    t2, $f18
    sb      t8, 0x04C6($sp)
    sb      t9, 0x04C7($sp)
    sb      t0, 0x04CA($sp)
    sh      t2, 0x0028($sp)
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    addiu   t0, $sp, 0x0024            # t0 = FFFFFB3C
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      $zero, 0x04C0($sp)
    sb      $zero, 0x04C1($sp)
    sb      $zero, 0x04C4($sp)
    sb      $zero, 0x04C5($sp)
    sb      $zero, 0x04C8($sp)
    sb      $zero, 0x04C9($sp)
    sb      t6, 0x04CB($sp)
    sb      $zero, 0x04CC($sp)
    sb      $zero, 0x04CD($sp)
    sb      t1, 0x04CE($sp)
    sb      t2, 0x04CF($sp)
    sb      $zero, 0x04D0($sp)
    sb      $zero, 0x04D1($sp)
    sb      t3, 0x04D2($sp)
    sb      $zero, 0x04D3($sp)
    sb      $zero, 0x04D4($sp)
    sb      $zero, 0x04D5($sp)
    sb      t4, 0x04D6($sp)
    sb      $zero, 0x04D7($sp)
    sb      $zero, 0x04D8($sp)
    sb      $zero, 0x04D9($sp)
    sb      t5, 0x04DA($sp)
    sb      $zero, 0x04DB($sp)
    sb      $zero, 0x04DC($sp)
    sb      $zero, 0x04DD($sp)
    sb      t7, 0x04DE($sp)
    sb      $zero, 0x04DF($sp)
    sw      $zero, 0x04E0($sp)
    sw      t8, 0x04E4($sp)
    sw      t9, 0x0010($sp)
    sw      t0, 0x0014($sp)
    swc1    $f4, 0x04B0($sp)
    jal     func_8001AA5C
    swc1    $f6, 0x04B4($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x04E8           # $sp = 00000000
    jr      $ra
    nop


func_80A6D364:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    lbu     t6, 0x02C3(s0)             # 000002C3
    lui     t7, %hi(var_80A703C0)      # t7 = 80A70000
    beql    t6, $zero, lbl_80A6D50C
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t7, %lo(var_80A703C0)(t7)
    bnel    t7, $zero, lbl_80A6D50C
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     v0, 0x0279(s0)             # 00000279
    andi    t8, v0, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_80A6D50C
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     v1, 0x00B1(s0)             # 000000B1
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    sb      t9, 0x0279(s0)             # 00000279
    beq     v1, $zero, lbl_80A6D4F4
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    v1, $at, lbl_80A6D50C
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t0, 0x028E(s0)             # 0000028E
    lw      a0, 0x0044($sp)
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0030($sp)
    lh      t1, 0x0290(s0)             # 00000290
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0034($sp)
    lh      t2, 0x0292(s0)             # 00000292
    mtc1    t2, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jal     func_80A6D20C
    swc1    $f18, 0x0038($sp)
    lw      a0, 0x0044($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_8001D7A8
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFF0
    lh      t3, 0x008A(s0)             # 0000008A
    lh      t4, 0x0032(s0)             # 00000032
    lbu     v1, 0x02C1(s0)             # 000002C1
    addiu   $at, $zero, 0x0002         # $at = 00000002
    subu    v0, t3, t4
    sll     v0, v0, 16
    beq     v1, $at, lbl_80A6D444
    sra     v0, v0, 16
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v1, $at, lbl_80A6D480
lbl_80A6D444:
    slti    $at, v0, 0x6001
    beq     $at, $zero, lbl_80A6D458
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, v0, 0xA000
    beq     $at, $zero, lbl_80A6D480
lbl_80A6D458:
    addiu   t5, $zero, 0x0008          # t5 = 00000008
    sw      t5, 0x0010($sp)
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80A6D89C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6D50C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A6D480:
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sw      t6, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     t7, 0x00AF(s0)             # 000000AF
    beq     t7, $zero, lbl_80A6D4E4
    nop
    lbu     v0, 0x02C5(s0)             # 000002C5
    addiu   t0, $zero, 0x003C          # t0 = 0000003C
    beq     v0, $zero, lbl_80A6D4C4
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sb      t8, 0x02C5(s0)             # 000002C5
lbl_80A6D4C4:
    lh      t9, 0x02BE(s0)             # 000002BE
    bne     t9, $zero, lbl_80A6D4D4
    nop
    sh      t0, 0x02BE(s0)             # 000002BE
lbl_80A6D4D4:
    jal     func_80A6D924
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6D50C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A6D4E4:
    jal     func_80A6D89C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6D50C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A6D4F4:
    sb      t1, 0x02C2(s0)             # 000002C2
    jal     func_80A6D5AC
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6D50C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A6D50C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80A6D520:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lwc1    $f4, 0x0090(a2)            # 00000090
    lwc1    $f6, 0x02DC(a2)            # 000002DC
    or      a0, a1, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A6D564
    lh      t6, 0x008A(a2)             # 0000008A
    jal     func_80021768
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80A6D560
    lw      a2, 0x0018($sp)
    beq     $zero, $zero, lbl_80A6D59C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A6D560:
    lh      t6, 0x008A(a2)             # 0000008A
lbl_80A6D564:
    lh      t7, 0x0032(a2)             # 00000032
    lh      v1, 0x02B8(a2)             # 000002B8
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    slt     $at, v0, v1
    beq     $at, $zero, lbl_80A6D598
    subu    t8, $zero, v1
    slt     $at, t8, v0
    beql    $at, $zero, lbl_80A6D59C
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_80A6D59C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A6D598:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A6D59C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6D5AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f6                   # $f6 = -8.00
    swc1    $f4, 0x0060(a0)            # 00000060
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f6, 0x0068(a0)            # 00000068
    jal     func_80A6CA90
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6D5F4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x02C6(a0)             # 000002C6
    addiu   $at, $zero, 0x0002         # $at = 00000002
    mtc1    $zero, $f4                 # $f4 = 0.00
    bne     t6, $at, lbl_80A6D620
    lw      v0, 0x02CC(a0)             # 000002CC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    sh      $zero, 0x04C6($at)         # 000104C6
    sb      $zero, 0x02C6(a0)          # 000002C6
lbl_80A6D620:
    lbu     t7, 0x02C2(a0)             # 000002C2
    addiu   v0, v0, 0xFFEC             # v0 = FFFFFFEC
    sltiu   $at, v0, 0x0100
    beql    t7, $zero, lbl_80A6D64C
    lwc1    $f6, 0x0060(a0)            # 00000060
    bnel    $at, $zero, lbl_80A6D644
    sw      v0, 0x02CC(a0)             # 000002CC
    or      v0, $zero, $zero           # v0 = 00000000
    sw      v0, 0x02CC(a0)             # 000002CC
lbl_80A6D644:
    sb      v0, 0x00C8(a0)             # 000000C8
    lwc1    $f6, 0x0060(a0)            # 00000060
lbl_80A6D64C:
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80A6D678
    lw      $ra, 0x0014($sp)
    lhu     v0, 0x0088(a0)             # 00000088
    andi    t8, v0, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_80A6D674
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    jal     func_80A6D9D8
    sh      t9, 0x0088(a0)             # 00000088
lbl_80A6D674:
    lw      $ra, 0x0014($sp)
lbl_80A6D678:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6D684:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x02C4(a0)             # 000002C4
    sh      $zero, 0x02BC(a0)          # 000002BC
    sw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6D6C0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x07A4             # a0 = 060007A4
    jal     func_8008A194
    sw      a2, 0x0020($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a2, 0x0020($sp)
    cvt.s.w $f6, $f4
    lwc1    $f8, 0x0154(a2)            # 00000154
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_80A6D754
    lw      $ra, 0x0014($sp)
    lh      t6, 0x02BC(a2)             # 000002BC
    bnel    t6, $zero, lbl_80A6D754
    lw      $ra, 0x0014($sp)
    lbu     v1, 0x02C4(a2)             # 000002C4
    or      a0, a2, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    beq     v1, $zero, lbl_80A6D748
    nop
    sb      v1, 0x001F($sp)
    jal     func_80A6D0F4
    sw      a2, 0x0020($sp)
    lbu     v1, 0x001F($sp)
    lw      a2, 0x0020($sp)
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFF
    sh      t7, 0x02BC(a2)             # 000002BC
    beq     $zero, $zero, lbl_80A6D750
    sb      v1, 0x02C4(a2)             # 000002C4
lbl_80A6D748:
    jal     func_80A6DD2C
    or      a0, a2, $zero              # a0 = 00000000
lbl_80A6D750:
    lw      $ra, 0x0014($sp)
lbl_80A6D754:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A6D760:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    addiu   t6, $zero, 0x0AAA          # t6 = 00000AAA
    sh      t6, 0x02B8(a0)             # 000002B8
    swc1    $f4, 0x02DC(a0)            # 000002DC
    sw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6D7A4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     t7, 0x8012                 # t7 = 80120000
    or      a0, a3, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_80A6D874
    lw      a1, 0x0024($sp)
    lhu     t7, -0x4B3E(t7)            # 8011B4C2
    lui     v0, %hi(var_80A6FC70)      # v0 = 80A70000
    lui     $at, 0x4348                # $at = 43480000
    andi    t8, t7, 0x0040             # t8 = 00000000
    bne     t8, $zero, lbl_80A6D810
    addiu   v0, v0, %lo(var_80A6FC70)  # v0 = 80A6FC70
    lwc1    $f4, 0x0090(a3)            # 00000090
    mtc1    $at, $f6                   # $f6 = 200.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    or      a0, a3, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A6D814
    lbu     t0, 0x0000(v0)             # 80A6FC70
    jal     func_80A6D5AC
    sb      t9, 0x02C2(a3)             # 000002C2
    beq     $zero, $zero, lbl_80A6D890
    lw      $ra, 0x0014($sp)
lbl_80A6D810:
    lbu     t0, 0x0000(v0)             # 00000000
lbl_80A6D814:
    lw      t1, 0x0024($sp)
    beql    t0, $zero, lbl_80A6D890
    lw      $ra, 0x0014($sp)
    lw      a0, 0x1C44(t1)             # 00001C44
    sw      a3, 0x0020($sp)
    lw      a1, 0x0004(v0)             # 00000004
    jal     func_80A6D004
    sw      a0, 0x001C($sp)
    lw      a2, 0x001C($sp)
    beq     v0, $zero, lbl_80A6D88C
    lw      a3, 0x0020($sp)
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80A6DEDC
    sw      a2, 0x001C($sp)
    lw      a2, 0x001C($sp)
    lui     $at, 0x0080                # $at = 00800000
    lui     t4, %hi(var_80A6FC74)      # t4 = 80A70000
    lw      t2, 0x0670(a2)             # 00000670
    or      t3, t2, $at                # t3 = 00800000
    sw      t3, 0x0670(a2)             # 00000670
    lw      t4, %lo(var_80A6FC74)(t4)
    sw      t4, 0x0698(a2)             # 00000698
    beq     $zero, $zero, lbl_80A6D890
    lw      $ra, 0x0014($sp)
lbl_80A6D874:
    jal     func_80A6D520
    sw      a3, 0x0020($sp)
    beq     v0, $zero, lbl_80A6D88C
    lw      a3, 0x0020($sp)
    jal     func_80A6DA70
    or      a0, a3, $zero              # a0 = 00000000
lbl_80A6D88C:
    lw      $ra, 0x0014($sp)
lbl_80A6D890:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A6D89C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6D8D0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x6A98             # a0 = 06006A98
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a0, 0x0018($sp)
    cvt.s.w $f6, $f4
    lwc1    $f8, 0x0154(a0)            # 00000154
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_80A6D918
    lw      $ra, 0x0014($sp)
    jal     func_80A6DD9C
    nop
    lw      $ra, 0x0014($sp)
lbl_80A6D918:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6D924:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6D958:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x6D84             # a0 = 06006D84
    jal     func_8008A194
    sw      a1, 0x0018($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a1, 0x0018($sp)
    cvt.s.w $f6, $f4
    lwc1    $f8, 0x0154(a1)            # 00000154
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_80A6D9CC
    lw      $ra, 0x0014($sp)
    lbu     t6, 0x02C5(a1)             # 000002C5
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    or      a0, a1, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_80A6D9C0
    nop
    jal     func_80A6D5AC
    sb      t7, 0x02C5(a1)             # 000002C5
    beq     $zero, $zero, lbl_80A6D9CC
    lw      $ra, 0x0014($sp)
lbl_80A6D9C0:
    jal     func_80A6DB0C
    or      a0, a1, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_80A6D9CC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6D9D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80A6CB70
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    jal     func_80A6CA90
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6DA1C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x7128             # a0 = 06007128
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a0, 0x0018($sp)
    cvt.s.w $f6, $f4
    lwc1    $f8, 0x0154(a0)            # 00000154
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_80A6DA64
    lw      $ra, 0x0014($sp)
    jal     func_80A6DB0C
    nop
    lw      $ra, 0x0014($sp)
lbl_80A6DA64:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6DA70:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f4                   # $f4 = 600.00
    addiu   t6, $zero, 0x2000          # t6 = 00002000
    addiu   t7, $zero, 0x0190          # t7 = 00000190
    sh      t6, 0x02B8(a0)             # 000002B8
    sh      t7, 0x02BA(a0)             # 000002BA
    swc1    $f4, 0x02DC(a0)            # 000002DC
    sw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6DABC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      t6, 0x02BA(a0)             # 000002BA
    bne     t6, $zero, lbl_80A6DAE0
    nop
    jal     func_80A6D760
    nop
    beq     $zero, $zero, lbl_80A6DB00
    lw      $ra, 0x0014($sp)
lbl_80A6DAE0:
    jal     func_80A6D520
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80A6DAFC
    lw      a0, 0x0018($sp)
    addiu   t7, $zero, 0x0258          # t7 = 00000258
    jal     func_80A6DB0C
    sh      t7, 0x02BA(a0)             # 000002BA
lbl_80A6DAFC:
    lw      $ra, 0x0014($sp)
lbl_80A6DB00:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6DB0C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 600.00
    addiu   t6, $zero, 0x003C          # t6 = 0000003C
    addiu   t7, $zero, 0x2000          # t7 = 00002000
    sh      t6, 0x02BC(a0)             # 000002BC
    sh      t7, 0x02B8(a0)             # 000002B8
    swc1    $f4, 0x02E0(a0)            # 000002E0
    swc1    $f6, 0x02DC(a0)            # 000002DC
    sw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6DB60:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lh      t6, 0x02BC(s0)             # 000002BC
    bnel    t6, $zero, lbl_80A6DB90
    lh      t7, 0x02BA(s0)             # 000002BA
    jal     func_80A6D684
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6DD1C
    lw      $ra, 0x0024($sp)
    lh      t7, 0x02BA(s0)             # 000002BA
lbl_80A6DB90:
    beq     t7, $zero, lbl_80A6DCEC
    nop
    lwc1    $f4, 0x02E0(s0)            # 000002E0
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    trunc.w.s $f6, $f4
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a3, $f6
    nop
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    sh      v0, 0x002E($sp)
    lh      t9, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    lui     a1, 0x44FA                 # a1 = 44FA0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4348                 # a3 = 43480000
    jal     func_80064280
    sh      t9, 0x0032(s0)             # 00000032
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC2F0                # $at = C2F00000
    mtc1    $at, $f8                   # $f8 = -120.00
    swc1    $f0, 0x0054($sp)
    swc1    $f0, 0x0058($sp)
    swc1    $f8, 0x005C($sp)
    lh      t0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t0, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80A6FE80)     # $at = 80A70000
    or      a1, $zero, $zero           # a1 = 00000000
    cvt.s.w $f4, $f10
    lwc1    $f10, %lo(var_80A6FE80)($at)
    div.s   $f8, $f4, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AAB94
    nop
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFE8
    lwc1    $f4, 0x02D0(s0)            # 000002D0
    lwc1    $f6, 0x0048($sp)
    lwc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f10, 0x02D8(s0)           # 000002D8
    add.s   $f8, $f4, $f6
    lwc1    $f18, 0x002C(s0)           # 0000002C
    lui     $at, 0x4120                # $at = 41200000
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f4, 0x0050($sp)
    lwc1    $f8, 0x0024(s0)            # 00000024
    add.s   $f6, $f10, $f4
    sub.s   $f2, $f8, $f16
    swc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mtc1    $at, $f8                   # $f8 = 10.00
    mul.s   $f4, $f2, $f2
    sub.s   $f12, $f10, $f18
    lui     $at, 0x4120                # $at = 41200000
    lh      t1, 0x002E($sp)
    mul.s   $f6, $f12, $f12
    add.s   $f0, $f4, $f6
    sqrt.s  $f14, $f0
    c.lt.s  $f8, $f14
    nop
    bc1fl   lbl_80A6DCAC
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    nop
    lui     $at, 0x4120                # $at = 41200000
lbl_80A6DCAC:
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, 0x3F80                # $at = 3F800000
    bgez    t1, lbl_80A6DCD8
    div.s   $f14, $f14, $f10
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    nop
    add.s   $f6, $f4, $f14
    neg.s   $f8, $f6
    beq     $zero, $zero, lbl_80A6DD18
    swc1    $f8, 0x0158(s0)            # 00000158
lbl_80A6DCD8:
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    add.s   $f4, $f10, $f14
    beq     $zero, $zero, lbl_80A6DD18
    swc1    $f4, 0x0158(s0)            # 00000158
lbl_80A6DCEC:
    jal     func_80A6D520
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A6DD10
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x02C2(s0)             # 000002C2
    jal     func_80A6D5AC
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6DD1C
    lw      $ra, 0x0024($sp)
lbl_80A6DD10:
    jal     func_80A6D760
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A6DD18:
    lw      $ra, 0x0024($sp)
lbl_80A6DD1C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra
    nop


func_80A6DD2C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_8008D3E4
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6DD60:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0154(a0)            # 00000154
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80A6DD90
    lw      $ra, 0x0014($sp)
    jal     func_80A6DB0C
    nop
    lw      $ra, 0x0014($sp)
lbl_80A6DD90:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6DD9C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x02C2(a0)             # 000002C2
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6DDC4:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s0, 0x0048($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)
    sw      a1, 0x007C($sp)
    lw      v0, 0x02CC(s0)             # 000002CC
    addiu   v0, v0, 0xFFFC             # v0 = FFFFFFFC
    sltiu   $at, v0, 0x0100
    bnel    $at, $zero, lbl_80A6DDF4
    lui     $at, 0x41F0                # $at = 41F00000
    or      v0, $zero, $zero           # v0 = 00000000
    lui     $at, 0x41F0                # $at = 41F00000
lbl_80A6DDF4:
    mtc1    $at, $f12                  # $f12 = 30.00
    sw      v0, 0x02CC(s0)             # 000002CC
    jal     func_80026D90
    sb      v0, 0x00C8(s0)             # 000000C8
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x006C($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0070($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    add.s   $f18, $f0, $f16
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0009          # t4 = 00000009
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    swc1    $f18, 0x0074($sp)
    sw      t5, 0x003C($sp)
    sw      t4, 0x0038($sp)
    sw      t3, 0x0034($sp)
    sw      t2, 0x0030($sp)
    sw      t1, 0x0024($sp)
    sw      t0, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0028($sp)
    lw      a0, 0x007C($sp)
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFF4
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFE8
    addiu   a3, $sp, 0x0054            # a3 = FFFFFFDC
    swc1    $f2, 0x005C($sp)
    swc1    $f2, 0x0058($sp)
    swc1    $f2, 0x0054($sp)
    swc1    $f2, 0x0068($sp)
    swc1    $f2, 0x0064($sp)
    jal     func_8001E1D4
    swc1    $f2, 0x0060($sp)
    lw      $ra, 0x004C($sp)
    lw      s0, 0x0048($sp)
    addiu   $sp, $sp, 0x0078           # $sp = 00000000
    jr      $ra
    nop


func_80A6DEDC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x10BC          # t6 = 000010BC
    sh      t6, 0x02B4(a0)             # 000002B4
    sw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6DF14:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lui     v0, %hi(var_80A6FC70)      # v0 = 80A70000
    lui     $at, 0x0200                # $at = 02000000
    lw      a2, 0x1C44(t6)             # 00001C44
    addiu   v0, v0, %lo(var_80A6FC70)  # v0 = 80A6FC70
    lui     t3, %hi(var_80A703C0)      # t3 = 80A70000
    lw      v1, 0x0670(a2)             # 00000670
    sll     t7, v1,  7
    bgez    t7, lbl_80A6DFA8
    or      t8, v1, $at                # t8 = 02000000
    sw      t8, 0x0670(a2)             # 00000670
    lw      t9, 0x0004(v0)             # 80A6FC74
    or      a1, a2, $zero              # a1 = 00000000
    sw      t9, 0x0698(a2)             # 00000698
    lw      t0, 0x0004(v0)             # 80A6FC74
    lwc1    $f4, 0x0024(t0)            # 00000024
    swc1    $f4, 0x0024(a2)            # 00000024
    lw      t1, 0x0004(v0)             # 80A6FC74
    lwc1    $f6, 0x0028(t1)            # 00000028
    swc1    $f6, 0x0028(a2)            # 00000028
    lw      t2, 0x0004(v0)             # 80A6FC74
    lwc1    $f8, 0x002C(t2)            # 0000002C
    swc1    $f8, 0x002C(a2)            # 0000002C
    jal     func_80A6F11C
    lw      a0, 0x0004(v0)             # 80A6FC74
    lw      a0, 0x002C($sp)
    jal     func_800DD430
    addiu   a1, $zero, 0x0022          # a1 = 00000022
    jal     func_80A6E128
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6E118
    lw      $ra, 0x001C($sp)
lbl_80A6DFA8:
    lw      t3, %lo(var_80A703C0)(t3)
    lui     v0, %hi(var_80A6FC70)      # v0 = 80A70000
    addiu   v0, v0, %lo(var_80A6FC70)  # v0 = 80A6FC70
    beq     t3, $zero, lbl_80A6E038
    or      a0, a2, $zero              # a0 = 00000000
    lui     v0, %hi(var_80A6FC70)      # v0 = 80A70000
    addiu   v0, v0, %lo(var_80A6FC70)  # v0 = 80A6FC70
    lw      t4, 0x0004(v0)             # 80A6FC74
    lwc1    $f10, 0x0024(t4)           # 00000024
    swc1    $f10, 0x0024(a2)           # 00000024
    lw      t5, 0x0004(v0)             # 80A6FC74
    lwc1    $f16, 0x0028(t5)           # 00000028
    swc1    $f16, 0x0028(a2)           # 00000028
    lw      t6, 0x0004(v0)             # 80A6FC74
    lwc1    $f18, 0x002C(t6)           # 0000002C
    swc1    $f18, 0x002C(a2)           # 0000002C
    jal     func_80079B44
    lw      a0, 0x002C($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80A6E028
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x0EF6(v0)             # 8011B4C6
    andi    t8, t7, 0x0200             # t8 = 00000000
    bne     t8, $zero, lbl_80A6E028
    nop
    jal     func_800646F0
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    jal     func_80A6E68C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6E118
    lw      $ra, 0x001C($sp)
lbl_80A6E028:
    jal     func_80A6E4A8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6E118
    lw      $ra, 0x001C($sp)
lbl_80A6E038:
    lw      a1, 0x0004(v0)             # 00000004
    jal     func_80A6D004
    sw      a2, 0x0024($sp)
    bne     v0, $zero, lbl_80A6E05C
    lw      a2, 0x0024($sp)
    jal     func_80A6D760
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6E118
    lw      $ra, 0x001C($sp)
lbl_80A6E05C:
    lw      t9, 0x0670(a2)             # 00000670
    lui     $at, 0x0080                # $at = 00800000
    lui     v0, 0x8012                 # v0 = 80120000
    or      t0, t9, $at                # t0 = 00800000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      t0, 0x0670(a2)             # 00000670
    lhu     t1, 0x0EF2(v0)             # 8011B4C2
    andi    t2, t1, 0x0040             # t2 = 00000000
    beql    t2, $zero, lbl_80A6E118
    lw      $ra, 0x001C($sp)
    lhu     t3, 0x0EF6(v0)             # 8011B4C6
    lw      a0, 0x002C($sp)
    andi    t4, t3, 0x0200             # t4 = 00000000
    beq     t4, $zero, lbl_80A6E0B8
    nop
    jal     func_800597C0
    addiu   a1, $zero, 0x0015          # a1 = 00000015
    andi    t5, v0, 0xFFFF             # t5 = 00000000
    bne     t5, $zero, lbl_80A6E0FC
    sh      v0, 0x02B4(s0)             # 000002B4
    addiu   t6, $zero, 0x1020          # t6 = 00001020
    beq     $zero, $zero, lbl_80A6E0FC
    sh      t6, 0x02B4(s0)             # 000002B4
lbl_80A6E0B8:
    jal     func_80079B44
    lw      a0, 0x002C($sp)
    bne     v0, $zero, lbl_80A6E0D0
    addiu   t7, $zero, 0x10BC          # t7 = 000010BC
    beq     $zero, $zero, lbl_80A6E0FC
    sh      t7, 0x02B4(s0)             # 000002B4
lbl_80A6E0D0:
    jal     func_80079B44
    lw      a0, 0x002C($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80A6E0F0
    lw      a0, 0x002C($sp)
    addiu   t8, $zero, 0x101B          # t8 = 0000101B
    beq     $zero, $zero, lbl_80A6E0FC
    sh      t8, 0x02B4(s0)             # 000002B4
lbl_80A6E0F0:
    jal     func_800597C0
    addiu   a1, $zero, 0x0015          # a1 = 00000015
    sh      v0, 0x02B4(s0)             # 000002B4
lbl_80A6E0FC:
    jal     func_80A6D080
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a2, $f0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022A68
    lw      a1, 0x002C($sp)
    lw      $ra, 0x001C($sp)
lbl_80A6E118:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80A6E128:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sb      $zero, 0x02C6(a0)          # 000002C6
    jal     func_80A6CB18
    addiu   a1, $zero, 0x000B          # a1 = 0000000B
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E14C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lhu     t6, 0x0EF2(a3)             # 8011B4C2
    lui     v0, 0x0001                 # v0 = 00010000
    lw      v1, 0x1C44(s1)             # 00001C44
    andi    t7, t6, 0x0040             # t7 = 00000000
    bne     t7, $zero, lbl_80A6E1E4
    addu    v0, v0, s1
    lbu     v0, 0x03DC(v0)             # 000103DC
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    beq     v0, $at, lbl_80A6E1A0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     v0, $at, lbl_80A6E1E4
lbl_80A6E1A0:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sh      t8, 0x04C6($at)            # 000104C6
    jal     func_800D6218
    sw      v1, 0x002C($sp)
    lw      v1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A6D080
    sw      s0, 0x0698(v1)             # 00000698
    mfc1    a2, $f0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022A68
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A6EB68
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6E410
    lw      $ra, 0x001C($sp)
lbl_80A6E1E4:
    lui     $at, 0x0001                # $at = 00010000
    addu    a2, s1, $at
    lbu     v0, 0x03DC(a2)             # 000003DC
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bnel    v0, $at, lbl_80A6E238
    lbu     t1, 0x02C6(s0)             # 000002C6
    lbu     t9, 0x02C6(s0)             # 000002C6
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    bne     t9, $zero, lbl_80A6E234
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sb      t0, 0x02C6(s0)             # 000002C6
    sw      a2, 0x0024($sp)
    jal     func_80A6CA90
    sw      v1, 0x002C($sp)
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    lw      v1, 0x002C($sp)
    beq     $zero, $zero, lbl_80A6E270
    lw      a2, 0x0024($sp)
lbl_80A6E234:
    lbu     t1, 0x02C6(s0)             # 000002C6
lbl_80A6E238:
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beql    t1, $zero, lbl_80A6E274
    lhu     v0, 0x04C6(a2)             # 000004C6
    bne     v0, $at, lbl_80A6E270
    or      a0, s0, $zero              # a0 = 00000000
    sb      $zero, 0x02C6(s0)          # 000002C6
    sw      a2, 0x0024($sp)
    sw      v1, 0x002C($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    lw      v1, 0x002C($sp)
    lw      a2, 0x0024($sp)
lbl_80A6E270:
    lhu     v0, 0x04C6(a2)             # 000004C6
lbl_80A6E274:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $at, lbl_80A6E2AC
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sh      $zero, 0x04C6($at)         # 000104C6
    jal     func_80A6CA90
    sb      $zero, 0x02C6(s0)          # 000002C6
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A6CB18
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    beq     $zero, $zero, lbl_80A6E410
    lw      $ra, 0x001C($sp)
lbl_80A6E2AC:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v0, $at, lbl_80A6E330
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lhu     t2, 0x0EF2(a3)             # 00000EF2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    andi    t3, t2, 0x0040             # t3 = 00000000
    bne     t3, $zero, lbl_80A6E324
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    sh      t4, 0x04C6($at)            # 000104C6
    sw      v1, 0x002C($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    lw      v1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A6D080
    sw      s0, 0x0698(v1)             # 00000698
    mfc1    a2, $f0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022A68
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t5, $zero, 0x10BB          # t5 = 000010BB
    sh      t5, 0x02B4(s0)             # 000002B4
    jal     func_80A6E420
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6E410
    lw      $ra, 0x001C($sp)
lbl_80A6E324:
    beq     $zero, $zero, lbl_80A6E40C
    sh      t6, 0x04C6($at)            # 000004C6
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A6E330:
    bne     v0, $at, lbl_80A6E358
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x0670(v1)             # 00000670
    lui     $at, 0xFEFF                # $at = FEFF0000
    ori     $at, $at, 0xFFFF           # $at = FEFFFFFF
    and     t8, t7, $at
    jal     func_80020EB4
    sw      t8, 0x0670(v1)             # 00000670
    beq     $zero, $zero, lbl_80A6E410
    lw      $ra, 0x001C($sp)
lbl_80A6E358:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80A6E37C
    slti    $at, v0, 0x0005
    lw      t9, 0x0670(v1)             # 00000670
    lui     $at, 0x0080                # $at = 00800000
    or      t0, t9, $at                # t0 = 00800000
    beq     $zero, $zero, lbl_80A6E40C
    sw      t0, 0x0670(v1)             # 00000670
    slti    $at, v0, 0x0005
lbl_80A6E37C:
    bnel    $at, $zero, lbl_80A6E410
    lw      $ra, 0x001C($sp)
    lhu     t1, 0x0EF2(a3)             # 00000EF2
    sh      $zero, 0x1422(a3)          # 00001422
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    andi    t2, t1, 0x0040             # t2 = 00000000
    beq     t2, $zero, lbl_80A6E3E0
    lui     $at, 0x0001                # $at = 00010000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    sh      t3, 0x04C6($at)            # 000104C6
    sw      s0, 0x0698(v1)             # 00000698
    jal     func_80A6D080
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a2, $f0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022A68
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t4, $zero, 0x10BD          # t4 = 000010BD
    sh      t4, 0x02B4(s0)             # 000002B4
    jal     func_80A6E420
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6E410
    lw      $ra, 0x001C($sp)
lbl_80A6E3E0:
    addu    $at, $at, s1
    sh      t5, 0x04C6($at)            # 000004C6
    sw      s0, 0x0698(v1)             # 00000698
    jal     func_80A6D080
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a2, $f0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022A68
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A6EB68
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A6E40C:
    lw      $ra, 0x001C($sp)
lbl_80A6E410:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A6E420:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sb      $zero, 0x02C6(a0)          # 000002C6
    sw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E454:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     t6, %hi(var_80A703C0)      # t6 = 80A70000
    lw      t6, %lo(var_80A703C0)(t6)
    beq     t6, $zero, lbl_80A6E480
    nop
    jal     func_80A6E4A8
    nop
    beq     $zero, $zero, lbl_80A6E49C
    lw      $ra, 0x0014($sp)
lbl_80A6E480:
    jal     func_80A6D080
    sw      a0, 0x0018($sp)
    mfc1    a2, $f0
    lw      a0, 0x0018($sp)
    jal     func_80022A68
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_80A6E49C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E4A8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x000D          # a1 = 0000000D
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E4C8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lw      a0, 0x003C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80A6E55C
    lw      $ra, 0x0024($sp)
    jal     func_800D6110
    lw      a0, 0x003C($sp)
    beq     v0, $zero, lbl_80A6E558
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B3E(t6)            # 8011B4C2
    andi    t7, t6, 0x0040             # t7 = 00000000
    beq     t7, $zero, lbl_80A6E524
    nop
    jal     func_80A6DEDC
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6E55C
    lw      $ra, 0x0024($sp)
lbl_80A6E524:
    jal     func_80A6E56C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A6D080
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x002C($sp)
    jal     func_80A6D0C8
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    addiu   a2, $zero, 0x003E          # a2 = 0000003E
    lw      a3, 0x002C($sp)
    jal     func_80022BD4
    swc1    $f0, 0x0010($sp)
lbl_80A6E558:
    lw      $ra, 0x0024($sp)
lbl_80A6E55C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80A6E56C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x000E          # a1 = 0000000E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E58C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    lw      a1, 0x0034($sp)
    beq     v0, $zero, lbl_80A6E5C4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A6E604
    sw      $zero, 0x0118(s0)          # 00000118
    beq     $zero, $zero, lbl_80A6E5F4
    lw      $ra, 0x0024($sp)
lbl_80A6E5C4:
    jal     func_80A6D080
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0028($sp)
    jal     func_80A6D0C8
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x003E          # a2 = 0000003E
    lw      a3, 0x0028($sp)
    jal     func_80022BD4
    swc1    $f0, 0x0010($sp)
    lw      $ra, 0x0024($sp)
lbl_80A6E5F4:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A6E604:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E624:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80A6E680
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80A6E67C
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EF2(v0)             # 8011B4C2
    lw      a0, 0x0018($sp)
    ori     t7, t6, 0x0040             # t7 = 00000040
    jal     func_80A6CC08
    sh      t7, 0x0EF2(v0)             # 8011B4C2
    jal     func_80A6DEDC
    lw      a0, 0x0018($sp)
lbl_80A6E67C:
    lw      $ra, 0x0014($sp)
lbl_80A6E680:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E68C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E6AC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    sb      v0, 0x001F($sp)
    lw      a0, 0x0024($sp)
    lw      a1, 0x0020($sp)
    jal     func_800218EC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     t6, 0x001F($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    t6, $at, lbl_80A6E708
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x0024($sp)
    beql    v0, $zero, lbl_80A6E708
    lw      $ra, 0x0014($sp)
    jal     func_80A6E714
    lw      a0, 0x0020($sp)
    lw      $ra, 0x0014($sp)
lbl_80A6E708:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A6E714:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    swc1    $f4, 0x0060(a2)            # 00000060
    or      a0, a2, $zero              # a0 = 00000000
    swc1    $f6, 0x0068(a2)            # 00000068
    sw      a2, 0x0018($sp)
    jal     func_80A6CA90
    or      a1, $zero, $zero           # a1 = 00000000
    lw      a2, 0x0018($sp)
    jal     func_8008D3E4
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    lw      a0, 0x0018($sp)
    addiu   a1, $zero, 0x0011          # a1 = 00000011
    lwc1    $f8, 0x0148(a0)            # 00000148
    jal     func_80A6CB18
    swc1    $f8, 0x0154(a0)            # 00000154
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E778:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lwc1    $f4, 0x0060(a0)            # 00000060
    c.le.s  $f4, $f0
    nop
    bc1fl   lbl_80A6E7BC
    lw      $ra, 0x0014($sp)
    lhu     v0, 0x0088(a0)             # 00000088
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80A6E7B8
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sh      t7, 0x0088(a0)             # 00000088
    jal     func_80A6E7C8
    swc1    $f0, 0x0068(a0)            # 00000068
lbl_80A6E7B8:
    lw      $ra, 0x0014($sp)
lbl_80A6E7BC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E7C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0012          # a1 = 00000012
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E7FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x7128             # a0 = 06007128
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a0, 0x0018($sp)
    cvt.s.w $f6, $f4
    lwc1    $f8, 0x0154(a0)            # 00000154
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_80A6E844
    lw      $ra, 0x0014($sp)
    jal     func_80A6E850
    nop
    lw      $ra, 0x0014($sp)
lbl_80A6E844:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E850:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 2.00
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    swc1    $f4, 0x02E0(a0)            # 000002E0
    swc1    $f6, 0x0068(a0)            # 00000068
    jal     func_80A6CA90
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0013          # a1 = 00000013
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E894:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lwc1    $f4, 0x02E0(s0)            # 000002E0
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    trunc.w.s $f6, $f4
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    mfc1    a3, $f6
    nop
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    lui     a1, 0x44FA                 # a1 = 44FA0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f10                  # $f10 = 120.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    lh      t7, 0x00B6(s0)             # 000000B6
    c.lt.s  $f8, $f10
    sh      t7, 0x0032(s0)             # 00000032
    bc1fl   lbl_80A6E920
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f16, 0x0068(s0)           # 00000068
    jal     func_80A6E930
    lw      a1, 0x002C($sp)
    lw      $ra, 0x0024($sp)
lbl_80A6E920:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80A6E930:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x101C          # a1 = 0000101C
    jal     func_800DCE14
    lw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6E978:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a2, 0x001C($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80A6EA00
    lw      a2, 0x001C($sp)
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800D6110
    sw      a2, 0x001C($sp)
    beq     v0, $zero, lbl_80A6EA00
    lw      a2, 0x001C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a2
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80A6E9E0
    nop
    beq     v0, $at, lbl_80A6E9F0
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6EA04
    lw      $ra, 0x0014($sp)
lbl_80A6E9E0:
    jal     func_80A6EA10
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A6EA04
    lw      $ra, 0x0014($sp)
lbl_80A6E9F0:
    jal     func_800DCE80
    addiu   a1, $zero, 0x101D          # a1 = 0000101D
    jal     func_80A6EAE0
    lw      a0, 0x0018($sp)
lbl_80A6EA00:
    lw      $ra, 0x0014($sp)
lbl_80A6EA04:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6EA10:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x101E          # a1 = 0000101E
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0015          # a1 = 00000015
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6EA48:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80A6EAD0
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80A6EAD0
    lw      $ra, 0x001C($sp)
    jal     func_800721CC
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EF6(v0)             # 8011B4C6
    lw      a0, 0x0020($sp)
    ori     t7, t6, 0x0200             # t7 = 00000200
    jal     func_80A6CC08
    sh      t7, 0x0EF6(v0)             # 8011B4C6
    jal     func_80079B54
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x002C          # a1 = 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x101F          # a1 = 0000101F
    jal     func_80A6EAE0
    lw      a0, 0x0020($sp)
    lw      $ra, 0x001C($sp)
lbl_80A6EAD0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A6EAE0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0016          # a1 = 00000016
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6EB00:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80A6EB5C
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80A6EB58
    lw      a0, 0x001C($sp)
    lw      a1, 0x0018($sp)
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x02C2(t7)             # 000002C2
    jal     func_80A6D5AC
    lw      a0, 0x0018($sp)
lbl_80A6EB58:
    lw      $ra, 0x0014($sp)
lbl_80A6EB5C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6EB68:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x1041          # t6 = 00001041
    sh      t6, 0x02B4(a0)             # 000002B4
    sw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0017          # a1 = 00000017
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6EBA0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     t6, %hi(var_80A703C0)      # t6 = 80A70000
    lw      t6, %lo(var_80A703C0)(t6)
    beq     t6, $zero, lbl_80A6EBCC
    nop
    jal     func_80A6EBF4
    nop
    beq     $zero, $zero, lbl_80A6EBE8
    lw      $ra, 0x0014($sp)
lbl_80A6EBCC:
    jal     func_80A6D080
    sw      a0, 0x0018($sp)
    mfc1    a2, $f0
    lw      a0, 0x0018($sp)
    jal     func_80022A68
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_80A6EBE8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6EBF4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6EC14:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_80A6EC7C
    lw      v1, 0x1C44(a1)             # 00001C44
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_800D6110
    sw      v1, 0x0018($sp)
    beq     v0, $zero, lbl_80A6EC7C
    lw      v1, 0x0018($sp)
    lw      a0, 0x0020($sp)
    jal     func_80A6DEDC
    sw      v1, 0x0018($sp)
    lw      v1, 0x0018($sp)
    lui     $at, 0x0080                # $at = 00800000
    lui     t8, %hi(var_80A6FC74)      # t8 = 80A70000
    lw      t6, 0x0670(v1)             # 00000670
    or      t7, t6, $at                # t7 = 00800000
    sw      t7, 0x0670(v1)             # 00000670
    lw      t8, %lo(var_80A6FC74)(t8)
    sw      t8, 0x0698(v1)             # 00000698
lbl_80A6EC7C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A6EC8C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t6, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    and     t7, t6, $at
    sw      t7, 0x0004(a0)             # 00000004
    jal     func_80A6CA90
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6ECCC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     t6, 0x02C7(a0)             # 000002C7
    beql    t6, $zero, lbl_80A6ECFC
    lw      $ra, 0x0014($sp)
    lw      t7, 0x0004(a0)             # 00000004
    addiu   a1, $zero, 0x001A          # a1 = 0000001A
    ori     t8, t7, 0x0001             # t8 = 00000001
    jal     func_80A6CB18
    sw      t8, 0x0004(a0)             # 00000004
    lw      $ra, 0x0014($sp)
lbl_80A6ECFC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6ED08:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    lui     t7, %hi(var_80A6FC78)      # t7 = 80A70000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    sll     t6, v0,  3
    addu    t7, t7, t6
    lbu     t7, %lo(var_80A6FC78)(t7)
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t7, $at, lbl_80A6ED48
    nop
    jal     func_80A6EE80
    nop
    beq     $zero, $zero, lbl_80A6ED48
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A6ED48:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6ED58:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x001A          # a1 = 0000001A
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6ED8C:
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    lw      v0, 0x02CC(a0)             # 000002CC
    beq     v1, v0, lbl_80A6EDAC
    addiu   t6, v0, 0x0014             # t6 = 00000014
    sltiu   $at, t6, 0x0100
    bne     $at, $zero, lbl_80A6EDAC
    sw      t6, 0x02CC(a0)             # 000002CC
    sw      v1, 0x02CC(a0)             # 000002CC
lbl_80A6EDAC:
    jr      $ra
    nop


func_80A6EDB4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_80A6ED8C
    lw      a0, 0x0018($sp)
    jal     func_80A6ED08
    lw      a0, 0x0018($sp)
    bne     v0, $zero, lbl_80A6EDF0
    lw      a0, 0x0018($sp)
    lbu     t6, 0x02C8(a0)             # 000002C8
    beql    t6, $zero, lbl_80A6EDF4
    lw      $ra, 0x0014($sp)
    jal     func_80A6EE00
    nop
lbl_80A6EDF0:
    lw      $ra, 0x0014($sp)
lbl_80A6EDF4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6EE00:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A6CA90
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x001B          # a1 = 0000001B
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6EE34:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_80A6ED8C
    lw      a0, 0x0018($sp)
    jal     func_80A6ED08
    lw      a0, 0x0018($sp)
    bne     v0, $zero, lbl_80A6EE70
    lw      a0, 0x0018($sp)
    lbu     t6, 0x02C8(a0)             # 000002C8
    bnel    t6, $zero, lbl_80A6EE74
    lw      $ra, 0x0014($sp)
    jal     func_80A6ED58
    nop
lbl_80A6EE70:
    lw      $ra, 0x0014($sp)
lbl_80A6EE74:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6EE80:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f6                   # $f6 = -8.00
    swc1    $f4, 0x0060(a0)            # 00000060
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f6, 0x0068(a0)            # 00000068
    jal     func_80A6CA90
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A6CB18
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6EEC8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v1, 0x001C(a0)             # 0000001C
    lui     t7, %hi(var_80A6FC78)      # t7 = 80A70000
    addiu   t7, t7, %lo(var_80A6FC78)  # t7 = 80A6FC78
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFF
    sll     t6, v1,  3
    addu    v0, t6, t7
    sb      $zero, 0x0000(v0)          # 00000000
    sw      $zero, 0x0004(v0)          # 00000004
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    jal     func_80A6D5AC
    sb      t8, 0x02C2(a0)             # 000002C2
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6EF10:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, %hi(var_80A703C0)     # $at = 80A70000
    sw      v0, %lo(var_80A703C0)($at)
    lh      t6, 0x02B6(s0)             # 000002B6
    lh      v1, 0x02BA(s0)             # 000002BA
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     v1, $zero, lbl_80A6EF5C
    sh      t7, 0x02B6(s0)             # 000002B6
    addiu   t8, v1, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x02BA(s0)             # 000002BA
lbl_80A6EF5C:
    lh      v0, 0x02BC(s0)             # 000002BC
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A6EF70
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x02BC(s0)             # 000002BC
lbl_80A6EF70:
    lh      v0, 0x02BE(s0)             # 000002BE
    beq     v0, $zero, lbl_80A6EF84
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x02BE(s0)             # 000002BE
    lh      v0, 0x02BE(s0)             # 000002BE
lbl_80A6EF84:
    bnel    v0, $zero, lbl_80A6EF94
    lbu     t2, 0x02C2(s0)             # 000002C2
    sb      t1, 0x02C5(s0)             # 000002C5
    lbu     t2, 0x02C2(s0)             # 000002C2
lbl_80A6EF94:
    beq     t2, $zero, lbl_80A6EFF0
    nop
    lw      t3, 0x02CC(s0)             # 000002CC
    bne     t3, $zero, lbl_80A6EFF0
    nop
    lbu     t4, 0x02C1(s0)             # 000002C1
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     t4, $at, lbl_80A6EFE0
    nop
    lwc1    $f4, 0x0024(s0)            # 00000024
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    swc1    $f4, 0x003C($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   a2, $zero, 0x0013          # a2 = 00000013
    swc1    $f6, 0x0040($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    jal     func_80013678
    swc1    $f8, 0x0044($sp)
lbl_80A6EFE0:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6F0E4
    lw      $ra, 0x0024($sp)
lbl_80A6EFF0:
    jal     func_80020F04
    lui     a1, 0x41F0                 # a1 = 41F00000
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0264(s0)             # 00000264
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lhu     t5, 0x02B4(s0)             # 000002B4
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A6D364
    sh      t5, 0x010E(s0)             # 0000010E
    addiu   a1, s0, 0x0268             # a1 = 00000268
    sw      a1, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t6, 0x02C3(s0)             # 000002C3
    lui     t7, %hi(var_80A703C0)      # t7 = 80A70000
    beql    t6, $zero, lbl_80A6F094
    lui     $at, 0x0001                # $at = 00010000
    lw      t7, %lo(var_80A703C0)(t7)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bne     t7, $zero, lbl_80A6F090
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at
    sw      a1, 0x0030($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x002C($sp)
    lbu     t8, 0x0114(s0)             # 00000114
    lw      a1, 0x0030($sp)
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t8, $zero, lbl_80A6F094
    lui     $at, 0x0001                # $at = 00010000
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x002C($sp)
lbl_80A6F090:
    lui     $at, 0x0001                # $at = 00010000
lbl_80A6F094:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x002C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    addiu   t0, $zero, 0x0007          # t0 = 00000007
    sw      t0, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      $ra, 0x0024($sp)
lbl_80A6F0E4:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80A6F0F4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80022930
    nop
    lui     $at, %hi(var_80A703C0)     # $at = 80A70000
    sw      v0, %lo(var_80A703C0)($at)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6F11C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0020($sp)
    lw      a0, 0x0024($sp)
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lh      a1, 0x0032(t6)             # 00000032
    sw      $zero, 0x0010($sp)
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    jal     func_80064508
    addiu   a0, a0, 0x00B6             # a0 = 000000B6
    lw      v1, 0x0024($sp)
    lh      v0, 0x00B6(v1)             # 000000B6
    sh      v0, 0x0032(v1)             # 00000032
    sh      v0, 0x082C(v1)             # 0000082C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A6F168:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    or      a1, s1, $zero              # a1 = 00000000
    lw      s0, 0x1C44(t6)             # 00001C44
    jal     func_80A6D004
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A6F210
    lui     v1, %hi(var_80A6FC78)      # v1 = 80A70000
    addiu   v1, v1, %lo(var_80A6FC78)  # v1 = 80A6FC78
    lw      t7, 0x0004(v1)             # 80A6FC7C
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     $at, 0x0200                # $at = 02000000
    sb      a0, 0x02C7(t7)             # 000002C7
    lw      t8, 0x000C(v1)             # 80A6FC84
    lui     t2, %hi(func_80A6F224)     # t2 = 80A70000
    addiu   t2, t2, %lo(func_80A6F224) # t2 = 80A6F224
    sb      a0, 0x02C7(t8)             # 000002C7
    lw      v0, 0x0670(s0)             # 00000670
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    sll     t9, v0,  7
    bgez    t9, lbl_80A6F20C
    or      t0, v0, $at                # t0 = 02000000
    jal     func_800C692C
    sw      t0, 0x0670(s0)             # 00000670
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80A6F11C
    or      a1, s0, $zero              # a1 = 00000000
    sw      s1, 0x0698(s0)             # 00000698
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x10BE          # a1 = 000010BE
    jal     func_800DCE14
    or      a2, s1, $zero              # a2 = 00000000
    lui     t1, %hi(func_80A6F2CC)     # t1 = 80A70000
    addiu   t1, t1, %lo(func_80A6F2CC) # t1 = 80A6F2CC
    beq     $zero, $zero, lbl_80A6F210
    sw      t1, 0x0264(s1)             # 00000264
lbl_80A6F20C:
    sw      t2, 0x0264(s1)             # 00000264
lbl_80A6F210:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A6F224:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    lui     $at, 0x0200                # $at = 02000000
    lw      s0, 0x1C44(t6)             # 00001C44
    lw      v0, 0x0670(s0)             # 00000670
    or      a0, s0, $zero              # a0 = 00000000
    sll     t7, v0,  7
    bgez    t7, lbl_80A6F298
    or      t8, v0, $at                # t8 = 02000000
    sw      t8, 0x0670(s0)             # 00000670
    jal     func_800C692C
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80A6F11C
    or      a1, s0, $zero              # a1 = 00000000
    sw      s1, 0x0698(s0)             # 00000698
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x10BE          # a1 = 000010BE
    jal     func_800DCE14
    or      a2, s1, $zero              # a2 = 00000000
    lui     t9, %hi(func_80A6F2CC)     # t9 = 80A70000
    addiu   t9, t9, %lo(func_80A6F2CC) # t9 = 80A6F2CC
    beq     $zero, $zero, lbl_80A6F2B8
    sw      t9, 0x0264(s1)             # 00000264
lbl_80A6F298:
    jal     func_80A6D004
    or      a1, s1, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80A6F2BC
    lw      $ra, 0x001C($sp)
    lw      t0, 0x0670(s0)             # 00000670
    lui     $at, 0x0080                # $at = 00800000
    or      t1, t0, $at                # t1 = 00800000
    sw      t1, 0x0670(s0)             # 00000670
lbl_80A6F2B8:
    lw      $ra, 0x001C($sp)
lbl_80A6F2BC:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A6F2CC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lw      t6, 0x0024($sp)
    sb      v0, 0x001F($sp)
    lw      a0, 0x0020($sp)
    jal     func_80A6F11C
    lw      a1, 0x1C44(t6)             # 00001C44
    lbu     t7, 0x001F($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a0, 0x0024($sp)
    bnel    t7, $at, lbl_80A6F34C
    lw      $ra, 0x0014($sp)
    jal     func_800DD400
    addiu   a1, $zero, 0x002E          # a1 = 0000002E
    lui     v0, %hi(var_80A6FC7C)      # v0 = 80A70000
    lw      v0, %lo(var_80A6FC7C)(v0)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x00A0          # t9 = 000000A0
    beql    v0, $zero, lbl_80A6F338
    lw      v0, 0x0020($sp)
    sb      t8, 0x02C8(v0)             # 80A702C8
    lw      v0, 0x0020($sp)
lbl_80A6F338:
    lui     t0, %hi(func_80A6F358)     # t0 = 80A70000
    addiu   t0, t0, %lo(func_80A6F358) # t0 = 80A6F358
    sh      t9, 0x02BA(v0)             # 80A702BA
    sw      t0, 0x0264(v0)             # 80A70264
    lw      $ra, 0x0014($sp)
lbl_80A6F34C:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A6F358:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lw      a1, 0x1C44(s1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A6F11C
    sw      a1, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, s1, $at
    lhu     v0, 0x04C6(v1)             # 000004C6
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v0, $at, lbl_80A6F3E4
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sh      t6, 0x04C6($at)            # 000104C6
    lw      t7, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x41D0                 # a2 = 41D00000
    jal     func_80022A68
    sw      s0, 0x0698(t7)             # 00000698
    lui     t9, %hi(func_80A6F5C8)     # t9 = 80A70000
    addiu   t8, $zero, 0x102D          # t8 = 0000102D
    addiu   t9, t9, %lo(func_80A6F5C8) # t9 = 80A6F5C8
    sh      t8, 0x02B4(s0)             # 000002B4
    beq     $zero, $zero, lbl_80A6F5B4
    sw      t9, 0x0264(s0)             # 00000264
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_80A6F3E4:
    bnel    v0, $at, lbl_80A6F440
    lbu     v0, 0x03DC(v1)             # 000003DC
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sh      t0, 0x04C6($at)            # 000104C6
    lw      t1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x41D0                 # a2 = 41D00000
    jal     func_80022A68
    sw      s0, 0x0698(t1)             # 00000698
    lui     t3, %hi(func_80A6F73C)     # t3 = 80A70000
    addiu   t2, $zero, 0x10BF          # t2 = 000010BF
    addiu   t3, t3, %lo(func_80A6F73C) # t3 = 80A6F73C
    sh      t2, 0x02B4(s0)             # 000002B4
    beq     $zero, $zero, lbl_80A6F5B4
    sw      t3, 0x0264(s0)             # 00000264
    lbu     v0, 0x03DC(v1)             # 000003DC
lbl_80A6F440:
    addiu   $at, $zero, 0x002B         # $at = 0000002B
    beq     v0, $at, lbl_80A6F46C
    addiu   $at, $zero, 0x002D         # $at = 0000002D
    beq     v0, $at, lbl_80A6F4B8
    addiu   $at, $zero, 0x002E         # $at = 0000002E
    beq     v0, $at, lbl_80A6F4F0
    addiu   $at, $zero, 0x0030         # $at = 00000030
    beq     v0, $at, lbl_80A6F554
    nop
    beq     $zero, $zero, lbl_80A6F5B8
    lw      $ra, 0x001C($sp)
lbl_80A6F46C:
    lui     s0, %hi(var_80A6FC78)      # s0 = 80A70000
    addiu   s0, s0, %lo(var_80A6FC78)  # s0 = 80A6FC78
    lw      v0, 0x0004(s0)             # 80A6FC7C
    beq     v0, $zero, lbl_80A6F484
    nop
    sb      $zero, 0x02C8(v0)          # 000002C8
lbl_80A6F484:
    jal     func_800C9B74
    addiu   a0, $zero, 0x4836          # a0 = 00004836
    bnel    v0, $zero, lbl_80A6F5B8
    lw      $ra, 0x001C($sp)
    lw      v0, 0x000C(s0)             # 80A6FC84
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    beq     v0, $zero, lbl_80A6F4A8
    nop
    sb      t4, 0x02C8(v0)             # 000002C8
lbl_80A6F4A8:
    jal     func_800D5FEC
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A6F5B8
    lw      $ra, 0x001C($sp)
lbl_80A6F4B8:
    lui     v0, %hi(var_80A6FC84)      # v0 = 80A70000
    lw      v0, %lo(var_80A6FC84)(v0)
    beq     v0, $zero, lbl_80A6F4CC
    nop
    sb      $zero, 0x02C8(v0)          # 80A702C8
lbl_80A6F4CC:
    jal     func_800C9B74
    addiu   a0, $zero, 0x4836          # a0 = 00004836
    bnel    v0, $zero, lbl_80A6F5B8
    lw      $ra, 0x001C($sp)
    jal     func_800D5FEC
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t5, $zero, 0x00A0          # t5 = 000000A0
    beq     $zero, $zero, lbl_80A6F5B4
    sh      t5, 0x02BA(s0)             # 80A6FF32
lbl_80A6F4F0:
    lh      v0, 0x02BA(s0)             # 80A6FF32
    beq     v0, $zero, lbl_80A6F504
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80A6F5B4
    sh      t6, 0x02BA(s0)             # 80A6FF32
lbl_80A6F504:
    jal     func_800646F0
    addiu   a0, $zero, 0x4827          # a0 = 00004827
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sh      t7, 0x04C6($at)            # 000104C6
    lw      t8, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 80A6FC78
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x41D0                 # a2 = 41D00000
    jal     func_80022A68
    sw      s0, 0x0698(t8)             # 00000698
    lui     t0, %hi(func_80A6F5C8)     # t0 = 80A70000
    addiu   t9, $zero, 0x102D          # t9 = 0000102D
    addiu   t0, t0, %lo(func_80A6F5C8) # t0 = 80A6F5C8
    sh      t9, 0x02B4(s0)             # 80A6FF2C
    beq     $zero, $zero, lbl_80A6F5B4
    sw      t0, 0x0264(s0)             # 80A6FEDC
lbl_80A6F554:
    jal     func_800C9B74
    addiu   a0, $zero, 0x4836          # a0 = 00004836
    bne     v0, $zero, lbl_80A6F5B4
    addiu   t2, $zero, 0x00A0          # t2 = 000000A0
    lui     v0, %hi(var_80A6FC7C)      # v0 = 80A70000
    lw      v0, %lo(var_80A6FC7C)(v0)
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    beq     v0, $zero, lbl_80A6F580
    nop
    sb      t1, 0x02C8(v0)             # 80A702C8
lbl_80A6F580:
    jal     func_800C2C90
    sh      t2, 0x02BA(s0)             # 80A6FF32
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    jal     func_800C2D74
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t3, $zero, 0x002A          # t3 = 0000002A
    sb      t3, 0x03DC($at)            # 000103DC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sb      t4, 0x04BF($at)            # 000104BF
lbl_80A6F5B4:
    lw      $ra, 0x001C($sp)
lbl_80A6F5B8:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80A6F5C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     t6, %hi(var_80A703C0)      # t6 = 80A70000
    lw      t6, %lo(var_80A703C0)(t6)
    lui     t7, %hi(func_80A6F608)     # t7 = 80A70000
    addiu   t7, t7, %lo(func_80A6F608) # t7 = 80A6F608
    beq     t6, $zero, lbl_80A6F5F0
    nop
    beq     $zero, $zero, lbl_80A6F5F8
    sw      t7, 0x0264(a0)             # 00000264
lbl_80A6F5F0:
    jal     func_80022A68
    lui     a2, 0x41D0                 # a2 = 41D00000
lbl_80A6F5F8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6F608:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80A6F64C
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80A6F648
    lw      a0, 0x0018($sp)
    jal     func_80A6F658
    lw      a1, 0x001C($sp)
lbl_80A6F648:
    lw      $ra, 0x0014($sp)
lbl_80A6F64C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6F658:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x102E          # a1 = 0000102E
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80A6F694)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A6F694) # t6 = 80A6F694
    sw      t6, 0x0264(t7)             # 00000264
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6F694:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80A6F730
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80A6F72C
    lw      t6, 0x001C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, t6
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t7, 0x001C($sp)
    beql    v0, $zero, lbl_80A6F6FC
    lw      v0, 0x1C44(t7)             # 00001C44
    beql    v0, $at, lbl_80A6F720
    lw      t3, 0x0018($sp)
    beq     $zero, $zero, lbl_80A6F730
    lw      $ra, 0x0014($sp)
    lw      v0, 0x1C44(t7)             # 00001C44
lbl_80A6F6FC:
    lui     t0, %hi(func_80A6F168)     # t0 = 80A70000
    addiu   t0, t0, %lo(func_80A6F168) # t0 = 80A6F168
    lbu     t8, 0x0682(v0)             # 00010682
    ori     t9, t8, 0x0020             # t9 = 00000020
    sb      t9, 0x0682(v0)             # 00010682
    lw      t1, 0x0018($sp)
    beq     $zero, $zero, lbl_80A6F72C
    sw      t0, 0x0264(t1)             # 00000264
    lw      t3, 0x0018($sp)
lbl_80A6F720:
    lui     t2, %hi(func_80A6F914)     # t2 = 80A70000
    addiu   t2, t2, %lo(func_80A6F914) # t2 = 80A6F914
    sw      t2, 0x0264(t3)             # 00000264
lbl_80A6F72C:
    lw      $ra, 0x0014($sp)
lbl_80A6F730:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6F73C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     t6, %hi(var_80A703C0)      # t6 = 80A70000
    lw      t6, %lo(var_80A703C0)(t6)
    lui     t7, %hi(func_80A6F77C)     # t7 = 80A70000
    addiu   t7, t7, %lo(func_80A6F77C) # t7 = 80A6F77C
    beq     t6, $zero, lbl_80A6F764
    nop
    beq     $zero, $zero, lbl_80A6F76C
    sw      t7, 0x0264(a0)             # 00000264
lbl_80A6F764:
    jal     func_80022A68
    lui     a2, 0x41D0                 # a2 = 41D00000
lbl_80A6F76C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6F77C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80A6F7F8
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    lw      a0, 0x0024($sp)
    beq     v0, $zero, lbl_80A6F7F4
    lui     $at, 0x41D0                # $at = 41D00000
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x59F1(t6)            # 8011A60F
    mtc1    $at, $f0                   # $f0 = 26.00
    lui     a2, %hi(var_80A6FCF4)      # a2 = 80A70000
    sll     t7, t6,  2
    addu    a2, a2, t7
    mfc1    a3, $f0
    lw      a2, %lo(var_80A6FCF4)(a2)
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BD4
    swc1    $f0, 0x0010($sp)
    lw      t9, 0x0020($sp)
    lui     t8, %hi(func_80A6F804)     # t8 = 80A70000
    addiu   t8, t8, %lo(func_80A6F804) # t8 = 80A6F804
    sw      t8, 0x0264(t9)             # 00000264
lbl_80A6F7F4:
    lw      $ra, 0x001C($sp)
lbl_80A6F7F8:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A6F804:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BB0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80A6F838
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80A6F878)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A6F878) # t6 = 80A6F878
    sw      $zero, 0x0118(a0)          # 00000118
    beq     $zero, $zero, lbl_80A6F868
    sw      t6, 0x0264(a0)             # 00000264
lbl_80A6F838:
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     t7, -0x59F1(t7)            # 8011A60F
    lui     $at, 0x41D0                # $at = 41D00000
    mtc1    $at, $f0                   # $f0 = 26.00
    lui     a2, %hi(var_80A6FCF4)      # a2 = 80A70000
    sll     t8, t7,  2
    addu    a2, a2, t8
    mfc1    a3, $f0
    lw      a2, %lo(var_80A6FCF4)(a2)
    lw      a1, 0x0024($sp)
    jal     func_80022BD4
    swc1    $f0, 0x0010($sp)
lbl_80A6F868:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A6F878:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80A6F908
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80A6F904
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lbu     v1, 0x003F(a0)             # 8011A60F
    lui     t9, %hi(func_80A6F914)     # t9 = 80A70000
    slti    $at, v1, 0x0003
    beq     $at, $zero, lbl_80A6F8D0
    or      a1, v1, $zero              # a1 = 00000000
    addiu   t6, v1, 0x0001             # t6 = 00000001
    sb      t6, 0x003F(a0)             # 8011A60F
lbl_80A6F8D0:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    a1, $at, lbl_80A6F8FC
    lw      a0, 0x0018($sp)
    lhu     t7, 0x0EF2(a0)             # 8011B4C2
    lw      t0, 0x0018($sp)
    addiu   t9, t9, %lo(func_80A6F914) # t9 = 80A6F914
    ori     t8, t7, 0x0080             # t8 = 00000080
    sh      t8, 0x0EF2(a0)             # 8011B4C2
    beq     $zero, $zero, lbl_80A6F904
    sw      t9, 0x0264(t0)             # 00000264
    lw      a0, 0x0018($sp)
lbl_80A6F8FC:
    jal     func_80A6F658
    lw      a1, 0x001C($sp)
lbl_80A6F904:
    lw      $ra, 0x0014($sp)
lbl_80A6F908:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6F914:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v0, %hi(var_80A6FC78)      # v0 = 80A70000
    addiu   v0, v0, %lo(var_80A6FC78)  # v0 = 80A6FC78
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0004(v0)             # 80A6FC7C
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    beql    t6, $zero, lbl_80A6F948
    lw      t8, 0x000C(v0)             # 80A6FC84
    sb      t7, 0x0000(v0)             # 80A6FC78
    lw      t8, 0x000C(v0)             # 80A6FC84
lbl_80A6F948:
    beql    t8, $zero, lbl_80A6F958
    lbu     t0, 0x0000(v0)             # 80A6FC78
    sb      t9, 0x0008(v0)             # 80A6FC80
    lbu     t0, 0x0000(v0)             # 80A6FC78
lbl_80A6F958:
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    bnel    v1, t0, lbl_80A6F984
    lw      $ra, 0x0014($sp)
    lbu     t1, 0x0008(v0)             # 80A6FC80
    bnel    v1, t1, lbl_80A6F984
    lw      $ra, 0x0014($sp)
    jal     func_800C6968
    nop
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_80A6F984:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A6F990:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80A703C0)     # $at = 80A70000
    sw      v0, %lo(var_80A703C0)($at)
    lh      t6, 0x02B6(a0)             # 000002B6
    lui     $at, %hi(var_80A6FE84)     # $at = 80A70000
    lw      t9, 0x0264(a0)             # 00000264
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x02B6(a0)             # 000002B6
    lwc1    $f4, %lo(var_80A6FE84)($at)
    lui     $at, 0xC2B4                # $at = C2B40000
    mtc1    $at, $f6                   # $f6 = -90.00
    lui     $at, 0x43E1                # $at = 43E10000
    mtc1    $at, $f8                   # $f8 = 450.00
    swc1    $f4, 0x0038(a0)            # 00000038
    swc1    $f6, 0x003C(a0)            # 0000003C
    swc1    $f8, 0x0040(a0)            # 00000040
    jalr    $ra, t9
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    lhu     t8, 0x02B4(a0)             # 000002B4
    swc1    $f10, 0x0090(a0)           # 00000090
    sh      t8, 0x010E(a0)             # 0000010E
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A6FA14:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80A6FA30:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lw      t6, 0x0030($sp)
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    lui     t7, 0x8012                 # t7 = 80120000
    lw      a2, 0x0000(t6)             # 00000000
    bne     a1, $at, lbl_80A6FAEC
    or      s0, a2, $zero              # s0 = 00000000
    lhu     t7, -0x4B3A(t7)            # 8011B4C6
    andi    t8, t7, 0x0200             # t8 = 00000000
    beql    t8, $zero, lbl_80A6FAF0
    lw      $ra, 0x001C($sp)
    jal     func_8007E298
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800AA6EC
    nop
    addiu   a0, $zero, 0xC000          # a0 = FFFFC000
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t1, 0x0030($sp)
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x14C8             # t4 = 060014C8
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    jal     func_800AA724
    nop
lbl_80A6FAEC:
    lw      $ra, 0x001C($sp)
lbl_80A6FAF0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A6FB00:
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xE200                 # t6 = E2000000
    ori     t6, t6, 0x001C             # t6 = E200001C
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    lui     t7, 0xC810                 # t7 = C8100000
    ori     t7, t7, 0x49D8             # t7 = C81049D8
    sw      t7, 0x0004(v1)             # FFFFFFF4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    lui     t8, 0xFB00                 # t8 = FB000000
    andi    t9, a1, 0x00FF             # t9 = 00000000
    sw      t9, 0x000C(v1)             # FFFFFFFC
    sw      t8, 0x0008(v1)             # FFFFFFF8
    lui     t0, 0xDF00                 # t0 = DF000000
    sw      t0, 0x0010(v1)             # 00000000
    sw      $zero, 0x0014(v1)          # 00000004
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra
    nop


func_80A6FB4C:
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xFB00                 # t6 = FB000000
    andi    t7, a1, 0x00FF             # t7 = 00000000
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    sw      t7, 0x0004(v1)             # FFFFFFF4
    lui     t8, 0xDF00                 # t8 = DF000000
    sw      t8, 0x0008(v1)             # FFFFFFF8
    sw      $zero, 0x000C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra
    nop


func_80A6FB80:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x004C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x003C($sp)
    lw      t7, 0x02CC(s0)             # 000002CC
    lw      v1, 0x003C($sp)
    sltiu   $at, t7, 0x00FF
    beql    $at, $zero, lbl_80A6FBF8
    lw      v0, 0x02C0(v1)             # 000002C0
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0030             # t9 = DB060030
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t0, 0x004C($sp)
    lw      a1, 0x02CC(s0)             # 000002CC
    lw      a0, 0x0000(t0)             # 00000000
    jal     func_80A6FB00
    sw      v0, 0x0034($sp)
    lw      a2, 0x0034($sp)
    sw      v0, 0x0004(a2)             # 00000004
    beq     $zero, $zero, lbl_80A6FC2C
    lw      a1, 0x0140(s0)             # 00000140
    lw      v0, 0x02C0(v1)             # 000002C0
lbl_80A6FBF8:
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0030             # t2 = DB060030
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(v1)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t3, 0x004C($sp)
    lw      a1, 0x02CC(s0)             # 000002CC
    lw      a0, 0x0000(t3)             # 00000000
    jal     func_80A6FB4C
    sw      v0, 0x0030($sp)
    lw      a2, 0x0030($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
lbl_80A6FC2C:
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t4, %hi(func_80A6FA14)     # t4 = 80A70000
    lui     t5, %hi(func_80A6FA30)     # t5 = 80A70000
    addiu   t5, t5, %lo(func_80A6FA30) # t5 = 80A6FA30
    addiu   t4, t4, %lo(func_80A6FA14) # t4 = 80A6FA14
    sw      t4, 0x0010($sp)
    sw      t5, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x004C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop
    nop

.section .data

var_80A6FC70: .word 0x00000000
var_80A6FC74: .word 0x00000000
var_80A6FC78: .word 0x00000000
var_80A6FC7C: .word 0x00000000, 0x00000000
var_80A6FC84: .word 0x00000000
var_80A6FC88: .word 0x01150500, 0x02000015, 0x010A0000, 0x000002F0
.word func_80A6CC8C
.word func_80A6CFD8
.word func_80A6EF10
.word func_80A6FB80
var_80A6FCA8: .word \
0x0A110900, 0x01000000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x00080030, 0x00000000, 0x00000000
var_80A6FCD4: .word \
0x00000000, 0x00000200, 0xF1F2F400, 0x00000000, \
0x00000000, 0x00000104, 0x02020804, 0x00000000
var_80A6FCF4: .word 0x0000004C, 0x0000004D, 0x0000003E, 0x0000004E
var_80A6FD04: .word \
0x0600051C, 0x02000000, 0x00000000, 0x060007A4, \
0x02000000, 0x00000000, 0x06000E10, 0x00000000, \
0x00000000, 0x06006A98, 0x02000000, 0x00000000, \
0x06006D84, 0x02000000, 0x00000000, 0x06007128, \
0x02000000, 0x00000000, 0x06008174, 0x00000000, \
0x00000000, 0x06008374, 0x00000000, 0x00000000, \
0x06008E14, 0x00000000, 0x00000000, 0x06008B9C, \
0x00000000, 0x00000000
var_80A6FD7C: .word func_80A6D5F4
.word func_80A6D6C0
.word func_80A6D7A4
.word func_80A6D8D0
.word func_80A6D958
.word func_80A6DA1C
.word func_80A6DABC
.word func_80A6DB60
.word func_80A6DD60
.word func_80A6DDC4
.word func_80A6DF14
.word func_80A6E14C
.word func_80A6E454
.word func_80A6E4C8
.word func_80A6E58C
.word func_80A6E624
.word func_80A6E6AC
.word func_80A6E778
.word func_80A6E7FC
.word func_80A6E894
.word func_80A6E978
.word func_80A6EA48
.word func_80A6EB00
.word func_80A6EBA0
.word func_80A6EC14
.word func_80A6ECCC
.word func_80A6EDB4
.word func_80A6EE34
.word func_80A6EEC8
var_80A6FDF0: .word 0x801F0002, 0x304C001E, 0x00000000, 0x00000000

.section .rodata

var_80A6FE00: .word var_80A6CB58
.word lbl_80A6CB60
.word lbl_80A6CB60
.word var_80A6CB58
.word var_80A6CB58
.word lbl_80A6CB60
.word lbl_80A6CB60
.word lbl_80A6CB60
.word lbl_80A6CB60
.word var_80A6CB58
.word lbl_80A6CB60
.word lbl_80A6CB60
.word lbl_80A6CB60
.word lbl_80A6CB60
.word lbl_80A6CB60
.word lbl_80A6CB60
.word var_80A6CB58
.word var_80A6CB58
.word var_80A6CB58
.word var_80A6CB58
.word var_80A6CB58
.word var_80A6CB58
.word var_80A6CB58
.word var_80A6CB58
.word var_80A6CB58
.word var_80A6CB58
.word var_80A6CB58
.word var_80A6CB58
.word var_80A6CB58
var_80A6FE74: .word 0x40490FDB
var_80A6FE78: .word 0x4499C000
var_80A6FE7C: .word 0x40490FDB
var_80A6FE80: .word 0x40490FDB
var_80A6FE84: .word 0x4499C000, 0x00000000, 0x00000000

.bss

var_80A703C0: .space 0x10
