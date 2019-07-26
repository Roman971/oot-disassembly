.section .text
func_80913EA0:
    sw      a1, 0x0248(a0)             # 00000248
    jr      $ra
    nop


func_80913EAC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sdc1    $f20, 0x0010($sp)
    sw      s1, 0x0020($sp)
    mtc1    a2, $f20                   # $f20 = 0.00
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x001C($sp)
    lw      s0, 0x1C4C(a0)             # 00001C4C
    beql    s0, $zero, lbl_80913F28
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
lbl_80913ED8:
    or      a0, s1, $zero              # a0 = 00000000
    beq     t6, $zero, lbl_80913EEC
    nop
    b       lbl_80913F1C
    lw      s0, 0x0124(s0)             # 00000124
lbl_80913EEC:
    jal     func_800214AC
    or      a1, s0, $zero              # a1 = 00000000
    lh      t7, 0x001C(s0)             # 0000001C
    bnel    t7, $zero, lbl_80913F1C
    lw      s0, 0x0124(s0)             # 00000124
    c.le.s  $f0, $f20
    nop
    bc1fl   lbl_80913F1C
    lw      s0, 0x0124(s0)             # 00000124
    b       lbl_80913F28
    or      v0, s0, $zero              # v0 = 00000000
    lw      s0, 0x0124(s0)             # 00000124
lbl_80913F1C:
    bnel    s0, $zero, lbl_80913ED8
    lh      t6, 0x001C(s0)             # 0000001C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80913F28:
    lw      $ra, 0x0024($sp)
    ldc1    $f20, 0x0010($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80913F40:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s5, 0x006C($sp)
    sll     s5, a2, 16
    sw      s3, 0x0064($sp)
    sw      s1, 0x005C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sra     s5, s5, 16
    sw      $ra, 0x007C($sp)
    sw      s8, 0x0078($sp)
    sw      s7, 0x0074($sp)
    sw      s6, 0x0070($sp)
    sw      s4, 0x0068($sp)
    sw      s2, 0x0060($sp)
    sw      s0, 0x0058($sp)
    sdc1    $f28, 0x0050($sp)
    sdc1    $f26, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    sw      a2, 0x0088($sp)
    lui     $at, %hi(var_809177C0)     # $at = 80910000
    lwc1    $f28, %lo(var_809177C0)($at)
    lui     $at, %hi(var_809177C4)     # $at = 80910000
    lwc1    $f26, %lo(var_809177C4)($at)
    lui     $at, %hi(var_809177C8)     # $at = 80910000
    lwc1    $f24, %lo(var_809177C8)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    mtc1    $zero, $f22                # $f22 = 0.00
    or      s2, s1, $zero              # s2 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s4, s3, 0x1C24             # s4 = 00001C24
    addiu   s8, $zero, 0x00FF          # s8 = 000000FF
    addiu   s7, $zero, 0x0028          # s7 = 00000028
    addiu   s6, $zero, 0x00FF          # s6 = 000000FF
    lwc1    $f4, 0x0028(s1)            # 00000028
lbl_80913FD4:
    lw      a3, 0x0024(s1)             # 00000024
    or      a0, s4, $zero              # a0 = 00001C24
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s1)            # 0000002C
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0069          # a2 = 00000069
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    beq     v0, $zero, lbl_8091408C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    mtc1    s0, $f8                    # $f8 = 0.00
    multu   s0, s7
    sw      v0, 0x011C(s2)             # 0000011C
    cvt.s.w $f0, $f8
    sw      s2, 0x0118(v0)             # 00000118
    addiu   a0, s0, 0x0001             # a0 = 00000001
    sll     a1, s0,  1
    sw      s1, 0x0314(v0)             # 00000314
    sh      a0, 0x025C(v0)             # 0000025C
    mul.s   $f10, $f0, $f26
    swc1    $f20, 0x0050(v0)           # 00000050
    mflo    t6
    mul.s   $f16, $f0, $f28
    subu    v1, s6, t6
    andi    t7, v1, 0x00FF             # t7 = 00000000
    sh      t7, 0x025E(v0)             # 0000025E
    sb      v1, 0x028F(v0)             # 0000028F
    sub.s   $f2, $f24, $f10
    addiu   a1, a1, 0x0002             # a1 = 00000002
    or      s2, v0, $zero              # s2 = 00000000
    sub.s   $f12, $f20, $f16
    swc1    $f2, 0x0054(v0)            # 00000054
    swc1    $f2, 0x0278(v0)            # 00000278
    swc1    $f12, 0x0058(v0)           # 00000058
    beq     s5, $zero, lbl_80914080
    swc1    $f12, 0x027C(v0)           # 0000027C
    sb      $zero, 0x028F(v0)          # 0000028F
    swc1    $f22, 0x027C(v0)           # 0000027C
    swc1    $f22, 0x0278(v0)           # 00000278
lbl_80914080:
    sh      a0, 0x0260(v0)             # 00000260
    sw      a1, 0x0250(v0)             # 00000250
    sb      s8, 0x0290(v0)             # 00000290
lbl_8091408C:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, $at, lbl_80913FD4
    lwc1    $f4, 0x0028(s1)            # 00000028
    lw      $ra, 0x007C($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    ldc1    $f24, 0x0040($sp)
    ldc1    $f26, 0x0048($sp)
    ldc1    $f28, 0x0050($sp)
    lw      s0, 0x0058($sp)
    lw      s1, 0x005C($sp)
    lw      s2, 0x0060($sp)
    lw      s3, 0x0064($sp)
    lw      s4, 0x0068($sp)
    lw      s5, 0x006C($sp)
    lw      s6, 0x0070($sp)
    lw      s7, 0x0074($sp)
    lw      s8, 0x0078($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_809140DC:
    lw      t6, 0x011C(a0)             # 0000011C
    or      v0, a0, $zero              # v0 = 00000000
    addiu   a2, $zero, 0x000B          # a2 = 0000000B
    beq     t6, $zero, lbl_8091411C
    addiu   a1, $zero, 0x0069          # a1 = 00000069
    lw      v1, 0x011C(v0)             # 0000011C
lbl_809140F4:
    lh      t7, 0x0000(v1)             # 00000000
    bnel    a1, t7, lbl_80914110
    lw      t8, 0x011C(v1)             # 0000011C
    sw      $zero, 0x0118(v1)          # 00000118
    sw      $zero, 0x011C(v0)          # 0000011C
    sh      a2, 0x001C(v1)             # 0000001C
    lw      t8, 0x011C(v1)             # 0000011C
lbl_80914110:
    or      v0, v1, $zero              # v0 = 00000000
    bnel    t8, $zero, lbl_809140F4
    lw      v1, 0x011C(v0)             # 0000011C
lbl_8091411C:
    sw      $zero, 0x011C(a0)          # 0000011C
    jr      $ra
    nop


func_80914128:
    addiu   $sp, $sp, 0xFE18           # $sp -= 0x1E8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x01EC($sp)
    lui     a1, %hi(var_809176C4)      # a1 = 80910000
    addiu   a1, a1, %lo(var_809176C4)  # a1 = 809176C4
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x01E0             # t7 = 000001E0
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x0444             # a3 = 06000444
    addiu   a2, a2, 0x1A30             # a2 = 06001A30
    lw      a0, 0x01EC($sp)
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sw      $zero, 0x0244(s0)          # 00000244
    sb      t9, 0x00AF(s0)             # 000000AF
    addiu   a1, s0, 0x029C             # a1 = 0000029C
    sw      a1, 0x0030($sp)
    jal     func_8004A484
    lw      a0, 0x01EC($sp)
    lui     a3, %hi(var_809176B4)      # a3 = 80910000
    addiu   t0, s0, 0x02BC             # t0 = 000002BC
    lw      a1, 0x0030($sp)
    sw      t0, 0x0010($sp)
    addiu   a3, a3, %lo(var_809176B4)  # a3 = 809176B4
    lw      a0, 0x01EC($sp)
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    lh      t1, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    sra     t2, t1,  8
    andi    t3, v0, 0x0080             # t3 = 00000000
    beq     t3, $zero, lbl_809141E4
    sh      t2, 0x0258(s0)             # 00000258
    ori     t4, v0, 0xFF00             # t4 = 0000FF00
    sh      t4, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
lbl_809141E4:
    bgez    v0, lbl_80914200
    lui     a1, 0x4348                 # a1 = 43480000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    jal     func_8001EC20
    lui     a3, 0x420C                 # a3 = 420C0000
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80914200:
    andi    t5, v0, 0xFF00             # t5 = 00000000
    beq     t5, $zero, lbl_8091448C
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lw      t7, 0x02B8(s0)             # 000002B8
    sw      $zero, 0x0250(s0)          # 00000250
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    swc1    $f4, 0x0278(s0)            # 00000278
    swc1    $f6, 0x027C(s0)            # 0000027C
    sb      t6, 0x0015(t7)             # 00000015
    lw      t9, 0x02B8(s0)             # 000002B8
    lui     t8, 0xFFCF                 # t8 = FFCF0000
    ori     t8, t8, 0xFFFF             # t8 = FFCFFFFF
    sw      t8, 0x0000(t9)             # 00000000
    lw      t1, 0x02B8(s0)             # 000002B8
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    lui     $at, 0x41A0                # $at = 41A00000
    sb      t0, 0x0005(t1)             # 00000005
    lh      t2, 0x0258(s0)             # 00000258
    mtc1    $at, $f16                  # $f16 = 20.00
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    mtc1    t2, $f8                    # $f8 = 0.00
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t3, 0x028F(s0)             # 0000028F
    cvt.s.w $f10, $f8
    sw      $zero, 0x024C(s0)          # 0000024C
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f18, $f10, $f16
    jal     func_80020F88
    swc1    $f18, 0x0268(s0)           # 00000268
    lh      t4, 0x001C(s0)             # 0000001C
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t5, t4, 0x0005             # t5 = 00000005
    sltiu   $at, t5, 0x0005
    beq     $at, $zero, lbl_80914470
    sll     t5, t5,  2
    lui     $at, %hi(var_809177CC)     # $at = 80910000
    addu    $at, $at, t5
    lw      t5, %lo(var_809177CC)($at)
    jr      t5
    nop
var_809142B0:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     t7, %hi(var_80917610)      # t7 = 80910000
    addiu   t6, $zero, 0x001C          # t6 = 0000001C
    add.s   $f8, $f4, $f6
    addiu   t7, t7, %lo(var_80917610)  # t7 = 80917610
    sb      t6, 0x0117(s0)             # 00000117
    sw      t7, 0x0098(s0)             # 00000098
    sb      v0, 0x0292(s0)             # 00000292
    sb      v0, 0x028E(s0)             # 0000028E
    swc1    $f8, 0x0028(s0)            # 00000028
    jal     func_80914A08
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0004(s0)             # 00000004
    ori     t0, t9, 0x4000             # t0 = 00004000
    b       lbl_80914470
    sw      t0, 0x0004(s0)             # 00000004
var_809142F8:
    lw      t4, 0x02B8(s0)             # 000002B8
    lui     t2, %hi(var_80917630)      # t2 = 80910000
    addiu   t1, $zero, 0x0024          # t1 = 00000024
    addiu   t2, t2, %lo(var_80917630)  # t2 = 80917630
    sb      t1, 0x0117(s0)             # 00000117
    sw      t2, 0x0098(s0)             # 00000098
    sb      v0, 0x0290(s0)             # 00000290
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x0004(t4)             # 00000004
    lw      a0, 0x01EC($sp)
    jal     func_80915620
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_80914474
    lw      t4, 0x0024(s0)             # 00000024
var_80914330:
    lh      t7, 0x0258(s0)             # 00000258
    lui     t6, %hi(var_80917650)      # t6 = 80910000
    addiu   t5, $zero, 0x001D          # t5 = 0000001D
    addiu   t6, t6, %lo(var_80917650)  # t6 = 80917650
    sb      t5, 0x0117(s0)             # 00000117
    sw      t6, 0x0098(s0)             # 00000098
    sb      t7, 0x028C(s0)             # 0000028C
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    addiu   t1, $sp, 0x0048            # t1 = FFFFFE60
    sb      t8, 0x01DA($sp)
    sb      v0, 0x01D9($sp)
    sb      v0, 0x01D8($sp)
    sb      v0, 0x01D6($sp)
    sb      v0, 0x01D5($sp)
    sb      v0, 0x01D4($sp)
    sb      v0, 0x01D3($sp)
    sb      v0, 0x01D2($sp)
    sb      v0, 0x01D1($sp)
    sb      v0, 0x01D0($sp)
    sb      v0, 0x01CF($sp)
    sb      v0, 0x01CE($sp)
    sb      v0, 0x01CD($sp)
    sb      v0, 0x01CC($sp)
    sb      $zero, 0x01D7($sp)
    sb      $zero, 0x01DB($sp)
    sw      t9, 0x01DC($sp)
    sw      $zero, 0x01E0($sp)
    sw      t0, 0x01E4($sp)
    sw      t1, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lw      a0, 0x01EC($sp)
    addiu   a1, s0, 0x0294             # a1 = 00000294
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8001AA5C
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x01EC($sp)
    jal     func_80915BF8
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80915B2C
    lw      a1, 0x01EC($sp)
    jal     func_80915AF8
    or      a0, s0, $zero              # a0 = 00000000
    lw      t2, 0x0004(s0)             # 00000004
    ori     t3, t2, 0x4000             # t3 = 00004000
    b       lbl_80914470
    sw      t3, 0x0004(s0)             # 00000004
var_809143F8:
    lh      t4, 0x0258(s0)             # 00000258
    lw      t7, 0x02B8(s0)             # 000002B8
    addiu   t6, $zero, 0x0016          # t6 = 00000016
    sra     t5, t4,  4
    sb      t5, 0x028C(s0)             # 0000028C
    lui     a1, 0x3CF5                 # a1 = 3CF50000
    ori     a1, a1, 0xC28F             # a1 = 3CF5C28F
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    sh      t6, 0x002E(t7)             # 0000002E
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
var_80914424:
    lh      t9, 0x0258(s0)             # 00000258
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    andi    t0, t9, 0x000F             # t0 = 00000000
    mtc1    t0, $f10                   # $f10 = 0.00
    lui     t1, %hi(var_80917610)      # t1 = 80910000
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    cvt.s.w $f16, $f10
    addiu   t1, t1, %lo(var_80917610)  # t1 = 80917610
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t8, 0x0117(s0)             # 00000117
    sw      t1, 0x0098(s0)             # 00000098
    sb      v0, 0x0291(s0)             # 00000291
    mul.s   $f4, $f16, $f18
    sb      t2, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x0268(s0)            # 00000268
    jal     func_8091602C
    lw      a1, 0x01EC($sp)
lbl_80914470:
    lw      t4, 0x0024(s0)             # 00000024
lbl_80914474:
    lw      t3, 0x0028(s0)             # 00000028
    sw      t4, 0x0038(s0)             # 00000038
    lw      t4, 0x002C(s0)             # 0000002C
    sw      t3, 0x003C(s0)             # 0000003C
    b       lbl_80914494
    sw      t4, 0x0040(s0)             # 00000040
lbl_8091448C:
    jal     func_809144FC
    or      a0, s0, $zero              # a0 = 00000000
lbl_80914494:
    lw      v0, 0x02B8(s0)             # 000002B8
    lh      t5, 0x002E(v0)             # 0000002E
    lwc1    $f6, 0x0038(v0)            # 00000038
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    sh      t7, 0x0036(v0)             # 00000036
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x01E8           # $sp += 0x1E8


func_809144D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004A550
    addiu   a1, a2, 0x029C             # a1 = 0000029C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809144FC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)
    lw      t8, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     a1, %hi(func_80914550)     # a1 = 80910000
    and     t9, t8, $at
    sw      t6, 0x0240(a0)             # 00000240
    sw      t7, 0x024C(a0)             # 0000024C
    swc1    $f0, 0x0060(a0)            # 00000060
    swc1    $f0, 0x006C(a0)            # 0000006C
    swc1    $f0, 0x0068(a0)            # 00000068
    sw      t9, 0x0004(a0)             # 00000004
    jal     func_80913EA0
    addiu   a1, a1, %lo(func_80914550) # a1 = 80914550
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80914550:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bnel    t6, $at, lbl_80914590
    lw      a0, 0x0250(s0)             # 00000250
    lw      v1, 0x0118(s0)             # 00000118
    bne     v1, $zero, lbl_809146A8
    nop
    jal     func_809146CC
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_809146A8
    lw      v1, 0x0118(s0)             # 00000118
    lw      a0, 0x0250(s0)             # 00000250
lbl_80914590:
    bnel    a0, $zero, lbl_80914694
    lw      v1, 0x0118(s0)             # 00000118
    lw      t7, 0x0314(s0)             # 00000314
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, %hi(var_809177E0)     # $at = 80910000
    lwc1    $f4, 0x0278(t7)            # 00000278
    c.eq.s  $f2, $f4
    nop
    bc1tl   lbl_8091463C
    lbu     v1, 0x028F(s0)             # 0000028F
    lwc1    $f0, 0x0054(s0)            # 00000054
    lwc1    $f6, %lo(var_809177E0)($at)
    swc1    $f2, 0x0010($sp)
    mfc1    a1, $f0
    mul.s   $f8, $f0, $f6
    addiu   a0, s0, 0x0278             # a0 = 00000278
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a3, $f8
    jal     func_80064178
    nop
    lui     $at, %hi(var_809177E4)     # $at = 80910000
    lwc1    $f10, %lo(var_809177E4)($at)
    lwc1    $f0, 0x0058(s0)            # 00000058
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   a0, s0, 0x027C             # a0 = 0000027C
    mul.s   $f16, $f0, $f10
    mfc1    a1, $f0
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f18, 0x0010($sp)
    mfc1    a3, $f16
    jal     func_80064178
    nop
    lbu     v0, 0x028F(s0)             # 0000028F
    lh      v1, 0x025E(s0)             # 0000025E
    addiu   t8, v0, 0x000A             # t8 = 0000000A
    beq     v1, v0, lbl_8091466C
    andi    t9, t8, 0x00FF             # t9 = 0000000A
    slt     $at, v1, t9
    beq     $at, $zero, lbl_8091466C
    sb      t8, 0x028F(s0)             # 0000028F
    b       lbl_8091466C
    sb      v1, 0x028F(s0)             # 0000028F
    lbu     v1, 0x028F(s0)             # 0000028F
lbl_8091463C:
    bne     v1, $zero, lbl_80914654
    slti    $at, v1, 0x0015
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_809146BC
    lw      $ra, 0x0024($sp)
lbl_80914654:
    beq     $at, $zero, lbl_80914664
    or      v0, v1, $zero              # v0 = 00000000
    b       lbl_8091466C
    sb      $zero, 0x028F(s0)          # 0000028F
lbl_80914664:
    addiu   t0, v0, 0xFFEC             # t0 = FFFFFFEC
    sb      t0, 0x028F(s0)             # 0000028F
lbl_8091466C:
    lw      t1, 0x0118(s0)             # 00000118
    lw      v1, 0x0118(s0)             # 00000118
    lw      t3, 0x0100(t1)             # 00000100
    sw      t3, 0x0024(s0)             # 00000024
    lw      t2, 0x0104(t1)             # 00000104
    sw      t2, 0x0028(s0)             # 00000028
    lw      t3, 0x0108(t1)             # 00000108
    b       lbl_809146A8
    sw      t3, 0x002C(s0)             # 0000002C
    lw      v1, 0x0118(s0)             # 00000118
lbl_80914694:
    addiu   t4, a0, 0xFFFF             # t4 = FFFFFFFF
    sw      t4, 0x0250(s0)             # 00000250
    lh      v0, 0x0032(v1)             # 00000032
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x00B6(s0)             # 000000B6
lbl_809146A8:
    beql    v1, $zero, lbl_809146BC
    lw      $ra, 0x0024($sp)
    lwc1    $f4, 0x0060(v1)            # 00000060
    swc1    $f4, 0x0060(s0)            # 00000060
    lw      $ra, 0x0024($sp)
lbl_809146BC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809146CC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, 0xC0E0                # $at = C0E00000
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    bgez    t6, lbl_80914734
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    lh      t9, 0x00B4(s0)             # 000000B4
    lh      t7, 0x008A(s0)             # 0000008A
    mtc1    $at, $f4                   # $f4 = -7.00
    addiu   t0, t9, 0x4E20             # t0 = 00004E20
    sw      t8, 0x0250(s0)             # 00000250
    sh      t0, 0x00B4(s0)             # 000000B4
    sh      t7, 0x0032(s0)             # 00000032
    swc1    $f4, 0x0068(s0)            # 00000068
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    lw      a0, 0x002C($sp)
    addiu   a2, $zero, 0x38CE          # a2 = 000038CE
    jal     func_8001E510
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80914734:
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     a1, %hi(func_80914760)     # a1 = 80910000
    sw      t3, 0x0240(s0)             # 00000240
    addiu   a1, a1, %lo(func_80914760) # a1 = 80914760
    jal     func_80913EA0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80914760:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0054($sp)
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    lui     t8, %hi(var_809176C8)      # t8 = 80910000
    sh      t6, 0x004E($sp)
    addiu   t8, t8, %lo(var_809176C8)  # t8 = 809176C8
    lw      t0, 0x0000(t8)             # 809176C8
    addiu   t7, $sp, 0x0040            # t7 = FFFFFFF0
    lw      t9, 0x0004(t8)             # 809176CC
    sw      t0, 0x0000(t7)             # FFFFFFF0
    lw      t0, 0x0008(t8)             # 809176D0
    lui     t2, %hi(var_809176D4)      # t2 = 80910000
    addiu   t2, t2, %lo(var_809176D4)  # t2 = 809176D4
    sw      t9, 0x0004(t7)             # FFFFFFF4
    sw      t0, 0x0008(t7)             # FFFFFFF8
    lw      t4, 0x0000(t2)             # 809176D4
    addiu   t1, $sp, 0x0034            # t1 = FFFFFFE4
    lw      t3, 0x0004(t2)             # 809176D8
    sw      t4, 0x0000(t1)             # FFFFFFE4
    lw      t4, 0x0008(t2)             # 809176DC
    sw      t3, 0x0004(t1)             # FFFFFFE8
    addiu   a0, s0, 0x0278             # a0 = 00000278
    sw      t4, 0x0008(t1)             # FFFFFFEC
    lh      t5, 0x001C(s0)             # 0000001C
    bgezl   t5, lbl_8091489C
    lbu     v0, 0x028F(s0)             # 0000028F
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x41F0                 # a3 = 41F00000
    mfc1    a1, $f0
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x027C             # a0 = 0000027C
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f0
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lw      v0, 0x0250(s0)             # 00000250
    beql    v0, $zero, lbl_80914830
    lw      t9, 0x030C(s0)             # 0000030C
    lh      t7, 0x00B4(s0)             # 000000B4
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sw      t6, 0x0250(s0)             # 00000250
    addiu   t8, t7, 0xB1E0             # t8 = FFFFB1E0
    b       lbl_809148C8
    sh      t8, 0x00B4(s0)             # 000000B4
    lw      t9, 0x030C(s0)             # 0000030C
lbl_80914830:
    addiu   a0, s0, 0x02FC             # a0 = 000002FC
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    bnel    t9, $zero, lbl_8091484C
    lbu     v0, 0x029A(s0)             # 0000029A
    jal     func_80025D04
    lw      a2, 0x0054($sp)
    lbu     v0, 0x029A(s0)             # 0000029A
lbl_8091484C:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
    beq     v0, $at, lbl_80914864
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_8091486C
lbl_80914864:
    addiu   t0, $zero, 0x000B          # t0 = 0000000B
    sh      t0, 0x004E($sp)
lbl_8091486C:
    lw      a2, 0x0054($sp)
    jal     func_80025F04
    lh      a3, 0x004E($sp)
    beq     v0, $zero, lbl_809148C8
    lw      a0, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    jal     func_80013A84
    addiu   a3, $zero, 0x00D0          # a3 = 000000D0
    b       lbl_809148C0
    nop
    lbu     v0, 0x028F(s0)             # 0000028F
lbl_8091489C:
    beq     v0, $zero, lbl_809148C0
    slti    $at, v0, 0x0015
    beq     $at, $zero, lbl_809148B4
    or      v1, v0, $zero              # v1 = 00000000
    b       lbl_809148C8
    sb      $zero, 0x028F(s0)          # 0000028F
lbl_809148B4:
    addiu   t1, v1, 0xFFEC             # t1 = FFFFFFEC
    b       lbl_809148C8
    sb      t1, 0x028F(s0)             # 0000028F
lbl_809148C0:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_809148C8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_809148DC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      $zero, 0x0240(s0)          # 00000240
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38E3          # a1 = 000038E3
    lh      v0, 0x001C(s0)             # 0000001C
    slti    $at, v0, 0xFFFD
    bnel    $at, $zero, lbl_80914944
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lhu     t7, 0x0088(s0)             # 00000088
    lh      t6, 0x008A(s0)             # 0000008A
    lui     $at, 0xC0E0                # $at = C0E00000
    andi    t8, t7, 0x0008             # t8 = 00000000
    bne     t8, $zero, lbl_80914930
    sh      t6, 0x0032(s0)             # 00000032
    mtc1    $at, $f4                   # $f4 = -7.00
    nop
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_80914930:
    lui     $at, %hi(var_809177E8)     # $at = 80910000
    lwc1    $f6, %lo(var_809177E8)($at)
    lh      v0, 0x001C(s0)             # 0000001C
    swc1    $f6, 0x00BC(s0)            # 000000BC
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
lbl_80914944:
    bnel    v0, $at, lbl_80914958
    addiu   t9, $zero, 0x000C          # t9 = 0000000C
    jal     func_809140DC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x000C          # t9 = 0000000C
lbl_80914958:
    sw      t9, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    lui     a1, %hi(func_8091499C)     # a1 = 80910000
    sw      t0, 0x0250(s0)             # 00000250
    addiu   a1, a1, %lo(func_8091499C) # a1 = 8091499C
    jal     func_80913EA0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8091499C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0020($sp)
    mfc1    a1, $f0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    swc1    $f0, 0x0010($sp)
    jal     func_80064178
    addiu   a0, a0, 0x0068             # a0 = 00000068
    lw      a0, 0x0020($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x4348                # $at = 43480000
    lwc1    $f6, 0x0068(a0)            # 00000068
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_809149FC
    lw      $ra, 0x001C($sp)
    mtc1    $at, $f8                   # $f8 = 200.00
    jal     func_809152BC
    swc1    $f8, 0x00BC(a0)            # 000000BC
    lw      $ra, 0x001C($sp)
lbl_809149FC:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80914A08:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0444             # a1 = 06000444
    jal     func_8008D2D4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    nop
    mul.s   $f4, $f0, $f2
    add.s   $f6, $f4, $f2
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0068(s0)            # 00000068
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    mul.s   $f10, $f0, $f8
    add.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    t7, $f4
    jal     func_800CDCCC              # Rand.Next() float
    sw      t7, 0x0250(s0)             # 00000250
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f10                  # $f10 = 180.00
    mul.s   $f8, $f0, $f6
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    lui     a1, %hi(func_80914AC8)     # a1 = 80910000
    sw      $zero, 0x0314(s0)          # 00000314
    sw      t0, 0x0240(s0)             # 00000240
    addiu   a1, a1, %lo(func_80914AC8) # a1 = 80914AC8
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    jal     func_80913EA0
    sw      t9, 0x0254(s0)             # 00000254
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80914AC8:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0054($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x0278             # a0 = 00000278
    lui     a1, 0x42A0                 # a1 = 42A00000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   a0, s0, 0x027C             # a0 = 0000027C
    lui     a1, 0x42C8                 # a1 = 42C80000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f8                   # $f8 = -32000.00
    lwc1    $f2, 0x0080(s0)            # 00000080
    c.lt.s  $f8, $f2
    nop
    bc1f    lbl_80914B60
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    lwc1    $f18, 0x0270(s0)           # 00000270
    mtc1    $zero, $f6                 # $f6 = 0.00
    add.s   $f16, $f2, $f10
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    add.s   $f4, $f16, $f18
    swc1    $f6, 0x0010($sp)
    mfc1    a1, $f4
    jal     func_80064178
    nop
lbl_80914B60:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0034($sp)
    jal     func_800A4650
    lwc1    $f12, 0x0264(s0)           # 00000264
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    c.eq.s  $f0, $f8
    nop
    bc1f    lbl_80914BC8
    nop
    lh      t6, 0x025A(s0)             # 0000025A
    beq     t6, $zero, lbl_80914BAC
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    add.s   $f10, $f0, $f0
    b       lbl_80914BC8
    swc1    $f10, 0x0274(s0)           # 00000274
lbl_80914BAC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f16                  # $f16 = 4.00
    nop
    mul.s   $f18, $f0, $f16
    swc1    $f18, 0x0274(s0)           # 00000274
lbl_80914BC8:
    jal     func_800A4650
    lwc1    $f12, 0x0264(s0)           # 00000264
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lwc1    $f6, 0x0274(s0)            # 00000274
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, %hi(var_809177EC)     # $at = 80910000
    add.s   $f8, $f2, $f6
    lwc1    $f18, 0x0264(s0)           # 00000264
    lw      a1, 0x026C(s0)             # 0000026C
    mfc1    a2, $f2
    mul.s   $f10, $f0, $f8
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a3, 0x3F00                 # a3 = 3F000000
    add.s   $f16, $f4, $f10
    mtc1    $zero, $f4                 # $f4 = 0.00
    swc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f6, %lo(var_809177EC)($at)
    add.s   $f8, $f18, $f6
    swc1    $f8, 0x0264(s0)            # 00000264
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    addiu   a0, s0, 0x0024             # a0 = 00000024
    addiu   a1, s0, 0x0008             # a1 = 00000008
    sw      a1, 0x002C($sp)
    jal     func_80063EB8
    sw      a0, 0x0030($sp)
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f10                  # $f10 = 300.00
    lw      a1, 0x002C($sp)
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_80914C84
    lw      t7, 0x0250(s0)             # 00000250
    jal     func_80063F00
    lw      a0, 0x0030($sp)
    sh      v0, 0x025E(s0)             # 0000025E
    lh      a1, 0x025E(s0)             # 0000025E
    addiu   a0, s0, 0x0032             # a0 = 00000032
    sw      a0, 0x002C($sp)
    sw      $zero, 0x0010($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    b       lbl_809150F8
    lh      a1, 0x025E(s0)             # 0000025E
    lw      t7, 0x0250(s0)             # 00000250
lbl_80914C84:
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    bgtz    t8, lbl_80914DFC
    sw      t8, 0x0250(s0)             # 00000250
    lh      t2, 0x025A(s0)             # 0000025A
    lwc1    $f12, 0x0264(s0)           # 00000264
    xori    t3, t2, 0x0001             # t3 = 00000001
    jal     func_800A4650
    sh      t3, 0x025A(s0)             # 0000025A
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    lh      t8, 0x025A(s0)             # 0000025A
    mtc1    $zero, $f10                # $f10 = 0.00
    mul.s   $f18, $f0, $f16
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0444             # a1 = 06000444
    swc1    $f10, 0x0068(s0)           # 00000068
    trunc.w.s $f6, $f18
    mfc1    t5, $f6
    nop
    sll     t6, t5, 16
    sra     t7, t6, 16
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    beq     t8, $zero, lbl_80914D84
    swc1    $f4, 0x0270(s0)            # 00000270
    lw      t9, 0x0314(s0)             # 00000314
    lui     $at, 0x4348                # $at = 43480000
    bne     t9, $zero, lbl_80914D84
    nop
    lwc1    $f16, 0x0090(s0)           # 00000090
    mtc1    $at, $f18                  # $f18 = 200.00
    lh      t2, 0x0032(s0)             # 00000032
    lui     a1, 0x0600                 # a1 = 06000000
    c.lt.s  $f16, $f18
    sh      t2, 0x025E(s0)             # 0000025E
    lw      a0, 0x0034($sp)
    bc1f    lbl_80914D30
    nop
    jal     func_8008D2D4
    addiu   a1, a1, 0x0184             # a1 = 06000184
    lh      t3, 0x008A(s0)             # 0000008A
    sh      t3, 0x025E(s0)             # 0000025E
lbl_80914D30:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    mul.s   $f8, $f0, $f6
    add.s   $f10, $f8, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x026C(s0)           # 0000026C
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    mul.s   $f18, $f0, $f16
    sh      $zero, 0x0258(s0)          # 00000258
    add.s   $f8, $f18, $f6
    trunc.w.s $f4, $f8
    mfc1    t5, $f4
    b       lbl_80914DFC
    sw      t5, 0x0250(s0)             # 00000250
lbl_80914D84:
    jal     func_8008D2D4
    lw      a0, 0x0034($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    mul.s   $f16, $f0, $f10
    add.s   $f6, $f16, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x026C(s0)            # 0000026C
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f10                  # $f10 = 40.00
    mul.s   $f4, $f0, $f8
    lwc1    $f12, 0x0264(s0)           # 00000264
    add.s   $f16, $f4, $f10
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    jal     func_800A45FC
    sw      t7, 0x0250(s0)             # 00000250
    lui     $at, %hi(var_809177F0)     # $at = 80910000
    lwc1    $f6, %lo(var_809177F0)($at)
    mul.s   $f8, $f0, $f6
    trunc.w.s $f4, $f8
    mfc1    t9, $f4
    nop
    sh      t9, 0x025E(s0)             # 0000025E
lbl_80914DFC:
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f10                  # $f10 = 150.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    lui     $at, 0x4348                # $at = 43480000
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_80914EB0
    mtc1    $at, $f8                   # $f8 = 200.00
    lh      t2, 0x0258(s0)             # 00000258
    beql    t2, $zero, lbl_80914EB0
    mtc1    $at, $f8                   # $f8 = 200.00
    lh      t3, 0x025A(s0)             # 0000025A
    lw      a0, 0x0034($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    bnel    t3, $zero, lbl_80914ED0
    lw      v0, 0x0314(s0)             # 00000314
    jal     func_8008D2D4
    addiu   a1, a1, 0x0184             # a1 = 06000184
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f16                  # $f16 = 1.50
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    mul.s   $f18, $f0, $f16
    add.s   $f8, $f18, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x026C(s0)            # 0000026C
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    mul.s   $f10, $f0, $f4
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x025A(s0)             # 0000025A
    lh      t6, 0x008A(s0)             # 0000008A
    lh      t8, 0x025A(s0)             # 0000025A
    sh      t6, 0x025E(s0)             # 0000025E
    add.s   $f18, $f10, $f16
    sh      t8, 0x0258(s0)             # 00000258
    trunc.w.s $f6, $f18
    mfc1    t5, $f6
    b       lbl_80914ECC
    sw      t5, 0x0250(s0)             # 00000250
    mtc1    $at, $f8                   # $f8 = 20.00
lbl_80914EB0:
    nop
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_80914ED0
    lw      v0, 0x0314(s0)             # 00000314
    lh      t9, 0x008A(s0)             # 0000008A
    sh      t9, 0x025E(s0)             # 0000025E
lbl_80914ECC:
    lw      v0, 0x0314(s0)             # 00000314
lbl_80914ED0:
    lw      a0, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    bnel    v0, $zero, lbl_80914EF4
    lh      t2, 0x001C(v0)             # 0000001C
    jal     func_80913EAC
    lui     a2, 0x4396                 # a2 = 43960000
    b       lbl_80914F08
    sw      v0, 0x004C($sp)
    lh      t2, 0x001C(v0)             # 0000001C
lbl_80914EF4:
    bnel    t2, $zero, lbl_80914F08
    sw      $zero, 0x004C($sp)
    b       lbl_80914F08
    sw      v0, 0x004C($sp)
    sw      $zero, 0x004C($sp)
lbl_80914F08:
    lw      t3, 0x004C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t5, s0, 0x0032             # t5 = 00000032
    beq     t3, $zero, lbl_80915000
    or      a1, t3, $zero              # a1 = 00000000
    addiu   t4, s0, 0x0028             # t4 = 00000028
    jal     func_800213B4
    sw      t4, 0x0034($sp)
    lh      t5, 0x025C(s0)             # 0000025C
    sh      v0, 0x025E(s0)             # 0000025E
    addiu   a0, s0, 0x0032             # a0 = 00000032
    bne     t5, $zero, lbl_80914F70
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t6, 0x004C($sp)
    lw      t7, 0x0314(s0)             # 00000314
    lui     $at, 0x3F00                # $at = 3F000000
    beql    t6, t7, lbl_80914F74
    lh      a1, 0x025E(s0)             # 0000025E
    lwc1    $f4, 0x0068(s0)            # 00000068
    mtc1    $at, $f10                  # $f10 = 0.50
    addiu   t8, $zero, 0x8000          # t8 = FFFF8000
    sh      t8, 0x025C(s0)             # 0000025C
    mul.s   $f16, $f4, $f10
    lw      t9, 0x004C($sp)
    sw      t9, 0x0314(s0)             # 00000314
    swc1    $f16, 0x0068(s0)           # 00000068
lbl_80914F70:
    lh      a1, 0x025E(s0)             # 0000025E
lbl_80914F74:
    sw      a0, 0x002C($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80064508
    addiu   a3, $zero, 0x1388          # a3 = 00001388
    lw      t2, 0x004C($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    lw      a0, 0x0030($sp)
    lw      a1, 0x0024(t2)             # 00000024
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    lw      t3, 0x004C($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    lwc1    $f6, 0x0028(t3)            # 00000028
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      a0, 0x0034($sp)
    add.s   $f4, $f6, $f8
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    swc1    $f10, 0x0010($sp)
    mfc1    a1, $f4
    jal     func_80064178
    nop
    lw      t4, 0x004C($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x002C(t4)             # 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    b       lbl_8091500C
    lh      a0, 0x025C(s0)             # 0000025C
lbl_80915000:
    sw      $zero, 0x0314(s0)          # 00000314
    sw      t5, 0x002C($sp)
    lh      a0, 0x025C(s0)             # 0000025C
lbl_8091500C:
    beql    a0, $zero, lbl_80915060
    lh      t0, 0x007E(s0)             # 0000007E
    jal     func_80063684              # coss?
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    neg.s   $f18, $f0
    lwc1    $f4, 0x0028(s0)            # 00000028
    mul.s   $f8, $f18, $f6
    lh      t6, 0x025C(s0)             # 0000025C
    lh      a1, 0x025E(s0)             # 0000025E
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   t7, t6, 0x1000             # t7 = 00001000
    sh      t7, 0x025C(s0)             # 0000025C
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0028(s0)           # 00000028
    sw      $zero, 0x0010($sp)
    jal     func_80064508
    lw      a0, 0x002C($sp)
    lh      t0, 0x007E(s0)             # 0000007E
lbl_80915060:
    lh      t1, 0x0032(s0)             # 00000032
    lh      a1, 0x025E(s0)             # 0000025E
    lw      t8, 0x0314(s0)             # 00000314
    subu    v0, t0, t1
    subu    a0, t0, a1
    sll     v0, v0, 16
    sll     a0, a0, 16
    sra     v0, v0, 16
    bne     t8, $zero, lbl_809150F8
    sra     a0, a0, 16
    lhu     t9, 0x0088(s0)             # 00000088
    andi    t2, t9, 0x0008             # t2 = 00000000
    beql    t2, $zero, lbl_809150FC
    lw      a0, 0x002C($sp)
    bltz    v0, lbl_809150A8
    subu    v1, $zero, v0
    b       lbl_809150A8
    or      v1, v0, $zero              # v1 = 00000000
lbl_809150A8:
    slti    $at, v1, 0x4001
    beq     $at, $zero, lbl_809150CC
    addu    t3, t0, t0
    bltz    a0, lbl_809150C4
    subu    v0, $zero, a0
    b       lbl_809150C4
    or      v0, a0, $zero              # v0 = 00000000
lbl_809150C4:
    slti    $at, v0, 0x4001
    bne     $at, $zero, lbl_809150F8
lbl_809150CC:
    subu    t4, t3, t1
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    t5, t4, $at
    sh      t5, 0x025E(s0)             # 0000025E
    lh      a1, 0x025E(s0)             # 0000025E
    sw      $zero, 0x0010($sp)
    lw      a0, 0x002C($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lh      a1, 0x025E(s0)             # 0000025E
lbl_809150F8:
    lw      a0, 0x002C($sp)
lbl_809150FC:
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lbu     v1, 0x02AD(s0)             # 000002AD
    andi    v1, v1, 0x0002             # v1 = 00000000
    bnel    v1, $zero, lbl_80915130
    lh      t8, 0x008A(s0)             # 0000008A
    lbu     t6, 0x02AC(s0)             # 000002AC
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_809151A8
    lui     $at, 0x40C0                # $at = 40C00000
    lh      t8, 0x008A(s0)             # 0000008A
lbl_80915130:
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   v0, $zero, 0x4000          # v0 = 00004000
    addu    t9, t8, $at
    beq     v1, $zero, lbl_8091514C
    sh      t9, 0x025E(s0)             # 0000025E
    b       lbl_80915180
    addiu   v0, $zero, 0x8000          # v0 = FFFF8000
lbl_8091514C:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38CB          # a1 = 000038CB
    jal     func_80022FD0
    sh      v0, 0x0046($sp)
    lw      t2, 0x0054($sp)
    lui     t3, 0x0001                 # t3 = 00010000
    lh      v0, 0x0046($sp)
    addu    t3, t3, t2
    lw      t3, 0x1DE4(t3)             # 00011DE4
    andi    t4, t3, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_80915184
    lh      t5, 0x008A(s0)             # 0000008A
    addiu   v0, $zero, 0xC000          # v0 = FFFFC000
lbl_80915180:
    lh      t5, 0x008A(s0)             # 0000008A
lbl_80915184:
    lbu     t7, 0x02AD(s0)             # 000002AD
    lbu     t9, 0x02AC(s0)             # 000002AC
    addu    t6, t5, v0
    andi    t8, t7, 0xFFFD             # t8 = 00000000
    andi    t2, t9, 0xFFFD             # t2 = 00000000
    sh      t6, 0x0032(s0)             # 00000032
    sb      t8, 0x02AD(s0)             # 000002AD
    sb      t2, 0x02AC(s0)             # 000002AC
    lui     $at, 0x40C0                # $at = 40C00000
lbl_809151A8:
    mtc1    $at, $f18                  # $f18 = 6.00
    lwc1    $f16, 0x026C(s0)           # 0000026C
    c.le.s  $f18, $f16
    nop
    bc1fl   lbl_8091523C
    lwc1    $f6, 0x0154(s0)            # 00000154
    lwc1    $f6, 0x0154(s0)            # 00000154
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f4, $f6
    mfc1    v0, $f4
    nop
    beq     v0, $zero, lbl_809151E8
    nop
    bnel    v0, $at, lbl_80915208
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_809151E8:
    jal     func_80022FD0
    addiu   a1, $zero, 0x38C9          # a1 = 000038C9
    lwc1    $f8, 0x0154(s0)            # 00000154
    trunc.w.s $f10, $f8
    mfc1    v0, $f10
    b       lbl_80915270
    nop
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80915208:
    beq     v0, $at, lbl_8091521C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_80915270
    nop
lbl_8091521C:
    jal     func_80022FD0
    addiu   a1, $zero, 0x38C8          # a1 = 000038C8
    lwc1    $f16, 0x0154(s0)           # 00000154
    trunc.w.s $f18, $f16
    mfc1    v0, $f18
    b       lbl_80915270
    nop
    lwc1    $f6, 0x0154(s0)            # 00000154
lbl_8091523C:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f4, $f6
    mfc1    v0, $f4
    nop
    bne     v0, $at, lbl_80915270
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x38C8          # a1 = 000038C8
    lwc1    $f8, 0x0154(s0)            # 00000154
    trunc.w.s $f10, $f8
    mfc1    v0, $f10
    nop
lbl_80915270:
    bnel    v0, $zero, lbl_809152A8
    lh      t8, 0x0032(s0)             # 00000032
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_809177F4)     # $at = 80910000
    lwc1    $f16, %lo(var_809177F4)($at)
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_809152A8
    lh      t8, 0x0032(s0)             # 00000032
    jal     func_80022FD0
    addiu   a1, $zero, 0x38CA          # a1 = 000038CA
    lh      t8, 0x0032(s0)             # 00000032
lbl_809152A8:
    sh      t8, 0x00B6(s0)             # 000000B6
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_809152BC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0444             # a1 = 06000444
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lhu     t8, 0x0088(a0)             # 00000088
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f6                   # $f6 = -2.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    andi    t9, t8, 0xFFFE             # t9 = 00000000
    addiu   a1, $zero, 0x38CD          # a1 = 000038CD
    sw      t6, 0x0240(a0)             # 00000240
    sw      t7, 0x0250(a0)             # 00000250
    sb      $zero, 0x0114(a0)          # 00000114
    sh      t9, 0x0088(a0)             # 00000088
    swc1    $f4, 0x0068(a0)            # 00000068
    swc1    $f0, 0x027C(a0)            # 0000027C
    swc1    $f0, 0x0278(a0)            # 00000278
    jal     func_80022FD0
    swc1    $f6, 0x006C(a0)            # 0000006C
    lui     a1, %hi(func_8091534C)     # a1 = 80910000
    lw      a0, 0x0018($sp)
    jal     func_80913EA0
    addiu   a1, a1, %lo(func_8091534C) # a1 = 8091534C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8091534C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0044($sp)
    lh      t6, 0x0032(s0)             # 00000032
    lh      t7, 0x007E(s0)             # 0000007E
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    subu    v1, t6, t7
    sll     v1, v1, 16
    sra     v1, v1, 16
    jal     func_8008C9C0
    sh      v1, 0x003E($sp)
    lhu     a0, 0x0088(s0)             # 00000088
    lh      v1, 0x003E($sp)
    andi    t8, a0, 0x0008             # t8 = 00000000
    beql    t8, $zero, lbl_809153E0
    andi    t4, a0, 0x0003             # t4 = 00000000
    bltz    v1, lbl_809153A4
    subu    v0, $zero, v1
    b       lbl_809153A4
    or      v0, v1, $zero              # v0 = 00000000
lbl_809153A4:
    slti    $at, v0, 0x4001
    bnel    $at, $zero, lbl_809153D4
    andi    t3, a0, 0xFFF7             # t3 = 00000000
    lh      v0, 0x007E(s0)             # 0000007E
    lh      t0, 0x0032(s0)             # 00000032
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    t9, v0, v0
    subu    t1, t9, t0
    addu    t2, t1, $at
    sh      t2, 0x0032(s0)             # 00000032
    lhu     a0, 0x0088(s0)             # 00000088
    andi    t3, a0, 0xFFF7             # t3 = 00000000
lbl_809153D4:
    sh      t3, 0x0088(s0)             # 00000088
    andi    a0, t3, 0xFFFF             # a0 = 00000000
    andi    t4, a0, 0x0003             # t4 = 00000000
lbl_809153E0:
    beql    t4, $zero, lbl_80915518
    lwc1    $f18, 0x0154(s0)           # 00000154
    lh      t5, 0x001C(s0)             # 0000001C
    lw      a0, 0x0044($sp)
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    bne     t5, $at, lbl_8091546C
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_800343D4
    lbu     a2, 0x007D(s0)             # 0000007D
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    beq     v0, v1, lbl_80915424
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80915424
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bnel    v0, $at, lbl_80915470
    or      a0, s0, $zero              # a0 = 00000000
lbl_80915424:
    lh      t7, 0x0258(s0)             # 00000258
    lw      t9, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t1, $zero, 0x0007          # t1 = 00000007
    lui     a1, %hi(func_80915730)     # a1 = 80910000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    and     t0, t9, $at
    sw      v1, 0x024C(s0)             # 0000024C
    sw      t6, 0x0250(s0)             # 00000250
    sh      t8, 0x0258(s0)             # 00000258
    sw      t0, 0x0004(s0)             # 00000004
    sw      t1, 0x0240(s0)             # 00000240
    addiu   a1, a1, %lo(func_80915730) # a1 = 80915730
    jal     func_80913EA0
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80915610
    lw      $ra, 0x0034($sp)
lbl_8091546C:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80915470:
    jal     func_80022FD0
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    lui     $at, 0xC160                # $at = C1600000
    mtc1    $at, $f4                   # $f4 = -14.00
    lwc1    $f0, 0x0060(s0)            # 00000060
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    c.lt.s  $f0, $f4
    lui     a3, 0x40E0                 # a3 = 40E00000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    bc1f    lbl_809154B0
    lui     $at, %hi(var_809177F8)     # $at = 80910000
    lwc1    $f6, %lo(var_809177F8)($at)
    mul.s   $f8, $f0, $f6
    b       lbl_809154C0
    swc1    $f8, 0x0060(s0)            # 00000060
lbl_809154B0:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    nop
    swc1    $f10, 0x0060(s0)           # 00000060
lbl_809154C0:
    lhu     t2, 0x0088(s0)             # 00000088
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    andi    t3, t2, 0xFFFE             # t3 = 00000000
    sh      t3, 0x0088(s0)             # 00000088
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      t4, 0x0010($sp)
    lw      a0, 0x0044($sp)
    jal     func_800260E8
    swc1    $f16, 0x0014($sp)
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    subu    a1, $zero, a1
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lwc1    $f18, 0x0154(s0)           # 00000154
lbl_80915518:
    lh      t5, 0x0032(s0)             # 00000032
    addiu   $at, $zero, 0x0005         # $at = 00000005
    trunc.w.s $f4, $f18
    or      a0, s0, $zero              # a0 = 00000000
    sh      t5, 0x00B6(s0)             # 000000B6
    mfc1    t7, $f4
    nop
    bnel    t7, $at, lbl_80915548
    lw      v0, 0x0250(s0)             # 00000250
    jal     func_80022FD0
    addiu   a1, $zero, 0x38C8          # a1 = 000038C8
    lw      v0, 0x0250(s0)             # 00000250
lbl_80915548:
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80915608
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    jal     func_80022FD0
    addiu   a1, $zero, 0x38CC          # a1 = 000038CC
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    beq     v0, $at, lbl_809155D8
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    beq     v0, $at, lbl_80915598
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bnel    v0, $at, lbl_80915610
    lw      $ra, 0x0034($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0060(s0)            # 00000060
    jal     func_80914A08
    swc1    $f0, 0x006C(s0)            # 0000006C
    b       lbl_80915610
    lw      $ra, 0x0034($sp)
lbl_80915598:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f8, 0x0060(s0)            # 00000060
    lw      a0, 0x0044($sp)
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_80915610
    lw      $ra, 0x0034($sp)
    jal     func_80915620
    or      a1, s0, $zero              # a1 = 00000000
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80913F40
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    b       lbl_80915610
    lw      $ra, 0x0034($sp)
lbl_809155D8:
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x006C(s0)            # 0000006C
    jal     func_80915BF8
    lw      a0, 0x0044($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    sub.s   $f18, $f10, $f16
    b       lbl_8091560C
    swc1    $f18, 0x0028(s0)           # 00000028
lbl_80915608:
    sw      t8, 0x0250(s0)             # 00000250
lbl_8091560C:
    lw      $ra, 0x0034($sp)
lbl_80915610:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80915620:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0184             # a1 = 06000184
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x001C($sp)
    lw      a2, 0x001C($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     a1, %hi(func_80915730)     # a1 = 80910000
    lw      t6, 0x0240(a2)             # 00000240
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    addiu   a1, a1, %lo(func_80915730) # a1 = 80915730
    bne     t6, $at, lbl_809156A8
    or      a0, a2, $zero              # a0 = 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    lhu     t8, 0x0088(a2)             # 00000088
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f8                   # $f8 = 16.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    andi    t9, t8, 0xFFFE             # t9 = 00000000
    sh      t7, 0x0258(a2)             # 00000258
    sw      $zero, 0x0250(a2)          # 00000250
    sw      $zero, 0x024C(a2)          # 0000024C
    sh      t9, 0x0088(a2)             # 00000088
    swc1    $f4, 0x0068(a2)            # 00000068
    swc1    $f6, 0x006C(a2)            # 0000006C
    b       lbl_80915714
    swc1    $f8, 0x0060(a2)            # 00000060
lbl_809156A8:
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f16                  # $f16 = 80.00
    lwc1    $f10, 0x0028(a2)           # 00000028
    lw      t3, 0x0024(a2)             # 00000024
    mtc1    $zero, $f0                 # $f0 = 0.00
    sub.s   $f18, $f10, $f16
    lhu     t4, 0x0088(a2)             # 00000088
    lw      t6, 0x0004(a2)             # 00000004
    sw      t3, 0x0008(a2)             # 00000008
    swc1    $f18, 0x0028(a2)           # 00000028
    lw      t2, 0x0028(a2)             # 00000028
    lw      t3, 0x002C(a2)             # 0000002C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    andi    t5, t4, 0xFFFE             # t5 = 00000000
    and     t7, t6, $at
    sb      t0, 0x00AF(a2)             # 000000AF
    sw      $zero, 0x0250(a2)          # 00000250
    sh      $zero, 0x0258(a2)          # 00000258
    sw      t1, 0x024C(a2)             # 0000024C
    sh      t5, 0x0088(a2)             # 00000088
    sw      t7, 0x0004(a2)             # 00000004
    swc1    $f0, 0x0068(a2)            # 00000068
    swc1    $f0, 0x006C(a2)            # 0000006C
    swc1    $f0, 0x0060(a2)            # 00000060
    sw      t2, 0x000C(a2)             # 0000000C
    sw      t3, 0x0010(a2)             # 00000010
lbl_80915714:
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    jal     func_80913EA0
    sw      t8, 0x0240(a2)             # 00000240
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80915730:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x005C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0
    sw      t7, 0x0054($sp)
    lw      v1, 0x0250(s0)             # 00000250
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $zero, lbl_8091576C
    addiu   t8, v1, 0xFFFF             # t8 = FFFFFFFF
    sw      t8, 0x0250(s0)             # 00000250
lbl_8091576C:
    lh      t9, 0x008A(s0)             # 0000008A
    lh      t0, 0x00B6(s0)             # 000000B6
    lh      a0, 0x0258(s0)             # 00000258
    lw      a1, 0x0054($sp)
    subu    v0, t9, t0
    sll     v0, v0, 16
    beq     a0, $zero, lbl_809157A4
    sra     v0, v0, 16
    beq     a0, $at, lbl_80915854
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beql    a0, a1, lbl_80915A14
    lw      t7, 0x0250(s0)             # 00000250
    b       lbl_80915AA0
    nop
lbl_809157A4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800214AC
    sh      v0, 0x004E($sp)
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f4                   # $f4 = 250.00
    lh      v0, 0x004E($sp)
    c.le.s  $f0, $f4
    nop
    bc1f    lbl_8091584C
    nop
    bltz    v0, lbl_809157DC
    subu    v1, $zero, v0
    b       lbl_809157DC
    or      v1, v0, $zero              # v1 = 00000000
lbl_809157DC:
    slti    $at, v1, 0x4001
    beq     $at, $zero, lbl_8091584C
    nop
    lw      t1, 0x0250(s0)             # 00000250
    lui     $at, 0x40A0                # $at = 40A00000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    bne     t1, $zero, lbl_8091584C
    addiu   t3, $zero, 0x0007          # t3 = 00000007
    mtc1    $at, $f6                   # $f6 = 5.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    lhu     t4, 0x0088(s0)             # 00000088
    lh      t6, 0x0258(s0)             # 00000258
    lui     $at, 0x4190                # $at = 41900000
    mtc1    $at, $f10                  # $f10 = 18.00
    andi    t5, t4, 0xFFFE             # t5 = 00000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sw      t2, 0x024C(s0)             # 0000024C
    sw      t3, 0x0250(s0)             # 00000250
    sh      t5, 0x0088(s0)             # 00000088
    sh      t7, 0x0258(s0)             # 00000258
    swc1    $f6, 0x0068(s0)            # 00000068
    swc1    $f8, 0x006C(s0)            # 0000006C
    swc1    $f10, 0x0060(s0)           # 00000060
    lw      a0, 0x005C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80913F40
    or      a2, $zero, $zero           # a2 = 00000000
lbl_8091584C:
    b       lbl_80915AA0
    lh      a0, 0x0258(s0)             # 00000258
lbl_80915854:
    lw      t8, 0x0250(s0)             # 00000250
    bne     t8, $zero, lbl_80915870
    nop
    lw      t9, 0x0004(s0)             # 00000004
    sw      $zero, 0x024C(s0)          # 0000024C
    ori     t0, t9, 0x0001             # t0 = 00000001
    sw      t0, 0x0004(s0)             # 00000004
lbl_80915870:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f16, 0x0264(s0)           # 00000264
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   a0, s0, 0x0278             # a0 = 00000278
    add.s   $f18, $f16, $f0
    lui     a1, 0x42A0                 # a1 = 42A00000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    swc1    $f18, 0x0264(s0)           # 00000264
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   a0, s0, 0x027C             # a0 = 0000027C
    lui     a1, 0x42C8                 # a1 = 42C80000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
    lhu     a0, 0x0088(s0)             # 00000088
    andi    t1, a0, 0x0008             # t1 = 00000000
    beql    t1, $zero, lbl_80915920
    andi    t6, a0, 0x0001             # t6 = 00000000
    lh      a2, 0x0032(s0)             # 00000032
    lh      a1, 0x007E(s0)             # 0000007E
    subu    v0, a2, a1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_809158F0
    subu    v1, $zero, v0
    b       lbl_809158F0
    or      v1, v0, $zero              # v1 = 00000000
lbl_809158F0:
    slti    $at, v1, 0x4001
    bne     $at, $zero, lbl_80915910
    addu    t2, a1, a1
    subu    t3, t2, a2
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    t4, t3, $at
    sh      t4, 0x0032(s0)             # 00000032
    lhu     a0, 0x0088(s0)             # 00000088
lbl_80915910:
    andi    t5, a0, 0xFFF7             # t5 = 00000000
    sh      t5, 0x0088(s0)             # 00000088
    andi    a0, t5, 0xFFFF             # a0 = 00000000
    andi    t6, a0, 0x0001             # t6 = 00000000
lbl_80915920:
    beq     t6, $zero, lbl_809159E4
    lw      a0, 0x005C($sp)
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_800343D4
    lbu     a2, 0x007D(s0)             # 0000007D
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beq     v0, a1, lbl_80915954
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80915954
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bnel    v0, $at, lbl_80915984
    lui     $at, 0x4150                # $at = 41500000
lbl_80915954:
    lh      t8, 0x0258(s0)             # 00000258
    lw      t0, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   t9, t8, 0x0001             # t9 = 00000001
    and     t1, t0, $at
    sw      a1, 0x024C(s0)             # 0000024C
    sw      t7, 0x0250(s0)             # 00000250
    sh      t9, 0x0258(s0)             # 00000258
    b       lbl_809159D8
    sw      t1, 0x0004(s0)             # 00000004
    lui     $at, 0x4150                # $at = 41500000
lbl_80915984:
    mtc1    $at, $f0                   # $f0 = 13.00
    lui     $at, %hi(var_809177FC)     # $at = 80910000
    lwc1    $f6, %lo(var_809177FC)($at)
    lwc1    $f4, 0x0060(s0)            # 00000060
    mul.s   $f8, $f4, $f6
    swc1    $f8, 0x0060(s0)            # 00000060
    lwc1    $f10, 0x0060(s0)           # 00000060
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_809159B4
    nop
    swc1    $f0, 0x0060(s0)            # 00000060
lbl_809159B4:
    jal     func_800A45FC
    lwc1    $f12, 0x0264(s0)           # 00000264
    lui     $at, %hi(var_80917800)     # $at = 80910000
    lwc1    $f16, %lo(var_80917800)($at)
    mul.s   $f18, $f0, $f16
    trunc.w.s $f4, $f18
    mfc1    t3, $f4
    nop
    sh      t3, 0x0032(s0)             # 00000032
lbl_809159D8:
    lhu     t4, 0x0088(s0)             # 00000088
    andi    t5, t4, 0xFFFE             # t5 = 00000000
    sh      t5, 0x0088(s0)             # 00000088
lbl_809159E4:
    lh      t6, 0x0032(s0)             # 00000032
    addiu   a1, s0, 0x029C             # a1 = 0000029C
    sh      t6, 0x00B6(s0)             # 000000B6
    jal     func_800264C8
    lw      a0, 0x005C($sp)
    beq     v0, $zero, lbl_80915A08
    nop
    jal     func_809152BC
    or      a0, s0, $zero              # a0 = 00000000
lbl_80915A08:
    b       lbl_80915AA0
    lh      a0, 0x0258(s0)             # 00000258
    lw      t7, 0x0250(s0)             # 00000250
lbl_80915A14:
    addiu   v0, $sp, 0x0038            # v0 = FFFFFFE0
    addiu   t8, $zero, 0x0078          # t8 = 00000078
    bne     t7, $zero, lbl_80915AA0
    nop
    lw      t0, 0x0008(s0)             # 00000008
    mtc1    $zero, $f2                 # $f2 = 0.00
    lw      t9, 0x000C(s0)             # 0000000C
    sw      t0, 0x0024(s0)             # 00000024
    lw      t0, 0x0010(s0)             # 00000010
    lwl     t2, 0x0014(s0)             # 00000014
    lwr     t2, 0x0017(s0)             # 00000017
    sh      $zero, 0x0258(s0)          # 00000258
    sw      t8, 0x0250(s0)             # 00000250
    swc1    $f2, 0x0068(s0)            # 00000068
    swc1    $f2, 0x006C(s0)            # 0000006C
    swc1    $f2, 0x0060(s0)            # 00000060
    sw      t9, 0x0028(s0)             # 00000028
    sw      t0, 0x002C(s0)             # 0000002C
    sw      t2, 0x0000(v0)             # FFFFFFE0
    lhu     t2, 0x0018(s0)             # 00000018
    lw      t4, 0x0000(v0)             # FFFFFFE0
    or      a0, s0, $zero              # a0 = 00000000
    sh      t2, 0x0004(v0)             # FFFFFFE4
    swl     t4, 0x0030(s0)             # 00000030
    swr     t4, 0x0033(s0)             # 00000033
    lhu     t4, 0x0004(v0)             # FFFFFFE4
    sh      t4, 0x0034(s0)             # 00000034
    lwl     t6, 0x0000(v0)             # FFFFFFE0
    lwr     t6, 0x0003(v0)             # FFFFFFE3
    swl     t6, 0x00B4(s0)             # 000000B4
    swr     t6, 0x00B7(s0)             # 000000B7
    lhu     t6, 0x0004(v0)             # FFFFFFE4
    jal     func_809140DC
    sh      t6, 0x00B8(s0)             # 000000B8
    lh      a0, 0x0258(s0)             # 00000258
lbl_80915AA0:
    beql    a0, $zero, lbl_80915AE8
    lw      $ra, 0x0024($sp)
    lwc1    $f6, 0x0154(s0)            # 00000154
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f8, $f6
    mfc1    v0, $f8
    nop
    beq     v0, $zero, lbl_80915AD0
    nop
    bnel    v0, $at, lbl_80915ADC
    or      a0, s0, $zero              # a0 = 00000000
lbl_80915AD0:
    jal     func_80022FD0
    addiu   a1, $zero, 0x38C9          # a1 = 000038C9
    or      a0, s0, $zero              # a0 = 00000000
lbl_80915ADC:
    jal     func_80022FD0
    addiu   a1, $zero, 0x30CF          # a1 = 000030CF
    lw      $ra, 0x0024($sp)
lbl_80915AE8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80915AF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x0024             # a0 = 00000024
    addiu   a1, a2, 0x0280             # a1 = 00000280
    jal     func_80063F00
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sh      v0, 0x00B6(a2)             # 000000B6
    sh      v0, 0x0032(a2)             # 00000032
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80915B2C:
    lui     t6, 0x0001                 # t6 = 00010000
    lbu     t7, 0x028C(a0)             # 0000028C
    addu    t6, t6, a1
    lw      t6, 0x1E08(t6)             # 00011E08
    sll     t8, t7,  3
    lbu     v1, 0x028D(a0)             # 0000028D
    addu    v0, t6, t8
    lbu     t9, 0x0000(v0)             # 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    addiu   t0, t9, 0xFFFF             # t0 = FFFFFFFF
    sll     t1, t0, 16
    sra     t2, t1, 16
    bne     t2, v1, lbl_80915B70
    addiu   t3, v1, 0x0001             # t3 = 00000001
    b       lbl_80915B74
    sb      $zero, 0x028D(a0)          # 0000028D
lbl_80915B70:
    sb      t3, 0x028D(a0)             # 0000028D
lbl_80915B74:
    lw      a1, 0x0004(v0)             # 00000004
    lbu     t0, 0x028D(a0)             # 0000028D
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, a1,  4
    srl     t5, t4, 28
    sll     t7, t5,  2
    addu    t6, t6, t7
    lw      t6, 0x0C38(t6)             # 80120C38
    sll     t1, t0,  2
    and     t8, a1, $at
    subu    t1, t1, t0
    sll     t1, t1,  1
    addu    t9, t6, t8
    addu    v1, t9, t1
    lui     $at, 0x8000                # $at = 80000000
    addu    v1, v1, $at
    lh      t2, 0x0000(v1)             # 00000000
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0280(a0)            # 00000280
    lh      t3, 0x0002(v1)             # 00000002
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0284(a0)           # 00000284
    lh      t4, 0x0004(v1)             # 00000004
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0288(a0)           # 00000288
    jr      $ra
    nop


func_80915BF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0444             # a1 = 06000444
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x001C($sp)
    lw      a2, 0x001C($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    lwc1    $f6, 0x0028(a2)            # 00000028
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $zero, $f4                 # $f4 = 0.00
    add.s   $f10, $f6, $f8
    mtc1    $at, $f16                  # $f16 = 100.00
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sw      t6, 0x0240(a2)             # 00000240
    swc1    $f10, 0x0028(a2)           # 00000028
    sb      $zero, 0x028D(a2)          # 0000028D
    swc1    $f4, 0x0068(a2)            # 00000068
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x027C(a2)           # 0000027C
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    mul.s   $f4, $f0, $f18
    lw      a0, 0x001C($sp)
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f16                  # $f16 = 7.00
    lui     a1, %hi(func_80915CA8)     # a1 = 80910000
    addiu   a1, a1, %lo(func_80915CA8) # a1 = 80915CA8
    swc1    $f16, 0x026C(a0)           # 0000026C
    add.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t8, $f10
    jal     func_80913EA0
    sw      t8, 0x0250(a0)             # 00000250
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80915CA8:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0020($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0054($sp)
    lwc1    $f4, 0x0068(s0)            # 00000068
    addiu   a1, s0, 0x0280             # a1 = 00000280
    addiu   a0, s0, 0x0068             # a0 = 00000068
    c.eq.s  $f0, $f4
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    bc1fl   lbl_80915F44
    mfc1    a1, $f0
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80063F34
    sw      a0, 0x002C($sp)
    sll     a0, v0, 16
    sh      v0, 0x0042($sp)
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lwc1    $f6, 0x026C(s0)            # 0000026C
    lh      a0, 0x0042($sp)
    mul.s   $f8, $f0, $f6
    jal     func_80063684              # coss?
    swc1    $f8, 0x003C($sp)
    lwc1    $f10, 0x026C(s0)           # 0000026C
    mul.s   $f16, $f0, $f10
    swc1    $f16, 0x0038($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f18, 0x0038($sp)
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f2, $f0, $f18
    jal     func_80063684              # coss?
    swc1    $f2, 0x0048($sp)
    lwc1    $f2, 0x0048($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f4, 0x0038($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    c.le.s  $f6, $f2
    mul.s   $f12, $f0, $f4
    lw      a0, 0x002C($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    bc1fl   lbl_80915D6C
    neg.s   $f0, $f2
    b       lbl_80915D6C
    mov.s   $f0, $f2
    neg.s   $f0, $f2
lbl_80915D6C:
    lw      a1, 0x0280(s0)             # 00000280
    mfc1    a3, $f0
    swc1    $f12, 0x0044($sp)
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    lwc1    $f14, 0x003C($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f12, 0x0044($sp)
    c.le.s  $f10, $f14
    mov.s   $f2, $f0
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    bc1fl   lbl_80915DB4
    neg.s   $f0, $f14
    b       lbl_80915DB4
    mov.s   $f0, $f14
    neg.s   $f0, $f14
lbl_80915DB4:
    lw      a1, 0x0284(s0)             # 00000284
    mfc1    a3, $f0
    swc1    $f12, 0x0044($sp)
    swc1    $f2, 0x004C($sp)
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    lwc1    $f12, 0x0044($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f2, 0x004C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    c.le.s  $f18, $f12
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    add.s   $f2, $f2, $f0
    bc1fl   lbl_80915E00
    neg.s   $f0, $f12
    b       lbl_80915E00
    mov.s   $f0, $f12
    neg.s   $f0, $f12
lbl_80915E00:
    lw      a1, 0x0288(s0)             # 00000288
    mfc1    a3, $f0
    swc1    $f2, 0x004C($sp)
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lwc1    $f2, 0x004C($sp)
    add.s   $f2, $f2, $f0
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x004C($sp)
    lui     $at, %hi(var_80917804)     # $at = 80910000
    lwc1    $f6, %lo(var_80917804)($at)
    lui     $at, %hi(var_80917808)     # $at = 80910000
    lwc1    $f8, %lo(var_80917808)($at)
    lwc1    $f2, 0x004C($sp)
    lwc1    $f18, 0x0264(s0)           # 00000264
    mul.s   $f10, $f0, $f8
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x4120                # $at = 41200000
    c.eq.s  $f2, $f8
    add.s   $f16, $f6, $f10
    add.s   $f4, $f18, $f16
    bc1f    lbl_80915EF8
    swc1    $f4, 0x0264(s0)            # 00000264
    lw      t6, 0x0250(s0)             # 00000250
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    bne     t7, $zero, lbl_80915EC0
    sw      t7, 0x0250(s0)             # 00000250
    jal     func_80915B2C
    lw      a1, 0x0054($sp)
    jal     func_80915AF8
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0184             # a1 = 06000184
    jal     func_8008D2D4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    mul.s   $f10, $f0, $f6
    add.s   $f16, $f10, $f18
    trunc.w.s $f4, $f16
    mfc1    t0, $f4
    b       lbl_80915EE8
    sw      t0, 0x0250(s0)             # 00000250
lbl_80915EC0:
    lw      t1, 0x024C(s0)             # 0000024C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, 0x0600                 # a1 = 06000000
    beql    t1, $zero, lbl_80915EE0
    lh      t2, 0x0032(s0)             # 00000032
    jal     func_8008D2D4
    addiu   a1, a1, 0x0444             # a1 = 06000444
    lh      t2, 0x0032(s0)             # 00000032
lbl_80915EE0:
    addiu   t3, t2, 0x1F40             # t3 = 00001F40
    sh      t3, 0x0032(s0)             # 00000032
lbl_80915EE8:
    mtc1    $zero, $f8                 # $f8 = 0.00
    sw      $zero, 0x024C(s0)          # 0000024C
    b       lbl_80915F08
    swc1    $f8, 0x026C(s0)            # 0000026C
lbl_80915EF8:
    mtc1    $at, $f6                   # $f6 = 0.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x024C(s0)             # 0000024C
    swc1    $f6, 0x026C(s0)            # 0000026C
lbl_80915F08:
    lbu     t5, 0x02AC(s0)             # 000002AC
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, t5, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80915F34
    lh      t9, 0x0032(s0)             # 00000032
    jal     func_80022FD0
    addiu   a1, $zero, 0x38CB          # a1 = 000038CB
    lbu     t7, 0x02AC(s0)             # 000002AC
    andi    t8, t7, 0xFFFD             # t8 = 00000000
    sb      t8, 0x02AC(s0)             # 000002AC
    lh      t9, 0x0032(s0)             # 00000032
lbl_80915F34:
    sh      t9, 0x00B6(s0)             # 000000B6
    b       lbl_80915F6C
    nop
    mfc1    a1, $f0
lbl_80915F44:
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    c.eq.s  $f0, $f10
    nop
    bc1f    lbl_80915F6C
    nop
    jal     func_80915AF8
    or      a0, s0, $zero              # a0 = 00000000
lbl_80915F6C:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lwc1    $f18, 0x0154(s0)           # 00000154
    trunc.w.s $f16, $f18
    mfc1    t1, $f16
    nop
    bnel    t1, $zero, lbl_80915FBC
    lwc1    $f8, 0x0154(s0)            # 00000154
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_8091780C)     # $at = 80910000
    lwc1    $f4, %lo(var_8091780C)($at)
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f0, $f4
    nop
    bc1fl   lbl_80915FBC
    lwc1    $f8, 0x0154(s0)            # 00000154
    jal     func_80022FD0
    addiu   a1, $zero, 0x38CA          # a1 = 000038CA
    lwc1    $f8, 0x0154(s0)            # 00000154
lbl_80915FBC:
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f18, 0x026C(s0)           # 0000026C
    trunc.w.s $f6, $f8
    c.eq.s  $f10, $f18
    mfc1    v0, $f6
    bc1tl   lbl_80915FFC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $zero, lbl_80915FE4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80915FF8
lbl_80915FE4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38C9          # a1 = 000038C9
    b       lbl_8091601C
    lw      $ra, 0x0024($sp)
lbl_80915FF8:
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80915FFC:
    beq     v0, $at, lbl_80916010
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    v0, $at, lbl_8091601C
    lw      $ra, 0x0024($sp)
lbl_80916010:
    jal     func_80022FD0
    addiu   a1, $zero, 0x38C8          # a1 = 000038C8
    lw      $ra, 0x0024($sp)
lbl_8091601C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_8091602C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     t7, %hi(var_809176E0)      # t7 = 80910000
    addiu   t7, t7, %lo(var_809176E0)  # t7 = 809176E0
    lw      t9, 0x0000(t7)             # 809176E0
    addiu   t6, $sp, 0x0024            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 809176E4
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 809176E8
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0444             # a1 = 06000444
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      t8, 0x0004(t6)             # FFFFFFF8
    jal     func_8008D2D4
    sw      t9, 0x0008(t6)             # FFFFFFFC
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x024C(s0)             # 0000024C
    jal     func_800CDCCC              # Rand.Next() float
    sh      $zero, 0x0258(s0)          # 00000258
    lh      t3, 0x001C(s0)             # 0000001C
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      t1, 0x00B8(s0)             # 000000B8
    lh      t2, 0x008A(s0)             # 0000008A
    addiu   $at, $zero, 0xFFFB         # $at = FFFFFFFB
    swc1    $f0, 0x0264(s0)            # 00000264
    sh      t1, 0x00B4(s0)             # 000000B4
    bne     t3, $at, lbl_809160BC
    sh      t2, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80915B2C
    lw      a1, 0x0034($sp)
    jal     func_80915AF8
    or      a0, s0, $zero              # a0 = 00000000
lbl_809160BC:
    lwc1    $f12, 0x0008(s0)           # 00000008
    lwc1    $f14, 0x000C(s0)           # 0000000C
    lw      a2, 0x0010(s0)             # 00000010
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x0030(s0)             # 00000030
    lh      a1, 0x0032(s0)             # 00000032
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0264(s0)           # 00000264
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f4, 0x0268(s0)            # 00000268
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFF4
    addiu   a1, s0, 0x0024             # a1 = 00000024
    jal     func_800AB958
    swc1    $f4, 0x0028($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t4, $zero, 0x0009          # t4 = 00000009
    sw      $zero, 0x0314(s0)          # 00000314
    sw      t4, 0x0240(s0)             # 00000240
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0068(s0)            # 00000068
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f16                  # $f16 = 180.00
    mul.s   $f10, $f0, $f8
    lui     a1, %hi(func_809161FC)     # a1 = 80910000
    addiu   a1, a1, %lo(func_809161FC) # a1 = 809161FC
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    t6, $f4
    jal     func_80913EA0
    sh      t6, 0x025E(s0)             # 0000025E
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80916164:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0444             # a1 = 06000444
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0009          # t7 = 00000009
    sw      t6, 0x024C(a2)             # 0000024C
    sh      $zero, 0x0258(a2)          # 00000258
    sw      $zero, 0x0314(a2)          # 00000314
    sw      t7, 0x0240(a2)             # 00000240
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0068(a2)            # 00000068
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f10                  # $f10 = 180.00
    mul.s   $f8, $f0, $f6
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_809161FC)     # a1 = 80910000
    addiu   a1, a1, %lo(func_809161FC) # a1 = 809161FC
    lh      t0, 0x008A(a0)             # 0000008A
    sh      $zero, 0x00B8(a0)          # 000000B8
    add.s   $f16, $f8, $f10
    sh      t0, 0x00B6(a0)             # 000000B6
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    jal     func_80913EA0
    sh      t9, 0x025E(a0)             # 0000025E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809161FC:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0074($sp)
    lui     t8, %hi(var_809176EC)      # t8 = 80910000
    lw      t6, 0x0074($sp)
    addiu   t8, t8, %lo(var_809176EC)  # t8 = 809176EC
    lw      t0, 0x0000(t8)             # 809176EC
    lw      v0, 0x1C44(t6)             # 00001C44
    addiu   t7, $sp, 0x0060            # t7 = FFFFFFF0
    sw      t0, 0x0000(t7)             # FFFFFFF0
    lw      t0, 0x0008(t8)             # 809176F4
    lw      t9, 0x0004(t8)             # 809176F0
    addiu   t1, $sp, 0x0054            # t1 = FFFFFFE4
    sw      t0, 0x0008(t7)             # FFFFFFF8
    sw      t9, 0x0004(t7)             # FFFFFFF4
    lw      t3, 0x0024(v0)             # 00000024
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    sw      t3, 0x0000(t1)             # FFFFFFE4
    lw      t2, 0x0028(v0)             # 00000028
    addiu   $at, $zero, 0xFFFB         # $at = FFFFFFFB
    sw      t2, 0x0004(t1)             # FFFFFFE8
    lw      t3, 0x002C(v0)             # 0000002C
    sw      t3, 0x0008(t1)             # FFFFFFEC
    lwc1    $f4, 0x0058($sp)
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0058($sp)
    lh      t4, 0x001C(s0)             # 0000001C
    bnel    t4, $at, lbl_80916530
    lh      a1, 0x008A(s0)             # 0000008A
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    addiu   a1, s0, 0x0280             # a1 = 00000280
    addiu   a0, s0, 0x0068             # a0 = 00000068
    c.eq.s  $f0, $f10
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    bc1fl   lbl_809164F8
    mfc1    a1, $f0
    addiu   a0, s0, 0x0008             # a0 = 00000008
    sw      a0, 0x002C($sp)
    jal     func_80063F34
    sw      a1, 0x0028($sp)
    lw      a1, 0x0028($sp)
    sh      v0, 0x0052($sp)
    jal     func_80063F00
    lw      a0, 0x002C($sp)
    sh      v0, 0x0050($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0052($sp)
    lwc1    $f16, 0x026C(s0)           # 0000026C
    lh      a0, 0x0052($sp)
    mul.s   $f18, $f0, $f16
    jal     func_80063684              # coss?
    swc1    $f18, 0x004C($sp)
    lwc1    $f4, 0x026C(s0)            # 0000026C
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    mul.s   $f6, $f0, $f4
    lh      a1, 0x0050($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508
    swc1    $f6, 0x0048($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f8, 0x0048($sp)
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f2, $f0, $f8
    jal     func_80063684              # coss?
    swc1    $f2, 0x0040($sp)
    lwc1    $f2, 0x0040($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f10, 0x0048($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    c.le.s  $f16, $f2
    mul.s   $f12, $f0, $f10
    lw      a0, 0x002C($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    bc1fl   lbl_80916354
    neg.s   $f0, $f2
    b       lbl_80916354
    mov.s   $f0, $f2
    neg.s   $f0, $f2
lbl_80916354:
    lw      a1, 0x0280(s0)             # 00000280
    mfc1    a3, $f0
    swc1    $f12, 0x003C($sp)
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    lwc1    $f14, 0x004C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f12, 0x003C($sp)
    c.le.s  $f4, $f14
    mov.s   $f2, $f0
    addiu   a0, s0, 0x000C             # a0 = 0000000C
    lui     a2, 0x3F80                 # a2 = 3F800000
    bc1fl   lbl_8091639C
    neg.s   $f0, $f14
    b       lbl_8091639C
    mov.s   $f0, $f14
    neg.s   $f0, $f14
lbl_8091639C:
    lw      a1, 0x0284(s0)             # 00000284
    mfc1    a3, $f0
    swc1    $f12, 0x003C($sp)
    swc1    $f2, 0x0044($sp)
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lwc1    $f12, 0x003C($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f2, 0x0044($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    c.le.s  $f8, $f12
    addiu   a0, s0, 0x0010             # a0 = 00000010
    lui     a2, 0x3F80                 # a2 = 3F800000
    add.s   $f2, $f2, $f0
    bc1fl   lbl_809163E8
    neg.s   $f0, $f12
    b       lbl_809163E8
    mov.s   $f0, $f12
    neg.s   $f0, $f12
lbl_809163E8:
    lw      a1, 0x0288(s0)             # 00000288
    mfc1    a3, $f0
    swc1    $f2, 0x0044($sp)
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lwc1    $f2, 0x0044($sp)
    add.s   $f2, $f2, $f0
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0044($sp)
    lui     $at, %hi(var_80917810)     # $at = 80910000
    lwc1    $f16, %lo(var_80917810)($at)
    lui     $at, %hi(var_80917814)     # $at = 80910000
    lwc1    $f18, %lo(var_80917814)($at)
    lwc1    $f2, 0x0044($sp)
    lwc1    $f8, 0x0264(s0)            # 00000264
    mul.s   $f4, $f0, $f18
    mtc1    $zero, $f18                # $f18 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f2, $f18
    add.s   $f6, $f16, $f4
    add.s   $f10, $f8, $f6
    bc1f    lbl_8091644C
    swc1    $f10, 0x0264(s0)           # 00000264
    jal     func_80915B2C
    lw      a1, 0x0074($sp)
lbl_8091644C:
    lbu     t6, 0x02AC(s0)             # 000002AC
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    andi    t7, t6, 0x0002             # t7 = 00000000
    sw      t5, 0x024C(s0)             # 0000024C
    beq     t7, $zero, lbl_80916484
    swc1    $f16, 0x026C(s0)           # 0000026C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38CB          # a1 = 000038CB
    lbu     t8, 0x02AC(s0)             # 000002AC
    andi    t9, t8, 0xFFFD             # t9 = 00000000
    sb      t9, 0x02AC(s0)             # 000002AC
lbl_80916484:
    jal     func_800A4650
    lwc1    $f12, 0x0264(s0)           # 00000264
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    c.eq.s  $f0, $f4
    nop
    bc1fl   lbl_809164E8
    lh      t1, 0x0032(s0)             # 00000032
    lh      t0, 0x025A(s0)             # 0000025A
    beq     t0, $zero, lbl_809164C0
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    b       lbl_809164E4
    swc1    $f0, 0x0274(s0)            # 00000274
lbl_809164C0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38CA          # a1 = 000038CA
    mul.s   $f6, $f0, $f8
    jal     func_80022FD0
    swc1    $f6, 0x0274(s0)            # 00000274
lbl_809164E4:
    lh      t1, 0x0032(s0)             # 00000032
lbl_809164E8:
    sh      t1, 0x00B6(s0)             # 000000B6
    b       lbl_80916524
    addiu   t2, s0, 0x0024             # t2 = 00000024
    mfc1    a1, $f0
lbl_809164F8:
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    c.eq.s  $f0, $f10
    nop
    bc1fl   lbl_80916524
    addiu   t2, s0, 0x0024             # t2 = 00000024
    jal     func_80915AF8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t2, s0, 0x0024             # t2 = 00000024
lbl_80916524:
    b       lbl_80916570
    sw      t2, 0x002C($sp)
    lh      a1, 0x008A(s0)             # 0000008A
lbl_80916530:
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    addiu   a0, s0, 0x0024             # a0 = 00000024
    sw      a0, 0x002C($sp)
    jal     func_80063F34
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFE4
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    jal     func_80064508
    sw      $zero, 0x0010($sp)
lbl_80916570:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_800A4650
    lwc1    $f12, 0x0264(s0)           # 00000264
    lui     $at, %hi(var_80917818)     # $at = 80910000
    lwc1    $f18, %lo(var_80917818)($at)
    c.le.s  $f0, $f18
    nop
    bc1fl   lbl_809165B4
    lwc1    $f12, 0x0008(s0)           # 00000008
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_8091781C)     # $at = 80910000
    lwc1    $f16, %lo(var_8091781C)($at)
    mul.s   $f4, $f0, $f16
    swc1    $f4, 0x0274(s0)            # 00000274
    lwc1    $f12, 0x0008(s0)           # 00000008
lbl_809165B4:
    lwc1    $f14, 0x000C(s0)           # 0000000C
    lw      a2, 0x0010(s0)             # 00000010
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      a0, 0x0030(s0)             # 00000030
    lh      a1, 0x0032(s0)             # 00000032
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0264(s0)           # 00000264
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f8, 0x0268(s0)            # 00000268
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFF0
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFE4
    jal     func_800AB958
    swc1    $f8, 0x0064($sp)
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f10                  # $f10 = 0.75
    lwc1    $f6, 0x0264(s0)            # 00000264
    mtc1    $zero, $f16                # $f16 = 0.00
    lw      a0, 0x002C($sp)
    mul.s   $f18, $f6, $f10
    lw      a1, 0x0054($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f16, 0x0010($sp)
    mfc1    a3, $f18
    jal     func_80064178
    nop
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f8                   # $f8 = 0.75
    lwc1    $f4, 0x0264(s0)            # 00000264
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    mul.s   $f6, $f4, $f8
    lw      a1, 0x0058($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f10, 0x0010($sp)
    mfc1    a3, $f6
    jal     func_80064178
    nop
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f16                  # $f16 = 0.75
    lwc1    $f18, 0x0264(s0)           # 00000264
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    mul.s   $f4, $f18, $f16
    lw      a1, 0x005C($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f8, 0x0010($sp)
    mfc1    a3, $f4
    jal     func_80064178
    nop
    lui     $at, %hi(var_80917820)     # $at = 80910000
    lwc1    $f6, %lo(var_80917820)($at)
    lwc1    $f10, 0x0274(s0)           # 00000274
    lwc1    $f16, 0x0264(s0)           # 00000264
    addiu   a1, s0, 0x029C             # a1 = 0000029C
    add.s   $f18, $f6, $f10
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0264(s0)            # 00000264
    jal     func_800264C8
    lw      a0, 0x0074($sp)
    bnel    v0, $zero, lbl_809166D4
    lh      t6, 0x0258(s0)             # 00000258
    lh      t3, 0x025E(s0)             # 0000025E
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x025E(s0)             # 0000025E
    lh      t5, 0x025E(s0)             # 0000025E
    bnel    t5, $zero, lbl_80916728
    lh      t3, 0x0258(s0)             # 00000258
    lh      t6, 0x0258(s0)             # 00000258
lbl_809166D4:
    addiu   t7, t6, 0x0001             # t7 = 00000001
    jal     func_800CDCCC              # Rand.Next() float
    sh      t7, 0x0258(s0)             # 00000258
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f10                  # $f10 = 60.00
    mul.s   $f6, $f0, $f8
    lh      t0, 0x025E(s0)             # 0000025E
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    beq     t0, $zero, lbl_8091671C
    sw      t9, 0x0250(s0)             # 00000250
    lbu     t1, 0x02AD(s0)             # 000002AD
    andi    t2, t1, 0xFFFD             # t2 = 00000000
    sb      t2, 0x02AD(s0)             # 000002AD
lbl_8091671C:
    jal     func_80022FD0
    addiu   a1, $zero, 0x38CD          # a1 = 000038CD
    lh      t3, 0x0258(s0)             # 00000258
lbl_80916728:
    addiu   a0, s0, 0x0278             # a0 = 00000278
    lui     a1, 0x42A0                 # a1 = 42A00000
    beq     t3, $zero, lbl_809167C0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      t4, 0x0250(s0)             # 00000250
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    bne     t5, $zero, lbl_80916780
    sw      t5, 0x0250(s0)             # 00000250
    jal     func_800CDCCC              # Rand.Next() float
    sh      $zero, 0x0258(s0)          # 00000258
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f6                   # $f6 = 180.00
    mul.s   $f8, $f0, $f4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38CC          # a1 = 000038CC
    add.s   $f10, $f8, $f6
    trunc.w.s $f16, $f10
    mfc1    t8, $f16
    jal     func_80022FD0
    sh      t8, 0x025E(s0)             # 0000025E
lbl_80916780:
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   a0, s0, 0x0278             # a0 = 00000278
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x027C             # a0 = 0000027C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    b       lbl_809167F0
    lwc1    $f10, 0x0154(s0)           # 00000154
lbl_809167C0:
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   a0, s0, 0x027C             # a0 = 0000027C
    lui     a1, 0x42C8                 # a1 = 42C80000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lwc1    $f10, 0x0154(s0)           # 00000154
lbl_809167F0:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f16, $f10
    mfc1    v0, $f16
    nop
    bne     v0, $at, lbl_80916824
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x38C8          # a1 = 000038C8
    lwc1    $f18, 0x0154(s0)           # 00000154
    trunc.w.s $f4, $f18
    mfc1    v0, $f4
    nop
lbl_80916824:
    bnel    v0, $zero, lbl_8091685C
    lw      $ra, 0x0024($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80917824)     # $at = 80910000
    lwc1    $f8, %lo(var_80917824)($at)
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_8091685C
    lw      $ra, 0x0024($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x38CA          # a1 = 000038CA
    lw      $ra, 0x0024($sp)
lbl_8091685C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_8091686C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    beq     v0, $at, lbl_809168D4
    sw      t6, 0x0240(s0)             # 00000240
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    beq     v0, $at, lbl_809168CC
    slti    $at, v0, 0xFFFD
    mtc1    $zero, $f0                 # $f0 = 0.00
    bne     $at, $zero, lbl_809168BC
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f4                   # $f4 = -2.00
    lui     $at, %hi(var_80917828)     # $at = 80910000
    swc1    $f4, 0x006C(s0)            # 0000006C
    lwc1    $f6, %lo(var_80917828)($at)
    swc1    $f6, 0x00BC(s0)            # 000000BC
lbl_809168BC:
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x027C(s0)            # 0000027C
    b       lbl_809168D4
    swc1    $f0, 0x0278(s0)            # 00000278
lbl_809168CC:
    jal     func_809140DC
    or      a0, s0, $zero              # a0 = 00000000
lbl_809168D4:
    lbu     v0, 0x029A(s0)             # 0000029A
    addiu   $at, $zero, 0x0008         # $at = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80916908
    addiu   a1, $zero, 0x8000          # a1 = FFFF8000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_80916924
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     v0, $at, lbl_8091692C
    nop
    b       lbl_80916954
    lhu     t0, 0x0088(s0)             # 00000088
lbl_80916908:
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sw      t7, 0x0010($sp)
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    b       lbl_80916954
    lhu     t0, 0x0088(s0)             # 00000088
lbl_80916924:
    addiu   t8, $zero, 0x0030          # t8 = 00000030
    sh      t8, 0x0298(s0)             # 00000298
lbl_8091692C:
    jal     func_80022FD0
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    sw      t9, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00B4          # a2 = 000000B4
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lhu     t0, 0x0088(s0)             # 00000088
lbl_80916954:
    lui     a1, %hi(func_80916980)     # a1 = 80910000
    addiu   a1, a1, %lo(func_80916980) # a1 = 80916980
    andi    t1, t0, 0xFFFE             # t1 = 00000000
    sh      t1, 0x0088(s0)             # 00000088
    jal     func_80913EA0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80916980:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lh      a3, 0x0032(s0)             # 00000032
    lh      a2, 0x007E(s0)             # 0000007E
    lhu     v1, 0x0088(s0)             # 00000088
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    subu    v0, a3, a2
    sll     v0, v0, 16
    andi    t6, v1, 0x0008             # t6 = 00000000
    beq     t6, $zero, lbl_809169F4
    sra     v0, v0, 16
    bltz    v0, lbl_809169C8
    subu    a0, $zero, v0
    b       lbl_809169C8
    or      a0, v0, $zero              # a0 = 00000000
lbl_809169C8:
    slti    $at, a0, 0x4001
    bne     $at, $zero, lbl_809169E8
    addu    t7, a2, a2
    subu    t8, t7, a3
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    t9, t8, $at
    sh      t9, 0x0032(s0)             # 00000032
    lhu     v1, 0x0088(s0)             # 00000088
lbl_809169E8:
    andi    t0, v1, 0xFFF7             # t0 = 00000000
    sh      t0, 0x0088(s0)             # 00000088
    andi    v1, t0, 0xFFFF             # v1 = 00000000
lbl_809169F4:
    andi    t1, v1, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_80916A78
    lbu     t3, 0x0114(s0)             # 00000114
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC160                # $at = C1600000
    mtc1    $at, $f4                   # $f4 = -14.00
    lwc1    $f0, 0x0060(s0)            # 00000060
    lui     $at, %hi(var_8091782C)     # $at = 80910000
    or      a1, s0, $zero              # a1 = 00000000
    c.lt.s  $f0, $f4
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x40E0                 # a3 = 40E00000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    bc1fl   lbl_80916A48
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f6, %lo(var_8091782C)($at)
    mul.s   $f8, $f0, $f6
    b       lbl_80916A50
    swc1    $f8, 0x0060(s0)            # 00000060
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_80916A48:
    nop
    swc1    $f10, 0x0060(s0)           # 00000060
lbl_80916A50:
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    lw      a0, 0x003C($sp)
    sw      t2, 0x0010($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    jal     func_800260E8
    swc1    $f16, 0x0014($sp)
    lbu     t3, 0x0114(s0)             # 00000114
lbl_80916A78:
    lui     $at, 0x4348                # $at = 43480000
    bnel    t3, $zero, lbl_80916B14
    lw      $ra, 0x0034($sp)
    lbu     t4, 0x00AF(s0)             # 000000AF
    mtc1    $at, $f18                  # $f18 = 200.00
    beq     t4, $zero, lbl_80916AF4
    swc1    $f18, 0x00BC(s0)           # 000000BC
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    beq     v0, $at, lbl_80916AAC
    addiu   $at, $zero, 0xFFFB         # $at = FFFFFFFB
    bnel    v0, $at, lbl_80916AC0
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
lbl_80916AAC:
    jal     func_80916164
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80916B14
    lw      $ra, 0x0034($sp)
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
lbl_80916AC0:
    bne     v0, $at, lbl_80916AE4
    addiu   t5, $zero, 0x0008          # t5 = 00000008
    lui     a1, %hi(func_80915CA8)     # a1 = 80910000
    sw      t5, 0x0240(s0)             # 00000240
    addiu   a1, a1, %lo(func_80915CA8) # a1 = 80915CA8
    jal     func_80913EA0
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80916B14
    lw      $ra, 0x0034($sp)
lbl_80916AE4:
    jal     func_809152BC
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80916B14
    lw      $ra, 0x0034($sp)
lbl_80916AF4:
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      a0, s0, $zero              # a0 = 00000000
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_809146CC
    lw      a1, 0x003C($sp)
    lw      $ra, 0x0034($sp)
lbl_80916B14:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80916B24:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     v0, 0x02AC(a0)             # 000002AC
    andi    t6, v0, 0x0004             # t6 = 00000000
    beql    t6, $zero, lbl_80916BB0
    lbu     v0, 0x02AD(a0)             # 000002AD
    lw      t8, 0x0240(a0)             # 00000240
    andi    t7, v0, 0xFFFB             # t7 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     t8, $at, lbl_80916BAC
    sb      t7, 0x02AC(a0)             # 000002AC
    lh      v1, 0x001C(a0)             # 0000001C
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    slti    $at, v1, 0xFFFE
    bnel    $at, $zero, lbl_80916BAC
    sh      t9, 0x025E(a0)             # 0000025E
    lh      v0, 0x008A(a0)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v0, v0, $at
    sll     v0, v0, 16
    sra     v0, v0, 16
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sh      v0, 0x00B6(a0)             # 000000B6
    bne     v1, $at, lbl_80916B98
    sh      v0, 0x0032(a0)             # 00000032
    jal     func_809140DC
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
lbl_80916B98:
    jal     func_809152BC
    nop
    b       lbl_80916E4C
    lw      $ra, 0x001C($sp)
    sh      t9, 0x025E(a0)             # 0000025E
lbl_80916BAC:
    lbu     v0, 0x02AD(a0)             # 000002AD
lbl_80916BB0:
    or      a2, $zero, $zero           # a2 = 00000000
    andi    t0, v0, 0x0002             # t0 = 00000000
    beq     t0, $zero, lbl_80916E48
    andi    t1, v0, 0xFFFD             # t1 = 00000000
    lbu     t2, 0x00B1(a0)             # 000000B1
    sb      t1, 0x02AD(a0)             # 000002AD
    lw      a1, 0x02B8(a0)             # 000002B8
    sb      t2, 0x029A(a0)             # 0000029A
    jal     func_800283BC
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    lbu     v0, 0x029A(a0)             # 0000029A
    addiu   t3, v0, 0xFFFB             # t3 = FFFFFFFB
    sltiu   $at, t3, 0x000B
    beq     $at, $zero, lbl_80916C60
    sll     t3, t3,  2
    lui     $at, %hi(var_80917830)     # $at = 80910000
    addu    $at, $at, t3
    lw      t3, %lo(var_80917830)($at)
    jr      t3
    nop
var_80916C04:
    lw      t4, 0x02B8(a0)             # 000002B8
    lw      t5, 0x0024(t4)             # 00000024
    lbu     t6, 0x0005(t5)             # 00000005
    sh      t6, 0x0110(a0)             # 00000110
var_80916C14:
    addiu   t7, $zero, 0x0030          # t7 = 00000030
    sh      t7, 0x0298(a0)             # 00000298
    b       lbl_80916C60
    lbu     v0, 0x029A(a0)             # 0000029A
var_80916C24:
    lw      t8, 0x02B8(a0)             # 000002B8
    lw      t9, 0x0024(t8)             # 00000024
    lbu     t0, 0x0005(t9)             # 00000005
    b       lbl_80916E48
    sh      t0, 0x0110(a0)             # 00000110
var_80916C38:
    lw      t1, 0x0240(a0)             # 00000240
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    t1, $at, lbl_80916E4C
    lw      $ra, 0x001C($sp)
    jal     func_80028390
    sw      a0, 0x0020($sp)
    jal     func_8091686C
    lw      a0, 0x0020($sp)
    b       lbl_80916E4C
    lw      $ra, 0x001C($sp)
lbl_80916C60:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_80916C94
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     v0, $at, lbl_80916C94
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     v0, $at, lbl_80916C94
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_80916C94
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_80916C94
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80916CF8
    lw      t4, 0x0240(a0)             # 00000240
lbl_80916C94:
    lw      v0, 0x0240(a0)             # 00000240
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80916CB4
    nop
    lw      t2, 0x0250(a0)             # 00000250
    slti    $at, t2, 0x00BE
    beql    $at, $zero, lbl_80916CC8
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80916CB4:
    jal     func_80028390
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    lw      v0, 0x0240(a0)             # 00000240
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80916CC8:
    beq     v0, $at, lbl_80916CEC
    nop
    lh      t3, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    beq     t3, $at, lbl_80916CEC
    nop
    jal     func_809152BC
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
lbl_80916CEC:
    b       lbl_80916D60
    lh      v1, 0x001C(a0)             # 0000001C
    lw      t4, 0x0240(a0)             # 00000240
lbl_80916CF8:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t4, $at, lbl_80916D18
    lh      t6, 0x001C(a0)             # 0000001C
    lw      t5, 0x0250(a0)             # 00000250
    slti    $at, t5, 0x00BE
    bne     $at, $zero, lbl_80916D3C
    nop
    lh      t6, 0x001C(a0)             # 0000001C
lbl_80916D18:
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    beq     t6, $at, lbl_80916D50
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x027C(a0)            # 0000027C
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80916D54
    lbu     t7, 0x02AD(a0)             # 000002AD
lbl_80916D3C:
    jal     func_80028390
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    b       lbl_80916D60
    lh      v1, 0x001C(a0)             # 0000001C
lbl_80916D50:
    lbu     t7, 0x02AD(a0)             # 000002AD
lbl_80916D54:
    lh      v1, 0x001C(a0)             # 0000001C
    ori     t8, t7, 0x0002             # t8 = 00000002
    sb      t8, 0x02AD(a0)             # 000002AD
lbl_80916D60:
    lbu     t9, 0x00AF(a0)             # 000000AF
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    bne     t9, $zero, lbl_80916DA0
    nop
    lw      t0, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t1, t0, $at
    bne     v1, $at, lbl_80916D90
    sw      t1, 0x0004(a0)             # 00000004
    jal     func_809140DC
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
lbl_80916D90:
    jal     func_809146CC
    lw      a1, 0x0024($sp)
    b       lbl_80916E4C
    lw      $ra, 0x001C($sp)
lbl_80916DA0:
    bne     v1, $at, lbl_80916E04
    lw      v0, 0x0240(a0)             # 00000240
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80916DBC
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80916E04
lbl_80916DBC:
    addiu   t2, $zero, 0x000C          # t2 = 0000000C
    sw      t2, 0x0010($sp)
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lh      t3, 0x008A(a0)             # 0000008A
    addiu   a1, $zero, 0x38E3          # a1 = 000038E3
    swc1    $f8, 0x0068(a0)            # 00000068
    swc1    $f10, 0x026C(a0)           # 0000026C
    jal     func_80022FD0
    sh      t3, 0x0032(a0)             # 00000032
    b       lbl_80916E4C
    lw      $ra, 0x001C($sp)
lbl_80916E04:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v0, $at, lbl_80916E20
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    lw      t4, 0x0250(a0)             # 00000250
    slti    $at, t4, 0x00BE
    bne     $at, $zero, lbl_80916E40
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
lbl_80916E20:
    beq     v1, $at, lbl_80916E48
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lwc1    $f16, 0x027C(a0)           # 0000027C
    c.lt.s  $f16, $f18
    nop
    bc1fl   lbl_80916E4C
    lw      $ra, 0x001C($sp)
lbl_80916E40:
    jal     func_809148DC
    nop
lbl_80916E48:
    lw      $ra, 0x001C($sp)
lbl_80916E4C:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80916E58:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lui     t7, %hi(var_809176F8)      # t7 = 80910000
    addiu   t7, t7, %lo(var_809176F8)  # t7 = 809176F8
    lw      t9, 0x0000(t7)             # 809176F8
    addiu   t6, $sp, 0x004C            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 809176FC
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 80917700
    lui     t1, %hi(var_80917704)      # t1 = 80910000
    addiu   t1, t1, %lo(var_80917704)  # t1 = 80917704
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lw      t3, 0x0000(t1)             # 80917704
    addiu   t0, $sp, 0x0040            # t0 = FFFFFFE0
    lw      t2, 0x0004(t1)             # 80917708
    sw      t3, 0x0000(t0)             # FFFFFFE0
    lw      t3, 0x0008(t1)             # 8091770C
    sw      t2, 0x0004(t0)             # FFFFFFE4
    lui     t4, %hi(var_80917710)      # t4 = 80910000
    sw      t3, 0x0008(t0)             # FFFFFFE8
    lui     t5, %hi(var_80917714)      # t5 = 80910000
    lui     $at, 0xC170                # $at = C1700000
    lw      t4, %lo(var_80917710)(t4)
    lw      t5, %lo(var_80917714)(t5)
    mtc1    $at, $f4                   # $f4 = -15.00
    sw      t4, 0x003C($sp)
    sw      t5, 0x0038($sp)
    swc1    $f4, 0x0034($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    bgezl   t6, lbl_80916EF8
    lbu     t7, 0x00B1(s0)             # 000000B1
    jal     func_80916B24
    or      a1, s1, $zero              # a1 = 00000000
    lbu     t7, 0x00B1(s0)             # 000000B1
lbl_80916EF8:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beql    t7, $at, lbl_809170C8
    lw      $ra, 0x0024($sp)
    lw      t9, 0x0248(s0)             # 00000248
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lh      t8, 0x001C(s0)             # 0000001C
    lui     $at, 0xC0C0                # $at = C0C00000
    bgezl   t8, lbl_80916F60
    lw      t2, 0x024C(s0)             # 0000024C
    lwc1    $f6, 0x0068(s0)            # 00000068
    mtc1    $at, $f8                   # $f8 = -6.00
    nop
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_80916F60
    lw      t2, 0x024C(s0)             # 0000024C
    lw      t0, 0x0004(s0)             # 00000004
    andi    t1, t0, 0x8000             # t1 = 00000000
    bnel    t1, $zero, lbl_80916F60
    lw      t2, 0x024C(s0)             # 0000024C
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lw      t2, 0x024C(s0)             # 0000024C
lbl_80916F60:
    lui     $at, 0x41A0                # $at = 41A00000
    or      a0, s1, $zero              # a0 = 00000000
    bne     t2, $zero, lbl_80916FAC
    or      a1, s0, $zero              # a1 = 00000000
    mtc1    $at, $f0                   # $f0 = 20.00
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f10, 0x0080(s0)           # 00000080
    lui     a3, 0x41C8                 # a3 = 41C80000
    sub.s   $f18, $f16, $f0
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    c.le.s  $f18, $f10
    nop
    bc1fl   lbl_80916FA0
    lw      a2, 0x0034($sp)
    swc1    $f0, 0x0034($sp)
    lw      a2, 0x0034($sp)
lbl_80916FA0:
    swc1    $f0, 0x0010($sp)
    jal     func_80021E6C
    sw      t3, 0x0014($sp)
lbl_80916FAC:
    lwc1    $f4, 0x0024(s0)            # 00000024
    lw      t5, 0x0024(s0)             # 00000024
    lw      t4, 0x0028(s0)             # 00000028
    trunc.w.s $f6, $f4
    sw      t5, 0x0038(s0)             # 00000038
    lw      t5, 0x002C(s0)             # 0000002C
    lw      t9, 0x02B8(s0)             # 000002B8
    mfc1    t7, $f6
    sw      t4, 0x003C(s0)             # 0000003C
    sw      t5, 0x0040(s0)             # 00000040
    sh      t7, 0x0030(t9)             # 00000030
    lwc1    $f16, 0x0054(s0)           # 00000054
    lwc1    $f8, 0x00BC(s0)            # 000000BC
    lwc1    $f18, 0x0028(s0)           # 00000028
    lw      t1, 0x02B8(s0)             # 000002B8
    mul.s   $f10, $f8, $f16
    add.s   $f4, $f18, $f10
    trunc.w.s $f6, $f4
    mfc1    t0, $f6
    nop
    sh      t0, 0x0032(t1)             # 00000032
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lw      t4, 0x02B8(s0)             # 000002B8
    trunc.w.s $f16, $f8
    mfc1    t3, $f16
    nop
    sh      t3, 0x0034(t4)             # 00000034
    lw      v0, 0x0240(s0)             # 00000240
    slti    $at, v0, 0x0002
    bnel    $at, $zero, lbl_80917064
    slti    $at, v0, 0x0003
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    addiu   $at, $zero, 0x0009         # $at = 00000009
    or      a0, s1, $zero              # a0 = 00000000
    c.eq.s  $f18, $f10
    addiu   a2, s0, 0x029C             # a2 = 0000029C
    bc1fl   lbl_80917050
    lui     $at, 0x0001                # $at = 00010000
    bne     v0, $at, lbl_80917060
    lui     $at, 0x0001                # $at = 00010000
lbl_80917050:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, s1, $at
    lw      v0, 0x0240(s0)             # 00000240
lbl_80917060:
    slti    $at, v0, 0x0003
lbl_80917064:
    bnel    $at, $zero, lbl_809170C8
    lw      $ra, 0x0024($sp)
    lbu     t5, 0x0114(s0)             # 00000114
    beql    t5, $zero, lbl_8091708C
    lw      t9, 0x024C(s0)             # 0000024C
    lhu     t6, 0x0112(s0)             # 00000112
    andi    t7, t6, 0x4000             # t7 = 00000000
    bnel    t7, $zero, lbl_809170C8
    lw      $ra, 0x0024($sp)
    lw      t9, 0x024C(s0)             # 0000024C
lbl_8091708C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s1, $zero              # a0 = 00000000
    beq     t9, $at, lbl_809170C4
    addiu   a2, s0, 0x029C             # a2 = 0000029C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    sw      a1, 0x0030($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a2, 0x002C($sp)
    lw      a1, 0x0030($sp)
    lw      a2, 0x002C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
lbl_809170C4:
    lw      $ra, 0x0024($sp)
lbl_809170C8:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_809170D8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lw      a0, 0x0038($sp)
    lw      t7, 0x0030($sp)
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sw      t8, 0x0018($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x000F          # a3 = 0000000F
    addiu   a0, a0, 0x02FC             # a0 = 000002FC
    jal     func_80025DFC
    sw      t7, 0x0014($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80917128:
    addiu   $sp, $sp, 0xFF40           # $sp -= 0xC0
    lui     $at, 0x42A0                # $at = 42A00000
    sw      s2, 0x0040($sp)
    sw      s0, 0x0038($sp)
    mtc1    $at, $f0                   # $f0 = 80.00
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x003C($sp)
    lui     t7, %hi(var_809177A8)      # t7 = 80910000
    addiu   t7, t7, %lo(var_809177A8)  # t7 = 809177A8
    lw      t9, 0x0000(t7)             # 809177A8
    addiu   t6, $sp, 0x00AC            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 809177AC
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 809177B0
    lui     t2, %hi(var_809177B4)      # t2 = 80910000
    addiu   t2, t2, %lo(var_809177B4)  # t2 = 809177B4
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lw      t4, 0x0000(t2)             # 809177B4
    addiu   t1, $sp, 0x00A0            # t1 = FFFFFFE0
    lw      t3, 0x0004(t2)             # 809177B8
    sw      t4, 0x0000(t1)             # FFFFFFE0
    lw      t4, 0x0008(t2)             # 809177BC
    sw      t3, 0x0004(t1)             # FFFFFFE4
    sw      t4, 0x0008(t1)             # FFFFFFE8
    lwc1    $f4, 0x026C(s0)            # 0000026C
    lw      s1, 0x0000(s2)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x00B4($sp)
    lwc1    $f8, 0x026C(s0)            # 0000026C
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x00A8($sp)
    lw      t5, 0x024C(s0)             # 0000024C
    beql    t5, $at, lbl_809175F0
    lw      $ra, 0x0044($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, 0xC220                # $at = C2200000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    bgezl   t6, lbl_80917354
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_8007E298
    lw      a0, 0x0000(s2)             # 00000000
    lui     t7, %hi(func_809170D8)     # t7 = 80910000
    addiu   t7, t7, %lo(func_809170D8) # t7 = 809170D8
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    sw      s0, 0x0014($sp)
    sw      t7, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8008993C
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t8, 0x0298(s0)             # 00000298
    beql    t8, $zero, lbl_80917328
    lui     $at, 0xC220                # $at = C2200000
    lh      t2, 0x0298(s0)             # 00000298
    lbu     t9, 0x0114(s0)             # 00000114
    lui     t6, %hi(var_80917718)      # t6 = 80910000
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0298(s0)             # 00000298
    lh      a1, 0x0298(s0)             # 00000298
    addiu   t1, t9, 0x0001             # t1 = 00000001
    sb      t1, 0x0114(s0)             # 00000114
    andi    t4, a1, 0x0003             # t4 = 00000000
    bne     t4, $zero, lbl_80917324
    sra     v1, a1,  2
    sll     t5, v1,  2
    subu    t5, t5, v1
    sll     t5, t5,  2
    addiu   t6, t6, %lo(var_80917718)  # t6 = 80917718
    addu    v0, t5, t6
    lwc1    $f16, 0x0000(v0)           # 00000000
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f6, 0x0004(v0)            # 00000004
    addiu   $at, $zero, 0x0007         # $at = 00000007
    add.s   $f4, $f16, $f18
    lwc1    $f16, 0x0008(v0)           # 00000008
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0074($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    addiu   a2, $sp, 0x0074            # a2 = FFFFFFB4
    addiu   a3, $zero, 0x0028          # a3 = 00000028
    add.s   $f10, $f6, $f8
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    swc1    $f10, 0x0078($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    lwc1    $f8, 0x0078($sp)
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x007C($sp)
    lbu     a0, 0x029A(s0)             # 0000029A
    beq     a0, $at, lbl_80917300
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     a0, $at, lbl_80917300
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    lui     $at, %hi(var_8091785C)     # $at = 80910000
    lwc1    $f6, %lo(var_8091785C)($at)
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    addiu   t9, $zero, 0x00FA          # t9 = 000000FA
    addiu   t1, $zero, 0x00EB          # t1 = 000000EB
    addiu   t2, $zero, 0x00F5          # t2 = 000000F5
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    sw      t3, 0x0024($sp)
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0074            # a2 = FFFFFFB4
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    sw      t7, 0x0010($sp)
    jal     func_8001DC4C
    swc1    $f6, 0x0028($sp)
    b       lbl_80917328
    lui     $at, 0xC220                # $at = C2200000
lbl_80917300:
    lui     $at, 0x4188                # $at = 41880000
    mtc1    $at, $f10                  # $f10 = 17.00
    or      a0, s2, $zero              # a0 = 00000000
    sw      t4, 0x0010($sp)
    sub.s   $f16, $f8, $f10
    sw      $zero, 0x0014($sp)
    sw      t5, 0x0018($sp)
    jal     func_8001DFEC
    swc1    $f16, 0x0078($sp)
lbl_80917324:
    lui     $at, 0xC220                # $at = C2200000
lbl_80917328:
    mtc1    $zero, $f12                # $f12 = 0.00
    mtc1    $at, $f4                   # $f4 = -40.00
    lwc1    $f18, 0x027C(s0)           # 0000027C
    mfc1    a2, $f12
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f18, $f4
    jal     func_800AA7F4
    nop
    b       lbl_80917364
    lh      t6, 0x001C(s0)             # 0000001C
    mtc1    $zero, $f12                # $f12 = 0.00
lbl_80917354:
    mtc1    $at, $f14                  # $f14 = 0.00
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t6, 0x001C(s0)             # 0000001C
lbl_80917364:
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    addiu   a0, $sp, 0x00AC            # a0 = FFFFFFEC
    beql    t6, $at, lbl_80917550
    addiu   s1, $sp, 0x0094            # s1 = FFFFFFD4
    jal     func_8007E2C0
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002A4
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002A4
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t1, $zero, 0x0040          # t1 = 00000040
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lh      v0, 0x0260(s0)             # 00000260
    lui     t3, 0x0001                 # t3 = 00010000
    addu    t3, t3, s2
    lw      t3, 0x1DE4(t3)             # 00011DE4
    sll     t4, v0,  2
    addu    t4, t4, v0
    subu    $at, $zero, v0
    sll     t6, $at,  1
    sll     t4, t4,  1
    addiu   t7, $zero, 0xFFEC          # t7 = FFFFFFEC
    subu    t8, t7, t6
    addu    t5, t3, t4
    multu   t5, t8
    addiu   t3, $zero, 0x0080          # t3 = 00000080
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    sw      t2, 0x0024($sp)
    sw      t3, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x006C($sp)
    mflo    t9
    andi    t1, t9, 0x01FF             # t1 = 00000020
    jal     func_8007EB84
    sw      t1, 0x0020($sp)
    lw      t0, 0x006C($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002A4
    lui     t7, 0xFA00                 # t7 = FA000000
    ori     t7, t7, 0x8080             # t7 = FA008080
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002A4
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t5, 0x028E(s0)             # 0000028E
    lbu     t2, 0x028F(s0)             # 0000028F
    lui     $at, 0xFFFF                # $at = FFFF0000
    sll     t8, t5,  8
    or      t9, t8, $at                # t9 = FFFF0000
    or      t3, t9, t2                 # t3 = FFFF0000
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002A4
    lui     t7, 0xFB00                 # t7 = FB000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002A4
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t9, 0x0291(s0)             # 00000291
    lbu     t5, 0x0290(s0)             # 00000290
    lbu     t7, 0x0292(s0)             # 00000292
    sll     t2, t9, 16
    sll     t8, t5, 24
    or      t3, t8, t2                 # t3 = 00000000
    sll     t6, t7,  8
    or      t5, t3, t6                 # t5 = 00000000
    sw      t5, 0x0004(v1)             # 00000004
    lh      t1, 0x07A0(s2)             # 000007A0
    sll     t9, t1,  2
    addu    t8, s2, t9
    jal     func_8004977C
    lw      a0, 0x0790(t8)             # 00000790
    lh      t2, 0x00B6(s0)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    subu    t4, v0, t2
    addu    t7, t4, $at
    sll     t3, t7, 16
    sra     t6, t3, 16
    mtc1    t6, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80917860)     # $at = 80910000
    lwc1    $f10, %lo(var_80917860)($at)
    cvt.s.w $f8, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AAB94
    nop
    lui     $at, %hi(var_80917864)     # $at = 80910000
    lwc1    $f0, %lo(var_80917864)($at)
    lwc1    $f16, 0x027C(s0)           # 0000027C
    lwc1    $f18, 0x0278(s0)           # 00000278
    lui     a2, 0x3F80                 # a2 = 3F800000
    mul.s   $f12, $f16, $f0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f18, $f0
    jal     func_800AA8FC
    nop
    lw      s0, 0x02D0(s1)             # 000002A4
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002A4
    sw      t1, 0x0000(s0)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002A4
    lui     t2, 0x0405                 # t2 = 04050000
    addiu   t2, t2, 0x2A10             # t2 = 04052A10
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002A4
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    b       lbl_809175F0
    lw      $ra, 0x0044($sp)
    addiu   s1, $sp, 0x0094            # s1 = FFFFFFD4
lbl_80917550:
    jal     func_800AB958
    or      a1, s1, $zero              # a1 = FFFFFFD4
    addiu   a0, $sp, 0x00A0            # a0 = FFFFFFE0
    jal     func_800AB958
    addiu   a1, $sp, 0x0088            # a1 = FFFFFFC8
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x026C(s0)            # 0000026C
    c.eq.s  $f4, $f6
    nop
    bc1tl   lbl_809175D0
    lw      t5, 0x0240(s0)             # 00000240
    lw      t4, 0x0240(s0)             # 00000240
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lui     t7, 0x0001                 # t7 = 00010000
    bne     t4, $at, lbl_809175CC
    addu    t7, t7, s2
    lw      t7, 0x1DE4(t7)             # 00011DE4
    andi    t3, t7, 0x0001             # t3 = 00000000
    bnel    t3, $zero, lbl_809175D0
    lw      t5, 0x0240(s0)             # 00000240
    lbu     t6, 0x00AF(s0)             # 000000AF
    beql    t6, $zero, lbl_809175D0
    lw      t5, 0x0240(s0)             # 00000240
    jal     func_8001A890
    lw      a0, 0x0294(s0)             # 00000294
    or      a0, v0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFD4
    jal     func_80013F30
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFC8
    b       lbl_809175F0
    lw      $ra, 0x0044($sp)
lbl_809175CC:
    lw      t5, 0x0240(s0)             # 00000240
lbl_809175D0:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beql    t5, $at, lbl_809175F0
    lw      $ra, 0x0044($sp)
    jal     func_8001A890
    lw      a0, 0x0294(s0)             # 00000294
    jal     func_80014254
    or      a0, v0, $zero              # a0 = 00000000
    lw      $ra, 0x0044($sp)
lbl_809175F0:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00C0           # $sp += 0xC0
    nop
    nop
    nop

.section .data

var_80917610: .word \
0xF00201A2, 0xF0E2A2F0, 0x010204E2, 0xC4B40000, \
0x00609383, 0xA0A00104, 0x02020804, 0x6000A400
var_80917630: .word \
0xD0D0D0A2, 0xD0E2A2D0, 0xD0E2E4E2, 0x94E2E4E2, \
0xE2609360, 0xA0A001E4, 0xE202E8E4, 0x6000A400
var_80917650: .word \
0xF0E2E1A2, 0xF0E2A2F0, 0xE1E2E454, 0xE2E2E4E2, \
0xE2746060, 0xA0A0E1E4, 0xE2E2E8E4, 0x6000A400
var_80917670: .word 0x00690500, 0x01000015, 0x005D0000, 0x00000318
.word func_80914128
.word func_809144D0
.word func_80916E58
.word func_80917128
var_80917690: .word \
0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00010100, 0x00000000, 0xFF880000, \
0x0004012C
var_809176B4: .word 0x03110909, 0x10000000, 0x00000001
.word var_80917690
var_809176C4: .word 0x304C000A
var_809176C8: .word 0x00000000, 0x3F000000, 0x00000000
var_809176D4: .word 0x00000000, 0x00000000, 0x00000000
var_809176E0: .word 0x00000000, 0x00000000, 0x00000000
var_809176EC: .word 0x00000000, 0x00000000, 0x00000000
var_809176F8: .word 0x00000000, 0x00000000, 0x00000000
var_80917704: .word 0x00000000, 0xBF19999A, 0x00000000
var_80917710: .word 0x0000FFFF
var_80917714: .word 0x00000000
var_80917718: .word \
0x41500000, 0x41200000, 0x00000000, 0x40A00000, \
0x41C80000, 0x40A00000, 0xC0A00000, 0x41C80000, \
0x40A00000, 0xC1500000, 0x41200000, 0x00000000, \
0x40A00000, 0x41C80000, 0xC0A00000, 0xC0A00000, \
0x41C80000, 0xC0A00000, 0x00000000, 0x41200000, \
0xC1500000, 0x40A00000, 0x00000000, 0x40A00000, \
0x40A00000, 0x00000000, 0xC0A00000, 0x00000000, \
0x41200000, 0x41500000, 0xC0A00000, 0x00000000, \
0x40A00000, 0xC0A00000, 0x00000000, 0xC0A00000
var_809177A8: .word 0x00000000, 0x459C4000, 0x00000000
var_809177B4: .word 0x00000000, 0x44FA0000, 0x00000000

.section .rodata

var_809177C0: .word 0x3DC08312
var_809177C4: .word 0x3D99999A
var_809177C8: .word 0x3F4CCCCD
var_809177CC: .word var_809143F8
.word var_80914424
.word var_80914330
.word var_809142F8
.word var_809142B0
var_809177E0: .word 0x3DCCCCCD
var_809177E4: .word 0x3DCCCCCD
var_809177E8: .word 0x44BB8000
var_809177EC: .word 0x3E4CCCCD
var_809177F0: .word 0x477FFF00
var_809177F4: .word 0x3DCCCCCD
var_809177F8: .word 0xBF333333
var_809177FC: .word 0xBF87AE14
var_80917800: .word 0x477FFF00
var_80917804: .word 0x3D4CCCCD
var_80917808: .word 0x3C23D70A
var_8091780C: .word 0x3DCCCCCD
var_80917810: .word 0x3D4CCCCD
var_80917814: .word 0x3C23D70A
var_80917818: .word 0x3B03126F
var_8091781C: .word 0x3D4CCCCD
var_80917820: .word 0x3DCCCCCD
var_80917824: .word 0x3DCCCCCD
var_80917828: .word 0x44BB8000
var_8091782C: .word 0xBECCCCCD
var_80917830: .word var_80916C14
.word var_80916C24
.word var_80916C04
.word var_80916C38
.word var_80916C38
.word lbl_80916C60
.word lbl_80916C60
.word lbl_80916C60
.word lbl_80916E48
.word lbl_80916C60
.word var_80916C38
var_8091785C: .word 0x3F4CCCCD
var_80917860: .word 0x38C90FDB
var_80917864: .word 0x3C23D70A, 0x00000000, 0x00000000

