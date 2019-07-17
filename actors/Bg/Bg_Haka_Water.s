.section .text
func_809CD1B0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, %hi(var_809CD900)      # a1 = 809D0000
    addiu   a1, a1, %lo(var_809CD900)  # a1 = 809CD900
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    lh      a1, 0x001C(s0)             # 0000001C
    beq     v0, $zero, lbl_809CD210
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x0140(s0)             # 00000140
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f10, 0x000C(s0)           # 0000000C
    beq     $zero, $zero, lbl_809CD214
    swc1    $f10, 0x0028(s0)           # 00000028
lbl_809CD210:
    sb      $zero, 0x0140(s0)          # 00000140
lbl_809CD214:
    jal     func_809CD24C
    lw      a1, 0x0024($sp)
    lui     t7, %hi(func_809CD394)     # t7 = 809D0000
    addiu   t7, t7, %lo(func_809CD394) # t7 = 809CD394
    sw      t7, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809CD23C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_809CD24C:
    lwc1    $f4, 0x0028(a0)            # 00000028
    lw      t1, 0x07C0(a1)             # 000007C0
    addiu   v1, $zero, 0x0010          # v1 = 00000010
    trunc.w.s $f6, $f4
    lw      t2, 0x0028(t1)             # 00000028
    addiu   v0, $zero, 0x0090          # v0 = 00000090
    mfc1    t9, $f6
    nop
    addiu   t0, t9, 0xFFF8             # t0 = FFFFFFF8
    sh      t0, 0x0002(t2)             # 00000002
    lwc1    $f18, 0x0028(a0)           # 00000028
    lw      t8, 0x07C0(a1)             # 000007C0
    addiu   v0, v0, 0xFFC0             # v0 = 00000050
    trunc.w.s $f18, $f18
    lw      t9, 0x0028(t8)             # 00000028
    mfc1    t6, $f18
    addu    t1, t9, v1
    beq     v1, v0, lbl_809CD320
    addiu   t7, t6, 0xFFF8             # t7 = FFFFFFF8
lbl_809CD298:
    sh      t7, 0x0002(t1)             # 00000002
    lwc1    $f18, 0x0028(a0)           # 00000028
    lw      t6, 0x07C0(a1)             # 000007C0
    trunc.w.s $f18, $f18
    lw      t8, 0x0028(t6)             # 00000028
    mfc1    t4, $f18
    addu    t9, t8, v1
    addiu   t5, t4, 0xFFF8             # t5 = FFFFFFF8
    sh      t5, 0x0012(t9)             # 00000012
    lwc1    $f18, 0x0028(a0)           # 00000028
    lw      t4, 0x07C0(a1)             # 000007C0
    trunc.w.s $f18, $f18
    lw      t6, 0x0028(t4)             # 00000028
    mfc1    t2, $f18
    addu    t8, t6, v1
    addiu   t3, t2, 0xFFF8             # t3 = FFFFFFF8
    sh      t3, 0x0022(t8)             # 00000022
    lwc1    $f18, 0x0028(a0)           # 00000028
    lw      t2, 0x07C0(a1)             # 000007C0
    trunc.w.s $f18, $f18
    lw      t4, 0x0028(t2)             # 00000028
    mfc1    t1, $f18
    addu    t6, t4, v1
    addiu   v1, v1, 0x0040             # v1 = 00000050
    addiu   t0, t1, 0xFFF8             # t0 = FFFFFFF8
    sh      t0, 0x0032(t6)             # 00000032
    lwc1    $f18, 0x0028(a0)           # 00000028
    lw      t8, 0x07C0(a1)             # 000007C0
    trunc.w.s $f18, $f18
    lw      t9, 0x0028(t8)             # 00000028
    mfc1    t6, $f18
    addu    t1, t9, v1
    bne     v1, v0, lbl_809CD298
    addiu   t7, t6, 0xFFF8             # t7 = FFFFFFF8
lbl_809CD320:
    sh      t7, 0x0002(t1)             # 00000002
    lwc1    $f18, 0x0028(a0)           # 00000028
    lw      t6, 0x07C0(a1)             # 000007C0
    addiu   v0, v0, 0x0040             # v0 = 00000090
    trunc.w.s $f18, $f18
    lw      t8, 0x0028(t6)             # 00000028
    mfc1    t4, $f18
    addu    t9, t8, v1
    addiu   t5, t4, 0xFFF8             # t5 = FFFFFFF8
    sh      t5, 0x0012(t9)             # 00000012
    lwc1    $f18, 0x0028(a0)           # 00000028
    lw      t4, 0x07C0(a1)             # 000007C0
    trunc.w.s $f18, $f18
    lw      t6, 0x0028(t4)             # 00000028
    mfc1    t2, $f18
    addu    t8, t6, v1
    addiu   t3, t2, 0xFFF8             # t3 = FFFFFFF8
    sh      t3, 0x0022(t8)             # 00000022
    lwc1    $f18, 0x0028(a0)           # 00000028
    lw      t2, 0x07C0(a1)             # 000007C0
    trunc.w.s $f18, $f18
    lw      t4, 0x0028(t2)             # 00000028
    mfc1    t1, $f18
    addu    t6, t4, v1
    addiu   v1, v1, 0x0040             # v1 = 00000090
    addiu   t0, t1, 0xFFF8             # t0 = FFFFFFF8
    sh      t0, 0x0032(t6)             # 00000032
    jr      $ra
    nop


func_809CD394:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lbu     v0, 0x0140(a2)             # 00000140
    lw      a0, 0x001C($sp)
    bne     v0, $zero, lbl_809CD3CC
    nop
    lh      a1, 0x001C(a2)             # 0000001C
    jal     func_8002049C
    sw      a2, 0x0018($sp)
    bne     v0, $zero, lbl_809CD3E8
    lw      a2, 0x0018($sp)
    lbu     v0, 0x0140(a2)             # 00000140
lbl_809CD3CC:
    beq     v0, $zero, lbl_809CD440
    lw      a0, 0x001C($sp)
    lh      a1, 0x001C(a2)             # 0000001C
    jal     func_8002049C
    sw      a2, 0x0018($sp)
    bne     v0, $zero, lbl_809CD440
    lw      a2, 0x0018($sp)
lbl_809CD3E8:
    lbu     t6, 0x0140(a2)             # 00000140
    lui     t9, %hi(func_809CD450)     # t9 = 809D0000
    lui     $at, 0x4348                # $at = 43480000
    beq     t6, $zero, lbl_809CD424
    addiu   t9, t9, %lo(func_809CD450) # t9 = 809CD450
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x000C(a2)            # 0000000C
    lui     t7, %hi(func_809CD57C)     # t7 = 809D0000
    addiu   t7, t7, %lo(func_809CD57C) # t7 = 809CD57C
    add.s   $f8, $f4, $f6
    sb      $zero, 0x0140(a2)          # 00000140
    sw      t7, 0x0134(a2)             # 00000134
    beq     $zero, $zero, lbl_809CD43C
    swc1    $f8, 0x000C(a2)            # 0000000C
lbl_809CD424:
    lwc1    $f10, 0x000C(a2)           # 0000000C
    mtc1    $at, $f16                  # $f16 = 200.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t8, 0x0140(a2)             # 00000140
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x000C(a2)           # 0000000C
lbl_809CD43C:
    sw      t9, 0x013C(a2)             # 0000013C
lbl_809CD440:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809CD450:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     t6, 0x0140(s0)             # 00000140
    lw      a0, 0x0024($sp)
    bnel    t6, $zero, lbl_809CD4A4
    lbu     t8, 0x0140(s0)             # 00000140
    jal     func_8002049C
    lh      a1, 0x001C(s0)             # 0000001C
    beq     v0, $zero, lbl_809CD4A0
    lui     $at, 0x4348                # $at = 43480000
    lwc1    $f4, 0x000C(s0)            # 0000000C
    mtc1    $at, $f6                   # $f6 = 200.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0140(s0)             # 00000140
    sub.s   $f8, $f4, $f6
    beq     $zero, $zero, lbl_809CD4D4
    swc1    $f8, 0x000C(s0)            # 0000000C
lbl_809CD4A0:
    lbu     t8, 0x0140(s0)             # 00000140
lbl_809CD4A4:
    lw      a0, 0x0024($sp)
    beql    t8, $zero, lbl_809CD4D8
    lwc1    $f4, 0x000C(s0)            # 0000000C
    jal     func_8002049C
    lh      a1, 0x001C(s0)             # 0000001C
    bne     v0, $zero, lbl_809CD4D4
    lui     $at, 0x4348                # $at = 43480000
    lwc1    $f10, 0x000C(s0)           # 0000000C
    mtc1    $at, $f16                  # $f16 = 200.00
    sb      $zero, 0x0140(s0)          # 00000140
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x000C(s0)           # 0000000C
lbl_809CD4D4:
    lwc1    $f4, 0x000C(s0)            # 0000000C
lbl_809CD4D8:
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   a1, $zero, 0x205E          # a1 = 0000205E
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_809CD504
    nop
    jal     func_80023108
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809CD510
    addiu   a0, s0, 0x0028             # a0 = 00000028
lbl_809CD504:
    jal     func_80023108
    addiu   a1, $zero, 0x205E          # a1 = 0000205E
    addiu   a0, s0, 0x0028             # a0 = 00000028
lbl_809CD510:
    lw      a1, 0x000C(s0)             # 0000000C
    jal     func_8006385C
    lui     a2, 0x3F00                 # a2 = 3F000000
    beq     v0, $zero, lbl_809CD53C
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t0, 0x0140(s0)             # 00000140
    lui     t9, %hi(func_809CD394)     # t9 = 809D0000
    addiu   t9, t9, %lo(func_809CD394) # t9 = 809CD394
    beq     t0, $zero, lbl_809CD53C
    sw      t9, 0x013C(s0)             # 0000013C
    sw      $zero, 0x0134(s0)          # 00000134
lbl_809CD53C:
    jal     func_809CD24C
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809CD558:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809CD57C:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s2, 0x0048($sp)
    sw      s0, 0x0040($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s1, 0x0044($sp)
    sdc1    $f20, 0x0038($sp)
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E2C0
    or      s1, a0, $zero              # s1 = 00000000
    lbu     t6, 0x0140(s0)             # 00000140
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, s2
    beq     t6, $zero, lbl_809CD5CC
    or      a1, $zero, $zero           # a1 = 00000000
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x000C(s0)            # 0000000C
    beq     $zero, $zero, lbl_809CD5E4
    sub.s   $f20, $f4, $f6
lbl_809CD5CC:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f18, 0x0028(s0)           # 00000028
    sub.s   $f16, $f8, $f10
    sub.s   $f20, $f18, $f16
lbl_809CD5E4:
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     $at, %hi(var_809CD910)     # $at = 809D0000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lwc1    $f4, %lo(var_809CD910)($at)
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     t6, 0xDB06                 # t6 = DB060000
    mul.s   $f6, $f4, $f20
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    cfc1    t9, $f31
    ctc1    t1, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    beq     t1, $zero, lbl_809CD680
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t1, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_809CD678
    nop
    mfc1    t1, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809CD690
    or      t1, t1, $at                # t1 = 80000000
lbl_809CD678:
    beq     $zero, $zero, lbl_809CD690
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
lbl_809CD680:
    mfc1    t1, $f8
    nop
    bltz    t1, lbl_809CD678
    nop
lbl_809CD690:
    andi    t3, t1, 0x00FF             # t3 = 000000FF
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    ctc1    t9, $f31
    or      t4, t3, $at                # t4 = FFFFFFFF
    sw      t4, 0x0004(v0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      v1, 0x1DE4(v1)             # 00011DE4
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    subu    t1, $zero, v1
    andi    t2, t1, 0x007F             # t2 = 0000007F
    andi    a2, v1, 0x007F             # a2 = 00000000
    or      a3, a2, $zero              # a3 = 00000000
    sw      t2, 0x0020($sp)
    sw      t4, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    jal     func_8007EB84
    sw      s0, 0x0068($sp)
    lw      t0, 0x0068($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0064($sp)
    lw      a1, 0x0064($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x1E50             # t9 = 06001E50
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lui     $at, 0x42B8                # $at = 42B80000
    mtc1    $at, $f14                  # $f14 = 92.00
    lui     a2, 0xC4D2                 # a2 = C4D20000
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_809CD914)     # $at = 809D0000
    lwc1    $f12, %lo(var_809CD914)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f10                  # $f10 = 170.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    sub.s   $f20, $f20, $f10
    c.lt.s  $f20, $f0
    nop
    bc1fl   lbl_809CD7A8
    lw      s0, 0x02D0(s1)             # 000002D0
    mov.s   $f20, $f0
    lw      s0, 0x02D0(s1)             # 000002D0
lbl_809CD7A8:
    lui     t2, 0xE700                 # t2 = E7000000
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    lui     $at, %hi(var_809CD918)     # $at = 809D0000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lwc1    $f18, %lo(var_809CD918)($at)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f16, $f18, $f20
    cfc1    t5, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f4, $f16
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_809CD850
    mfc1    t6, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f4, $f16, $f4
    ctc1    t6, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_809CD844
    nop
    mfc1    t6, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809CD85C
    or      t6, t6, $at                # t6 = 80000000
lbl_809CD844:
    beq     $zero, $zero, lbl_809CD85C
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f4
lbl_809CD850:
    nop
    bltz    t6, lbl_809CD844
    nop
lbl_809CD85C:
    andi    t8, t6, 0x00FF             # t8 = 000000FF
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    ctc1    t5, $f31
    or      t9, t8, $at                # t9 = FFFFFFFF
    sw      t9, 0x0004(v1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0054($sp)
    lw      a1, 0x0054($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x2010             # t5 = 06002010
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88
    nop
    nop

.section .data

var_809CD8E0: .word 0x00D70600, 0x00000030, 0x008D0000, 0x00000144
.word func_809CD1B0
.word func_809CD23C
.word func_809CD558
.word func_809CD57C
var_809CD900: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_809CD910: .word 0x3F43D70A
var_809CD914: .word 0x3DCCCCCD
var_809CD918: .word 0x40A33333, 0x00000000

